require "mylibs/minctest"
require "PracticeRunner"

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

    lok(Return1to9() == "123456789")
    lok(Return1to8() == "12345678")
    lok(Return1to7() == "1234567")

end)



return lresults();            --show results