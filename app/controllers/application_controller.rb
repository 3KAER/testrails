class ApplicationController < ActionController::Base
    include SessionsHelper
    include ApplicationHelper
    skip_before_action :verify_authenticity_token, only: [:create, :destroy, :update]

end
