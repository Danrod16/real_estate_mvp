class PublicController < ApplicationController
  # skip_before_action :authenticate_user!, only: [:main]
  def main
    @properties = Property.latest
  end
end
