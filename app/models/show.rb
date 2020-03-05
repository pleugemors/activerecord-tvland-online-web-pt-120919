class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  
  def actors_list
    actors_names = []
    self.characters.each{|character| actors_names << character.actor.full_name}
    actors_names
  end

  
end