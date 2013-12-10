class FloorsController < ApplicationController
  def index
    call = params[:search_call].upcase
    call_length = call.length
    
    @success_response = ["Go find It, Bitch!",
                          "Here's Your Fucking Book",
                          "I'll Be Nice This Time",
                          "Isn't Bobst Awesome? HA!",
                          "Ryan Gosling, because why not."].sample
    
    @error = nil
    
    if call_length < 1 #Too few characters
      @error = "I said 1 or 2 letters!! Not no letters!"
    elsif call_length > 2 #Too many characters
      @error = "I said 1 or 2 letters!! Not #{call.length}!"
    elsif call_length == 1 && ("A".."Z").to_a.include?(call[0])
      @section = Section.includes(:floor).find_by_call_num(call)
      @floor = @section.floor
    elsif call_length == 2
      if ("A".."Z").to_a.include?(call[0]) && ("A".."Z").to_a.include?(call[1])
        @section = Section.includes(:floor).find_by_call_num(call)
        @floor = @section.floor
      else #Not right characters
        @error = "I said 1 or 2 letters!! Not numbers!"
      end
    else
      @error = "I said 1 or 2 letters!! Not numbers!"
    end
    
    render :index
  end
end
