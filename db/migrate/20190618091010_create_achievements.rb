class CreateAchievements < ActiveRecord::Migration[5.2]
  def change
    create_table :achievements do |t|
      t.string :achievement
      t.text :note
      t.date :date
      t.string :image

      t.timestamps
    end
  end
end
