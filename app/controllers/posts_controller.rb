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
    @post = Post.new(params[:post])

    respond_to do |format|
      if @post.save
        flash[:notice] = 'Post was successfully created.'
        format.html { redirect_to :action => "index" }
      else
        format.html { render :action => "new" }
      end
    end
  end

end
