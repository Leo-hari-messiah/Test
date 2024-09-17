       IDENTIFICATION DIVISION.
       PROGRAM-ID. TRAILS.

       DATA DIVISION.
       LINKAGE SECTION.
       01 LK-NAME       PIC X(20).
       01 LK-AGE        PIC 99.
       01 LK-EMP-ID     PIC 9(5).

       PROCEDURE DIVISION USING LK-NAME, LK-AGE, LK-EMP-ID.
           DISPLAY 'In TRAILS Program'.
           DISPLAY 'Name Passed: ' LK-NAME.
           DISPLAY 'Age Passed: ' LK-AGE.
           DISPLAY 'Employee ID Passed: ' LK-EMP-ID.
           STOP RUN.
