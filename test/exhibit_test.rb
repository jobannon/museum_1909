require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/exhibit'

class ExhibitTest < Minitest::Test

  def test_it_exists
    exhibit = Exhibit.new("Cats", 0)
    assert_instance_of Exhibit, exhibit
  end

  def test_it_has_attributes
    exhibit = Exhibit.new("Cats", 0)
    assert_equal "Cats", exhibit.name
    assert_equal 0, exhibit.cost  
  end

end
