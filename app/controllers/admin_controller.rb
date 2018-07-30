class AdminController < ApplicationController
  def index; end

  def account
    @users = User.all.page(params[:page]).per Settings.per_page
  end

  def to_partial_path
    "users/account"
  end

  User.new.to_partial_path
end
