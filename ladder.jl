module Ladder

using Printf

export ladder

function ladder() 
	grade = 'X'; score = 0
	for i in 1:10
		score = rand(1:100)
		if score >= 90 
			grade = 'A'
		elseif score >= 80 
			grade = 'B'
		elseif score >= 70 
			grade = 'C'
		elseif score >= 60 
			grade = 'D'
		else 
			grade = 'F'
    end
		@printf("grade = %c score = %d \n",
                grade, score)
  end
end

end
