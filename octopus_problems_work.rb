require 'byebug'
# Big O-ctopus and Biggest Fish:
# A Very Hungry Octopus wants to eat the longest fish in an array of fish.

# Sluggish Octopus
# Find the longest fish in O(n^2) time. Do this by comparing all fish lengths 
# to all other fish lengths.

def sluggish_octopus(arr)

end 

#Test Case:
p sluggish_octopus(['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 
'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']) #"fiiiissshhhhhh" 


# Dominant Octopus
# Find the longest fish in O(n log n) time. Hint: You saw a sorting algorithm 
# that runs in O(n log n) in the Sorting Complexity Demo. Remember that Big O 
# is classified by the dominant term.

def dominant_octopus(arr)

end 

#Test Case:
p dominant_octopus(['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 
'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']) #"fiiiissshhhhhh" 


# Clever Octopus
# Find the longest fish in O(n) time. The octopus can hold on to the longest 
# fish that you have found so far while stepping through the array only once.

def clever_octopus(arr)
debugger
    arr.inject do |acc, word|
        if acc.length > word.length
            acc
        else 
            word
        end 
    end 
end 

#Test Case:
p clever_octopus(['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 
'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']) #"fiiiissshhhhhh" 