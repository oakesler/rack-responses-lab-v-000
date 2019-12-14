class Application
  require 'rack'
  
  def call(env)
    return [ 200, {'Content-Type' => 'text/html'}, time_appropriate_greeting]
    end
 
  def time_approrpriate_greeting
    time = Time.new
    if time.hour >= 12
      ["<strong>Good Afternoon!</strong>"] 
      else 
        ["<strong>Good Morning!</strong>"]
      end
    end
  end
end
 
#run Application.new