class Homefeature < ApplicationRecord
		has_attached_file :testimonial_image, styles: { medium: "293x240", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :testimonial_image, content_type: /\Aimage\/.*\z/
		has_attached_file :image, styles: { medium: "293x240", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
