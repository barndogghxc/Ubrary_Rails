class Book < ApplicationRecord
  belongs_to :user
  belongs_to :genre

  has_attached_file :book_img, :styles => { :book_index => "250x350>", :book_show => "325x475>" }
  validates_attachment_content_type :book_img, :content_type => /\Aimage\/.*\Z/
end
