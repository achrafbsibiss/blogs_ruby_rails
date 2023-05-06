class BlogPostsController < ApplicationController

  before_action :set_blogpost, only:[:show, :update, :edit, :destroy]

  def index
    @blogposts = BlogPost.all
  end

  def show 
    # @blogpost = BlogPost.find[params[:id]]
  end

  private
  def set_blogpost
    @blogpost = BlogPost.find(params[:id])
  end
end