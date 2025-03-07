class MostFrequent
    def self.count(arr)
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

puts MostFrequent.count(test1)
puts MostFrequent.count(test2)
puts MostFrequent.count(test3)

