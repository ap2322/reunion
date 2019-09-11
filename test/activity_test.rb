require 'minitest/autorun'
require 'minitest/pride'
require './lib/activity'
require 'pry'

class ActivityTest < Minitest::Test
  def setup
    @activity = Activity.new("Brunch")
  end

  def test_it_exists
    assert_instance_of Activity, @activity
  end

  def test_attributes_at_init
    assert_equal "Brunch", @activity.name
    assert_equal ({}), @activity.participants
  end

  def test_add_particpant
    assert_equal ({}), @activity.participants

    @activity.add_participant("Maria", 20)
    expected = {"Maria"=>20}

    assert_equal expected, @activity.participants
  end

  def test_total_cost
    @activity.add_participant("Maria", 20)

    assert_equal 20, @activity.total_cost

    @activity.add_participant("Luther", 40)
    
    assert_equal 60, @activity.total_cost
  end
end
