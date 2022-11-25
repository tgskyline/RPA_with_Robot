*** Settings ***
Library    RPA.Tables
Library    RPA.FileSystem
Library    RPA.Excel.Application
Library    RPA.Desktop
Library    Process

*** Keywords ***
Acessa o arquivo
    set test Variable    ${Excel}       FilesExcel\\Teste.xlsx     
    ${Extension}    Get File Extension    FilesExcel\\Teste.xlsx
    Log to console     Extensão do arquivo: ${Extension}
    Should Be Equal    ${Extension}    .xlsx

Converte o arquivo para .csv
    Open Workbook    FilesExcel/Teste.xlsx       
    Save Excel As    FilesCSV/TestConvert.csv   file_format=${6}

Abre o aplicativo X
    ${Open}    RPA.Desktop.Open Application    C:/Program Files/Appium Server GUI/Appium Server GUI.exe    
    # Sleep    20s   
    # ${HOST}    Find Element    image=Login.png