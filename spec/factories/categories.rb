FactoryBot.define do
  factory :category do 
    id        {1}
    name      {"トップス"}
    association :item
  end
end