class Book < ActiveRecord::Base
  has_attached_file :cover, styles: { medium: "300x400#" }, default_url: ":style/missing.png"
  validates_attachment_content_type :cover, content_type: /\Aimage\/.*\Z/
  validates :author, presence: true
  validates :title, presence: true
  validates :ISBN_number, presence: true, length: { in: 10..13 }, uniqueness: true
  validates :year, presence: true, length: { minimum: 4}
  validates :publisher, presence: true

  belongs_to :user
end
