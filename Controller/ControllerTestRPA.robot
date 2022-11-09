*** Settings ***
Library    RPA.Tables
# Library    RPA.Desktop.OperatingSystem
# Library    OperatingSystem
Library    RPA.FileSystem
Library    RPA.Excel.Application

*** Keywords ***
Acessa o arquivo
    set test Variable    ${Excel}       FilesExcel\\Teste.xlsx     
    ${Extension}    Get File Extension    FilesExcel\\Teste.xlsx
    Log to console     Extensão do arquivo: ${Extension}
    Should Be Equal    ${Extension}    .xlsx

Converte o arquivo para .csv
    Open Workbook    FilesExcel/Teste.xlsx       
    Save Excel As    FilesCSV/TestConvert.csv   file_format=${6}