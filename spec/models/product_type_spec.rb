require 'rails_helper'

RSpec.describe ProductType, :type => :model do
  describe 'Validations' do
    it{ should validate_presence_of :name }
    it{ should validate_presence_of :menu_index }
  end

  describe 'Associations' do
    it{ should have_many :products }
  end
end
