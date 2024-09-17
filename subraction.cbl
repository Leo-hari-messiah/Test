       IDENTIFICATION DIVISION.
       PROGRAM-ID. Subtraction.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 NUM1        PIC 9(2) VALUE 20.
       01 NUM2        PIC 9(2) VALUE 10.
       01 RESULT      PIC 9(2).

       PROCEDURE DIVISION.
           SUBTRACT NUM2 FROM NUM1 GIVING RESULT.
           DISPLAY 'Result: ' RESULT.
           STOP RUN.
      