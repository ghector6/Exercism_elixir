defmodule DNA do
  def encode_nucleotide(?a), do: 0b0000
  def encode_nucleotide(?A), do: 0b0001
  def encode_nucleotide(?C), do: 0b0010
  def encode_nucleotide(?G), do: 0b0100
  def encode_nucleotide(?T), do: 0b1000


  def decode_nucleotide(encoded_code) do
  end

  def encode(dna) do
    # Please implement the encode/1 function
  end

  def decode(dna) do
    # Please implement the decode/1 function
  end
end
