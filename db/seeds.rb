eric = User.new(username: "Eric", email: "e@e.com")

eric.password = "password"

eric.save

emmet = User.new(username: "Emmet", email: "g@g.com")

emmet.password = "password"

emmet.save

charlie = User.new(username: "Charlie", email: "c@c.com")

charlie.password = "password"

charlie.save

Beat.create(content: "Joe is cool", user_id: 1)


Beat.create(content: "eary beat 2", user_id: 3)
Beat.create(content: "erly beat 2", user_id: 3)


Relationship.create(followed_id: 2, follower_id: 1)
Relationship.create(followed_id: 3, follower_id: 1)
Beat.create(content: "Joe is cool", user_id: 1)
Beat.create(content: "beat 2", user_id: 2)
Beat.create(content: "beat 2", user_id: 2)
Beat.create(content: "beat 3", user_id: 2)
Beat.create(content: "beat 4", user_id: 2)


Beat.create(content: "laste beat 3", user_id: 3)
Beat.create(content: " last beat 4", user_id: 3)

