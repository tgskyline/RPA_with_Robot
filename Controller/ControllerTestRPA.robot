*** Settings ***
Library    RPA.Tables
Library    RPA.FileSystem
Library    RPA.Excel.Application
Library    RPA.Desktop
Library    Process
Library    OperatingSystem

*** Variables ***
${Program_Steam}    C:/Program Files (x86)/Steam/Steam.exe 

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
    RPA.Desktop.Open Application     ${Program_Steam}

Faz o login 
    Sleep    60s
    Wait For Element    alias:Logo.Steam     



    