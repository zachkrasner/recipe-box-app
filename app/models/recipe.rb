class Recipe < ActiveRecord::Base
  validates :title, presence: true, length: { minimum: 4 }
  validates :description, presence: true

  # images
  has_attached_file :image, styles: { medium: "700x400#" }, default_url: ":style/700x400.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
