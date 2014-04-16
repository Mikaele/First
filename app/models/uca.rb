class Uca < ActiveRecord::Base
  has_and_belongs_to_many :knows
  #attr_accessible :matricula, :curso, :periodo, :email, :created_at
  has_and_belongs_to_many :langs
end
