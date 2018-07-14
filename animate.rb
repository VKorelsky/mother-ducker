require "csv"

csv_file_path = "ascii/50.txt"

# list = CSV.open(csv_file_path, 'r') { |csv| csv.read }

# puts list

def animation_with_a_great_final_frame
  result = ""
  arr = (0..90).to_a
  arr.delete_at(0)
  arr.delete_at(0)
  arr.delete_at(6)
  arr.delete_at(9)
  arr.delete_at(24)
  arr.delete_at(49)
  arr.delete_at(72)
  arr.delete_at(83)
  arr.delete_at(82)
  2.times do
    for i in arr
      # print "\033[2J"
      puts "\033[2J"
      # puts i
      # if CSV.open("ascii/#{i}.rb", 'r') == ""
      #     result = result + " " + i
      # end
      File.foreach("ascii/#{i}.rb") do |f|
        if f.eql?("")
          result = result + " " + i
        end
        puts f
      end
      sleep(0.1)
      i += 1
    end
  end
  puts result
end

animation_with_a_great_final_frame

# result = ""

# for i in (60..91)
#   result = result + "#{i}.rb "
# end

# puts result
