require 'rails_helper'

module Bankr
  RSpec.describe BaseItem, type: :model do
    it { is_expected.to validate_uniqueness_of(:name) }
  end
end
