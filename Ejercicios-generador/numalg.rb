
class NumAlg

attr_accessor :sign, :base, :exp, :coef, :lx

def initialize(sign,coef,base,exp)

@sign=sign
@base=base
@exp=exp
@coef=coef

s="" 

for i in 0..base.length-1
s=s+"#{coef}"+"#{base[i]}^#{exp[i]}"
end
@lx=sign+s
end


def initialize(lx)
@lx=lx

lx[0].ord==45? @sign="-" : @sign="+"

@coef=""
lx.chars.each{|a|  
if (a.ord>47 && a.ord <58)
@coef=@coef+a
elsif


}




for i in 2..lx.length-1
if lx[i]=="^"
elsif lx[]

end

end




end
