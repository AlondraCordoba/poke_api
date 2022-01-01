# frozen_string_literal: true

require "test_helper"

class TestPokeApi < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::PokeApi::VERSION
  end

  # def test_it_does_something_useful
  #   assert true
  # end

  def test_must_fetch_all_pokemons
    VCR.use_cassette("all_pokemons") do
      assert_instance_of Array, PokeApi.pokemons
      # assert_instance_of Hash, PokeApi.pokemons.first
    end
  end

  # def test_must_fetch_pokemon
  #   VCR.use_cassette("pokemon") do
  #     assert_instance_of Hash, PokeApi.pokemon(1)
  #   end
  # end

  def test_must_fetch_all_types
    VCR.use_cassette("all_types") do
      assert_instance_of Array, PokeApi.types
      # assert_instance_of Hash, PokeApi.types.first
    end
  end

  # def test_must_fetch_type
  #   VCR.use_cassette("type") do
  #     assert_instance_of Hash, PokeApi.type(1)
  #   end
  # end

  def test_must_fetch_all_abilities
    VCR.use_cassette("all_abilities") do
      assert_instance_of Array, PokeApi.abilities
      # assert_instance_of Hash, PokeApi.abilities.first
    end
  end

  # def test_must_fetch_ability
  #   VCR.use_cassette("ability") do
  #     assert_instance_of Hash, PokeApi.ability(1)
  #   end
  # end
end
