-- encoding: UTF-8
------------------------------------------------
--谷歌拼音标记对输入扩展
--版本: 0.1.0.1
--作者: 蓝蓝小雪
--作者主页: http://yichenlu.cn
--项目主页: http://code.google.com/p/google-pinyin-api/
--
--简介: 输入任意字符串，得到标记对。原版基于 http://www.google.com/support/forum/p/pinyin/thread?tid=01255e4a6d2ea17a&hl=zh-CN
--
--此扩展遵循GPLv3发布
------------------------------------------------

function YichenLu_TagInput(input)
  return {
    "<" .. input .. "></" .. input .. ">",
    "[" .. input .. "][/" .. input .. "]",
    "{" .. input .. "}{/" .. input .. "}",
  }
end
------
ime.register_command("bj", "YichenLu_TagInput", "标记对", "digit", "输入任意字符串，得到标记对。")
