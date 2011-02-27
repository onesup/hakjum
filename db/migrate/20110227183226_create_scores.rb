class CreateScores < ActiveRecord::Migration
  def self.up
    create_table :scores do |t|
      t.integer :got_total_credit
      t.float :current_average_score
      t.float :need_average_score
      t.integer :left_credit
      t.float :safe_average_score
      t.timestamps
    end
  end

  def self.down
    drop_table :scores
  end
end
