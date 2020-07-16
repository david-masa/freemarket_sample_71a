require 'rails_helper'

describe Address, type: :model do
  describe '#create' do

    it "項目がない場合は登録できないこと" do
      address = build(:address, family_name: nil, first_name: nil, family_name_kana: nil, first_name_kana: nil, postal_code: nil, city: nil)
      address.valid?
      expect(user.errors[:family_name]).to include("can't be blank")
    end

    it "family_name_kanaがカナで返る事" do
      address = build(:address, family_name_kana: "kana")
      address.valid?
      
      expect(user.errors[:family_name_kana]).to include("is invalid")
    end

    it "first_name_kanaがカナで返る事" do
      address = build(:address, first_name_kana: "kana")
      address.valid?
      expect(user.errors[:first_name_kana]).to include("is invalid")
    end

    it "telnumがハイフン付きの7の数字で返る事" do
      address = build(:address, postal_code: "123-123")
      address.valid?
      expect(user.errors[:postal_code]).to include("is invalid")
    end

  end
end