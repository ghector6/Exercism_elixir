defmodule HighSchoolSweetheart do
  def first_letter(name) do
    name
    |> String.trim()
    |> String.first()
    # Please implement the first_letter/1 function
  end

  def initial(name) do
    first_letter(name)
    |> String.upcase()
    |> Kernel.<>(".")
    # Please implement the initial/1 function
  end

  def initials(full_name) do
    [a,b] = String.split(full_name) 
    Kernel.<>(initial(a), " #{initial(b)}")  
    # Please implement the initials/1 function
  end

  def pair(full_name1, full_name2) do
     """
         ******       ******
       **      **   **      **
     **         ** **         **
    **            *            **
    **                         **
    **     #{initials(full_name1)}  +  #{initials(full_name2)}     **
     **                       **
       **                   **
         **               **
           **           **
             **       **
               **   **
                 ***
                  *
    """      

    # Please implement the pair/2 function
  end
end
