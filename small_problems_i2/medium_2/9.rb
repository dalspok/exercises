=begin

P:

E:

D:

A:

C: =========================
=end


def bubble_sort!(arr)
  without_swap = false
  until without_swap
    without_swap = true
    (0..(arr.size - 2)).each do |ind|
      if arr[ind] > arr[ind + 1]
        arr[ind], arr[ind+1] = arr[ind+1], arr[ind]
        without_swap = false
      end
    end
  end
end


array = [5, 3]
bubble_sort!(array)
p array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)