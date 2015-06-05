Moviequote.destroy_all
User.destroy_all
Guess.destroy_all


# %w(Brucey Pardo Johnny).each do |name|
#   email = "#{name}@example.com"
#   next if User.exists? email: email
#   user = User.create!(email: email,
#                       name: name,
#                       stars: 1,
#                password: '123456',
#                password_confirmation: nil)

#  1.upto(3) do |i|
#     moviequote = Moviequote.create!(quote: "Use the force #{name} #{i}", title: "Star Wars #{i}")
#     moviequote.guesses("Total Recall #{name}")
#     user.moviequotes << moviequote
#   end


# end
brucey = User.create!(name: 'Brucey', email:"brucey@example.com", password:"123456")
johnny = User.create!(name: 'Johnny', email:"johnny@example.com", password:"123456")
pardo = User.create!(name: 'Pardo', email:"pardo@example.com", password:"123456")
mq = Moviequote.create!(quote:"Use the force, Luke", title:"star wars")
mq = Moviequote.create!(quote:"Leave the guns, take the cannolis", title:"the godfather")
mq = Moviequote.create!(quote:"You talking to me?", title:"taxi driver")

mq.guesses.create!(titleguess: 'total recall', user_id:brucey.id)
mq.guesses.create!(titleguess: 'star wars', user_id:pardo.id)
mq.guesses.create!(titleguess: 'terminator', user_id:pardo.id)

puts "created three moviequotes"
