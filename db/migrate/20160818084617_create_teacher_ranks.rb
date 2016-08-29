class CreateTeacherRanks < ActiveRecord::Migration[5.0]
  def change
    create_table :teacher_ranks do |t|
      t.references :teacher
      t.integer :amount

      t.timestamps
    end
  end
end
