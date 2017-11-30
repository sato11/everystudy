# 2017/11/30
# returns true if sum of any set of consecutive numbers in an array is 8

class Array
  def contain_eight_in_row?
    arr = self.dup
    ret = false
    sum = 0
    each do |n|
      sum += n
      sum -= arr.delete_at(0) if sum > 8
      if sum == 8
        ret = true
        break
      end
    end
    ret
  end
end

require 'minitest/autorun'

class ContainEightInRowTest < Minitest::Test
  def test_contain_eight_in_row?
    assert [8].contain_eight_in_row?
    assert [1, 8].contain_eight_in_row?
    assert [1, 2, 5].contain_eight_in_row?
    refute [1, 2 ,3].contain_eight_in_row?
    assert [1, 2, 3, 2].contain_eight_in_row?
    refute [3, 3 ,3].contain_eight_in_row?
    assert [3, 3, 3, 2].contain_eight_in_row?
    assert [3, 4, 5, 3].contain_eight_in_row?
  end
end
