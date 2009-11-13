-- encoding: UTF-8

------------------------------------------------
-- 谷歌拼音北京尾号限行查询扩展
-- 版本: 0.1 pre2
-- 作者: Liu Dongyuan
-- 项目主页: http://code.google.com/p/google-pinyin-api/
--
-- 简介: 今天能开车吗？（在北京）
--
-- 此扩展遵循GPLv3发布
------------------------------------------------

function whFunc(num)
	if num > "5" then num = num - 5 end
	if num == "0" then num = "5" end
	return GetXianxing(num)
end

WEEKDAY_CHINESE = {
  [0] = "星期天",
  [1] = "星期一",
  [2] = "星期二",
  [3] = "星期三",
  [4] = "星期四",
  [5] = "星期五",
  [6] = "星期六",
}

XIANXING_DATA = {
  --星期天是0。
  [1262966400] = {4, 5, 1, 2, 3},	--2010.01.09 0:00
  [1270915200] = {5, 1, 2, 3, 4},	--2010.04.11 0:00
}

function GetXianxing(num)
	local now = os.time()
	local today = os.date("%w") + 0
	for key, tail2wday in pairs(XIANXING_DATA) do
		if now < key then
			if(string.len(num) < 1) then --没有参数，输出今天限行的尾号。
				if today == "0" or today == "6" then
					return "周末，大家随便开车吧！"
				else
					for i = 1, 5, 1 do
						if i == 5 then
							i = 0
						end
						if tail2wday[i] == today then
							return "今天是" .. WEEKDAY_CHINESE[today] .. "，尾号为" .. i .. "和" .. i + 5 .. "的车不能上路。"
						end
					end
				end
			end
			
			num = num + 0 --转换为整数。
			if today == "0" or today == "6" then
				return "周末，大家随便开车吧！您的车" .. WEEKDAY_CHINESE[ tail2wday[num] ] .."不能上路。"
			elseif tail2wday[num] ~= today then
				return "今天是" .. WEEKDAY_CHINESE[today] .. "，您的车可以上路。" ..
					WEEKDAY_CHINESE[ tail2wday[num] ] .. "不能上路。"
			else
				return "今天是" .. WEEKDAY_CHINESE[today] .. "，您的车不能上路。"
			end
		end
	end
	--2011年4月11日以后
	return "数据已过期，请升级插件。项目主页：http://code.google.com/p/googlepinyin-plugins/"
end

------------

ime.register_command("wh", "whFunc", "尾号限行", "none", "输入您的车牌尾号（请确认电脑时钟正确）")
