class Api::ArticlesController < ApplicationController
  def index
    @article = Article.all
    render 'index', formats: :json, handlers: 'jbuilder'
  end
  def show
    @article = Article.find(params[:id])
    render 'show', formats: :json, handlers: 'jbuilder'
  end
end
