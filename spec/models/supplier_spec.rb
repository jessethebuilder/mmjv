require 'rails_helper'

RSpec.describe Supplier, :type => :model do
  describe 'Validations' do
    it{ should validate_presence_of :name }
  end

  describe 'Associations' do
    it{ should belong_to :user }
    it{ should have_many :products }
  end
end
