# frozen_string_literal: true

class GroupsController < ApplicationController
  def new
    @group = Group.new
  end

  def create
    group = Group.new(group_params)
    group.owner_id = current_user.id
    group.save!
    redirect_to groups_path
  end

  def index
    @groups = Group.all
  end

  def edit; end

  def update; end

  private

  def group_params
    params.require(:group).permit(:name, :description, user_ids: [] )
  end
end
