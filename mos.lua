function mos(input)
   if #input== 0 then
    return { { suggest = "idsa", help = "Ids (Vds<Vgs-Vth)" },
                { suggest = "idsb", help = "Ids (Vds>Vgs-Vth)" },
                { suggest = "b", help = "β" },
                { suggest = "vth", help = "体效应" },
                { suggest = "gm", help = "饱和区跨导" },
               }
   elseif input == "idsa" then
    return "Ids=β•[(Vgs-Vth)Vds-1/2•Vds^2] (Vds<Vgs-Vth)"
   elseif input == "idsb" then
    return "Ids=1/2•β•(Vgs-Vth)^2•(1+λVds) (Vds>Vgs-Vth)"
   elseif input == "b" then
    return "β=μeff•Cox•(W/L) (其中Cox=εox/Tox)"
   elseif input == "vth" then
    return "Vth=Vth0+γ[√(Vsb+2Φ)-√(2Φ)]"
   elseif input == "gm" then
    return "gm=β•(Vgs-Vth)•(1+λVds) (饱和区)"
   end
end

ime.register_command("fm", "mos", "MOSFET常用公式速查")


