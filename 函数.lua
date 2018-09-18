--[[
  1���������﷨���壺
    optional_function_scope function function_name( argument1, argument2, argument3..., argumentn)
      function_body
      return result_params_comma_separated
    end
    
  2�����������ֶκ��壺
    optional_function_scope: �ò����ǿ�ѡ���ƶ�������ȫ�ֺ������Ǿֲ�������δ���øò���Ĭ��Ϊȫ�ֺ������������Ҫ���ú���Ϊ�ֲ�������Ҫʹ�ùؼ��� local��

    function_name: ָ���������ơ�

    argument1, argument2, argument3..., argumentn: ������������������Զ��Ÿ���������Ҳ���Բ���������

    function_body: �����壬��������Ҫִ�еĴ������顣

    result_params_comma_separated: ��������ֵ��Lua���Ժ������Է��ض��ֵ��ÿ��ֵ�Զ��Ÿ�����
--]]


-- ��ȡ���ֵ  ..���ӷ�

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


print("���ֵΪ��" .. getMaxVal(5,10))


-- ���������

--[[local function add(a,b,c)
  return a + b + c;
end
print("��͵�ֵΪ��",add(1,2,3));
--]]

-- �ɱ����  �ɱ�����൱�ڴ��ݵ���һ������

local function add(...)
  local sum = 0;
  for i,v in ipairs({...}) -- {...}-----> ��ʾ�����пɱ�������ɵ�����
    do
      sum = sum + v;
    end
  return sum;
end

print("�ɱ������ͣ�",add(1,2,3,4,5));


-- ��ȡ�ɱ�����ĳ���  select("#",...)
function getDynamicArraySize(...)
  --local arr = {...};
  return select("#",...);
end

print("�ɱ��������" .. getDynamicArraySize());

-- ��ȡ�ɱ�����з���һ������  select(index,...)

function getFirstParam(index,...)
  return select(index,...);
end

print("����������ֵ��" .. getFirstParam(3,3,4,5,34))

-- ���ض�ֵ
function getMaxValAndIndex(a)
  -- ���ֵ�ĽǱ�
  local maxValIndex = 1;
  -- ���ֵ
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
print("���ֵ����Ǳ�Ϊ��" .. getMaxValAndIndex({3,4,2,9,23,2,354}));


-- �̶�������ɱ�������
function fwrite(fmt,...)
  return io.write(string.format(fmt,...));
end

print(fwrite("%d%d\n",1,2));
print(fwrite("û�пɱ����...\n")); 

print(select("#"));

arr = {1,2,3};
print(#arr);