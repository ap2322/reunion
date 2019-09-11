require 'minitest/autorun'
require 'minitest/pride'
require './lib/activity'
require './lib/reunion'
require 'pry'

class ReunionTest < Minitest::Test
  def setup
    @reunion = Reunion.new("1406 BE")
  end

  def test_it_exists
    assert_instance_of Reunion, @reunion
  end

  def test_attributes_at_init
    assert_equal "1406 BE", @reunion.name
    assert_equal [], @reunion.activities
  end

  def test_add_activity
    activity_1 = Activity.new("Brunch")
    @reunion.add_activity(activity_1)

    assert_equal [activity_1], @reunion.activities
  end
end
