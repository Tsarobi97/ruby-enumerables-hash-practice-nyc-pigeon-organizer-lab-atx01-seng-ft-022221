require 'pry'

def nyc_pigeon_organizer(data)
  
 final_result = data.each_with_object({}) do |(key, value), final_array|
    value.each do |inner_key, inner_array|
      inner_array.each do |element|
        if !final_array[element]
        final_array[element] = {}
     end 
        if !final_array[element][key]
        !final_array[element][key] = []
     end
        final_array[element][key].push(inner_key.to_s)
    end
   end
  end
 end
learn submit