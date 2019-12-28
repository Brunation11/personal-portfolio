class Post < ActiveRecord::Base

  belongs_to :user
  # has_many :comments

  validates :title, :body, presence: true

  def tags
    self.tag_string.split("/").each{|x| x.upcase }
  end

  def preview_body
    self.body.split("\r\n\r\n")[0]
  end

end