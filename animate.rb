require "csv"

csv_file_path = "ascii/50.txt"

# list = CSV.open(csv_file_path, 'r') { |csv| csv.read }

# puts list

def animation_with_a_great_final_frame
  result = ""
  2.times do
    i = 0
    while i < 91
      print "\033[2J"
      if CSV.open("ascii/#{i}.rb", 'r') == ""
          result = result + " " + i
      end
      File.foreach("ascii/#{i}.rb") do |f|
        if f.eql?("")
          result = result + " " + i
        end
        puts f
      end
      sleep(0.03)
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
