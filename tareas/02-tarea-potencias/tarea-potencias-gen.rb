file=Array.new(2)
file[0]=File.new("tarea-potencias.tex","w+")
file[1]=File.new("solucion-potencias.tex","w+")

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
pdfsubject={matematicas, negativos y positivos},
pdfkeywords={negativos, positivos, sumas}]{hyperref}
%opening\n")}

file[0].syswrite("\\hypersetup{pdftitle={Tarea negativos y positivos}}
\\title{Tarea}\n")
file[1].syswrite("\\hypersetup{pdftitle={Solucion tarea negativos y positivos}}
\\title{Solución}\n")

file.each{|a| a.syswrite("\\author{}
\\date{}
\\begin{document}
\\maketitle\n")}

b=Random.new 
a=Random.new
c=Random.new

file.each{|a| a.syswrite(" Expreza como multiplicación y  resuelve.\n")}
file.each{|a| a.syswrite(" Ejemplo: $2^3=2 \\times 2 \\times 2 = 8$  \\vspace{0.5cm}\\\\ \n")}

for i in 1..5 #dias de ejercicio
  for j in 1..5 #ejercicios por dia
exp=a.rand(5)
base=b.rand(10)

file[0].syswrite("#{j}) $#{base}^#{exp}=$\\vspace{1cm}\\\\ \n")
file[1].syswrite("#{j}) $#{base}^#{exp}=")

if exp==0
file[1].syswrite(" 1$ \\vspace{1cm}\\\\ \n")
else
for k in 1..exp-1
file[1].syswrite("#{base}\\times ")
end#for k
file[1].syswrite(" #{base}=#{base**exp}$ \\vspace{1cm}\\\\ \n")
end# if exp==0

end #for j

### Ejercicios de raices.
file.each{|a| a.syswrite(" Expreza como exponentes.\n")}
file.each{|a| a.syswrite(" Ejemplo: $\\sqrt[3]{5^2}=5^\\frac{5}{3} $  \\vspace{0.5cm}\\\\ \n")}

for j in 6..10 # numero de ejercicios por dia
exp=a.rand(10)-5
base=b.rand(10)
root=c.rand(5)+1

file[0].syswrite("#{j}) $\\sqrt[#{root}]{#{base}}^#{exp}=$\\vspace{1cm}\\\\ \n")
file[1].syswrite("#{j}) $\\sqrt[#{root}]{#{base}}^#{exp}=#{base}^\\frac{#{exp}}{#{root} }$\\vspace{1cm}\\\\ \n")
end# for j

file.each{|a| a.syswrite("\n \\pagebreak \n")}
end #for i

file.each{|a| a.syswrite("\\end{document}")}
















