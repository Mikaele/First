class CreateKnows < ActiveRecord::Migration
  def change
    create_table :knows  do |t|
      t.string :nome
    end
  end
end


