class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name 
    # sts all of the characters that actor 
    # has alongside the show that the character is in.
    "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    self.characters.map do |t|
        # t is an instance of a character 
        "#{t.name} - #{t.show.name}"
        # active directory extends the table so you're effectively mapping through the same table
        end
    end

end