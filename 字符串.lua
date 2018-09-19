--[[
  Lua 语言中字符串可以使用以下三种方式来表示：
    单引号间的一串字符。
    双引号间的一串字符。
   
--]]

str = "lua";
print("\"字符串是:\"",str);

str1 = '单引号';
print("字符串1是：",str1);

str2 = [[
  大家好啊
]];

print("字符串3是：",str2 );


--[[
string.reverse(arg)
字符串反转
--]]

local a = "abcd";
local b = string.reverse(a);
print('a---->' .. a .. '   b---->' .. b);

--[[
string.format(...)
返回一个类似printf的格式化字符串
--]]

print(string.format("this is value : %s\n",a));

--[[
	string.len(arg)
计算字符串长度。
--]]

print('字符串的长度为：------>  ' .. string.len(a));