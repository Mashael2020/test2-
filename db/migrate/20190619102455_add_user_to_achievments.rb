class AddUserToAchievments < ActiveRecord::Migration[5.2]
  def change
    add_reference :achievements, :user, foreign_key: true
  end
end
