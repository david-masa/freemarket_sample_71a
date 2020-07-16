FactoryBot.define do
  factory :item do
    user_id       {1}
    name          {"ペロペロキャンディー01A"}
    detail   {"美味しい"}
    price         {1000}
    shipping_days          {"まつ"}
    shipping_cost      {"送料込み"}
    category_id   {1}
    brand      {1}
    shipping_area_id   {1}
    costomer        {nil}
    condition_id    {1}

    # association :category
  end
end