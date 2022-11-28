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
    OperatingSystem.Remove File    FilesCSV\\TestConvert.csv
    set test Variable    ${Excel}       FilesExcel\\Teste.xlsx     
    ${Extension}    Get File Extension    FilesExcel\\Teste.xlsx
    Log to console     ${\n}${\n}Extensão do arquivo: ${Extension}${\n}
    Should Be Equal    ${Extension}    .xlsx

Converte o arquivo para .csv
    Open Workbook    FilesExcel/Teste.xlsx       
    Save Excel As    FilesCSV/TestConvert.csv   file_format=${6}
    Log to console    ${\n}ARQUIVO CONVERTIDO COM SUCESSO${\n}${\n} 
    Quit Application
    
Abre o aplicativo X
    RPA.Desktop.Open Application     ${Program_Steam}
    Sleep    5s

Faz o login 
    Wait For Element    alias:Logo.Steam     



    