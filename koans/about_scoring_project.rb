require File.expand_path(File.dirname(__FILE__) + '/edgecase')

# Greed is a dice game where you roll up to five dice to accumulate
# points.  The following "score" function will be used calculate the
# score of a single roll of the dice.
#
# A greed roll is scored as follows:
#
# * A set of three ones is 1000 points
#
# * A set of three numbers (other than ones) is worth 100 times the
#   number. (e.g. three fives is 500 points).
#
# * A one (that is not part of a set of three) is worth 100 points.
#
# * A five (that is not part of a set of three) is worth 50 points.
#
# * Everything else is worth 0 points.
#
#
# Examples:
#
# score([1,1,1,5,1]) => 1150 points
# score([2,3,4,6,2]) => 0 points
# score([3,4,5,3,3]) => 350 points
# score([1,5,1,2,4]) => 250 points
#
# More scoring examples are given in the tests below:
#
# Your goal is to write the score method.

def score(dice)
  # You need to write this method
  i = 1
  dice_rolls = [] # index 0 will be the number of ones, index 1 will be the number of twos, etc.
  while i <= 6
    die_roll = dice.count(i) 
    dice_rolls << die_roll 
    i += 1 
  end
  
  sum = 0
  if dice_rolls == []
    sum += 0
  end
  
  if dice_rolls[0] == 3
    sum += 1000
  end
  
  if dice_rolls[0] < 3
    sum += dice_rolls[0] * 100
  end
  
  if dice_rolls[0] > 3
    sum += 1000 + ( (rolls[0] - 3)*100 )
  end
  
  if dice_rolls[1] >= 3
    sum += 200
  end
  
  if dice_rolls[2] >= 3
    sum += 300
  end
  
  if dice_rolls[3] >= 3
    sum += 400
  end
  
  if dice_rolls[4] < 3
    sum += dice_rolls[4]*50
  end
  
  if dice_rolls[4] == 3
    sum += 500
  end
  
  if dice_rolls[4] > 3
    sum += 500 + ( (dice_rolls[4] - 3)*50 )
  end
  
  if dice_rolls[5] >= 3
    sum += 600
  end

sum
end

class AboutScoringProject < EdgeCase::Koan
  def test_score_of_an_empty_list_is_zero
    assert_equal 0, score([])
  end

  def test_score_of_a_single_roll_of_5_is_50
    assert_equal 50, score([5])
  end

  def test_score_of_a_single_roll_of_1_is_100
    assert_equal 100, score([1])
  end

  def test_score_of_multiple_1s_and_5s_is_the_sum_of_individual_scores
    assert_equal 300, score([1,5,5,1])
  end

  def test_score_of_single_2s_3s_4s_and_6s_are_zero
    assert_equal 0, score([2,3,4,6])
  end

  def test_score_of_a_triple_1_is_1000
    assert_equal 1000, score([1,1,1])
  end

  def test_score_of_other_triples_is_100x
    assert_equal 200, score([2,2,2])
    assert_equal 300, score([3,3,3])
    assert_equal 400, score([4,4,4])
    assert_equal 500, score([5,5,5])
    assert_equal 600, score([6,6,6])
  end

  def test_score_of_mixed_is_sum
    assert_equal 250, score([2,5,2,2,3])
    assert_equal 550, score([5,5,5,5])
  end

end
