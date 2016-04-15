User.destroy_all

charlie = User.create(username: "Charlie", email:"c@c.com", password_hash:"password")
eric = User.create(username: "Eric", email:"e@e.com", password_hash:"password")
blair = User.create(username: "Blair", email:"b@b.com", password_hash:"password")
emmit = User.create(username: "Emmit", email:"s@s.com", password_hash:"password")

Follow.destroy_all

Follow.create(leader: charlie, follower: eric)
Follow.create(leader: eric, follower: charlie)
Follow.create(leader: charlie, follower: blair)
Follow.create(leader: charlie, follower: emmit)
Follow.create(leader: emmit, follower: eric)