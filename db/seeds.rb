User.destroy_all

u1 = User.create! name: 'tim', email: 'tim@test.com', password: 'chicken', location: 'wentworth falls', image: 'profilephoto.jpg', bio: 'placehold bio text for tim'
u2 = User.create! name: 'luke', email: 'luke@test.com', password: 'chicken', location: 'chatswood', bio: 'placeholder bio text for luke'
u3 = User.create! name: 'josh', email: 'josh@test.com', password: 'chicken', location: 'bondi', image: 'profilephoto.jpg', bio: 'place holder bio text for josh'

puts "-created #{ User.count } users: #{ User.pluck(:name).join(', ') }"

Thing.destroy_all

# act 0 = need, 1 = offer
# thing_type 0 = item, 1 = task
# condition 0 = newitem, 1 = useditem
# urgency 0 = low, 1 = medium, 2 = high, 3 = dire
t1 = Thing.create! name: 'dinner', act: 0, thing_type: 0, urgency: 3, location: 'bankstown', description: 'place holder text describing said item', image: 'item.jpg'
t6 = Thing.create! name: 'mattress', act: 0, thing_type: 0, urgency: 1, location: 'bankstown', description: 'place holder text describing said item', image: 'item.jpg'
t2 = Thing.create! name: 'down tree', act: 0,thing_type: 1, urgency: 1, location: 'katoomba', description: 'place holder text describing said item', image: 'task.jpg'
t3 = Thing.create! name: 'fix fencing', act: 1,thing_type: 1, location: 'braidwood', description: 'place holder text describing said task', image: 'item.jpg'
t4 = Thing.create! name: 'clothes', act: 1,thing_type: 0, condition: 1, location: 'batemans bay', description: 'place holder text describing said item', image: 'item.jpg'
t5 = Thing.create! name: 'lift', act: 0,thing_type: 1, urgency: 0, location: 'lithgow', description: 'place holder text describing said item', image: 'task.jpg'

puts "-created #{ Thing.count } users: #{ Thing.all.pluck(:name).join(', ') }"

u1.things << t1 << t2
u2.things << t5 << t6
u3.things << t3 << t4

puts " #{ User.first.name } has following things: #{ User.first.things.pluck(:name).join(', ')}"

m1 = Message.create! subject: 'hello 1', message: 'how are you 1?', to_id: u1.id, user_id: u2.id
m2 = Message.create! subject: 'hello 2', message: 'how are you 2?', to_id: u2.id, user_id: u1.id
m3 = Message.create! subject: 'hello 3', message: 'how are you 2?', to_id: u3.id, user_id: u1.id
