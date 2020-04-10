aTable = {}

for i=1,10 do
    aTable[i] = i
end

mt = {
    __add = function(table1, table2)
        sumTable = {}

        for x =1, #table1 do
            if (table1[x] ~= nil) and (table2[x] ~= nil) then
                sumTable[x] = table1[x] + table2[x]
            else
                sumTable[x] = 0
            end
        end
        return sumTable
    end,

    __eql = function(table1, table2)
        return table1.value == table2.value
    end,
}

setmetatable(aTable, mt)

print(aTable == aTable)

sumUpTable = {}

sumUpTable = aTable + aTable

for x = 1, #sumUpTable do
    print(sumUpTable[x])
end