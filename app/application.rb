require 'rack'

class Application

  def call(env)
    resp = Rack::Response.new
    t = Time.now
    hour =  t.strftime("%H%M").to_i

    #resp.write "#{hour}\n"

    if hour < 1200
      resp.write "Good Morning!"
    elsif
      hour >= 1200
      resp.write "Good Afternoon!"
    end
    resp.finish
  end

end
