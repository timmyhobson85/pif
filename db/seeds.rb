User.destroy_all

u1 = User.create! name: 'tim', email: 'tim@test.com', password: 'chicken'
u2 = User.create! name: 'luke', email: 'luke@test.com', password: 'chicken'
u3 = User.create! name: 'josh', email: 'josh@test.com', password: 'chicken'

puts "-created #{ User.count } users: #{ User.pluck(:name).join(', ') }"

Thing.destroy_all

t1 = Thing.create! name: 'dinner', act: 'need', quantity: 2
t2 = Thing.create! name: 'down tree', act: 'need', quantity: 1
t3 = Thing.create! name: 'fix fencing', act: 'offer', quantity: 1
t4 = Thing.create! name: 'clothes', act: 'offer', quantity: 1
t5 = Thing.create! name: 'lift', act: 'need', quantity: 1

puts "-created #{ Thing.count } users: #{ Thing.all.pluck(:name).join(', ') }"

u1.things << t1 << t2
u2.things << t5
u3.things << t3 << t4

puts " #{ User.first.name } has following things: #{ User.first.things.pluck(:name).join(', ')}"

m1 = Message.create! subject: 'hello 1', message: 'how are you 1?', to_id: u1.id, user_id: u2.id
m2 = Message.create! subject: 'hello 2', message: 'how are you 2?', to_id: u2.id, user_id: u1.id
m3 = Message.create! subject: 'hello 3', message: 'how are you 2?', to_id: u3.id, user_id: u1.id
