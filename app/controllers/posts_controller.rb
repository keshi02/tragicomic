class PostsController < ApplicationController
  def index
    @posts = Post.includes(:user).order(created_at: :desc)
  end

  def new
    @post = Post.new
  end

  def create
    @post = current_user.posts.build(post_params)
    if @post.save
      redirect_to posts_path, success: t('posts.create.success')
    else
      flash.now[:danger] = t('posts.create.failure')
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    post = current_user.posts.find(params[:id])
    post.destroy!
    redirect_to posts_path, status: :see_other, success: t('posts.destroy.success')
  end

  private

  def post_params
    params.require(:post).permit(:body, :post_image, :post_image_cache)
  end
end
