class FortunesController < ApplicationController

  def horoscopes
    @all_zodiacs = Zodiac.list
    @requested = params.fetch("the_sign")
    @formatted = @requested.to_sym
    @this_zodiac = @all_zodiacs.fetch(@formatted)
    @horoscope = @this_zodiac.fetch(:horoscope)

    @array_of_numbers = Array.new

    5.times do
      another_number = rand(1...100)
      
      @array_of_numbers.push(another_number)
    end

    render({ :template => "zodiacs_templates/wildcard.html.erb" })
  end

end
