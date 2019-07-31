class WelcomeController < ApplicationController
  def index
    @posts = Post.all.published
    @comments = Comment.all
  end
end
