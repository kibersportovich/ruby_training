:begin
Define a class called Lamp. It will have a string attribute for color and boolean attribute, on, that will refer to whether the lamp is on or not. 
Define your class constructor with a parameter for color and assign on as false on initialize.

Give the lamp an instance method called toggle_switch that will switch the value of the on attribute.

Define another instance method called state that will return "The lamp is on." if it's on and "The lamp is off." otherwise.
:end

class Lamp
  attr_accessor :color, :on
  def initialize(color)
    @color = color
    @on = false
  end
  
  def toggle_switch
    @on = !@on
  end
  
  def state 
    return "The lamp is on." if @on
    "The lamp is off."
  end
end

