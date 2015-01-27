class Scorecard < ActiveRecord::Base

	belongs_to :user
	belongs_to :course

	def total_score
		total_score = (self.hole1 + self.hole2 + self.hole3 + self.hole4 + self.hole5 + self.hole6 + 
		self.hole7 + self.hole8 + self.hole9 + self.hole10 + self.hole11 + self.hole12 + self.hole13 +
		self.hole14 + self.hole15 + self.hole16 + self.hole17 + self.hole18)
	end


end

