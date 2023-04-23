-- employees�� ��� ������ ���, ��/�ҹ��� �������� ����
SELECT * FROM employees;
select * from employees;

-- employees ���̺��� employee_id�� first_name�� last_name�� �����Ͽ� �������� �����ȣ�� �̸��� ���
select employee_id, first_name, last_name from employees;

-- departments ���̺��� department_name �˻�
select department_name from departments;

-- employees���̺��� employee_id�� first_name�� last_name�� �����Ͽ� �������� �����ȣ�� �̸��� ����ϰ�
-- employee_id ������ �������� ����
select employee_id, first_name, last_name 
from employees 
order by employee_id desc;

-- employees ���̺��� �ߺ� ���� ������ �ʵ��� job_id�� ���
select distinct job_id from employees;

-- employees ���̺��� employee_id�� �����ȣ, first_name�� �̸����� last_name�� ������ ���
select employee_id as �����ȣ, first_name as �̸�, last_name as �� from employees;
select employee_id �����ȣ, first_name �̸�, last_name �� from employees;

-- ������ �� ����
-- employees ���̺��� employee_id�� ����ϰ� first_name�� last_name�� �ٿ��� ���
select employee_id �����ȣ, first_name || last_name �̸� from employees;

-- employees ���̺��� employee_id�� ����ϰ� first_name�� last_name�� �ٿ��� ����ϵ�
-- ��� �� ĭ�� ��� �ְ� ���� ������ email�� ����ϴµ� @company.com ������ �ٿ��� ���
select employee_id, first_name || ' ' || last_name �̸�, 
concat(email, '@company.com') �̸���
from employees;

-- employees ���̺��� employee_id, salary, salary�� 500�� ���� ��, 100�� �� ��,100%�� �߰��ؼ�
2�� ���� ���� ���
select employee_id, salary, salary+500, salary-100, (salary*1.1)/2 
from employees;

select employee_id as �����ȣ,
salary as �޿�, 
salary + 500 as �߰��޿�,
salary-100 as ���ϱ޿�,
(salary*1.1)/2 as �����޿� 
from employees;