require 'date'

zodiac = {
    :aquarius => {
        :element => "Air",
        :start_date => "January 20",
        :end_date => "February 18"
    },
    :pisces => {
        :element => "Water",
        :start_date => "February 19",
        :end_date => "March 20"
    },
    :aries => {
        :element => "Fire",
        :start_date => "March 21",
        :end_date => "April 19"
    },
    :taurus => {
        :element => "Earth",
        :start_date => "April 20",
        :end_date => "May 20"
    },
    :gemini => {
        :element => "Air",
        :start_date => "May 21",
        :end_date => "June 20"
    },
    :cancer => {
        :element => "Water",
        :start_date => "June 21",
        :end_date => "July 22"
    },
    :leo => {
        :element => "Fire",
        :start_date => "July 23",
        :end_date => "August 22"
    },
    :virgo => {
        :element => "Earth",
        :start_date => "August 23",
        :end_date => "September 22"
    },
    :libra => {
        :element => "Air",
        :start_date => "September 23",
        :end_date => "October 22"
    },
    :scorpio => {
        :element => "Water",
        :start_date => "October 23",
        :end_date => "November 21"
    },
    :sagittarius => {
        :element => "Fire",
        :start_date => "November 22",
        :end_date => "December 21"
    },
    :capricorn => {
        :element => "Earth",
        :start_date => "December 22",
        :end_date => "January 19"
    }
}

chinese_animal_zodiac = ["Rat", "Ox", "Tiger", "Rabbit", "Dragon", "Snake", "Horse", "Goat", "Monkey", "Rooster", "Dog", "Pig"]

# 1. Print out an array of just the 12 zodiac signs.
signs = zodiac.keys
puts "1:"
p "#{signs}"
puts

# 2. Convert all the dates from class String to class Date.
signs.each do |sign| 
    zodiac[sign][:start_date] = Date.parse(zodiac[sign][:start_date])
    zodiac[sign][:end_date] = Date.parse(zodiac[sign][:end_date]) 
end

puts "2:"
p "#{zodiac[:capricorn][:end_date].class}"
puts
# 3. Create a new hash where the keys are the elements and the value is an array of the signs of each element. Print this out.
zodiac_elements = Hash.new

signs.each do |sign| 
    if zodiac_elements[zodiac[sign][:element].to_sym]
        zodiac_elements[zodiac[sign][:element].to_sym] << sign.to_s
    else
        zodiac_elements[zodiac[sign][:element].to_sym] = Array.new
        zodiac_elements[zodiac[sign][:element].to_sym] << sign.to_s
    end
end

puts "3:"
puts "#{zodiac_elements}"
puts

# 4. Go through the new hash and convert all zodiac sign names to all capital letters.
zodiac_elements.keys.each { |element| zodiac_elements[element].map! { |sign| sign.upcase}}
puts "4:"
puts "#{zodiac_elements}"
puts

# 5. With the hash zodiac, for each sign, print out a sentence that has the following format:
#  "The [name of sign], from [start date] to [end date] is a [element] sign."
puts "5:"
signs.each { |sign| p "The #{sign}, from #{zodiac[sign][:start_date]} to #{zodiac[sign][:end_date]} is a #{zodiac[sign][:element]} sign"}
puts
# 6. Select and print out the name of the signs which,
# have start dates in the second and third quarter of the year(April to September). 
puts "6:"
signs.each do |sign|
    if zodiac[sign][:start_date].month >= 4 and zodiac[sign][:start_date].month <= 9
        p sign
    else
        
    end
end
puts

# 7. Partition the array chinese_animal_zodiac into two arrays. One should contain the strings that start with letters A-M. The other should contain strings that start with letters N-Z.
puts "7:"
a_through_m = Array.new
n_through_z = Array.new
chinese_animal_zodiac.each do |animal|
    if animal[0].downcase >= 'a' and animal[0].downcase <= 'm'
        a_through_m << animal
    else 
        n_through_z << animal
    end
end
puts "A through M: #{a_through_m.sort { |a, b| a <=> b }}"
puts "N through Z: #{n_through_z.sort { |a, b| a <=> b }}"
puts

# 8. Create a new array of numbers where each number is a length of the strings in chinese_animal_zodiac. Add all these numbers to get the total.
length_animals = Array.new
puts "8:"
chinese_animal_zodiac.each do |animal|
    length_animals << animal.length
end

puts "Total name length: #{length_animals.reduce { |a, b| a + b }}"
puts

# 9. Sort the array chinese_animal_zodiac so that the shortest word is the first element and the longest word is the last element.
puts "9:"
puts "Shortest to Longest: #{chinese_animal_zodiac.sort { |a, b| a.length <=> b.length }}"
puts

# 10. Print out all words that start with the letter "R".
puts "10:"
puts "Only R's:"
chinese_animal_zodiac.each do |animal| 
    if animal.downcase.include?('r')
        p animal
    else
        
    end
end