require 'rails_helper'

module Bankr
  RSpec.describe Bank, type: :model do
    it { is_expected.to validate_uniqueness_of(:short_name) }
    it { is_expected.not_to validate_uniqueness_of(:name) }
  end
end
