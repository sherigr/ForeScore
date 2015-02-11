class Scorecard < ActiveRecord::Base

	belongs_to :user
	belongs_to :course

	def total_score
		total_score = (self.hole1.to_i + self.hole2.to_i + self.hole3.to_i + self.hole4.to_i + self.hole5.to_i + self.hole6.to_i + 
		self.hole7.to_i + self.hole8.to_i + self.hole9.to_i + self.hole10.to_i + self.hole11.to_i + self.hole12.to_i + self.hole13.to_i +
		self.hole14.to_i + self.hole15.to_i + self.hole16.to_i + self.hole17.to_i + self.hole18.to_i)
	end

	def total_par
		total_par = (self.par1.to_i + self.par2.to_i + self.par3.to_i + self.par4.to_i + self.par5.to_i + self.par6.to_i + 
		self.par7.to_i + self.par8.to_i + self.par9.to_i + self.par10.to_i + self.par11.to_i + self.par12.to_i + self.par13.to_i +
		self.par14.to_i + self.par15.to_i + self.par16.to_i + self.par17.to_i + self.par18.to_i)
	end

# Search Scorecards
	def self.search_by_date(date)
		find_by(date: date)
	end

	def self.search_by_course(course)
		find_by(courseplayed: course)
	end



end

