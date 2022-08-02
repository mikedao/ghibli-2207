require './lib/film'
require './lib/ghibli_service'

class FilmSearch
  # memoization
  def film_information
    @_film_information ||= service.films.map do |data|
      Film.new(data)
    end
  end

  def film_count
    film_information.count
  end

  def service
    GhibliService.new
  end
end