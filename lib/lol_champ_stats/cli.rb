class LolChampStats::CLI
  
  def call
    puts "Welcome fellow gamer!"
    puts ""
    puts "Let's find out about the League of Legends champions, shall we?"
    puts ""
    puts "We can find out more about the champions by typing in 'champions'."
    puts ""
    puts "If you want to exit, type 'exit'."
    API.get_data
    menu
  end
  
  def menu
    input = gets.strip.downcase
    
    if input == "champions"
      champions_list
      menu
    elsif input == "exit"
      goodbye
    else
      invalid_entry
      menu
    end
  end
  
  def champions_list
    puts ""
    puts "Choose a champion:"
    puts ""
    Champions.all.each.with_index(0) do |champion, index|
      puts "#{index}. #{champion.name}"
    end
    puts ""
    puts "Which champion would you like to know more about?"
    puts "Type the champion name to find out more!"
    puts ""
    input = gets.strip.downcase
    
    champions_selection(input)
  end
  
  def champions_selection(champions)
    champ = Champions.find_by_name(champions)
    champ.each do |champion|
      puts ""
      puts "Name: #{champion.name}"
      puts ""
      puts "Title: #{champion.title}"
      puts ""
      puts "Tags: #{champion.tags}"
      puts ""
      puts "Description: #{champion.description}"
      puts ""
      puts "Stats: #{champion.stats}"
      puts ""
      puts ""
      puts "Did you want to see another champion?"
      puts "Type 'champions' to see the list again."
      puts "Type 'exit' to exit the program."
    end
    menu
  end

  def goodbye
    puts ""
    puts "GLHF!"
  end
  
  def invalid_entry
    puts ""
    puts ">>>>>>I don't understand. Please enter a valid response.<<<<<<"
  end
  
end