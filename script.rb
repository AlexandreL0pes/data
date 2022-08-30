require 'csv'

filename = "#{Time.now.to_i}.csv"

CSV.open(filename, "a+") do |csv|
	csv << ["cluster_id", "priority", "product_id"]
        (700 * 1000).times do |i|
                csv << ["test_cluster_ax", "123", "#{i}_product"]
        end

end

puts "expires_at", Time.new(2022, 8, 18, 17, 30)
puts "generated", filename
