class ArticlesController < ApplicationController
  def new
    @article = Article.new
  end

  def create
    article = Article.new
    article.title = params[:article][:title]
    article.content = params[:article][:content]
    article.save
    flash[:notice] = "Article was successfully created."
    redirect_to article
  end

  # GET /articles/:id
  def show
    @article = Article.find(params[:id])
  end
end