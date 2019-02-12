class Alumno
    def initialize(nombre, nota1, nota2, nota3, nota4)
      @nombre = nombre
      @nota1 = nota1
      @nota2 = nota2
      @nota3 = nota3
      @nota4 = nota4
    end
  end
  
  alumnos = []
  data = []
  File.open('notas.txt', 'r') { |file| data = file.readlines }
  data.each do |alumno|
    alumnos << Alumno.new(*alumno.split(', '))
  end
  
  print alumnos