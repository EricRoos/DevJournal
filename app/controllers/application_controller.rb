class ApplicationController < ActionController::Base
  before_action :log_current_user

  def log_current_user
    Rails.logger.info("Current User: #{current_user}")
  end

end
