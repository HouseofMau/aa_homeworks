require 'byebug'
# Big O-ctopus and Biggest Fish:
# A Very Hungry Octopus wants to eat the longest fish in an array of fish.


# Sluggish Octopus
# Find the longest fish in O(n^2) time. Do this by comparing all fish lengths 
# to all other fish lengths.

def sluggish_octopus(arr) 

    (0...arr.length).each do |i|
        max = true 
        ((i+1)...arr.length).each do |j|
            max = false if arr[j].length > arr[i].length
        end 
        return arr[i] if max
    end
end 
['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']
['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']
#Test Case: 
p sluggish_octopus(['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish',     
'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']) #"fiiiissshhhhhh" 


# Dominant Octopus
# Find the longest fish in O(n log n) time. Hint: You saw a sorting algorithm 
# that runs in O(n log n) in the Sorting Complexity Demo. Remember that Big O 
# is classified by the dominant term.

class Array
    def merge_sort(&prc)
        prc ||= Proc.new{ |a,b| a <=> b }
        return self if self.length <= 1
        midpoint = self.length / 2

        sorted_left = self.take(midpoint).merge_sort(&prc)
        sorted_right = self.drop(midpoint).merge_sort(&prc) 

        Array.merge(sorted_left, sorted_right, &prc) 
    end 

    private
    def self.merge(left, right, &prc)
        prc ||= Proc.new{ |a,b| a <=> b }
        merged = []

        until left.empty? || right.empty?
            case prc.call(left.first, right.first) 
            when -1 || 0
                merged << left.shift
            else
                merged << right.shift 
            end 
        end 

        merged + left + right  
    end 
end 

def dominant_octopus(arr)
    prc = Proc.new{ |a, b| a.length <=> b.length } 
    arr.merge_sort(&prc).last
end 

#Test Case:
p dominant_octopus(['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 
'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']) #"fiiiissshhhhhh" 


# Clever Octopus
# Find the longest fish in O(n) time. The octopus can hold on to the longest 
# fish that you have found so far while stepping through the array only once.

def clever_octopus(arr)
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


# Dancing Octopus
# Full of fish, the Octopus attempts Dance Dance Revolution. The game has 
# tiles in the following directions:

# To play the game, the octopus must step on a tile with her corresponding 
# tentacle. We can assume that the octopus's eight tentacles are numbered 
# and correspond to the tile direction indices.


# Slow Dance
# Given a tile direction, iterate through a tiles array to return the tentacle 
# number (tile index) the octopus must move. This should take O(n) time.

def slow_dance

end 

p slow_dance("up", tiles_array) #0
p slow_dance("right-down", tiles_array) #3


# Constant Dance!
# Now that the octopus is warmed up, let's help her dance faster. Use a 
# different data structure and write a new function so that you can access 
# the tentacle number in O(1) time.

def constant_dance

end 

fast_dance("up", new_tiles_data_structure) #0
fast_dance("right-down", new_tiles_data_structure) #3