require 'rails_helper'

describe Favorite, type: :model do
  describe 'relationships' do
    it { should belong_to :breed }
  end
end
