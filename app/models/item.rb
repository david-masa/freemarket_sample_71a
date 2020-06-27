class Item < ApplicationRecord

  belongs_to user, foreign_key: 'user_id'
  extend ActiveHash::Associations::ActiveRecordExtensions
  validates :name, :detail, :price, :category_id, :brand, :condition_id, :shipping_cost_id, :shipping_days_id, :shipping_area_id, :user_id, :costomer, presence: true
  validates :images, presence: true
  validates :price, :numericality => { :greater_than => 299 }
  validates :price, :numericality => { :less_than => 9999999  }
  belongs_to :user
  belongs_to :name
  belongs_to :category
  has_many :item_images
  belongs_to :detail;
  belongs_to :size;
  has_many :images, dependent: :destroy
  accepts_nested_attributes_for :images, allow_destroy: true
  
  belongs_to_active_hash :condition
  belongs_to_active_hash :brand

  def previous
    Item.where("id < ?", self.id).order("id DESC").first
  end

  def next
    Item.where("id > ?", self.id).order("id ASC").first
  end
end
