Moviequote.destroy_all
User.destroy_all
Guess.destroy_all

player1 = User.create!(name: 'Player 1', email:"brucey@example.com", password:"123456", points:0)
player2 = User.create!(name: 'Player 2', email:"johnny@example.com", password:"123456", points:0)

mq1 = Moviequote.create!(quote:"Use the force, Luke", title:"star wars")
mq2 = Moviequote.create!(quote:"Leave the guns, take the cannolis", title:"the godfather")
mq3 = Moviequote.create!(quote:"You talking to me?", title:"taxi driver")
mq4 = Moviequote.create!(quote:"Tea, Earl Grey, Hot", title:"star trek")
mq5 = Moviequote.create!(quote:"There can only be one", title:"the highlander")
mq6 = Moviequote.create!(quote:"Open your mind", title:"total recall")


puts "created six moviequotes and two users"
