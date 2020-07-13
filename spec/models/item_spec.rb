require 'rails_helper'


describe Item, type: :model do
  describe '#create' do
    let(:item) {create(:item)}

    context 'can save' do
      it 'is valid without size' do
        expect(build(:item, size: nil)).to be_valid
      end
    end
    
    context 'can not save' do

      it 'is invalid without user_id' do
        item = build(:item, user_id: nil)
        item.valid?
        expect(item.errors[:user_id]).to include("を入力してください")
      end

      it 'is invalid without category_id' do
        item = build(:item, category_id: nil)
        item.valid?
        expect(item.errors[:category_id]).to include("を入力してください")
      end

      it 'is invalid without brand' do
        item = build(:item, brand_id: nil)
        item.valid?
        expect(item.errors[:brand]).to include("を入力してください")
      end
      
      it 'is invalid without name' do
        item = build(:item, name: nil)
        item.valid?
        expect(item.errors[:name]).to include("を入力してください")
      end
      
      it 'is invalid without price' do
        item = build(:item, price: nil)
        item.valid?
        expect(item.errors[:price]).to include("を入力してください")
      end

      it 'is invalid without description' do
        item = build(:item, detail: nil)
        item.valid?
        expect(item.errors[:detail]).to include("を入力してください")
      end

      it 'is invalid without prefecture_id' do
        item = build(:item, shipping_area_id: nil)
        item.valid?
        expect(item.errors[:shipping_area_id]).to include("を入力してください")
      end

      it 'is invalid without postage' do
        item = build(:item, shipping_cost: nil)
        item.valid?
        expect(item.errors[:shipping_cost]).to include("を入力してください")
      end

      it 'is invalid without condition_id' do
        item = build(:item, condition_id: nil)
        item.valid?
        expect(item.errors[:condition_id]).to include("を入力してください")
      end

      it 'is invalid without wait' do
        item = build(:item, shipping_days: nil)
        item.valid?
        expect(item.errors[:shipping_days]).to include("を入力してください")
      end

    end
  end
end