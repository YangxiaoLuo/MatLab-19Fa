clear all
format
a = sqrt(2)
format long e
a
b = sqrt(sym(2))
c = sym(sqrt(2))
abs(a-b)    %�°��MATLAB���Զ�ƥ��sqrt(2)����ʵֵ�����Ծ�Ȼ�����0��
abs(a-c)
format

format
a = sqrt(979797)
format long e
a
b = sqrt(sym(979797))
c = sym(sqrt(979797))
vpa(abs(a-b))    %������ˣ�
vpa(abs(a-c))
format