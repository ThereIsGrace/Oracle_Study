-- SELECT * FROM WHERE (SELECT * FROM WHERE) 조건이 명확하지 않을 때 한 번 더 묻는다.
-- SELECT 열이름
-- FROM 테이블 이름
-- WHERE 원하는 조건
-- => 연산자의 종류
-- 비교 연산자 : 조건을 비교 =, <, >, ....
-- SQL 연산자 : BETWEEN, IN, ....
-- 논리연산자 : 조건 논리를 연결 AND, OR, ....

-- employee_id가 100인 직원 정보 출력
SELECT * FROM EMPLOYEES WHERE employee_id = 100;

-- employees 테이블에서 employee_id가 105이상인 직원 정보를 출력
SELECT
    *
FROM employees
where employee_id >= 105;

-- employees 테이블에서 salary가 10,000이상이고 20,000이하인 직원 정보를 출력
SELECT * FROM EMPLOYEES WHERE salary BETWEEN 10000 AND 20000;

-- employees 테이블에서 salary가 10000, 17000, 24000인 직원 정보를 출력
select * from employees where salary in (10000, 17000, 24000);

-- employees 테이블에서 job_id 값이 AD로 시작하는 모든 데이터를 조회
select * from employees where job_id LIKE 'AD%';

-- 운영체제에서 사용하는 와일드 카드 문자
-- *: 여러글자
-- ?: 한글자

-- employees 테이블에서 JOB_ID가 AD로 시작하면서 AD 뒤에 따라오는 문자열이 3자리인 데이터 값 직원정보를 출력
select * from employees where job_id LIKE 'AD___';

-- employees 테이블에서 manager_id가 null인 값인 직원 정보를 출력
-- 이 직원은 관리자가 없다. 배정한 적이 없음. 진공 상태
select * from employees where manager_id is null;

-- 집합 : 합집합/ 차집합 / 교집합
-- employees 테이블에서 salary가 4000을 초과하면서(AND), job_id가 IT_PROG인 값을 조회
SELECT * FROM employees where salary > 4000 and job_id = 'IT_PROG';

-- employees 테이블에서 salary가 4000을 초과하면서(AND) job_id가 IT_PROG이거나 FI_ACCOUNT인
-- 경우 출력
select * from employees where salary > 4000 and job_id = 'IT_PROG' 
or job_id = 'FI_ACCOUNT';

-- employees 테이블에서 employee_id가 105가 아닌 직원을 조회
select * from employees where employee_id <> 105;

-- employees 테이블에서 manager_id가 null값이 아닌 직원을 조회
SELECT * FROM employees
where manager_id is not null;

-- employees 테이블에서 last_name을 소문자와 대문자로 각각 출력하고, email의 첫 번째 문자는 대문자로 출력
select 
last_name,
LOWER(last_name) LOWER_적용,
UPPER(last_name) UPPER_적용,
email,
INITCAP(email) INITCAP_적용
from employees;

-- employees 테이블에서 job_id 데이터 값의 첫자리부터 두 개의 문자를 출력
select 
job_id, SUBSTR(job_id,1,2) 적용결과
from employees;