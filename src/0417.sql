-- SELECT * FROM WHERE (SELECT * FROM WHERE) ������ ��Ȯ���� ���� �� �� �� �� ���´�.
-- SELECT ���̸�
-- FROM ���̺� �̸�
-- WHERE ���ϴ� ����
-- => �������� ����
-- �� ������ : ������ �� =, <, >, ....
-- SQL ������ : BETWEEN, IN, ....
-- �������� : ���� ���� ���� AND, OR, ....

-- employee_id�� 100�� ���� ���� ���
SELECT * FROM EMPLOYEES WHERE employee_id = 100;

-- employees ���̺��� employee_id�� 105�̻��� ���� ������ ���
SELECT
    *
FROM employees
where employee_id >= 105;

-- employees ���̺��� salary�� 10,000�̻��̰� 20,000������ ���� ������ ���
SELECT * FROM EMPLOYEES WHERE salary BETWEEN 10000 AND 20000;

-- employees ���̺��� salary�� 10000, 17000, 24000�� ���� ������ ���
select * from employees where salary in (10000, 17000, 24000);

-- employees ���̺��� job_id ���� AD�� �����ϴ� ��� �����͸� ��ȸ
select * from employees where job_id LIKE 'AD%';

-- �ü������ ����ϴ� ���ϵ� ī�� ����
-- *: ��������
-- ?: �ѱ���

-- employees ���̺��� JOB_ID�� AD�� �����ϸ鼭 AD �ڿ� ������� ���ڿ��� 3�ڸ��� ������ �� ���������� ���
select * from employees where job_id LIKE 'AD___';

-- employees ���̺��� manager_id�� null�� ���� ���� ������ ���
-- �� ������ �����ڰ� ����. ������ ���� ����. ���� ����
select * from employees where manager_id is null;

-- ���� : ������/ ������ / ������
-- employees ���̺��� salary�� 4000�� �ʰ��ϸ鼭(AND), job_id�� IT_PROG�� ���� ��ȸ
SELECT * FROM employees where salary > 4000 and job_id = 'IT_PROG';

-- employees ���̺��� salary�� 4000�� �ʰ��ϸ鼭(AND) job_id�� IT_PROG�̰ų� FI_ACCOUNT��
-- ��� ���
select * from employees where salary > 4000 and job_id = 'IT_PROG' 
or job_id = 'FI_ACCOUNT';

-- employees ���̺��� employee_id�� 105�� �ƴ� ������ ��ȸ
select * from employees where employee_id <> 105;

-- employees ���̺��� manager_id�� null���� �ƴ� ������ ��ȸ
SELECT * FROM employees
where manager_id is not null;

-- employees ���̺��� last_name�� �ҹ��ڿ� �빮�ڷ� ���� ����ϰ�, email�� ù ��° ���ڴ� �빮�ڷ� ���
select 
last_name,
LOWER(last_name) LOWER_����,
UPPER(last_name) UPPER_����,
email,
INITCAP(email) INITCAP_����
from employees;

-- employees ���̺��� job_id ������ ���� ù�ڸ����� �� ���� ���ڸ� ���
select 
job_id, SUBSTR(job_id,1,2) ������
from employees;