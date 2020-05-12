class API
  
  def self.get_data
    response = RestClient.get("http://ddragon.leagueoflegends.com/cdn/10.9.1/data/en_US/champion.json")
    champions_array = JSON.parse(response.body)["results"]
    champions_array.each.do |champion|
      Champion.new(champion)
  end

end