class PostsController < ApplicationController
  # GET /posts
  def index
    @posts = Post.find(:all, :order => "id DESC" )
    @post = Post.new

    respond_to do |format|
      format.html # index.html.erb
    end
  end

  # POST /posts
  def create
    respond_to do |format|
      flash[:notice] = 'New posts are disabled.'
      format.html { redirect_to :action => "index" }
    end
  end

end
