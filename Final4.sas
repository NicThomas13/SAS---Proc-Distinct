data calcclasses;
	input code $ Course_Number hours grade $;
	datalines;
MAC 2311 4 B
MAC 2312 4 F
MAC 2312 4 B
MAC 2313 4 B
;
run;
proc sql;
create table newtable as
select distinct Course_Number, hours, grade
from calcclasses
where grade="B" 
;
run;
PROC PRINT DATA=newtable;
run;
