class ApplicationController < ActionController::Base
  protect_from_forgery
  autocomplete :patient, :full_name, :full => true
end
