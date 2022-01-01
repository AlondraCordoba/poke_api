# frozen_string_literal: true

require "json"

require_relative "poke_api/version"
require_relative "poke_api/client"
require_relative "poke_api/async_stream"
require_relative "poke_api/endpoint"
require_relative "poke_api/pokemon"
require_relative "poke_api/type"
require_relative "poke_api/ability"

module PokeApi
  class Error < StandardError; end
  class ClientError < Error; end
  class ServerError < Error; end
  # Your code goes here...
  # .self instead module_funtion

  def self.pokemons
    Pokemon.new.all
  end

  def self.pokemon(id)
    Pokemon.new.find(id)
  end

  def self.types
    Type.new.all
  end

  def self.type(id)
    Type.new.find(id)
  end

  def self.abilities
    Ability.new.all
  end

  def self.ability(id)
    Ability.new.find(id)
  end
end
