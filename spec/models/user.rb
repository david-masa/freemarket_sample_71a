require 'rails_helper'

describe User, type: :model do 
  describe '#create' do

    it "項目が空だと登録できないこと" do
      user = build(:user, nickname: nil, first_name: nil, last_name_kana: nil, first_name_kana:nil, telnum:nil, gender:nil, year:nil)
      user.valid?
      expect(user.errors[:nickname]).to include("can't be blank")
    end

    it "last_name_kanaがカナで返る事" do
      user = build(:user, last_name_kana: "kana")
      user.valid?
      expect(user.errors[:last_name_kana]).to include("is invalid")
    end

    it "first_name_kanaがカナで返る事" do
      user = build(:user, first_name_kana: "kana")
      user.valid?
      expect(user.errors[:first_name_kana]).to include("is invalid")
    end

    it "telnumがハイフン付きの11の数字で返る事" do
      user = build(:user, telnum: "123-1234-123")
      user.valid?
      expect(user.errors[:telnum]).to include("is invalid")
    end
    

  end
end