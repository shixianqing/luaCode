--[[
  1���������������ͣ�ȫ�ֱ������ֲ����������е���
  2��������Ĭ��ֵ��Ϊnil
  3��lua����ı�������ȫ�ֱ�����������local��ʾ����Ϊ�ֲ�����
--]]

 a = 10; --ȫ�ֱ���
 
 do
   local b = 12; -- �ֲ�����
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
ʹ�þֲ������ĺô���
  1������������ͻ
  2�����ʾֲ������ȷ���ȫ��������
--]]

i = 3;
while(i>1)
  do
    i = i - 1;
    print("hello");
  end
  