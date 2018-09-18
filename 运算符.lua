--[[
逻辑运算符
  and 与运算符
  or  或运算符
  not 非运算符
--]]

a = true;
b = true;
c = false;
if(a and b)
  then
  print("是真的...");
end

if(a or c)
  then
    print("一个为真一个为假是为真");
end

if(not c)
  then
    print("非假为真");
end


--[[
关系运算符
  ~=  不等于
--]]

if (1 ~= 2)
  then
    print("1不等于2");
end


