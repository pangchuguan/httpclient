$PBExportHeader$assembly.sra
$PBExportComments$Generated Application Object
forward
global type assembly from application
end type
global transaction sqlca
global dynamicdescriptionarea sqlda
global dynamicstagingarea sqlsa
global error error
global message message
end forward

global type assembly from application
string appname = "assembly"
end type
global assembly assembly

on assembly.create
appname = "assembly"
message = create message
sqlca = create transaction
sqlda = create dynamicdescriptionarea
sqlsa = create dynamicstagingarea
error = create error
end on

on assembly.destroy
destroy( sqlca )
destroy( sqlda )
destroy( sqlsa )
destroy( error )
destroy( message )
end on

