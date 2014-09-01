file=Array.new(2)
file[0]=File.new("tarea-fracciones.tex","w+")
file[1]=File.new("solucion-fracciones.tex","w+")
#latex opening
file.each{|a| a.syswrite("\\documentclass[a4paper,12pt]{article}
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
pdfauthor={Juan Carlos Alvarez},
pdfsubject={matematicas, suma de fracciones},
pdfkeywords={negativos, suma, resta, fracciones}]{hyperref}
%opening\n")}
#titulos
file[0].syswrite("\\hypersetup{pdftitle={Tarea suma de fracciones}}
\\title{Tarea}\n")
file[1].syswrite("\\hypersetup{pdftitle={Solucion tarea suma de fracciones}}
\\title{Solución}\n")
#latex opening continues
file.each{|a| a.syswrite("\\author{}
\\date{}
\\begin{document}
\\maketitle\n")}

a=Random.new 
b=Random.new
c=Random.new


for i in 1..5 #dias de ejercicio
file.each{|a| a.syswrite(" Suma  y resta las fracciones\\vspace{1cm}\\\\ \n")}
	
	for k in 1..2 #mismo denominador	
	num1=a.rand(10)+1
	num2=b.rand(10)+1
	den=c.rand(10)+2	
	file[0].syswrite("#{k}) $\\frac{#{num1}}{#{den}}+\\frac{#{num2}}{#{den}}=$\\vspace{1cm}\\\\ \n")
	file[1].syswrite("#{k}) $\\frac{#{num1}}{#{den}}+\\frac{#{num2}}{#{den}}=\\frac{#{num1+num2}}{#{den}}$\\vspace{1cm}\\\\ \n")
	end# for k

	
	for k in 3..5 #diferente denominador
	nums=[b.rand(10)+1, b.rand(10)+1, b.rand(10)+1]
	dens=[a.rand(10)+2, a.rand(10)+2, a.rand(10)+2 ]
	mcm=dens.inject(:lcm)       
	 upper=Array.new(3)
        for s in 0..2
	upper[s]=nums[s]*mcm/dens[s]
	end
        sum=sum = 0
        upper.each { |a| sum+=a }

	file[0].syswrite("#{k}) $\\frac{#{nums[0]}}{#{dens[0]}}+\\frac{#{nums[1]}}{#{dens[1]}}+\\frac{#{nums[2]}}{#{dens[2]}}  =$\\vspace{1cm}\\\\ \n")
	
	file[1].syswrite("#{k}) $\\frac{#{nums[0]}}{#{dens[0]}}+\\frac{#{nums[1]}}{#{dens[1]}}+\\frac{#{nums[2]}}{#{dens[2]}}  =\\frac{#{upper[0]}+#{upper[1]}+#{upper[2]}}{#{mcm}}= \\frac{#{sum}}{#{mcm}}  $\\vspace{1cm}\\\\ \n")
	
end# for k


file.each{|a| a.syswrite("\n \\pagebreak \n")}

end #for i

file.each{|a| a.syswrite("\\end{document}")}















