require "starwarsgem/version"
require "httparty"
require 'json'

module Starwarsgem
  include HTTParty
  base_uri 'https://swapi.co/api'

  def self.find(type, id)
    get("/#{type}/#{id}/.json")
  end

  def self.get_planet(planet_id = 3)
    get("/planets/#{planet_id}/.json")
  end

  def self.get_species(specie_id)
    get("/species/#{specie_id}/.json")
  end

  def self.get_starships(starship_id)
    get("/starship/#{starship_id}/.json")
  end

  def self.pretty(response)
    puts "Printing information related to #{response['name']}"
    response.parsed_response.each { |k, v| puts "#{k}: #{v}" }
  end


  private

    # def retrieve_response(response)
    #   response.parsed_response
    # end
end


