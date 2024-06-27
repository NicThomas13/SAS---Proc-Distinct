data calcclasses;
	input Course_Code $ Course_Number Credit_Hours Grade $;
	datalines;
MAC 2311 4 B
MAC 2312 4 F
MAC 2312 4 B
MAC 2313 4 B
;
run;
proc sql noprint;
	select Course_Number
	into :s1 separated by ","
	from calcclasses;
	%put &s1;
	%put There were &sqlobs values.;
proc sql noprint;
	select distinct Course_Number
	into :s1 separated by ","
	from calcclasses;
	%put &s1;
	%put There were &sqlobs distinct values.;
	proc sql noprint;
	select Grade
	into :s1 separated by ","
	from calcclasses;
	%put &s1;
	%put There were &sqlobs values.;
proc sql noprint;
	select distinct Grade
	into :s1 separated by ","
	from calcclasses;
	%put &s1;
	%put There were &sqlobs distinct values.;
data test;
    set calcclasses;
    if Grade = "F" then delete;
run;
proc print data=test;
run;
proc print data=calcclasses;
run;
