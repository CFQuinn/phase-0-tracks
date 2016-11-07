bulls_player_names =["JIMMY BUTLER", "DWAYNE WADE", "RONDO", "TAJ GIBSON"]

logo = {
  chicago_bulls: "Bull",
  boston_celtics: "clover",
  maverics: "horse",
}

bulls_player_names.each do |name|
  puts "#{name} is one of my favorite players on the bulls!"
end


def lowcase (str)
  str = str.split(' ')
  str.map! { |str|
    str.downcase
    }
  str.join(' ')
end


bulls_player_names.map! do |name|
  puts lowcase(name)

end

logo.each do |team, logo|
  puts "#{logo} is the logo for #{house} in the NBA"
end

#Second Part of 5.3



letters = ["a","b","c","d","e"]

numbers ={
  one: 1,
  two: 2,
  three: 3,
  four: 4
}

p letters
  letters.select!{|letter| letter>="c"}
p letters

p letters
  letters.reject!{|letter| letter>"a"}
p letters

p numbers
  numbers.select!{|number_spell,num| number_spell.length < num}
p numbers

p numbers
  numbers.reject!{|number_spell,num| number_spell.length == num}
p numbers




letters = ["a","b","c","d","e"]

numbers ={
  one: 1,
  two: 2,
  three: 3,
  four: 4
}



p letters
  letters.delete_if{|letter| letter>"b"}
p letters


p numbers
  numbers.delete_if{|number_spell,num| number_spell.length == num}
p numbers

puts "\n-----------------\n"

p letters
  letters.keep_if{|letter| letter>="d"}
p letters

p numbers
  numbers.keep_if{|number_spell,num| number_spell.length < num}
p numbers