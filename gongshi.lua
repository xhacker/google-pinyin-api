-- encoding: UTF-8

------------------------------------------------
-- 谷歌拼音数学公式扩展
-- 版本: 0.1
-- 作者: Mike
-- 项目主页: http://code.google.com/p/google-pinyin-api/
--
-- 此扩展遵循GPLv3发布
------------------------------------------------

function liangjiaohe (input)
     if input == "a" then
             return {
            {["suggest"] = "a", ["help"] = "sin(A+B)"},
            {["suggest"] = "b", ["help"] = "sin(A-B)"},
            {["suggest"] = "c", ["help"] = "cos(A+B)"},
            {["suggest"] = "d", ["help"] = "cos(A-B)"},
            {["suggest"] = "e", ["help"] = "tan(A+B)"},
            {["suggest"] = "f", ["help"] = "tan(A-B)"},
            {["suggest"] = "g", ["help"] = "ctg(A+B)"},
            {["suggest"] = "h", ["help"] = "ctg(A-B)"},
       }
   end
end


function beijiao (input)
    if input == "b" then
        return {
            {["suggest"] = "a", ["help"] = "sin2A"},
            {["suggest"] = "b", ["help"] = "cos2A"},
            {["suggest"] = "c", ["help"] = "tag2A)"},
            {["suggest"] = "d", ["help"] = "ctg2A"},
       }
    end
end


function banjiao (input)
    if input == "c" then
        return {
            {["suggest"] = "a", ["help"] = "sin(A/2)"},
            {["suggest"] = "b", ["help"] = "cos(A/2)"},
            {["suggest"] = "c", ["help"] = "tag(A/2))"},
            {["suggest"] = "d", ["help"] = "ctg(A/2)"},
       }
    end
end



function hechahuaji (input)
    if input == "d" then
        return {
            {["suggest"] = "a", ["help"] = "sinA+sinB"},
            {["suggest"] = "b", ["help"] = "sinA-sinB"},
            {["suggest"] = "c", ["help"] = "cosA+cosB"},
            {["suggest"] = "d", ["help"] = "cosA-cosB"},
       }
    end
end

function jihuahecha (input)
    if input == "e" then
        return {
            {["suggest"] = "a", ["help"] = "sinAcosB"},
            {["suggest"] = "b", ["help"] = "cosAsinB"},
            {["suggest"] = "c", ["help"] = "sinAsinB"},
            {["suggest"] = "d", ["help"] = "cosAcosB"},
       }
    end
end

function wanneng (input)
    if input == "f" then
        return {
            {["suggest"] = "a", ["help"] = "sinA"},
            {["suggest"] = "b", ["help"] = "cosA"},
            {["suggest"] = "c", ["help"] = "tagA"},
       }
    end
end

function sanjiao (input)
    if #input == 0 then
        return {
            {["suggest"] = "a", ["help"] = "两角和公式"},
            {["suggest"] = "b", ["help"] = "倍角公式"},
            {["suggest"] = "c", ["help"] = "半角公式"},
            {["suggest"] = "d", ["help"] = "和差化积"},
            {["suggest"] = "e", ["help"] = "积化和差"},
            {["suggest"] = "f", ["help"] = "万能公式"},
       }
       
    elseif input == "a" then
        return liangjiaohe(input)
    elseif input == "aa" then
        return "sin(A+B)=sinAcosB+cosAsinB"
    elseif input == "ab" then
        return "sin(A-B)=sinAcosB-sinBcosA"
    elseif input == "ac" then
        return "cos(A+B)=cosAcosB-sinAsinB"
    elseif input == "ad"  then
        return "cos(A-B)=cosAcosB+sinAsinB"
    elseif input == "ae"  then
        return "tan(A+B)=(tanA+tanB)/(1-tanAtanB)"
    elseif input == "af"  then
        return "tan(A-B)=(tanA-tanB)/(1+tanAtanB)"
    elseif input == "ag"  then
        return "ctg(A+B)=(ctgActgB-1)/(ctgB+ctgA)"
    elseif input == "ah"  then
        return "ctg(A-B)=(ctgActgB+1)/(ctgB-ctgA)"      
        
    elseif input == "b" then
        return beijiao(input)
    elseif input == "ba" then
        return "sin(A-B)=2sinAcosA"
    elseif input == "bb" then
        return "cos2A=(cosA)^2-(sinA)^2=2(cosA)^2-1=1-2(sinA)^2"
    elseif input == "bc" then
        return "tag2A=2tanA/[1-(tanA)^2]"
    elseif input == "bd" then
        return "ctg2A=[ctgA)^2-1]/2ctgA"
        
    elseif input == "c" then
        return banjiao(input)
    elseif input == "ca"  then
        return "sin(A/2)=√[(1-cosA)/2]"
    elseif input == "cb"  then
        return "cos(A/2)=√[(1+cosA)/2]"
    elseif input == "cc"  then
        return "tan(A/2)=√[(1-cosA)/(1+cosA)]"
    elseif input == "cd"  then
        return "ctg(A/2)=√[(1+cosA)/(1-cosA)]"
        
     elseif input == "d"  then
        return hechaohuaji(input)
     elseif input == "da"  then
        return "sinA+sinB=2sin[(A+B)/2]cos[(A-B)/2]"
    elseif input == "db"  then
        return "sinA-sinB=2cos[(A+B)/2]sin[(A-B)/2]"
    elseif input == "dc"  then
        return "cosA+cosB=2cos[(A+B)/2]cos[(A-B)/2]"
    elseif input == "dd"  then
        return "cosA-cosB=-2sin[(A+B)/2]sin[(A-B)/2] "

     elseif input == "e"  then
        return hechaohuaji(input)
     elseif input == "ea"  then
        return "sinAcosB=(1/2)[sin(A+B)+sin(A-B)]"
    elseif input == "eb"  then
        return "cosAsinB=(1/2)[sin(A+B)-sin(A-B)]"
    elseif input == "ec"  then
        return "sinAsinB=-(1/2)[cos(A+B)-cos(A-B)]"
    elseif input == "ed"  then
        return "cosAcosB=(1/2)[cos(A+B)+cos(A-B)]"

     elseif input == "f"  then
        return wanneng(input)
     elseif input == "fa"  then
        return "sinA=2tan(A/2)/[1+tan^2(A/2)]"
    elseif input == "fb"  then
        return "cosA=[1-tan^2(A/2)]/[1+tan^2(A/2)]"
    elseif input == "fc"  then
        return "tanA=2tan(A/2)/[1-tan^2(A/2)]"
        
   end
end





function daoshu (input)
    if #input == 0 then
        return {
            {["suggest"] = "a", ["help"] = "C(常数)"},
            {["suggest"] = "b", ["help"] = "x^a"},
            {["suggest"] = "c", ["help"] = "a^x"},
            {["suggest"] = "d", ["help"] = "e^x"},
            {["suggest"] = "e", ["help"] = "loga(x)"},
            {["suggest"] = "f", ["help"] = "lnx"},
            {["suggest"] = "g", ["help"] = "sinx"},
            {["suggest"] = "h", ["help"] = "cosx"},
            {["suggest"] = "l", ["help"] = "tagx"},
            {["suggest"] = "j", ["help"] = "ctgx"},
            {["suggest"] = "k", ["help"] = "secx"},
            {["suggest"] = "l", ["help"] = "cscx"},
            {["suggest"] = "m", ["help"] = "arcsinx"},
            {["suggest"] = "n", ["help"] = "arccosx"},
            {["suggest"] = "o", ["help"] = "arctagx"},
            {["suggest"] = "p", ["help"] = "arcctgx"},
       }
     elseif input == "a"  then
        return "(C)'=0"
     elseif input == "b"  then
        return "(x^a)'=ax^(a-1)"
     elseif input == "c"  then
        return "(a^x)'=a^x·lna"
     elseif input == "d"  then
        return "(e^x)'=e^x"
     elseif input == "e"  then
        return "(loga(x))'=1/(x·lna)"
     elseif input == "f"  then
        return "(lnx)'=1/x"
     elseif input == "g"  then
        return "(sinx)'=cosx"
     elseif input == "h"  then
        return "(cosx)'=-sinx"
     elseif input == "i"  then
        return "(tagx)'=(secx)^2"
     elseif input == "j"  then
        return "(ctgx)'=-(cscx)^2"
     elseif input == "k"  then
        return "(secx)'=secxtagx"
     elseif input == "l"  then
        return "(cscx)'=cscxctgx"
     elseif input == "m"  then
        return "(arcsinx)'=1/√(1-x^2)"
     elseif input == "n"  then
        return "(arccosx)'=-1/√(1-x^2)"
     elseif input == "o"  then
        return "(arctagx)'=1/(1+x^2)"
     elseif input == "p"  then
        return "(arcctgx)'=-1/(1+x^2)"
    end
end

function jifen (input)
    if #input == 0 then
        return {
            {["suggest"] = "a", ["help"] = "∫0·dx"},
            {["suggest"] = "b", ["help"] = "∫x^a·dx"},
            {["suggest"] = "c", ["help"] = "∫1/x·dx"},
            {["suggest"] = "d", ["help"] = "∫a^x·dx"},
            {["suggest"] = "e", ["help"] = "∫e^x·dx"},
            {["suggest"] = "f", ["help"] = "∫sinx·dx"},
            {["suggest"] = "g", ["help"] = "∫cosx·dx"},
            {["suggest"] = "h", ["help"] = "∫(secx)^2·dx"},
            {["suggest"] = "l", ["help"] = "∫(cscx)^2·dx"},
            {["suggest"] = "j", ["help"] = "∫1/√(1-x^2)·dx"},
            {["suggest"] = "k", ["help"] = "∫1/(1+x^2)·dx"},
       }
     elseif input == "a"  then
        return "∫0·dx=C"
     elseif input == "b"  then
        return "∫x^a·dx=1/(a+1)·x(a+1)+C (a≠-1)"
     elseif input == "c"  then
        return "∫1/x·dx=ln|x|+C"
     elseif input == "d"  then
        return "∫a^x·dx=1/lnx·a^x+C (a>0, a≠-1)"
     elseif input == "e"  then
        return "∫e^x·dx=e^x+C"
     elseif input == "f"  then
        return "∫sinx·dx=-cosx+C"
     elseif input == "g"  then
        return "∫cosx·dx=sinx+C"
     elseif input == "h"  then
        return "∫(secx)^2·dx=tagx+C"
     elseif input == "i"  then
        return "∫(cscx)^2·dx=-ctgx+C"
     elseif input == "j"  then
        return "∫1/√(1-x^2)·dx=arcsinx+C=-arccosx+C"
     elseif input == "k"  then
        return "∫1/(1+x^2)·dx=arctagx+C=-arcctgx+C"
    end
end

------------

ime.register_command("fj", "jifen", "基本积分公式")
ime.register_command("fd", "daoshu", "初等函数求导公式")
ime.register_command("fs", "sanjiao", "三角函数公式")
