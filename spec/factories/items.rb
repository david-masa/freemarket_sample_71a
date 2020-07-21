FactoryBot.define do
  factory :item do
    user_id       {1}
    name          {"ペロペロキャンディー01A"}
    detail   {"美味しい"}
    price         {1000}
    category_id   {1}
    brand      {"ナイキ"}
    shipping_area_id   {1}
    shipping_days          {"1〜2日"}
    shipping_cost      {"送料込み"}
    costomer        {nil}
    condition_id    {1}

    # association :category
  end
end