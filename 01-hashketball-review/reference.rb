require 'pry'

def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: {
        "Alan Anderson" => {
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        "Reggie Evans" => {
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        "Brook Lopez" => {
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        "Mason Plumlee" => {
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 12,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        "Jason Terry" => {
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      }
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: {
        "Jeff Adrien" => {
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        "Bismak Biyombo" => {
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 7,
          blocks: 15,
          slam_dunks: 10
        },
        "DeSagna Diop" => {
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        "Ben Gordon" => {
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        "Brendan Haywood" => {
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 22,
          blocks: 5,
          slam_dunks: 12
        }
      }
    }
  }
end


# def num_points_scored(player_name)
#   # get a list of all the players
#   # find the player whose name matches the argument 'player_name'
#   # return that player's points
# end




# # EXERCISE:
# # Define a method called get_names that takes an array of instructors
# # and returns just their names.
# instructors = [
#   {name: 'Alex', hometown: 'upstate ny', mood: 'excited'},
#   {name: 'rachel', hometown: 'maine'},
#   {name: 'maxwell', hometwon: 'brookyln'}
# ]
#
# def get_names(instructors)
#
# end




# def get_players
#
# end



# # EXERCISE
# # What do the following return?
#
# arr = (1..100).to_a
#
# arr.map do |num|
#   num.even?
# end
#
# arr.select do |num|
#   7
# end






# MY EXAMPLE STUFF
# require 'pry'
#
# def game_hash
#   {
#     home: {
#       team_name: "Brooklyn Nets",
#       colors: ["Black", "White"],
#       players: [
#         {
#           player_name: "Alan Anderson",
#           number: 0,
#           shoe: 16,
#           points: 22,
#           rebounds: 12,
#           assists: 12,
#           steals: 3,
#           blocks: 1,
#           slam_dunks: 1
#         }, {
#           player_name: "Reggie Evans",
#           number: 30,
#           shoe: 14,
#           points: 12,
#           rebounds: 12,
#           assists: 12,
#           steals: 12,
#           blocks: 12,
#           slam_dunks: 7
#         }, {
#           player_name: "Brook Lopez",
#           number: 11,
#           shoe: 17,
#           points: 17,
#           rebounds: 19,
#           assists: 10,
#           steals: 3,
#           blocks: 1,
#           slam_dunks: 15
#         }, {
#           player_name: "Mason Plumlee",
#           number: 1,
#           shoe: 19,
#           points: 26,
#           rebounds: 12,
#           assists: 6,
#           steals: 3,
#           blocks: 8,
#           slam_dunks: 5
#         }, {
#           player_name: "Jason Terry",
#           number: 31,
#           shoe: 15,
#           points: 19,
#           rebounds: 2,
#           assists: 2,
#           steals: 4,
#           blocks: 11,
#           slam_dunks: 1
#         }
#       ]
#     },
#     away: {
#       team_name: "Charlotte Hornets",
#       colors: ["Turquoise", "Purple"],
#       players: [
#         {
#           player_name: "Jeff Adrien",
#           number: 4,
#           shoe: 18,
#           points: 10,
#           rebounds: 1,
#           assists: 1,
#           steals: 2,
#           blocks: 7,
#           slam_dunks: 2
#         }, {
#           player_name: "Bismak Biyombo",
#           number: 0,
#           shoe: 16,
#           points: 12,
#           rebounds: 4,
#           assists: 7,
#           steals: 7,
#           blocks: 15,
#           slam_dunks: 10
#         }, {
#           player_name: "DeSagna Diop",
#           number: 2,
#           shoe: 14,
#           points: 24,
#           rebounds: 12,
#           assists: 12,
#           steals: 4,
#           blocks: 5,
#           slam_dunks: 5
#         }, {
#           player_name: "Ben Gordon",
#           number: 8,
#           shoe: 15,
#           points: 33,
#           rebounds: 3,
#           assists: 2,
#           steals: 1,
#           blocks: 1,
#           slam_dunks: 0
#         }, {
#           player_name: "Brendan Haywood",
#           number: 33,
#           shoe: 15,
#           points: 6,
#           rebounds: 12,
#           assists: 12,
#           steals: 22,
#           blocks: 5,
#           slam_dunks: 12
#         }
#       ]
#     }
#   }
# end
#
# def get_players
#   game_hash.values.map do |players|
#     players[:players]
#   end.flatten
# end
#
# def find_players(players, player_name)
#
#   found_player = players.find do |player|
#     player[:player_name] == player_name
#   end
# end
#
# def num_points_scored (player)
#   #get a list of all the get_players
#   players = get_players
#   #find the player from the list of players
#   find_players(players, player)[:points]
#   #return the players points
# end
#
# def shoe_size (player)
#   #get a list of all the get_players
#   players = get_players
#   #find the player from the list of players
#   find_players(players, player)[:shoe]
#   #return the players points
# end
#
# def get_names (instructors)
#  #return a list of just the names
# end



###TAKE 3 REFERENCE
# def get_players
#   players_list = game_hash.values.map do |team_info|
#     team_info[:players]
#   end.flatten
#   players_list
# end
#
# def find_player(players, player)
#   players.find do |play|
#     play[:player_name] == player
#   end
# end
#
# def num_points_scored(player)
#   #go through all the players
#   player_list = get_players
#   #find the player name we need
#   player = find_player(player_list, player)[:points]
#   #return thier points
# end
#
# def shoe_size(player)
#   player_list = get_players
#   player = find_player(player_list, player)[:shoe]
# end
