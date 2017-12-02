# 2017/12/02

def two_sums(nums, target)
  ret = nil
  nums.length.times do |i|
    (i+1).upto(nums.length-1) do |j|
      if nums[i] + nums[j] == target
        ret = [i, j]
      end
    end
  end
  ret
end

require 'minitest/autorun'

class TwoSumTest < Minitest::Test
  def test_two_sums
    assert_equal [0, 1], two_sums([2, 7, 11, 15], 9)
    assert_equal [0, 2], two_sums([2, 7, 11, 15], 13)
    assert_equal [0, 3], two_sums([2, 7, 11, 15], 17)
    assert_equal [1, 2], two_sums([2, 7, 11, 15], 18)
    assert_equal [1, 3], two_sums([2, 7, 11, 15], 22)
    assert_equal [2, 3], two_sums([2, 7, 11, 15], 26)
    refute two_sums([2, 7, 11, 15], 0)
    refute two_sums([2, 7, 11, 15], 10)
  end
end
