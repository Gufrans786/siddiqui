import brut.androlib.smali.SmaliBuilder;
import com.android.tools.smali.dexlib2.Opcodes;
import com.android.tools.smali.dexlib2.writer.builder.DexBuilder;
import com.android.tools.smali.dexlib2.writer.io.FileDataStore;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.Executors;
import java.util.stream.Collectors;

/** Assemble the supplied classes4 sources, substituting only the five location hook classes. */
public final class AssembleLocationDex {
    public static void main(String[] args) throws Exception {
        Path original = Paths.get(args[0]);
        Path patches = Paths.get(args[1]);
        DexBuilder dex = new DexBuilder(new Opcodes(24));
        List<Path> files;
        try (var paths = Files.walk(original)) {
            files = paths.filter(p -> p.toString().endsWith(".smali")).sorted().collect(Collectors.toList());
        }
        if (files.size() != 8658) throw new IllegalArgumentException("Unexpected classes4 source inventory: " + files.size());
        var pool = Executors.newFixedThreadPool(Math.min(8, Runtime.getRuntime().availableProcessors()));
        try {
            var tasks = files.stream().map(file -> (Callable<Void>) () -> {
                Path patch = patches.resolve(original.relativize(file));
                Path selected = Files.isRegularFile(patch) ? patch : file;
                if (!new SmaliBuilder(24).buildFile(selected.toFile(), dex)) {
                    throw new IllegalStateException("Could not assemble " + selected);
                }
                return null;
            }).collect(Collectors.toList());
            for (var result : pool.invokeAll(tasks)) result.get();
        } finally {
            pool.shutdownNow();
        }
        dex.writeTo(new FileDataStore(Paths.get(args[2]).toFile()));
        System.out.println("Assembled " + files.size() + " classes; five location hook sources substituted");
    }
}
