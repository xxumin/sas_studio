libname dblib saphana
server="server ip"
port="30015"
user="user"
password="password"
schema="schema";

libname sasdir1 = "home/filedir1" access=readonly;
libname sasdir2 = "home/filedir2" access=readonly;

proc sql;
	create table dblib.file_upload_tbl as
	select * from sasdir1.file_upload_tbl;
run;
