class BlogPostController < ApplicationController

  def index
    @BlogPosts = BlogPost.all
  end
end