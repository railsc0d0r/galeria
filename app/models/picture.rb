class Picture < ActiveRecord::Base

  has_attached_file :attachement,
                    processors: [:watermark],
                    styles: { large: { geometry:"800x600>",
                                       :watermark_path => Rails.root.join('watermark.png'),
                                       :position => 'NorthWest'
                                     },
                              thumb: "100x100>" }
  
  validates_attachment_content_type :attachement, content_type: /\Aimage\/.*\Z/
  validates_attachment_presence :attachement
  
end
