
arr = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']
# => "fiiiissshhhhhh"
# Octopus wants to eat the longest 'fish' inside of the array

# Sluggish Octopus
# Find the longest fish in O(n^2) time. Do this by comparing all fish lengths to all other fish lengths

def sluggish_octopus(arr)
    sorted = false
    while !sorted
    sorted = true
        (0...arr.length-1).each do |i|
            if arr[i].length > arr[i+1].length
                arr[i], arr[i+1] = arr[i+1], arr[i]
                sorted = false
            end
        end
    end
    arr.last
end

# p sluggish_octopus(arr)
# Dominant Octopus
# Find the longest fish in O(n log n) time. Hint: You saw a sorting algorithm that runs in O(n log n) in the Sorting Complexity Demo. Remember that Big O is classified by the dominant term.
def dominant_octopus(arr)
    return arr if arr.empty?
    middle_index = arr.length / 2
    
    left_arr = arr.take(middle_index)
    right_arr = arr.drop(middle_index)

    sorted_left = dominant_octopus(left_arr)
    sorted_right = dominant_octopus(right_arr)

    merge(sorted_left, sorted_right)
end

def merge(left, right)
    merged_arr = []
    until left.empty? || right.empty?
        if left.length > right.length
            merged_arr << left.shift
        else
            merged_arr << right.shift
        end
    end
    merged_arr + left + right
end

p dominant_octopus(arr)


# Clever Octopus
# Find the longest fish in O(n) time. The octopus can hold on to the longest fish that you have found so far while stepping through the array only once.

def clever_octopus(arr)
    
end
# Dancing Octopus
# Full of fish, the Octopus attempts Dance Dance Revolution. The game has tiles in the following directions:

# tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]
# To play the game, the octopus must step on a tile with her corresponding tentacle. We can assume that the octopus's eight tentacles are numbered and correspond to the tile direction indices.

# Slow Dance
# Given a tile direction, iterate through a tiles array to return the tentacle number (tile index) the octopus must move. This should take O(n) time.

# slow_dance("up", tiles_array)
# > 0

# slow_dance("right-down", tiles_array)
# > 3
# Constant Dance!
# Now that the octopus is warmed up, let's help her dance faster. Use a different data structure and write a new function so that you can access the tentacle number in O(1) time.

# fast_dance("up", new_tiles_data_structure)
# > 0

# fast_dance("right-down", new_tiles_data_structure)
# > 3