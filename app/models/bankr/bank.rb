module Bankr
  class Bank < ApplicationRecord
    validates_uniqueness_of :short_name
    has_many :items
  end
end
