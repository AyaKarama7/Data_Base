SELECT * FROM HR.EMPLOYEES;
SELECT EMPLOYEE_ID,FIRST_NAME FROM HR.EMPLOYEES;
SELECT SALARY,(SALARY+100)*12 FROM HR.EMPLOYEES;
SELECT commission_pct FROM HR.EMPLOYEES;
SELECT last_name AS lastname FROM HR.EMPLOYEES;
SELECT last_name AS "lastname" FROM HR.EMPLOYEES;
SELECT last_name||' is a '||EMPLOYEE_ID FROM HR.EMPLOYEES;
SELECT last_name||q'[ is a job's ]'||EMPLOYEE_ID FROM HR.EMPLOYEES;
SELECT DISTINCT first_name FROM HR.EMPLOYEES;
DESCRIBE HR.EMPLOYEES;
SELECT department_id,FIRST_NAME,SALARY FROM HR.EMPLOYEES WHERE DEPARTMENT_ID=80;
SELECT department_id,FIRST_NAME,SALARY FROM HR.EMPLOYEES WHERE DEPARTMENT_ID=1000;
SELECT SALARY FROM HR.EMPLOYEES WHERE LAST_NAME='Abel';
SELECT SALARY FROM HR.EMPLOYEES WHERE HIRE_DATE='17-feb-04';
SELECT department_id,FIRST_NAME,SALARY FROM HR.EMPLOYEES WHERE SALARY<3000;
SELECT department_id,FIRST_NAME,SALARY FROM HR.EMPLOYEES WHERE SALARY!=3000;
SELECT department_id,FIRST_NAME,SALARY FROM HR.EMPLOYEES WHERE SALARY^=3000;
SELECT department_id,FIRST_NAME,SALARY FROM HR.EMPLOYEES WHERE SALARY<>3000;
SELECT department_id,FIRST_NAME,SALARY FROM HR.EMPLOYEES WHERE SALARY BETWEEN 1000 AND 3000;
SELECT department_id,FIRST_NAME,SALARY FROM HR.EMPLOYEES WHERE SALARY IN (2900,3000,4000);
SELECT department_id,FIRST_NAME,SALARY FROM HR.EMPLOYEES WHERE FIRST_NAME like 'K%';
SELECT department_id,FIRST_NAME,SALARY FROM HR.EMPLOYEES WHERE FIRST_NAME like '%v%';
SELECT department_id,FIRST_NAME,SALARY FROM HR.EMPLOYEES WHERE FIRST_NAME like '_o%';
SELECT department_id,FIRST_NAME,SALARY FROM HR.EMPLOYEES WHERE FIRST_NAME like '__s%';
SELECT department_id,FIRST_NAME,JOB_ID FROM HR.EMPLOYEES WHERE JOB_ID like 'ST\_%' ESCAPE '\';
SELECT department_id,FIRST_NAME,JOB_ID FROM HR.EMPLOYEES WHERE MANAGER_ID IS NULL;
SELECT department_id,FIRST_NAME,JOB_ID FROM HR.EMPLOYEES WHERE SALARY >= 1000 AND JOB_ID LIKE '%MAN%';
SELECT department_id,FIRST_NAME,JOB_ID FROM HR.EMPLOYEES WHERE SALARY >= 1000 OR JOB_ID LIKE '%MAN%';
SELECT department_id,FIRST_NAME,JOB_ID,SALARY FROM HR.EMPLOYEES WHERE SALARY not IN (1000,3000);
SELECT department_id,FIRST_NAME,JOB_ID,SALARY FROM HR.EMPLOYEES WHERE JOB_ID ='SA_RE'OR JOB_ID='AD_PRES' AND SALARY > 13000;
SELECT department_id,FIRST_NAME,JOB_ID,SALARY FROM HR.EMPLOYEES WHERE (JOB_ID ='SA_RE'OR JOB_ID='AD_PRES') AND SALARY > 13000;
SELECT department_id,FIRST_NAME,JOB_ID,SALARY FROM HR.EMPLOYEES WHERE SALARY > 13000 ORDER BY 2;
SELECT department_id,FIRST_NAME,JOB_ID,SALARY FROM HR.EMPLOYEES WHERE SALARY > 1000 ORDER BY 1 desc NULLS LAST;
SELECT department_id,FIRST_NAME,JOB_ID,SALARY FROM HR.EMPLOYEES WHERE SALARY > 1000 ORDER BY EMPLOYEE_ID;
SELECT department_id,FIRST_NAME,JOB_ID,SALARY FROM HR.EMPLOYEES WHERE SALARY > 1000 ORDER BY DEPARTMENT_ID,FIRST_NAME;
SELECT employee_id,LAST_NAME,SALARY,DEPARTMENT_ID FROM HR.EMPLOYEES WHERE EMPLOYEE_ID=&emp_id;
SELECT employee_id,LAST_NAME,SALARY,DEPARTMENT_ID FROM HR.EMPLOYEES WHERE LAST_NAME=&last_name;
SELECT employee_id,LAST_NAME,SALARY,DEPARTMENT_ID FROM HR.EMPLOYEES WHERE LAST_NAME='&last_name';
SELECT &col1,&col2,SALARY,DEPARTMENT_ID FROM &table WHERE &cond ORDER BY &COL;
SELECT EMPLOYEE_ID,FIRST_NAME,&&COL1 FROM HR.EMPLOYEES WHERE &COL1 > 3000 ORDER BY &COL1;
define COL2=SALARY;
SELECT EMPLOYEE_ID,FIRST_NAME,&COL2 FROM HR.EMPLOYEES WHERE &COL2 > 3000 ORDER BY &COL2;
SELECT LOWER(LAST_NAME) FROM HR.EMPLOYEES;
SELECT UPPER(LAST_NAME) FROM HR.EMPLOYEES;
SELECT * FROM HR.EMPLOYEES WHERE UPPER(LAST_NAME)=UPPER('&NAME');
SELECT FIRST_NAME,LAST_NAME,CONCAT(first_name,LAST_NAME) FROM HR.EMPLOYEES;
SELECT FIRST_NAME||LAST_NAME FROM HR.EMPLOYEES;
SELECT FIRST_NAME,LAST_NAME,substr(LAST_NAME,1,2) FROM HR.EMPLOYEES;
SELECT FIRST_NAME,LAST_NAME,substr(LAST_NAME,1) FROM HR.EMPLOYEES;
SELECT FIRST_NAME,LAST_NAME,substr(LAST_NAME,-3) FROM HR.EMPLOYEES;
SELECT FIRST_NAME,LAST_NAME,substr(LAST_NAME,3,-2) FROM HR.EMPLOYEES;
SELECT FIRST_NAME,LAST_NAME,length(first_name) FROM HR.EMPLOYEES;
SELECT FIRST_NAME,LAST_NAME,instr(first_name,'e') FROM HR.EMPLOYEES;
SELECT FIRST_NAME,LAST_NAME,instr(first_name,'e',2) FROM HR.EMPLOYEES;
SELECT FIRST_NAME,salary,lpad(salary,10,'*'),rpad(salary,10,'*') FROM HR.EMPLOYEES;
SELECT FIRST_NAME,trim('A' from first_name) FROM HR.EMPLOYEES;
select trim('a' from 'aaaaorcaleaaaa') from SYS.DUAL;
select trim(leading 'a' from 'aaaaorcaleaaaa') from SYS.DUAL;
select trim(trailing 'a' from 'aaaaorcaleaaaa') from SYS.DUAL;
select trim(both 'a' from 'aaaaorcaleaaaa') from SYS.DUAL;
select round(65.952) from SYS.DUAL;
select round(10.652,-2) from SYS.DUAL;
select round(650.652,-2) from SYS.DUAL;
select trunc(650.652,0) from SYS.DUAL;
select trunc(650.652,-2) from SYS.DUAL;
select trunc(650.652,-3) from SYS.DUAL;
select mod(4,3) from SYS.DUAL;
select sysdate from sys.dual;
select current_date from sys.dual;
select first_name,sysdate,hire_date,round((sysdate-HIRE_DATE)/365) from hr.employees;
select first_name,sysdate,hire_date,MONTHS_BETWEEN(sysdate,HIRE_DATE)/12 from hr.employees;
select first_name,sysdate,hire_date,add_months(hire_date, 1) from hr.employees;
select first_name,sysdate,hire_date,next_day(hire_date,'friday') from hr.employees;
select first_name,sysdate,hire_date,last_day(hire_date) from hr.employees;
select first_name,sysdate,hire_date,last_day(sysdate) from hr.employees;
select first_name,sysdate,hire_date,round(HIRE_DATE,'month') from hr.employees;
select first_name,sysdate,hire_date,round(HIRE_DATE,'year') from hr.employees;
select first_name,sysdate,hire_date,trunc(HIRE_DATE,'month') from hr.employees;
select first_name,sysdate,hire_date,trunc(HIRE_DATE,'year') from hr.employees;
select first_name from hr.employees where employee_id='200';
select hire_date,to_char(hire_date,'dd/mm/yyyy') from hr.employees;
select first_name,salary,to_char(salary,'$99,999,00') from hr.employees;
select to_number('0123456789','99999999999999') from sys.dual;
select first_name from hr.employees where hire_date > to_date('1/1/1990','dd/mm/yy');
select last_name , upper(concat(substr(LAST_NAME,1,2),'_us')) from hr.employees;
select last_name,nvl(commission_pct,0) from hr.employees;
select last_name,salary*12+nvl(commission_pct,1) from hr.employees;
select last_name,nvl2(commission_pct,1,0) from hr.employees;
select first_name,last_name,nullif(length(first_name),length(last_name)) from HR.EMPLOYEES;
select COALESCE(null,null,5,3,null,9) from dual;
select last_name,salary ,job_id,
case job_id
when 'IT_PROG'  then salary*2
when 'ST_CLERK' then salary*3
when 'SA_REP'   then salary*4
else salary end
"Revised salary"
from hr.employees;
select last_name,salary ,
decode (job_id,'IT_PROG', salary*2,'ST_CLERK', salary*3,'SA_REP',salary*4,salary)
"Revised salary"
from hr.employees;