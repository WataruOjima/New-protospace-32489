class UsersController < ApplicationController
  before_action :user_signed_in
  def show
    @user = User.find(params[:id])
    @name = @user.name
    @prototypes = @user.prototypes
  end

  def user_signed_in
    unless user_signed_in?
    redirect_to action: :index
    end
  end

end
