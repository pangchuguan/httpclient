$PBExportHeader$genapp5.sra
$PBExportComments$Generated MDI Application Object
forward
global type genapp5 from application
end type
global transaction sqlca
global dynamicdescriptionarea sqlda
global dynamicstagingarea sqlsa
global error error
global message message
end forward

global type genapp5 from application
string appname = "genapp5"
end type
global genapp5 genapp5

on genapp5.create
appname = "genapp5"
message = create message
sqlca = create transaction
sqlda = create dynamicdescriptionarea
sqlsa = create dynamicstagingarea
error = create error
end on

on genapp5.destroy
destroy( sqlca )
destroy( sqlda )
destroy( sqlsa )
destroy( error )
destroy( message )
end on

event open;//*-----------------------------------------------------------------*/
//*    open:  Application Open Script:
//            1) Opens frame window
//*-----------------------------------------------------------------*/

/*  This prevents double toolbars  */
this.ToolBarFrameTitle = "MDI Application Toolbar"
this.ToolBarSheetTitle = "MDI Application Toolbar"

/*  Open MDI frame window  */
Open ( w_genapp5_frame )
end event

