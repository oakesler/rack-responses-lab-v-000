class Application

  #def call(env)
    #resp = Rack::Response.new
    #resp.write "Hello, my name is "
    #resp.finish
  #end

#end


require 'rack'
 
# Something that responds to call, that's what Rack demands
  def call(env)
    return [ 200, {'Content-Type' => 'text/html'}, pretty_response ]
  end
 
  def pretty_response
    (Time.now.to_i >= 12) ?  ["<strong>Good Morning!</strong>"] : ["<strong>Good Afternoon!</strong>"]
  end
end
 
run MyServer.new