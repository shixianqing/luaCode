-- ���
print("hello world")

--[[
��������b�ͺ����û��ʹ�ù�һ�������仰˵, ���ҽ���һ������������nilʱ��������������ڡ�
--]]

print(b);

b = 10;
print(b);


-- ��������
print(type("hello world"));

print(type(23));

print(type(print));

print(type(true))

print(type(nil));

print(type(type(nil))); --type �ķ���ֵ��string

table1 = {name="����",age=12};-- table

for k,v in pairs(table1) do 
   print(k .. "-" .. v);
   
end

-- ȫ�ֱ���������nil������ɾ��
table1.name = nil;

for k,v in pairs(table1) do 
  
  print(k .. "--" .. v);

end

-- nil���Ƚ�
type(X);
print(type(X) ==  nil);
print(type(X) == "nil");


--[[
  �����ַ���
--]]

name = "zhangsan";
print(name);

html = [[
  <html>
<head></head>
<body>
    <a href="http://www.runoob.com/">����̳�</a>
</body>
</html
]];

print(html);

-- �����ַ�����������������lua�᳢�Խ���������ַ���ת��������

print("12" + 2.0);
print("2 + 6");
--print("error" + 2);-- �ַ������ӣ�ʹ��.. ..
print("ok" .. 2);

-- �����ַ�������    ----------  #

print("�ַ����ĳ���Ϊ" .. #"121");

-- ��table�� 
--[[
  1������һ���յ�table
  2��ֱ�ӳ�ʼ����
--]]

local testTable = {};

local test = {"apple", "pear", "orange", "grape"}

--test[age] = 123;

for k,v in pairs(test) do 
  print(k .. "------" .. v);
end

test[12] = "fdsf";

print(test[12])

-- function(����) 5*4*3*2*1
  
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
  
  
  -- ��������������������
  function testFun(tab,fun)
    for k,v in pairs(tab) do 
      fun(k,v);
    end
  end
  
 
  tab = {name = "��˼˼",sex = "Ů"};
  testFun(tab, function(k,v)
    print(k .. "-------" .. v);
  end
  );