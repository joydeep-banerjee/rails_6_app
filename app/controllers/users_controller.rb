class UsersController < ApplicationController
  def index
    @user = User.last
  end
end
