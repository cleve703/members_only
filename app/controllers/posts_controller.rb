class PostsController < ApplicationController
  before_action :authenticate_user!, except: [:index]

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
    if @post.save
      reroute to: 'root'
    else
      reroute to: 'root'
    end
  end

  def create
  end


end
