-- 输出
print("hello world")

--[[
这样变量b就好像从没被使用过一样。换句话说, 当且仅当一个变量不等于nil时，这个变量即存在。
--]]

print(b);

b = 10;
print(b);


-- 数据类型
print(type("hello world"));

print(type(23));

print(type(print));

print(type(true))

print(type(nil));

print(type(type(nil))); --type 的返回值是string

table1 = {name="张三",age=12};-- table

for k,v in pairs(table1) do 
   print(k .. "-" .. v);
   
end

-- 全局变量被赋予nil，等于删除
table1.name = nil;

for k,v in pairs(table1) do 
  
  print(k .. "--" .. v);

end

-- nil做比较
type(X);
print(type(X) ==  nil);
print(type(X) == "nil");


--[[
  定义字符串
--]]

name = "zhangsan";
print(name);

html = [[
  <html>
<head></head>
<body>
    <a href="http://www.runoob.com/">菜鸟教程</a>
</body>
</html
]];

print(html);

-- 数字字符串进行算术操作，lua会尝试将这个数字字符串转换成数字

print("12" + 2.0);
print("2 + 6");
--print("error" + 2);-- 字符串连接，使用.. ..
print("ok" .. 2);

-- 计算字符串长度    ----------  #

print("字符串的长度为" .. #"121");

-- 表【table】 
--[[
  1、创建一个空的table
  2、直接初始化表
--]]

local testTable = {};

local test = {"apple", "pear", "orange", "grape"}

--test[age] = 123;

for k,v in pairs(test) do 
  print(k .. "------" .. v);
end

test[12] = "fdsf";

print(test[12])

-- function(函数) 5*4*3*2*1
  
  function factory(n)
    if n==0 then
      return 1;
    else
      val = n * factory(n-1);
      print(val);
      return val;
    end
  end
  
  print(factory(2));
  
  
  -- 匿名函数，当参数传递
  function testFun(tab,fun)
    for k,v in pairs(tab) do 
      fun(k,v);
    end
  end
  
 
  tab = {name = "李思思",sex = "女"};
  testFun(tab, function(k,v)
    print(k .. "-------" .. v);
  end
  );