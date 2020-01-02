class Show < ActiveRecord::Base
      has_many :characters
      has_many :actors, :through => :characters
      
      belongs_to :network
      
      def actors_list
      "#{self.actors.first.first_name} #{self.actors.first.last_name}"   
          binding.pry
      end.length
end