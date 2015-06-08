defmodule Words do
  @doc """
  Count the number of words in the sentence.

  Words are compared case-insensitively.
  """
  @spec count(String.t) :: map()
  def count(sentence) do
		# Split the sentence into words
		sentence = String.downcase(sentence)
		words = String.split(sentence, [" ", "_"])
		|> count_words
  end
	
	def count_words(words) do
		Enum.reduce(words, %{}, fn(word, acc) -> 
		  word = remove_expr(word)
			if word != "", do:
				Dict.put(acc, word, (acc[word] || 0) + 1), else: acc
		end)
	end
	
	def remove_expr(word) do
		Regex.run(~r/(*UTF)[\p{L}a-zA-Z0-9\-]*/, word) 
		|> List.first
	end
end
