
-- Hellow World
print("hi Nick")

local name = "Nick"
io.write("Size of string ", #name, " and the name is ", name)

function GetName( name )
    return name
end

-- math
function ReturnRandowNumberWithin10()
    return math.random(1,10)
end

function ReturnTwoInThisCase()
    return 5%3
end

-- not switch case in lua
function ReturnStatusFromInput(age)
    if age < 18 then
        return "Teen"
    else
        return "Aldult"
    end
end

-- Ternary operation
function ReturnCanVote(age)
    return age > 18 
        and "can" or "cannot"
end

-- string example
function ReplaceAtoB(targetString)
    return string.gsub( targetString,"A","B")
end

function FindWordsIndex(targetString)
    local target = string.upper(targetString)
    return string.find( target, "APPLE")
end

-- do while loop
function Return1to9()
    local result = ""
    local i = 1
    while (i < 10) do
        -- use ".." to concat string
        result = result .. tostring(i)
        i = i + 1
    end

    return result
end

-- repeat loop
function Return1to8()
    local i = 1
    local result = ""
    repeat
        result = result .. tostring(i)
        i  = i + 1
    until i == 9

    return result
end

-- for loop
function Return1to7()
    local result = ""
    numberTalbes = {1,2,3,4,5,6,7}
    for key, value in pairs(numberTalbes) do
        result = result .. value
    end
    return result
end