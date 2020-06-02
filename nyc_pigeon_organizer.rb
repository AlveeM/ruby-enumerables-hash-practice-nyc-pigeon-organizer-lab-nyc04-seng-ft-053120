def nyc_pigeon_organizer(data)
  hash = {}
  
  pigeon_data.each do |key, val_hash|
    val_hash.each do |inner_key, val_arr|
        val_arr.each do |name|
          if hash[name].nil? 
            hash[name] = {}
            hash[name][key] = []
          end
          
          if hash[name][key].nil?
            hash[name][key] = []
          end
          
          hash[name][key] << inner_key.to_s
        end
    end
  end

  return hash
end