class ArticlesController < ApplicationController

    def show
        @article = Article.find(params[:id]) #don't forget @ (instance) for it to be displayed on the browser
    end

end