*** Settings ***
Library           ExcelLibrary
Library           Selenium Library

*** Test Cases ***
ExcelTC01
    ExcelLibrary.Close All Excel Documents

ReadExcelDemo
    ExcelLibrary.Open Excel Document    filename=E:/Robot/Demo.xlsx    doc_id=None
    ${a}    Read Excel Cell    row_num=2    col_num=2    sheet_name=Sheet1
    Should Be Equal As Strings    ${a}    Lamia
    Get Sheet    sheet_name=Sheet1
    ${col_data}=    Create List    a1    a2    a3
    Write Excel Column    col_num=3    col_data=${col_data}    sheet_name=Sheet1
