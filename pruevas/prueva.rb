
load "/home/juan/Desktop/Math-Claces/tareas/00-Ejercicios/ejercicios.rb"

Ejercicios.files=[File.new("tarea-prueva.tex","w+"),File.new("solucion-prueva.tex","w+")]

Ejercicios.opening()


for i in 1..5
Ejercicios.c=1
Ejercicios.logaritmos_suma_a_multiplicacion(3)

Ejercicios.pagebreak
end
Ejercicios.closure