class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


   # nameカラムのバリデーションを追加
  validates :name, presence: true
  
  enum role: { default: 0, general: 1 }
end
