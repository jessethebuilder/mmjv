
module ImgHandler
  def imgs=(image_array)
    image_array.each do |i|
      img = Img.new
      img.image = i
      imgs << img
    end
  end
  #
  #def imgs
  #  imgs.each{ |i| i.image }
  #end
end

class Product < ActiveRecord::Base
  use_farm_slugs

  include ImgHandler
  has_many :imgs, :as => 'has_img', :dependent => :destroy

  belongs_to :supplier
  validates :supplier_id, :presence => true

  belongs_to :product_type
  validates :product_type_id, presence: true

  #validates :name, presence: true

  validates :donation, presence: true, numericality: {:greater_than_or_equal_to => 0}

  validates :donation_owed, presence: true, numericality: {:greater_than_or_equal_to => 0}

  validates :quantity, presence: true, presence: true, numericality: {:greater_than_or_equal_to => 0} #default 0

  PRODUCT_TYPES = %w|flower|
  def self.types
    PRODUCT_TYPES
  end

  def self.products_hash
    p = Product.group_records(self.all, :product_type)
    a = p.sort_by{ |k, v| k.menu_index }
    h = {}
    a.each do |i|
      h[i[0]] = i[1]
    end
    h
  end



end
