class CreateCherups < ActiveRecord::Migration
  def change
    create_table :cherups do |t|
      t.string :content
      t.string :img

      t.timestamps
    end
  end
end
