# @pokemon.each do |pokemon|
#   json.set! pokemon.id do
#     json.partial! 'pokemon', pokemon: pokemon
#   end
# end

json.array! @pokemon, :id, :number, :name, :image_url, :captured