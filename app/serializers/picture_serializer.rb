class PictureSerializer < ActiveModel::Serializer
  attributes :id, :name, :public, :url_large, :url_thumbnail

  def url_large
    object.attachement.url
  end

  def url_thumbnail
    object.attachement.url(:thumb)
  end
  
end
