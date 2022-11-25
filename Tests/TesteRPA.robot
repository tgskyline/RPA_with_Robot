*** Settings *** 
Resource    ../Controller/ControllerTestRPA.robot

*** Tasks ***

RPA01 - Acessa diretório e converte arquivo .xls para .csv
    Acessa o arquivo
    Converte o arquivo para .csv

RPA02 - Abre um aplicativo e faz login
    Abre o aplicativo X
    # Faz o login
