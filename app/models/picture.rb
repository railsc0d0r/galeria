class Picture < ActiveRecord::Base

  has_attached_file :attachement, styles: { large: "1400x1050>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :attachement, content_type: /\Aimage\/.*\Z/
  validates_attachment_presence :attachement
  
end
