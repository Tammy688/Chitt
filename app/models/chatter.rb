class Chatter < ActiveRecord::Base
	belongs_to :user
	belongs_to :chittle
	has_many :chit_responses

	validates_length_of :chit_response, :minimum => 1
	validates_length_of :chit_response, :maximum => 350 
end
