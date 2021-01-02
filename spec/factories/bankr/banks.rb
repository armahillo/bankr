FactoryBot.define do
  factory :bank, class: 'Bankr::Bank' do
    sequence(:name) { |n| "#{n}th Bank" }
    sequence(:short_name) { |n| "bank_#{n}" }
  end
end
