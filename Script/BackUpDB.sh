#! /bin/bash
mysqldump -u manager  -p@Gl0b4l1nd0 dbMaster | gzip > /home/manager/BackUpDB/BackUp_file/database_Report-GI_`date '+%d-%m-%Y'`.sql.gz
