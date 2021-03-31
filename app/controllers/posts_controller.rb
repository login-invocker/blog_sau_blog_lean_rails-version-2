class PostsController < ApplicationController
    
    before_action :get_user, only: %i[ create ]
    before_action :set_post, only: %i[ destroy ]

    def index
        @posts = Post.all
    end
    def new
        @post = Post.new
        @categories = Category.pluck(:id, :name)

        # Chuyển array lồng thành hash
        # @categoriesMap = @categories.map {
        #   |category|
        #   Hash[*category]
        # }
    end

    def show
        @post = Post.find(params[:id])
    end

    def create
        @post = Post.new(post_param)
        @post.user_id = @user.id

        if @post.save
          # chuyển tới trang show post
          redirect_to post_path(@post)
        else
          # quay lại trang tạo post mới, đồng thời show error
          redirect_to new_post_path, flash: { error: @post.errors.full_messages }
        end
    end

    def destroy
      @post.destroy
      redirect_to posts_path

    end
    
    private
    def set_post
      @post = Post.find(params[:id])
    end
    def post_param
      params.require(:post).permit(:content, :title, :category_id, :image_id)
    end

    def get_user
      @user = User.find_by email: session[:user_email]
    end
end
