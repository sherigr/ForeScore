class Scorecard < ActiveRecord::Base

	belongs_to :user
	belongs_to :course

# 	def total_score
# 		total_holes = 0
# 		for total_holes.each do |score|
# 			total_holes += score
# 			return "#{total_score}"
# 		end
# 	end
# end

	def total_score()
		
		# i = 0
		# 	while i< total_score.length()
		# 		puts(total_score[i])
		# 		i += 1
		# 	end
	end
end

