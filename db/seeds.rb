User.create(username: "Eric", email: "e@e.com", password_hash: "password")
Beat.create(content: "Joe is cool", user_id: 1)
User.create(username: "Emmet", email: "g@g.com", password_hash: "password")
Relationship.create(followed_id: 2, follower_id: 1)
