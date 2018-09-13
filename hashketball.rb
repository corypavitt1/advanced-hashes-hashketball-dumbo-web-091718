#example of a hash  grades = { "Jane Doe" => 10, "Jim Doe" => 6 }

require "pry"
def game_hash
  team_hash = Hash.new
  team_hash = {
              :home => {
                      :team_name => "Brooklyn Nets" ,
                      :colors => ["Black", "White"] ,
                      :players => {"Alan Anderson" =>
                        {:number => 0,
                         :shoe => 16,
                         :points => 22,
                         :rebounds => 12,
                         :assists => 12,
                         :steals => 3,
                         :blocks => 1,
                         :slam_dunks => 1
                       },
                       "Reggie Evans" =>
                       {:number => 30,
                        :shoe => 14,
                        :points => 12,
                        :rebounds => 12,
                        :assists => 12,
                        :steals => 12,
                        :blocks => 12,
                        :slam_dunks => 7
                      },
                                   "Brook Lopez" =>
                                   {:number => 11,
                                    :shoe => 17,
                                    :points => 17,
                                    :rebounds => 19,
                                    :assists =>10,
                                    :steals => 3,
                                    :blocks => 1,
                                    :slam_dunks => 15
                                  },
                                  "Mason Plumlee" =>
                                  {:number => 1,
                                   :shoe => 19,
                                   :points => 26,
                                   :rebounds => 12,
                                   :assists => 6,
                                   :steals => 3,
                                   :blocks => 8,
                                   :slam_dunks => 5
                                 },
                                 "Jason Terry" =>
                                 {:number => 31,
                                  :shoe => 15,
                                  :points => 19,
                                  :rebounds => 2,
                                  :assists => 2,
                                  :steals => 4,
                                  :blocks => 11,
                                  :slam_dunks => 1
                                },

                                  }
                    },
                    :away => {
                            :team_name => "Charlotte Hornets" ,
                            :colors => ["Turquoise", "Purple"] ,
                            :players => {"Jeff Adrien" =>
                                                        {:number => 4,
                                                         :shoe => 18,
                                                         :points => 10,
                                                         :rebounds => 1,
                                                         :assists => 1,
                                                         :steals => 2,
                                                         :blocks => 7,
                                                         :slam_dunks => 2
                                                       },
                                          "Bismak Biyombo" =>
                                          {:number => 0,
                                           :shoe => 16,
                                           :points => 12,
                                           :rebounds => 4,
                                           :assists => 7,
                                           :steals => 7,
                                           :blocks => 15,
                                           :slam_dunks => 10
                                         },
                                         "DeSagna Diop" =>
                                         {:number => 2,
                                          :shoe => 14,
                                          :points => 24,
                                          :rebounds => 12,
                                          :assists =>12,
                                          :steals => 4,
                                          :blocks => 5,
                                          :slam_dunks => 5
                                        },
                                        "Ben Gordon" =>
                                        {:number => 8,
                                         :shoe => 15,
                                         :points => 33,
                                         :rebounds => 3,
                                         :assists => 2,
                                         :steals => 1,
                                         :blocks => 1,
                                         :slam_dunks => 0
                                       },
                                       "Brendan Haywood" =>
                                       {:number => 33,
                                        :shoe => 15,
                                        :points => 6,
                                        :rebounds => 12,
                                        :assists => 12,
                                        :steals => 22,
                                        :blocks => 5,
                                        :slam_dunks => 12
                                      },

                                        }
                          }
              }
team_hash

end

def num_points_scored(player)

game_hash.each do |side, values|
  values[:players].collect do |ke,va|
    if ke == player
      return va[:points]
    end
  end
end


# game_hash[:home][:players].collect do |ke,va|
# if ke == player
# return va[:points]
#
# end
#
# end
#
#
# game_hash[:away][:players].collect do |k,v|
# if k == player
# return v[:points]
# end
#
# end
end



def shoe_size(player)
game_hash.each do |side, value|
  value[:players].collect do |names,stats|
    if names == player
    return stats[:shoe]
end
end
end
end
  # game_hash[:home][:players].collect do |ke,va|
  # if ke == player
  # return va[:shoe]
  # end
  # end
  #
  #
  # game_hash[:away][:players].collect do |k,v|
  # if k == player
  # return v[:shoe]
  # end
  #
  # end
  # end


  def team_colors(team)
  game_hash.each do |side, value|
  if value[:team_name] == team
  return value[:colors]
  end
  end
  end
#   def team_colors(team)
# game_hash[:home].each do |ke,va|
#   if va == team
# return game_hash[:home][:colors]
#   end
#   end
#
#
#   game_hash[:away].each do |k,v|
#   if v == team
#
#   end
#   return game_hash[:away][:colors]
#   end
#   end



  def team_names
    new_array = []
    game_hash.each do |k,v|
    new_array.push(v[:team_name])
    end
new_array
end



team_colors("Charlotte Hornets")


def player_numbers(team_named)
jersey_numbers = []

game_hash.each do |side, value|
if value[:team_name] == team_named
value[:players].each do |names, stats|
jersey_numbers.push(stats[:number])

end
return jersey_numbers
end
end
end
player_numbers("Charlotte Hornets")
#    def player_numbers(team_name)
#     new_array = []
#      game_hash[:home].each do |ke,va|
#      if va == team_name
#      puts va
#      game_hash[:home][:players].collect do |ke,va|
#       new_array.push (va[:number])
#
#      end
#      return new_array
#      end
#      end
#      game_hash[:away].each do |ke,va|
#      if va == team_name
#      puts va
#      game_hash[:away][:players].collect do |ke,va|
#       new_array.push (va[:number])
#
#      end
#      return new_array
#      end
#      end
# end



def player_stats(player_name)
  game_hash.each do |side, value|
  value[:players].each do |name, stats|

  if name == player_name
  return stats
  end

  end
  end
end
# def player_stats(name)
#   game_hash[:home][:players].collect do |ke,va|
#   if ke == name
#   return va
#   end
#
#   end
#   game_hash[:away][:players].collect do |k,v|
#   if k == name
#   return v
#   end
#
#   end
# end





def big_shoe_rebounds

new_array = []
size = 0
rebounds = 0

  game_hash.each do |side, value|
  value[:players].each do |name, stats|
if stats[:shoe] > size
  size = stats[:shoe]
  rebounds = stats[:rebounds]
  new_array[0] = name
  new_array[1] = stats[:shoe]
  new_array[2] = stats[:rebounds]

end

end
end
 return new_array.last


end
# def big_shoe_rebounds
#      new_array = []
#      size = 0
#      rebounds = 0
#
#    game_hash[:home][:players].collect do |k,v|
#
#   if v[:shoe] > size
#   size = v[:shoe]
#   rebounds = v[:rebounds]
#   new_array[0] = k
#   new_array[1] = v[:shoe]
#   new_array[2] = v[:rebounds]
#
#
#
#   return new_array.last
# else
#   game_hash[:away][:players].collect do |k,v|
#
#   if v[:shoes] > size
#   size = v[:shoe]
#   rebounds = v[:rebounds]
#   new_array[0] = k
#   new_array[1] = v[:shoe]
#   new_array[2] = v[:rebounds]
#
#   end
#
#   end
#
#   puts new_array.last
#   end
#   end
#   end
