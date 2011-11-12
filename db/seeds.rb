1.upto(25) do |x|
  Task.create(item: "Task #{x}", description: "Description #{x}", priority: x)
end
