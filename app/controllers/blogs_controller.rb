class BlogsController < ApplicationController

  before_action :move_to_index, except: :index

  def index
    @blogs = Blog.all
  end

  def new
    @blog = Blog.new
  end

  def create
    Blog.create(create_params)
  end

  private
  def create_params
      params.require(:blog).permit(:name,:location,:blog)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end

end
