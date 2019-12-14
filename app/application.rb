class Application
  require 'rack'
  
  def call(env)
    return [ 200, {'Content-Type' => 'text/html'}, pretty_response ]
    end
 
  def pretty_response
    time = Time.new
    if time.hour >= 12
      ["<strong>Good Afternoon!</strong>"] 
      else 
        ["<strong>Good Morning!</strong>"]
      end
  end
end
 
#run Application.new