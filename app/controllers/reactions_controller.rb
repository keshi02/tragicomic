class ReactionsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @reaction = Reaction.new(post_id: @post.id, reaction_flag: params[:reaction_flag], user_id: current_user.id)
    if @reaction.save
      redirect_to posts_path
    else
      redirect_to posts_path
    end
  end
end
