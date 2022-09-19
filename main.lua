Rectangle = { 
    area = 0,
    length = 0,
    width = 0
}

function Rectangle:new(length, width)
    o = {}
    self.length = length or 0
    self.breadth = width or 0
    self.area = length * width;
    return o
end

function Rectangle:printArea()
    print(self.area)
end

rectangle = Rectangle:new(3, 2)


print(rectangle.area)