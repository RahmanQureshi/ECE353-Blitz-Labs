! Name of package being compiled: cat
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
_Global_buffer:
	.skip	36
	.align
	.text
! 
! =====  MAIN ENTRY POINT  =====
! 
_mainEntry:
	set	_packageName,r2		! Get CheckVersion started
	set	0x13540b23,r3		! .  hashVal = 324274979
	call	_CheckVersion_P_cat_	! .
	cmp	r1,0			! .
	be	_Label_1		! .
	ret				! .
_Label_1:				! .
	call	_heapInitialize
	jmp	main
! 
! Source Filename and Package Name
! 
_sourceFileName:
	.ascii	"cat.c\0"
_packageName:
	.ascii	"cat\0"
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
_CheckVersion_P_cat_:
	.export	_CheckVersion_P_cat_
	set	0x13540b23,r4		! myHashVal = 324274979
	cmp	r3,r4
	be	_Label_2
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
_Label_2:
	mov	0,r1
! Make sure _P_UserSystem_ has hash value 0xd3ed0851 (decimal -739440559)
	set	_packageName,r2
	set	0xd3ed0851,r3
	call	_CheckVersion_P_UserSystem_
	.import	_CheckVersion_P_UserSystem_
	cmp	r1,0
	bne	_Label_3
_Label_3:
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
	mov	11,r1
_Label_25:
	push	r0
	sub	r1,1,r1
	bne	_Label_25
	mov	17,r13		! source line 17
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	22,r13		! source line 22
	mov	"\0\0AS",r10
!   _temp_4 = &_Global_buffer
	set	_Global_buffer,r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_4) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_4 = 30  (sizeInBytes=4)
	mov	30,r1
	load	[r14+-36],r2
	store	r1,[r2]
! WHILE STATEMENT...
	mov	23,r13		! source line 23
	mov	"\0\0WH",r10
_Label_5:
!	jmp	_Label_6
_Label_6:
	mov	23,r13		! source line 23
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	24,r13		! source line 24
	mov	"\0\0AS",r10
!   _temp_9 = &_Global_buffer
	set	_Global_buffer,r1
	store	r1,[r14+-28]
!   Move address of _temp_9 [0 ] into _temp_10
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
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
!   _temp_8 = _temp_10		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_8  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=30  sizeInBytes=4
	mov	30,r1
	store	r1,[r15+8]
!   Call the function
	mov	24,r13		! source line 24
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! IF STATEMENT...
	mov	25,r13		! source line 25
	mov	"\0\0IF",r10
!   if i > 0 then goto _Label_12		(int)
	load	[r14+-40],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_12
!	jmp	_Label_11
_Label_11:
! THEN...
	mov	26,r13		! source line 26
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	26,r13		! source line 26
	mov	"\0\0BR",r10
	jmp	_Label_7
! END IF...
_Label_12:
! ASSIGNMENT STATEMENT...
	mov	28,r13		! source line 28
	mov	"\0\0AS",r10
!   _temp_14 = &_Global_buffer
	set	_Global_buffer,r1
	store	r1,[r14+-16]
!   Move address of _temp_14 [0 ] into _temp_15
!     make sure index expr is >= 0
	mov	0,r2
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
!   _temp_13 = _temp_15		(4 bytes)
	load	[r14+-12],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_13  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=i  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+8]
!   Call the function
	mov	28,r13		! source line 28
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Write
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! END WHILE...
	jmp	_Label_5
_Label_7:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	30,r13		! source line 30
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Close
! RETURN STATEMENT...
	mov	30,r13		! source line 30
	mov	"\0\0RE",r10
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor_main:
	.word	_sourceFileName
	.word	_Label_16
	.word	0		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_17
	.word	-12
	.word	4
	.word	_Label_18
	.word	-16
	.word	4
	.word	_Label_19
	.word	-20
	.word	4
	.word	_Label_20
	.word	-24
	.word	4
	.word	_Label_21
	.word	-28
	.word	4
	.word	_Label_22
	.word	-32
	.word	4
	.word	_Label_23
	.word	-36
	.word	4
	.word	_Label_24
	.word	-40
	.word	4
	.word	0
_Label_16:
	.ascii	"main\0"
	.align
_Label_17:
	.byte	'?'
	.ascii	"_temp_15\0"
	.align
_Label_18:
	.byte	'?'
	.ascii	"_temp_14\0"
	.align
_Label_19:
	.byte	'?'
	.ascii	"_temp_13\0"
	.align
_Label_20:
	.byte	'?'
	.ascii	"_temp_10\0"
	.align
_Label_21:
	.byte	'?'
	.ascii	"_temp_9\0"
	.align
_Label_22:
	.byte	'?'
	.ascii	"_temp_8\0"
	.align
_Label_23:
	.byte	'?'
	.ascii	"_temp_4\0"
	.align
_Label_24:
	.byte	'I'
	.ascii	"i\0"
	.align
