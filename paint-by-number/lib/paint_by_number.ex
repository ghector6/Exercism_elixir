defmodule PaintByNumber do
  def palette_bit_size(color_count) do
    palette_bit_size(1, color_count)
  end

  def palette_bit_size(bit_counter, color_count) do
    current_bit = Integer.pow(2,bit_counter)
    case color_count do
      color_count when color_count > current_bit ->
        palette_bit_size(bit_counter + 1, color_count)
      _ -> bit_counter
    end

  end
  def empty_picture() do
    <<>>
  end

  def test_picture() do
    <<0::2, 1::2, 2::2, 3::2 >>
    # Please implement the test_picture/0 function
  end

  def prepend_pixel(picture, color_count, pixel_color_index) do
    <<pixel_color_index::size(palette_bit_size(color_count)), picture::bitstring>>
    # Please implement the prepend_pixel/3 function
  end

  def get_first_pixel(picture, color_count) do
    case picture do
      <<>> -> nil
      _ ->
        bits = palette_bit_size(color_count)
        <<first::size(bits), _rest::bitstring>> = picture
        first
    end
    # Please implement the get_first_pixel/2 function
  end

  def drop_first_pixel(<<>>, _color_count), do: empty_picture()

  def drop_first_pixel(picture, color_count) do
    bits = palette_bit_size(color_count)
    <<_first::size(bits), rest::bitstring>> = picture
    rest
    # Please implement the drop_first_pixel/2 function
  end

  def concat_pictures(picture1, picture2) do
    <<picture1::bitstring, picture2::bitstring>>
  end
end
