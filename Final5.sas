data calcclasses;
	input Course_Code $ Course_Number Credit_Hours Grade $;
	datalines;
MAC 2311 4 B
MAC 2312 4 F
MAC 2312 4 B
MAC 2313 4 B
;
run;
proc sql;
	select distinct Grade
	from calcclasses;
run;
proc sql;
	select distinct Course_Number
	from calcclasses;
run;
proc freq data=calcclasses;
	TABLE Course_Number / MISSING;
RUN;
data test;
    set calcclasses;
    if Grade = "F" then delete;
run;
proc freq data=test;
	TABLE Course_Number / MISSING;
RUN;
proc sql;
	select Credit_Hours, Grade
	from calcclasses
	group by Credit_Hours, Grade;
run;
proc print data=test;
run;
