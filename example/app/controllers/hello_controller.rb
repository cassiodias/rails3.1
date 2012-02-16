class HelloController < ApplicationController
  def show
    @name = Developer.first.name #params[:name]
  end
end
