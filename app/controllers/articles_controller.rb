class ArticlesController < ApplicationController
	
	def index
		@articles = Article.all
	end

	def show
		# the articles id is passed via params to look up
		# we use the @ symbol so we can pass the instance to the view
		@article = Article.find(params[:id])
	end

	def new
		@article = Article.new
	end
  
  def edit
    @article = Article.find(params[:id])
  end

	def create
		# Create a new Article Object and pass the forms data via the params object
		@article = Article.new(article_params)

		# Save our Article object to our Database
		if @article.save # if save is successful
			# Rediect the user after we we save to the Article's page
			redirect_to @article
		else
			render 'new'
		end
	end
	
  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to @article
    else
      render 'edit'
    end
  end
	
	def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to articles_path
  end
	
	# returns the params opject with only :title and :text data
	# since it's a method it can be used in multiple CRUD Methods, in particular Create & Update
	private 
		def article_params
			params.require(:article).permit(:title, :text)
		end
end
