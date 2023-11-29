libname dblib saphana
server="server ip"
port="30015"
user="user"
password="password"
schema="schema";

libname sasdir1 = "home/filedir1" access=readonly;
libname sasdir2 = "home/filedir2" access=readonly;

/* ${upload_file}: 디렉토리 내에 있는 파일명 */
/* ${file_upload_tbl}: 생성할 테이블 */
proc sql;
	create table dblib.${file_upload_tbl} as
	select * from sasdir1.${upload_file};
run;
