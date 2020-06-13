class ArticlesController < ApplicationController

    def show
        @article = Article.find(params[:id]) #don't forget @ (instance) for it to be displayed on the browser
        #Article here is based on the model name which can be found on app > models > <classname>.rb
    end

    def index
        @articles = Article.all
    end

end