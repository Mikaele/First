class Lang < ActiveRecord::Base
  has_many :knows
  has_many :ucas ,:through => :knows

  has_and_belongs_to_many :ucas

end
