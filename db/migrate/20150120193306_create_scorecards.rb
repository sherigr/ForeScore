class CreateScorecards < ActiveRecord::Migration
  def change
    create_table :scorecards do |t|
      t.string :date
      t.string :courseplayed
      t.integer :hole1
      t.integer :hole2
      t.integer :hole3
      t.integer :hole4
      t.integer :hole5
      t.integer :hole6
      t.integer :hole7
      t.integer :hole8
      t.integer :hole9
      t.integer :hole10
      t.integer :hole11
      t.integer :hole12
      t.integer :hole13
      t.integer :hole14
      t.integer :hole15
      t.integer :hole16
      t.integer :hole17
      t.integer :hole18
      t.integer :total
      t.integer :par1
      t.integer :par2
      t.integer :par3
      t.integer :par4
      t.integer :par5
      t.integer :par6
      t.integer :par7
      t.integer :par8
      t.integer :par9
      t.integer :par10
      t.integer :par11
      t.integer :par12
      t.integer :par13
      t.integer :par14
      t.integer :par15
      t.integer :par16
      t.integer :par17
      t.integer :par18
      t.integer :TotalPar

      t.timestamps null: false
    end
  end
end
