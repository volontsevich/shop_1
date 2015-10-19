class Product < ActiveRecord::Base
  has_many :images

  has_attached_file :photo, styles: {thumb: "100x100>"},
                    default_url: lambda { |image| ActionController::Base.helpers.asset_path('logo.jpg') }
  validates_attachment :photo, content_type: {content_type: ["image/jpg", "image/jpeg", "image/png"]}

  has_attached_file :img1, styles: {thumb: "100x100>"},
                    default_url: lambda { |image| ActionController::Base.helpers.asset_path('logo.jpg') }
  validates_attachment :img1, content_type: {content_type: ["image/jpg", "image/jpeg", "image/png"]}

  has_attached_file :img2, styles: {thumb: "100x100>"},
                    default_url: lambda { |image| ActionController::Base.helpers.asset_path('logo.jpg') }
  validates_attachment :img2, content_type: {content_type: ["image/jpg", "image/jpeg", "image/png"]}

  has_many :order_items
  default_scope {
    where(available: true)
  }
end
