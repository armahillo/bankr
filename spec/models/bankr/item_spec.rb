require 'rails_helper'

module Bankr
  RSpec.describe Item, type: :model do
    context "Within a Bank" do
      let(:bank) { create(:bank) }
      subject(:item) { create(:item, bank: bank) }

      it "requires that items have unique names if they share a base item" do
        expect(build(:item, bank: bank, base_item: item.base_item, name: item.name)).to be_invalid
        expect(build(:item, bank: bank, base_item: item.base_item, name: item.name + "_")).to be_valid
      end
    end

    context "Across 2 banks" do
      let(:bank1) { create(:bank) }
      let(:bank2) { create(:bank) }
      let(:base_item) { create(:base_item) }

      it "allows 2 items to have the same base item and name if they are in separate banks" do
        same_name = 'Same'
        item1 = create(:item, bank: bank1, base_item: base_item, name: same_name)
        expect(build(:item, bank: bank2, base_item: base_item, name: same_name)).to be_valid
      end
    end
  end
end
