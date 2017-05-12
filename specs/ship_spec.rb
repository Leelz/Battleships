require 'minitest/autorun'
require_relative '../ship'

class TestShip < Minitest::Test

	def setup
		@ship = Ship.new(4, "Destroyer")
	end

	def test_has_health
		assert_equal(4, @ship.health)
	end

	def test_has_name
		assert_equal("Destroyer", @ship.name)
	end

	def test_starts_not_sunk
		assert_equal(false, @ship.sunk)
	end

	def test_ship_can_be_shot
		@ship.receive_shot
		assert_equal(3, @ship.health)
	end

	def test_can_be_sunk
		@ship.receive_shot
		@ship.receive_shot
		@ship.receive_shot
		@ship.receive_shot
		assert_equal(true, @ship.sunk)
	end

end