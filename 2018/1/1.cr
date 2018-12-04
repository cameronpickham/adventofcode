File.open("./input.txt") do |file|
  contents = file.gets_to_end

  frequency = 0
  contents.each_line do |line|
    frequency += line.to_i(10)
  end

  puts frequency
end

