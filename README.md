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
* x%y: retuen remainder from x/y.

### String

* A..B: Concat A and B.
* string.gsub(targetString, A, B): Find A in targetString, then replace with B.
* string.find(targetString, A): Find A in targetString, then return index of A.

### Ternary operation

* example = age > 18 and "can" or "cannot": check if age is over 18, return can if yes; return cannot.

### Loop

* while do
* repeat until
* for in






