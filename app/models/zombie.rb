class Zombie < ActiveRecord::Base
    before_save :make_rotting
    #after_create :send_welcome_email
    #before_destroy :set_deleted_flag
    
    scope :rotting, where(rotting: true)
    scope :fresh, where("age < 20")
    scope :recent, order("created_at desc").limit(3)
    
    def make_rotting
        self.rotting = true if age > 20
        self.rotting = false if age <= 20
    end
    
    has_one :brain, dependent: :destroy
    has_many :assignments
    has_many :roles, through: :assignments
    
end
