class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_filter :authenticate_user!, except: [:new, :create]
  around_filter :user_time_zone, if: :current_user

  private

  def user_time_zone(&block)
    Time.use_zone(current_user.time_zone, &block)
  end
end
