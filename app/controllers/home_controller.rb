class HomeController < ApplicationController
  
  before_action :set_category, only: :index

  def index
    @posts = get_params ?  Post.where("category_id" => get_params) : Post.all
  end

  private
    def set_category
      unless session[:categories]
      categories = Category.pluck(:id, :name)
      session[:categories] = categories
      end
    end

    def get_params
      params.fetch(:category_id, nil)
    end

end
