FactoryBot.define do
  factory :image  do
    # binding.pry
    item_id {create(:item).id}
    src   {File.open("#{Rails.root}/spec/fixtures/test_image.jpg")}
  end
end
