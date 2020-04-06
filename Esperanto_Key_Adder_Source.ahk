#Hotstring *?C ; *:No endchars ?:Anywhere in a string C:Case-sensitive
global KeysOn := True ; I like having ToggleProgram as 

Menu, Tray, NoStandard
Menu, Tray, Add, Toggle, ToggleProgram
Menu, Tray, Check, Toggle
Menu, Tray, Add, Exit, ExitProg

#if KeysOn
::Cx::Ĉ
::cx::ĉ
::Gx::Ĝ
::gx::ĝ
::Hx::Ĥ
::hx::ĥ
::Jx::Ĵ
::jx::ĵ
::Sx::Ŝ
::sx::ŝ
::Ux::Ŭ
::ux::ŭ
#if

ToggleProgram(MenuItem, MenuNum, MenuName)
{
    Menu, %MenuName%, ToggleCheck, %MenuItem%
    if (KeysOn)
        KeysOn := False
    else
        KeysOn := True
}

return

ExitProg:
ExitApp
return