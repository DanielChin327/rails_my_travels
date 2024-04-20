class PostsController < ApplicationController
  before_action :set_country
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  def index
    @posts = @country.posts
  end

  def show
  end

  # Additional methods for new, create, edit, update, destroy

  private
  def set_country
    @country = Country.find(params[:country_id])
  end

  def set_post
    @post = @country.posts.find(params[:id])
  end
end
