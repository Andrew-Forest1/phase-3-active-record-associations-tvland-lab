class Actor < ActiveRecord::Base
  has_many :characters #16
  has_many :shows, through: :characters
  validates :first_name, presence: true

  def full_name
      self.first_name + " " + self.last_name
  end

  def list_roles
    self.characters.map do |c|
        "#{c.name} - #{c.show.name}"
    end
  end
end