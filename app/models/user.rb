class User < ActiveRecord::Base
  has_many :beats

  has_many :leads, foreign_key: "leader_id", class_name: "Follow", dependent: :destroy
  has_many :followers, through: :leads

  has_many :follows, foreign_key: "follower_id", class_name: "Follow", dependent: :destroy
  has_many :leaders, through: :follows
end



# class Animal < ActiveRecord::Base

#   has_many :pursuits,  :foreign_key => 'predator_id', :class_name => 'Hunt', :dependent => :destroy
#   has_many :preys,     :through => :pursuits

#   has_many :escapes,   :foreign_key => 'prey_id',
#                        :class_name => 'Hunt',
#                        :dependent => :destroy
#   has_many :predators, :through => :escapes
# end
# class Hunt < ActiveRecord::Base
#   belongs_to :predator, :class_name => "Animal"
#   belongs_to :prey,     :class_name => "Animal"
# end


# SELECT users.*
# FROM users
# INNER JOIN follows ON users.id = follows.leader_id
# WHERE follows.leader_id = 1