class Scorecard < ActiveRecord::Base

	belongs_to :user
	belongs_to :course

	def total_score
		total_score = (self.hole1 + self.hole2 + self.hole3 + self.hole4 + self.hole5 + self.hole6 + 
		self.hole7 + self.hole8 + self.hole9 + self.hole10 + self.hole11 + self.hole12 + self.hole13 +
		self.hole14 + self.hole15 + self.hole16 + self.hole17 + self.hole18)
	end

	def total_par
		total_par = (self.par1 + self.par2 + self.par3 + self.par4 + self.par5 + self.par6 + 
		self.par7 + self.par8 + self.par9 + self.par10 + self.par11 + self.par12 + self.par13 +
		self.par14 + self.par15 + self.par16 + self.par17 + self.par18)
	end


end

