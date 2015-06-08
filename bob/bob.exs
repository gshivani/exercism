defmodule Teenager do
  def hey(input) do
		question_reply = "Sure."
		yell_reply = "Whoa, chill out!"
		say_nothing_reply = "Fine. Be that way!"
		anything_reply = "Whatever."
		
    cond do
			String.ends_with?(input, "?") == true -> question_reply 
			empty_string(input) -> say_nothing_reply	
			check_upcase(input) == true -> yell_reply
			input -> anything_reply
    end
  end
	
	def check_upcase(input) do
		if Regex.match?( ~r/[A-Z]/, input) ||
			 Regex.match?( ~r/[\p{L}]/, input) 
			 do
				String.upcase(input) == input
		else
				false
		end 	
	end
	
	def empty_string(input) do
		if input == "" || input == "  " do
			true
		else 
			false
		end
	end
end
