require 'csv'

class GamesController < ApplicationController

  def show
    @game = Game.find(params[:id])
    get25cards
  end

  private

  def get25cards
    filepath = '././db/nomsCommuns.csv'
    @all_names = []
    CSV.foreach(filepath) do |row|
      @all_names << row[0]
    end
    @all_names.shuffle!
    @names = @all_names.take(25)
    @cards = []
    @names.each do |name|
      @cards << Card.create(word: name, game_id: params[:id])
    end
    @cards.shuffle!
  end
end
