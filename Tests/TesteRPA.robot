*** Settings *** 
Resource    ../Controller/ControllerTestRPA.robot

*** Tasks ***

RPA01 - Acessa diretório e converte arquivo .xls para .csv
    Acessa o arquivo
    Converte o arquivo para .csv
