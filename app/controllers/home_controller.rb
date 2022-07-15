class HomeController < ApplicationController
    before_action :authenticate_user!
    def index
    end

    private
    
    def authenticate_admin
    end

    def authenticate_requestor
    end


end
