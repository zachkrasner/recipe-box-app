class Recipe < ActiveRecord::Base
  validates :title, presence: true

  has_many :ingredients
  accepts_nested_attributes_for :ingredients, reject_if: :all_blank, allow_destroy: true

  has_many :directions
  accepts_nested_attributes_for :directions, reject_if: :all_blank, allow_destroy: true

  belongs_to :user

  # images
  has_attached_file :image, styles: { medium: "700x400#" }, default_url: ":style/700x400.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
