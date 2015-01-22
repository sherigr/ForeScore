class Scorecard < ActiveRecord::Base

	belongs_to :user
	belongs_to :course

	def total(holes)
		for holes.each do |score|
			score.sum
		end
	end


puts "#{total}"


end


#? WHile loop, while holes >= 1, += <= 18