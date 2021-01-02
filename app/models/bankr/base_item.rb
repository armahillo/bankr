module Bankr
  class BaseItem < ApplicationRecord
    validates_uniqueness_of :name
  end
end
