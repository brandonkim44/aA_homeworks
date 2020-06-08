two_sum?
# Given an array of unique integers and a target sum, determine whether any two integers in the array sum to that amount.

def two_sum?(arr, target_sum)
    # your code here...
end

# arr = [0, 1, 5, 7]
# two_sum?(arr, 6) # => should be true
# two_sum?(arr, 10) # => should be false

# If we weren't worried about time complexity, what would be the most straightforward way to solve this problem? 
# To start with, we could check every possible pair. If we sum each element with every other, 
# we're sure to either find the pair that sums to the target, or determine that no such pair exists.

# This is the brute force solution. It's essentially hitting the problem with a sledge hammer. 
# There are faster and more elegant ways to solve the problem, but we know for sure that this will get the job done.

# Let's start by implementing the brute force solution. Write a method called bad_two_sum?, which checks every possible pair.



# Sort your data, then try to solve the problem.

# What does sorting do to the lower bound of your time complexity?
# How might sorting that make the problem easier?
# Write a second solution, called okay_two_sum?, which uses sorting. Make sure it works correctly.

# Finally, it's time to bust out the big guns: a hash map. Remember, a hash map has O(1) #set and O(1) #get, 
# so you can build a hash out of each of the n elements in your array in O(n) time. 
# That hash map prevents you from having to repeatedly find values in the array; now you can just look them up instantly.

# See if you can solve the two_sum? problem in linear time now, using your hash map.