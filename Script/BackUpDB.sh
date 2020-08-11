#! /bin/bash
mysqldump -u Root  -pbash dbMaster | gzip > /home/manager/BackUpDB/BackUp_file/database_Report-GI_`date '+%d-%m-%Y'`.sql.gz
