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
      puts "list"
    elsif input == "exit"
      puts "See ya later!"
    else 
      invalid_entry
    end
  end
  
  def invalid_entry
    puts "I don't understand. Here's the menu again."
    menu
  end
  
end