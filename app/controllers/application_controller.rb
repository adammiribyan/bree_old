class ApplicationController < ActionController::Base
  before_filter :authenticate
  
  protect_from_forgery
  autocomplete :patient, :full_name, :full => true
  
  private
    def authenticate
      authenticate_or_request_with_http_basic(AppConfig[:site_name_en]) do |user_name, password|
        user_name == AppConfig[:auth_name] && 
        password == AppConfig[:auth_password]
      end
    end
end
