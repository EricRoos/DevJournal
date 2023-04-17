class ApplicationController < ActionController::Base
  include Pundit::Authorization
  before_action :authenticate_user!
  before_action :log_current_user
  after_action :verify_authorized, unless: -> { devise_controller? }

  def log_current_user
    Rails.logger.info("Current User: #{current_user}")
  end

end
