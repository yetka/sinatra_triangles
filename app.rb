require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/triangles')

get('/') do
  erb(:input)
end

post('/output') do
  @side1 = params.fetch("side1")
  @side2 = params.fetch("side2")
  @side3 = params.fetch("side3")
  new_triangle = Triangle.new(@side1, @side2, @side3)
  if new_triangle.triangle?
    if new_triangle.equilateral?
      @triangle = "This is an equilateral triangle"
    elsif new_triangle.isoceles?
      @triangle = "This is an isoceles triangle"
    else
      @triangle = "This is a scalene triangle"
    end
  else
    @triangle = "This is not a triangle."
  end
  erb(:output)
end
