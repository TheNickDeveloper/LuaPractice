# Lua Practice

On the way to be a Lua developer :)

## Setup Lua

As a Window system user there are two ways to run the lua, which are Lua Package and Lua Binaries(recommand this one).

### Lua Package

* [Compiler(TDM-GCC)](http://tdm-gcc.tdragon.net/download)
* [Lua Source](http://www.lua.org/download.html)
* For mor steps to setup, please refer [BuildingLuaInWindowsForNewbies](http://lua-users.org/wiki/BuildingLuaInWindowsForNewbies)
* Add Lua bin to system path for script running: [reference link](https://www.youtube.com/watch?v=kQ8w5SL5ItE)
* Good to go :)

### Lua Binaries (recommended)

* Download [Lua binaries](http://luabinaries.sourceforge.net/).
* Unzip it under destination folder.(e.g. C:\Program Files\LUA)
* Rename Lua.exe file with version number to Lua.exe (for cmd execute purpose)
* Add Lua.exe folder path to User varables of Environment Variable.
* Quick setup vedio reference from [Packt Video](https://www.youtube.com/watch?v=y48GyvMVMw4).
* Good to go :)

## Lua Test Framework

I am using [MincTest](https://github.com/codeplea/minctest-lua) as testing framework: power by codeplea.

## Study Note
Some note while doing practice.

### Math

* math.random(x, y): return random interger number between x and y.

```lua
    rndNumberRange = math.random(1,10)
    --rndNumberRange => interger 1 to 10

    rndNumber = = math.random()
    --rndNumber => floot 0 to 10
```

* x%y: retuen remainder from x/y.
```lua
    remainder = 5 % 3
    --remainder => 2
```

### String

* A..B: Concat A and B.

```lua
    combine = A..B
    --combine => "AB"
```

* string.gsub(targetString, A, B): Find A in targetString, then replace with B.

```lua
    soucre = "AAA"
    result = string.gshub(source,"A","B")
    --result => "BBB"
```

* string.find(targetString, A): Find A in targetString, then return index of A. Index in lua start from 1.

```lua
    soucre = "This is Apple"
    index = string.find(source, "Apple")
    --index => "12"
```

### Ternary operation

* example = age > 18 and "can" or "cannot": check if age is over 18, return can if yes; return cannot.

```lua
    age = 10
    ifOver18 = age >= 18 and true or falue
    --ifOver18 => false

    ifCanVote = age >= 18 and "can" or "cannot"
    --ifCanVote => "cannot" 
```

### Loop

Have three kinds of loop.

* while do

```lua
    i = 1
    while (i < 10) do
        result = result .. tostring(i)
        i = i + 1
    end
    -- result = "123456789"
```


* repeat until

```lua
    i = 1
    repeat
        result = result .. tostring(i)
        i  = i + 1
    until i == 9
    -- result = "12345678"
```

* for loop

```lua
    -- for loop
    resultString = ""
    for i = 1, 9, 1 do
        resultString = resultString .. tostring(i)
    end
    -- resultString = "123456789"
```

* for in loop

```lua
    -- for in loop
     days = {"Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"}

    weekDays = {}
    for key, value in pairs(days) do
        weekDays[value] = key
    end
    -- weekDays["Sunday"] = 1
    -- weekDays["Tuesday"] = 3
```

### Table

Table in lua is a powerful data type which can do many things.

* Data storage - one layer

```lua
     days = {"Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"}
```

* Data storage - two layer

```lua
    result = {}

    for i = 0, 9
        result[i] = {}
        for j = 0, 9
            result[i][j] = tosting(i) .. tosting(j)
        end
    end
    -- result => 00, 01, 02, ..., 99
```

* TBD

### Variadic Functions

Flexible for the input parameter unit.

```lua
    function SumUp(...)
        local result = 0
        for value in pairs(...)
            result = result + value
        end
        return result
    end
    -- result => SumUp({1,2,3}) = 6
    -- result => SumUp({1,2,3,4,5}) = 15
```

### Closure

A way to remeber the exectue result from last operation. It was function contain return function.

```lua
    function Mark()
        local i = 0
        return function()
            i = i + 1
            return i
        end
    end

    getMark = Mark()
    print(getMark()) -- print 1
    print(getMark()) -- print 2
```

### Corotines

Similar to muti-thread in other language. But always on the same thread no matter how many corotines they are.

```lua
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
     -- co start printing from 1 to 5 then stop
     -- status changed from running to suspended

    coroutine.resume(co2)
    print(coroutine.status( co2 ))
    -- co2 start printing from 101 to 105
    -- status changed from running to dead

    coroutine.resume(co)
    print(coroutine.status( co ))
    -- co re-start printing, start from 6 to 10 then stop
    -- status changed from running to dead
```

### Metatable

* Refer to the metaTableDemo.lua

### Module

* Refer to the convert.lua

### OOP

* Refer to the oop.lua
