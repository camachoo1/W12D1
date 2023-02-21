class Api::PokemonController < ApplicationController
  
  def types
    puts "Printing types"
    all_types =  [
      "fire",
      "electric",
      "normal",
      "ghost",
      "psychic",
      "water",
      "bug",
      "dragon",
      "grass",
      "fighting",
      "ice",
      "flying",
      "poison",
      "ground",
      "rock",
      "steel"
      ].sort.freeze
    render json: all_types
  end

  def index
    @pokemon = Pokemon.all
    render :index
    # render json: {'string': 'other'}
  end

  def show
    @pokemon = Pokemon.find_by(id: params[:id])
    render :show
  end

  def create
    @pokemon = Pokemon.new(pokemon_params)
    if @pokemon.save
      render :show
    else  
      render @pokemon.errors.full_messages, status: 422
    end

  end
  
  def update
    @pokemon = Pokemon.find_by(id: params[:id])

    if @pokemon.update(pokemon_params)
        render :show
    else  
      render @pokemon.errors.full_messages, status: 422
    end
  end

  private
  def pokemon_params
    params.require(:pokemon).permit(:number, :name, :attack, :defense, :poke_type, :image_url, :captured)
  end
end
