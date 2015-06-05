Moviequote.destroy_all
User.destroy_all
Guess.destroy_all

brucey = User.create!(name: 'Brucey', email:"brucey@example.com", password:"123456")
johnny = User.create!(name: 'Johnny', email:"johnny@example.com", password:"123456")
pardo = User.create!(name: 'Pardo', email:"pardo@example.com", password:"123456")
mq1 = Moviequote.create!(quote:"Use the force, Luke", title:"star wars")
mq2 = Moviequote.create!(quote:"Leave the guns, take the cannolis", title:"the godfather")
mq3 = Moviequote.create!(quote:"You talking to me?", title:"taxi driver")

mq1.guesses.create!(titleguess: 'total recall', user_id:brucey.id)
mq1.guesses.create!(titleguess: 'star wars', user_id:pardo.id)
mq2.guesses.create!(titleguess: 'return of the fly', user_id:pardo.id)
mq2.guesses.create!(titleguess: 'terminator', user_id:johnny.id)
mq3.guesses.create!(titleguess: 'the goonies', user_id:brucey.id)
mq3.guesses.create!(titleguess: 'star trek', user_id:johnny.id)

puts "created three moviequotes and guesses"
