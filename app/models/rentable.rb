class Rentable < ActiveRecord::Base
  geocoded_by :address  # can also be an IP address
  after_validation :geocode          # auto-fetch coordinates

  has_attached_file :picture,
    styles: { medium: "300x300>", thumb: "100x100>" }

  validates_attachment_content_type :picture,
    content_type: /\Aimage\/.*\z/

end
