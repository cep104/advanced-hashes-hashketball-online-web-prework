# Write your code below game_hash
require 'pry'
def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end
# def get_players
#   players = game_hash.keys.map do |place|#goes through the hash keys and maps through them
#     game_hash[place][:players] #returns all players 
#   end
#   players.flatten #flatten to single array takes both and turns it into one
# end

# def num_points_scored(name)
#  found_player = get_players.find do |player| #goes through array of players
#   player[:player_name] == name #finds player where name equals player_name
#  end
#  found_player[:points] #returns the players points
# end

def num_points_scored(name)
  game_hash.each do |place, attribute_keys| #place is home or away attribute keys team name, colors, players
      attribute_keys[:players].each do |player| #itterate over all the players
        #ask how would I accesss the players hash? use pry!
        #its an array of players so you can use array methods! 
        #check to see what players[0] is.(so they can see attributes)
        
      return  player[:points] if player[:player_name] == name 
      # player[:player_name] == player_name another solution
      #return the players points if the players name = the argument given
      #checking to see if we are looking at the correct player
      #if you use .each you need to explicit return because it returns original array
      end
  end
end

def shoe_size(name)
  game_hash.each do |place, attribute_keys| #place is home or away attribute keys team name, colors, players
    attribute_keys[:players].each do |player| #itterate over all the players
      return player[:shoe] if player[:player_name] == name
    end
  end
end

def team_colors(team)
  game_hash.each do |place, attribute_keys| 
  return  attribute_keys[:colors] if attribute_keys[:team_name] == team
  end
end

def team_names
  game_hash.map do |place, attribute_keys| #use map to return new array
    attribute_keys[:team_name]
  end
end

def player_numbers(team)
  numbers = []
  game_hash.each do |place, attribute_keys| #place is home or away attribute keys team name, colors, players
    
    if attribute_keys[:team_name] == team
      attribute_keys[:players].map do |player|
       numbers << player[:number]
      end
    end
  end 
  numbers
end

def player_stats(name)
  game_hash.each do |place, attribute_keys|
    attribute_keys[:players].map do |player|
     return player if player[:player_name] == name
    end
  end
end

def big_shoe_rebounds
biggest_shoe = 0
number_rebounds = 0
game_hash.each do |place, attribute_keys|
  attribute_keys[:players].each do |player|
    if player[:shoe] > biggest_shoe 
      #looking to see if the players shoe is bigger than the current itterations biggest shoe
      #every time it itterates through its comparing each shoe to see which is the biggest one

      biggest_shoe = player[:shoe]
      number_rebounds = player[:rebounds]
   #binding.pry put here look at what biggest_shoe is returning each itteration
    end
  end
end
number_rebounds #return the number of rebounds
end
# Write code here
