defmodule Animals do
  @moduledoc """
  Documentation for Animals.
  """

  @doc """
  Make zoo.

  ## Examples

      iex> Animals.make_zoo()
      ["lion", "tiger", "gorilla", "elephant", "monkey", "giraffe"]

  """
  def make_zoo, do: ["lion", "tiger", "gorilla", "elephant", "monkey", "giraffe"]

  def randomize_zoo(zoo), do: Enum.shuffle(zoo)

  def contains_animal?(zoo, animal) do
    Enum.member?(zoo, animal)
  end

  def see_animals(zoo, count) do
    {seen, to_see} = Enum.split(zoo, -count)
    to_see
  end

  def save_animals(zoo, filename) do
    binary = :erlang.term_to_binary(zoo)
    File.write(filename, binary)
  end

  def load_animals(filename) do
    case File.read(filename) do
      {:ok, binary} -> :erlang.binary_to_term(binary)
      {:error, message} -> "File not found."
    end
  end

  def create_trip (num) do
    make_zoo
    |> randomize_zoo
    |> see_animals(num)
  end

  def get_lion do
    %{
      animal: "Lion",
      age: "5", 
      name: "Carl"
    }
  end

  # run process
  # spawn(Animals, :make_zoo, [])
end
