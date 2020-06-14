class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # validates :name, :nikname, :last_name, :first_name, :last_name_kana, :first_name_kana, :birthday , :telnum, :gender, :year ,presence: true 
  has_one :address  
end
