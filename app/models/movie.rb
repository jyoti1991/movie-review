class Movie < ActiveRecord::Base
		belongs_to :user
	has_many :reviews
	validates :title,:description,:director,:movie_length,:rating,:uniqueness =>true, :presence => true,length: { minimum: 3 }
	 has_attached_file :image, styles: { medium: "400x600>"}
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
