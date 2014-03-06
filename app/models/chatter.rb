class Chatter < ActiveRecord::Base
	belongs_to :chittle

	validates_length_of :chit_response, :minimum => 1
	validates_length_of :chit_response, :maximum => 350 
end
