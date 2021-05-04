class RelationshipsController < ApplicationController
  def create
    follow = current_user.active_relationships.build(folower_id: params[:user_id])
    follow.save
    redirect_to users_path
  end

  def destroy
    follow = current_user.active_relationships.find_by(folower_id: params[:user_id])
    follow.destroy
    redirect_to users_path
  end
end
