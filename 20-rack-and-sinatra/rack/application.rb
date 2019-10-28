class Application

  def call(env)
    resp = Rack::Response.new
    resp.write "<style>"
    resp.write "body {background-color: goldenrod;}"
    resp.write "h1 {border: solid black 1px;}"
    resp.write "</style>"

    resp.write "<h1>Hello, World</h1>"

    choice = rand(6)
    resp.write "<p>you rolled: #{choice} "
    if choice == 0
      resp.write "BANG!!!!"
      beers = 100
      resp.write "<div>"
      100.times do 
        resp.write "#{beers} bottles of beer on the wall <br/> \n"
        beers -= 1
      end
      resp.write "</div>"
    else
      resp.write "click"
    end
    resp.write "</p>"

    resp.finish
  end

end
