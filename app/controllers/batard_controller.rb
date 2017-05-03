require 'longuest_word'

class BatardController < ApplicationController
  def game
    @start_time = Time.now.to_i
    @grid = generate_grid(9).join(" | ")
  end

  def score
    @answer = params[:attempt]
    end_time = Time.now
    start_time = params[:start_time].to_i
    grid = params[:grid].split(" | ")
    @result = run_game(@answer, grid, start_time, end_time)
  end
end
