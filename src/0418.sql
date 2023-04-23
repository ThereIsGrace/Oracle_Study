-- employees 테이블에서 manager_id가 null값이 아닌 직원을 조회
SELECT * FROM employees
WHERE manager_id is not null;

-- employees 테이블에서 last_name을 소문자와 대문자로 각각 출력하고, email의 첫 번째 문자는 대문자로 출력
select 
last_name,
LOWER(last_name) LOWER_적용,
UPPER(last_name) UPPER_적용,
email,
INITCAP(email) INITCAP_적용
FROM employees;

-- employees 테이블에서 job_id 데이터 값의 첫자리부터 두 개의 문자를 출력
SELECT 
job_id, SUBSTR(job_id, 1,2) 적용결과
FROM employees;

-- employees 테이블에서 job_id 문자열 값이 ACCOUNT면 ACCNT로 출력
select job_id, REPLACE(job_id, 'ACCOUNT', 'ACCNT') 적용결과
from employees;

-- employees 테이블에서 salary를 30일로 나눈 후 소수점 첫째 자리, 소수점 둘째 자리, 정수 첫째 자리에서
-- 반올림한 값을 출력
SELECT 
salary,
salary/30 일급,
ROUND(salary/30,1) 적용결과0,
ROUND(salary/30,2) 적용결과1,
ROUND(salary/30,-1) 적용결과MINUS1
FROM employees;

-- 날짜
SELECT TO_CHAR(SYSDATE, 'YY/MM/DD/HH24:MI') 오늘날짜,
SYSDATE+1 더하기_1,
SYSDATE-1 빼기_1,
TO_DATE('20211125') - TO_DATE('20230412') 날짜빼기,
SYSDATE + 48/24 -- 시간을 24로 나누어 날짜에 더함
FROM DUAL;

-- employees 테이블에서 first_name, last_name, department_id, salary를 출력하되 
-- department_id가 60인 경우에는 급여를 10% 인상한 값을 계산하여 출력하고 나머지 경우에는 원래의 값을 출력하시오.
-- 그리고 department_id가 60인 경우에는 "10% 인상"을 출력하고 나머지 경우에는 '미인상'을 출력
select first_name, last_name, department_id, salary 원래급여,
decode(department_id, 60, salary*1.1, salary) 조정된급여,
decode(department_id, 60, '10%인상', '미인상') 인상여부
from employees;

-- employees 테이블에서 job_id가 IT_PROG라면 employee_id, first_name, last_name, salary
-- 출력하되, salary가 9000이상이면, '상위급여', 6000과 8999 사이이면 '중위급여', 그 외는 '하위급여'라고
-- 출력하시오
SELECT employee_id, first_name, last_name, salary,
    CASE
        WHEN salary >= 9000 then '상위급여'
        WHEN salary between 6000 and 8999 then '중위급여'
        ELSE '하위급여'
    END AS 급여등급
FROM EMPLOYEES
where job_id = 'IT_PROG';

-- RANK 함수를 사용하여 employees 테이블의 salary 값이 높은 순서대로 순위를 매겨 출력
SELECT employee_id, salary,
RANK() OVER (ORDER BY salary DESC) RANK_급여
FROM employees;