require 'csv'

class GamesController < ApplicationController

  def show
    @game = Game.find(params[:id])
    get25names
  end

  private

  def get25names
    filepath = '././db/nomsCommuns.csv'
    @all_names = []
    CSV.foreach(filepath) do |row|
      @all_names << row[0]
    end
    @all_names.shuffle!
    @names = @all_names.take(25)
  end
end
