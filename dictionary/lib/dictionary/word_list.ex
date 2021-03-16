defmodule Dictionary.WordList do

  # Starts an Agent that calls the word_list function
  # The return of word_list (or list of words) will be stored in the process


  @me __MODULE__
  def start_link() do
    Agent.start_link(&word_list/0, name: @me)
  end

  def random_word() do
    Agent.get(@me, &Enum.random/1)
  end

  def word_list do
    "../../assets/words.txt"
    |> Path.expand(__DIR__)
    |> File.read!
    |> String.split(~r/\n/)
  end
end
