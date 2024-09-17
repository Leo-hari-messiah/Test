       IDENTIFICATION DIVISION.
       PROGRAM-ID. TRAIL.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-NAME       PIC X(20) VALUE 'Harish'.
       01 WS-AGE        PIC 99 VALUE 27.
       01 WS-EMP-ID     PIC 9(5) VALUE 98765.
       01 WS-SALARY     PIC 9(6)V99 VALUE 195000.50.

       PROCEDURE DIVISION.
           DISPLAY 'Calling the TRAILS program...'.
           CALL 'TRAILS' USING WS-NAME, WS-AGE, WS-EMP-ID, WS-SALARY.
           DISPLAY 'Returned to TRAIL program'.
           STOP RUN.
