def cuanto_falta?(time = nil)

  if time.nil?
    time = Time.new(Time.now.year, Time.now.month, Time.now.day + 1)
  end

  minutes_left = ((time - Time.now) / 60).ceil
end

puts cuanto_falta?(Time.new(2032, 12, 31, 23, 59, 59))

puts cuanto_falta?(Time.new + 3600)

puts cuanto_falta?()