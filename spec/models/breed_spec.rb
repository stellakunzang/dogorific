require 'rails_helper'

describe Breed, type: :model do
  describe 'validations' do
    it { should validate_presence_of :name }
    it { should validate_presence_of :country }
    it { should validate_presence_of :description }
    it { should validate_presence_of :image }
    it { should validate_presence_of :favorite }
  end
end 
