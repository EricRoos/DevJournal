class ApplicationController < ActionController::Base
  include Pundit::Authorization
  before_action :authenticate_user!, unless: -> { devise_controller? }
  before_action :log_current_user
  after_action :verify_authorized, unless: -> { devise_controller? }

  def log_current_user
    Rails.logger.info("Current User: #{current_user}")
  end

  def authenticate_user!
    return if current_user.present?
    redirect_to new_user_session_path
  end
end
