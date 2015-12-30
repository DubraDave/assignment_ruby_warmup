# Roll dice method

def roll_dice(x)
	i = 0
	sum = 0
	roll = 0
	while i < x
		roll = (1 + rand(6))
		sum += roll
		#puts "Die #{i.to_s} is: " + roll.to_s
		i+=1
	end
	#puts "Total is: " + sum.to_s
	return sum
end

roll_dice(20)


def dice_outcomes(num_dice, num_times)
	outcomes = Hash.new(0)
	#Number of rolls
	for i in (1..num_times)
		outcomes["#{roll_dice(num_dice)}".to_i] += 1
	end
	outcomes.sort.to_h.each do |total, freq|
		hashes = '#'*freq
		puts "#{total}:\t #{hashes}"
	end
	return
end

dice_outcomes(3,5)



#Fibonacci

puts "STARTING FIBONACCI NOW"

def fibonacci(n)
  a = [0]
  (n+1).times do |i|
    if i==0
      a[i] = 0
    elsif i==1
      a[i] = 1
    else
      a[i] = a[i-1] + a[i-2]
    end  
  end

  return a
end

puts fibonacci(4)


#Stock picker method

def stock_picker(prices)
	buy = 0
	sell = 0
	profit = 0
	prices.each_with_index do |price, index|
		remaining_days = index + 1
		while remaining_days < prices.length
			if prices[remaining_days]-prices[index] > profit
				buy = index
				sell = remaining_days
				profit = prices[remaining_days]-prices[index]
			end
			remaining_days += 1
		end
	end
	return [buy, sell]
end


puts (stock_picker([44, 30, 24, 32, 35, 30, 40, 38, 15, 100]))



#Anagram Tester

def anagrams(word, dictonary)
	word.upcase!
	puts word
	arr = word.split ""
	arr.sort!
	anagram = []
	dictonary.each do |dict_word|
		word_to_compare = dict_word.upcase
		word_to_compare = word_to_compare.split ""
		word_to_compare.sort!
		if (word_to_compare == arr)
			anagram << dict_word
		end
	end
	puts anagram
end

anagrams("pears", ["APERS","APRES","ASPER","PARES","PARSE","PRASE","PRESA","RAPES","REAPS","SPARE","SPEAR", "ADROIT"])


