       IDENTIFICATION DIVISION.
       PROGRAM-ID. act3.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77 X PIC 99 VALUE 0.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           IF X < 10
               GO TO PARA-2.
           GO TO SELESAI.
       PARA-2.
           DISPLAY "INI LOOPING KE-" X.
           COMPUTE X = X + 1.
           GO TO MAIN-PROCEDURE.
       SELESAI.
           STOP RUN.
       END PROGRAM act3.