defmodule Words do
  @doc """
  Count the number of words in the sentence.

  Words are compared case-insensitively.
  """
  @spec count(String.t) :: map()
  def count(sentence) do
		# Split the sentence into words
		words = String.split(sentence, " ")
		words
		
  end
end
