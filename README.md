assignment_ruby_warmup
======================

Dice, dice, baby.

[A Ruby assignment from the Viking Codes School](http://www.vikingcodeschool.com)

1) Rolling Dice

Write a method roll_dice which returns the result of rolling N 6-sided dice where N is the input to the method (the default should be 1). For example:

> roll_dice(4)
#=> 18          # Rolled 4 dice
> roll_dice(2)
#=> 4           # Rolled 2 dice
> roll_dice
#=> 1           # Rolled 1 die


2) Rolling Dice Outcomes

Now write a method dice_outcomes which takes the number of dice to roll and the number of times to roll them, then outputs a visual chart of how many times each possible number comes up. For example:

> dice_outcomes(3,100)
3:  ##
4:  #
5:  #
6:  ####
7:  ###
8:  #################
9:  ###########
10: #########
11: ############
12: ##########
13: ##########
14: #########
15: ######
16: ##
17: ##
18: #
#=> {3=>2, 4=>1, 5=>1, 6=>4, 7=>3, 8=>17, 9=>11, 10=>9, 11=>12, 12=>10, 13=>10, 14=>9, 15=>6, 16=>2, 17=>2, 18=>1} 


3) Fibonacci

Write a method fibonacci which outputs the Fibonacci Sequence members out to the specified number of members. For example:

> fibonacci(7)
#=> [1, 1, 2, 3, 5, 8, 13]

4) Stock Picker

Write a method stock_picker which takes an array of stock prices (prices on days 0, 1, ...) and outputs the most profitable pair of days on which to first buy the stock and then sell the stock, for example:

> stock_picker([44, 30, 24, 32, 35, 30, 40, 38, 15]) 
#=> [2, 6]


5) Anagram Testing

Write a method anagrams which returns an array of anagrams that can be made with the specified string. Assume the input is only a single word (e.g. "loot" not "William Shakespeare").

Download enable.txt, a popular Scrabble dictionary, and load it in as your dictionary of choice. If you haven't encountered Ruby's file I/O yet, you can test your method by simply providing an array of known anagrams like those below to check that it works properly.

You can use Dir.pwd to output the current directory. If you can't find the dictionary, double check the directory you're executing your script from within.

Example:


# Note: "pears" doesn't appear in the output
> anagrams("pears")
# => ["APERS","APRES","ASPER","PARES","PARSE","PRASE","PRESA","RAPES","REAPS","SPARE","SPEAR"]

> anagrams("zygote")
#=> []









