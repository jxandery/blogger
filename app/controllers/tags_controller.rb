class TagsController < ApplicationController
  before_action :require_login, only: [:destroy]

  def show
    @tag = Tag.find(params[:id])
  end

  def index
    @tags = Tag.all
  end

  def edit
    @tag = Tag.find(params[:id])
  end

  def update
    @tag = Tag.find(params[:id])
    @tag.update(tag_params)
    redirect_to tags_path
  end

  def destroy
    @tag = Tag.find(params[:id]).destroy
    flash[:notice] = "Tag: #{@tag.name} Deleted!"
    redirect_to tags_path
  end

  private

  def tag_params
    params.require(:tag).permit(:name)
  end
end
