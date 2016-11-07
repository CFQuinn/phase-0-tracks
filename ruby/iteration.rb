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

sigil.each do |team, logo|
  puts "#{sigil} is the logo for #{house} in the NBA"
end