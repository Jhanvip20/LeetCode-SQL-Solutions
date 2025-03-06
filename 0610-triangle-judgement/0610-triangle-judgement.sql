# Write your MySQL query statement below
select *,
    case
        when (x+y <= z) or (x+z <= y) or (y+z <= x) then 'No'
        else 'Yes'
    end as triangle
 from Triangle;

 # Note: triangle inequality theorem states that for a set of side lengths to form a valid triangle, the sum of the lengths of any two sides must be greater than the length of the remaining side.