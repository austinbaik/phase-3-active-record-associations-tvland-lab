class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters 
  belongs_to :network



  def actors_list

    self.actors.map do |t|

    "#{t.first_name} #{t.last_name}"
    end
  end

end