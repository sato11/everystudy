class Prism:
        def __init__(self, width, height, depth, unit='cm'):
                self.width = width
                self.height = height
                self.depth = depth
                self.unit = unit

        def content(self):
                return self.width * self.height * self.depth

        def unit_content(self):
                return str(self.content()) + self.unit

class Cube(Prism):
        def __init__(self, length):
                super().__init__(length, length, length)

c = Cube(20)
print(c.unit_content())
