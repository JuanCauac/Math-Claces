
load "/home/juan/Desktop/Math-Claces/Ejercicios-generador/ejercicios.rb"
load "/home/juan/Desktop/Math-Claces/Ejercicios-generador/numalg.rb"


Ejercicios.files=[File.new("tarea-prueva.tex","w+"),File.new("solucion-prueva.tex","w+")]

Ejercicios.opening("prueva")


for i in 1..5
#Ejercicios.c=1
#Ejercicios.suma_algebraica_dos(3)
#Ejercicios.pagebreak


a=NumAlg.new("+",20,"b","2")

puts a.lx

end
Ejercicios.closure
