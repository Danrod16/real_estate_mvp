class PublicController < ApplicationController
  # skip_before_action :authenticate_user!, only: [:main]
  def main
    if user_signed_in?
      path = current_user.admin? ? users_path : dashboard_path
    end
    @properties = Property.latest
  end
end
