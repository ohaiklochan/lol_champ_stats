class LolChampStats::CLI
  
  def call
    puts "Welcome fellow gamer!"
    puts ""
    puts "Let's find out about the League of Legends champions, shall we?"
    puts ""
    puts "We can find out more about the champions by typing in anything."
    
    champions = gets.strip.downcase
    API.get_data(champions)
    champions_list(Champions.all)
  end
  
  def champions_list(champions)
    puts ""
    puts "Choose a champion:"
    puts ""
    champions.each.with_index(0) do |champion, index|
      puts "#{index}. #{champion.name}"
    end
    puts ""
    champions_selection(champions)
  end
  
  def champions_selection(champions)
    puts "Which champion would you like to know more about?"
    puts "Type the champion name to find out more!"
    puts ""
    puts "If you need to see the list again, type 'list'."
    puts "If you want to exit, type 'exit'."
      # binding.pry
    input = gets.strip.downcase

    if input == input.to_i > 0 && intput.to_i < champions.length
      champion = champions [input.to_i - 1]
      API.getChampDeets(champion)
      
    elsif input == 'list'
      # champion = Champions.find_by_name(name)
      champions_list(champions)
      
    elsif input == 'exit'
      goodbye
    else
      invalid_entry
      champions_selection(champions)
    end
  end
  
  def goodbye
    puts "GLHF!"
  end
  
  def invalid_entry
    puts ">>>>>>I don't understand. Please enter a valid response.<<<<<<"
    puts ""
  end
  
end