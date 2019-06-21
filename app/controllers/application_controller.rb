class ApplicationController < ActionController::Base
    before_action :require_login

  def require_login
    if session[:customer_id] == nil
      redirect_to "/"
    end
  end

end
