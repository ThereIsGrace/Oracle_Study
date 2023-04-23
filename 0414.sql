-- employees의 모든 정보를 출력, 대/소문자 구분하지 않음
SELECT * FROM employees;
select * from employees;

-- employees 테이블의 employee_id와 first_name과 last_name을 선택하여 직원들의 사원번호와 이름만 출력
select employee_id, first_name, last_name from employees;

-- departments 테이블에서 department_name 검색
select department_name from departments;

-- employees테이블의 employee_id와 first_name과 last_name을 선택하여 직원들의 사원번호와 이름만 출력하고
-- employee_id 순으로 내림차순 정렬
select employee_id, first_name, last_name 
from employees 
order by employee_id desc;

-- employees 테이블에서 중복 값이 생기지 않도록 job_id를 출력
select distinct job_id from employees;

-- employees 테이블에서 employee_id는 사원번호, first_name은 이름으로 last_name은 성으로 출력
select employee_id as 사원번호, first_name as 이름, last_name as 성 from employees;
select employee_id 사원번호, first_name 이름, last_name 성 from employees;

-- 데이터 값 연결
-- employees 테이블에서 employee_id를 출력하고 first_name과 last_name을 붙여서 출력
select employee_id 사원번호, first_name || last_name 이름 from employees;

-- employees 테이블에서 employee_id를 출력하고 first_name과 last_name을 붙여서 출력하되
-- 가운데 한 칸을 띄워 주고 다음 열에서 email을 출력하는데 @company.com 문구를 붙여서 출력
select employee_id, first_name || ' ' || last_name 이름, 
concat(email, '@company.com') 이메일
from employees;

-- employees 테이블에서 employee_id, salary, salary에 500을 더한 값, 100을 뺀 값,100%를 추가해서
2로 나눈 값을 출력
select employee_id, salary, salary+500, salary-100, (salary*1.1)/2 
from employees;

select employee_id as 사원번호,
salary as 급여, 
salary + 500 as 추가급여,
salary-100 as 이하급여,
(salary*1.1)/2 as 조정급여 
from employees;