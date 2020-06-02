def nyc_pigeon_organizer(data)
  # write your code here!
end

pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}
# key => :color
# inner_key =>
hash = {}
pigeon_data.each do |key, val_hash|
  val_hash.each do |inner_key, val_arr|
      val_arr.each do |name|
        if hash[name].nil? 
          hash[name] = {}
          hash[name][key] = []
        end
        puts hash
        puts "="*10
        hash[name][key] << inner_key.to_s
      end
  end
end

puts hash