def my_each(array)
  return "This block should not run!" if array.length == 0

  if block_given?
    times_called = array.length - 1
    i = 0

    while i <= times_called
      yield array[i]
      i += 1
    end

  else
    "Hey! No block was given!"
  end
  array
end
