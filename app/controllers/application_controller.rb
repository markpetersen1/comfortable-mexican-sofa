# frozen_string_literal: true

class ApplicationController < ActionController::Base

  skip_before_action :verify_authenticity_token
  protect_from_forgery

end
