class LolChampStats::CLI
  
  def call
    puts "Welcome fellow gamer!"
    puts ""
    puts "Let's find out about the League of Legends champions, shall we?"
    puts ""
    puts "We can find out more about the champions by typing in 'champions'"
    puts ""
    puts "If you want to exit, just type in 'exit'"
    menu
  end
  
  def menu
    input = gets.strip.downcase
    
    if input == "champions"
      champions_list(Champions.all)
      menu
    elsif input == "exit"
      goodbye
    else 
      invalid_entry
    end
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
    input = gets.strip.downcase
    
    if input == "#{champion.name}"
      API.get_data(champions)
    else
      invalid_entry
    end
  end
  
  def goodbye
    puts "GLHF!"
  end
  
  def invalid_entry
    puts "I don't understand. Please enter a valid response."
    menu
  end
  
end