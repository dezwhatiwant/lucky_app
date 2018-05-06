class Api::ExamplesController < ApplicationController
  
  def lucky_action
    @fortune = ["you will live", "you will die", "you will win it all, baby!"]
    @rand_fortune = @fortune.sample
    
    possible_numbers = (1..60).to_a
    @rand_numbers = []
     
    6.times { @rand_numbers << possible_numbers.shuffle!.pop }

    @rand_numbers = @rand_numbers.join(", ")

    render 'lucky_view.json.jbuilder'  
  end

  
  def page_count_action
    @count = 0
    @count +=1
    render 'page_count_view.json.jbuilder'
  end

end
