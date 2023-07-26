class Post < ActiveRecord::Base

  has_many :comments

  validates :title, :description, :author, presence: true

  def as_json(options)
    super.merge(:include=>[:comments])
  end

end
