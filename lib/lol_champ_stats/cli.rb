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
    puts ""
    puts "Choose a champion:"
    puts ""
    champion.each.with_index(0) do |champion, index|
      puts "#{i}. #{champion.name}"
    end
    puts ""
    puts "Which champion would you like to know more about?"
  end
  
  def goodbye
    puts "GLHF!"
  end
  
  def invalid_entry
    puts "I don't understand. Please enter a valid response."
    menu
  end
  
end