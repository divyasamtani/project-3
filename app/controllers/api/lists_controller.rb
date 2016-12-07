# display public accessable lists

class API::ListsController < ApplicationController
  before_action :set_lists
  before_action :set_list

  def index
  end

  def show
    render json: @list
  end


# PRIVATE METHODS
private

  def set_lists
    @lists = List.includes(:user, :restaurants).all
  end

  def set_list
    @list = List.find_by(id: params[:id])
  end

end
