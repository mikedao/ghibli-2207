require 'httparty'

class GhibliService

  def films
    get_url("https://ghibliapi.herokuapp.com/films")
  end

  def characters
    get_url("https://ghibliapi.herokuapp.com/characters")
  end

  def get_url(url)
    response = HTTParty.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end
end