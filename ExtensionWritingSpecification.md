# 扩展编写规范 #
该文档正在编写中，欢迎大家扩充改善。

## 版本号 ##
格式：
major.minor.status.revision
即：主.次.状态.修订

其中第三位：
  * 0为alpha状态
  * 1为beta状态
  * 2为rc状态
  * 3为公开发布

举例：
  * 1.2.0.1：1.2 alpha
  * 1.2.1.2：1.2 beta 2（beta版本加上一些bug修正）
  * 1.2.2.3：1.2 rc
  * 1.2.3.0：1.2 final（正式发布版本）
  * 1.2.3.5：1.2 final 5（正式发布版本加上一些bug修正）

参考http://en.wikipedia.org/wiki/Software_versioning#Designating_development_stage

## 格式 ##
### 换行 ###
采用Unix格式换行。

### 缩进 ###
两个空格。

### 文件头部 ###
```
-- encoding: UTF-8

------------------------------------------------
-- 谷歌拼音范例扩展
-- 版本: 0.1.0.1
-- 作者: Zhang San （这行也可以不加）
-- 作者主页: http://zhangsan.example.com/ （这行也可以不加）
-- 项目主页: http://code.google.com/p/google-pinyin-api/
--
-- 简介: 张三的范例扩展。
--
-- 此扩展遵循GPLv3发布
------------------------------------------------
```