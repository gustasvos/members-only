class PostsController < ApplicationController
    before_action :user_signed_in?
    
    def index
    end
end
