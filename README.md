This is the module for get possbile upcase and downcase combinational of given string.

For Example :
input = "abc"
ouput = ["abc", "Abc", "ABc", "ABC", "aBc", "aBC", "abC"]

You can create a class and include this module
For Example

class StringCombination
	include UpcaseDowncaseCombination

	def get_combination(str)
		p user = User.new.make_combination(str)
	end
end

StringCombination.new.get_combination("abc")