# controls the list the current_user owns

# module: API
class API::UserListsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_userlists, only: [:index]
  before_action :set_userlist, only: [:update, :destroy]

# CRUD
# 1 - Show all of user's lists (DIVYA)
  def index
  end

# 2 - Create User List (AKIRA)
  def create
    @userlist = current_user.lists.new(userlist_params)

    if @userlist.save
      render json: @userlist
    else
      render json: @userlist.errors.messages, status: 422
    end
  end

# 3 - Update User List (AKIRA)
  def update
    @userlist.assign_attributes(userlist_params)

    if @userlist.save
      render json: @userlist
    else
      render json: @userlist.errors.messages, status: 422
    end
  end

# 4 - Delete User List (DIVYA)
  def destroy
    @userlist.destroy
    head 204
  end


# PRIVATE METHODS
  private
    def set_userlists
      @userlists = current_user.lists
    end

    def set_userlist
      @userlist = current_user.lists.find_by(id: params[:id])
      if @userlist.nil?
        render json: {message: "Cannot find '#{params[:id]}'"}
      end
    end

    def userlist_params
      params.require(:list).permit(:title, :description)
    end
  end
