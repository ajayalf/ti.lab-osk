IDENTIFICATION DIVISION. 
       PROGRAM-ID. ACT4.
       AUTHOR. ajayalf.
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT MHS ASSIGN TO DISK
           ORGANIZATION IS LINE SEQUENTIAL
           FILE STATUS IS STATUS-SALAH.
       DATA DIVISION.
       FILE SECTION.
       FD MHS
           LABEL RECORD IS STANDARD
           VALUE OF FILE-ID IS 'DATA.TXT'
           DATA RECORD IS RECMHS.
       01 RECMHS.
           02 NPM pic X(14).
           02 NAMA pic X(23).
           02 KELAS pic X(5).
       WORKING-STORAGE SECTION. 
       77 STATUS-SALAH pic XX.
       01 MHS-O. 
           02 NPM-O pic X(14).
           02 NAMA-O pic X(23).
           02 KELAS-O pic X(5).
       01 ISI-LAGI pic X.
           88 LAGI VALUE 'Y', 'y'.
           88 TIDAK VALUE 'T', 't'.
       77 TERIMA pic X.
       SCREEN SECTION.
       01 HAPUS-LAYAR.
           02 BLANK SCREEN.
       01 ISI-DATA.
           02 LINE 3 COLUMN 5 'NPM        :' HIGHLIGHT.
           02 COLUMN PLUS 1 pic X(8) TO NPM.
           02 LINE 4 COLUMN 5 'NAMA       :' HIGHLIGHT.
           02 COLUMN PLUS 1 pic X(20) TO NAMA.
           02 LINE 5 COLUMN 5 'KELAS      :' HIGHLIGHT.
           02 COLUMN PLUS 1 PIC X(5) TO KELAS.
       PROCEDURE DIVISION.
       PILIH-MENU.
           DISPLAY HAPUS-LAYAR.
           DISPLAY "=====DAFTAR MENU=====".
           DISPLAY "1. INPUT DATA".
           DISPLAY "2. OUTPUT DATA".
           DISPLAY "3. KELUAR".
           DISPLAY (5 , 1)"MASUKKAN PILIHAN ANDA : ".
           ACCEPT ( , ) TERIMA.

           IF TERIMA = 1 GO TO BUKA-FILE.
           IF TERIMA = 2 GO TO BUKA-FILE2.
           IF TERIMA = 3 GO TO SELESAI2.
           IF TERIMA NOT = 1 OR 2 OR 3 GO TO PILIH-MENU.

       BUKA-FILE.
           OPEN OUTPUT MHS.
       MULAI.
           DISPLAY HAPUS-LAYAR.
           DISPLAY ISI-DATA.
           ACCEPT ISI-DATA.
           WRITE RECMHS.
           DISPLAY (10 , 5)"ADA DATA LAGI? (Y/T) : ".
           ACCEPT ( , ) ISI-LAGI.
           IF LAGI GO TO MULAI.
           IF TIDAK GO TO PILIH-MENU.

       BUKA-FILE2.
           CLOSE MHS.
           OPEN INPUT MHS.
       MULAI2.
           DISPLAY HAPUS-LAYAR.
           DISPLAY "================================================".
           DISPLAY "   NPM           NAMA                   KELAS".
           DISPLAY "================================================".
       BACA.
           READ MHS INTO MHS-O
           AT END GO TO SELESAI.
       TAMPIL.
           DISPLAY ( , 4) MHS-O.
           DISPLAY SPACE.
           ADD 1 TO LIN.
           GO TO BACA.
       SELESAI.
           CLOSE MHS.
           DISPLAY ( , )"INGIN KEMBALI KE MENU? (Y/T) : ".
           ACCEPT ( , ) ISI-LAGI.
           IF LAGI GO TO PILIH-MENU.
           IF TIDAK GO TO SELESAI2.
       SELESAI2.    
           STOP RUN.