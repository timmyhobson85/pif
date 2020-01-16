User.destroy_all

tim = User.create! ({
name: 'tim',
email: 'tim@test.com',
password: 'chicken',
location: 'Station St, Wentworth Falls, NSW, Australia',
image: 'kmgkzc7zon1sf40zui6w',
bio: 'placehold bio text for tim'
})
luke = User.create! ({
name: 'luke',
email: 'luke@test.com',
password: 'chicken',
location: 'Auburn, NSW, Australia',
image: 'kmgkzc7zon1sf40zui6w',
bio: 'placeholder bio text for luke'
})
josh = User.create! ({
name: 'josh',
email: 'josh@test.com',
password: 'chicken',
location: 'Bondi, NSW, Australia',
image: 'kmgkzc7zon1sf40zui6w',
bio: 'place holder bio text for josh'
})

puts "-created #{ User.count } users: #{ User.pluck(:name).join(', ') }"

Thing.destroy_all

# act 0 = need, 1 = offer
# thing_type 0 = item, 1 = task
# condition 0 = newitem, 1 = useditem
# urgency 0 = low, 1 = medium, 2 = high, 3 = dire
dinner = Thing.create! ({
name: 'dinner',
act: 0,
thing_type: 0,
urgency: 3,
location: 'Bankstown NSW',
description: 'place holder text describing said item',
image: 'hjryip1kpa9wexixzj6q'
})
down_tree = Thing.create! ({
name: 'down tree',
act: 0,
thing_type: 1,
urgency: 1,
location: 'Katoomba NSW',
description: 'place holder text describing said item',
image: 'kmgkzc7zon1sf40zui6w'
})
fix_fencing = Thing.create! ({
name: 'fix fencing',
act: 1,
thing_type: 1,
location: 'Braidwood NSW Australia',
description: 'place holder text describing said task',
image: 'hjryip1kpa9wexixzj6q'
})
clothes = Thing.create!({
name: 'clothes',
act: 1,
thing_type: 0,
condition: 1,
location: 'Batemans Bay NSW',
description: 'place holder text describing said item',
image: 'hjryip1kpa9wexixzj6q'
})
lift = Thing.create! ({
name: 'lift',
act: 0,
thing_type: 1,
urgency: 0,
location: 'Lithgow NSW',
description: 'place holder text describing said item',
image: 'kmgkzc7zon1sf40zui6w'
})
mattress = Thing.create! ({
name: 'mattress',
act: 0,
thing_type: 0,
urgency: 1,
location: 'Bankstown NSW',
description: 'place holder text describing said item',
image: 'hjryip1kpa9wexixzj6q'
})

puts "-created #{ Thing.count } items: #{ Thing.all.pluck(:name).join(', ') }"

tim.things << dinner << down_tree
luke.things << lift << mattress
josh.things << fix_fencing << clothes

puts " #{ User.first.name } has following things: #{ User.first.things.pluck(:name).join(', ')}"

Message.destroy_all

m1 = Message.create! ({
# subject: 'hello 1',
message: "hi tim, luke here, i'd like that dinner",
sender: luke,
recipient: tim,
thing: dinner
})
m2 = Message.create! ({
# subject: 'hello 2',
message: "hi luke, tim here i'd like to give you a mattress",
sender: tim,
recipient: luke,
thing: mattress
})
m3 = Message.create! ({
# subject: 'hello 3',
message: "hi josh, tim here, i'd like to take those clothes",
sender: josh,
recipient: tim,
thing: clothes
})
m4 = Message.create! ({
# subject: 'hello 3',
message: "hi josh, luke here, i'd like to take those clothes",
sender: josh,
recipient: luke,
thing: clothes
})
m5 = Message.create! ({
# subject: 'hello 1',
message: "hi tim, josh here, i'd like that dinner",
sender: josh,
recipient: tim,
thing: dinner
})
m6 = Message.create! ({
# subject: 'hello 1',
message: "hi luke what do you need",
sender: tim,
recipient: luke,
thing: dinner
})
m7 = Message.create! ({
# subject: 'hello 1',
message: "someone has picked it up sorry",
sender: tim,
recipient: josh,
thing: dinner
})
m8 = Message.create! ({
# subject: 'hello 1',
message: "i need pizza",
sender: luke,
recipient: tim,
thing: dinner
})
