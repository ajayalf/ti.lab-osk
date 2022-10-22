           IDENTIFICATION DIVISION.
           PROGRAM-ID. rak.
           AUTHOR. rak.
           ENVIRONMENT DIVISION.
           DATA DIVISION.
           WORKING-STORAGE SECTION.
           77 A PIC 9.
           77 B PIC 9.
           77 ANGKA PIC 9.
           PROCEDURE DIVISION.
           MULAI.
               DISPLAY 'Masukkan Angka: '.
               ACCEPT ANGKA.
               DISPLAY SPACE.
               PERFORM PROSES
                    VARYING A FROM 1 BY 1 UNTIL A > ANGKA
                    AFTER B FROM 1 BY 1 UNTIL B > A.
               STOP RUN.
           PROSES.
               DISPLAY ( , ) B ' '.
               IF A = B DISPLAY SPACE.