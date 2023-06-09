class ApplicationController < ActionController::Base
  include Pundit::Authorization
  before_action :authenticate_user!, unless: -> { devise_controller? }
  after_action :verify_authorized, unless: -> { devise_controller? }

  def current_user
    begin
      warden_key = session["warden.user.user.key"].first.first
      session_id = session["session_id"]
    rescue
      @current_user = nil
      return @current_user
    end
    @current_user ||= Rails.cache.fetch([warden_key, session_id]) do
      User.cached_find(warden_key)
    end
    @current_user
  end


  def authenticate_user!
    return if current_user.present?
    redirect_to new_user_session_path
  end
end
