# This route returns detailed information about the Pokemon with the matching id in the route parameters.

json.pokemon do 
  json.partial! 'pokemon', pokemon: @pokemon
end

# json.array! @pokemon, :id, :number, :name, :image_url, :attack, :defense, :moves, :captured
