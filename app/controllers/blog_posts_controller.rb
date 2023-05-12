class BlogPostsController < ApplicationController
  before_action :set_blogpost, only: %i[show update edit destroy]

  def index
    @blogposts = BlogPost.all
  end

  def show; end

  def new
    @blogpost = BlogPost.new
  end

  def create
    @blogpost = BlogPost.new(blogpost_params)

    if @blogpost.save
      redirect_to '/'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit; end

  def update
    if @blogpost.update(blogpost_params)
      redirect_to @blogpost
    end
  end

  def destroy
    if @blogpost.destroy
      redirect_to '/'
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_blogpost
    @blogpost = BlogPost.find(params[:id])
  end

  def blogpost_params
    params.require(:blog_post).permit(:tittle, :body)
  end
end
