class API
              binding.pry
  def self.get_data(champion)
    response = HTTParty.get("https://raw.githubusercontent.com/ngryman/lol-champions/master/champions.json")
    champions_array = JSON.parse(response)
    champions_array.each do |champion_details|

      name = champion_name["name"]
      title = champion_title["title"]
      description = chamption_history["description"]
      tags = champion_type["tags"]
      stats = champion_stats["stats"]
      Champion.new(name: name, title: title, description: description, tags: tags, stats: stats)
    end
  end
end