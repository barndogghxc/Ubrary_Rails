class User < ApplicationRecord
  has_many :books
  has_many :reviews
  has_many :favorites
  has_many :favorite_books, through: :favorites, source: :favorited, source_type: 'Book'
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
