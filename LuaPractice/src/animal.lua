Animal = {name = "NoName", hight = 0, weight = 0, sound = "NoSound"}

function Animal:new(name, hight, weight, sound)
    setmetatable({}, Animal)

    self.name = name
    self.hight = hight
    self.weight = weight
    self.sound = sound

    return self
end

function Animal:toString()
    animalString = string.format("%s weight %.1f kgs, is %.1f tall and says %s", self.name, self.weight, self.hight, self.sound)
    return animalString
end

Nick = Animal:new("Nick", 180, 75, "Wooowww")
print(Nick.name)
print(Nick.sound)
print(Nick:toString())

Cat = Animal:new()

function Cat:New(name, hight, weight, sound, favToy)
    setmetatable({}, Cat)

    self.name = name
    self.hight = hight
    self.weight = weight
    self.sound = sound
    self.favToy = favToy

    return self
end

function Cat:toString()
    animalString = string.format("%s weight %.1f kgs, is %.1f tall and says %s, fav toy %s", self.name, self.weight, self.hight, self.sound, self.favToy)
    return animalString
end

Mina = Cat:new("Mina", 165, 50, "mewo", "piano")
mm = Cat:new()
print(Mina.name)
print(Mina.favToy)

