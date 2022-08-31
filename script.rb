require 'csv'

filename = "#{Time.now.to_i}.csv"
timestamp = Time.now.to_i + 3600 # one hour ahead

CSV.open(filename, "a+") do |csv|
	csv << ["cluster_id", "priority", "product_id", "expires_at"]
        (1000 * 1000).times do |i|
                csv << ["test_cluster_bs", "123", "#{i}_product", timestamp.to_s]
        end

end

puts "expires_at", Time.new(2022, 8, 18, 17, 30)
puts "generated", filename
