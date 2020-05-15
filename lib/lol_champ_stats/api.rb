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
end