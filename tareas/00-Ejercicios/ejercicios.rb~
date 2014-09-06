
#file[0]=File.new("tarea-fracciones.tex","w+")
#file[1]=File.new("solucion-fracciones.tex","w+")
#latex opening


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


def self.opening(titulo="Tarea", keywords="matematicas", tema="matematicas" ,author="Juan Carlos Alvarez")

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

################################

def self.sumas_uno()
#
end

def self.sumas_dos()
#
end

def self.sumas_tes()
#
end

def self.resta_uno()
#
end

def self.resta_dos()
#
end

def self.resta_tes()
#
end

def self.multiplicacion_uno()
#
end

def self.multiplicacion_dos()
#
end

def self.multiplicacion_tres()
#
end

def self.divicion_uno()
#
end

def self.divicion_dos()
#
end

def self.divicion_tres()
#
end

def self.fracciones_mismo_den(n) #<- hacer para cualquier numero de fracicones
#suma dos fracciones con el mismo denominador
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


def self.potencias(n)
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


def self.raices_a_potencias(n)
#Expreza las raices como exponentes
a=Random.new
for j in 1..n
	exp=a.rand(10)-5
	base=a.rand(10)
	root=a.rand(5)+1

	@files[0].syswrite("#{@c}) $\\sqrt[#{root}]{#{base}}^#{exp}=$\\vspace{1cm}\\\\ \n")
	@files[1].syswrite("#{@c}) $\\sqrt[#{root}]{#{base}}^#{exp}=#{base}^\\frac{#{exp}}{#{root} }$\\vspace{1cm}\\\\ \n")
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

def self.suma_exponentes(n) #check
#Suma de exponentes
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



def self.suma_exponentes_con_raices(n)#check
#Suma de exponentes con raices
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



def self.multiplica_exponentes(n)#check
#multiplicacion de exponentes
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


def self.multiplica_exponentes_raices(n)#check
#multiplicacion de exponentes con raices
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




def self.raices_cuadradas_babilonico(n) #check
#simplifica las raices con el metodo babilonico
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


def self.logaritmos_exponentes(n) #check
#simplifica los logaritmos
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

def self.logaritmos_suma_a_multiplicacion(n) #check
#simplifica suma de logratitmos es la multiplicacion de sus archumentos
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















def self.pagebreak #check
@files.each{|a| a.syswrite("\n \\pagebreak \n")}
end#termina 


def self.closure() #check
@files.each{|a| a.syswrite("\\end{document}")}
end#termina closure



end# termina clase ejercicios








