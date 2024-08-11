select IF(id<(select max(id)from Seat),
IF(id%2=0,id-1,id+1),
IF(id%2=0,id-1,id))as id,student
from Seat
ORDER BY id;
