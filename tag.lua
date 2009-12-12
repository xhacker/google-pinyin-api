-- encoding: UTF-8
------------------------------------------------
--谷歌拼音标记对输入扩展
--版本: 0.1.1.1
--作者: 蓝蓝小雪
--作者主页: http://yichenlu.cn
--项目主页: http://code.google.com/p/google-pinyin-api/
--
--简介: 输入任意字符串，得到标记对。原始创意来自于 PreZident
--
--此扩展遵循GPLv3发布
------------------------------------------------

--based on http://www.wellho.net/resources/ex.php4?item=u108/split
function string:split(delimiter)
  local result = { }
  local from  = 1
  local delim_from, delim_to = string.find( self, delimiter, from  )
  while delim_from do
    table.insert( result, string.sub( self, from , delim_from-1 ) )
    from  = delim_to + 1
    delim_from, delim_to = string.find( self, delimiter, from  )
  end
  table.insert( result, string.sub( self, from  ) )
  return result
end
------------------

function YichenLu_TagInput(arg)
  args=arg:split("+")
  if args[1]== "" then
    error("Invalid argument")
  else
    input=args[1]
    argtext=""
    if #args>1 then
      for i=2,#args do
        argtext = argtext .. " " .. args[i] .. "=\"\""
      end
    end
    return {
      "<" .. input .. argtext .. "></" .. input .. ">",
      "[" .. input .. argtext .. "][/" .. input .. "]",
      "{" .. input .. argtext .. "}{/" .. input .. "}",
    }
  end
end
------
ime.register_command("bj", "YichenLu_TagInput", "标记对", "digit", "输入任意字符串，得到标记对。使用+分割参数。")