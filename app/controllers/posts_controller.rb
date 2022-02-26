class PostsController < ApplicationController
   before_action :authenticate_user!, only: [:new, :create]

    def index
        @posts = Post.all
    end

    def new
        @post = Post.new
    end

    def create
        @post = Post.new(post_params)
        @post.author = current_user.email

        if @post.save
            redirect_to root_url
        else
            render 'new'
        end
    end

    def destroy
        @post = Post.find(params[:id])

        @post.destroy

        redirect_to root_url
    end

    private
    def post_params
        params.require(:post).permit(:body)
    end
end
