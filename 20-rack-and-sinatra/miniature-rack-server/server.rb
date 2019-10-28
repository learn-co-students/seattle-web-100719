class Server
  @@visitors = 0

  def call(env)
    request = Rack::Request.new(env)
    response = Rack::Response.new

    @@visitors += 1

    css(response)
    navbar(response)

    if request.path == '/'
      homepage(response)
    elsif request.path == '/about'
      about(response)
    elsif request.path == '/template'
      template(response)
    else
      status404(response)
    end

    response.finish
  end

  def css(response)
    response.write('<style>')
    response.write('body { background-color: lightblue }')
    response.write('div { border: solid black 1px; background-color: white; padding: 1em; margin: 1em;}')
    response.write('</style>')
  end

  def navbar(response)
    response.write('<div>')
    response.write('<a href="/">Home</a> ')
    response.write('<a href="/about">About</a> ')
    response.write('<a href="/template">Template</a>')
    response.write('</div>')
  end

  def homepage(response)
    response.write('<div>')
    response.write('<h1>yooo</h1>')
    response.write('<p>Welcome to my website</p>')
    response.write("<p>You are lucky visitor ##{@@visitors}</p>")
    response.write('</div>')
  end

  def about(response)
    response.write('<div>')
    response.write('<p>')
    response.write('This is my webpage built in beautiful Seattle, WA. Click around!')
    response.write('</p>')
    response.write('</div>')
  end

  def status404(response)
    response.write('<div>')
    response.write('<p>')
    response.write('Error: Sorry. I don\'t know that page.')
    response.write('</p>')
    response.write('</div>')
  end

  def template(response)
    lines = File.open("demo.template").read.split('\n')
    lines.each do |line|
      #puts line
      #if line.include? "$$"
      #  line = process(line)
      #end
      response.write(line)
    end
  end

  def process(line)
    # returns an array like ['$$', 'key', '$$']
    cells = line.split('$$')
    key = cells[1]
    dict = {'name' => 'Steve', 'food' => 'cheese'}
    return dict[key]
  end
end