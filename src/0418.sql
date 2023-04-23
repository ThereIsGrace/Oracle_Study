-- employees ���̺��� manager_id�� null���� �ƴ� ������ ��ȸ
SELECT * FROM employees
WHERE manager_id is not null;

-- employees ���̺��� last_name�� �ҹ��ڿ� �빮�ڷ� ���� ����ϰ�, email�� ù ��° ���ڴ� �빮�ڷ� ���
select 
last_name,
LOWER(last_name) LOWER_����,
UPPER(last_name) UPPER_����,
email,
INITCAP(email) INITCAP_����
FROM employees;

-- employees ���̺��� job_id ������ ���� ù�ڸ����� �� ���� ���ڸ� ���
SELECT 
job_id, SUBSTR(job_id, 1,2) ������
FROM employees;

-- employees ���̺��� job_id ���ڿ� ���� ACCOUNT�� ACCNT�� ���
select job_id, REPLACE(job_id, 'ACCOUNT', 'ACCNT') ������
from employees;

-- employees ���̺��� salary�� 30�Ϸ� ���� �� �Ҽ��� ù° �ڸ�, �Ҽ��� ��° �ڸ�, ���� ù° �ڸ�����
-- �ݿø��� ���� ���
SELECT 
salary,
salary/30 �ϱ�,
ROUND(salary/30,1) ������0,
ROUND(salary/30,2) ������1,
ROUND(salary/30,-1) ������MINUS1
FROM employees;

-- ��¥
SELECT TO_CHAR(SYSDATE, 'YY/MM/DD/HH24:MI') ���ó�¥,
SYSDATE+1 ���ϱ�_1,
SYSDATE-1 ����_1,
TO_DATE('20211125') - TO_DATE('20230412') ��¥����,
SYSDATE + 48/24 -- �ð��� 24�� ������ ��¥�� ����
FROM DUAL;

-- employees ���̺��� first_name, last_name, department_id, salary�� ����ϵ� 
-- department_id�� 60�� ��쿡�� �޿��� 10% �λ��� ���� ����Ͽ� ����ϰ� ������ ��쿡�� ������ ���� ����Ͻÿ�.
-- �׸��� department_id�� 60�� ��쿡�� "10% �λ�"�� ����ϰ� ������ ��쿡�� '���λ�'�� ���
select first_name, last_name, department_id, salary �����޿�,
decode(department_id, 60, salary*1.1, salary) �����ȱ޿�,
decode(department_id, 60, '10%�λ�', '���λ�') �λ󿩺�
from employees;

-- employees ���̺��� job_id�� IT_PROG��� employee_id, first_name, last_name, salary
-- ����ϵ�, salary�� 9000�̻��̸�, '�����޿�', 6000�� 8999 �����̸� '�����޿�', �� �ܴ� '�����޿�'���
-- ����Ͻÿ�
SELECT employee_id, first_name, last_name, salary,
    CASE
        WHEN salary >= 9000 then '�����޿�'
        WHEN salary between 6000 and 8999 then '�����޿�'
        ELSE '�����޿�'
    END AS �޿����
FROM EMPLOYEES
where job_id = 'IT_PROG';

-- RANK �Լ��� ����Ͽ� employees ���̺��� salary ���� ���� ������� ������ �Ű� ���
SELECT employee_id, salary,
RANK() OVER (ORDER BY salary DESC) RANK_�޿�
FROM employees;