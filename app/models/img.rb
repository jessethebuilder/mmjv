class Img < ActiveRecord::Base
  belongs_to :has_img, :polymorphic => true
  mount_uploader :image, ImageUploader
end

#module Img::Handler
#  def initialize
#    has_many :images, as: has_image
#    super
#  end
#end
