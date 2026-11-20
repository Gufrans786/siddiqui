package androidx.work;

public abstract class InputMergerFactory {
    public abstract InputMerger createInputMerger(String className);

    public final InputMerger createInputMergerWithDefaultFallback(String className) {
        InputMerger inputMergerCreateInputMerger = createInputMerger(className);
        return inputMergerCreateInputMerger == null ? InputMerger.fromClassName(className) : inputMergerCreateInputMerger;
    }

    public static InputMergerFactory getDefaultInputMergerFactory() {
        return new InputMergerFactory() {
            @Override
            public InputMerger createInputMerger(String className) {
                return null;
            }
        };
    }
}
