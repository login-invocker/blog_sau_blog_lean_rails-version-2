class CategoriesController < ApplicationController
    def index
        @categories = Category.all
    end

    def new
        @category = Category.new
    end

    def create
        @category = Category.new(category_params)
        
        if @category.save
            redirect_to categories_path(@category)
        else
            redirect_to new_category_path, flash: { error: @category.errors.full_messages }
        end
    end

    private
    def category_params
        params.fetch(:category, {}).permit(:name)
    end

end
  