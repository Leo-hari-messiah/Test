       IDENTIFICATION DIVISION.
       PROGRAM-ID. EmployeePayroll.

       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT EMPLOYEE-FILE
            ASSIGN TO '/Users/Harish/Desktop/COBOL/employee_data.txt'
               ORGANIZATION IS LINE SEQUENTIAL.

           SELECT PAYROLL-FILE 
           ASSIGN TO '/Users/Harish/Desktop/COBOL/payroll-output.txt'
               ORGANIZATION IS LINE SEQUENTIAL.

       DATA DIVISION.
       FILE SECTION.
       FD  EMPLOYEE-FILE.
       01  EMPLOYEE-RECORD.
           05  EMP-ID              PIC 9(5).
           05  EMP-NAME            PIC X(20).
           05  HOURS-WORKED        PIC 9(3)V99.
           05  HOURLY-RATE         PIC 9(2)V99.

       FD  PAYROLL-FILE.
       01  PAYROLL-RECORD.
           05  EMP-ID-OUT          PIC 9(5).
           05  EMP-NAME-OUT        PIC X(20).
           05  GROSS-PAY           PIC 9(5)V99.

       WORKING-STORAGE SECTION.
       01  WS-END-OF-FILE          PIC X  VALUE 'N'.
       01  WS-GROSS-PAY            PIC 9(5)V99.
       01  WS-VALID-RECORD         PIC X  VALUE 'Y'.

       PROCEDURE DIVISION.
           OPEN INPUT EMPLOYEE-FILE
           OPEN OUTPUT PAYROLL-FILE

           PERFORM UNTIL WS-END-OF-FILE = 'Y'
               READ EMPLOYEE-FILE INTO EMPLOYEE-RECORD
                   AT END
                       MOVE 'Y' TO WS-END-OF-FILE
                   NOT AT END
                       DISPLAY 'Processing Employee Record:'
                       DISPLAY 'EMP-ID: ' EMP-ID
                       DISPLAY 'EMP-NAME: ' EMP-NAME
                       DISPLAY 'HOURS-WORKED: ' HOURS-WORKED
                       DISPLAY 'HOURLY-RATE: ' HOURLY-RATE
                       PERFORM PROCESS-EMPLOYEE
               END-READ
           END-PERFORM

           CLOSE EMPLOYEE-FILE
           CLOSE PAYROLL-FILE
           STOP RUN.

       PROCESS-EMPLOYEE.
           MOVE 'Y' TO WS-VALID-RECORD

           IF HOURS-WORKED < 0
               DISPLAY 'Error: Negative hours worked for ' EMP-NAME
               MOVE 'N' TO WS-VALID-RECORD
           END-IF

           IF HOURLY-RATE < 0
               DISPLAY 'Error: Negative hourly rate for ' EMP-NAME
               MOVE 'N' TO WS-VALID-RECORD
           END-IF

           IF WS-VALID-RECORD = 'Y'
               COMPUTE WS-GROSS-PAY = HOURS-WORKED * HOURLY-RATE

               MOVE EMP-ID TO EMP-ID-OUT
               MOVE EMP-NAME TO EMP-NAME-OUT
               MOVE WS-GROSS-PAY TO GROSS-PAY

               WRITE PAYROLL-RECORD
               DISPLAY 'Written to PAYROLL-FILE:'
               DISPLAY 'EMP-ID-OUT: ' EMP-ID-OUT
               DISPLAY 'EMP-NAME-OUT: ' EMP-NAME-OUT
               DISPLAY 'GROSS-PAY: ' GROSS-PAY
           END-IF.

           EXIT.
