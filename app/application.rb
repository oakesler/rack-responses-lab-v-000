class Application
  require 'rack'
  
  def call(env)
    return [ 200, {'Content-Type' => 'text/html'}, pretty_response ]
    end
 
  def pretty_response
    (Time.now.to_i >= 12) ?  ["<strong>Good Morning!</strong>"] : ["<strong>Good Afternoon!</strong>"]
  end
end
 
#run Application.new