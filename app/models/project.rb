class Project < ActiveRecord::Base
  belongs_to :user

  validates_presence_of :user, :name, :description, :technologies

  def gallery_images
    images = Dir.glob("app/assets/images/#{name.downcase}/gallery/*.png")
    images.map {|image| "/assets/#{name.downcase}/gallery/#{image.split('/').last}" }
  end

  def thumbnail
    "/assets/#{name.downcase}/thumbnail.png"
  end
end
