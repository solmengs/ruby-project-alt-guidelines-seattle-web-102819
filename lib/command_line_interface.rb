class CommandLineInterface


    def blank_spacer(num)
        num.times do
            puts ""
        end
    end

    def welcome
        blank_spacer(1)  
                                              
        puts "      ___    ___     ___    ___    ___   _ __            "
        puts "     / __|  / _ \\   / __|  / __|  / _ \\ | '__|            "
        puts "     \\__ \\ | (_) | | (__  | (__  |  __/ | |                "
        puts "     |___/  \\___/   \\___|  \\___|  \\___| |_|                " 
        blank_spacer(1) 
        puts "     ⚽️ ⚽️ ⚽️ ⚽️ ⚽️ ⚽️ ⚽️ ⚽️ ⚽️ ⚽️ ⚽️ ⚽️ ⚽️ ⚽️ ⚽️ ⚽️ ⚽️ ⚽️              "                                  
        
        puts "        welcome, press Inter to continue       "
        blank_spacer(6) 
        user_input = gets.chomp
        
    end
    
    
    def main_manu
        puts "1, Create an account"
        puts "*************************"
        puts "2, Join a soccer team "
        puts "*************************"
        puts "3, Find games near your area "
        puts "*************************"
        puts "4, Matches"
        puts "*************************"
        puts "5, players_average_age"
        puts "*************************"
        puts "6, Delete your account"
        puts "*************************"
        puts "7, update your account"
        puts "*************************"
        puts "8, exit"
        puts "*************************"
        blank_spacer(4) 
        option
    end 
    
    def create_an_account
        blank_spacer(4) 
        puts "******************************************************************"
       puts "Press Inter to create an account"
       user_input = gets.chomp
       blank_spacer(2) 
       puts "What is your name?"
        
       name = gets.chomp.titleize
       p "what is your age"
       age = gets.chomp.to_i
   
       Player.create(name: name, age: age) 
       puts "Hello #{name}, you have created your account successfuly."
       puts "******************************************************************"
       blank_spacer(2) 
       continue
     end 
    
    
     def join_a_soccer_team
        blank_spacer(4) 
        puts "******************************************************************"
        # puts "pick a team"
        puts ["Arsenal", "Chelsea", "liverpool", "Manchister City", "Manchister United"]
       team = Player.all.count
    #    binding.pry
       if team >= 30
         # user_input = gets.chomp
         blank_spacer(2) 
        #  puts ["Arsenal", "Chelsea", "liverpool", "Manchister City", "Manchister United"]
        #  blank_spacer(1) 
         puts "pick a team name?"
         name = gets.chomp.titleize
         puts "How many points does this team have?"
         point = gets.chomp.to_i
         puts "how many games have they played"
         game_id = gets.chomp.to_i
         puts "How many players are in that team?"
         players = gets.chomp
         Team.create(name: name, point: point, game_id: game_id, player_id: players)
         puts "*************************************************"
         puts "congratulation, You have join the team   "
         puts "*************************************************"
     else
         puts "*************************"
         puts "This team is full"
         puts "*************************"
      end 
      blank_spacer(2) 
      continue
  end


    def game_near_you
        blank_spacer(4) 
        puts "******************************************************************"
        puts "Insert Location"
        locations = gets.chomp
        database_report = Game.all.select { |g| g.location == locations }
        # .pluck("location", "attendee")
        if database_report != nil 
            blank_spacer(2) 
            puts "There is #{database_report.count} games happing in this location "
            blank_spacer(2) 
            p database_report
        else
           puts "no soccer game happing in this location"
       end
       puts "******************************************************************"
       blank_spacer(2) 
       continue
    end 

    def matches
        blank_spacer(4) 
        puts "******************************************************************"
      p Team.all.map {|team| team.game}.to_a
      puts "******************************************************************"
      blank_spacer(4) 
      continue
    end 
    
    
    def players_average_age
        blank_spacer(4) 
        puts "******************************************************************"
        players_num = Player.all.map {|player| player.age}
    #    player_average_age = players_num.sum

        average_age =  players_num.sum / players_num.count
        puts "************************************************"
        puts "The average age of all players is #{average_age}"
        puts "************************************************"
        blank_spacer(4) 
        continue
    end 










      #       def players
#         Team.all.map {|team| team.player_id == self}
#       end 


   
   
#     # def find_games_near_you
        
#     #     puts "search"
#     #     name = gets.chomp
        
#     #     team_name = Team.find_by(name: name)
#     #     team_name
#     # end
    
    

#     def all_games 
#         puts "select all games"
#        user = SoccerGame.all
#         puts user
#     end 

#     def update_team_name
    
#       puts "select team "
#       name = gets.chomp
#       user = Team.find_by(name: name)
      
#       puts "#{user}, update it to"
#       name = gets.chomp
#       Team.update(name: name)
#     end 
    

#     def cancel_account 
#        puts "Inter account name to delete "
#        name = gets.chomp
#        user = Team.find_by(name: name)
#        user.delete
#        puts " your account have been canceled successfully "
#     end 
    
    def continue
        puts " would you like to continue ?   Type yes to continue and no to exit"
        user = gets.chomp
        if user == "Yes"
            main_manu
        else
        welcome
        end 
    end 
   def exit
    welcome
   end
  
  
    def option
    user_input = gets.chomp
    while user_input != "exit" do 
        if user_input == "1"
            create_an_account
            break
        elsif user_input == "2"
            join_a_soccer_team
            break
        elsif user_input == "3"
            game_near_you
            break
        elsif user_input == "4"
                matches
                break
        elsif user_input == "5"
            players_average_age
            break
        elsif user_input == "6"
             delete_your_account
             break
        elsif user_input == " 7"
            update_your_account
            break
        elsif user_input == "8"
            exit
            break
        else 
            puts "an aveliable command"
        end 
    end 

  end 


end