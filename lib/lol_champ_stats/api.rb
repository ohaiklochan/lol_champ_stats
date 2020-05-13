class API
  
  def self.get_data
    response = Net::HTTP.get("http://ddragon.leagueoflegends.com/cdn/10.9.1/data/en_US/champion.json")
    champions_array = JSON.parse(response)["champion"]
    champions_array.each do |champion_details|
      Champion.new(champion_name["name"], champion_title["title"], chamption_history["blurb"], champion_type["tags"], champion_stats["stats"])
    end
  end

end