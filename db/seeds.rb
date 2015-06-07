Moviequote.destroy_all
User.destroy_all
Guess.destroy_all

brucey = User.create!(name: 'Brucey', email:"brucey@example.com", password:"123456", points:0)
johnny = User.create!(name: 'Johnny', email:"johnny@example.com", password:"123456", points:0)
pardo = User.create!(name: 'Pardo', email:"pardo@example.com", password:"123456", points:0)
muffy = User.create!(name: 'Muffy', email:"muffy@example.com", password:"123456", points:0)
mq1 = Moviequote.create!(quote:"Use the force, Luke", title:"star wars")
mq2 = Moviequote.create!(quote:"Leave the guns, take the cannolis", title:"the godfather")
mq3 = Moviequote.create!(quote:"You talking to me?", title:"taxi driver")
mq4 = Moviequote.create!(quote:"Tea, Earl Grey, Hot", title:"star trek")
mq5 = Moviequote.create!(quote:"There can only be one", title:"the highlander")
mq6 = Moviequote.create!(quote:"Open your mind", title:"total recall")

mq1.guesses.create!(titleguess: 'total recall', user_id:brucey.id)
mq1.guesses.create!(titleguess: 'star wars', user_id:pardo.id)
mq2.guesses.create!(titleguess: 'return of the fly', user_id:pardo.id)
mq3.guesses.create!(titleguess: 'the goonies', user_id:brucey.id)


puts "created six moviequotes and four users"
