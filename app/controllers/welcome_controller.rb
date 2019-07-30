class WelcomeController < ApplicationController
  def index
    @posts = Post.all.published
  end
end
