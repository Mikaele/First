class Uca < ActiveRecord::Base
  has_many :interests
  #attr_accessible :matricula, :curso, :periodo, :email, :created_at
  has_and_belongs_to_many :dev_langs
end
