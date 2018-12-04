File.open("./input.txt") do |file|
  contents = file.gets_to_end

  frequency = 0
  seen_frequencies = {frequency => true}

  duplicate_frequency_found = false

  until duplicate_frequency_found
    contents.each_line do |line|
      frequency += line.to_i(10)

      if seen_frequencies.has_key?(frequency)
        puts frequency
        duplicate_frequency_found = true
        break
      end

      seen_frequencies[frequency] = true
    end
  end
end
