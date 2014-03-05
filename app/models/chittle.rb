class Chittle < ActiveRecord::Base
	belongs_to :user
	has_many :chatters

	validates_length_of :chit_text, :minimum => 1
	validates_length_of :chit_text, :maximum => 350 
end
