class CreateLikePets < ActiveRecord::Migration[5.2]
  def change
    create_table :like_pets do |t|
      t.references :user, foreign_key: true
      t.references :pet, foreign_key: true

      t.timestamps
    end
  end
end
