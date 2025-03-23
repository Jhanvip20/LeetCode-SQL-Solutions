CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  RETURN (
      select max(sal) from
     (select salary as sal,dense_rank() over (order by salary desc) as ranking
      from employee) as query where ranking=n
  );
END