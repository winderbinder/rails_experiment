class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index]
  access all: [:show, :index], user: {except: [:new, :create, :update, :edit, :destroy]}, admin: :all
  
  def index
    @posts = Post.all
    if params[:search]
      @search = Post.search(params[:search]).order("created_at DESC")
    else 
      @search = Post.all.order("created_at DESC")
    end
  end

  def new
    @post = Post.new
  end

  def edit

  end

  def show

  end

  def create
    @post = Post.new(post_params)

    respond_to do |format|
    if @post.save
        format.html { redirect_to @post, notice: 'Post was successfully created.' }
        format.json { render :show, status: :created, location: @post }
    else
        format.html { render :new }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to @post, notice: 'Post was successfully created.'} 
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_to posts_url, notice: 'post was successfully deleted.' }
      format.json { head :no_content }
    end
  end

  private

    def set_post
      @post = Post.find(params[:id])
    end

    def post_params
      params.permit(:post, :title, :search, :body, :date)
    end
end
