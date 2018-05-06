class Api::PagesController < ApplicationController
  
  def lucky_action
    @fortune = ["you will live", "you will die", "you will win it all, baby!"]
    @rand_fortune = @fortune[rand(0..2)]

    @rand_numbers = {}
     
    6.times do 
      @rand_numbers = rand(1..60) 
    end
    
    index = 1
    @page_views = index


    render 'lucky_view.json.jbuilder'  
  end
end
