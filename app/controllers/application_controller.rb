class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception

    before_action :authenticate_user! 
    # user mut be logged for every action in all controllers

    def after_sign_in_path_for(resource)
        books_path
    end
end
