Favorite_Color = ["blue", "red", "green", "black"]

nba_teams_and_logos = {
  Chi_Bulls: "Bull",
  Bos_Celtics: "Clover",
  Memph_Griz: "Bear",
  ATL_Hawks: "Hawk"
}

p Favorite_Color

Favorite_Color.each do |color|
  p "#{color} is one of my favorite colors"
end

p nba_teams_and_logos

nba_teams_and_logos.each do |team, logo|
  p "#{team} have a pretty pradictable logo. It's a #{logo}"
end

Favorite_Color.map! do |color| 
  p color
  color.upcase
end

p Favorite_Color