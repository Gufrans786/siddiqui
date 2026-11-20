"""Minimal static DEX class/method inventory, used for port compatibility reports."""
import struct

class Dex:
    def __init__(self, data):
        self.data = data
        self.strings = []
        for index in range(self.u32(56)):
            _, offset = self.leb(self.u32(self.u32(60) + 4 * index))
            self.strings.append(data[offset:data.index(b"\0", offset)].decode("utf-8", errors="replace"))
        self.types = [self.strings[self.u32(self.u32(68) + 4 * i)] for i in range(self.u32(64))]
        prototypes = []
        for i in range(self.u32(72)):
            _, result, parameters = struct.unpack_from("<III", data, self.u32(76) + 12 * i)
            arguments = [] if not parameters else [self.types[struct.unpack_from("<H", data, parameters + 4 + 2 * j)[0]] for j in range(self.u32(parameters))]
            prototypes.append("(" + "".join(arguments) + ")" + self.types[result])
        self.methods = []
        for i in range(self.u32(88)):
            owner, prototype, name = struct.unpack_from("<HHI", data, self.u32(92) + 8 * i)
            self.methods.append((self.types[owner], self.strings[name], prototypes[prototype]))
        self.classes = set()
        self.declared = set()
        self.bridge_methods = []
        for i in range(self.u32(96)):
            definition = self.u32(100) + 32 * i
            self.classes.add(self.types[self.u32(definition)])
            offset = self.u32(definition + 24)
            if offset:
                sizes = []
                for _ in range(4):
                    size, offset = self.leb(offset)
                    sizes.append(size)
                for _ in range(sizes[0] + sizes[1]):
                    _, offset = self.leb(offset)
                    _, offset = self.leb(offset)
                for count in sizes[2:]:
                    index = 0
                    for _ in range(count):
                        delta, offset = self.leb(offset)
                        index += delta
                        _, offset = self.leb(offset)
                        _, offset = self.leb(offset)
                        self.declared.add(self.methods[index])
            annotation = self.u32(definition + 20)
            if annotation:
                fields = self.u32(annotation + 4)
                for j in range(self.u32(annotation + 8)):
                    method, annotations = struct.unpack_from("<II", data, annotation + 16 + 8 * fields + 8 * j)
                    for k in range(self.u32(annotations)):
                        entry = self.u32(annotations + 4 + 4 * k)
                        annotation_type, _ = self.leb(entry + 1)
                        if self.types[annotation_type] == "Landroid/webkit/JavascriptInterface;":
                            self.bridge_methods.append(self.methods[method])

    def u32(self, offset):
        return struct.unpack_from("<I", self.data, offset)[0]

    def leb(self, offset):
        value = shift = 0
        while True:
            part = self.data[offset]
            offset += 1
            value |= (part & 127) << shift
            if part < 128:
                return value, offset
            shift += 7

