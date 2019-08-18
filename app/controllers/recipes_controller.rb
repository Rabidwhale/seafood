class RecipesController < ApplicationController
  def index
  end

  def new
    @comment = Comment.new
  end

  def bass
    @comments = Comment.where(recipe_name: :bass)
  end

  def lobster
  @comments = Comment.where(recipe_name: :lobster)
  end
end
