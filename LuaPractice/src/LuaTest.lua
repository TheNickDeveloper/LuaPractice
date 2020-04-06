require "mylibs/minctest"
require "PracticeRunner"

lrun("test1", function()
    lok('a' == 'a');          --assert true
end)

lrun("test2", function()
    lequal(5, 5);             --compare integers
    lfequal(5.5, 5.5);        --compare floats
end)

lrun("test3", function()
    local name = GetName("Nick")
    lok(name == 'Nicl123');          --assert true
end)



return lresults();            --show results