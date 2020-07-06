FactoryBot.define do
  factory :item do
    user_id       {1}
    name          {"ペロペロキャンディー01A"}
    description   {"美味しい"}
    price         {1000}
    size          {"M"}
    wait          {"まつ"}
    postage       {"送料込み"}
    category_id   {1}
    brand_id      {1}
    shipping_area_id   {1}
    costomer        {nil}
    condition_id    {1}

    association :category
  end
end