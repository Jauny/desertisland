# Rob and Son Cruise Away

def prompt 
  print "> "
end
  
def start()
  @answers = []
  @met_why = false
  puts "Please, choose a name."
  prompt; @player = gets.chomp

  puts "#{@player} and his son are on a cruise in the caribean."
  puts "The cruise gets hit by an iceberg traveling from USSR for the summer."
  puts "Everybody dies in the crash, mostly from a cold."
  puts "But when you thought it was your turn to give your life away, you wake up on an island."
  puts "Nobody around, but a giant turtle."
  puts "You look around, you see a Hill on you left, a jungle behind and the beach continuing on the right."
  puts "What do you do?\n"
  puts "\t1) go see the turtle"
  puts "\t2) go to the hill to have a better view of the island"
  puts "\t3) go into the jungle"
  puts "\t4) continue on the beach"

  while true
  prompt; next_move = gets.chomp

  if next_move.include? "1"
    @answers.push("1")
    turtle()
  elsif next_move.include? "2"
    @answers.push("2")
    hill()
  elsif next_move.include? "3"
    @answers.push("3")
    jungle()
  elsif next_move.include? "4"
    @answers.push("4")
    shark_beach()
  else
    puts "Please insert an option number (1, 2, 3 or 4)."
  end
  end
end

def dead(why)
  puts "#{why}, Game Over!"
  puts "Your answers were #{@answers}."
  puts "Do you want to try again? (yes/no)"

  while true
  prompt; next_move = gets.chomp

    if next_move.include? "yes"
      start()
    elsif next_move.include? "no"
      Process.exit()
    else
      puts "Please, enter [yes] or [no]."
    end
  end
end

def win(why)
  puts "Congratulation, #{why}"
  puts "Your answers were #{@answers}."
  puts "Do you want to play again? (yes/no)"

  while true
  prompt; next_move = gets.chomp

    if next_move.include? "yes"
      start()
    elsif next_move.include? "no"
      Process.exit()
    else
      puts "Please, enter [yes] or [no]."
    end
  end
end

def turtle()
  puts "You walk to the turle..."
  puts "Turtle: \"Hello there!\""
  puts "#{@player}: \"Can you help me please?\""
  puts "Turtle: \"I could, but no, I don't want to help you...\""
  puts "What do you do?\n"
  puts "\t 1) go to the hill"
  puts "\t 2) go into the jungle"
  puts "\t 3) continue on the beach"

  while true
  prompt; next_move = gets.chomp

  if next_move.include? "1"
    @answers.push("1")
    hill()
  elsif next_move.include? "2"
    @answers.push("2")
    jungle()
  elsif next_move.include? "3"
    @answers.push("3")
    shark_beach()
  else
    puts "Please insert an option number (1, 2 or 3)."
  end
  end
end

def hill()
  puts "You get to the hill, and can see what the island looks like;"
  puts "On the other side of the hill, a strange forest."
  puts "You see that the jungle is not too big, and there is a volcano behind"
  puts "The beach you come from continues pretty far, seems to be another island..."
  puts "What do you do?"
  puts "\t 1) go the the scary forest."
  puts "\t 2) go to the jungle, maybe head to the volcano."
  puts "\t 3) return to the beach."

  while true
  prompt; next_move = gets.chomp

  if next_move.include? "1"
    @answers.push("1")
    forest()
  elsif next_move.include? "2"
    @answers.push("2")
    jungle()
  elsif next_move.include? "3"
    @answers.push("3")
    beach()
  else
    puts "Please insert an option number (1, 2 or 3)."
  end
  end
end

def forest()
  puts "You get to the forest, and hear a noise..."
  puts "What do you do?"
  puts "\t 1) Go see what it is."
  puts "\t 2) Run back to the beach, WTF WAS THAT?"

  while true
  prompt; next_move = gets.chomp

    if next_move.include? "1"
      @answers.push("1")
      dead("An unknown monster jumps on you and eats you")
    elsif next_move.include? "2"
      @answers.push("2")
      beach()
    else
      puts "Please insert an option number (1 or 2)."
    end
  end
end

def beach()
  puts "You are back on the beach."
  puts "What do you do?"
  puts "\t 1) go see the turtle."
  puts "\t 2) go to the hill."
  puts "\t 3) go into the jungle."
  puts "\t 4) continue on the beach."

  while true
  prompt; next_move = gets.chomp

    if next_move.include? "1"
      @answers.push("1")
      turtle()
    elsif next_move.include? "2"
      @answers.push("2")
      hill()
    elsif next_move.include? "3"
      @answers.push("3")
      jungle()
    elsif next_move.include? "4"
      @answers.push("4")
      shark_beach()
    else
      puts "Please insert an option number (1, 2, 3, or 4)."
    end
  end
end

def shark_beach()
  puts "You are walking along the beach..."
  puts "You see not so far away another island."
  puts "What do you do?"
  puts "\t 1) Swim to the other island."
  puts "\t 2) Get into the jungle."
  puts "\t 3) Get back to the other beach."

  while true
  prompt; next_move = gets.chomp

    if next_move.include? "1"
      @answers.push("1")
      dead("The sea is full of shark, you get eaten")
    elsif next_move.include? "2"
      @answers.push("2")
      jungle()
    elsif next_move.include? "3"
      @answers.push("3")
      beach()
    else
      puts "Please, insert an option number (1, 2 or 3)."
    end
  end
end

def jungle()
  puts "You are in the jungle."
  puts "It is scary, you don't want to stay too long, where do you head to?"
  puts "\t 1) The volcano."
  puts "\t 2) Take the chance to get a little further the volcano."
  puts "\t 3) Better follow the coast and not get too far into the jungle."
  puts "\t 4) You go to the forest."

  while true
  prompt; next_move = gets.chomp

    if next_move.include? "1"
      @answers.push("1")
      volcano()
    elsif next_move.include? "2"
      @answers.push("2")
      why()
    elsif next_move.include? "3"
      @answers.push("3")
      third_beach()
    elsif next_move.include? "4"
      @answers.push("4")
      forest()
    else
      puts "Please insert an option number (1, 2 or 3)."
    end
  end
end

def volcano()
  puts "You are at the Volcano."
  puts "It seems exctinct, maybe you could hike to the top."
  puts "What do yo do?"
  puts "\t 1) Climb at the top."
  puts "\t 2) Get back to the jungle."
  puts "\t 3) Go around the volcano."

  while true
  prompt; next_move = gets.chomp

    if next_move.include? "1"
      @answers.push("1")
      win("at the top of the volcano, a plane passes and sees you. You win!")
    elsif next_move.include? "2"
      @answers.push("2")
      jungle()
    elsif next_move.include? "3"
      @answers.push("3")
      why()
    else
      puts "Please insert an option number (1, 2 or 3)."
    end
  end
end

def why()
  puts "You find a cute little house, and see a strange-acting guy, with two foxes."
  puts "You go introduce yourself."
  puts "#{@player}: \"Hi, I'm #{@player}. My boat crashed and I woke up here...\""
  puts "#{@player}: \"Can you help me?\""
  puts "Why: \"Hi, I am Why, the lucky stiff, and those are my two dumb foxes!\""
  puts "Foxes: \"CHUNKY BACON! CHUNKY BACON!\""
  puts "Why: \"If you want to leave this island, you should go this way...\""
  puts "#{@player}: \"Thank you sir, have fun alone in here!\""
  puts "Where are you going? Are you going to listen to that crazy dude?!"
  puts "\t 1) Follow Why\'s advice."
  puts "\t 2) Head back to the jungle."
  puts "\t 3) Go back to the volcano."
  @met_why = true
  
  while true
  prompt; next_move = gets.chomp

    if next_move.include? "1"
      @answers.push("1")
      third_beach()
    elsif next_move.include? "2"
      @answers.push("2")
      jungle()
    elsif next_move.include? "3"
      @answers.push("3")
      volcano()
    else
      puts "Please insert an option number (1, 2 or 3)."
    end
  end
end

def third_beach()
  puts "You get to a beach."
  puts "No reason, but you feel like a boat might pass by soon..."
  puts "You could wait, but you start feeling some hunger and thurst... no time to loose..."
    if @met_why == true
    puts "Nothing really interesting around."
    elsif @met_why == false
    puts "There is a path the other side of the beach."
    end
  puts "What do you do?"
  puts "\t 1) Wait for a boat."
  puts "\t 2) Get back to the jungle."
    if @met_why == true
    puts "\t 3) Get back to Why for help."
    elsif @met_why == false
    puts "\t 3) Get to the path to see where it goes."
    end

  while true
  prompt; next_move = gets.chomp

    if next_move.include? "1"
      @answers.push("1")
      win("after a few hours, you see a boat; Scream, jump, make signs, and the boat sees you. You win!")
    elsif next_move.include? "2"
      @answers.push("2")
      jungle()
    elsif next_move.include? "3" and @met_why
      @answers.push("3")
      dead("Why was in fact completely insane, and really wanted to be alone; He kills you and give you as food to his dumb foxes")
    elsif next_move.include? "3" and not @met_why
      @answers.push("3")
      why()
    else
      puts "Please insert an option number (1, 2 or 3)."
    end
  end
end
  


start()
