require 'pry'

def nyc_pigeon_organizer(data)
  
  data.each_with_object({}) do |(key, value), final_hash|
    value.each do |inner_key, array_of_names|
      array_of_names.each do |single_name|
        if !final_hash[single_name]
        final_hash[single_name] = {}
      end
      if !final_hash[single_name][key]
       !final_hash[single_name][key] = []
    end 
        final_hash[single_name][key].push(inner_key.to_s)
   end
  end
 end
end


