require 'rails_helper'

describe Favorite, type: :model do
  describe 'validations' do
    it { should validate_presence_of :breed_id }
  end
end
