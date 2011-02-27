# t.integer :got_total_credit
# t.float :current_average_score
# t.float :need_average_score
# t.integer :left_credit
# t.float :safe_average_score

class Score < ActiveRecord::Base
  attr_accessor :pass_point
  
  def test_score
    safe_score = (got_total_credit - pass_point) * current_average_score
    safe_score = safe_score - ((left_credit + got_total_score) * need_average_score)
    safe_score = safe_score / left_credit
  end
  
protected
  
  before_save :generate_safe_average_score
  
  def generate_safe_average_score
    safe_score = (got_total_credit) * current_average_score
    safe_score = safe_score - ((left_credit + got_total_credit) * need_average_score)
    safe_score = safe_score / left_credit * -1
    self.safe_average_score = safe_score
  end
end
