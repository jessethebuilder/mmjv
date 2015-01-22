require 'rails_helper'

RSpec.describe User, :type => :model do
  describe 'Validations' do

  end

  describe 'Associations' do
    it{ should have_one :supplier }
  end
end
