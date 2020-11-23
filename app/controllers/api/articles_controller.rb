class Api::ArticlesController < ApplicationController
  def show
    @article = Article.find(params[:id])
    render 'show', formats: :json, handlers: 'jbuilder'
  end
end
