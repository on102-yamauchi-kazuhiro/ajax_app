class PostsController < ApplicationController
  def index
    @posts = Post.order(id: "DESC")
  end
 
   # def new
   # end
 
  def create
    post = Post.create(content: params[:content])
    render json:{ post: post }
    # redirect_toを用いることでindex.html.erbを返しています。
  end
 
 end