class MostFrequent
    def self.count(arr)
        if arr.length < 2
            return arr[0]
        end

        record = {}
        highest_count = 0
        highest_element = nil

        arr.each do |element|
            if !record[element]
                record[element] = 1;
            else
                record[element] += 1

                if record[element] > highest_count
                    highest_count = record[element]
                    highest_element = element
                end
            end
        end

        return highest_element
    end
end

test1 = [1, 2, 3, 2]
test2 = [1, 3, 2, 3, 4, 3]
test3 = [5, 5, 5, 6, 6, 6, 7]
test4 = [5]
test5 = ["a", "b", "c", "a", "c", "c"]

puts MostFrequent.count(test1)
puts MostFrequent.count(test2)
puts MostFrequent.count(test3)
puts MostFrequent.count(test4)
puts MostFrequent.count(test5)



