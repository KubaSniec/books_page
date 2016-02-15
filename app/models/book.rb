class Book < ActiveRecord::Base
  has_attached_file :cover, styles: { medium: "300x400#" }
  validates_attachment_content_type :cover, content_type: /\Aimage\/.*\Z/
end
