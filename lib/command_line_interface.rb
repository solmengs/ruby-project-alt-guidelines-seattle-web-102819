$points = 0
$game_id = 0
$players_id = 0
class CommandLineInterface


                            
    def player_id_num
        $players_id = gets.chomp.to_i
        # @current_user = player_ids
    if $players_id <= 1 && $players_id >= 20
        
        
        puts "Please enter a valid number between 1 and 18."
        player_id_num
    end 
    
end 


    def game_id_for_team
        $game_id = gets.chomp.to_i
        # @current_user = game_ids
        if $game_id <= 18 && $game_id >= 1

            puts "How many players are in that team?"
            blank_spacer(3) 
            player_id_num
            
        else
            puts "please pick a number between 1 to 18"
            game_id_for_team
        end
    end 

    def team_points
        puts "How many points does this team have?, please pick a number between 1 to 100"
        blank_spacer(3) 
        $points = gets.chomp.to_i
                #    @current_user = pointss
                #    binding.pry
            
                   if $points <= 100 && $points >= 1 
                        puts "how many games have they played, please pick a number between 1 to 18"
                        blank_spacer(3) 
                        game_id_for_team
                   else
                    puts "Please enter a valid number between 1 and 100."
                     team_points
                  end 
    end 

    
    @current_user = ""
    def blank_spacer(num)
        num.times do
            puts ""
        end
    end

    def welcome
        blank_spacer(56) 
                                              
                                                                                                                                  
                                                                                                                  
                                                                                                                  
                                                                                                                  
                                                                                                                  
                                                                                                                  
    puts "       ssssssssss      ooooooooooo       cccccccccccccccc    cccccccccccccccc    eeeeeeeeeeee    rrrrr   rrrrrrrrr   "
    puts "     ss::::::::::s   oo:::::::::::oo   cc:::::::::::::::c  cc:::::::::::::::c  ee::::::::::::ee  r::::rrr:::::::::r  "
    puts "   ss:::::::::::::s o:::::::::::::::o c:::::::::::::::::c c:::::::::::::::::c e::::::eeeee:::::eer:::::::::::::::::r "
    puts "   s::::::ssss:::::so:::::ooooo:::::oc:::::::cccccc:::::cc:::::::cccccc:::::ce::::::e     e:::::err::::::rrrrr::::::r "
    puts"    s:::::s  ssssss o::::o     o::::oc::::::c     cccccccc::::::c     ccccccce:::::::eeeee::::::e r:::::r     r:::::r "
    puts "     s::::::s      o::::o     o::::oc:::::c             c:::::c             e:::::::::::::::::e  r:::::r     rrrrrrr "
    puts "       s::::::s   o::::o     o::::oc:::::c             c:::::c             e::::::eeeeeeeeeee   r:::::r              "
    puts "   ssssss   s:::::s o::::o     o::::oc::::::c     cccccccc::::::c     ccccccce:::::::e            r:::::r            "
    puts"    s:::::ssss::::::so:::::ooooo:::::oc:::::::cccccc:::::cc:::::::cccccc:::::ce::::::::e           r:::::r            "
    puts "    s::::::::::::::s o:::::::::::::::o c:::::::::::::::::c c:::::::::::::::::c e::::::::eeeeeeee   r:::::r            "
    puts "      s:::::::::::ss   oo:::::::::::oo   cc:::::::::::::::c  cc:::::::::::::::c  ee:::::::::::::e   r:::::r           " 
    puts "        sssssssssss       ooooooooooo       cccccccccccccccc    cccccccccccccccc    eeeeeeeeeeeeee   rrrrrrr            "
                                                                                                                  
        blank_spacer(1) 
        puts "     ⚽️ ⚽️ ⚽️ ⚽️ ⚽️ ⚽️ ⚽️ ⚽️ ⚽️ ⚽️ ⚽️ ⚽️ ⚽️ ⚽️ ⚽️ ⚽️ ⚽️ ⚽️ ⚽️ ⚽️ ⚽️ ⚽️ ⚽️ ⚽️ ⚽️ ⚽️ ⚽️ ⚽️ ⚽️ ⚽️ ⚽️ ⚽️ ⚽️ ⚽️ ⚽️ ⚽️ ⚽️        "                                  
        blank_spacer(2) 
        puts "        welcome, press Inter to continue       "
        blank_spacer(30) 
        user_input = gets.chomp
        main_menu
        
    end
    
    
    def main_menu
        blank_spacer(10) 
        puts                 "   ##     ##    ###    #### ##    ##    ##     ## ######## ##    ## ##     ## "
        puts                 "   ###   ###   ## ##    ##  ###   ##    ###   ### ##       ###   ## ##     ## "
        puts                  "  #### ####  ##   ##   ##  ####  ##    #### #### ##       ####  ## ##     ## "
        puts                  " ## ### ## ##     ##  ##  ## ## ##    ## ### ## ######   ## ## ## ##     ## "
        puts                  " ##     ## #########  ##  ##  ####    ##     ## ##       ##  #### ##     ## "
        puts                  " ##     ## ##     ##  ##  ##   ###    ##     ## ##       ##   ### ##     ## "
        puts                 "  ##     ## ##     ## #### ##    ##    ##     ## ######## ##    ##  #######  "
        blank_spacer(2) 
        puts "1, Create an account"
        puts "*************************"
        puts "2, Join a soccer team "
        puts "*************************"
        puts "3, Find games near your area "
        puts "*************************"
        puts "4, Where all games are happening"
        puts "*************************"
        puts "5, Players average age"
        puts "*************************"
        puts "6, Delete your account"
        puts "*************************"
        puts "7, Update your account"
        puts "*************************"
        puts "8, Exit"
        puts "*************************"
        blank_spacer(2) 
        option
    end 
    
    def create_an_account
        blank_spacer(60) 
        puts "******************************************************************"
    #    user_input = gets.chomp
       blank_spacer(2) 
       puts "What is your name?"
        
       names = gets.chomp
       player_n = Player.all.select {|player| player.name == names }
    #    binding.pry
       if player_n[0] == nil
        blank_spacer(2) 
        
        p "What is your age"
        age = gets.chomp.to_i
        new_player = Player.create(name: names, age: age) 
        blank_spacer(6) 
        puts "Hello #{names}, you have created your account successfuly."
        puts "******************************************************************"
        blank_spacer(2) 
        # blank_spacer(60) 
        @current_user = new_player
        continue
       else 
        blank_spacer(2) 
        puts "You already have an account"
        puts "******************************************************************"
        blank_spacer(2) 
        puts "******************************************************************"
        continue
        blank_spacer(80) 
       end
     end 
    
    
    def join_a_soccer_team
       # blank_spacer(56)  
        puts "******************************************************************"
        puts "Please pick one of the following teams"
        blank_spacer(3) 
        puts ["Arsenal", "Chelsea", "liverpool", "Manchester City", "Manchester United"]
        puts "******************************************************************"
                            # blank_spacer(3)

        names = gets.chomp.to_s
        team = Player.all.count
                        
        team_name = Team.all.select {|team| team.name == names }
        
        if team_name[0] != nil
            if team <= 30
                # user_input = gets.chomp
                #  blank_spacer(2) 
                #  puts ["Arsenal", "Chelsea", "liverpool", "Manchester City", "Manchester United"]
                #  blank_spacer(3) 
                 puts "Pick a team name?"
                blank_spacer(3) 
                #binding.pry
                team_points
                #  name = gets.chomp.titleize
                 
                        # binding.pry
                    end 
                    
                    Team.create(name: names, point: $points, game_id: $game_id, player_id: $players_id)
                    blank_spacer(3) 
                    
                    puts "*************************************************"
                    puts "Congratulations, You have joined the team"
                    puts "*************************************************"
                    
                    
                    
              
        
                        
            else
                            #  puts "*************************"
                            #  puts "please pick one of the teams"
                            blank_spacer(60) 
                            puts "***********************************************************************"
                            #  puts ["Arsenal", "Chelsea", "liverpool", "Manchester City", "Manchester United"]
                            #  puts "*************************************************"
                            #  names = gets.chomp.to_s
                            #  puts "*************************"
                            puts "#{names} is not a team"
                            join_a_soccer_team
            end 
                        blank_spacer(2) 
                        continue
                        blank_spacer(30) 
    
  end # suspicious


    def game_near_you
        blank_spacer(56) 
        puts "******************************************************************"
        puts "Insert Location"
        locations = gets.chomp.capitalize
        database_report = Game.all.select { |g| g.location == locations }
        # .pluck("location", "attendee")
        # binding.pry
        if database_report[0] != nil 

            if database_report[0].location == locations
            blank_spacer(2) 
            puts "#{database_report.count} games happening in this location "
            blank_spacer(2) 
            p database_report
            end 
        else
           puts "No soccer game happening in this location"
       end
       puts "******************************************************************"
       blank_spacer(2) 
       continue
       blank_spacer(30) 
    end 

    def where_all_games_are_happening
        blank_spacer(56) 
        puts "******************************************************************"
        p  Game.all.map {|team| team.location}.uniq
        # t = Team.all.map {|team| team.game}
        # # locations = t.map {|f|  f["location"]}
        # binding.pry
  
      puts "******************************************************************"
     
      blank_spacer(4) 
      continue
      blank_spacer(30) 
    end 
    
    
    def players_average_age
        blank_spacer(56) 
        puts "******************************************************************"
        players_num = Player.all.map {|player| player.age}
    #    player_average_age = players_num.sum

        average_age =  players_num.sum / players_num.count
        puts "************************************************"
        puts "The average age of all players is #{average_age}"
        puts "************************************************"
        blank_spacer(4) 
        continue
        blank_spacer(30) 
    end 
   
     def delete_your_account
        
        # blank_spacer(56) 
        puts "What is your username?"
        blank_spacer(2) 
        names = gets.chomp
        player_names = Player.all.select {|data| data.name == names}
        # binding.pry
        #check if player_names[0] exists
        #if it does exist execute the next block of code
        if player_names[0] != nil        
            if  player_names[0].name == names
                Player.where(name: names).destroy_all
                blank_spacer(4) 
                puts "************************************************"
                puts "You have deleted your account"
                puts "************************************************"
                blank_spacer(4) 
                continue
                blank_spacer(30) 

            end   
        else
            blank_spacer(5) 
            puts "************************************************"
            puts "You don't have an account, would you like to create a new one?"
            puts "************************************************"
            blank_spacer(6) 
            yes_no
            blank_spacer(6) 
        
        end 
        #if player_names[0] == nil then repeat the function where someone enters a name
        # blank_spacer(30) 
     end 
     def update_your_account
        blank_spacer(56) 
            puts "What is your username?"
            blank_spacer(2) 
            names = gets.chomp
           
            update_player_names = Player.all.select {|data| data.name == names}
            # binding.pry
        if  update_player_names[0] != nil
        #    binding.pry
           if update_player_names[0].name == names
            playe = Player.where(name: names)

            blank_spacer(2)
            puts "************************************************"
            puts "Write your new username"
            blank_spacer(2)


            new_name = gets.chomp
            
            playe[0].update(name: new_name)
            blank_spacer(2)
            puts "************************************************"
            puts " You account has been updated to #{new_name}"
            puts "************************************************"
            blank_spacer(2)
            continue
            blank_spacer(2)
           end 

        else
            puts "************************************************"
          puts   "You do not have an account, would you like to create a new one?"
          puts "************************************************"
          blank_spacer(2)
          yes_no
          blank_spacer(2)
        #   continue
          blank_spacer(30) 
        
    end

     end 
     def exit
        blank_spacer(56) 
        welcome
        blank_spacer(30) 
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
        puts " What would you like to do next ?   Type y to main menu and n to exit"
        blank_spacer(2)
        puts "************************************************"
            blank_spacer(1)
        user = gets.chomp.titleize
        blank_spacer(1)
  
        blank_spacer(2)
        if user == "Y"
            blank_spacer(60) 
            main_menu
        elsif user == "N"
            blank_spacer(60) 
        welcome
        else
            blank_spacer(2)
            puts "************************************************"
            
            blank_spacer(1)
            puts "Please pick y or n"
            blank_spacer(2)
            continue
        
            puts "************************************************"
        end 
    end 
    def yes_no
        puts "Type yes to create an account and no to go to main menu"
        user = gets.chomp
        if user == "yes"
            create_an_account
        elsif user == "no"
            blank_spacer(2) 
            option
        else 
            puts "************************************************"
            blank_spacer(2)
            puts "Please"
            # puts "************************************************"
            # blank_spacer(2)
            yes_no
            blank_spacer(2)
        end 
    end 

   def exit
    welcome
   end
  
  
    def option
        user_input = gets.chomp
        blank_spacer(60) 
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
            where_all_games_are_happening
                break
        elsif user_input == "5"
            players_average_age
            break
        elsif user_input == "6"
             delete_your_account
             break
        elsif user_input == "7"
            update_your_account
            break
        elsif user_input == "8"
            exit
            break
        else 
            # blank_spacer(60) 
            puts "************************************************"
            puts "Please pick 1 to 8"
           puts "************************************************"
            main_menu
            break
        end 
    end 

  
 
end 
end 
