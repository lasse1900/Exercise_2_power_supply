*** Settings ***
Library    lib/commands.py

*** Test Cases ***
Turn on Power on all supplies remotely
     ${out}=    RPS send commands     SetPower  0  0.5
     ${out}=    RPS send commands     SetPower  1  0.5
     ${out}=    RPS send commands     SetPower  2  0.5
     ${out}=    RPS send commands     SetPower  3  0.5
     ${out}=    RPS send commands     SetPower  4  0.5
     ${out}=    RPS send commands     SetPower  5  0.5


Verify power in on on all supplies
    ${out}=     RPS get power    GetPower
    should contain    ${out}  P60=0.5
    should contain    ${out}  P61=0.5
    should contain    ${out}  P62=0.5
    should contain    ${out}  P63=0.5
    should contain    ${out}  P64=0.5
    should contain    ${out}  P65=0.5

*** Keywords ***
RPS send commands
    [Arguments]    ${command}    ${port}    ${state}
    ${output}=    Send cmds    ${command}  ${port}  ${state}
    [return]    ${output}

RPS get Power
    [Arguments]    ${command}
    ${output}=    Send cmds    ${command}
    [return]    ${output}