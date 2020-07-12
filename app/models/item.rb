class Item < ApplicationRecord

  extend ActiveHash::Associations::ActiveRecordExtensions
  validates :name, :detail, :price, :condition_id, :shipping_area_id, :shipping_days, :shipping_cost, presence: true
  validates :images, presence: true
  validates :price, :numericality => { :greater_than => 299 }
  validates :price, :numericality => { :less_than => 9999999  }

  # 下記2行、今後ユーザー登録やカテゴリ機能との結びつきの実装を予想してコメントアウト状態にしています。
  # belongs_to :user
  # belongs_to :category
  
  has_many :images, dependent: :destroy
  accepts_nested_attributes_for :images, allow_destroy: true
  
  belongs_to_active_hash :shipping_area
  belongs_to_active_hash :condition

  def previous
    Item.where("id < ?", self.id).order("id DESC").first
  end

  def next
    Item.where("id > ?", self.id).order("id ASC").first
  end
end
