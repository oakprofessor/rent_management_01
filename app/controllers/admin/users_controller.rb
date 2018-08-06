class Admin::UsersController < ApplicationController
  layout "admin"
  def index
    @admin_users = User.all.page(params[:page]).per Settings.per_page
  end

  def destroy
    @admin_user = Admin::User.find_by id: params[:id]
    @admin_user.destroy
    redirect_to admin/users
  end
end
