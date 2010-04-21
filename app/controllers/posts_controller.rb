class PostsController < ApplicationController

  before_filter :authenticate, :only => [:new, :create, :edit, :update]
  before_filter :admin_user,   :only => :destroy


  def new
    @title = "New post"
    @post = Post.new
  end

  def create
    @post = current_user.posts.build(params[:post])
    if @post.save
      flash[:success] = "New post added!"
      redirect_to current_user
    else
      @title = "New post"
      render 'new'
    end  
  end

  private

   def authenticate
     deny_access unless signed_in?
   end

   def admin_user
     redirect_to(root_path) unless current_user.admin?
   end

end
