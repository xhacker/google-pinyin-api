-- encoding: UTF-8

------------------------------------------------
-- 评级符号简易版
-- 版本: 0.1
-- 作者：Yichen Lu
-- 作者主页：http://yichenlu.cn/
-- 项目主页: http://code.google.com/p/google-pinyin-api/
--
-- 此扩展遵循GPLv3发布
--
的------------------------------------------------

_YichenLu_Pingji_EASY_TABLE={"☆☆☆☆☆", "★☆☆☆☆","★★☆☆☆","★★★☆☆","★★★★☆","★★★★★","★★★★★★☆☆☆☆","★★★★★★★☆☆☆","★★★★★★★★☆☆","★★★★★★★★★☆","★★★★★★★★★★"}

function YichenLu_Pingji_Easy(input)
  if #input <= 0 then
  elseif _YichenLu_Pingji_EASY_TABLE[tonumber(input)+1] then
    return _YichenLu_Pingji_EASY_TABLE[tonumber(input)+1]
  else
    error("Invalid argument")
  end
end

ime.register_command("pj", "YichenLu_Pingji_Easy", "评级符号简易版", "none", "输入星星个数 0～10")