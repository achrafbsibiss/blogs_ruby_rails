class BlogPostsController < ApplicationController
  before_action :set_blog_post, only:[:show]

  def index
    @blogposts = BlogPost.all
  end

  def show 
    # @blogpost = BlogPost.find[params[:id]]
  end

  private
  def set_blog_post
    @blogpost = BlogPost.find(params[:id])
  end
end
