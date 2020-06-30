### Running BackUp otomatis dengan shell script schedule CronJob.

Ada 2 direktori 
1. BackUp_file buat simpan database sql yang di archives
2. Script buat simpan Script backupDB
-------------------------------------------

* Cara kerja backup file berjalan menggunakan cronjob dan akan bekerja sesuai dg waktu yg telah di tentukan.

Disini saya asumsikan di server 03. Linux fedora runing script nya.

File backup terdapat di :

    /home/manager # letak file
    .
    └── BackUpDB
        ├── BackUp_file #letak db
        └── Script #letak script backUp
            └── BackUpDB.sh

3 directories, 1 file

* command cronJob : 

Run Script 

    #run-script
    45 16 * * * sh /home/manager/BackUpDB/Script/BackUpDB.sh

  **Backup otomatis dikerjakan setiap jam 16:45.

* cara extrak file archive db yg di backup script extensi .gz dr Linux

$gunzip -k namaDatabase

    $gunzip -k database_Report-GI_19-06-2020.sql.gz 

* cara menghapus file archive db di Linux

    $rm -rf < nama-file > 

    exp. $rm -rf database_Report-GI_19-06-2020.sql.gz
