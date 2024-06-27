data classes;
	input Course_Code $ Course_Number Credit_Hours Grade $;
	datalines;
STA 4162 4 A
STA 4163 4 A
STA 4164 4 A
COP 3223 3 B
MAC 2311 4 B
MAC 2312 4 B
MAC 2313 4 B
BSC 2010 4 A
CHM 2045 4 A
PHY 2048 4 A
STA 4321 3 A
STA 4322 3 A
;
run;
proc sql;
	select distinct Credit_Hours, Grade
	from classes;
run;
proc sql;
	select distinct Grade
	from classes
	order by Grade;
run;
proc sql;
	select distinct *
	from classes
	order by Grade;
run;
proc sql;
	select distinct Course_Code, Grade
	from classes
	order by Grade;
run;
proc sql;
	select distinct Course_Code
	from classes;
run;
