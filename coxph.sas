PROC IMPORT DATAFILE="/home/u64114438/MAHE1/Project1111/Remission.csv"
OUT=survival
dbms=csv
replace;
getnames=yes;
run;

ods rtf file="/home/u64114438/MAHE1/Project1111/Remission.rtf" startpage=no;

/* KAPLEN MEIER CURVE */

PROC LIFETEST DATA=survival plots=survival(atrisk);
time SURVT*STATUS(0);
strata SEX;
run;

/* COX PH */
PROC PHREG DATA=survival;
class sex(ref='0');
model SURVT*STATUS(0)=SEX LOGWBC RX;
RUN;

ods rtf close;




