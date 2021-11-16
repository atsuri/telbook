class TopController < ApplicationController
  def index
    @friends = Friend.order("name").page(params[:page]).per(10)
  end
end
