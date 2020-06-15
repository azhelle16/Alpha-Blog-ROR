class ArticlesController < ApplicationController

    def show
        @article = Article.find(params[:id]) #don't forget @ (instance) for it to be displayed on the browser
        #Article here is based on the model name which can be found on app > models > <classname>.rb
    end

    def index
        @articles = Article.all
    end

    def new
        @article = Article.new()
    end

    def edit
        @article = Article.find(params[:id])
    end

    def create
        @article = Article.new(params.require(:article).permit(:title, :description))
        if @article.save
            flash[:notice] = "Article is saved successfully." #displays a notification
            redirect_to article_path(@article)    
            #another way
            #redirect_to @article
        else
            render 'new'
        end
    end

    def update
        @article = Article.find(params[:id])
        if @article.update(params.require(:article).permit(:title, :description))
            flash[:notice] = "Article is updated successfully."
            redirect_to @article
        else
            render 'edit'
        end
    end

end