class LangsUcas < ActiveRecord::Migration
  def change
    create_table :langs_ucas, :id=>false  do |t|
      t.references :uca
      t.references :lang
    end
    add_index :langs_ucas, [:uca_id,:lang_id],:unique => true
  end
end
