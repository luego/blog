class HomeController < ApplicationController
  def index
    @posts = Post.all
    @catagories = Category.all
  end
end
