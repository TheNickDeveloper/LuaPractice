--Constructure
Person = {name = "NoName", high = 0}

function Person:new( o )
    o = o or {}
    setmetatable(o, self)
    self.__index = self
    return o
end

function Person:talk()
    greeting = string.format( "hi, this is %s", self.name )
    return greeting
end

local nick = Person:new()
print(nick.name)
print(nick.high)
print(nick:talk())

local mina = Person:new({name = "mina"})
print(mina.name)
print(mina.high)
print(mina.talk(mina))

local vicky = Person:new({name = "vicky", high = 100})
print(vicky.name)
print(vicky.high)
print(vicky:talk())


-- Inheritance
SchoolPerson = Person:new()

teacher = SchoolPerson:new({role = "Teacher"})
student = SchoolPerson:new({gender = "m"})

teacher.name = "Susan"
print(teacher.name)
print(teacher.role)
print(teacher:talk())

student.name = "KK"
print(student.name)
print(student.gender)
print(student.talk(student))

