class API

  def self.get_data(champion)
    response = HTTParty.get("https://raw.githubusercontent.com/ngryman/lol-champions/master/champions.json")
    champions_array = JSON.parse(response)
    champions_array.each do |champion_details|

      name = champion_details["name"]
      title = champion_details["title"]
      description = champion_details["description"]
      tags = champion_details["tags"]
      stats = champion_details["stats"]

      Champions.new(name: name, title: title, description: description, tags: tags, stats: stats)

    end
  end

#   def self.getChampDeets(champion)
#     response = HTTParty.get("https://raw.githubusercontent.com/ngryman/lol-champions/master/champions.json")
#     champion_deets = JSON.parse(response)
#     champions_array.each do |champion_deets|
     
#       description = champion_deets["description"]
#       tags = champion_deets["tags"]
#       stats = champion_deets["stats"]
      
#       # Champions.new(description: description, tags: tags, stats: stats)
      
#     end
#   end
end