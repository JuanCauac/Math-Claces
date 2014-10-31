
load "/home/juan/Desktop/Math-Claces/Ejercicios-generador/ejercicios.rb"
load "/home/juan/Desktop/Math-Claces/Ejercicios-generador/numalg.rb"

Ejercicios.files=[File.new("tarea-prueva.tex","w+"),File.new("solucion-prueva.tex","w+")]

Ejercicios.opening("prueva")


for i in 1..10
Ejercicios.c=1
#Ejercicios.multiplicacion_algebraica_uno(3)
#Ejercicios.multiplicacion_algebraica_dos(3)
#Ejercicios.multiplicacion_algebraica_cuatro(3)

Ejercicios.raices_cuadraticas(3)

Ejercicios.pagebreak



#a=NumAlg.new("-",20,["b","c"],[-2,1])
#a=NumAlg.latex("2x^{2}y^{2}")
#b=NumAlg.latex("-10a^{2}y^{2}")
#b.coef=1
#puts b.lx
#d= a.mult(b)
#puts d.lx

#puts Poli.binomio(a,b).lx

end
Ejercicios.closure
