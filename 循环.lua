--[[

  数值for循环
  for var=exp1,exp2,exp3 do  
    <执行体>  
  end 
  
  var 从exp1变化到exp2，步长为exp3，如果exp3不指定，默认为1
--]]

--for var=1,4,2 do
  --print(var);
--end

print("===============================================");

for i = 10,1,-1 do
  print(i);
end


function distination(n)
  return n * 2;
end

print("===============================================");

--[[
  for i = exp1,f(),exp3 do
    <执行体>
  end
  
  f()，函数在循环执行前，执行一次，返回结果给下次循环用
--]]
for i = 2,distination(5),2 do
  print(i);
end


print("===============================================");


--[[
  泛型for循环,通过一个迭代器函数遍历所有值
  pairs：迭代table元素的
  ipairs：迭代数组元素的
  
--]]


-- 打印数组信息
a = {"ONE","TWO","THREE"};
-- i:索引  v：value值
for i,v in ipairs(a) do
  print(i,v);
end

print("===============================================");

-- 打印table信息
tab = {name="里斯",sex="男"};
for k,v in pairs(tab) do
  print(k,v);
end

print("===============================================");

--[[
repeat...until 重复循环执行，直到满足条件，退出循环 ------------  do{}while(条件);
--]]

i = 8;
--repeat
--  i = i - 1;
 -- print(i);
--until(i<5)
  

--[[
  break 退出循环
--]]

for i,v in ipairs(a)
  do
    if(i<3) then
      print(i,v);
    else
      print("退出循环----" .. i .. "===" .. v)
      break
    end
  end
  
  
--[[
  while循环
--]]

while(i>3)
  do
    i = i- 1;
    print(i);
  end
