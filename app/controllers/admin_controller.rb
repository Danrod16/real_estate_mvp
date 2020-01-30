class AdminController < ApplicationController
  before_action :can_access?

  def users
    @users = User.where(admin: false)
  end

  def admin
    @admin = User.where(admin: true)
  end

  def can_access?
    unless current_user.admin?
      redirect_to root_url, flash: { danger: "you do not have access to this page" }
    end
  end
end
