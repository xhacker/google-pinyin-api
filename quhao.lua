-- encoding: UTF-8

------------------------------------------------
-- 谷歌拼音区号查询扩展
-- 版本: 0.1 unfinished
-- 作者: Liu Dongyuan
-- 项目主页: http://code.google.com/p/google-pinyin-api/
--
-- 简介: 查询区号（暂时只支持国内）
--
-- 此扩展遵循GPLv3发布
------------------------------------------------

function qhFunc(arg)
	if string.len(arg) < 3 then
		return Name2Quhao(arg)
	else
		return Quhao2Name(arg)
	end
end

QH_DATA = {
  ["bj"] = {"北京", "", "010"},
}

function Name2Quhao(arg)
	return QH_DATA[arg][1] .. ": " .. QH_DATA[arg][3] .. QH_DATA[arg][2]
end

function Quhao2Name(arg)
	for key, res in pairs(QH_DATA) do
		if arg == res[3] then
			return res[3] .. ": " .. res[1] .. res[2]
		end
	end
end

------------

ime.register_command("qh", "qhFunc", "查询区号", "none", "请输入拼音缩写或区号")
