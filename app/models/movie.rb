class Movie < ActiveRecord::Base
	belongs_to :user
	has_many :reviews
	attr_accessor :video_file
	validates :title,:description,:director,:movie_length,:uniqueness =>true, :presence => true,length: { minimum: 3 }
	has_attached_file :image, styles: { medium: "400x600>"}
	has_attached_file :video_file
  #validates_attachment_content_type :image,:video_file,:content_type => [ "image/jpg", "image/jpeg", "image/png", 'video/mp4'],
    #:styles => {:medium => { :geometry => "640x480", :format => 'mp4'},
    #:large => { :geometry => "1024x576", :format => 'mp4'},
 # },:processors => [:ffmpeg]
	validates_attachment_content_type :image,:video_file, :content_type => %w(image/jpeg image/jpg  image/png video/mp4) 
	validates_attachment_content_type :video_file ,:content_type => %w(video/mp4)
end
