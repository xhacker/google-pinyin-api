-- encoding: UTF-8

------------------------------------------------
-- 谷歌拼音常用数学序号扩展
-- 版本: 0.1
-- 项目主页: http://code.google.com/p/google-pinyin-api/
--
-- 此扩展遵循GPLv3发布
------------------------------------------------

function quan (input)
     if input == "a" then
             return {
            {["suggest"] = "a", ["help"] = "①"},
            {["suggest"] = "b", ["help"] = "②"},
            {["suggest"] = "c", ["help"] = "③"},
            {["suggest"] = "d", ["help"] = "④"},
            {["suggest"] = "e", ["help"] = "⑤"},
            {["suggest"] = "f", ["help"] = "⑥"},
            {["suggest"] = "g", ["help"] = "⑦"},
            {["suggest"] = "h", ["help"] = "⑧"},
            {["suggest"] = "a", ["help"] = "⑨"},
            {["suggest"] = "b", ["help"] = "⑩"},
       }
   end
end


function luoma (input)
     if input == "b" then
             return {
            {["suggest"] = "a", ["help"] = "Ⅰ"},
            {["suggest"] = "b", ["help"] = "Ⅱ"},
            {["suggest"] = "c", ["help"] = "Ⅲ"},
            {["suggest"] = "d", ["help"] = "Ⅳ"},
            {["suggest"] = "e", ["help"] = "Ⅴ"},
            {["suggest"] = "f", ["help"] = "Ⅵ"},
            {["suggest"] = "g", ["help"] = "Ⅶ"},
            {["suggest"] = "h", ["help"] = "Ⅷ"},
            {["suggest"] = "i", ["help"] = "Ⅸ"},
            {["suggest"] = "j", ["help"] = "Ⅹ"},
       }
   end
end


function daxie (input)
     if input == "c" then
             return {
            {["suggest"] = "a", ["help"] = "㈠"},
            {["suggest"] = "b", ["help"] = "㈡"},
            {["suggest"] = "c", ["help"] = "㈢"},
            {["suggest"] = "d", ["help"] = "㈣"},
            {["suggest"] = "e", ["help"] = "㈤"},
            {["suggest"] = "f", ["help"] = "㈥"},
            {["suggest"] = "g", ["help"] = "㈦"},
            {["suggest"] = "h", ["help"] = "㈧"},
            {["suggest"] = "i", ["help"] = "㈨"},
            {["suggest"] = "j", ["help"] = "㈩"},
       }
   end
end


function xiaoxie (input)
     if input == "d" then
             return {
            {["suggest"] = "a", ["help"] = "⑴"},
            {["suggest"] = "b", ["help"] = "⑵"},
            {["suggest"] = "c", ["help"] = "⑶"},
            {["suggest"] = "d", ["help"] = "⑷"},
            {["suggest"] = "e", ["help"] = "⑸"},
            {["suggest"] = "f", ["help"] = "⑹"},
            {["suggest"] = "g", ["help"] = "⑺"},
            {["suggest"] = "h", ["help"] = "⑻"},
            {["suggest"] = "i", ["help"] = "⑼"},
            {["suggest"] = "j", ["help"] = "⑽"},
       }
   end
end


function dian (input)
     if input == "e" then
             return {
            {["suggest"] = "a", ["help"] = "⒈"},
            {["suggest"] = "b", ["help"] = "⒉"},
            {["suggest"] = "c", ["help"] = "⒊"},
            {["suggest"] = "d", ["help"] = "⒋"},
            {["suggest"] = "e", ["help"] = "⒌"},
            {["suggest"] = "f", ["help"] = "⒍"},
            {["suggest"] = "g", ["help"] = "⒎"},
            {["suggest"] = "h", ["help"] = "⒏"},
            {["suggest"] = "i", ["help"] = "⒐"},
            {["suggest"] = "j", ["help"] = "⒑"},
       }
   end
end


function xuhao (input)
    if #input == 0 then
        return {
            {["suggest"] = "a", ["help"] = "①②...⑩"},
            {["suggest"] = "b", ["help"] = "ⅠⅡ...Ⅹ"},
            {["suggest"] = "c", ["help"] = "㈠㈡...㈩"},
            {["suggest"] = "d", ["help"] = "⑴⑵...⑽"},
            {["suggest"] = "e", ["help"] = "⒈⒉...⒑"},
       }
       
    elseif input == "a" then
        return quan(input)
    elseif input == "aa" then
        return "①"
    elseif input == "ab" then
        return "②"
    elseif input == "ac" then
        return "③"
    elseif input == "ad"  then
        return "④"
    elseif input == "ae"  then
        return "⑤"
    elseif input == "af"  then
        return "⑥"
    elseif input == "ag"  then
        return "⑦"
    elseif input == "ah"  then
        return "⑧"
    elseif input == "ai"  then
        return "⑨"
    elseif input == "aj"  then
        return "⑩"

    elseif input == "b" then
        return luoma(input)
    elseif input == "ba" then
        return "Ⅰ"
    elseif input == "bb" then
        return "Ⅱ"
    elseif input == "bc" then
        return "Ⅲ"
    elseif input == "bd"  then
        return "Ⅳ"
    elseif input == "be"  then
        return "Ⅴ"
    elseif input == "bf"  then
        return "Ⅵ"
    elseif input == "bg"  then
        return "Ⅶ"
    elseif input == "bh"  then
        return "Ⅷ"
    elseif input == "bi"  then
        return "Ⅸ"
    elseif input == "bj"  then
        return "Ⅹ"

    elseif input == "c" then
        return daxie(input)
    elseif input == "ca" then
        return "㈠"
    elseif input == "cb" then
        return "㈡"
    elseif input == "cc" then
        return "㈢"
    elseif input == "cd"  then
        return "㈣"
    elseif input == "ce"  then
        return "㈤"
    elseif input == "cf"  then
        return "㈥"
    elseif input == "cg"  then
        return "㈦"
    elseif input == "ch"  then
        return "㈧"
    elseif input == "ci"  then
        return "㈨"
    elseif input == "cj"  then
        return "㈩"

    elseif input == "d" then
        return xiaoxie(input)
    elseif input == "da" then
        return "⑴"
    elseif input == "db" then
        return "⑵"
    elseif input == "dc" then
        return "⑶"
    elseif input == "dd"  then
        return "⑷"
    elseif input == "de"  then
        return "⑸"
    elseif input == "df"  then
        return "⑹"
    elseif input == "dg"  then
        return "⑺"
    elseif input == "dh"  then
        return "⑻"
    elseif input == "di"  then
        return "⑼"
    elseif input == "dj"  then
        return "⑽"

    elseif input == "e" then
        return dian(input)
    elseif input == "ea" then
        return "⒈"
    elseif input == "eb" then
        return "⒉"
    elseif input == "ec" then
        return "⒊"
    elseif input == "ed"  then
        return "⒋"
    elseif input == "ee"  then
        return "⒌"
    elseif input == "ef"  then
        return "⒍"
    elseif input == "eg"  then
        return "⒎"
    elseif input == "eh"  then
        return "⒏"
    elseif input == "ei"  then
        return "⒐"
    elseif input == "ej"  then
        return "⒑"

   end
end

------------

ime.register_command("xh", "xuhao", "常用数学序号")
