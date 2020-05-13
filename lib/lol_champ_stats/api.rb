class API
  
  def self.get_data
    response = Net::HTTP.get("http://ddragon.leagueoflegends.com/cdn/10.9.1/data/en_US/champion.json")
    champions_array = JSON.parse(response)["champion"]
    champions_array.each do |champion_details|
      name = champion_name["name"]
      title = champion_title["title"]
      blurb = chamption_history["blurb"]
      tags = champion_type["tags"]
      stats = champion_stats["stats"]
      Champion.new(name: name, title: title, blurb: blurb, tags: tags, stats: stats)
    end
  end

end