class Know < ActiveRecord::Base
  belongs_to :uca
  belongs_to :lang ,:foreign_key => :lang_know_id

end
