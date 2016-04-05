! Name of package being compiled: sh
! 
! Symbols from runtime.s
	.import	_putString
	.import	_heapInitialize
	.import	_heapAlloc
	.import	_heapFree
	.import	_IsKindOf
	.import	_RestoreCatchStack
	.import	_PerformThrow
	.import	_runtimeErrorOverflow
	.import	_runtimeErrorZeroDivide
	.import	_runtimeErrorNullPointer
	.import	_runtimeErrorUninitializedObject
	.import	_runtimeErrorWrongObject
	.import	_runtimeErrorWrongObject2
	.import	_runtimeErrorWrongObject3
	.import	_runtimeErrorBadObjectSize
	.import	_runtimeErrorDifferentArraySizes
	.import	_runtimeErrorWrongArraySize
	.import	_runtimeErrorUninitializedArray
	.import	_runtimeErrorBadArrayIndex
	.import	_runtimeErrorNullPointerDuringCall
	.import	_runtimeErrorArrayCountNotPositive
	.import	_runtimeErrorRestoreCatchStackError
	.text
! ErrorDecls
	.import	_Error_P_UserSystem_UncaughtThrowError
	.align
! Functions imported from other packages
	.import	_P_UserSystem_Sys_Exit
	.import	_P_UserSystem_Sys_Shutdown
	.import	_P_UserSystem_Sys_Yield
	.import	_P_UserSystem_Sys_Fork
	.import	_P_UserSystem_Sys_Join
	.import	_P_UserSystem_Sys_Exec
	.import	_P_UserSystem_Sys_Create
	.import	_P_UserSystem_Sys_Open
	.import	_P_UserSystem_Sys_Read
	.import	_P_UserSystem_Sys_Write
	.import	_P_UserSystem_Sys_Seek
	.import	_P_UserSystem_Sys_Close
	.import	DoSyscall
	.import	TerminateWithError
	.import	print
	.import	printInt
	.import	printHex
	.import	printChar
	.import	printBool
	.import	printDouble
	.import	_P_UserSystem_StrEqual
	.import	_P_UserSystem_StrCopy
	.import	_P_UserSystem_StrCmp
	.import	_P_UserSystem_Min
	.import	_P_UserSystem_Max
	.import	_P_UserSystem_printIntVar
	.import	_P_UserSystem_printHexVar
	.import	_P_UserSystem_printBoolVar
	.import	_P_UserSystem_printCharVar
	.import	_P_UserSystem_printPtr
	.import	_P_UserSystem_nl
	.import	_P_UserSystem_MemoryEqual
	.import	getCatchStack
	.import	MemoryZero
	.import	MemoryCopy
	.import	_P_UserSystem_KPLSystemInitialize
	.import	_P_UserSystem_KPLMemoryAlloc
	.import	_P_UserSystem_KPLMemoryFree
	.import	_P_UserSystem_KPLUncaughtThrow
	.import	_P_UserSystem_KPLIsKindOf
	.import	_P_UserSystem_KPLSystemError
! Externally visible functions in this package
	.export	_mainEntry
	.export	main
! The following class and its methods are from other packages
	.import	_P_UserSystem_Object
! The following interfaces are from other packages
! The following interfaces are from this package
! Globals imported from other packages
! Global variables in this package
	.data
_Global_commandLine:
	.skip	36
	.align
! String constants
_StringConst_16:
	.word	20			! length
	.ascii	"Problems in PutChar\n"
	.align
_StringConst_15:
	.word	20			! length
	.ascii	"Problems in GetChar\n"
	.align
_StringConst_14:
	.word	3			! length
	.ascii	"\b \b"
	.align
_StringConst_13:
	.word	23			! length
	.ascii	"sh: Command not found.\n"
	.align
_StringConst_12:
	.word	25			! length
	.ascii	"sh: No such output file.\n"
	.align
_StringConst_11:
	.word	8			! length
	.ascii	"terminal"
	.align
_StringConst_10:
	.word	24			! length
	.ascii	"sh: No such input file.\n"
	.align
_StringConst_9:
	.word	27			! length
	.ascii	"[Shell process terminated]\n"
	.align
_StringConst_8:
	.word	4			! length
	.ascii	"exit"
	.align
_StringConst_7:
	.word	26			! length
	.ascii	"sh: Command line problems\n"
	.align
_StringConst_6:
	.word	31			! length
	.ascii	"sh: Missing name for redirect.\n"
	.align
_StringConst_5:
	.word	31			! length
	.ascii	"sh: Missing name for redirect.\n"
	.align
_StringConst_4:
	.word	2			! length
	.ascii	"% "
	.align
_StringConst_3:
	.word	35			! length
	.ascii	"  Type \'cat < help\' for more info.\n"
	.align
_StringConst_2:
	.word	28			! length
	.ascii	"  Type \'exit\' to terminate.\n"
	.align
_StringConst_1:
	.word	36			! length
	.ascii	"Welcome to the BLITZ Shell Program.\n"
	.align
	.text
! 
! =====  MAIN ENTRY POINT  =====
! 
_mainEntry:
	set	_packageName,r2		! Get CheckVersion started
	set	0x8e8a73e1,r3		! .  hashVal = -1903528991
	call	_CheckVersion_P_sh_	! .
	cmp	r1,0			! .
	be	_Label_23		! .
	ret				! .
_Label_23:				! .
	call	_heapInitialize
	jmp	main
! 
! Source Filename and Package Name
! 
_sourceFileName:
	.ascii	"sh.c\0"
_packageName:
	.ascii	"sh\0"
	.align
!
! CheckVersion
!
!     This routine is passed:
!       r2 = ptr to the name of the 'using' package
!       r3 = the expected hashVal for 'used' package (myPackage)
!     It prints an error message if the expected hashVal is not correct
!     It then checks all the packages that 'myPackage' uses.
!
!     This routine returns:
!       r1:  0=No problems, 1=Problems
!
!     Registers modified: r1-r4
!
_CheckVersion_P_sh_:
	.export	_CheckVersion_P_sh_
	set	0x8e8a73e1,r4		! myHashVal = -1903528991
	cmp	r3,r4
	be	_Label_24
	set	_CVMess1,r1
	call	_putString
	mov	r2,r1			! print using package
	call	_putString
	set	_CVMess2,r1
	call	_putString
	set	_packageName,r1		! print myPackage
	call	_putString
	set	_CVMess3,r1
	call	_putString
	set	_packageName,r1		! print myPackage
	call	_putString
	set	_CVMess4,r1
	call	_putString
	mov	r2,r1			! print using package
	call	_putString
	set	_CVMess5,r1
	call	_putString
	set	_packageName,r1		! print myPackage
	call	_putString
	set	_CVMess6,r1
	call	_putString
	mov	1,r1
	ret	
_Label_24:
	mov	0,r1
! Make sure _P_UserSystem_ has hash value 0xd3ed0851 (decimal -739440559)
	set	_packageName,r2
	set	0xd3ed0851,r3
	call	_CheckVersion_P_UserSystem_
	.import	_CheckVersion_P_UserSystem_
	cmp	r1,0
	bne	_Label_25
_Label_25:
	ret
_CVMess1:	.ascii	"\nVERSION CONSISTENCY ERROR: Package '\0"
_CVMess2:	.ascii	"' uses package '\0"
_CVMess3:	.ascii	"'.  Whenever a header file is modified, all packages that use that package (directly or indirectly) must be recompiled.  The header file for '\0"
_CVMess4:	.ascii	"' has been changed since '\0"
_CVMess5:	.ascii	"' was compiled last.  Please recompile all packages that depend on '\0"
_CVMess6:	.ascii	"'.\n\n\0"
	.align
! 
! ===============  FUNCTION main  ===============
! 
main:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor_main,r1
	push	r1
	mov	90,r1
_Label_371:
	push	r0
	sub	r1,1,r1
	bne	_Label_371
	mov	19,r13		! source line 19
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	30,r13		! source line 30
	mov	"\0\0AS",r10
!   _temp_26 = &_Global_commandLine
	set	_Global_commandLine,r1
	store	r1,[r14+-224]
!   NEW ARRAY Constructor...
!   _temp_28 = &_temp_27
	add	r14,-220,r1
	store	r1,[r14+-184]
!   _temp_28 = _temp_28 + 4
	load	[r14+-184],r1
	add	r1,4,r1
	store	r1,[r14+-184]
!   Next value...
	mov	30,r1
	store	r1,[r14+-180]
_Label_30:
!   Data Move: *_temp_28 = 32  (sizeInBytes=1)
	mov	32,r1
	load	[r14+-184],r2
	storeb	r1,[r2]
!   _temp_28 = _temp_28 + 1
	load	[r14+-184],r1
	add	r1,1,r1
	store	r1,[r14+-184]
!   _temp_29 = _temp_29 + -1
	load	[r14+-180],r1
	add	r1,-1,r1
	store	r1,[r14+-180]
!   if intNotZero (_temp_29) then goto _Label_30
	load	[r14+-180],r1
	cmp	r1,r0
	bne	_Label_30
!   Initialize the array size...
	mov	30,r1
	store	r1,[r14+-220]
!   _temp_31 = &_temp_27
	add	r14,-220,r1
	store	r1,[r14+-176]
!   make sure array has size 30
	load	[r14+-224],r1
	load	[r1],r1
	set	30, r2
	cmp	r1,0
	be	_Label_372
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_372:
!   make sure array has size 30
	load	[r14+-176],r1
	load	[r1],r1
	set	30, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_26 = *_temp_31  (sizeInBytes=36)
	load	[r14+-176],r5
	load	[r14+-224],r4
	mov	9,r3
_Label_373:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_373
! ASSIGNMENT STATEMENT...
	mov	31,r13		! source line 31
	mov	"\0\0AS",r10
!   _temp_32 = &progName
	add	r14,-280,r1
	store	r1,[r14+-172]
!   _temp_33 = &_Global_commandLine
	set	_Global_commandLine,r1
	store	r1,[r14+-168]
!   make sure array has size 30
	load	[r14+-172],r1
	load	[r1],r1
	set	30, r2
	cmp	r1,0
	be	_Label_374
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_374:
!   make sure array has size 30
	load	[r14+-168],r1
	load	[r1],r1
	set	30, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_32 = *_temp_33  (sizeInBytes=36)
	load	[r14+-168],r5
	load	[r14+-172],r4
	mov	9,r3
_Label_375:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_375
! ASSIGNMENT STATEMENT...
	mov	32,r13		! source line 32
	mov	"\0\0AS",r10
!   _temp_34 = &inFile
	add	r14,-316,r1
	store	r1,[r14+-164]
!   _temp_35 = &_Global_commandLine
	set	_Global_commandLine,r1
	store	r1,[r14+-160]
!   make sure array has size 30
	load	[r14+-164],r1
	load	[r1],r1
	set	30, r2
	cmp	r1,0
	be	_Label_376
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_376:
!   make sure array has size 30
	load	[r14+-160],r1
	load	[r1],r1
	set	30, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_34 = *_temp_35  (sizeInBytes=36)
	load	[r14+-160],r5
	load	[r14+-164],r4
	mov	9,r3
_Label_377:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_377
! ASSIGNMENT STATEMENT...
	mov	33,r13		! source line 33
	mov	"\0\0AS",r10
!   _temp_36 = &outFile
	add	r14,-352,r1
	store	r1,[r14+-156]
!   _temp_37 = &_Global_commandLine
	set	_Global_commandLine,r1
	store	r1,[r14+-152]
!   make sure array has size 30
	load	[r14+-156],r1
	load	[r1],r1
	set	30, r2
	cmp	r1,0
	be	_Label_378
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_378:
!   make sure array has size 30
	load	[r14+-152],r1
	load	[r1],r1
	set	30, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_36 = *_temp_37  (sizeInBytes=36)
	load	[r14+-152],r5
	load	[r14+-156],r4
	mov	9,r3
_Label_379:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_379
! CALL STATEMENT...
!   _temp_38 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_38  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	35,r13		! source line 35
	mov	"\0\0CA",r10
	call	_function_21_Print
! CALL STATEMENT...
!   _temp_39 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_39  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	36,r13		! source line 36
	mov	"\0\0CA",r10
	call	_function_21_Print
! CALL STATEMENT...
!   _temp_40 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-140]
!   Prepare Argument: offset=8  value=_temp_40  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+0]
!   Call the function
	mov	37,r13		! source line 37
	mov	"\0\0CA",r10
	call	_function_21_Print
! WHILE STATEMENT...
	mov	39,r13		! source line 39
	mov	"\0\0WH",r10
_Label_41:
!	jmp	_Label_42
_Label_42:
	mov	39,r13		! source line 39
	mov	"\0\0WB",r10
! CALL STATEMENT...
!   _temp_44 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_44  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	42,r13		! source line 42
	mov	"\0\0CA",r10
	call	_function_21_Print
! ASSIGNMENT STATEMENT...
	mov	45,r13		! source line 45
	mov	"\0\0AS",r10
!   gotCommand = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-16]
! ASSIGNMENT STATEMENT...
	mov	46,r13		! source line 46
	mov	"\0\0AS",r10
!   gotInFile = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-17]
! ASSIGNMENT STATEMENT...
	mov	47,r13		! source line 47
	mov	"\0\0AS",r10
!   gotOutFile = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-18]
! CALL STATEMENT...
!   Call the function
	mov	48,r13		! source line 48
	mov	"\0\0CA",r10
	call	_function_22_ReadLine
! ASSIGNMENT STATEMENT...
	mov	51,r13		! source line 51
	mov	"\0\0AS",r10
!   nextPos = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-236]
! WHILE STATEMENT...
	mov	52,r13		! source line 52
	mov	"\0\0WH",r10
_Label_45:
!	jmp	_Label_46
_Label_46:
	mov	52,r13		! source line 52
	mov	"\0\0WB",r10
! CALL STATEMENT...
!   _temp_48 = &start
	add	r14,-244,r1
	store	r1,[r14+-132]
!   _temp_49 = &nextPos
	add	r14,-236,r1
	store	r1,[r14+-128]
!   _temp_50 = &len
	add	r14,-240,r1
	store	r1,[r14+-124]
!   _temp_51 = &kind
	add	r14,-15,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_48  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_49  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_50  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_51  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+12]
!   Call the function
	mov	53,r13		! source line 53
	mov	"\0\0CA",r10
	call	_function_18_FindNextWord
! IF STATEMENT...
	mov	54,r13		! source line 54
	mov	"\0\0IF",r10
!   _temp_54 = kind XOR 10		(bool)
	loadb	[r14+-15],r1
	mov	10,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-14]
!   if _temp_54 then goto _Label_53 else goto _Label_52
	loadb	[r14+-14],r1
	cmp	r1,0
	be	_Label_52
	jmp	_Label_53
_Label_52:
! THEN...
	mov	55,r13		! source line 55
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	55,r13		! source line 55
	mov	"\0\0BR",r10
	jmp	_Label_47
	jmp	_Label_55
_Label_53:
! ELSE...
	mov	56,r13		! source line 56
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	56,r13		! source line 56
	mov	"\0\0IF",r10
!   _temp_59 = kind XOR 32		(bool)
	loadb	[r14+-15],r1
	mov	32,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-13]
!   if _temp_59 then goto _Label_57 else goto _Label_58
	loadb	[r14+-13],r1
	cmp	r1,0
	be	_Label_58
	jmp	_Label_57
_Label_58:
!   if gotCommand then goto _Label_57 else goto _Label_56
	loadb	[r14+-16],r1
	cmp	r1,0
	be	_Label_56
	jmp	_Label_57
_Label_56:
! THEN...
	mov	57,r13		! source line 57
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_60 = &progName
	add	r14,-280,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_60  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=start  sizeInBytes=4
	load	[r14+-244],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=len  sizeInBytes=4
	load	[r14+-240],r1
	store	r1,[r15+8]
!   Call the function
	mov	57,r13		! source line 57
	mov	"\0\0CA",r10
	call	_function_17_GetWord
! ASSIGNMENT STATEMENT...
	mov	58,r13		! source line 58
	mov	"\0\0AS",r10
!   gotCommand = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-16]
	jmp	_Label_61
_Label_57:
! ELSE...
	mov	59,r13		! source line 59
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	59,r13		! source line 59
	mov	"\0\0IF",r10
!   _temp_65 = kind XOR 60		(bool)
	loadb	[r14+-15],r1
	mov	60,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-12]
!   if _temp_65 then goto _Label_63 else goto _Label_64
	loadb	[r14+-12],r1
	cmp	r1,0
	be	_Label_64
	jmp	_Label_63
_Label_64:
!   if gotInFile then goto _Label_63 else goto _Label_62
	loadb	[r14+-17],r1
	cmp	r1,0
	be	_Label_62
	jmp	_Label_63
_Label_62:
! THEN...
	mov	60,r13		! source line 60
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_66 = &start
	add	r14,-244,r1
	store	r1,[r14+-112]
!   _temp_67 = &nextPos
	add	r14,-236,r1
	store	r1,[r14+-108]
!   _temp_68 = &len
	add	r14,-240,r1
	store	r1,[r14+-104]
!   _temp_69 = &kind
	add	r14,-15,r1
	store	r1,[r14+-100]
!   Prepare Argument: offset=8  value=_temp_66  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_67  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_68  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_69  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+12]
!   Call the function
	mov	60,r13		! source line 60
	mov	"\0\0CA",r10
	call	_function_18_FindNextWord
! IF STATEMENT...
	mov	61,r13		! source line 61
	mov	"\0\0IF",r10
!   _temp_72 = kind XOR 32		(bool)
	loadb	[r14+-15],r1
	mov	32,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-11]
!   if _temp_72 then goto _Label_71 else goto _Label_70
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_70
	jmp	_Label_71
_Label_70:
! THEN...
	mov	62,r13		! source line 62
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_73 = &inFile
	add	r14,-316,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_73  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=start  sizeInBytes=4
	load	[r14+-244],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=len  sizeInBytes=4
	load	[r14+-240],r1
	store	r1,[r15+8]
!   Call the function
	mov	62,r13		! source line 62
	mov	"\0\0CA",r10
	call	_function_17_GetWord
! ASSIGNMENT STATEMENT...
	mov	63,r13		! source line 63
	mov	"\0\0AS",r10
!   gotInFile = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-17]
	jmp	_Label_74
_Label_71:
! ELSE...
	mov	65,r13		! source line 65
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_75 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_75  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	65,r13		! source line 65
	mov	"\0\0CA",r10
	call	_function_21_Print
! ASSIGNMENT STATEMENT...
	mov	66,r13		! source line 66
	mov	"\0\0AS",r10
!   gotCommand = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-16]
! BREAK STATEMENT...
	mov	67,r13		! source line 67
	mov	"\0\0BR",r10
	jmp	_Label_47
! END IF...
_Label_74:
	jmp	_Label_76
_Label_63:
! ELSE...
	mov	69,r13		! source line 69
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	69,r13		! source line 69
	mov	"\0\0IF",r10
!   _temp_80 = kind XOR 62		(bool)
	loadb	[r14+-15],r1
	mov	62,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-10]
!   if _temp_80 then goto _Label_78 else goto _Label_79
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_79
	jmp	_Label_78
_Label_79:
!   if gotOutFile then goto _Label_78 else goto _Label_77
	loadb	[r14+-18],r1
	cmp	r1,0
	be	_Label_77
	jmp	_Label_78
_Label_77:
! THEN...
	mov	70,r13		! source line 70
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_81 = &start
	add	r14,-244,r1
	store	r1,[r14+-88]
!   _temp_82 = &nextPos
	add	r14,-236,r1
	store	r1,[r14+-84]
!   _temp_83 = &len
	add	r14,-240,r1
	store	r1,[r14+-80]
!   _temp_84 = &kind
	add	r14,-15,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_81  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_82  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_83  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_84  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+12]
!   Call the function
	mov	70,r13		! source line 70
	mov	"\0\0CA",r10
	call	_function_18_FindNextWord
! IF STATEMENT...
	mov	71,r13		! source line 71
	mov	"\0\0IF",r10
!   _temp_87 = kind XOR 32		(bool)
	loadb	[r14+-15],r1
	mov	32,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_87 then goto _Label_86 else goto _Label_85
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_85
	jmp	_Label_86
_Label_85:
! THEN...
	mov	72,r13		! source line 72
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_88 = &outFile
	add	r14,-352,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_88  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=start  sizeInBytes=4
	load	[r14+-244],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=len  sizeInBytes=4
	load	[r14+-240],r1
	store	r1,[r15+8]
!   Call the function
	mov	72,r13		! source line 72
	mov	"\0\0CA",r10
	call	_function_17_GetWord
! ASSIGNMENT STATEMENT...
	mov	73,r13		! source line 73
	mov	"\0\0AS",r10
!   gotOutFile = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-18]
	jmp	_Label_89
_Label_86:
! ELSE...
	mov	75,r13		! source line 75
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_90 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_90  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	75,r13		! source line 75
	mov	"\0\0CA",r10
	call	_function_21_Print
! ASSIGNMENT STATEMENT...
	mov	76,r13		! source line 76
	mov	"\0\0AS",r10
!   gotCommand = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-16]
! BREAK STATEMENT...
	mov	77,r13		! source line 77
	mov	"\0\0BR",r10
	jmp	_Label_47
! END IF...
_Label_89:
	jmp	_Label_91
_Label_78:
! ELSE...
	mov	80,r13		! source line 80
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_92 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_92  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	80,r13		! source line 80
	mov	"\0\0CA",r10
	call	_function_21_Print
! ASSIGNMENT STATEMENT...
	mov	81,r13		! source line 81
	mov	"\0\0AS",r10
!   gotCommand = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-16]
! BREAK STATEMENT...
	mov	82,r13		! source line 82
	mov	"\0\0BR",r10
	jmp	_Label_47
! END IF...
_Label_91:
! END IF...
_Label_76:
! END IF...
_Label_61:
! END IF...
_Label_55:
! END WHILE...
	jmp	_Label_45
_Label_47:
! IF STATEMENT...
	mov	87,r13		! source line 87
	mov	"\0\0IF",r10
!   if gotCommand then goto _Label_94 else goto _Label_93
	loadb	[r14+-16],r1
	cmp	r1,0
	be	_Label_93
	jmp	_Label_94
_Label_93:
! THEN...
	mov	88,r13		! source line 88
	mov	"\0\0TN",r10
! CONTINUE STATEMENT...
	mov	88,r13		! source line 88
	mov	"\0\0CO",r10
	jmp	_Label_41
! END IF...
_Label_94:
! IF STATEMENT...
	mov	92,r13		! source line 92
	mov	"\0\0IF",r10
!   _temp_97 = &progName
	add	r14,-280,r1
	store	r1,[r14+-60]
!   _temp_98 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_97  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_98  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Call the function
	mov	92,r13		! source line 92
	mov	"\0\0CA",r10
	call	_P_UserSystem_StrEqual
!   if result==true then goto _Label_95 else goto _Label_96
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_96
	jmp	_Label_95
_Label_95:
! THEN...
	mov	93,r13		! source line 93
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_99 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_99  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	93,r13		! source line 93
	mov	"\0\0CA",r10
	call	_function_21_Print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+0]
!   Call the function
	mov	94,r13		! source line 94
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Exit
! END IF...
_Label_96:
! ASSIGNMENT STATEMENT...
	mov	98,r13		! source line 98
	mov	"\0\0AS",r10
!   Call the function
	mov	98,r13		! source line 98
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Fork
!   Retrieve Result: targetName=pid  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-228]
! IF STATEMENT...
	mov	99,r13		! source line 99
	mov	"\0\0IF",r10
!   if intIsZero (pid) then goto _Label_100
	load	[r14+-228],r1
	cmp	r1,r0
	be	_Label_100
	jmp	_Label_101
_Label_100:
! THEN...
	mov	100,r13		! source line 100
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	100,r13		! source line 100
	mov	"\0\0IF",r10
!   if gotInFile then goto _Label_102 else goto _Label_103
	loadb	[r14+-17],r1
	cmp	r1,0
	be	_Label_103
	jmp	_Label_102
_Label_102:
! THEN...
	mov	101,r13		! source line 101
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+0]
!   Call the function
	mov	101,r13		! source line 101
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Close
! ASSIGNMENT STATEMENT...
	mov	102,r13		! source line 102
	mov	"\0\0AS",r10
!   _temp_104 = &inFile
	add	r14,-316,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_104  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	102,r13		! source line 102
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Open
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-232]
! IF STATEMENT...
	mov	103,r13		! source line 103
	mov	"\0\0IF",r10
!   if intIsZero (i) then goto _Label_106
	load	[r14+-232],r1
	cmp	r1,r0
	be	_Label_106
!	jmp	_Label_105
_Label_105:
! THEN...
	mov	104,r13		! source line 104
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_107 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_107  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	104,r13		! source line 104
	mov	"\0\0CA",r10
	call	_function_21_Print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+0]
!   Call the function
	mov	105,r13		! source line 105
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Exit
! END IF...
_Label_106:
! END IF...
_Label_103:
! IF STATEMENT...
	mov	108,r13		! source line 108
	mov	"\0\0IF",r10
!   if gotOutFile then goto _Label_108 else goto _Label_109
	loadb	[r14+-18],r1
	cmp	r1,0
	be	_Label_109
	jmp	_Label_108
_Label_108:
! THEN...
	mov	109,r13		! source line 109
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	109,r13		! source line 109
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Close
! ASSIGNMENT STATEMENT...
	mov	110,r13		! source line 110
	mov	"\0\0AS",r10
!   _temp_110 = &outFile
	add	r14,-352,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_110  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	110,r13		! source line 110
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Open
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-232]
! IF STATEMENT...
	mov	111,r13		! source line 111
	mov	"\0\0IF",r10
!   if i == 1 then goto _Label_112		(int)
	load	[r14+-232],r1
	mov	1,r2
	cmp	r1,r2
	be	_Label_112
!	jmp	_Label_111
_Label_111:
! THEN...
	mov	112,r13		! source line 112
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	112,r13		! source line 112
	mov	"\0\0AS",r10
!   _temp_113 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_113  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	112,r13		! source line 112
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Open
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-232]
! CALL STATEMENT...
!   _temp_114 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_114  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	113,r13		! source line 113
	mov	"\0\0CA",r10
	call	_function_21_Print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+0]
!   Call the function
	mov	114,r13		! source line 114
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Exit
! END IF...
_Label_112:
! END IF...
_Label_109:
! ASSIGNMENT STATEMENT...
	mov	117,r13		! source line 117
	mov	"\0\0AS",r10
!   _temp_115 = &progName
	add	r14,-280,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_115  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	117,r13		! source line 117
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Exec
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-232]
! CALL STATEMENT...
!   _temp_116 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_116  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	118,r13		! source line 118
	mov	"\0\0CA",r10
	call	_function_21_Print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+0]
!   Call the function
	mov	119,r13		! source line 119
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Exit
	jmp	_Label_117
_Label_101:
! ELSE...
	mov	121,r13		! source line 121
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	121,r13		! source line 121
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=pid  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+0]
!   Call the function
	mov	121,r13		! source line 121
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Join
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-232]
! END IF...
_Label_117:
! END WHILE...
	jmp	_Label_41
_Label_43:
! 
! Routine Descriptor
! 
_RoutineDescriptor_main:
	.word	_sourceFileName
	.word	_Label_118
	.word	0		! total size of parameters
	.word	360		! frame size = 360
	.word	_Label_119
	.word	-24
	.word	4
	.word	_Label_120
	.word	-28
	.word	4
	.word	_Label_121
	.word	-32
	.word	4
	.word	_Label_122
	.word	-36
	.word	4
	.word	_Label_123
	.word	-40
	.word	4
	.word	_Label_124
	.word	-44
	.word	4
	.word	_Label_125
	.word	-48
	.word	4
	.word	_Label_126
	.word	-52
	.word	4
	.word	_Label_127
	.word	-56
	.word	4
	.word	_Label_128
	.word	-60
	.word	4
	.word	_Label_129
	.word	-64
	.word	4
	.word	_Label_130
	.word	-68
	.word	4
	.word	_Label_131
	.word	-72
	.word	4
	.word	_Label_132
	.word	-9
	.word	1
	.word	_Label_133
	.word	-76
	.word	4
	.word	_Label_134
	.word	-80
	.word	4
	.word	_Label_135
	.word	-84
	.word	4
	.word	_Label_136
	.word	-88
	.word	4
	.word	_Label_137
	.word	-10
	.word	1
	.word	_Label_138
	.word	-92
	.word	4
	.word	_Label_139
	.word	-96
	.word	4
	.word	_Label_140
	.word	-11
	.word	1
	.word	_Label_141
	.word	-100
	.word	4
	.word	_Label_142
	.word	-104
	.word	4
	.word	_Label_143
	.word	-108
	.word	4
	.word	_Label_144
	.word	-112
	.word	4
	.word	_Label_145
	.word	-12
	.word	1
	.word	_Label_146
	.word	-116
	.word	4
	.word	_Label_147
	.word	-13
	.word	1
	.word	_Label_148
	.word	-14
	.word	1
	.word	_Label_149
	.word	-120
	.word	4
	.word	_Label_150
	.word	-124
	.word	4
	.word	_Label_151
	.word	-128
	.word	4
	.word	_Label_152
	.word	-132
	.word	4
	.word	_Label_153
	.word	-136
	.word	4
	.word	_Label_154
	.word	-140
	.word	4
	.word	_Label_155
	.word	-144
	.word	4
	.word	_Label_156
	.word	-148
	.word	4
	.word	_Label_157
	.word	-152
	.word	4
	.word	_Label_158
	.word	-156
	.word	4
	.word	_Label_159
	.word	-160
	.word	4
	.word	_Label_160
	.word	-164
	.word	4
	.word	_Label_161
	.word	-168
	.word	4
	.word	_Label_162
	.word	-172
	.word	4
	.word	_Label_163
	.word	-176
	.word	4
	.word	_Label_164
	.word	-180
	.word	4
	.word	_Label_165
	.word	-184
	.word	4
	.word	_Label_166
	.word	-220
	.word	36
	.word	_Label_167
	.word	-224
	.word	4
	.word	_Label_168
	.word	-228
	.word	4
	.word	_Label_169
	.word	-232
	.word	4
	.word	_Label_170
	.word	-236
	.word	4
	.word	_Label_171
	.word	-240
	.word	4
	.word	_Label_172
	.word	-244
	.word	4
	.word	_Label_173
	.word	-15
	.word	1
	.word	_Label_174
	.word	-280
	.word	36
	.word	_Label_175
	.word	-316
	.word	36
	.word	_Label_176
	.word	-352
	.word	36
	.word	_Label_177
	.word	-16
	.word	1
	.word	_Label_178
	.word	-17
	.word	1
	.word	_Label_179
	.word	-18
	.word	1
	.word	0
_Label_118:
	.ascii	"main\0"
	.align
_Label_119:
	.byte	'?'
	.ascii	"_temp_116\0"
	.align
_Label_120:
	.byte	'?'
	.ascii	"_temp_115\0"
	.align
_Label_121:
	.byte	'?'
	.ascii	"_temp_114\0"
	.align
_Label_122:
	.byte	'?'
	.ascii	"_temp_113\0"
	.align
_Label_123:
	.byte	'?'
	.ascii	"_temp_110\0"
	.align
_Label_124:
	.byte	'?'
	.ascii	"_temp_107\0"
	.align
_Label_125:
	.byte	'?'
	.ascii	"_temp_104\0"
	.align
_Label_126:
	.byte	'?'
	.ascii	"_temp_99\0"
	.align
_Label_127:
	.byte	'?'
	.ascii	"_temp_98\0"
	.align
_Label_128:
	.byte	'?'
	.ascii	"_temp_97\0"
	.align
_Label_129:
	.byte	'?'
	.ascii	"_temp_92\0"
	.align
_Label_130:
	.byte	'?'
	.ascii	"_temp_90\0"
	.align
_Label_131:
	.byte	'?'
	.ascii	"_temp_88\0"
	.align
_Label_132:
	.byte	'C'
	.ascii	"_temp_87\0"
	.align
_Label_133:
	.byte	'?'
	.ascii	"_temp_84\0"
	.align
_Label_134:
	.byte	'?'
	.ascii	"_temp_83\0"
	.align
_Label_135:
	.byte	'?'
	.ascii	"_temp_82\0"
	.align
_Label_136:
	.byte	'?'
	.ascii	"_temp_81\0"
	.align
_Label_137:
	.byte	'C'
	.ascii	"_temp_80\0"
	.align
_Label_138:
	.byte	'?'
	.ascii	"_temp_75\0"
	.align
_Label_139:
	.byte	'?'
	.ascii	"_temp_73\0"
	.align
_Label_140:
	.byte	'C'
	.ascii	"_temp_72\0"
	.align
_Label_141:
	.byte	'?'
	.ascii	"_temp_69\0"
	.align
_Label_142:
	.byte	'?'
	.ascii	"_temp_68\0"
	.align
_Label_143:
	.byte	'?'
	.ascii	"_temp_67\0"
	.align
_Label_144:
	.byte	'?'
	.ascii	"_temp_66\0"
	.align
_Label_145:
	.byte	'C'
	.ascii	"_temp_65\0"
	.align
_Label_146:
	.byte	'?'
	.ascii	"_temp_60\0"
	.align
_Label_147:
	.byte	'C'
	.ascii	"_temp_59\0"
	.align
_Label_148:
	.byte	'C'
	.ascii	"_temp_54\0"
	.align
_Label_149:
	.byte	'?'
	.ascii	"_temp_51\0"
	.align
_Label_150:
	.byte	'?'
	.ascii	"_temp_50\0"
	.align
_Label_151:
	.byte	'?'
	.ascii	"_temp_49\0"
	.align
_Label_152:
	.byte	'?'
	.ascii	"_temp_48\0"
	.align
_Label_153:
	.byte	'?'
	.ascii	"_temp_44\0"
	.align
_Label_154:
	.byte	'?'
	.ascii	"_temp_40\0"
	.align
_Label_155:
	.byte	'?'
	.ascii	"_temp_39\0"
	.align
_Label_156:
	.byte	'?'
	.ascii	"_temp_38\0"
	.align
_Label_157:
	.byte	'?'
	.ascii	"_temp_37\0"
	.align
_Label_158:
	.byte	'?'
	.ascii	"_temp_36\0"
	.align
_Label_159:
	.byte	'?'
	.ascii	"_temp_35\0"
	.align
_Label_160:
	.byte	'?'
	.ascii	"_temp_34\0"
	.align
_Label_161:
	.byte	'?'
	.ascii	"_temp_33\0"
	.align
_Label_162:
	.byte	'?'
	.ascii	"_temp_32\0"
	.align
_Label_163:
	.byte	'?'
	.ascii	"_temp_31\0"
	.align
_Label_164:
	.byte	'?'
	.ascii	"_temp_29\0"
	.align
_Label_165:
	.byte	'?'
	.ascii	"_temp_28\0"
	.align
_Label_166:
	.byte	'?'
	.ascii	"_temp_27\0"
	.align
_Label_167:
	.byte	'?'
	.ascii	"_temp_26\0"
	.align
_Label_168:
	.byte	'I'
	.ascii	"pid\0"
	.align
_Label_169:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_170:
	.byte	'I'
	.ascii	"nextPos\0"
	.align
_Label_171:
	.byte	'I'
	.ascii	"len\0"
	.align
_Label_172:
	.byte	'I'
	.ascii	"start\0"
	.align
_Label_173:
	.byte	'C'
	.ascii	"kind\0"
	.align
_Label_174:
	.byte	'A'
	.ascii	"progName\0"
	.align
_Label_175:
	.byte	'A'
	.ascii	"inFile\0"
	.align
_Label_176:
	.byte	'A'
	.ascii	"outFile\0"
	.align
_Label_177:
	.byte	'B'
	.ascii	"gotCommand\0"
	.align
_Label_178:
	.byte	'B'
	.ascii	"gotInFile\0"
	.align
_Label_179:
	.byte	'B'
	.ascii	"gotOutFile\0"
	.align
! 
! ===============  FUNCTION ReadLine  ===============
! 
_function_22_ReadLine:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_22_ReadLine,r1
	push	r1
	mov	11,r1
_Label_380:
	push	r0
	sub	r1,1,r1
	bne	_Label_380
	mov	130,r13		! source line 130
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	139,r13		! source line 139
	mov	"\0\0WH",r10
_Label_180:
!	jmp	_Label_181
_Label_181:
	mov	139,r13		! source line 139
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	140,r13		! source line 140
	mov	"\0\0AS",r10
!   Call the function
	mov	140,r13		! source line 140
	mov	"\0\0CA",r10
	call	_function_20_GetChar
!   Retrieve Result: targetName=ch  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-13]
! IF STATEMENT...
	mov	141,r13		! source line 141
	mov	"\0\0IF",r10
!   _temp_185 = ch XOR 255		(bool)
	loadb	[r14+-13],r1
	mov	255,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-12]
!   if _temp_185 then goto _Label_184 else goto _Label_183
	loadb	[r14+-12],r1
	cmp	r1,0
	be	_Label_183
	jmp	_Label_184
_Label_183:
	jmp	_Label_186
_Label_184:
! ELSE...
	mov	143,r13		! source line 143
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	143,r13		! source line 143
	mov	"\0\0IF",r10
!   _temp_189 = ch XOR 10		(bool)
	loadb	[r14+-13],r1
	mov	10,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-11]
!   if _temp_189 then goto _Label_188 else goto _Label_187
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_187
	jmp	_Label_188
_Label_187:
! THEN...
	mov	144,r13		! source line 144
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=ch  sizeInBytes=1
	loadb	[r14+-13],r1
	storeb	r1,[r15+0]
!   Call the function
	mov	144,r13		! source line 144
	mov	"\0\0CA",r10
	call	_function_19_PutChar
! ASSIGNMENT STATEMENT...
	mov	145,r13		! source line 145
	mov	"\0\0AS",r10
!   _temp_190 = &_Global_commandLine
	set	_Global_commandLine,r1
	store	r1,[r14+-44]
!   Move address of _temp_190 [i ] into _temp_191
!     make sure index expr is >= 0
	load	[r14+-48],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-44],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-40]
!   Data Move: *_temp_191 = ch  (sizeInBytes=1)
	loadb	[r14+-13],r1
	load	[r14+-40],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	146,r13		! source line 146
	mov	"\0\0AS",r10
!   i = i + 1		(int)
	load	[r14+-48],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! RETURN STATEMENT...
	mov	147,r13		! source line 147
	mov	"\0\0RE",r10
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_192
_Label_188:
! ELSE...
	mov	148,r13		! source line 148
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	148,r13		! source line 148
	mov	"\0\0IF",r10
!   _temp_196 = ch XOR 8		(bool)
	loadb	[r14+-13],r1
	mov	8,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-10]
!   if _temp_196 then goto _Label_195 else goto _Label_193
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_193
	jmp	_Label_195
_Label_195:
!   _temp_197 = ch XOR 127		(bool)
	loadb	[r14+-13],r1
	mov	127,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_197 then goto _Label_194 else goto _Label_193
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_193
	jmp	_Label_194
_Label_193:
! THEN...
	mov	149,r13		! source line 149
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	149,r13		! source line 149
	mov	"\0\0IF",r10
!   if i <= 0 then goto _Label_199		(int)
	load	[r14+-48],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_199
!	jmp	_Label_198
_Label_198:
! THEN...
	mov	150,r13		! source line 150
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_200 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_200  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	150,r13		! source line 150
	mov	"\0\0CA",r10
	call	_function_21_Print
! ASSIGNMENT STATEMENT...
	mov	151,r13		! source line 151
	mov	"\0\0AS",r10
!   i = i - 1		(int)
	load	[r14+-48],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_201
_Label_199:
! ELSE...
	mov	153,r13		! source line 153
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=7  sizeInBytes=1
	mov	7,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	153,r13		! source line 153
	mov	"\0\0CA",r10
	call	_function_19_PutChar
! END IF...
_Label_201:
	jmp	_Label_202
_Label_194:
! ELSE...
	mov	156,r13		! source line 156
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=ch  sizeInBytes=1
	loadb	[r14+-13],r1
	storeb	r1,[r15+0]
!   Call the function
	mov	156,r13		! source line 156
	mov	"\0\0CA",r10
	call	_function_19_PutChar
! ASSIGNMENT STATEMENT...
	mov	157,r13		! source line 157
	mov	"\0\0AS",r10
!   _temp_203 = &_Global_commandLine
	set	_Global_commandLine,r1
	store	r1,[r14+-32]
!   Move address of _temp_203 [i ] into _temp_204
!     make sure index expr is >= 0
	load	[r14+-48],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   Data Move: *_temp_204 = ch  (sizeInBytes=1)
	loadb	[r14+-13],r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	158,r13		! source line 158
	mov	"\0\0AS",r10
!   i = i + 1		(int)
	load	[r14+-48],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! END IF...
_Label_202:
! END IF...
_Label_192:
! END IF...
_Label_186:
! IF STATEMENT...
	mov	160,r13		! source line 160
	mov	"\0\0IF",r10
!   if i < 29 then goto _Label_206		(int)
	load	[r14+-48],r1
	mov	29,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_206
!	jmp	_Label_205
_Label_205:
! THEN...
	mov	161,r13		! source line 161
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	161,r13		! source line 161
	mov	"\0\0AS",r10
!   _temp_207 = &_Global_commandLine
	set	_Global_commandLine,r1
	store	r1,[r14+-24]
!   Move address of _temp_207 [i ] into _temp_208
!     make sure index expr is >= 0
	load	[r14+-48],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-24],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-20]
!   Data Move: *_temp_208 = 10  (sizeInBytes=1)
	mov	10,r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=10  sizeInBytes=1
	mov	10,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	162,r13		! source line 162
	mov	"\0\0CA",r10
	call	_function_19_PutChar
! RETURN STATEMENT...
	mov	163,r13		! source line 163
	mov	"\0\0RE",r10
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_206:
! END WHILE...
	jmp	_Label_180
_Label_182:
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_22_ReadLine:
	.word	_sourceFileName
	.word	_Label_209
	.word	0		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_210
	.word	-20
	.word	4
	.word	_Label_211
	.word	-24
	.word	4
	.word	_Label_212
	.word	-28
	.word	4
	.word	_Label_213
	.word	-32
	.word	4
	.word	_Label_214
	.word	-36
	.word	4
	.word	_Label_215
	.word	-9
	.word	1
	.word	_Label_216
	.word	-10
	.word	1
	.word	_Label_217
	.word	-40
	.word	4
	.word	_Label_218
	.word	-44
	.word	4
	.word	_Label_219
	.word	-11
	.word	1
	.word	_Label_220
	.word	-12
	.word	1
	.word	_Label_221
	.word	-48
	.word	4
	.word	_Label_222
	.word	-13
	.word	1
	.word	0
_Label_209:
	.ascii	"ReadLine\0"
	.align
_Label_210:
	.byte	'?'
	.ascii	"_temp_208\0"
	.align
_Label_211:
	.byte	'?'
	.ascii	"_temp_207\0"
	.align
_Label_212:
	.byte	'?'
	.ascii	"_temp_204\0"
	.align
_Label_213:
	.byte	'?'
	.ascii	"_temp_203\0"
	.align
_Label_214:
	.byte	'?'
	.ascii	"_temp_200\0"
	.align
_Label_215:
	.byte	'C'
	.ascii	"_temp_197\0"
	.align
_Label_216:
	.byte	'C'
	.ascii	"_temp_196\0"
	.align
_Label_217:
	.byte	'?'
	.ascii	"_temp_191\0"
	.align
_Label_218:
	.byte	'?'
	.ascii	"_temp_190\0"
	.align
_Label_219:
	.byte	'C'
	.ascii	"_temp_189\0"
	.align
_Label_220:
	.byte	'C'
	.ascii	"_temp_185\0"
	.align
_Label_221:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_222:
	.byte	'C'
	.ascii	"ch\0"
	.align
! 
! ===============  FUNCTION Print  ===============
! 
_function_21_Print:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_21_Print,r1
	push	r1
	mov	7,r1
_Label_381:
	push	r0
	sub	r1,1,r1
	bne	_Label_381
	mov	170,r13		! source line 170
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	175,r13		! source line 175
	mov	"\0\0AS",r10
!   if intIsZero (str) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of str [0 ] into _temp_224
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+8],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   _temp_223 = _temp_224		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-20]
!   if intIsZero (str) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_225 = *str  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_223  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_225  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+8]
!   Call the function
	mov	175,r13		! source line 175
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Write
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	175,r13		! source line 175
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_21_Print:
	.word	_sourceFileName
	.word	_Label_226
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_227
	.word	8
	.word	4
	.word	_Label_228
	.word	-12
	.word	4
	.word	_Label_229
	.word	-16
	.word	4
	.word	_Label_230
	.word	-20
	.word	4
	.word	_Label_231
	.word	-24
	.word	4
	.word	0
_Label_226:
	.ascii	"Print\0"
	.align
_Label_227:
	.byte	'P'
	.ascii	"str\0"
	.align
_Label_228:
	.byte	'?'
	.ascii	"_temp_225\0"
	.align
_Label_229:
	.byte	'?'
	.ascii	"_temp_224\0"
	.align
_Label_230:
	.byte	'?'
	.ascii	"_temp_223\0"
	.align
_Label_231:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  FUNCTION GetChar  ===============
! 
_function_20_GetChar:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_20_GetChar,r1
	push	r1
	mov	7,r1
_Label_382:
	push	r0
	sub	r1,1,r1
	bne	_Label_382
	mov	180,r13		! source line 180
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	186,r13		! source line 186
	mov	"\0\0AS",r10
!   _temp_232 = &c
	add	r14,-9,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_232  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Call the function
	mov	186,r13		! source line 186
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! IF STATEMENT...
	mov	187,r13		! source line 187
	mov	"\0\0IF",r10
!   if intIsZero (i) then goto _Label_233
	load	[r14+-24],r1
	cmp	r1,r0
	be	_Label_233
	jmp	_Label_234
_Label_233:
! THEN...
	mov	188,r13		! source line 188
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	188,r13		! source line 188
	mov	"\0\0RE",r10
!   ReturnResult: 255  (sizeInBytes=1)
	mov	255,r1
	storeb	r1,[r14+8]
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_235
_Label_234:
! ELSE...
	mov	189,r13		! source line 189
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	189,r13		! source line 189
	mov	"\0\0IF",r10
!   if i >= 0 then goto _Label_237		(int)
	load	[r14+-24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_237
!	jmp	_Label_236
_Label_236:
! THEN...
	mov	190,r13		! source line 190
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_238 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_238  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	190,r13		! source line 190
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_237:
! END IF...
_Label_235:
! RETURN STATEMENT...
	mov	192,r13		! source line 192
	mov	"\0\0RE",r10
!   ReturnResult: c  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_20_GetChar:
	.word	_sourceFileName
	.word	_Label_239
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_240
	.word	-16
	.word	4
	.word	_Label_241
	.word	-20
	.word	4
	.word	_Label_242
	.word	-9
	.word	1
	.word	_Label_243
	.word	-24
	.word	4
	.word	0
_Label_239:
	.ascii	"GetChar\0"
	.align
_Label_240:
	.byte	'?'
	.ascii	"_temp_238\0"
	.align
_Label_241:
	.byte	'?'
	.ascii	"_temp_232\0"
	.align
_Label_242:
	.byte	'C'
	.ascii	"c\0"
	.align
_Label_243:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  FUNCTION PutChar  ===============
! 
_function_19_PutChar:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_19_PutChar,r1
	push	r1
	mov	6,r1
_Label_383:
	push	r0
	sub	r1,1,r1
	bne	_Label_383
	mov	197,r13		! source line 197
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	202,r13		! source line 202
	mov	"\0\0AS",r10
!   _temp_244 = &c
	add	r14,8,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_244  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Call the function
	mov	202,r13		! source line 202
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Write
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! IF STATEMENT...
	mov	203,r13		! source line 203
	mov	"\0\0IF",r10
!   if i >= 0 then goto _Label_246		(int)
	load	[r14+-20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_246
!	jmp	_Label_245
_Label_245:
! THEN...
	mov	204,r13		! source line 204
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_247 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_247  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	204,r13		! source line 204
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_246:
! RETURN STATEMENT...
	mov	203,r13		! source line 203
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_19_PutChar:
	.word	_sourceFileName
	.word	_Label_248
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_249
	.word	8
	.word	1
	.word	_Label_250
	.word	-12
	.word	4
	.word	_Label_251
	.word	-16
	.word	4
	.word	_Label_252
	.word	-20
	.word	4
	.word	0
_Label_248:
	.ascii	"PutChar\0"
	.align
_Label_249:
	.byte	'C'
	.ascii	"c\0"
	.align
_Label_250:
	.byte	'?'
	.ascii	"_temp_247\0"
	.align
_Label_251:
	.byte	'?'
	.ascii	"_temp_244\0"
	.align
_Label_252:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  FUNCTION FindNextWord  ===============
! 
_function_18_FindNextWord:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_18_FindNextWord,r1
	push	r1
	mov	32,r1
_Label_384:
	push	r0
	sub	r1,1,r1
	bne	_Label_384
	mov	211,r13		! source line 211
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	219,r13		! source line 219
	mov	"\0\0WH",r10
_Label_253:
!   _temp_257 = &_Global_commandLine
	set	_Global_commandLine,r1
	store	r1,[r14+-136]
!   if intIsZero (pos) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_258 = *pos  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   Move address of _temp_257 [_temp_258 ] into _temp_259
!     make sure index expr is >= 0
	load	[r14+-132],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-136],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-128]
!   Data Move: _temp_256 = *_temp_259  (sizeInBytes=1)
	load	[r14+-128],r1
	loadb	[r1],r1
	storeb	r1,[r14+-21]
!   _temp_260 = _temp_256 XOR 32		(bool)
	loadb	[r14+-21],r1
	mov	32,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-20]
!   if _temp_260 then goto _Label_255 else goto _Label_254
	loadb	[r14+-20],r1
	cmp	r1,0
	be	_Label_254
	jmp	_Label_255
_Label_254:
	mov	219,r13		! source line 219
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	220,r13		! source line 220
	mov	"\0\0AS",r10
!   if intIsZero (pos) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (pos) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_262 = *pos  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-120]
!   _temp_261 = _temp_262 + 1		(int)
	load	[r14+-120],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
!   Data Move: *pos = _temp_261  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r14+12],r2
	store	r1,[r2]
! END WHILE...
	jmp	_Label_253
_Label_255:
! ASSIGNMENT STATEMENT...
	mov	223,r13		! source line 223
	mov	"\0\0AS",r10
!   if intIsZero (start) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (pos) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_263 = *pos  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   Data Move: *start = _temp_263  (sizeInBytes=4)
	load	[r14+-116],r1
	load	[r14+8],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	226,r13		! source line 226
	mov	"\0\0IF",r10
!   _temp_268 = &_Global_commandLine
	set	_Global_commandLine,r1
	store	r1,[r14+-112]
!   if intIsZero (pos) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_269 = *pos  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   Move address of _temp_268 [_temp_269 ] into _temp_270
!     make sure index expr is >= 0
	load	[r14+-108],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-112],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-104]
!   Data Move: _temp_267 = *_temp_270  (sizeInBytes=1)
	load	[r14+-104],r1
	loadb	[r1],r1
	storeb	r1,[r14+-19]
!   _temp_271 = _temp_267 XOR 60		(bool)
	loadb	[r14+-19],r1
	mov	60,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-18]
!   if _temp_271 then goto _Label_266 else goto _Label_264
	loadb	[r14+-18],r1
	cmp	r1,0
	be	_Label_264
	jmp	_Label_266
_Label_266:
!   _temp_273 = &_Global_commandLine
	set	_Global_commandLine,r1
	store	r1,[r14+-100]
!   if intIsZero (pos) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_274 = *pos  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   Move address of _temp_273 [_temp_274 ] into _temp_275
!     make sure index expr is >= 0
	load	[r14+-96],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-100],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-92]
!   Data Move: _temp_272 = *_temp_275  (sizeInBytes=1)
	load	[r14+-92],r1
	loadb	[r1],r1
	storeb	r1,[r14+-17]
!   _temp_276 = _temp_272 XOR 62		(bool)
	loadb	[r14+-17],r1
	mov	62,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-16]
!   if _temp_276 then goto _Label_265 else goto _Label_264
	loadb	[r14+-16],r1
	cmp	r1,0
	be	_Label_264
	jmp	_Label_265
_Label_264:
! THEN...
	mov	228,r13		! source line 228
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	228,r13		! source line 228
	mov	"\0\0AS",r10
!   if intIsZero (kind) then goto _runtimeErrorNullPointer
	load	[r14+20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_278 = &_Global_commandLine
	set	_Global_commandLine,r1
	store	r1,[r14+-88]
!   if intIsZero (pos) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_279 = *pos  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   Move address of _temp_278 [_temp_279 ] into _temp_280
!     make sure index expr is >= 0
	load	[r14+-84],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-88],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-80]
!   Data Move: _temp_277 = *_temp_280  (sizeInBytes=1)
	load	[r14+-80],r1
	loadb	[r1],r1
	storeb	r1,[r14+-15]
!   Data Move: *kind = _temp_277  (sizeInBytes=1)
	loadb	[r14+-15],r1
	load	[r14+20],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	229,r13		! source line 229
	mov	"\0\0AS",r10
!   if intIsZero (pos) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (pos) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_282 = *pos  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   _temp_281 = _temp_282 + 1		(int)
	load	[r14+-72],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-76]
!   Data Move: *pos = _temp_281  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r14+12],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	230,r13		! source line 230
	mov	"\0\0AS",r10
!   if intIsZero (len) then goto _runtimeErrorNullPointer
	load	[r14+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *len = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+16],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	231,r13		! source line 231
	mov	"\0\0RE",r10
	add	r15,132,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_265:
! IF STATEMENT...
	mov	235,r13		! source line 235
	mov	"\0\0IF",r10
!   _temp_286 = &_Global_commandLine
	set	_Global_commandLine,r1
	store	r1,[r14+-68]
!   if intIsZero (pos) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_287 = *pos  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   Move address of _temp_286 [_temp_287 ] into _temp_288
!     make sure index expr is >= 0
	load	[r14+-64],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-68],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-60]
!   Data Move: _temp_285 = *_temp_288  (sizeInBytes=1)
	load	[r14+-60],r1
	loadb	[r1],r1
	storeb	r1,[r14+-14]
!   _temp_289 = _temp_285 XOR 10		(bool)
	loadb	[r14+-14],r1
	mov	10,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-13]
!   if _temp_289 then goto _Label_284 else goto _Label_283
	loadb	[r14+-13],r1
	cmp	r1,0
	be	_Label_283
	jmp	_Label_284
_Label_283:
! THEN...
	mov	236,r13		! source line 236
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	236,r13		! source line 236
	mov	"\0\0AS",r10
!   if intIsZero (kind) then goto _runtimeErrorNullPointer
	load	[r14+20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *kind = 10  (sizeInBytes=1)
	mov	10,r1
	load	[r14+20],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	237,r13		! source line 237
	mov	"\0\0AS",r10
!   if intIsZero (len) then goto _runtimeErrorNullPointer
	load	[r14+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *len = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+16],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	238,r13		! source line 238
	mov	"\0\0RE",r10
	add	r15,132,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_284:
! ASSIGNMENT STATEMENT...
	mov	242,r13		! source line 242
	mov	"\0\0AS",r10
!   if intIsZero (kind) then goto _runtimeErrorNullPointer
	load	[r14+20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *kind = 32  (sizeInBytes=1)
	mov	32,r1
	load	[r14+20],r2
	storeb	r1,[r2]
! WHILE STATEMENT...
	mov	243,r13		! source line 243
	mov	"\0\0WH",r10
_Label_290:
!	jmp	_Label_291
_Label_291:
	mov	243,r13		! source line 243
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	244,r13		! source line 244
	mov	"\0\0AS",r10
!   _temp_293 = &_Global_commandLine
	set	_Global_commandLine,r1
	store	r1,[r14+-56]
!   if intIsZero (pos) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_294 = *pos  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   Move address of _temp_293 [_temp_294 ] into _temp_295
!     make sure index expr is >= 0
	load	[r14+-52],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-56],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-48]
!   Data Move: ch = *_temp_295  (sizeInBytes=1)
	load	[r14+-48],r1
	loadb	[r1],r1
	storeb	r1,[r14+-22]
! IF STATEMENT...
	mov	245,r13		! source line 245
	mov	"\0\0IF",r10
!   _temp_301 = ch XOR 32		(bool)
	loadb	[r14+-22],r1
	mov	32,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-12]
!   if _temp_301 then goto _Label_300 else goto _Label_296
	loadb	[r14+-12],r1
	cmp	r1,0
	be	_Label_296
	jmp	_Label_300
_Label_300:
!   _temp_302 = ch XOR 10		(bool)
	loadb	[r14+-22],r1
	mov	10,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-11]
!   if _temp_302 then goto _Label_299 else goto _Label_296
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_296
	jmp	_Label_299
_Label_299:
!   _temp_303 = ch XOR 60		(bool)
	loadb	[r14+-22],r1
	mov	60,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-10]
!   if _temp_303 then goto _Label_298 else goto _Label_296
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_296
	jmp	_Label_298
_Label_298:
!   _temp_304 = ch XOR 62		(bool)
	loadb	[r14+-22],r1
	mov	62,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_304 then goto _Label_297 else goto _Label_296
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_296
	jmp	_Label_297
_Label_296:
! THEN...
	mov	249,r13		! source line 249
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	249,r13		! source line 249
	mov	"\0\0BR",r10
	jmp	_Label_292
! END IF...
_Label_297:
! ASSIGNMENT STATEMENT...
	mov	251,r13		! source line 251
	mov	"\0\0AS",r10
!   if intIsZero (pos) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (pos) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_306 = *pos  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   _temp_305 = _temp_306 + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
!   Data Move: *pos = _temp_305  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+12],r2
	store	r1,[r2]
! END WHILE...
	jmp	_Label_290
_Label_292:
! ASSIGNMENT STATEMENT...
	mov	253,r13		! source line 253
	mov	"\0\0AS",r10
!   if intIsZero (len) then goto _runtimeErrorNullPointer
	load	[r14+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (pos) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_308 = *pos  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if intIsZero (start) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_309 = *start  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   _temp_307 = _temp_308 - _temp_309		(int)
	load	[r14+-32],r1
	load	[r14+-28],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   Data Move: *len = _temp_307  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r14+16],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	253,r13		! source line 253
	mov	"\0\0RE",r10
	add	r15,132,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_18_FindNextWord:
	.word	_sourceFileName
	.word	_Label_310
	.word	16		! total size of parameters
	.word	128		! frame size = 128
	.word	_Label_311
	.word	8
	.word	4
	.word	_Label_312
	.word	12
	.word	4
	.word	_Label_313
	.word	16
	.word	4
	.word	_Label_314
	.word	20
	.word	4
	.word	_Label_315
	.word	-28
	.word	4
	.word	_Label_316
	.word	-32
	.word	4
	.word	_Label_317
	.word	-36
	.word	4
	.word	_Label_318
	.word	-40
	.word	4
	.word	_Label_319
	.word	-44
	.word	4
	.word	_Label_320
	.word	-9
	.word	1
	.word	_Label_321
	.word	-10
	.word	1
	.word	_Label_322
	.word	-11
	.word	1
	.word	_Label_323
	.word	-12
	.word	1
	.word	_Label_324
	.word	-48
	.word	4
	.word	_Label_325
	.word	-52
	.word	4
	.word	_Label_326
	.word	-56
	.word	4
	.word	_Label_327
	.word	-13
	.word	1
	.word	_Label_328
	.word	-60
	.word	4
	.word	_Label_329
	.word	-64
	.word	4
	.word	_Label_330
	.word	-68
	.word	4
	.word	_Label_331
	.word	-14
	.word	1
	.word	_Label_332
	.word	-72
	.word	4
	.word	_Label_333
	.word	-76
	.word	4
	.word	_Label_334
	.word	-80
	.word	4
	.word	_Label_335
	.word	-84
	.word	4
	.word	_Label_336
	.word	-88
	.word	4
	.word	_Label_337
	.word	-15
	.word	1
	.word	_Label_338
	.word	-16
	.word	1
	.word	_Label_339
	.word	-92
	.word	4
	.word	_Label_340
	.word	-96
	.word	4
	.word	_Label_341
	.word	-100
	.word	4
	.word	_Label_342
	.word	-17
	.word	1
	.word	_Label_343
	.word	-18
	.word	1
	.word	_Label_344
	.word	-104
	.word	4
	.word	_Label_345
	.word	-108
	.word	4
	.word	_Label_346
	.word	-112
	.word	4
	.word	_Label_347
	.word	-19
	.word	1
	.word	_Label_348
	.word	-116
	.word	4
	.word	_Label_349
	.word	-120
	.word	4
	.word	_Label_350
	.word	-124
	.word	4
	.word	_Label_351
	.word	-20
	.word	1
	.word	_Label_352
	.word	-128
	.word	4
	.word	_Label_353
	.word	-132
	.word	4
	.word	_Label_354
	.word	-136
	.word	4
	.word	_Label_355
	.word	-21
	.word	1
	.word	_Label_356
	.word	-22
	.word	1
	.word	0
_Label_310:
	.ascii	"FindNextWord\0"
	.align
_Label_311:
	.byte	'P'
	.ascii	"start\0"
	.align
_Label_312:
	.byte	'P'
	.ascii	"pos\0"
	.align
_Label_313:
	.byte	'P'
	.ascii	"len\0"
	.align
_Label_314:
	.byte	'P'
	.ascii	"kind\0"
	.align
_Label_315:
	.byte	'?'
	.ascii	"_temp_309\0"
	.align
_Label_316:
	.byte	'?'
	.ascii	"_temp_308\0"
	.align
_Label_317:
	.byte	'?'
	.ascii	"_temp_307\0"
	.align
_Label_318:
	.byte	'?'
	.ascii	"_temp_306\0"
	.align
_Label_319:
	.byte	'?'
	.ascii	"_temp_305\0"
	.align
_Label_320:
	.byte	'C'
	.ascii	"_temp_304\0"
	.align
_Label_321:
	.byte	'C'
	.ascii	"_temp_303\0"
	.align
_Label_322:
	.byte	'C'
	.ascii	"_temp_302\0"
	.align
_Label_323:
	.byte	'C'
	.ascii	"_temp_301\0"
	.align
_Label_324:
	.byte	'?'
	.ascii	"_temp_295\0"
	.align
_Label_325:
	.byte	'?'
	.ascii	"_temp_294\0"
	.align
_Label_326:
	.byte	'?'
	.ascii	"_temp_293\0"
	.align
_Label_327:
	.byte	'C'
	.ascii	"_temp_289\0"
	.align
_Label_328:
	.byte	'?'
	.ascii	"_temp_288\0"
	.align
_Label_329:
	.byte	'?'
	.ascii	"_temp_287\0"
	.align
_Label_330:
	.byte	'?'
	.ascii	"_temp_286\0"
	.align
_Label_331:
	.byte	'C'
	.ascii	"_temp_285\0"
	.align
_Label_332:
	.byte	'?'
	.ascii	"_temp_282\0"
	.align
_Label_333:
	.byte	'?'
	.ascii	"_temp_281\0"
	.align
_Label_334:
	.byte	'?'
	.ascii	"_temp_280\0"
	.align
_Label_335:
	.byte	'?'
	.ascii	"_temp_279\0"
	.align
_Label_336:
	.byte	'?'
	.ascii	"_temp_278\0"
	.align
_Label_337:
	.byte	'C'
	.ascii	"_temp_277\0"
	.align
_Label_338:
	.byte	'C'
	.ascii	"_temp_276\0"
	.align
_Label_339:
	.byte	'?'
	.ascii	"_temp_275\0"
	.align
_Label_340:
	.byte	'?'
	.ascii	"_temp_274\0"
	.align
_Label_341:
	.byte	'?'
	.ascii	"_temp_273\0"
	.align
_Label_342:
	.byte	'C'
	.ascii	"_temp_272\0"
	.align
_Label_343:
	.byte	'C'
	.ascii	"_temp_271\0"
	.align
_Label_344:
	.byte	'?'
	.ascii	"_temp_270\0"
	.align
_Label_345:
	.byte	'?'
	.ascii	"_temp_269\0"
	.align
_Label_346:
	.byte	'?'
	.ascii	"_temp_268\0"
	.align
_Label_347:
	.byte	'C'
	.ascii	"_temp_267\0"
	.align
_Label_348:
	.byte	'?'
	.ascii	"_temp_263\0"
	.align
_Label_349:
	.byte	'?'
	.ascii	"_temp_262\0"
	.align
_Label_350:
	.byte	'?'
	.ascii	"_temp_261\0"
	.align
_Label_351:
	.byte	'C'
	.ascii	"_temp_260\0"
	.align
_Label_352:
	.byte	'?'
	.ascii	"_temp_259\0"
	.align
_Label_353:
	.byte	'?'
	.ascii	"_temp_258\0"
	.align
_Label_354:
	.byte	'?'
	.ascii	"_temp_257\0"
	.align
_Label_355:
	.byte	'C'
	.ascii	"_temp_256\0"
	.align
_Label_356:
	.byte	'C'
	.ascii	"ch\0"
	.align
! 
! ===============  FUNCTION GetWord  ===============
! 
_function_17_GetWord:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_17_GetWord,r1
	push	r1
	mov	8,r1
_Label_385:
	push	r0
	sub	r1,1,r1
	bne	_Label_385
	mov	259,r13		! source line 259
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   if intIsZero (str) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of str [0 ] into _temp_358
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+8],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   _temp_357 = _temp_358		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-28]
!   _temp_360 = &_Global_commandLine
	set	_Global_commandLine,r1
	store	r1,[r14+-16]
!   Move address of _temp_360 [start ] into _temp_361
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   _temp_359 = _temp_361		(4 bytes)
	load	[r14+-12],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_357  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_359  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=len  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+8]
!   Call the function
	mov	265,r13		! source line 265
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	266,r13		! source line 266
	mov	"\0\0AS",r10
!   if intIsZero (str) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *str = len  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+8],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	266,r13		! source line 266
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_17_GetWord:
	.word	_sourceFileName
	.word	_Label_362
	.word	12		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_363
	.word	8
	.word	4
	.word	_Label_364
	.word	12
	.word	4
	.word	_Label_365
	.word	16
	.word	4
	.word	_Label_366
	.word	-12
	.word	4
	.word	_Label_367
	.word	-16
	.word	4
	.word	_Label_368
	.word	-20
	.word	4
	.word	_Label_369
	.word	-24
	.word	4
	.word	_Label_370
	.word	-28
	.word	4
	.word	0
_Label_362:
	.ascii	"GetWord\0"
	.align
_Label_363:
	.byte	'P'
	.ascii	"str\0"
	.align
_Label_364:
	.byte	'I'
	.ascii	"start\0"
	.align
_Label_365:
	.byte	'I'
	.ascii	"len\0"
	.align
_Label_366:
	.byte	'?'
	.ascii	"_temp_361\0"
	.align
_Label_367:
	.byte	'?'
	.ascii	"_temp_360\0"
	.align
_Label_368:
	.byte	'?'
	.ascii	"_temp_359\0"
	.align
_Label_369:
	.byte	'?'
	.ascii	"_temp_358\0"
	.align
_Label_370:
	.byte	'?'
	.ascii	"_temp_357\0"
	.align
