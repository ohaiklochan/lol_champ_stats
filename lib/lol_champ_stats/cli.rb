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
      champions_list
      menu
    elsif input == "exit"
      goodbye
    else 
      invalid_entry
    end
  end
  
  def champions_list
    puts "1. champ 1"
    puts "2. champ 2"
    puts "3. champ 3"
  end
  
  def goodbye
    puts "GLHF!"
  end
  
  def invalid_entry
    puts "I don't understand. Here's the menu again."
    menu
  end
  
end