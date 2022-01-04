# frozen_string_literal: true

require 'test_helper'

module PokeApi
  class ApiClientTest < Minitest::Test
    def client
      Client.new('https://pokeapi.co/api/v2/')
    end

    def test_client_must_exist
      refute_nil Client.new('https://example.com')
    end

    def test_client_must_raise_an_excep_when_path_missing
      # assert_instance_of Net::HTTPNotFound, client.get('bad_uri')
      VCR.use_cassette('client_error') do
        assert_instance_of ClientError do
          client.get('bad_uri')
        end
      end
    end

    def test_client_must_get_pokemons
      VCR.use_cassette('pokemons') do
        assert_instance_of Array, client.get('pokemon')[:results]
      end
    end

    def test_client_must_get_types
      VCR.use_cassette('types') do
        assert_instance_of Array, client.get('type')[:results]
      end
    end

    def test_client_must_get_abilities
      VCR.use_cassette('abilities') do
        assert_instance_of Array, client.get('ability')[:results]
      end
    end

  end
end
