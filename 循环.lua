--[[

  ��ֵforѭ��
  for var=exp1,exp2,exp3 do  
    <ִ����>  
  end 
  
  var ��exp1�仯��exp2������Ϊexp3�����exp3��ָ����Ĭ��Ϊ1
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
    <ִ����>
  end
  
  f()��������ѭ��ִ��ǰ��ִ��һ�Σ����ؽ�����´�ѭ����
--]]
for i = 2,distination(5),2 do
  print(i);
end


print("===============================================");


--[[
  ����forѭ��,ͨ��һ��������������������ֵ
  pairs������tableԪ�ص�
  ipairs����������Ԫ�ص�
  
--]]


-- ��ӡ������Ϣ
a = {"ONE","TWO","THREE"};
-- i:����  v��valueֵ
for i,v in ipairs(a) do
  print(i,v);
end

print("===============================================");

-- ��ӡtable��Ϣ
tab = {name="��˹",sex="��"};
for k,v in pairs(tab) do
  print(k,v);
end

print("===============================================");

--[[
repeat...until �ظ�ѭ��ִ�У�ֱ�������������˳�ѭ�� ------------  do{}while(����);
--]]

i = 8;
--repeat
--  i = i - 1;
 -- print(i);
--until(i<5)
  

--[[
  break �˳�ѭ��
--]]

for i,v in ipairs(a)
  do
    if(i<3) then
      print(i,v);
    else
      print("�˳�ѭ��----" .. i .. "===" .. v)
      break
    end
  end
  
  
--[[
  whileѭ��
--]]

while(i>3)
  do
    i = i- 1;
    print(i);
  end
