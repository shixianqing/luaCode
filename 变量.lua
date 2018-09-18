--[[
  1、变量有三种类型：全局变量、局部变量、表中的域
  2、变量的默认值均为nil
  3、lua定义的变量都是全局变量，除非用local显示声明为局部变量
--]]

 a = 10; --全局变量
 
 do
   local b = 12; -- 局部变量
   print(a .. "======" .. b);
 end
 
 print(a);
 print(b);
 
 
d,f = 10,2;
print(d);
print(f);

d,f = 10+2,2+4;
print(d);
print(f);

function getTwoVal()
  return 1,2;
end

a,b = getTwoVal();

print(a .. "=======" .. b);

--[[
使用局部变量的好处：
  1、避免命名冲突
  2、访问局部变量比访问全部变量快
--]]

i = 3;
while(i>1)
  do
    i = i - 1;
    print("hello");
  end
  