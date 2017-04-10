module UpcaseDowncaseCombination
	def make_combination(str="")
		@str = str
		@str_arr = @str.split("")
		@upcase_str = @str.upcase.split("")			
		result = [@str]
		@upcase_str.each_with_index do |v,i|
		    flag = false
			@str_arr.each_with_index do |x,j|
				if flag
					@str_arr[j] = x.upcase
					result << @str_arr.join
				else
					if v.downcase == x
						flag = true
						@str_arr[j] = v
						result << @str_arr.join
					else

					end
				end
			end
			@str_arr = @str.split("")
		end
		result
	end
end

#For Example
class StringCombination
	include UpcaseDowncaseCombination

	def get_combination(str)
		p str_comb_res = StringCombination.new.make_combination(str)
	end
end

StringCombination.new.get_combination("abc")


