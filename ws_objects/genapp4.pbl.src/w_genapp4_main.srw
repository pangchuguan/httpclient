$PBExportHeader$w_genapp4_main.srw
$PBExportComments$Generated SDI Main Window
forward
global type w_genapp4_main from window
end type
end forward

global type w_genapp4_main from window
integer width = 2949
integer height = 1920
boolean titlebar = true
string title = "Main Window"
string menuname = "m_genapp4_main"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 79416533
boolean center = true
end type
global w_genapp4_main w_genapp4_main

on w_genapp4_main.create
if this.MenuName = "m_genapp4_main" then this.MenuID = create m_genapp4_main
end on

on w_genapp4_main.destroy
if IsValid(MenuID) then destroy(MenuID)
end on

