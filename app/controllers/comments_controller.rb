class CommentsController < ApplicationController
  def new
    @post = Post.find(params[:post_id])
    @comment = Comment.new(post_id: @post.id)
  end

  def create
    post = Post.find(params[:post_id])
    comment = Comment.new(post_id: post.id, content: params[:comment][:content])
    redirect_to post_path(post) if comment.save
  end
end
