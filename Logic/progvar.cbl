      ******************************************************************
      * Author: Henrique S. Mendes
      * Date:  10/05/2022
      * Purpose: Study VAR in Cobol
      * Tectonics: cobc
      ******************************************************************
         IDENTIFICATION DIVISION.
         PROGRAM-ID. Aluno.
         DATA DIVISION.
         FILE SECTION.
         WORKING-STORAGE SECTION.
         01 DADOS.
             03 DADOS-NOME PIC A(15).
             03 NOTAS.
                05 Nota1 PIC 9(1)V99.
                05 Nota2 PIC 9(1)V99.
                05 Nota3 PIC 9(1)V99.
                05 Nota4 PIC 9(1)V99.
             03 Result   PIC 9(1)V99.

         77 MEDIA          PIC 9(02)V99 VALUE 7.

         PROCEDURE DIVISION.
         MAIN-PROCEDURE.
              DISPLAY "Informe o nome do aluno:"
              ACCEPT DADOS-NOME


              DISPLAY "INFORME A NOTA 1:"
              ACCEPT Nota1

              DISPLAY "INFORME A NOTA 2:"
              ACCEPT Nota2

              DISPLAY "INFORME A NOTA 3:"
              ACCEPT Nota3

              DISPLAY "INFORME A NOTA 4:"
              ACCEPT Nota4


              COMPUTE Result = (nota1 + Nota2 + Nota3 + Nota4)/4

              IF Result >=  MEDIA THEN
                  DISPLAY "ALUNO" DADOS-NOME
                  " APROVADO COM MEDIA "
                  Result

              ELSE
                  DISPLAY "ALUNO" DADOS-NOME
                  " ESTA REPROVADO, MEDIA "
                  Result



              STOP RUN.
              END PROGRAM Aluno.
