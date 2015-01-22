class ImgsController < ApplicationController
  before_action :set_img, :only => [:destroy]

  respond_to :js

  def destroy
    obj = @img.has_img
    @img.destroy
    @imgs = obj.imgs
  end

  private

  def set_img
     @img = Img.find(params[:id])
  end
end