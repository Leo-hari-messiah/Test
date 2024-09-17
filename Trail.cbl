       IDENTIFICATION DIVISION.
       PROGRAM-ID. TRAIL.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-NAME       PIC X(20) VALUE 'AI_ML_Star'.
       01 WS-AGE        PIC 99 VALUE 25.
       01 WS-EMP-ID     PIC 9(5) VALUE 12345.

       PROCEDURE DIVISION.
           DISPLAY 'Calling the TRAILS program...'.
           CALL 'TRAILS' USING WS-NAME, WS-AGE, WS-EMP-ID.
           DISPLAY 'Returned to TRAIL program'.
           STOP RUN.
