load "/home/juan/Desktop/Math-Claces/Ejercicios-generador/numalg.rb"
require 'matrix'
require 'cmath'

class Ejercicios

class << self; attr_accessor :tarea, :solucion, :files, :c end

def tarea
@tarea=files[0]
end

def solucion
@tarea=files[1]
end

def self.instruccion(argumento)
@files.each{|a| a.syswrite("#{argumento}")}
end

############################
#########    LaTeX  #############
############################

def self.opening(titulo="Tema", keywords="matematicas", tema="matematicas" ,author="Juan Carlos Alvarez")
# Genera opening para los archivos de LaTeX

@files.each{|a| a.syswrite("\\documentclass[a4paper,12pt]{article}
\\usepackage[utf8x]{inputenc}
\\usepackage{amssymb}
\\usepackage{xlop}
\\usepackage{xcolor}
\\input{longdiv}
\\usepackage{graphicx}
\\usepackage{wrapfig}
\\usepackage{float}
%PDF metadata
\\usepackage[pdftex, 
pdfauthor={#{author}},
pdfsubject={#{tema}},
pdfkeywords={#{keywords}}]{hyperref}
%opening\n")}
#titulos
@files[0].syswrite("\\hypersetup{pdftitle={Tarea #{titulo}} }
\\title{Tarea}\n")
@files[1].syswrite("\\hypersetup{pdftitle={Solucion #{titulo}}}
\\title{Solución}\n")
#latex opening continues
@files.each{|a| a.syswrite("\\author{}
\\date{}
\\begin{document}
\\maketitle\n")}
end #end opening


def self.pagebreak #check
#Salto de pagina
@files.each{|a| a.syswrite("\n \\pagebreak \n")}
end#termina 


def self.closure #check
#salto de paginas
@files.each{|a| a.syswrite("\\end{document}")}
end#termina closure


######################################
#########    ARITMETICA BÁSICA #############
######################################

def self.sumas_uno(n, ins=TRUE)
#
end

def self.sumas_dos(n, ins=TRUE)
#
end

def self.sumas_tes(n, ins=TRUE)
#
end

def self.resta_uno(n, ins=TRUE)
#
end

def self.resta_dos(n, ins=TRUE)
#
end

def self.resta_tes(n, ins=TRUE)
#
end

def self.multiplicacion_uno(n, ins=TRUE)
#
end

def self.multiplicacion_dos(n, ins=TRUE)
#
end

def self.multiplicacion_tres(n, ins=TRUE)
#
end

def self.divicion_uno(n, ins=TRUE)
#
end

def self.divicion_dos(n, ins=TRUE)
#
end

def self.divicion_tres(n, ins=TRUE)
#
end

########################################
#########    ARITMETICA AVANZADA #############
########################################

def self.fracciones_mismo_den(n,  ins=TRUE) #<- hacer para cualquier numero de fracicones
#suma dos fracciones con el mismo denominador

if ins
@files.each{|a| a.syswrite("Suma las fracciones: \\vspace{1cm}\\\\ \n")}
end

a=Random.new 
	for k in 1..n 	
	num1=a.rand(10)+1
	num2=a.rand(10)+1
	den=a.rand(10)+2	
	@files[0].syswrite("#{@c}) $\\frac{#{num1}}{#{den}}+\\frac{#{num2}}{#{den}}=$\\vspace{1cm}\\\\ \n")
	@files[1].syswrite("#{@c}) $\\frac{#{num1}}{#{den}}+\\frac{#{num2}}{#{den}}=\\frac{#{num1+num2}}{#{den}}$\\vspace{1cm}\\\\ \n")
	@c=@c+1
	end# for n
end #termina fracciones_mismo_den

def self.fracciones_diferente_den(n) #<- hacer para cualquier numero de fracciones
#suma 3 fracciones con diferente denominador
a=Random.new 
for k in 1..n
	nums=[a.rand(10)+1, a.rand(10)+1, a.rand(10)+1]
	dens=[a.rand(10)+2, a.rand(10)+2, a.rand(10)+2 ]
	mcm=dens.inject(:lcm)       
	upper=Array.new(3)
        for s in 0..2
		upper[s]=nums[s]*mcm/dens[s]
	end#for s
        sum = 0
        upper.each { |a| sum+=a }

	@files[0].syswrite("#{@c}) $\\frac{#{nums[0]}}{#{dens[0]}}+\\frac{#{nums[1]}}{#{dens[1]}}+\\frac{#{nums[2]}}{#{dens[2]}}  =$\\vspace{1cm}\\\\ \n")
	@files[1].syswrite("#{@c}) $\\frac{#{nums[0]}}{#{dens[0]}}+\\frac{#{nums[1]}}{#{dens[1]}}+\\frac{#{nums[2]}}{#{dens[2]}}  =\\frac{#{upper[0]}+#{upper[1]}+#{upper[2]}}{#{mcm}}= \\frac{#{sum}}{#{mcm}}  $\\vspace{1cm}\\\\ \n")
	@c=@c+1
end# for n

end #termina fracciones_diferente_den


def self.potencias(n,ins=TRUE)
#Expreza numeros exponenciados como multiplicaciones y resuelve.

if ins
@files.each{|a| a.syswrite("Expreza numeros exponenciados como multiplicaciones y resuelve: \\vspace{1cm}\\\\ \n")}
end

a=Random.new
	for j in 1..n 
	exp=a.rand(5)
	base=a.rand(10)

	@files[0].syswrite("#{@c}) $#{base}^#{exp}=$\\vspace{1cm}\\\\ \n")
	@files[1].syswrite("#{@c}) $#{base}^#{exp}=")

	if exp==0
		@files[1].syswrite(" 1$ \\vspace{1cm}\\\\ \n")
	else
		for k in 1..exp-1
			@files[1].syswrite("#{base}\\times ")
		end#for k
		@files[1].syswrite(" #{base}=#{base**exp}$ \\vspace{1cm}\\\\ \n")
	end# if exp==0
	@c=@c+1
end #for j
end#termina potencias


def self.raices_a_potencias(n, ins=TRUE)
#Expreza las raices como exponentes
if ins
@files.each{|a| a.syswrite("Expreza las raíces como exponentes: \\vspace{1cm}\\\\ \n")}
end

a=Random.new
for j in 1..n
	exp=a.rand(10)-5
	base=a.rand(10)
	root=a.rand(5)+1

	@files[0].syswrite("#{@c}) $\\sqrt[#{root}]{#{base}}^{#{exp}}=$\\vspace{1cm}\\\\ \n")
	@files[1].syswrite("#{@c}) $\\sqrt[#{root}]{#{base}}^{#{exp}}=#{base}^\\frac{#{exp}}{#{root} }$\\vspace{1cm}\\\\ \n")
	@c=@c+1
end# for j
end#termina raicrs_a_potencias

def self.potencias_a_fracciones(n) #check
#Expreza las potencias negativas como fracciones
a=Random.new
for j in 1..n
	exp=a.rand(10)+1
	base=a.rand(5)+1

	@files[0].syswrite("#{@c}) $#{base}^{-#{exp}}=$\\vspace{1cm}\\\\ \n")
	@files[1].syswrite("#{@c}) $#{base}^{-#{exp}}=\\frac{1}{#{base}^#{exp}}$\\vspace{1cm}\\\\ \n")
	@c=@c+1
end# for j
end #termina potencias_a_fracciones

def self.suma_exponentes(n, ins=TRUE) #check
#suma de exponentes
if ins
@files.each{|a| a.syswrite("Simplifica las siguientes expresiones: \\vspace{1cm}\\\\ \n")}
end

a=Random.new
for j in 1..n
	exp1=a.rand(14)-7
	exp2=a.rand(14)-7
	base=a.rand(5)+1

	@files[0].syswrite("#{@c}) $(#{base}^{#{exp1}})\\cdot(#{base}^{#{exp2}})=$\\vspace{1cm}\\\\ \n")
	@files[1].syswrite("#{@c}) $(#{base}^{#{exp1}})\\cdot(#{base}^{#{exp2}})=#{base}^{#{exp1+exp2}}$\\vspace{1cm}\\\\ \n")
	@c=@c+1
end# for j
end #termina suma_exponentes



def self.suma_exponentes_con_raices(n, ins=TRUE)#check
#Suma de exponentes con raices
if ins
@files.each{|a| a.syswrite("Expreza como exponentes y simplifica las siguientes expresiones: \\vspace{1cm}\\\\ \n")}
end

a=Random.new
for j in 1..n
	base=a.rand(10)+1
	exp1=a.rand(10)-5
	root1=a.rand(3)+2
	exp2=a.rand(10)-5
	root2=a.rand(3)+2

	mcm=root1.lcm(root2)
	numnew=mcm/root1*exp1+mcm/root2*exp2

	#pregunta
	@files[0].syswrite("#{@c}) $\\sqrt[#{root1}]{#{base}^{#{exp1} } }\\sqrt[#{root2}]{#{base}^{#{exp2}}}=$\\vspace{1cm}\\\\ \n")
	@files[1].syswrite("#{@c}) $\\sqrt[#{root1}]{#{base}^{#{exp1} } }\\sqrt[#{root2}]{#{base}^{#{exp2}}}=")
	#pasos intermedios
	@files[1].syswrite("#{base}^{\\frac{#{exp1}}{#{root1}}}#{base}^{\\frac{#{exp2}}{#{root2}}}=#{base}^{\\frac{ #{exp1} }{ #{root1} }+\\frac{ #{exp2} }{ #{root2} } }=") 
	#respuesta
	 @files[1].syswrite("#{base}^{\\frac{#{numnew}}{#{mcm} }}$\\vspace{1cm}\\\\ \n")
	
	@c=@c+1
end# for j
end #termina suma_exponentes_con_raices



def self.multiplica_exponentes(n, ins=TRUE)#check
#multiplicacion de exponentes

if ins
@files.each{|a| a.syswrite("Simplifica las siguientes expresiones: \\vspace{1cm}\\\\ \n")}
end

a=Random.new
for j in 1..n
	exp1=a.rand(14)-7
	exp2=a.rand(14)-7
	base=a.rand(5)+1

	@files[0].syswrite("#{@c}) $(#{base}^{#{exp1}})^{#{exp2}}=$\\vspace{1cm}\\\\ \n")
	@files[1].syswrite("#{@c}) $(#{base}^{#{exp1}})^{#{exp2}}=#{base}^{#{exp1*exp2}}$\\vspace{1cm}\\\\ \n")
	@c=@c+1
end# for j
end #termina multiplica_exponentes


def self.multiplica_exponentes_raices(n,ins=TRUE)#check
#multiplicacion de exponentes con raices

if ins
@files.each{|a| a.syswrite("Expreza como exponentes y simplifica las siguientes expresiones: \\vspace{1cm}\\\\ \n")}
end

a=Random.new
for j in 1..n
	exp1=a.rand(14)-7
	root=a.rand(3)+2
	exp2=a.rand(14)-7
	base=a.rand(5)+1

	#pregunta
	@files[0].syswrite("#{@c}) $(\\sqrt[#{root}]{#{base}^{#{exp1}}})^{#{exp2}}=$\\vspace{1cm}\\\\ \n")
	@files[1].syswrite("#{@c}) $(\\sqrt[#{root}]{#{base}^{#{exp1}}})^{#{exp2}}=")
	#pasos intermedios
	@files[1].syswrite("(#{base}^{\\frac{#{exp1}}{#{root}} })^{#{exp2}}=")
	#solucion
	@files[1].syswrite("#{base}^{\\frac{#{exp1*exp2}}{#{root}} }$\\vspace{1cm}\\\\ \n")

	@c=@c+1
end# for j
end #termina multiplica_exponentes



def self.raices_cuadradas_babilonico(n, ins=TRUE) #check
#simplifica las raices con el metodo babilonico

if ins
@files.each{|a| a.syswrite("Simplifica las raices con el metodo babilonico: \\vspace{1cm}\\\\ \n")}
end

a=Random.new
for j in 1..n
	base=a.rand(30)+1
	basebk=base

	flag=0
	by4=0
	by9=0
	by25=0

	while(flag==0)
	if (base%4==0)
	base=base/4
	by4=by4+1
	elsif(base%9==0) 
	base=base/9
	by9=by9+1
	elsif(base%25==0)
	base=base/25
	by25=by25+1
	else
	flag=1
	end
	end

	solmul=(2**by4)*(3**by9)*(5**by25)

	@files[0].syswrite("#{@c}) $\\sqrt{#{basebk}}=$\\vspace{1cm}\\\\ \n")
	
	if( base!=basebk)
	@files[1].syswrite("#{@c}) $\\sqrt{#{basebk}}=\\sqrt{#{solmul**2}}\\sqrt{#{base}}=\\sqrt{#{solmul}^2}\\sqrt{#{base}}=#{solmul}\\sqrt{#{base}} $\\vspace{1cm}\\\\ \n")
	else
	@files[1].syswrite("#{@c}) $\\sqrt{#{basebk}}=\\sqrt{#{base}}$\\vspace{1cm}\\\\ \n")
	end

	@c=@c+1
end# for j
end #termina raices_cuadradas_babilonico


def self.logaritmos_exponentes(n, ins=TRUE) #check
#simplifica los logaritmos
if ins
@files.each{|a| a.syswrite("Simplifica los logaritmos: \\vspace{1cm}\\\\ \n")}
end

a=Random.new
for j in 1..n
	base=a.rand(8)+2
	exp=a.rand(2)+2
	
	#pregunta
	@files[0].syswrite("#{@c}) $\\log_#{base}{#{base**exp}}=$\\vspace{1cm}\\\\ \n")
	@files[1].syswrite("#{@c}) $\\log_#{base}{#{base**exp}}=")
	#pasos intermedios
	@files[1].syswrite("\\log_#{base}{#{base}^#{exp} }=#{exp}\\log_#{base}{#{base}}=")
	#solucion
	@files[1].syswrite("#{exp}$\\vspace{1cm}\\\\ \n")

	@c=@c+1
end
end#termina logaritmos_babilonicos_uno

def self.logaritmos_suma_a_multiplicacion(n, ins=TRUE) #check
#simplifica suma de logratitmos es la multiplicacion de sus archumentos

if ins
@files.each{|a| a.syswrite("Simplifica las siguientes sumas de logaritmos: \\vspace{1cm}\\\\ \n")}
end

a=Random.new
for j in 1..n
	base=a.rand(3)+2
	logo1=a.rand(5)+4
	logo2=a.rand(5)+4
	
	#pregunta
	@files[0].syswrite("#{@c}) $\\log_#{base}{#{logo1}}+\\log_#{base}{#{logo2}}=$\\vspace{1cm}\\\\ \n")
	@files[1].syswrite("#{@c}) $\\log_#{base}{#{logo1}}+\\log_#{base}{#{logo2}}=")
	#pasos intermedios
	@files[1].syswrite("\\log_#{base}{(#{logo1}\\cdot#{logo2})}=")
	#solucion
	@files[1].syswrite("\\log_#{base}{#{logo1*logo2} }$\\vspace{1cm}\\\\ \n")

	@c=@c+1
end

end#logaritmos_suma_a_multiplicacion


##############################
#########    ALGEBRA #############
##############################


def self.suma_algebraica_uno(n, ins=TRUE) #check
#suma algebraica de solo letras sin coeficientes
if ins
@files.each{|a| a.syswrite("Realiza las siguientes sumas: \\vspace{1cm}\\\\ \n")}
end
a=Random.new
letras=('a'..'z').to_a
signs=["+","-"]

for i in 1..n
	reps=a.rand(6)+2	
	var=letras[rand(26)]
	cuenta=0

	@files.each{|a| a.syswrite("#{@c})$")}
	for j in 1..reps
	s=signs[rand(2)]
	@files.each{|a| a.syswrite("#{s}#{var}")}
	cuenta=(s+"1").to_i+cuenta	
	end #for j
	
	@files[0].syswrite("=$\\vspace{1cm}\\\\ \n")
	
	if cuenta==0
	@files[1].syswrite("=0$\\vspace{1cm}\\\\ \n")
	elsif  cuenta ==1
	@files[1].syswrite("=#{var}$\\vspace{1cm}\\\\ \n")
	elsif cuenta ==-1
	@files[1].syswrite("=-#{var}$\\vspace{1cm}\\\\ \n")
	else
	@files[1].syswrite("=#{cuenta}#{var}$\\vspace{1cm}\\\\ \n")
	end # if

	@c=@c+1
end #for i 

end#termina suma algebraica_uno

def self.suma_algebraica_dos(n, ins=TRUE) #check
#suma algebraica de solo letras con coeficientes
if ins
@files.each{|a| a.syswrite("Realiza las siguientes sumas: \\vspace{1cm}\\\\ \n")}
end
a=Random.new
letras=('a'..'z').to_a
signs=["+","-"]

for i in 1..n
	reps=a.rand(6)+2	
	var=letras[rand(26)]+"^{"+ (a.rand(3)+2).to_s + "}"	
	cuenta=0

	@files.each{|a| a.syswrite("#{@c})$")}
	for j in 1..reps
	s=signs[rand(2)]
	c=a.rand(8)+2
	@files.each{|a| a.syswrite("#{s}#{c}#{var}")}
	cuenta=(s+"1").to_i*c+cuenta	
	end #for j
	
	@files[0].syswrite("=$\\vspace{1cm}\\\\ \n")
	
	if cuenta==0
	@files[1].syswrite("=0$\\vspace{1cm}\\\\ \n")
	elsif  cuenta ==1
	@files[1].syswrite("=#{var}$\\vspace{1cm}\\\\ \n")
	elsif cuenta ==-1
	@files[1].syswrite("=-#{var}$\\vspace{1cm}\\\\ \n")
	else
	@files[1].syswrite("=#{cuenta}#{var}$\\vspace{1cm}\\\\ \n")
	end # if

	@c=@c+1
end #for i 

end#termina suma algebraica_dos


def self.suma_algebraica_tres(n, ins=TRUE) #check
#suma algebraica de  terminos de dos letras con coeficientes
if ins
@files.each{|a| a.syswrite("Realiza las siguientes sumas: \\vspace{1cm}\\\\ \n")}
end

a=Random.new
letras=('a'..'z').to_a
signs=["+","-"]
for i in 1..n

	var1=letras[rand(10)]+"^{"+(a.rand(4)+2).to_s+"}"+letras[rand(10)+16]
	var2=letras[rand(10)]+"^{"+(a.rand(4)+2).to_s+"}"+letras[rand(10)+16]
	
	coef1=Array.new(a.rand(3)+2){|c| c=(signs[a.rand(2)]+"1").to_i*(a.rand(8)+3)}
	coef2=Array.new(a.rand(3)+2){|c| c= (signs[a.rand(2)]+"1").to_i*(a.rand(8)+3)}

	all=(coef1.collect{|c| c.to_s+var1}+coef2.collect{|c| c.to_s+var2}).shuffle
	
	@files.each{|a| a.syswrite("#{@c})$")}
	@files.each{|a| a.syswrite("#{all[0]}")}
	for i in 1..all.length-1

	if all[i][0]=="-"
	@files.each{|a| a.syswrite("#{all[i]}")}
	else
	@files.each{|a| a.syswrite("+#{all[i]}")}
	end

	end
	@files[0].syswrite("=$\\vspace{1cm}\\\\ \n")

	c1=coef1.inject(:+)
	c2=coef2.inject(:+)

	if c1==0&&c2==0
	@files[1].syswrite("=0$\\vspace{1cm}\\\\ \n")
	elsif  c1==0
	@files[1].syswrite("=#{c2}#{var2}$\\vspace{1cm}\\\\ \n")
	elsif c2==0
	@files[1].syswrite("=#{c1}#{var1}$\\vspace{1cm}\\\\ \n")
	else
	@files[1].syswrite("=#{c1}#{var1}+#{c2}#{var2}$\\vspace{1cm}\\\\ \n")
	end # if

	@c=@c+1
end #for i 

end#termina suma algebraica_tres



def self.multiplicacion_algebraica_uno(n, ins=TRUE) #check
#multiplicacion algebráica de dos monomios letras diferentes con coeficientes y exponentes uno 
if ins
@files.each{|a| a.syswrite("Realiza las siguientes multiplicaciones: \\vspace{1cm}\\\\ \n")}
end
a=Random.new
letras=('a'..'z').to_a
signs=["+","-"]

for i in 1..n
	s=[signs[a.rand(2)],  signs[a.rand(2)]]
	c=[a.rand(8)+2,  a.rand(8)+2]
	b=letras.sample(2)
	
	@files.each{|a| a.syswrite("#{@c})$")}
	@files.each{|a| a.syswrite("(#{s[0]}#{c[0]}#{b[0]})(#{s[1]}#{c[1]}#{b[1]})")}
	@files[0].syswrite("=$\\vspace{1cm}\\\\ \n")

	cr=((s[0]+c[0].to_s).to_i)*((s[1]+c[1].to_s).to_i)	

	@files[1].syswrite("=#{cr}#{b[0]}#{b[1]} $\\vspace{1cm}\\\\ \n")
	@c=@c+1
end #for i 

end#termina multiplicacion_algebraica_uno


def self.multiplicacion_algebraica_dos(n, ins=TRUE) #check
#multiplicacion algebráica de dos monomios letras iguales con coeficientes y exponentes 
if ins
@files.each{|a| a.syswrite("Realiza las siguientes multiplicaciones: \\vspace{1cm}\\\\ \n")}
end
a=Random.new
letras=('a'..'z').to_a
signs=["+","-"]

for i in 1..n
	s=[signs[a.rand(2)],  signs[a.rand(2)]]
	e=[(a.rand(4)+2)*(signs[a.rand(2)]+"1").to_i,  (a.rand(4)+2)*(signs[a.rand(2)]+"1").to_i]	
	c=[a.rand(8)+2,  a.rand(8)+2]
	b=letras.sample
	latex=[s[0]+c[0].to_s+b+"^{"+e[0].to_s+"}", s[1]+c[1].to_s+b+"^{"+e[1].to_s+"}"]

	@files.each{|a| a.syswrite("#{@c})$")}
	@files.each{|a| a.syswrite("(#{latex[0]})(#{latex[1]} )")}
	@files[0].syswrite("=$\\vspace{1cm}\\\\ \n")

	cr=((s[0]+c[0].to_s).to_i)*((s[1]+c[1].to_s).to_i)	
	er=e[0]+e[1]

	if er==0
	@files[1].syswrite("=#{cr}#{b}^{#{er}}=#{cr} $\\vspace{1cm}\\\\ \n")
	elsif er==1
	@files[1].syswrite("=#{cr}#{b} $\\vspace{1cm}\\\\ \n")
	else
	@files[1].syswrite("=#{cr}#{b}^{#{er}} $\\vspace{1cm}\\\\ \n")
	end

	@c=@c+1
end #for i 

end#termina multiplicacion_algebraica_dos


def self.multiplicacion_algebraica_tres(n, ins=TRUE) #check
#multiplicacion algebráica de monomio por binomio letras iguales con coeficientes y exponentes 
if ins
@files.each{|a| a.syswrite("Realiza las siguientes multiplicaciones: \\vspace{1cm}\\\\ \n")}
end
a=Random.new
letras=('a'..'z').to_a
signs=["+","-"]

for i in 1..n
	s=Array.new(3){|ss|  ss=signs[a.rand(2)]} 
	e=Array.new(3){|es| es=(a.rand(4)+2)*(signs[a.rand(2)]+"1").to_i }
	c=Array.new(3){|cs| cs=a.rand(8)+2}
	b=Array.new(3){|bs| bs=letras.sample}
	cs=Array.new(3)	
	latex=Array.new(3)
	
	for i in 0..2
	latex[i]=s[i]+c[i].to_s+b[i]+"^{"+e[i].to_s+"}"
	cs[i]=(s[i]+c[i].to_s).to_i
	end


	@files.each{|a| a.syswrite("#{@c})$")}
	@files.each{|a| a.syswrite("(#{latex[0]})(#{latex[1]}+#{latex[2]} )")}
	@files[0].syswrite("=$\\vspace{1cm}\\\\ \n")

	cr=[cs[0]*cs[1],cs[0]*cs[2]]	

	er=Array.new(2)
	latexr=Array.new(2)
	if b[0]==b[1]
	latexr[0]=cr[0].to_s+b[0]+"^{"+(e[0]+e[1]).to_s+"}"
	latexr[1]=cr[1].to_s+b[0]+"^{"+e[0].to_s+"}"+b[2]+"^{"+e[2].to_s+"}"
	elsif b[0]==b[2]
	latexr[0]=cr[0].to_s+b[0]+"^{"+e[0].to_s+"}"+b[1]+"^{"+e[1].to_s+"}"
	latexr[1]=cr[1].to_s+b[0]+"^{"+(e[0]+e[2]).to_s+"}"
	else
	latexr[0]=cr[0].to_s+b[0]+"^{"+e[0].to_s+"}"+b[1]+"^{"+e[1].to_s+"}"	
	latexr[1]=cr[1].to_s+b[0]+"^{"+e[0].to_s+"}"+b[2]+"^{"+e[2].to_s+"}"
	end

	
	@files[1].syswrite("= #{latexr[0]}#{latexr[1]}   $\\vspace{1cm}\\\\ \n")
	
	@c=@c+1
end #for i 

end#termina multiplicacion_algebraica_tres



def self.multiplicacion_algebraica_cuatro(n, ins=TRUE) #check
#multiplicacion algebráica binomio por binomio letras diferentes  
if ins
@files.each{|a| a.syswrite("Realiza las siguientes multiplicaciones: \\vspace{1cm}\\\\ \n")}
end
a=Random.new
letras=('a'..'z').to_a
signs=["+","-"]

for i in 1..n
	s=Array.new(4){|ss|  ss=signs[a.rand(2)]} 
	e=Array.new(4){|es| es=(a.rand(4)+2)*(signs[a.rand(2)]+"1").to_i }
	c=Array.new(4){|cs| cs=a.rand(8)+2}
	b=letras.sample(4)
	cs=Array.new(4)	
	latex=Array.new(4)
	
	for i in 0..3
	cs[i]=(s[i]+c[i].to_s).to_i	
	latex[i]=s[i]+c[i].to_s+b[i]+"^{"+e[i].to_s+"}"	
	end


	@files.each{|a| a.syswrite("#{@c})$")}
	@files.each{|a| a.syswrite("(#{latex[0]}#{latex[1]} )(#{latex[2]}#{latex[3]} )")}
	@files[0].syswrite("=$\\vspace{1cm}\\\\ \n")

	cr=[cs[0],cs[1]].product([cs[2], cs[3]]).collect{ |x| x.inject(:*)  }	
	br=[b[0],b[1]].product([b[2], b[3]]).collect{ |x| x.inject(:+)  }
	er=[e[0],e[1]].product([e[2], e[3]])

	latexr=Array.new(2)
	@files[1].syswrite("= ")
	for i in 0..3	
	cr[i]>0 ? sg="+": sg=""
	latexr[i]=sg+cr[i].to_s+br[i][0]+"^{"+er[i][0].to_s+"}"+br[i][1]+"^{"+er[i][1].to_s+"}"	
	@files[1].syswrite("#{latexr[i]}")	
	end	
	@files[1].syswrite("$\\vspace{1cm}\\\\ \n")	

	@c=@c+1
end #for i 

end#termina multiplicacion_algebraica_cuatro


def self.multiplicacion_binomio_cuadrado(n, ins=TRUE) #check
#multiplicacion algebráica binomio al cuadrado
if ins
@files.each{|a| a.syswrite("Eleva al cuadrado los siguientes binomios: \\vspace{1cm}\\\\ \n")}
end

for i in 1..n
a=Random.new
letras=('a'..'z').to_a
signs=["+","-"]
base=letras.sample(2)
exp1=a.rand(8)+2
exp2=a.rand(8)+2

##NumAlg.new(sign,coef,base,exp)
alg1=NumAlg.new(signs[a.rand(2)],a.rand(8)+2,[base[0]],[exp1])
alg2=NumAlg.new(signs[a.rand(2)],a.rand(8)+2,[base[1]],[exp2])

@files.each{|a| a.syswrite("#{@c})$")}
@files.each{|a| a.syswrite("(#{alg1.lx}#{alg2.lx})^2=")}
@files[0].syswrite("$\\vspace{1cm}\\\\ \n")

ab=alg1.mult(alg2)
c=ab.coef
ab.coef=2*c
ab=ab.refresh

@files[1].syswrite("#{alg1. mult(alg1).lx} #{ab.lx} #{alg2. mult(alg2).lx}$\\vspace{1cm}\\\\ \n")
@c=@c+1
end

end#termina multiplicacion_binomio_cuadrado


def self.multiplicacion_binomios_conjugados(n, ins=TRUE) #check
#multiplicacion algebráica binomio al cuadrado
if ins
@files.each{|a| a.syswrite("Multiplica los siguientes binomios: \\vspace{1cm}\\\\ \n")}
end

for i in 1..n
a=Random.new
letras=('a'..'z').to_a
signs=["+","+"]

base=letras.sample(2)
exp1=a.rand(8)+2
exp2=a.rand(8)+2

##NumAlg.new(sign,coef,base,exp)
alg1=NumAlg.new(signs[a.rand(2)],a.rand(8)+2,[base[0]],[exp1])
alg2=NumAlg.new(signs[a.rand(2)],a.rand(8)+2,[base[1]],[exp2])

alg3=alg2.refresh
alg3.sign="-"
alg3=alg3.refresh

@files.each{|a| a.syswrite("#{@c})$")}

@files.each{|a| a.syswrite("(#{alg1.lx}#{alg2.lx})(#{alg1.lx}#{alg3.lx})=")}
@files[0].syswrite("$\\vspace{1cm}\\\\ \n")


@files[1].syswrite("#{alg1. mult(alg1).lx} #{alg2. mult(alg3).lx}$\\vspace{1cm}\\\\ \n")
@c=@c+1
end

end#termina multiplicacion_binomios_conjugados

def self.multiplicacion_binomios_especial(n, ins=TRUE) #check
#multiplicacion algebráica binomio al cuadrado
if ins
@files.each{|a| a.syswrite("Multiplica los siguientes binomios: \\vspace{1cm}\\\\ \n")}
end

for i in 1..n
a=Random.new
letras=('a'..'z').to_a
signs=["+","-"]

base=letras.sample(2)
exp1=a.rand(8)+2
exp2=a.rand(8)+2

##NumAlg.new(sign,coef,base,exp)
alg1=NumAlg.new(signs[a.rand(2)],a.rand(8)+2,[base[0]],[exp1])
alg2=NumAlg.new(signs[a.rand(2)],a.rand(8)+2,[base[1]],[exp2])
alg3=NumAlg.new(signs[a.rand(2)],a.rand(8)+2,[base[0]],[exp1])
alg4=NumAlg.new(signs[a.rand(2)],a.rand(8)+2,[base[1]],[exp2])



@files.each{|a| a.syswrite("#{@c})$")}

@files.each{|a| a.syswrite("(#{alg1.lx}#{alg2.lx})(#{alg3.lx}#{alg4.lx})=")}
@files[0].syswrite("$\\vspace{1cm}\\\\ \n")

sol1=alg1.mult(alg4)
sol2=alg2.mult(alg3)
sol3=sol1.sum(sol2)

@files[1].syswrite("#{alg1. mult(alg3).lx}#{sol3.lx}#{alg2. mult(alg4).lx}$\\vspace{1cm}\\\\ \n")
@c=@c+1
end

end#termina multiplicacion_binomios_conjugados


def self.ecuaciones_simultaneas(n, ins=TRUE) #check
#Ecuaciones simultaneas lineales
if ins
@files.each{|a| a.syswrite("Resuelve los siguientes sistemas de ecuaciones: \\vspace{1cm}\\\\ \n")}
end
for i in 1..n

a=Random.new
base=["x","y"]
signs=["+","-"]
exp=""


##NumAlg.new(sign,coef,base,exp)
x1=NumAlg.new(signs[a.rand(2)],a.rand(8)+2,[base[0]],[exp])
y1=NumAlg.new(signs[a.rand(2)],a.rand(8)+2,[base[1]],[exp])
x2=NumAlg.new(signs[a.rand(2)],a.rand(8)+2,[base[0]],[exp])
y2=NumAlg.new(signs[a.rand(2)],a.rand(8)+2,[base[1]],[exp])
c1=a.rand(20)-10
c2=a.rand(20)-10

m=Matrix[ [x1.coef, y1.coef], [x2.coef, y2.coef] ]
c=Matrix[ [c1], [c2] ]

det=m.det
if det !=0
inv=m.inv
sol=m*c
end

@files.each{|a| a.syswrite("#{@c}) \\hspace\{.3cm\}$
\\left\\{
\\begin\{array\}\{l\}
#{x1.lx}#{y1.lx}=#{c1}\\\\
#{x2.lx}#{y2.lx}=#{c2}\\\\
\\end\{array\}
\\right.
$\\\\ \n")}
@files[0].syswrite("\\vspace{5cm}\\\\ \n")	
if det !=0
@files[1].syswrite(
"
\\vspace\{0.5cm\}
$\\left[
\\begin\{array\}\{c\}
x\\\\
y \\\\
\\end\{array\}
\\right]
=
\\frac\{1\}\{#{det}\}
\\left[
\\begin\{array\}\{cc\}
#{x1.coef} & #{y1.coef} \\\\
#{x2.coef} & #{y2.coef} \\\\
\\end\{array\}
\\right]
\\left[
\\begin\{array\}\{c}\
#{c1}\\\\
#{c2}\\\\
\\end\{array\}
\\right]$
\\vspace{0.5cm}\\\\ \n
\\fbox\{ x=#{sol[0,0]},  y=#{sol[1,0]}\}\\\\
\\vspace{0.5cm}\\\\ \n"
)
else
@files[1].syswrite("el sistema no tiene solución")
end

@c=@c+1
end

end#termina ecuaciones_simultaneas


def self.raices_cuadraticas(n, ins=TRUE) #check
#Ecuaciones simultaneas lineales
if ins
@files.each{|a| a.syswrite("Encuentra las raices de los siguientes polinomios: \\vspace{1cm}\\\\ \n")}
end

for i in 1..n
r=Random.new
base=["x"]
signs=["+","-"]
exp=""

##NumAlg.new(sign,coef,base,exp)
x2=NumAlg.new(signs[r.rand(2)],r.rand(8)+2,base,[2])
x1=NumAlg.new(signs[r.rand(2)],r.rand(8)+2,base,[1])

a=x2.coef
b=x1.coef
c=r.rand(20)-10


root1=-b+CMath.sqrt(b**2-4*a*c)/(2*a)
root2=-b-CMath.sqrt(b**2-4*a*c)/(2*a)

c>0 ? cs="+#{c}" : cs=c  


@files.each{|a| a.syswrite("#{@c}) $ #{x2.lx}#{x1.lx}#{cs}$ ")}
@files[0].syswrite("\\vspace{3cm}\\\\ \n")	
@files[1].syswrite("
\\vspace{0.5cm}\\\\ 
$\\frac\{-(#{b})\\pm\\sqrt\{#{b}^2-4(#{a})(#{cs})\}  \}\{2(#{a})\}$
\\vspace{0.5cm}\\\\
$x_1=#{root1}$\\\\
$x_2=#{root2}$
\\vspace{1cm}\\\\ \n")	



@c=@c+1
end
end# termina raices_cuadraticas









end# termina clase ejercicios








