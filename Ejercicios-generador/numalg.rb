
class NumAlg

attr_accessor :sign, :base, :exp, :coef, :lx

# sign -> string
#base -> string
#exp ->  num
#coef -> num
#lx  -> string

def coef
(@sign+@coef.to_s).to_i
end


def initialize(sign,coef,base,exp)
#inicializa un número algebráicio
@sign=sign
@base=base
@exp=exp
@coef=coef.abs

s="" 

s="#{coef.abs}"
for i in 0..base.length-1
	if exp[i]==1
	s=s+"#{base[i]}^{}"
	else
	s=s+"#{base[i]}^{#{exp[i]}}"	
	end
end
@lx=sign+s

end# fin initialize

def refresh
NumAlg.new(@sign, @coef ,@base,@exp)
end



def self.latex(lx)
#inicializa un número algebráicio a partir de un string latex

#revisamos signos
if /[+-]/.match(lx) == nil
sign = "+" 
else
sign=/[+-]/.match(lx)[0]
end	

#revisamos coeficientes
coef=/.(\d*)/.match(lx)[0].to_i

#revisamos bases
base=Array.new
lx.gsub(/\w(?=\^{)/){|s| base << s}


#Revisamos exponentes
exp=Array.new
lx.gsub(/(?<=\^{)\W*\w*(?=})/){|s| exp << s}
exp.map!{|e|   e=="" ? e=1 : e.to_i }

a=NumAlg.new(sign, coef ,base,exp)

end# fin initialize


def sum(a)
if  @base.sort==a.base.sort && @exp.sort==a.exp.sort
new=(@sign+@coef.to_s).to_i+(a.sign+a.coef.to_s).to_i
new<0? s="-": s="+"
NumAlg.new(s, new.abs ,base,exp)
else
Poli.binomio(a,self)
end#if 


end #termina suma


def mult(a)
a.sign== @sign ? sign_new="+": sign_new="-"

coef_new = self.coef*a.coef

base_new=a.base|self.base

exp_new=Array.new(base_new.length)

base_new.each{ |b| 
	if a.base.include?(b) && @base.include?(b)
	in_a=a.base.index(b)
	in_s=@base.index(b)
	exp_new[base_new.index(b)] = a.exp[in_a]+@exp[in_s]
	else
	in_new=base_new.index(b)
	a.base.include?(b) ? exp_new[in_new]=a.exp[a.base.index(b)] : exp_new[in_new]=@exp[@base.index(b)]
	end# termina if
}#termina each

NumAlg.new(sign_new,coef_new, base_new,exp_new)

end#termina mult

end #termina numalg
#######################################################
class Poli
attr_accessor :arreglo, :lx

def initialize(arr,lx)
@arreglo=arr
@lx=lx
end


def self.binomio(a,b)
Poli.new([a,b] ,a.lx+b.lx)
end



end

















