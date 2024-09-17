       IDENTIFICATION DIVISION.
       PROGRAM-ID. SimpleAddition.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 NUM1        PIC 9(2) VALUE 10.
       01 NUM2        PIC 9(2) VALUE 20.
       01 RESULT      PIC 9(3).

       PROCEDURE DIVISION.
           ADD NUM1 TO NUM2 GIVING RESULT.
           DISPLAY 'Result: ' RESULT.
           STOP RUN.
