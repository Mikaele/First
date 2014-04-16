class KnowUcas < ActiveRecord::Migration
  def change
    create_table :knows_ucas, :id=>false  do |t|
      t.references :uca, index: true
      t.references :know, index: true
    end
    add_index :knows_ucas, [:uca_id,:know_id],:unique => true
  end
end
