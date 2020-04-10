require "mylibs/minctest"
require "practiceRunner"
convertModule = require("convert")

lrun("testDemo", function()
    lok('a' == 'a');          --assert true
    lequal(5, 5);             --compare integers
    lfequal(5.5, 5.5);        --compare floats
end)

lrun("BasicTests", function()
    lok(GetName("Nick") == 'Nick');

    lok(10 - ReturnRandowNumberWithin10() >= 0)

    lequal(2, ReturnTwoInThisCase())

    lok(ReturnStatusFromInput(17) == "Teen")
    lok(ReturnStatusFromInput(17) ~= "Aldult")

    lok(ReturnCanVote(17) == "cannot")

    lok(ReplaceAtoB("AAA") == "BBB")

    lequal(12, FindWordsIndex("This is an Apple"))
    lok(ReturnGreetingWithName("Mina") == "Hi Mina")

    lok(DoWhileLoopReturn1to9() == "123456789")
    lok(RepeatUntilLoopReturn1to8() == "12345678")
    lok(ForLoopReturn1to7() == "1234567")
    lok(ReturnTableValueString() == "1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11")
    lok( Return99()[1][1] == "11")
    lequal(15, GetSum({1,2,3,4,5}))
    lequal(4,doubleIt(2))
    lfequal(31.48, convertModule.ftToCm(1))
end)




return lresults();            --show results