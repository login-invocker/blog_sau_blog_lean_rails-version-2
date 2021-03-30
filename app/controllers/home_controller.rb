class HomeController < ApplicationController
  def index
    puts params[:query]
  end
  def my
    puts "post method"
    puts params[:query]

  end
end
