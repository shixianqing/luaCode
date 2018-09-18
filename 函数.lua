--[[
  1、函数的语法定义：
    optional_function_scope function function_name( argument1, argument2, argument3..., argumentn)
      function_body
      return result_params_comma_separated
    end
    
  2、解析函数字段含义：
    optional_function_scope: 该参数是可选的制定函数是全局函数还是局部函数，未设置该参数默认为全局函数，如果你需要设置函数为局部函数需要使用关键字 local。

    function_name: 指定函数名称。

    argument1, argument2, argument3..., argumentn: 函数参数，多个参数以逗号隔开，函数也可以不带参数。

    function_body: 函数体，函数中需要执行的代码语句块。

    result_params_comma_separated: 函数返回值，Lua语言函数可以返回多个值，每个值以逗号隔开。
--]]


-- 获取最大值  ..连接符

local function getMaxVal(a,b)
  local max;
  if(a>b)
    then
      max = a;
  else
    max = b;
  end
  
  return max;
end


print("最大值为：" .. getMaxVal(5,10))


-- 多参数传递

--[[local function add(a,b,c)
  return a + b + c;
end
print("求和的值为：",add(1,2,3));
--]]

-- 可变参数  可变参数相当于传递的是一个数组

local function add(...)
  local sum = 0;
  for i,v in ipairs({...}) -- {...}-----> 表示由所有可变参数构成的数组
    do
      sum = sum + v;
    end
  return sum;
end

print("可变参数求和：",add(1,2,3,4,5));


-- 获取可变数组的长度  select("#",...)
function getDynamicArraySize(...)
  --local arr = {...};
  return select("#",...);
end

print("可变参数长度" .. getDynamicArraySize());

-- 获取可变参数中方第一个参数  select(index,...)

function getFirstParam(index,...)
  return select(index,...);
end

print("第三个参数值：" .. getFirstParam(3,3,4,5,34))

-- 返回多值
function getMaxValAndIndex(a)
  -- 最大值的角标
  local maxValIndex = 1;
  -- 最大值
  local maxVal = a[maxValIndex];
  
  for i,v in ipairs(a) do
    if(v>maxVal) 
      then
        maxVal = v;
        maxValIndex = i;
    end
  end
  return maxVal,maxValIndex;
end

--print(getMaxValAndIndex({3,4,2,9,23,2,354})[1]);
print("最大值及其角标为：" .. getMaxValAndIndex({3,4,2,9,23,2,354}));


-- 固定参数与可变参数组合
function fwrite(fmt,...)
  return io.write(string.format(fmt,...));
end

print(fwrite("%d%d\n",1,2));
print(fwrite("没有可变参数...\n")); 

print(select("#"));

arr = {1,2,3};
print(#arr);