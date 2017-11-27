require('rspec')
require('triangles')
require('pry')

describe(Triangle) do
  describe("triangle?") do
    it("returns false if the sum of the lengths of any two sides of a triangle is less than or equal to the length of the third side") do
      new_triangle = Triangle.new(2,2,8)
      expect(new_triangle.triangle?()).to(eq(false))
    end

    it("returns true if it is a triangle") do
      new_triangle = Triangle.new(4,4,7)
      expect(new_triangle.triangle?()).to(eq(true))
    end
  end

  describe('equilateral?') do
    it("returns true if all sides are equal") do
      new_triangle = Triangle.new(2,2,2)
      expect(new_triangle.equilateral?()).to(eq(true))
    end
  end

  describe('isoceles?') do
    it("returns true if two sides are the same size") do
      new_triangle = Triangle.new(4,4,6)
      expect(new_triangle.isoceles?).to(eq(true))
    end
  end

  describe('scalene?') do
    it("returns true if all sides are different lengths") do
      new_triangle = Triangle.new(2,3,4)
      expect(new_triangle.scalene?).to(eq(true))
    end
  end
end
