        IDENTIFICATION DIVISION.
        PROGRAM-ID. segitiga.
        DATA DIVISION.
        WORKING-STORAGE SECTION.
        01 ANGKA PIC 99.
        01 BARIS PIC 99.
        01 AWAL PIC 99.
        PROCEDURE DIVISION.
        MULAI.
            DISPLAY '*======Program Segitiga=====*'.
            DISPLAY ' '.
            DISPLAY ( , ) 'Masukkan Angka : '.
            ACCEPT ANGKA.
            COMPUTE AWAL = 1.
            COMPUTE BARIS = ANGKA.
        PROSES.
            DISPLAY ' '.
            PERFORM SPASI BARIS TIMES.
            PERFORM BINTANG AWAL TIMES.
            IF AWAL = ANGKA
                PERFORM AKHIR
            ELSE GO TO CEK.
        CEK.
            COMPUTE AWAL = AWAL + 1.
            COMPUTE BARIS = BARIS - 1.
            GO TO  PROSES.
        SPASI.
            DISPLAY ( , ) ' '.
        BINTANG.
            DISPLAY ( , ) '* '.
        AKHIR.
            STOP RUN.
