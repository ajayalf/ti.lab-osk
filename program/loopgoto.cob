	IDENTIFICATION DIVISION.
	PROGRAM-ID. loopgoto.
	ENVIRONMENT DIVISION.
	DATA DIVISION.
	PROCEDURE DIVISION.
	MULAI.
	PROG-A.
	      DISPLAY "INI PARA-1".
		  PERFORM PROG-C.
	PROG-B.
	      DISPLAY "INI PARA-2".
		  STOP RUN.
	PROG-C.
	      DISPLAY "INI PARA-3".
		  GO TO PROG-F.
	PROG-D.
	      DISPLAY "INI PARA-4".
	PROG-E.
	      DISPLAY "INI PARA-5".
	      GO TO PROG-B.
	PROG-F.
	      DISPLAY "INI PARA-6".
		  GO TO PROG-D.