
count = 0
while count <= 10
  p count
  count += 1
end

sams_recipes = ["rocks", "pasta", "potatoes"]
sally_languages = ["English", "Spanish", "Chinese","French"]

if sams_recipes.length > 10 && sally_languages.length > 5
  p "you guy's should date!"
else
  p "it's not a good fit."
end

if sams_recipes.include?("crepes") || sally_languages.include?("French")
  p "You guys should marry!"
else
  p "You guys should never talk to each other ever again."
end