class Post < ActiveRecord::Base

  belongs_to :user
  # has_many :comments

  validates :title, :body, presence: true

  def tags
    self.tag_string.split("/").each{|x| x.capitalize }
  end

  def formatted_body
    self.body.split("\\n")
  end

end