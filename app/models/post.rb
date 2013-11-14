class Post < ActiveRecord::Base
	attr_accessible :title, :content, :email

	validates :title, :content, :presence => true
	validates :title, :length => { :minimum => 2 }
	validates :title, :uniqueness => { :message => "already taken"}
end
