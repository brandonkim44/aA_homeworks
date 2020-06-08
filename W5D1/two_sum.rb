# two_sum?
# Given an array of unique integers and a target sum, determine whether any two integers in the array sum to that amount.


# If we weren't worried about time complexity, what would be the most straightforward way to solve this problem? 
# To start with, we could check every possible pair. If we sum each element with every other, 
# we're sure to either find the pair that sums to the target, or determine that no such pair exists.

# This is the brute force solution. It's essentially hitting the problem with a sledge hammer. 
# There are faster and more elegant ways to solve the problem, but we know for sure that this will get the job done.

# Let's start by implementing the brute force solution. Write a method called bad_two_sum?, which checks every possible pair.

def bad_two_sum?(arr, target_sum)
    arr.each_with_index do |ele1, idx1|
        arr.each_with_index do |ele2, idx2|
            return true if idx2 > idx1 && (ele1+ele2 == target_sum)
        end
    end
    false
end

# arr = [0, 1, 5, 7]
# p bad_two_sum?(arr, 6) # => should be true
# p bad_two_sum?(arr, 10)

# O(n^2), space complexity: O(n^2)

# Sort your data, then try to solve the problem.

# What does sorting do to the lower bound of your time complexity? #best-case scenario
# How might sorting that make the problem easier?
# Write a second solution, called okay_two_sum?, which uses sorting. Make sure it works correctly.

def okay_two_sum?(arr, target_sum) #binary search O(nlogn)
    sorted_arr = arr.sort
    sorted_arr.each_with_index do |num, i|
        target = target_sum - num
        return true if bsearch(sorted_arr[i+1..-1], target)
    end
    false
end

def bsearch(arr, target)
    return nil if arr.empty?
    middle_index = arr.length / 2

    left_arr = arr.take(middle_index)
    right_arr = arr.drop(middle_index+1)

    case target <=> arr[middle_index]
    when -1
        bsearch(left_arr, target)
    when 0
        middle_index
    when 1
        idx = bsearch(right_arr, target)
        return (idx + middle_index + 1) unless idx.nil?
    end
end

# array = [1, 2, 3, 4]
# p bsearch(array, 1)

arr = [0, 1, 5, 7] #arr_2 = [0, 1, 5, 5, 7]
p okay_two_sum?(arr, 6) # => should be true
p okay_two_sum?(arr, 10) #false


# Finally, it's time to bust out the big guns: a hash map. Remember, a hash map has O(1) #set and O(1) #get, 
# so you can build a hash out of each of the n elements in your array in O(n) time. 
# That hash map prevents you from having to repeatedly find values in the array; now you can just look them up instantly.

# See if you can solve the two_sum? problem in linear time now, using your hash map. #O(n) space complexity: O(n)

def hash_two_sum?(arr, target_sum)
    hash = {}
    arr.each do |num|
        hash[target_sum - num] ? (return true) : (hash[num] = true)
    end
    false
end

# arr = [0, 1, 5, 7] #two sums mean that sum - ele1 = ele2 in array
# p hash_two_sum?(arr, 6) # => should be true
# p hash_two_sum?(arr, 10)
# p hash_two_sum?(arr, 8)