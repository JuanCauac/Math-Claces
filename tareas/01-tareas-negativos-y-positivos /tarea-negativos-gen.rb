tarea=File.new("tarea.tex","w")
solucion=File.new("solucion.tex","w")

tarea.syswrite("
\\documentclass[a4paper,10pt]{article}\n
\\usepackage[utf8x]{inputenc}\n
\\usepackage{amssymb}\n
\\usepackage{xlop}\n
\\usepackage{xcolor}\n
\\input{longdiv}\n
\\usepackage{graphicx}\n
\\usepackage{wrapfig}\n
\\usepackage{float}\n
%PDF meta data
\\usepackage[pdftex,
            pdfauthor={Juan Carlos Alvarez},
            pdftitle={Tarea negativos y positivos},
            pdfsubject={matematicas, negativos y positivos},
            pdfkeywords={negativos, positivos, sumas}]{hyperref}
%opening\n
\\title{Tarea}\n
\\author{}\n
\\date{}\n
\\begin{document}\n
\\maketitle\n")

solucion.syswrite("
\\documentclass[a4paper,10pt]{article}
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
            pdftitle={Solucion tarea negativos y positivos},
            pdfsubject={matematicas, negativos y positivos},
            pdfkeywords={negativos, positivos, sumas}]{hyperref}
%opening
\\title{Solución}
\\author{}
\\date{}
\\begin{document}
\\maketitle\nx")

b=Random.new 
a=Random.new

for k in 0..4
for i in 0..14  
c=a.rand(20) - 10
tarea.syswrite("#{i+1})   ")
solucion.syswrite("#{i+1})   ")

tarea.syswrite("#{c}+")
solucion.syswrite("#{c}+")
 
  for j in 0..b.rand(3)+1
d=a.rand(20) - 10
c=d+c 
tarea.syswrite("(#{d})+")
solucion.syswrite("(#{d})+")
	end
tarea.syswrite("=\n\\vspace{0.5cm}\\\\")
solucion.syswrite("=#{c}\n\\vspace{0.5cm}\\\\")

end
#multiplicaciones
for i in 0..14  
c=a.rand(20) - 10
tarea.syswrite("#{i+16})   ")
solucion.syswrite("#{i+16})   ")

tarea.syswrite("#{c}$\\cdot$")
solucion.syswrite("#{c}$\\cdot$")
 
for j in 0..b.rand(2)
d=a.rand(20) - 10
c=d*c 
tarea.syswrite("(#{d}) $\\cdot$")
solucion.syswrite("(#{d})$\\cdot$")
end
tarea.syswrite("=\n\\vspace{0.5cm}\\\\")
solucion.syswrite("=#{c}\n\\vspace{0.5cm}\\\\")
end

tarea.syswrite("\\pagebreak\n\n")
solucion.syswrite("\\pagebreak\n\n")
###########

end

tarea.syswrite("\\end{document}")
solucion.syswrite("\\end{document}")





