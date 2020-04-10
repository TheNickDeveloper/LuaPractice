local M = {}

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

function ReturnGreetingWithName(name)
    return string.format( "Hi %s", tostring(name))
end

-- do while loop
function DoWhileLoopReturn1to9()
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
function RepeatUntilLoopReturn1to8()
    local i = 1
    local result = ""
    repeat
        result = result .. tostring(i)
        i  = i + 1
    until i == 9

    return result
end

-- for loop
function ForLoopReturn1to7()
    local result = ""
    numberTalbes = {1,2,3,4,5,6,7}
    for value in pairs(numberTalbes) do
        result = result .. value
    end
    return result
end

function GetWeekDay()
    days = {"Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"}
    weekDays = {}
    for key, value in pairs(days) do
        weekDays[value] = key
    end
    return weekDays
end

function ReturnTableValueString()
    local aTable = {}

    for i=1,10 do
        aTable[i] = i
    end

    tableIndex = 1
    value = 0
    table.insert( aTable, tableIndex, value )
    table.insert( aTable, 11)

    table.remove( aTable, 1)

    return(table.concat( aTable, ", "))
end

-- mutil layer table
function Return99()
    local mutiTable = {}
    for i=0,9,1 do
        mutiTable[i] = {}
        for j=0,9,1 do
            mutiTable[i][j] = tostring(i)..tostring(j)
        end
    end
    return mutiTable
end

t = Return99()
for i=0,9 do
    for j=0,9 do
        io.write(tostring(t[i][j])," : ")
    end
end

--Variadic Functions
function GetSum( ... )
    local sum = 0

    for key, value in pairs(...) do
        sum = sum + value
    end
    return sum
end

doubleIt = function(x)
    return x*x
end

-- Closure
-- closure function will remeber the result from pervious operation
function ClourseFunctionDemo()
    local i = 0
    return function() -- inner function
        i = i+1
        return i
    end
end

getI = ClourseFunctionDemo()
print(getI()) -- print 1
print(getI()) -- print 2


-- Coroutines
co = coroutine.create( function()
    for i=1,10 do
        print(i)
        print(coroutine.status( co ))
        if i ==5 then
            coroutine.yield()
        end
    end
end)

co2 = coroutine.create( function()
    for i=101,110 do
        print(i)
        print(coroutine.status( co2 ))
        if i ==5 then
            coroutine.yield()
        end
    end
end)

coroutine.resume(co)
print(coroutine.status( co ))
coroutine.resume(co2)
print(coroutine.status( co2 ))
coroutine.resume(co)
print(coroutine.status( co ))
