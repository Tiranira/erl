-module(lesson3_task2).
-export([words/1]).


words(BinText) -> words(BinText,<<>>).

words(<<" ",X," ",_/binary>>,Word)-> [Word ++ X];


words(<<Char/utf8,Rest/binary>>,Word)->
        words(Rest,<<Word/binary,Char/utf8>>);
words(<<>>,Word)-> [Word].
