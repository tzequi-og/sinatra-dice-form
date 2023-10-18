require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:homepage)
end

get ("/dice/:dice/:sides") do
  @dice_number = params.fetch("dice").to_i
  @dice_sides = params.fetch("sides").to_i
  
  @rolls = []

  @dice_number.times do
    die = rand(1..@dice_sides)

    @rolls.push(die)
  end

  erb(:flexible)
end
