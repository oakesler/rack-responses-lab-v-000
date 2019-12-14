class Application
  require 'rack'
  
  require 'pry'
  
  def call(env)
    return [ 200, {'Content-Type' => 'text/html'}, time_appropriate_greeting]
    end
 
  def time_appropriate_greeting
    binding.pry
    time = Time.new
    if time.hour.to_i >= 12
      ["<strong>Good Afternoon!</strong>"] 
      else 
        ["<strong>Good Morning!</strong>"]
      end
    end
  end
 
#run Application.new