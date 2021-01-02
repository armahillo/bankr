module Bankr
  class Item < ApplicationRecord
    validates :name, uniqueness: { scope: [:base_item, :bank] }
    belongs_to :base_item, foreign_key: :bankr_base_item_id
    belongs_to :bank, foreign_key: :bankr_bank_id
  end
end
