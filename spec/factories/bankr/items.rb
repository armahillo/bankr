FactoryBot.define do
  factory :item, class: 'Bankr::Item' do
    sequence(:name) { |n| "Item instance #{n}" }
    base_item
    bank
  end
end
