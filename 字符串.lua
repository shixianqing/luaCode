--[[
  Lua �������ַ�������ʹ���������ַ�ʽ����ʾ��
    �����ż��һ���ַ���
    ˫���ż��һ���ַ���
   
--]]

str = "lua";
print("\"�ַ�����:\"",str);

str1 = '������';
print("�ַ���1�ǣ�",str1);

str2 = [[
  ��Һð�
]];

print("�ַ���3�ǣ�",str2 );


--[[
string.reverse(arg)
�ַ�����ת
--]]

local a = "abcd";
local b = string.reverse(a);
print('a---->' .. a .. '   b---->' .. b);

--[[
string.format(...)
����һ������printf�ĸ�ʽ���ַ���
--]]

print(string.format("this is value : %s\n",a));

--[[
	string.len(arg)
�����ַ������ȡ�
--]]

print('�ַ����ĳ���Ϊ��------>  ' .. string.len(a));