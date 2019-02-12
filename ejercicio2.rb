module Formula
  def square
    instance_variables.count == 1
  end

  def perimetro
    lado1 = instance_variable_get(instance_variables[0])
    if square
    2 * (lado1 + lado1)
    else
    lado2 = instance_variable_get(instance_variables[1])
    2 * (lado1 + lado2)
    end
  end

  def area
    lado1 = instance_variable_get(instance_variables[0])
    if self.square
    lado1 * lado1
    else 
    lado2 = instance_variable_get(instance_variables[1])
    lado1 * lado2
    end
  end
end

class Rectangulo
  include Formula
  def initialize(base, altura)
  @base = base
  @altura = altura
  end

  def lados
    puts "Lado uno: #{@base} - Lado dos: #{@altura}"
  end
end

class Cuadrado
  include Formula
  def initialize(lado)
  @lado = lado
  end

  def lados
    puts "Lado uno: #{@lado} - Lado dos: #{@lado}"
  end
end

r1 = Rectangulo.new(4, 5)
c1 = Cuadrado.new(3)

puts r1.perimetro
puts r1.area
puts
puts c1.perimetro
puts c1.area
