# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

# Examples:

#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

client = Client.create(name: "NFL")

team = Team.create([{name: "Chiefs"},{name: "Cardinals"},{name: "Bears"},{name: "Browns"}])

status = Status.create([
  {description: "Pending", rank: 1},
  {description: "In Progress", rank: 2},
  {description: "Complete", rank: 3},
  {description: "Closed Out", rank: 4}
])

type = GameType.create([{description: "Matchup"},{description: "Global"}])

game = Game.create([
  {client_id: 1, 
  team_id: 1, 
  status_id: 1, 
  game_type_id: 1, 
  description: "Chiefs vs Cardinals", 
  start: DateTime.current},
  {client_id: 1, 
  team_id: 2, 
  status_id: 1, 
  game_type_id: 1, 
  description: "Cardinals vs Chiefs", 
  start: DateTime.current},
  {client_id: 1, 
  team_id: 3, 
  status_id: 1, 
  game_type_id: 1, 
  description: "Browns vs Bears", 
  start: DateTime.current},
  {client_id: 1, 
  team_id: 4, 
  status_id: 1, 
  game_type_id: 1, 
  description: "Bears vs Browns", 
  start: DateTime.current},
  {client_id: 1, 
  team_id: 1, 
  status_id: 1, 
  game_type_id: 2, 
  description: "Chiefs vs Cardinals", 
  start: DateTime.current}
])
  

question = Question.create([
  {game_id: 1,
  description: "question 1",
  status: 1,
  is_active: 1
  },
  {game_id: 1,
  description: "question 2",
  status: 1,
  is_active: 1
  },
  {game_id: 1,
  description: "question 3",
  status: 1,
  is_active: 1
  },
  {game_id: 2,
  description: "question 1",
  status: 1,
  is_active: 1
  },
  {game_id: 2,
  description: "question 2",
  status: 1,
  is_active: 1
  },
  {game_id: 2,
  description: "question 3",
  status: 1,
  is_active: 1
  },
  {game_id: 3,
  description: "question 1",
  status: 1,
  is_active: 1
  },
  {game_id: 3,
  description: "question 2",
  status: 1,
  is_active: 1
  },
  {game_id: 3,
  description: "question 3",
  status: 1,
  is_active: 1
  },
  {game_id: 4,
  description: "question 1",
  status: 1,
  is_active: 1
  },
  {game_id: 4,
  description: "question 2",
  status: 1,
  is_active: 1
  },
  {game_id: 4,
  description: "question 3",
  status: 1,
  is_active: 1
  },
  {game_id: 5,
  description: "question 1",
  status: 1,
  is_active: 1
  },
  {game_id: 5,
  description: "question 2",
  status: 1,
  is_active: 1
  },
  {game_id: 5,
  description: "question 3",
  status: 1,
  is_active: 1
  }
])

player = Player.create([
  {
    first_name: "Nate",
    last_name: "The Great"
  },
  {
    first_name: "Rian",
    last_name: "Weights"
  },
  {
    first_name: "Beeny",
    last_name: "Leevy"
  },
  {
    first_name: "Kris",
    last_name: "Pyne"
  },
  {
    first_name: "Attie",
    last_name: "Bean"
  }
])

player = Address.create([
  {
    description: "Player 1 address",
    player_id: 1
  },
  {
    description: "Player 2 address",
    player_id: 2
  },
  {
    description: "Player 3 address",
    player_id: 3
  },
  {
    description: "Player 4 address",
    player_id: 4
  },
  {
    description: "Player 5 address",
    player_id: 5
  }
])

card = Card.create([
  {
    game_id: 1,
    player_id: 1,
    status: 1
  },
  {
    game_id: 1,
    player_id: 2,
    status: 1
  },
  {
    game_id: 1,
    player_id: 3,
    status: 1
  },
  {
    game_id: 1,
    player_id: 4,
    status: 1
  },
  {
    game_id: 1,
    player_id: 5,
    status: 1
  },
  {
    game_id: 2,
    player_id: 1,
    status: 1
  },
  {
    game_id: 2,
    player_id: 2,
    status: 1
  },
  {
    game_id: 2,
    player_id: 3,
    status: 1
  },
  {
    game_id: 2,
    player_id: 4,
    status: 1
  },
  {
    game_id: 2,
    player_id: 5,
    status: 1
  },
  {
    game_id: 3,
    player_id: 1,
    status: 1
  },
  {
    game_id: 3,
    player_id: 2,
    status: 1
  },
  {
    game_id: 3,
    player_id: 3,
    status: 1
  },
  {
    game_id: 3,
    player_id: 4,
    status: 1
  },
  {
    game_id: 3,
    player_id: 5,
    status: 1
  },
  {
    game_id: 4,
    player_id: 1,
    status: 1
  },
  {
    game_id: 4,
    player_id: 4,
    status: 1
  },
  {
    game_id: 4,
    player_id: 3,
    status: 1
  },
  {
    game_id: 4,
    player_id: 4,
    status: 1
  },
  {
    game_id: 4,
    player_id: 5,
    status: 1
  },
  {
    game_id: 5,
    player_id: 1,
    status: 1
  },
  {
    game_id: 5,
    player_id: 2,
    status: 1
  },
  {
    game_id: 5,
    player_id: 3,
    status: 1
  },
  {
    game_id: 5,
    player_id: 4,
    status: 1
  },
  {
    game_id: 5,
    player_id: 5,
    status: 1
  }
])

sweep = Sweep.create([
  {
    player_id: 1,
    is_winner: 0,
    card_id: 1,
    win_status: nil     
  },
  {
    player_id: 2,
    is_winner: 1,
    card_id: 2,
    win_status: nil    
  },
  {
    player_id: 3,
    is_winner: 1,
    card_id: 3,
    win_status: nil   
  },
  {
    player_id: 4,
    is_winner: 1,
    card_id: 4,
    win_status: nil   
  },
  {
    player_id: 5,
    is_winner: 1,
    card_id: 5,
    win_status: nil    
  },
  {
    player_id: 1,
    is_winner: 0,
    card_id: 6,
    win_status: nil     
  },
  {
    player_id: 2,
    is_winner: 1,
    card_id: 7,
    win_status: nil    
  },
  {
    player_id: 3,
    is_winner: 1,
    card_id: 8,
    win_status: nil   
  },
  {
    player_id: 4,
    is_winner: 1,
    card_id: 9,
    win_status: nil   
  },
  {
    player_id: 5,
    is_winner: 1,
    card_id: 10,
    win_status: nil    
  },
  {
    player_id: 1,
    is_winner: 0,
    card_id: 11,
    win_status: nil     
  },
  {
    player_id: 2,
    is_winner: 1,
    card_id: 12,
    win_status: nil    
  },
  {
    player_id: 3,
    is_winner: 1,
    card_id: 13,
    win_status: nil   
  },
  {
    player_id: 4,
    is_winner: 1,
    card_id: 14,
    win_status: nil   
  },
  {
    player_id: 5,
    is_winner: 1,
    card_id: 15,
    win_status: nil    
  },
  {
    player_id: 1,
    is_winner: 0,
    card_id: 16,
    win_status: nil     
  },
  {
    player_id: 2,
    is_winner: 1,
    card_id: 17,
    win_status: nil    
  },
  {
    player_id: 3,
    is_winner: 1,
    card_id: 18,
    win_status: nil   
  },
  {
    player_id: 4,
    is_winner: 1,
    card_id: 19,
    win_status: nil   
  },
  {
    player_id: 5,
    is_winner: 1,
    card_id: 20,
    win_status: nil    
  },
  {
    player_id: 1,
    is_winner: 0,
    card_id: 21,
    win_status: nil     
  },
  {
    player_id: 2,
    is_winner: 1,
    card_id: 22,
    win_status: nil    
  },
  {
    player_id: 3,
    is_winner: 1,
    card_id: 23,
    win_status: nil   
  },
  {
    player_id: 4,
    is_winner: 1,
    card_id: 24,
    win_status: nil   
  },
  {
    player_id: 5,
    is_winner: 1,
    card_id: 25,
    win_status: nil    
  }
])

  

