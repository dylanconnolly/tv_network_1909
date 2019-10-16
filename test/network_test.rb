require 'minitest/autorun'
require 'minitest/pride'
require './lib/character'
require './lib/show'
require './lib/network'

class NetworkTest < Minitest::Test

  def setup
    @nbc = Network.new("NBC")
  end

  def test_it_exists_and_intializes
    assert_instance_of Network, @nbc
    assert_equal "NBC", @nbc.name
    assert_equal [], @nbc.shows
  end
end
