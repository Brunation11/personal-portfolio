class Project < ActiveRecord::Base
  belongs_to :user

  validates_presence_of :user, :name, :description, :technologies

  def gallery_images
    images = Dir.glob("app/assets/images/#{name.downcase.split(" ").join("_")}/gallery/*.png").sort
    images.map {|image| "/assets/#{name.downcase.split(" ").join("_")}/gallery/#{image.split('/').last}" }
  end

  def thumbnail
    "/assets/#{name.downcase.split(" ").join("_")}/thumbnail.png"
  end
end
