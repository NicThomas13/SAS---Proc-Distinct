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
data test;
    set calcclasses;
    if grade = "F" then delete;
run;
proc print data=test;
run;
