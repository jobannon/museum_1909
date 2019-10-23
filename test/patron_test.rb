require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/patron'

class PatronTest < Minitest::Test
  def test_it_exists
    patron1 = Patron.new("sally", 20)
    assert_instance_of Patron, patron1
  end

  def test_it_has_attributes
    patron1 = Patron.new("sally", 20)

    assert_equal "sally", patron1.name
    assert_equal 20, patron1.spending_money
    assert_equal [], patron1.interests
  end

  def test_it_can_add_interests
    bob = Patron.new("sally", 20)
    bob.add_interest("Dead Sea Scrolls")
    bob.add_interest("Gems and Minerals")

    assert_equal ["Dead Sea Scrolls", "Gems and Minerals"], bob.interests
  end
end
