﻿$PBExportHeader$genapp4.sra
$PBExportComments$Generated SDI Application Object
forward
global type genapp4 from application
end type
global transaction sqlca
global dynamicdescriptionarea sqlda
global dynamicstagingarea sqlsa
global error error
global message message
end forward

global type genapp4 from application
string appname = "genapp4"
end type
global genapp4 genapp4

on genapp4.create
appname = "genapp4"
message = create message
sqlca = create transaction
sqlda = create dynamicdescriptionarea
sqlsa = create dynamicstagingarea
error = create error
end on

on genapp4.destroy
destroy( sqlca )
destroy( sqlda )
destroy( sqlsa )
destroy( error )
destroy( message )
end on

event open;//*-----------------------------------------------------------------*/
//*    open:  Application Open Script
//*          1) Instantiate connection service
//*           2) Populate SQLCA and Connect to the database
//*           3) Open main window
//*-----------------------------------------------------------------*/
n_genapp4_connectservice lnv_connectserv

lnv_connectserv = Create using "n_genapp4_connectservice"

If lnv_connectserv.of_ConnectDB ( ) = 0 Then
	/*  Open Main window  */
	Open ( w_genapp4_main )
End If

Destroy lnv_connectserv
end event

event close;//*-----------------------------------------------------------------*/
//*    close:  Application Close Script
//            1) Instantiate connection service
//            2) Disconnect from the database
//*-----------------------------------------------------------------*/
n_genapp4_connectservice lnv_connectserv

lnv_connectserv = Create using "n_genapp4_connectservice"

lnv_connectserv.of_DisconnectDB ( )

Destroy lnv_connectserv
end event

