class User < ActiveRecord::Base
    validates :password, presence: true
    has_many :rides
    has_many :attractions, through: :rides

    def mood
        if !self.nausea.nil? && !self.happiness.nil? 
            self.nausea > self.happiness ? "sad" : "happy"
        end
    end
end
