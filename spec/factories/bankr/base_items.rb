FactoryBot.define do
  factory :base_item, class: 'Bankr::BaseItem' do
    sequence(:name) { |n| "Base Item Type #{n}" }
  end
end
