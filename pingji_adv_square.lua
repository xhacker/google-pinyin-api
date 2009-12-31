-- encoding: UTF-8

------------------------------------------------
-- 评级符号增强版 ■□ 单行版
-- 版本: 0.1.0.1
-- 作者：Yichen Lu
-- 作者主页：http://yichenlu.cn/
-- 项目主页: http://code.google.com/p/google-pinyin-api/
--
-- 此扩展遵循GPLv3发布
--
------------------------------------------------

_YichenLu_Pingji_EMPTY = '□'
_YichenLu_Pingji_FULL = '■'

function YichenLu_Pingji_Adv(input)
  if #input > 0 then
    a=string.find(input, "/")
    if a==nil then
      b=tonumber(input)
      c=5
    else
      b=tonumber(string.sub(input,1, a-1))
      c=tonumber(string.sub(input,a+1))
    end
    if b>c then
      b=c
    end
    if b<0 then
      b=0
    end
    out=''
    for i=1,b do
      out = out .. _YichenLu_Pingji_FULL
    end
    for i=1,c-b do
      out = out .. _YichenLu_Pingji_EMPTY
    end
    return out
  end
end

ime.register_command("pj", "YichenLu_Pingji_Adv", "■□", "none", "输入 个数/总数，省略总数默认为 5，5/10 为 ■■■■■□□□□□")