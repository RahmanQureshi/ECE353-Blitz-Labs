! Name of package being compiled: Kernel
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
	.import	_Error_P_System_UncaughtThrowError
	.align
! Functions imported from other packages
	.import	print
	.import	printInt
	.import	printHex
	.import	printChar
	.import	printBool
	.import	_P_System_MemoryEqual
	.import	_P_System_StrEqual
	.import	_P_System_StrCopy
	.import	_P_System_StrCmp
	.import	_P_System_Min
	.import	_P_System_Max
	.import	_P_System_printIntVar
	.import	_P_System_printHexVar
	.import	_P_System_printBoolVar
	.import	_P_System_printCharVar
	.import	_P_System_printPtr
	.import	_P_System_nl
	.import	_P_System_PrintMemory
	.import	Cleari
	.import	Seti
	.import	Wait
	.import	RuntimeExit
	.import	getCatchStack
	.import	MemoryZero
	.import	MemoryCopy
	.import	_P_System_KPLSystemInitialize
	.import	_P_System_KPLMemoryAlloc
	.import	_P_System_KPLMemoryFree
	.import	_P_System_KPLUncaughtThrow
	.import	_P_System_KPLIsKindOf
	.import	_P_System_KPLSystemError
	.import	_P_BitMap_TestBitMap
! Externally visible functions in this package
	.export	_P_Kernel_TimerInterruptHandler
	.export	_P_Kernel_DiskInterruptHandler
	.export	_P_Kernel_SerialInterruptHandler
	.export	_P_Kernel_IllegalInstructionHandler
	.export	_P_Kernel_ArithmeticExceptionHandler
	.export	_P_Kernel_AddressExceptionHandler
	.export	_P_Kernel_PageInvalidExceptionHandler
	.export	_P_Kernel_PageReadonlyExceptionHandler
	.export	_P_Kernel_PrivilegedInstructionHandler
	.export	_P_Kernel_AlignmentExceptionHandler
	.export	_P_Kernel_SyscallTrapHandler
	.export	_P_Kernel_Handle_Sys_Fork
	.export	_P_Kernel_Handle_Sys_Yield
	.export	_P_Kernel_Handle_Sys_Exec
	.export	_P_Kernel_Handle_Sys_Join
	.export	_P_Kernel_Handle_Sys_Exit
	.export	_P_Kernel_Handle_Sys_Create
	.export	_P_Kernel_Handle_Sys_Open
	.export	_P_Kernel_Handle_Sys_Read
	.export	_P_Kernel_Handle_Sys_Write
	.export	_P_Kernel_Handle_Sys_Seek
	.export	_P_Kernel_Handle_Sys_Close
	.export	_P_Kernel_Handle_Sys_Shutdown
	.export	_P_Kernel_InitializeScheduler
	.export	_P_Kernel_Run
	.export	_P_Kernel_PrintReadyList
	.export	_P_Kernel_ThreadStartMain
	.export	_P_Kernel_ThreadFinish
	.export	_P_Kernel_FatalError_ThreadVersion
	.export	_P_Kernel_SetInterruptsTo
	.export	_P_Kernel_ProcessFinish
	.import	Switch
	.import	ThreadStartUp
	.import	GetOldUserPCFromSystemStack
	.import	LoadPageTableRegs
	.import	SaveUserRegs
	.import	RestoreUserRegs
	.import	BecomeUserThread
! The following class and its methods are from other packages
	.import	_P_System_Object
! The following class and its methods are from other packages
	.import	_P_BitMap_BitMap
! The following class and its methods are from other packages
	.import	_P_List_List
! The following class and its methods are from other packages
	.import	_P_List_Listable
! The following class and its methods are from this package
	.export	_P_Kernel_Semaphore
	.export	_Method_P_Kernel_Semaphore_1
	.export	_Method_P_Kernel_Semaphore_2
	.export	_Method_P_Kernel_Semaphore_3
! The following class and its methods are from this package
	.export	_P_Kernel_Mutex
	.export	_Method_P_Kernel_Mutex_1
	.export	_Method_P_Kernel_Mutex_2
	.export	_Method_P_Kernel_Mutex_3
	.export	_Method_P_Kernel_Mutex_4
! The following class and its methods are from this package
	.export	_P_Kernel_Condition
	.export	_Method_P_Kernel_Condition_1
	.export	_Method_P_Kernel_Condition_2
	.export	_Method_P_Kernel_Condition_3
	.export	_Method_P_Kernel_Condition_4
! The following class and its methods are from this package
	.export	_P_Kernel_Thread
	.export	_Method_P_Kernel_Thread_1
	.export	_Method_P_Kernel_Thread_2
	.export	_Method_P_Kernel_Thread_3
	.export	_Method_P_Kernel_Thread_4
	.export	_Method_P_Kernel_Thread_5
	.export	_Method_P_Kernel_Thread_6
! The following class and its methods are from this package
	.export	_P_Kernel_ThreadManager
	.export	_Method_P_Kernel_ThreadManager_1
	.export	_Method_P_Kernel_ThreadManager_2
	.export	_Method_P_Kernel_ThreadManager_3
	.export	_Method_P_Kernel_ThreadManager_4
! The following class and its methods are from this package
	.export	_P_Kernel_ProcessControlBlock
	.export	_Method_P_Kernel_ProcessControlBlock_1
	.export	_Method_P_Kernel_ProcessControlBlock_2
	.export	_Method_P_Kernel_ProcessControlBlock_3
! The following class and its methods are from this package
	.export	_P_Kernel_ProcessManager
	.export	_Method_P_Kernel_ProcessManager_1
	.export	_Method_P_Kernel_ProcessManager_2
	.export	_Method_P_Kernel_ProcessManager_3
	.export	_Method_P_Kernel_ProcessManager_4
	.export	_Method_P_Kernel_ProcessManager_5
! The following class and its methods are from this package
	.export	_P_Kernel_FrameManager
	.export	_Method_P_Kernel_FrameManager_1
	.export	_Method_P_Kernel_FrameManager_2
	.export	_Method_P_Kernel_FrameManager_3
	.export	_Method_P_Kernel_FrameManager_4
	.export	_Method_P_Kernel_FrameManager_5
! The following class and its methods are from this package
	.export	_P_Kernel_AddrSpace
	.export	_Method_P_Kernel_AddrSpace_1
	.export	_Method_P_Kernel_AddrSpace_2
	.export	_Method_P_Kernel_AddrSpace_3
	.export	_Method_P_Kernel_AddrSpace_4
	.export	_Method_P_Kernel_AddrSpace_5
	.export	_Method_P_Kernel_AddrSpace_6
	.export	_Method_P_Kernel_AddrSpace_7
	.export	_Method_P_Kernel_AddrSpace_8
	.export	_Method_P_Kernel_AddrSpace_9
	.export	_Method_P_Kernel_AddrSpace_10
	.export	_Method_P_Kernel_AddrSpace_11
	.export	_Method_P_Kernel_AddrSpace_12
	.export	_Method_P_Kernel_AddrSpace_13
	.export	_Method_P_Kernel_AddrSpace_14
	.export	_Method_P_Kernel_AddrSpace_15
	.export	_Method_P_Kernel_AddrSpace_16
	.export	_Method_P_Kernel_AddrSpace_17
	.export	_Method_P_Kernel_AddrSpace_18
	.export	_Method_P_Kernel_AddrSpace_19
	.export	_Method_P_Kernel_AddrSpace_20
	.export	_Method_P_Kernel_AddrSpace_21
! The following interfaces are from other packages
! The following interfaces are from this package
! Globals imported from other packages
	.import	_P_System_FatalError
! Global variables in this package
	.data
	.export	_P_Kernel_readyList
	.export	_P_Kernel_currentThread
	.export	_P_Kernel_mainThread
	.export	_P_Kernel_idleThread
	.export	_P_Kernel_threadsToBeDestroyed
	.export	_P_Kernel_currentInterruptStatus
	.export	_P_Kernel_processManager
	.export	_P_Kernel_threadManager
	.export	_P_Kernel_frameManager
_P_Kernel_readyList:
	.skip	12
_P_Kernel_currentThread:
	.skip	4
_P_Kernel_mainThread:
	.skip	4164
_P_Kernel_idleThread:
	.skip	4164
_P_Kernel_threadsToBeDestroyed:
	.skip	12
_P_Kernel_currentInterruptStatus:
	.skip	4
_P_Kernel_processManager:
	.skip	1316
_P_Kernel_threadManager:
	.skip	41696
_P_Kernel_frameManager:
	.skip	56
	.align
! String constants
_StringConst_122:
	.word	38			! length
	.ascii	"  Virtual page is not marked VALID!!!\n"
	.align
_StringConst_121:
	.word	38			! length
	.ascii	"  Virtual page number is too large!!!\n"
	.align
_StringConst_120:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_119:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_118:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_117:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_116:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_115:
	.word	9			! length
	.ascii	"         "
	.align
_StringConst_114:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_113:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_112:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_111:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_110:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_109:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_108:
	.word	10			! length
	.ascii	"          "
	.align
_StringConst_107:
	.word	4			! length
	.ascii	"    "
	.align
_StringConst_106:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_105:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_104:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_103:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_102:
	.word	109			! length
	.ascii	"     ==========   ==========     ==========  ==========  ==============  =====  ==========  =========  =====\n"
	.align
_StringConst_101:
	.word	109			! length
	.ascii	"        addr        entry          Virtual    Physical   Undefined Bits  Dirty  Referenced  Writeable  Valid\n"
	.align
_StringConst_100:
	.word	35			! length
	.ascii	"  Here are the frames in use: \n    "
	.align
_StringConst_99:
	.word	18			! length
	.ascii	"  numberFreeFrames"
	.align
_StringConst_98:
	.word	15			! length
	.ascii	"FRAME MANAGER:\n"
	.align
_StringConst_97:
	.word	89			! length
	.ascii	"Kernel code size appears to have grown too large and is overflowing into the frame region"
	.align
_StringConst_96:
	.word	30			! length
	.ascii	"Initializing Frame Manager...\n"
	.align
_StringConst_95:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_94:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_93:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_92:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_91:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_90:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_89:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_88:
	.word	13			! length
	.ascii	", exitStatus="
	.align
_StringConst_87:
	.word	13			! length
	.ascii	", parentsPid="
	.align
_StringConst_86:
	.word	33			! length
	.ascii	"Bad status in ProcessControlBlock"
	.align
_StringConst_85:
	.word	4			! length
	.ascii	"FREE"
	.align
_StringConst_84:
	.word	6			! length
	.ascii	"ZOMBIE"
	.align
_StringConst_83:
	.word	6			! length
	.ascii	"ACTIVE"
	.align
_StringConst_82:
	.word	9			! length
	.ascii	", status="
	.align
_StringConst_81:
	.word	8			! length
	.ascii	")   pid="
	.align
_StringConst_80:
	.word	30			! length
	.ascii	"  ProcessControlBlock   (addr="
	.align
_StringConst_79:
	.word	15			! length
	.ascii	"    myThread = "
	.align
_StringConst_78:
	.word	37			! length
	.ascii	"Here is the FREE list of Threads:\n   "
	.align
_StringConst_77:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_76:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_75:
	.word	28			! length
	.ascii	"Here is the thread table...\n"
	.align
_StringConst_74:
	.word	14			! length
	.ascii	"ThreadNameHere"
	.align
_StringConst_73:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_72:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_71:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_70:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_69:
	.word	20			! length
	.ascii	"    user registers:\n"
	.align
_StringConst_68:
	.word	20			! length
	.ascii	"    is user thread: "
	.align
_StringConst_67:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_66:
	.word	20			! length
	.ascii	"    status = UNUSED\n"
	.align
_StringConst_65:
	.word	21			! length
	.ascii	"    status = BLOCKED\n"
	.align
_StringConst_64:
	.word	21			! length
	.ascii	"    status = RUNNING\n"
	.align
_StringConst_63:
	.word	19			! length
	.ascii	"    status = READY\n"
	.align
_StringConst_62:
	.word	26			! length
	.ascii	"    status = JUST_CREATED\n"
	.align
_StringConst_61:
	.word	23			! length
	.ascii	"    stack starting addr"
	.align
_StringConst_60:
	.word	12			! length
	.ascii	"    stackTop"
	.align
_StringConst_59:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_58:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_57:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_56:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_55:
	.word	19			! length
	.ascii	"    machine state:\n"
	.align
_StringConst_54:
	.word	2			! length
	.ascii	")\n"
	.align
_StringConst_53:
	.word	29			! length
	.ascii	"\"    (addr of Thread object: "
	.align
_StringConst_52:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_51:
	.word	32			! length
	.ascii	"System stack underflow detected!"
	.align
_StringConst_50:
	.word	31			! length
	.ascii	"System stack overflow detected!"
	.align
_StringConst_49:
	.word	48			! length
	.ascii	"Ready list should always contain the idle thread"
	.align
_StringConst_48:
	.word	31			! length
	.ascii	"In Sleep, self != currentThread"
	.align
_StringConst_47:
	.word	44			! length
	.ascii	"In Sleep, currentInterruptStatus != DISABLED"
	.align
_StringConst_46:
	.word	51			! length
	.ascii	"Status of current thread should be READY or RUNNING"
	.align
_StringConst_45:
	.word	31			! length
	.ascii	"In Yield, self != currentThread"
	.align
_StringConst_44:
	.word	54			! length
	.ascii	"Attempt to broadcast a condition when lock is not held"
	.align
_StringConst_43:
	.word	52			! length
	.ascii	"Attempt to signal a condition when mutex is not held"
	.align
_StringConst_42:
	.word	51			! length
	.ascii	"Attempt to wait on condition when mutex is not held"
	.align
_StringConst_41:
	.word	52			! length
	.ascii	"Attempt to unlock a mutex by a thread not holding it"
	.align
_StringConst_40:
	.word	54			! length
	.ascii	"Attempt to lock a mutex by a thread already holding it"
	.align
_StringConst_39:
	.word	51			! length
	.ascii	"Semaphore count underflowed during \'Down\' operation"
	.align
_StringConst_38:
	.word	48			! length
	.ascii	"Semaphore count overflowed during \'Up\' operation"
	.align
_StringConst_37:
	.word	39			! length
	.ascii	"Semaphore created with initialCount < 0"
	.align
_StringConst_36:
	.word	37			! length
	.ascii	"Unknown syscall code from user thread"
	.align
_StringConst_35:
	.word	15			! length
	.ascii	"Syscall code = "
	.align
_StringConst_34:
	.word	42			! length
	.ascii	"  ERROR: currentThread.myProcess is null\n\n"
	.align
_StringConst_33:
	.word	14			! length
	.ascii	"  **********\n\n"
	.align
_StringConst_32:
	.word	13			! length
	.ascii	"\n**********  "
	.align
_StringConst_31:
	.word	62			! length
	.ascii	"An AlignmentException exception has occured while in user mode"
	.align
_StringConst_30:
	.word	64			! length
	.ascii	"A PrivilegedInstruction exception has occured while in user mode"
	.align
_StringConst_29:
	.word	64			! length
	.ascii	"A PageReadonlyException exception has occured while in user mode"
	.align
_StringConst_28:
	.word	63			! length
	.ascii	"A PageInvalidException exception has occured while in user mode"
	.align
_StringConst_27:
	.word	60			! length
	.ascii	"An AddressException exception has occured while in user mode"
	.align
_StringConst_26:
	.word	63			! length
	.ascii	"An ArithmeticException exception has occured while in user mode"
	.align
_StringConst_25:
	.word	62			! length
	.ascii	"An IllegalInstruction exception has occured while in user mode"
	.align
_StringConst_24:
	.word	41			! length
	.ascii	"DISK INTERRUPTS NOT EXPECTED IN PROJECT 4"
	.align
_StringConst_23:
	.word	32			! length
	.ascii	"ProcessFinish is not implemented"
	.align
_StringConst_22:
	.word	1			! length
	.ascii	")"
	.align
_StringConst_21:
	.word	28			! length
	.ascii	"    (addr of Thread object: "
	.align
_StringConst_20:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_19:
	.word	6			! length
	.ascii	"UNUSED"
	.align
_StringConst_18:
	.word	7			! length
	.ascii	"BLOCKED"
	.align
_StringConst_17:
	.word	7			! length
	.ascii	"RUNNING"
	.align
_StringConst_16:
	.word	5			! length
	.ascii	"READY"
	.align
_StringConst_15:
	.word	12			! length
	.ascii	"JUST_CREATED"
	.align
_StringConst_14:
	.word	12			! length
	.ascii	"\"    status="
	.align
_StringConst_13:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_12:
	.word	5			! length
	.ascii	"NULL\n"
	.align
_StringConst_11:
	.word	92			! length
	.ascii	"(To find out where execution was when the problem arose, type \'st\' at the emulator prompt.)\n"
	.align
_StringConst_10:
	.word	19			! length
	.ascii	"\" -- TERMINATING!\n\n"
	.align
_StringConst_9:
	.word	3			! length
	.ascii	": \""
	.align
_StringConst_8:
	.word	4			! length
	.ascii	" in "
	.align
_StringConst_7:
	.word	12			! length
	.ascii	"\nFATAL ERROR"
	.align
_StringConst_6:
	.word	32			! length
	.ascii	"This thread will never run again"
	.align
_StringConst_5:
	.word	32			! length
	.ascii	"ThreadFinish should never return"
	.align
_StringConst_4:
	.word	24			! length
	.ascii	"Here is the ready list:\n"
	.align
_StringConst_3:
	.word	11			! length
	.ascii	"idle-thread"
	.align
_StringConst_2:
	.word	11			! length
	.ascii	"main-thread"
	.align
_StringConst_1:
	.word	33			! length
	.ascii	"Initializing Thread Scheduler...\n"
	.align
	.text
! 
! Source Filename and Package Name
! 
_sourceFileName:
	.ascii	"Kernel.c\0"
_packageName:
	.ascii	"Kernel\0"
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
_CheckVersion_P_Kernel_:
	.export	_CheckVersion_P_Kernel_
	set	0x97a40b60,r4		! myHashVal = -1750856864
	cmp	r3,r4
	be	_Label_127
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
_Label_127:
	mov	0,r1
! Make sure _P_System_ has hash value 0x9e9d23b6 (decimal -1633868874)
	set	_packageName,r2
	set	0x9e9d23b6,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_128
! Make sure _P_BitMap_ has hash value 0xa596b1b5 (decimal -1516850763)
	set	_packageName,r2
	set	0xa596b1b5,r3
	call	_CheckVersion_P_BitMap_
	.import	_CheckVersion_P_BitMap_
	cmp	r1,0
	bne	_Label_128
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_128
_Label_128:
	ret
_CVMess1:	.ascii	"\nVERSION CONSISTENCY ERROR: Package '\0"
_CVMess2:	.ascii	"' uses package '\0"
_CVMess3:	.ascii	"'.  Whenever a header file is modified, all packages that use that package (directly or indirectly) must be recompiled.  The header file for '\0"
_CVMess4:	.ascii	"' has been changed since '\0"
_CVMess5:	.ascii	"' was compiled last.  Please recompile all packages that depend on '\0"
_CVMess6:	.ascii	"'.\n\n\0"
	.align
! 
! ===============  FUNCTION InitializeScheduler  ===============
! 
_P_Kernel_InitializeScheduler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_InitializeScheduler,r1
	push	r1
	mov	16,r1
_Label_1693:
	push	r0
	sub	r1,1,r1
	bne	_Label_1693
	mov	7,r13		! source line 7
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	14,r13		! source line 14
	mov	"\0\0CE",r10
	call	Cleari
! CALL STATEMENT...
!   _temp_129 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_129  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	15,r13		! source line 15
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	16,r13		! source line 16
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_readyList = zeros  (sizeInBytes=12)
	set	_P_Kernel_readyList,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   _P_Kernel_readyList = _P_List_List
	set	_P_List_List,r1
	set	_P_Kernel_readyList,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	17,r13		! source line 17
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_threadsToBeDestroyed = zeros  (sizeInBytes=12)
	set	_P_Kernel_threadsToBeDestroyed,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   _P_Kernel_threadsToBeDestroyed = _P_List_List
	set	_P_List_List,r1
	set	_P_Kernel_threadsToBeDestroyed,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	18,r13		! source line 18
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_mainThread = zeros  (sizeInBytes=4164)
	set	_P_Kernel_mainThread,r4
	mov	1041,r3
_Label_1694:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1694
!   _P_Kernel_mainThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_mainThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	19,r13		! source line 19
	mov	"\0\0SE",r10
!   _temp_133 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-44]
!   _temp_134 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_133  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	20,r13		! source line 20
	mov	"\0\0AS",r10
!   _temp_135 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-36]
!   _temp_136 = _temp_135 + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_136 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	21,r13		! source line 21
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_idleThread = zeros  (sizeInBytes=4164)
	set	_P_Kernel_idleThread,r4
	mov	1041,r3
_Label_1695:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1695
!   _P_Kernel_idleThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_idleThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	22,r13		! source line 22
	mov	"\0\0SE",r10
!   _temp_138 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-24]
!   _temp_139 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_138  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	23,r13		! source line 23
	mov	"\0\0SE",r10
!   _temp_140 = _function_126_IdleFunction
	set	_function_126_IdleFunction,r1
	store	r1,[r14+-16]
!   _temp_141 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_140  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	24,r13		! source line 24
	mov	"\0\0AS",r10
!   _P_Kernel_currentThread = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	set	_P_Kernel_currentThread,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	25,r13		! source line 25
	mov	"\0\0AS",r10
!   _P_System_FatalError = _P_Kernel_FatalError_ThreadVersion
	set	_P_Kernel_FatalError_ThreadVersion,r1
	set	_P_System_FatalError,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	26,r13		! source line 26
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	27,r13		! source line 27
	mov	"\0\0CE",r10
	call	Seti
! RETURN STATEMENT...
	mov	27,r13		! source line 27
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_InitializeScheduler:
	.word	_sourceFileName
	.word	_Label_142
	.word	0		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_143
	.word	-12
	.word	4
	.word	_Label_144
	.word	-16
	.word	4
	.word	_Label_145
	.word	-20
	.word	4
	.word	_Label_146
	.word	-24
	.word	4
	.word	_Label_147
	.word	-28
	.word	4
	.word	_Label_148
	.word	-32
	.word	4
	.word	_Label_149
	.word	-36
	.word	4
	.word	_Label_150
	.word	-40
	.word	4
	.word	_Label_151
	.word	-44
	.word	4
	.word	_Label_152
	.word	-48
	.word	4
	.word	_Label_153
	.word	-52
	.word	4
	.word	_Label_154
	.word	-56
	.word	4
	.word	_Label_155
	.word	-60
	.word	4
	.word	0
_Label_142:
	.ascii	"InitializeScheduler\0"
	.align
_Label_143:
	.byte	'?'
	.ascii	"_temp_141\0"
	.align
_Label_144:
	.byte	'?'
	.ascii	"_temp_140\0"
	.align
_Label_145:
	.byte	'?'
	.ascii	"_temp_139\0"
	.align
_Label_146:
	.byte	'?'
	.ascii	"_temp_138\0"
	.align
_Label_147:
	.byte	'?'
	.ascii	"_temp_137\0"
	.align
_Label_148:
	.byte	'?'
	.ascii	"_temp_136\0"
	.align
_Label_149:
	.byte	'?'
	.ascii	"_temp_135\0"
	.align
_Label_150:
	.byte	'?'
	.ascii	"_temp_134\0"
	.align
_Label_151:
	.byte	'?'
	.ascii	"_temp_133\0"
	.align
_Label_152:
	.byte	'?'
	.ascii	"_temp_132\0"
	.align
_Label_153:
	.byte	'?'
	.ascii	"_temp_131\0"
	.align
_Label_154:
	.byte	'?'
	.ascii	"_temp_130\0"
	.align
_Label_155:
	.byte	'?'
	.ascii	"_temp_129\0"
	.align
! 
! ===============  FUNCTION IdleFunction  ===============
! 
_function_126_IdleFunction:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_126_IdleFunction,r1
	push	r1
	mov	3,r1
_Label_1696:
	push	r0
	sub	r1,1,r1
	bne	_Label_1696
	mov	32,r13		! source line 32
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	42,r13		! source line 42
	mov	"\0\0WH",r10
_Label_156:
!	jmp	_Label_157
_Label_157:
	mov	42,r13		! source line 42
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	43,r13		! source line 43
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	43,r13		! source line 43
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-16]
! IF STATEMENT...
	mov	44,r13		! source line 44
	mov	"\0\0IF",r10
	mov	44,r13		! source line 44
	mov	"\0\0SE",r10
!   _temp_161 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Send message IsEmpty
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_159 else goto _Label_160
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_160
	jmp	_Label_159
_Label_159:
! THEN...
	mov	45,r13		! source line 45
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Call the function
	mov	45,r13		! source line 45
	mov	"\0\0CE",r10
	call	Wait
	jmp	_Label_162
_Label_160:
! ELSE...
	mov	47,r13		! source line 47
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	47,r13		! source line 47
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_162:
! END WHILE...
	jmp	_Label_156
_Label_158:
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_126_IdleFunction:
	.word	_sourceFileName
	.word	_Label_163
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_164
	.word	8
	.word	4
	.word	_Label_165
	.word	-12
	.word	4
	.word	_Label_166
	.word	-16
	.word	4
	.word	0
_Label_163:
	.ascii	"IdleFunction\0"
	.align
_Label_164:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_165:
	.byte	'?'
	.ascii	"_temp_161\0"
	.align
_Label_166:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION Run  ===============
! 
_P_Kernel_Run:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Run,r1
	push	r1
	mov	20,r1
_Label_1697:
	push	r0
	sub	r1,1,r1
	bne	_Label_1697
	mov	54,r13		! source line 54
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	67,r13		! source line 67
	mov	"\0\0AS",r10
!   prevThread = _P_Kernel_currentThread		(4 bytes)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r14+-76]
! SEND STATEMENT...
	mov	68,r13		! source line 68
	mov	"\0\0SE",r10
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message CheckOverflow
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! IF STATEMENT...
	mov	70,r13		! source line 70
	mov	"\0\0IF",r10
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_169 = prevThread + 4092
	load	[r14+-76],r1
	add	r1,4092,r1
	store	r1,[r14+-72]
!   if boolIsZero (_temp_169 ) then goto _Label_168		(int)
	load	[r14+-72],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_168
!	jmp	_Label_167
_Label_167:
! THEN...
	mov	71,r13		! source line 71
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_171 = prevThread + 4096
	load	[r14+-76],r1
	add	r1,4096,r1
	store	r1,[r14+-64]
!   Move address of _temp_171 [0 ] into _temp_172
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-64],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-60]
!   _temp_170 = _temp_172		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_170  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	71,r13		! source line 71
	mov	"\0\0CE",r10
	call	SaveUserRegs
! END IF...
_Label_168:
! ASSIGNMENT STATEMENT...
	mov	73,r13		! source line 73
	mov	"\0\0AS",r10
!   _P_Kernel_currentThread = nextThread		(4 bytes)
	load	[r14+8],r1
	set	_P_Kernel_currentThread,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	74,r13		! source line 74
	mov	"\0\0AS",r10
!   if intIsZero (nextThread) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_173 = nextThread + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-56]
!   Data Move: *_temp_173 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-56],r2
	store	r1,[r2]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=prevThread  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=nextThread  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Call the function
	mov	80,r13		! source line 80
	mov	"\0\0CE",r10
	call	Switch
! WHILE STATEMENT...
	mov	84,r13		! source line 84
	mov	"\0\0WH",r10
_Label_174:
	mov	84,r13		! source line 84
	mov	"\0\0SE",r10
!   _temp_178 = &_P_Kernel_threadsToBeDestroyed
	set	_P_Kernel_threadsToBeDestroyed,r1
	store	r1,[r14+-52]
!   Send message IsEmpty
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_177  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_177 then goto _Label_176 else goto _Label_175
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_175
	jmp	_Label_176
_Label_175:
	mov	84,r13		! source line 84
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	85,r13		! source line 85
	mov	"\0\0AS",r10
	mov	85,r13		! source line 85
	mov	"\0\0SE",r10
!   _temp_179 = &_P_Kernel_threadsToBeDestroyed
	set	_P_Kernel_threadsToBeDestroyed,r1
	store	r1,[r14+-48]
!   Send message Remove
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=th  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! SEND STATEMENT...
	mov	86,r13		! source line 86
	mov	"\0\0SE",r10
!   _temp_180 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=th  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+4]
!   Send message FreeThread
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END WHILE...
	jmp	_Label_174
_Label_176:
! IF STATEMENT...
	mov	89,r13		! source line 89
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_183 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-40]
!   if boolIsZero (_temp_183 ) then goto _Label_182		(int)
	load	[r14+-40],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_182
!	jmp	_Label_181
_Label_181:
! THEN...
	mov	90,r13		! source line 90
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_185 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-32]
!   Move address of _temp_185 [0 ] into _temp_186
!     make sure index expr is >= 0
	mov	0,r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_184 = _temp_186		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_184  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	90,r13		! source line 90
	mov	"\0\0CE",r10
	call	RestoreUserRegs
! SEND STATEMENT...
	mov	91,r13		! source line 91
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_188 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_187 = *_temp_188  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_187) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_189 = _temp_187 + 32
	load	[r14+-24],r1
	add	r1,32,r1
	store	r1,[r14+-16]
!   Send message SetToThisPageTable
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,72,r2
	call	r2
! END IF...
_Label_182:
! RETURN STATEMENT...
	mov	89,r13		! source line 89
	mov	"\0\0RE",r10
	add	r15,84,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Run:
	.word	_sourceFileName
	.word	_Label_190
	.word	4		! total size of parameters
	.word	80		! frame size = 80
	.word	_Label_191
	.word	8
	.word	4
	.word	_Label_192
	.word	-16
	.word	4
	.word	_Label_193
	.word	-20
	.word	4
	.word	_Label_194
	.word	-24
	.word	4
	.word	_Label_195
	.word	-28
	.word	4
	.word	_Label_196
	.word	-32
	.word	4
	.word	_Label_197
	.word	-36
	.word	4
	.word	_Label_198
	.word	-40
	.word	4
	.word	_Label_199
	.word	-44
	.word	4
	.word	_Label_200
	.word	-48
	.word	4
	.word	_Label_201
	.word	-52
	.word	4
	.word	_Label_202
	.word	-9
	.word	1
	.word	_Label_203
	.word	-56
	.word	4
	.word	_Label_204
	.word	-60
	.word	4
	.word	_Label_205
	.word	-64
	.word	4
	.word	_Label_206
	.word	-68
	.word	4
	.word	_Label_207
	.word	-72
	.word	4
	.word	_Label_208
	.word	-76
	.word	4
	.word	_Label_209
	.word	-80
	.word	4
	.word	0
_Label_190:
	.ascii	"Run\0"
	.align
_Label_191:
	.byte	'P'
	.ascii	"nextThread\0"
	.align
_Label_192:
	.byte	'?'
	.ascii	"_temp_189\0"
	.align
_Label_193:
	.byte	'?'
	.ascii	"_temp_188\0"
	.align
_Label_194:
	.byte	'?'
	.ascii	"_temp_187\0"
	.align
_Label_195:
	.byte	'?'
	.ascii	"_temp_186\0"
	.align
_Label_196:
	.byte	'?'
	.ascii	"_temp_185\0"
	.align
_Label_197:
	.byte	'?'
	.ascii	"_temp_184\0"
	.align
_Label_198:
	.byte	'?'
	.ascii	"_temp_183\0"
	.align
_Label_199:
	.byte	'?'
	.ascii	"_temp_180\0"
	.align
_Label_200:
	.byte	'?'
	.ascii	"_temp_179\0"
	.align
_Label_201:
	.byte	'?'
	.ascii	"_temp_178\0"
	.align
_Label_202:
	.byte	'C'
	.ascii	"_temp_177\0"
	.align
_Label_203:
	.byte	'?'
	.ascii	"_temp_173\0"
	.align
_Label_204:
	.byte	'?'
	.ascii	"_temp_172\0"
	.align
_Label_205:
	.byte	'?'
	.ascii	"_temp_171\0"
	.align
_Label_206:
	.byte	'?'
	.ascii	"_temp_170\0"
	.align
_Label_207:
	.byte	'?'
	.ascii	"_temp_169\0"
	.align
_Label_208:
	.byte	'P'
	.ascii	"prevThread\0"
	.align
_Label_209:
	.byte	'P'
	.ascii	"th\0"
	.align
! 
! ===============  FUNCTION PrintReadyList  ===============
! 
_P_Kernel_PrintReadyList:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PrintReadyList,r1
	push	r1
	mov	6,r1
_Label_1698:
	push	r0
	sub	r1,1,r1
	bne	_Label_1698
	mov	97,r13		! source line 97
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	104,r13		! source line 104
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	104,r13		! source line 104
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! CALL STATEMENT...
!   _temp_210 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_210  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	105,r13		! source line 105
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	106,r13		! source line 106
	mov	"\0\0SE",r10
!   _temp_211 = _function_125_ThreadPrintShort
	set	_function_125_ThreadPrintShort,r1
	store	r1,[r14+-16]
!   _temp_212 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_211  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	107,r13		! source line 107
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	107,r13		! source line 107
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	107,r13		! source line 107
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PrintReadyList:
	.word	_sourceFileName
	.word	_Label_213
	.word	0		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_214
	.word	-12
	.word	4
	.word	_Label_215
	.word	-16
	.word	4
	.word	_Label_216
	.word	-20
	.word	4
	.word	_Label_217
	.word	-24
	.word	4
	.word	0
_Label_213:
	.ascii	"PrintReadyList\0"
	.align
_Label_214:
	.byte	'?'
	.ascii	"_temp_212\0"
	.align
_Label_215:
	.byte	'?'
	.ascii	"_temp_211\0"
	.align
_Label_216:
	.byte	'?'
	.ascii	"_temp_210\0"
	.align
_Label_217:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION ThreadStartMain  ===============
! 
_P_Kernel_ThreadStartMain:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ThreadStartMain,r1
	push	r1
	mov	7,r1
_Label_1699:
	push	r0
	sub	r1,1,r1
	bne	_Label_1699
	mov	112,r13		! source line 112
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	124,r13		! source line 124
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	124,r13		! source line 124
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! ASSIGNMENT STATEMENT...
	mov	125,r13		! source line 125
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_218 = _P_Kernel_currentThread + 80
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,80,r1
	store	r1,[r14+-24]
!   Data Move: mainFun = *_temp_218  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_220 = _P_Kernel_currentThread + 84
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,84,r1
	store	r1,[r14+-16]
!   Data Move: _temp_219 = *_temp_220  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_219  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable mainFun
	mov	126,r13		! source line 126
	mov	"\0\0CF",r10
	load	[r14+-32],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CALL STATEMENT...
!   Call the function
	mov	127,r13		! source line 127
	mov	"\0\0CA",r10
	call	_P_Kernel_ThreadFinish
! CALL STATEMENT...
!   _temp_221 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_221  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	128,r13		! source line 128
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	128,r13		! source line 128
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ThreadStartMain:
	.word	_sourceFileName
	.word	_Label_222
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_223
	.word	-12
	.word	4
	.word	_Label_224
	.word	-16
	.word	4
	.word	_Label_225
	.word	-20
	.word	4
	.word	_Label_226
	.word	-24
	.word	4
	.word	_Label_227
	.word	-28
	.word	4
	.word	_Label_228
	.word	-32
	.word	4
	.word	0
_Label_222:
	.ascii	"ThreadStartMain\0"
	.align
_Label_223:
	.byte	'?'
	.ascii	"_temp_221\0"
	.align
_Label_224:
	.byte	'?'
	.ascii	"_temp_220\0"
	.align
_Label_225:
	.byte	'?'
	.ascii	"_temp_219\0"
	.align
_Label_226:
	.byte	'?'
	.ascii	"_temp_218\0"
	.align
_Label_227:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_228:
	.byte	'P'
	.ascii	"mainFun\0"
	.align
! 
! ===============  FUNCTION ThreadFinish  ===============
! 
_P_Kernel_ThreadFinish:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ThreadFinish,r1
	push	r1
	mov	5,r1
_Label_1700:
	push	r0
	sub	r1,1,r1
	bne	_Label_1700
	mov	133,r13		! source line 133
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	144,r13		! source line 144
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	144,r13		! source line 144
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! SEND STATEMENT...
	mov	148,r13		! source line 148
	mov	"\0\0SE",r10
!   _temp_229 = &_P_Kernel_threadsToBeDestroyed
	set	_P_Kernel_threadsToBeDestroyed,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	149,r13		! source line 149
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! CALL STATEMENT...
!   _temp_230 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_230  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	151,r13		! source line 151
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	151,r13		! source line 151
	mov	"\0\0RE",r10
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ThreadFinish:
	.word	_sourceFileName
	.word	_Label_231
	.word	0		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_232
	.word	-12
	.word	4
	.word	_Label_233
	.word	-16
	.word	4
	.word	_Label_234
	.word	-20
	.word	4
	.word	0
_Label_231:
	.ascii	"ThreadFinish\0"
	.align
_Label_232:
	.byte	'?'
	.ascii	"_temp_230\0"
	.align
_Label_233:
	.byte	'?'
	.ascii	"_temp_229\0"
	.align
_Label_234:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION FatalError_ThreadVersion  ===============
! 
_P_Kernel_FatalError_ThreadVersion:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_FatalError_ThreadVersion,r1
	push	r1
	mov	9,r1
_Label_1701:
	push	r0
	sub	r1,1,r1
	bne	_Label_1701
	mov	156,r13		! source line 156
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	164,r13		! source line 164
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	164,r13		! source line 164
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! CALL STATEMENT...
!   _temp_235 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_235  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	165,r13		! source line 165
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	166,r13		! source line 166
	mov	"\0\0IF",r10
!   if _P_Kernel_currentThread == 0 then goto _Label_237		(int)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_237
!	jmp	_Label_236
_Label_236:
! THEN...
	mov	167,r13		! source line 167
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_238 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_238  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	167,r13		! source line 167
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_240 = _P_Kernel_currentThread + 72
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-24]
!   Data Move: _temp_239 = *_temp_240  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_239  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	168,r13		! source line 168
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_237:
! CALL STATEMENT...
!   _temp_241 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_241  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	170,r13		! source line 170
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	171,r13		! source line 171
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_242 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_242  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	172,r13		! source line 172
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_243 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_243  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	173,r13		! source line 173
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	174,r13		! source line 174
	mov	"\0\0CE",r10
	call	RuntimeExit
! RETURN STATEMENT...
	mov	174,r13		! source line 174
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_FatalError_ThreadVersion:
	.word	_sourceFileName
	.word	_Label_244
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_245
	.word	8
	.word	4
	.word	_Label_246
	.word	-12
	.word	4
	.word	_Label_247
	.word	-16
	.word	4
	.word	_Label_248
	.word	-20
	.word	4
	.word	_Label_249
	.word	-24
	.word	4
	.word	_Label_250
	.word	-28
	.word	4
	.word	_Label_251
	.word	-32
	.word	4
	.word	_Label_252
	.word	-36
	.word	4
	.word	_Label_253
	.word	-40
	.word	4
	.word	0
_Label_244:
	.ascii	"FatalError_ThreadVersion\0"
	.align
_Label_245:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_246:
	.byte	'?'
	.ascii	"_temp_243\0"
	.align
_Label_247:
	.byte	'?'
	.ascii	"_temp_242\0"
	.align
_Label_248:
	.byte	'?'
	.ascii	"_temp_241\0"
	.align
_Label_249:
	.byte	'?'
	.ascii	"_temp_240\0"
	.align
_Label_250:
	.byte	'?'
	.ascii	"_temp_239\0"
	.align
_Label_251:
	.byte	'?'
	.ascii	"_temp_238\0"
	.align
_Label_252:
	.byte	'?'
	.ascii	"_temp_235\0"
	.align
_Label_253:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION SetInterruptsTo  ===============
! 
_P_Kernel_SetInterruptsTo:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_SetInterruptsTo,r1
	push	r1
	mov	1,r1
_Label_1702:
	push	r0
	sub	r1,1,r1
	bne	_Label_1702
	mov	179,r13		! source line 179
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	192,r13		! source line 192
	mov	"\0\0CE",r10
	call	Cleari
! ASSIGNMENT STATEMENT...
	mov	193,r13		! source line 193
	mov	"\0\0AS",r10
!   oldStat = _P_Kernel_currentInterruptStatus		(4 bytes)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	store	r1,[r14+-12]
! IF STATEMENT...
	mov	194,r13		! source line 194
	mov	"\0\0IF",r10
!   if newStatus != 1 then goto _Label_255		(int)
	load	[r14+8],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_255
!	jmp	_Label_254
_Label_254:
! THEN...
	mov	195,r13		! source line 195
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	195,r13		! source line 195
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	196,r13		! source line 196
	mov	"\0\0CE",r10
	call	Seti
	jmp	_Label_256
_Label_255:
! ELSE...
	mov	198,r13		! source line 198
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	198,r13		! source line 198
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	199,r13		! source line 199
	mov	"\0\0CE",r10
	call	Cleari
! END IF...
_Label_256:
! RETURN STATEMENT...
	mov	201,r13		! source line 201
	mov	"\0\0RE",r10
!   ReturnResult: oldStat  (sizeInBytes=4)
	load	[r14+-12],r1
	store	r1,[r14+8]
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_SetInterruptsTo:
	.word	_sourceFileName
	.word	_Label_257
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_258
	.word	8
	.word	4
	.word	_Label_259
	.word	-12
	.word	4
	.word	0
_Label_257:
	.ascii	"SetInterruptsTo\0"
	.align
_Label_258:
	.byte	'I'
	.ascii	"newStatus\0"
	.align
_Label_259:
	.byte	'I'
	.ascii	"oldStat\0"
	.align
! 
! ===============  FUNCTION ThreadPrintShort  ===============
! 
_function_125_ThreadPrintShort:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_125_ThreadPrintShort,r1
	push	r1
	mov	19,r1
_Label_1703:
	push	r0
	sub	r1,1,r1
	bne	_Label_1703
	mov	640,r13		! source line 640
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! oldStatus
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	647,r13		! source line 647
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! IF STATEMENT...
	mov	648,r13		! source line 648
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_263		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_263
!   _temp_262 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_264
_Label_263:
!   _temp_262 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_264:
!   if _temp_262 then goto _Label_261 else goto _Label_260
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_260
	jmp	_Label_261
_Label_260:
! THEN...
	mov	649,r13		! source line 649
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_265 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_265  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	649,r13		! source line 649
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	650,r13		! source line 650
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_261:
! CALL STATEMENT...
!   _temp_266 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_266  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	652,r13		! source line 652
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_268 = t + 72
	load	[r14+8],r1
	add	r1,72,r1
	store	r1,[r14+-64]
!   Data Move: _temp_267 = *_temp_268  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_267  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	653,r13		! source line 653
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_269 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_269  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	654,r13		! source line 654
	mov	"\0\0CE",r10
	call	print
! SWITCH STATEMENT (using series of tests)...
	mov	655,r13		! source line 655
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_278 = t + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-52]
!   Data Move: _temp_277 = *_temp_278  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   Branch to the right case label
	load	[r14+-56],r1
	cmp	r1,1
	be	_Label_272
	cmp	r1,2
	be	_Label_273
	cmp	r1,3
	be	_Label_274
	cmp	r1,4
	be	_Label_275
	cmp	r1,5
	be	_Label_276
	jmp	_Label_270
! CASE 1...
_Label_272:
! CALL STATEMENT...
!   _temp_279 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_279  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	657,r13		! source line 657
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	658,r13		! source line 658
	mov	"\0\0BR",r10
	jmp	_Label_271
! CASE 2...
_Label_273:
! CALL STATEMENT...
!   _temp_280 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_280  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	660,r13		! source line 660
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	661,r13		! source line 661
	mov	"\0\0BR",r10
	jmp	_Label_271
! CASE 3...
_Label_274:
! CALL STATEMENT...
!   _temp_281 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_281  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	663,r13		! source line 663
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	664,r13		! source line 664
	mov	"\0\0BR",r10
	jmp	_Label_271
! CASE 4...
_Label_275:
! CALL STATEMENT...
!   _temp_282 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_282  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	666,r13		! source line 666
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	667,r13		! source line 667
	mov	"\0\0BR",r10
	jmp	_Label_271
! CASE 5...
_Label_276:
! CALL STATEMENT...
!   _temp_283 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_283  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	669,r13		! source line 669
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	670,r13		! source line 670
	mov	"\0\0BR",r10
	jmp	_Label_271
! DEFAULT CASE...
_Label_270:
! CALL STATEMENT...
!   _temp_284 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_284  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	672,r13		! source line 672
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_271:
! CALL STATEMENT...
!   _temp_285 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_285  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	674,r13		! source line 674
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_286 = t		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_286  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	675,r13		! source line 675
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_287 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_287  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	676,r13		! source line 676
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	677,r13		! source line 677
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	679,r13		! source line 679
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	679,r13		! source line 679
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! RETURN STATEMENT...
	mov	679,r13		! source line 679
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_125_ThreadPrintShort:
	.word	_sourceFileName
	.word	_Label_288
	.word	4		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_289
	.word	8
	.word	4
	.word	_Label_290
	.word	-16
	.word	4
	.word	_Label_291
	.word	-20
	.word	4
	.word	_Label_292
	.word	-24
	.word	4
	.word	_Label_293
	.word	-28
	.word	4
	.word	_Label_294
	.word	-32
	.word	4
	.word	_Label_295
	.word	-36
	.word	4
	.word	_Label_296
	.word	-40
	.word	4
	.word	_Label_297
	.word	-44
	.word	4
	.word	_Label_298
	.word	-48
	.word	4
	.word	_Label_299
	.word	-52
	.word	4
	.word	_Label_300
	.word	-56
	.word	4
	.word	_Label_301
	.word	-60
	.word	4
	.word	_Label_302
	.word	-64
	.word	4
	.word	_Label_303
	.word	-68
	.word	4
	.word	_Label_304
	.word	-72
	.word	4
	.word	_Label_305
	.word	-76
	.word	4
	.word	_Label_306
	.word	-9
	.word	1
	.word	_Label_307
	.word	-80
	.word	4
	.word	0
_Label_288:
	.ascii	"ThreadPrintShort\0"
	.align
_Label_289:
	.byte	'P'
	.ascii	"t\0"
	.align
_Label_290:
	.byte	'?'
	.ascii	"_temp_287\0"
	.align
_Label_291:
	.byte	'?'
	.ascii	"_temp_286\0"
	.align
_Label_292:
	.byte	'?'
	.ascii	"_temp_285\0"
	.align
_Label_293:
	.byte	'?'
	.ascii	"_temp_284\0"
	.align
_Label_294:
	.byte	'?'
	.ascii	"_temp_283\0"
	.align
_Label_295:
	.byte	'?'
	.ascii	"_temp_282\0"
	.align
_Label_296:
	.byte	'?'
	.ascii	"_temp_281\0"
	.align
_Label_297:
	.byte	'?'
	.ascii	"_temp_280\0"
	.align
_Label_298:
	.byte	'?'
	.ascii	"_temp_279\0"
	.align
_Label_299:
	.byte	'?'
	.ascii	"_temp_278\0"
	.align
_Label_300:
	.byte	'?'
	.ascii	"_temp_277\0"
	.align
_Label_301:
	.byte	'?'
	.ascii	"_temp_269\0"
	.align
_Label_302:
	.byte	'?'
	.ascii	"_temp_268\0"
	.align
_Label_303:
	.byte	'?'
	.ascii	"_temp_267\0"
	.align
_Label_304:
	.byte	'?'
	.ascii	"_temp_266\0"
	.align
_Label_305:
	.byte	'?'
	.ascii	"_temp_265\0"
	.align
_Label_306:
	.byte	'C'
	.ascii	"_temp_262\0"
	.align
_Label_307:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION PrintObjectAddr  ===============
! 
_function_124_PrintObjectAddr:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_124_PrintObjectAddr,r1
	push	r1
	mov	2,r1
_Label_1704:
	push	r0
	sub	r1,1,r1
	bne	_Label_1704
	mov	947,r13		! source line 947
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_308 = p		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_308  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	951,r13		! source line 951
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	952,r13		! source line 952
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	952,r13		! source line 952
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_124_PrintObjectAddr:
	.word	_sourceFileName
	.word	_Label_309
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_310
	.word	8
	.word	4
	.word	_Label_311
	.word	-12
	.word	4
	.word	0
_Label_309:
	.ascii	"PrintObjectAddr\0"
	.align
_Label_310:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_311:
	.byte	'?'
	.ascii	"_temp_308\0"
	.align
! 
! ===============  FUNCTION ProcessFinish  ===============
! 
_P_Kernel_ProcessFinish:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ProcessFinish,r1
	push	r1
	mov	2,r1
_Label_1705:
	push	r0
	sub	r1,1,r1
	bne	_Label_1705
	mov	957,r13		! source line 957
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_312 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_312  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	963,r13		! source line 963
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	963,r13		! source line 963
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ProcessFinish:
	.word	_sourceFileName
	.word	_Label_313
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_314
	.word	8
	.word	4
	.word	_Label_315
	.word	-12
	.word	4
	.word	0
_Label_313:
	.ascii	"ProcessFinish\0"
	.align
_Label_314:
	.byte	'I'
	.ascii	"exitStatus\0"
	.align
_Label_315:
	.byte	'?'
	.ascii	"_temp_312\0"
	.align
! 
! ===============  FUNCTION TimerInterruptHandler  ===============
! 
_P_Kernel_TimerInterruptHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_TimerInterruptHandler,r1
	push	r1
	mov	1,r1
_Label_1706:
	push	r0
	sub	r1,1,r1
	bne	_Label_1706
	mov	1441,r13		! source line 1441
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1451,r13		! source line 1451
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1453,r13		! source line 1453
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1454,r13		! source line 1454
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1454,r13		! source line 1454
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_TimerInterruptHandler:
	.word	_sourceFileName
	.word	_Label_316
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_316:
	.ascii	"TimerInterruptHandler\0"
	.align
! 
! ===============  FUNCTION DiskInterruptHandler  ===============
! 
_P_Kernel_DiskInterruptHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_DiskInterruptHandler,r1
	push	r1
	mov	2,r1
_Label_1707:
	push	r0
	sub	r1,1,r1
	bne	_Label_1707
	mov	1459,r13		! source line 1459
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_317 = _StringConst_24
	set	_StringConst_24,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_317  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1469,r13		! source line 1469
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	1469,r13		! source line 1469
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_DiskInterruptHandler:
	.word	_sourceFileName
	.word	_Label_318
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_319
	.word	-12
	.word	4
	.word	0
_Label_318:
	.ascii	"DiskInterruptHandler\0"
	.align
_Label_319:
	.byte	'?'
	.ascii	"_temp_317\0"
	.align
! 
! ===============  FUNCTION SerialInterruptHandler  ===============
! 
_P_Kernel_SerialInterruptHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_SerialInterruptHandler,r1
	push	r1
	mov	1481,r13		! source line 1481
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1490,r13		! source line 1490
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1490,r13		! source line 1490
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_SerialInterruptHandler:
	.word	_sourceFileName
	.word	_Label_320
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_320:
	.ascii	"SerialInterruptHandler\0"
	.align
! 
! ===============  FUNCTION IllegalInstructionHandler  ===============
! 
_P_Kernel_IllegalInstructionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_IllegalInstructionHandler,r1
	push	r1
	mov	2,r1
_Label_1708:
	push	r0
	sub	r1,1,r1
	bne	_Label_1708
	mov	1495,r13		! source line 1495
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1501,r13		! source line 1501
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_321 = _StringConst_25
	set	_StringConst_25,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_321  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1502,r13		! source line 1502
	mov	"\0\0CA",r10
	call	_function_123_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1502,r13		! source line 1502
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_IllegalInstructionHandler:
	.word	_sourceFileName
	.word	_Label_322
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_323
	.word	-12
	.word	4
	.word	0
_Label_322:
	.ascii	"IllegalInstructionHandler\0"
	.align
_Label_323:
	.byte	'?'
	.ascii	"_temp_321\0"
	.align
! 
! ===============  FUNCTION ArithmeticExceptionHandler  ===============
! 
_P_Kernel_ArithmeticExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ArithmeticExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_1709:
	push	r0
	sub	r1,1,r1
	bne	_Label_1709
	mov	1507,r13		! source line 1507
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1513,r13		! source line 1513
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_324 = _StringConst_26
	set	_StringConst_26,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_324  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1514,r13		! source line 1514
	mov	"\0\0CA",r10
	call	_function_123_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1514,r13		! source line 1514
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ArithmeticExceptionHandler:
	.word	_sourceFileName
	.word	_Label_325
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_326
	.word	-12
	.word	4
	.word	0
_Label_325:
	.ascii	"ArithmeticExceptionHandler\0"
	.align
_Label_326:
	.byte	'?'
	.ascii	"_temp_324\0"
	.align
! 
! ===============  FUNCTION AddressExceptionHandler  ===============
! 
_P_Kernel_AddressExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_AddressExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_1710:
	push	r0
	sub	r1,1,r1
	bne	_Label_1710
	mov	1519,r13		! source line 1519
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1525,r13		! source line 1525
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_327 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_327  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1526,r13		! source line 1526
	mov	"\0\0CA",r10
	call	_function_123_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1526,r13		! source line 1526
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_AddressExceptionHandler:
	.word	_sourceFileName
	.word	_Label_328
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_329
	.word	-12
	.word	4
	.word	0
_Label_328:
	.ascii	"AddressExceptionHandler\0"
	.align
_Label_329:
	.byte	'?'
	.ascii	"_temp_327\0"
	.align
! 
! ===============  FUNCTION PageInvalidExceptionHandler  ===============
! 
_P_Kernel_PageInvalidExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PageInvalidExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_1711:
	push	r0
	sub	r1,1,r1
	bne	_Label_1711
	mov	1531,r13		! source line 1531
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1537,r13		! source line 1537
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_330 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_330  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1538,r13		! source line 1538
	mov	"\0\0CA",r10
	call	_function_123_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1538,r13		! source line 1538
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PageInvalidExceptionHandler:
	.word	_sourceFileName
	.word	_Label_331
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_332
	.word	-12
	.word	4
	.word	0
_Label_331:
	.ascii	"PageInvalidExceptionHandler\0"
	.align
_Label_332:
	.byte	'?'
	.ascii	"_temp_330\0"
	.align
! 
! ===============  FUNCTION PageReadonlyExceptionHandler  ===============
! 
_P_Kernel_PageReadonlyExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PageReadonlyExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_1712:
	push	r0
	sub	r1,1,r1
	bne	_Label_1712
	mov	1543,r13		! source line 1543
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1549,r13		! source line 1549
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_333 = _StringConst_29
	set	_StringConst_29,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_333  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1550,r13		! source line 1550
	mov	"\0\0CA",r10
	call	_function_123_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1550,r13		! source line 1550
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PageReadonlyExceptionHandler:
	.word	_sourceFileName
	.word	_Label_334
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_335
	.word	-12
	.word	4
	.word	0
_Label_334:
	.ascii	"PageReadonlyExceptionHandler\0"
	.align
_Label_335:
	.byte	'?'
	.ascii	"_temp_333\0"
	.align
! 
! ===============  FUNCTION PrivilegedInstructionHandler  ===============
! 
_P_Kernel_PrivilegedInstructionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PrivilegedInstructionHandler,r1
	push	r1
	mov	2,r1
_Label_1713:
	push	r0
	sub	r1,1,r1
	bne	_Label_1713
	mov	1555,r13		! source line 1555
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1561,r13		! source line 1561
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_336 = _StringConst_30
	set	_StringConst_30,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_336  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1562,r13		! source line 1562
	mov	"\0\0CA",r10
	call	_function_123_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1562,r13		! source line 1562
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PrivilegedInstructionHandler:
	.word	_sourceFileName
	.word	_Label_337
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_338
	.word	-12
	.word	4
	.word	0
_Label_337:
	.ascii	"PrivilegedInstructionHandler\0"
	.align
_Label_338:
	.byte	'?'
	.ascii	"_temp_336\0"
	.align
! 
! ===============  FUNCTION AlignmentExceptionHandler  ===============
! 
_P_Kernel_AlignmentExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_AlignmentExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_1714:
	push	r0
	sub	r1,1,r1
	bne	_Label_1714
	mov	1567,r13		! source line 1567
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1573,r13		! source line 1573
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_339 = _StringConst_31
	set	_StringConst_31,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_339  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1574,r13		! source line 1574
	mov	"\0\0CA",r10
	call	_function_123_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1574,r13		! source line 1574
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_AlignmentExceptionHandler:
	.word	_sourceFileName
	.word	_Label_340
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_341
	.word	-12
	.word	4
	.word	0
_Label_340:
	.ascii	"AlignmentExceptionHandler\0"
	.align
_Label_341:
	.byte	'?'
	.ascii	"_temp_339\0"
	.align
! 
! ===============  FUNCTION ErrorInUserProcess  ===============
! 
_function_123_ErrorInUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_123_ErrorInUserProcess,r1
	push	r1
	mov	8,r1
_Label_1715:
	push	r0
	sub	r1,1,r1
	bne	_Label_1715
	mov	1579,r13		! source line 1579
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_342 = _StringConst_32
	set	_StringConst_32,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_342  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1584,r13		! source line 1584
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1585,r13		! source line 1585
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_343 = _StringConst_33
	set	_StringConst_33,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_343  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1586,r13		! source line 1586
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1589,r13		! source line 1589
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_347 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_346 = *_temp_347  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if _temp_346 == 0 then goto _Label_345		(int)
	load	[r14+-28],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_345
!	jmp	_Label_344
_Label_344:
! THEN...
	mov	1590,r13		! source line 1590
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1590,r13		! source line 1590
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_349 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-16]
!   Data Move: _temp_348 = *_temp_349  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_348) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
	jmp	_Label_350
_Label_345:
! ELSE...
	mov	1592,r13		! source line 1592
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_351 = _StringConst_34
	set	_StringConst_34,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_351  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1592,r13		! source line 1592
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_350:
! SEND STATEMENT...
	mov	1594,r13		! source line 1594
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+0]
!   Call the function
	mov	1600,r13		! source line 1600
	mov	"\0\0CA",r10
	call	_P_Kernel_ProcessFinish
! RETURN STATEMENT...
	mov	1600,r13		! source line 1600
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_123_ErrorInUserProcess:
	.word	_sourceFileName
	.word	_Label_352
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_353
	.word	8
	.word	4
	.word	_Label_354
	.word	-12
	.word	4
	.word	_Label_355
	.word	-16
	.word	4
	.word	_Label_356
	.word	-20
	.word	4
	.word	_Label_357
	.word	-24
	.word	4
	.word	_Label_358
	.word	-28
	.word	4
	.word	_Label_359
	.word	-32
	.word	4
	.word	_Label_360
	.word	-36
	.word	4
	.word	0
_Label_352:
	.ascii	"ErrorInUserProcess\0"
	.align
_Label_353:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_354:
	.byte	'?'
	.ascii	"_temp_351\0"
	.align
_Label_355:
	.byte	'?'
	.ascii	"_temp_349\0"
	.align
_Label_356:
	.byte	'?'
	.ascii	"_temp_348\0"
	.align
_Label_357:
	.byte	'?'
	.ascii	"_temp_347\0"
	.align
_Label_358:
	.byte	'?'
	.ascii	"_temp_346\0"
	.align
_Label_359:
	.byte	'?'
	.ascii	"_temp_343\0"
	.align
_Label_360:
	.byte	'?'
	.ascii	"_temp_342\0"
	.align
! 
! ===============  FUNCTION SyscallTrapHandler  ===============
! 
_P_Kernel_SyscallTrapHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_SyscallTrapHandler,r1
	push	r1
	mov	13,r1
_Label_1716:
	push	r0
	sub	r1,1,r1
	bne	_Label_1716
	mov	1605,r13		! source line 1605
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1612,r13		! source line 1612
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SWITCH STATEMENT (using an indirect jump table)...
	mov	1626,r13		! source line 1626
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
	load	[r14+8],r1
!   If syscallCodeNum is not within 16-bits goto default code
	srl	r1,15,r2
	cmp	r2,0
	be	_Label_1717
	set	0x1ffff,r3
	cmp	r2,r3
	bne	_Label_361
_Label_1717:
!   If syscallCodeNum is < 1 (==smallestCaseValue) goto default code
	cmp	r1,1
	bl	_Label_361
!   If syscallCodeNum is > 12 (==greatestCaseValue) goto default code
	cmp	r1,12
	bg	_Label_361
!   r1 = (r1-lowValue) * 4 + jumpTableAddr
	sub	r1,1,r1
	sll	r1,2,r1
	set	_Label_375,r2
	add	r1,r2,r1
!   Jump indirect through the jump table
	jmp	r1
!   Jump table
_Label_375:
	jmp	_Label_367	! 1:	
	jmp	_Label_374	! 2:	
	jmp	_Label_364	! 3:	
	jmp	_Label_363	! 4:	
	jmp	_Label_366	! 5:	
	jmp	_Label_365	! 6:	
	jmp	_Label_368	! 7:	
	jmp	_Label_369	! 8:	
	jmp	_Label_370	! 9:	
	jmp	_Label_371	! 10:	
	jmp	_Label_372	! 11:	
	jmp	_Label_373	! 12:	
! CASE 4...
_Label_363:
! RETURN STATEMENT...
	mov	1628,r13		! source line 1628
	mov	"\0\0RE",r10
!   Call the function
	mov	1628,r13		! source line 1628
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Fork
!   Retrieve Result: targetName=_temp_376  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
!   ReturnResult: _temp_376  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 3...
_Label_364:
! CALL STATEMENT...
!   Call the function
	mov	1630,r13		! source line 1630
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Yield
! RETURN STATEMENT...
	mov	1631,r13		! source line 1631
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 6...
_Label_365:
! RETURN STATEMENT...
	mov	1633,r13		! source line 1633
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1633,r13		! source line 1633
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exec
!   Retrieve Result: targetName=_temp_377  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
!   ReturnResult: _temp_377  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 5...
_Label_366:
! RETURN STATEMENT...
	mov	1635,r13		! source line 1635
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1635,r13		! source line 1635
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Join
!   Retrieve Result: targetName=_temp_378  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   ReturnResult: _temp_378  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 1...
_Label_367:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1637,r13		! source line 1637
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exit
! RETURN STATEMENT...
	mov	1638,r13		! source line 1638
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 7...
_Label_368:
! RETURN STATEMENT...
	mov	1640,r13		! source line 1640
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1640,r13		! source line 1640
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Create
!   Retrieve Result: targetName=_temp_379  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
!   ReturnResult: _temp_379  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 8...
_Label_369:
! RETURN STATEMENT...
	mov	1642,r13		! source line 1642
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1642,r13		! source line 1642
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Open
!   Retrieve Result: targetName=_temp_380  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
!   ReturnResult: _temp_380  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 9...
_Label_370:
! RETURN STATEMENT...
	mov	1644,r13		! source line 1644
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=arg3  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+8]
!   Call the function
	mov	1644,r13		! source line 1644
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Read
!   Retrieve Result: targetName=_temp_381  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_381  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 10...
_Label_371:
! RETURN STATEMENT...
	mov	1646,r13		! source line 1646
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=arg3  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+8]
!   Call the function
	mov	1646,r13		! source line 1646
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Write
!   Retrieve Result: targetName=_temp_382  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_382  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 11...
_Label_372:
! RETURN STATEMENT...
	mov	1648,r13		! source line 1648
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1648,r13		! source line 1648
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Seek
!   Retrieve Result: targetName=_temp_383  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   ReturnResult: _temp_383  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 12...
_Label_373:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1650,r13		! source line 1650
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Close
! RETURN STATEMENT...
	mov	1651,r13		! source line 1651
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_374:
! CALL STATEMENT...
!   Call the function
	mov	1653,r13		! source line 1653
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Shutdown
! RETURN STATEMENT...
	mov	1654,r13		! source line 1654
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! DEFAULT CASE...
_Label_361:
! CALL STATEMENT...
!   _temp_384 = _StringConst_35
	set	_StringConst_35,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_384  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1656,r13		! source line 1656
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=syscallCodeNum  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1657,r13		! source line 1657
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1658,r13		! source line 1658
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_385 = _StringConst_36
	set	_StringConst_36,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_385  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1659,r13		! source line 1659
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_362:
! RETURN STATEMENT...
	mov	1661,r13		! source line 1661
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_SyscallTrapHandler:
	.word	_sourceFileName
	.word	_Label_386
	.word	20		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_387
	.word	8
	.word	4
	.word	_Label_388
	.word	12
	.word	4
	.word	_Label_389
	.word	16
	.word	4
	.word	_Label_390
	.word	20
	.word	4
	.word	_Label_391
	.word	24
	.word	4
	.word	_Label_392
	.word	-12
	.word	4
	.word	_Label_393
	.word	-16
	.word	4
	.word	_Label_394
	.word	-20
	.word	4
	.word	_Label_395
	.word	-24
	.word	4
	.word	_Label_396
	.word	-28
	.word	4
	.word	_Label_397
	.word	-32
	.word	4
	.word	_Label_398
	.word	-36
	.word	4
	.word	_Label_399
	.word	-40
	.word	4
	.word	_Label_400
	.word	-44
	.word	4
	.word	_Label_401
	.word	-48
	.word	4
	.word	0
_Label_386:
	.ascii	"SyscallTrapHandler\0"
	.align
_Label_387:
	.byte	'I'
	.ascii	"syscallCodeNum\0"
	.align
_Label_388:
	.byte	'I'
	.ascii	"arg1\0"
	.align
_Label_389:
	.byte	'I'
	.ascii	"arg2\0"
	.align
_Label_390:
	.byte	'I'
	.ascii	"arg3\0"
	.align
_Label_391:
	.byte	'I'
	.ascii	"arg4\0"
	.align
_Label_392:
	.byte	'?'
	.ascii	"_temp_385\0"
	.align
_Label_393:
	.byte	'?'
	.ascii	"_temp_384\0"
	.align
_Label_394:
	.byte	'?'
	.ascii	"_temp_383\0"
	.align
_Label_395:
	.byte	'?'
	.ascii	"_temp_382\0"
	.align
_Label_396:
	.byte	'?'
	.ascii	"_temp_381\0"
	.align
_Label_397:
	.byte	'?'
	.ascii	"_temp_380\0"
	.align
_Label_398:
	.byte	'?'
	.ascii	"_temp_379\0"
	.align
_Label_399:
	.byte	'?'
	.ascii	"_temp_378\0"
	.align
_Label_400:
	.byte	'?'
	.ascii	"_temp_377\0"
	.align
_Label_401:
	.byte	'?'
	.ascii	"_temp_376\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Exit  ===============
! 
_P_Kernel_Handle_Sys_Exit:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Exit,r1
	push	r1
	mov	1666,r13		! source line 1666
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1666,r13		! source line 1666
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Exit:
	.word	_sourceFileName
	.word	_Label_402
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_403
	.word	8
	.word	4
	.word	0
_Label_402:
	.ascii	"Handle_Sys_Exit\0"
	.align
_Label_403:
	.byte	'I'
	.ascii	"returnStatus\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Shutdown  ===============
! 
_P_Kernel_Handle_Sys_Shutdown:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Shutdown,r1
	push	r1
	mov	1672,r13		! source line 1672
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1672,r13		! source line 1672
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Shutdown:
	.word	_sourceFileName
	.word	_Label_404
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_404:
	.ascii	"Handle_Sys_Shutdown\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Yield  ===============
! 
_P_Kernel_Handle_Sys_Yield:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Yield,r1
	push	r1
	mov	1678,r13		! source line 1678
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1678,r13		! source line 1678
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Yield:
	.word	_sourceFileName
	.word	_Label_405
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_405:
	.ascii	"Handle_Sys_Yield\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Fork  ===============
! 
_P_Kernel_Handle_Sys_Fork:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Fork,r1
	push	r1
	mov	1684,r13		! source line 1684
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1686,r13		! source line 1686
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Fork:
	.word	_sourceFileName
	.word	_Label_406
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_406:
	.ascii	"Handle_Sys_Fork\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Join  ===============
! 
_P_Kernel_Handle_Sys_Join:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Join,r1
	push	r1
	mov	1691,r13		! source line 1691
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1693,r13		! source line 1693
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Join:
	.word	_sourceFileName
	.word	_Label_407
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_408
	.word	8
	.word	4
	.word	0
_Label_407:
	.ascii	"Handle_Sys_Join\0"
	.align
_Label_408:
	.byte	'I'
	.ascii	"processID\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Exec  ===============
! 
_P_Kernel_Handle_Sys_Exec:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Exec,r1
	push	r1
	mov	1698,r13		! source line 1698
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1700,r13		! source line 1700
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Exec:
	.word	_sourceFileName
	.word	_Label_409
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_410
	.word	8
	.word	4
	.word	0
_Label_409:
	.ascii	"Handle_Sys_Exec\0"
	.align
_Label_410:
	.byte	'P'
	.ascii	"filename\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Create  ===============
! 
_P_Kernel_Handle_Sys_Create:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Create,r1
	push	r1
	mov	1705,r13		! source line 1705
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1707,r13		! source line 1707
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Create:
	.word	_sourceFileName
	.word	_Label_411
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_412
	.word	8
	.word	4
	.word	0
_Label_411:
	.ascii	"Handle_Sys_Create\0"
	.align
_Label_412:
	.byte	'P'
	.ascii	"filename\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Open  ===============
! 
_P_Kernel_Handle_Sys_Open:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Open,r1
	push	r1
	mov	1712,r13		! source line 1712
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1714,r13		! source line 1714
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Open:
	.word	_sourceFileName
	.word	_Label_413
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_414
	.word	8
	.word	4
	.word	0
_Label_413:
	.ascii	"Handle_Sys_Open\0"
	.align
_Label_414:
	.byte	'P'
	.ascii	"filename\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Read  ===============
! 
_P_Kernel_Handle_Sys_Read:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Read,r1
	push	r1
	mov	1719,r13		! source line 1719
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1721,r13		! source line 1721
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Read:
	.word	_sourceFileName
	.word	_Label_415
	.word	12		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_416
	.word	8
	.word	4
	.word	_Label_417
	.word	12
	.word	4
	.word	_Label_418
	.word	16
	.word	4
	.word	0
_Label_415:
	.ascii	"Handle_Sys_Read\0"
	.align
_Label_416:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_417:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_418:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Write  ===============
! 
_P_Kernel_Handle_Sys_Write:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Write,r1
	push	r1
	mov	1726,r13		! source line 1726
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1728,r13		! source line 1728
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Write:
	.word	_sourceFileName
	.word	_Label_419
	.word	12		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_420
	.word	8
	.word	4
	.word	_Label_421
	.word	12
	.word	4
	.word	_Label_422
	.word	16
	.word	4
	.word	0
_Label_419:
	.ascii	"Handle_Sys_Write\0"
	.align
_Label_420:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_421:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_422:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Seek  ===============
! 
_P_Kernel_Handle_Sys_Seek:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Seek,r1
	push	r1
	mov	1733,r13		! source line 1733
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1735,r13		! source line 1735
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Seek:
	.word	_sourceFileName
	.word	_Label_423
	.word	8		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_424
	.word	8
	.word	4
	.word	_Label_425
	.word	12
	.word	4
	.word	0
_Label_423:
	.ascii	"Handle_Sys_Seek\0"
	.align
_Label_424:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_425:
	.byte	'I'
	.ascii	"newCurrentPos\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Close  ===============
! 
_P_Kernel_Handle_Sys_Close:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Close,r1
	push	r1
	mov	1740,r13		! source line 1740
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1740,r13		! source line 1740
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Close:
	.word	_sourceFileName
	.word	_Label_426
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_427
	.word	8
	.word	4
	.word	0
_Label_426:
	.ascii	"Handle_Sys_Close\0"
	.align
_Label_427:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
! 
! ===============  CLASS Semaphore  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Semaphore:
	.word	_Label_428
	jmp	_Method_P_Kernel_Semaphore_1	! 4:	Init
	jmp	_Method_P_Kernel_Semaphore_3	! 8:	Down
	jmp	_Method_P_Kernel_Semaphore_2	! 12:	Up
	.word	0
! 
! Class descriptor:
! 
_Label_428:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_429
	.word	_sourceFileName
	.word	124		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Semaphore
	.word	_P_System_Object
	.word	0
_Label_429:
	.ascii	"Semaphore\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Semaphore_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Semaphore_1,r1
	push	r1
	mov	3,r1
_Label_1718:
	push	r0
	sub	r1,1,r1
	bne	_Label_1718
	mov	230,r13		! source line 230
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	231,r13		! source line 231
	mov	"\0\0IF",r10
!   if initialCount >= 0 then goto _Label_431		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_431
!	jmp	_Label_430
_Label_430:
! THEN...
	mov	232,r13		! source line 232
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_432 = _StringConst_37
	set	_StringConst_37,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_432  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	232,r13		! source line 232
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_431:
! ASSIGNMENT STATEMENT...
	mov	234,r13		! source line 234
	mov	"\0\0AS",r10
!   count = initialCount		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	235,r13		! source line 235
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,8,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! RETURN STATEMENT...
	mov	235,r13		! source line 235
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Semaphore_1:
	.word	_sourceFileName
	.word	_Label_434
	.word	8		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_435
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_436
	.word	12
	.word	4
	.word	_Label_437
	.word	-12
	.word	4
	.word	_Label_438
	.word	-16
	.word	4
	.word	0
_Label_434:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_435:
	.ascii	"Pself\0"
	.align
_Label_436:
	.byte	'I'
	.ascii	"initialCount\0"
	.align
_Label_437:
	.byte	'?'
	.ascii	"_temp_433\0"
	.align
_Label_438:
	.byte	'?'
	.ascii	"_temp_432\0"
	.align
! 
! ===============  METHOD Up  ===============
! 
_Method_P_Kernel_Semaphore_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Semaphore_2,r1
	push	r1
	mov	8,r1
_Label_1719:
	push	r0
	sub	r1,1,r1
	bne	_Label_1719
	mov	240,r13		! source line 240
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	244,r13		! source line 244
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	244,r13		! source line 244
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! IF STATEMENT...
	mov	245,r13		! source line 245
	mov	"\0\0IF",r10
!   if count != 2147483647 then goto _Label_440		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	2147483647,r2
	cmp	r1,r2
	bne	_Label_440
!	jmp	_Label_439
_Label_439:
! THEN...
	mov	246,r13		! source line 246
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_441 = _StringConst_38
	set	_StringConst_38,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_441  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	246,r13		! source line 246
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_440:
! ASSIGNMENT STATEMENT...
	mov	248,r13		! source line 248
	mov	"\0\0AS",r10
!   count = count + 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+4]
! IF STATEMENT...
	mov	249,r13		! source line 249
	mov	"\0\0IF",r10
!   if count > 0 then goto _Label_443		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_443
!	jmp	_Label_442
_Label_442:
! THEN...
	mov	250,r13		! source line 250
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	250,r13		! source line 250
	mov	"\0\0AS",r10
	mov	250,r13		! source line 250
	mov	"\0\0SE",r10
!   _temp_444 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Send message Remove
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! ASSIGNMENT STATEMENT...
	mov	251,r13		! source line 251
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_445 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_445 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	252,r13		! source line 252
	mov	"\0\0SE",r10
!   _temp_446 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_443:
! ASSIGNMENT STATEMENT...
	mov	254,r13		! source line 254
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	254,r13		! source line 254
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	254,r13		! source line 254
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Semaphore_2:
	.word	_sourceFileName
	.word	_Label_447
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_448
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_449
	.word	-12
	.word	4
	.word	_Label_450
	.word	-16
	.word	4
	.word	_Label_451
	.word	-20
	.word	4
	.word	_Label_452
	.word	-24
	.word	4
	.word	_Label_453
	.word	-28
	.word	4
	.word	_Label_454
	.word	-32
	.word	4
	.word	0
_Label_447:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Up\0"
	.align
_Label_448:
	.ascii	"Pself\0"
	.align
_Label_449:
	.byte	'?'
	.ascii	"_temp_446\0"
	.align
_Label_450:
	.byte	'?'
	.ascii	"_temp_445\0"
	.align
_Label_451:
	.byte	'?'
	.ascii	"_temp_444\0"
	.align
_Label_452:
	.byte	'?'
	.ascii	"_temp_441\0"
	.align
_Label_453:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_454:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD Down  ===============
! 
_Method_P_Kernel_Semaphore_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Semaphore_3,r1
	push	r1
	mov	5,r1
_Label_1720:
	push	r0
	sub	r1,1,r1
	bne	_Label_1720
	mov	259,r13		! source line 259
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	262,r13		! source line 262
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	262,r13		! source line 262
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! IF STATEMENT...
	mov	263,r13		! source line 263
	mov	"\0\0IF",r10
!   if count != -2147483648 then goto _Label_456		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	0x80000000,r2
	cmp	r1,r2
	bne	_Label_456
!	jmp	_Label_455
_Label_455:
! THEN...
	mov	264,r13		! source line 264
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_457 = _StringConst_39
	set	_StringConst_39,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_457  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	264,r13		! source line 264
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_456:
! ASSIGNMENT STATEMENT...
	mov	266,r13		! source line 266
	mov	"\0\0AS",r10
!   count = count - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+4]
! IF STATEMENT...
	mov	267,r13		! source line 267
	mov	"\0\0IF",r10
!   if count >= 0 then goto _Label_459		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_459
!	jmp	_Label_458
_Label_458:
! THEN...
	mov	268,r13		! source line 268
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	268,r13		! source line 268
	mov	"\0\0SE",r10
!   _temp_460 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	269,r13		! source line 269
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END IF...
_Label_459:
! ASSIGNMENT STATEMENT...
	mov	271,r13		! source line 271
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	271,r13		! source line 271
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! RETURN STATEMENT...
	mov	271,r13		! source line 271
	mov	"\0\0RE",r10
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Semaphore_3:
	.word	_sourceFileName
	.word	_Label_461
	.word	4		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_462
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_463
	.word	-12
	.word	4
	.word	_Label_464
	.word	-16
	.word	4
	.word	_Label_465
	.word	-20
	.word	4
	.word	0
_Label_461:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Down\0"
	.align
_Label_462:
	.ascii	"Pself\0"
	.align
_Label_463:
	.byte	'?'
	.ascii	"_temp_460\0"
	.align
_Label_464:
	.byte	'?'
	.ascii	"_temp_457\0"
	.align
_Label_465:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Mutex  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Mutex:
	.word	_Label_466
	jmp	_Method_P_Kernel_Mutex_1	! 4:	Init
	jmp	_Method_P_Kernel_Mutex_2	! 8:	Lock
	jmp	_Method_P_Kernel_Mutex_3	! 12:	Unlock
	jmp	_Method_P_Kernel_Mutex_4	! 16:	IsHeldByCurrentThread
	.word	0
! 
! Class descriptor:
! 
_Label_466:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_467
	.word	_sourceFileName
	.word	137		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Mutex
	.word	_P_System_Object
	.word	0
_Label_467:
	.ascii	"Mutex\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Mutex_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_1,r1
	push	r1
	mov	1,r1
_Label_1721:
	push	r0
	sub	r1,1,r1
	bne	_Label_1721
	mov	294,r13		! source line 294
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	295,r13		! source line 295
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,8,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! RETURN STATEMENT...
	mov	295,r13		! source line 295
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_1:
	.word	_sourceFileName
	.word	_Label_469
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_470
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_471
	.word	-12
	.word	4
	.word	0
_Label_469:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_470:
	.ascii	"Pself\0"
	.align
_Label_471:
	.byte	'?'
	.ascii	"_temp_468\0"
	.align
! 
! ===============  METHOD Lock  ===============
! 
_Method_P_Kernel_Mutex_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_2,r1
	push	r1
	mov	6,r1
_Label_1722:
	push	r0
	sub	r1,1,r1
	bne	_Label_1722
	mov	300,r13		! source line 300
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	303,r13		! source line 303
	mov	"\0\0IF",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_473		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_473
!	jmp	_Label_472
_Label_472:
! THEN...
	mov	304,r13		! source line 304
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_474 = _StringConst_40
	set	_StringConst_40,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_474  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	304,r13		! source line 304
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_473:
! ASSIGNMENT STATEMENT...
	mov	306,r13		! source line 306
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	306,r13		! source line 306
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! IF STATEMENT...
	mov	307,r13		! source line 307
	mov	"\0\0IF",r10
!   if heldBy == 0 then goto _Label_478		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_478
!   _temp_477 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_479
_Label_478:
!   _temp_477 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_479:
!   if _temp_477 then goto _Label_476 else goto _Label_475
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_475
	jmp	_Label_476
_Label_475:
! THEN...
	mov	308,r13		! source line 308
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	308,r13		! source line 308
	mov	"\0\0AS",r10
!   heldBy = _P_Kernel_currentThread		(4 bytes)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_480
_Label_476:
! ELSE...
	mov	310,r13		! source line 310
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	310,r13		! source line 310
	mov	"\0\0SE",r10
!   _temp_481 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	311,r13		! source line 311
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END IF...
_Label_480:
! ASSIGNMENT STATEMENT...
	mov	313,r13		! source line 313
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	313,r13		! source line 313
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	313,r13		! source line 313
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_2:
	.word	_sourceFileName
	.word	_Label_482
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_483
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_484
	.word	-16
	.word	4
	.word	_Label_485
	.word	-9
	.word	1
	.word	_Label_486
	.word	-20
	.word	4
	.word	_Label_487
	.word	-24
	.word	4
	.word	0
_Label_482:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_483:
	.ascii	"Pself\0"
	.align
_Label_484:
	.byte	'?'
	.ascii	"_temp_481\0"
	.align
_Label_485:
	.byte	'C'
	.ascii	"_temp_477\0"
	.align
_Label_486:
	.byte	'?'
	.ascii	"_temp_474\0"
	.align
_Label_487:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  METHOD Unlock  ===============
! 
_Method_P_Kernel_Mutex_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_3,r1
	push	r1
	mov	8,r1
_Label_1723:
	push	r0
	sub	r1,1,r1
	bne	_Label_1723
	mov	318,r13		! source line 318
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	322,r13		! source line 322
	mov	"\0\0IF",r10
!   if heldBy == _P_Kernel_currentThread then goto _Label_489		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_489
!	jmp	_Label_488
_Label_488:
! THEN...
	mov	323,r13		! source line 323
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_490 = _StringConst_41
	set	_StringConst_41,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_490  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	323,r13		! source line 323
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_489:
! ASSIGNMENT STATEMENT...
	mov	325,r13		! source line 325
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	325,r13		! source line 325
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! ASSIGNMENT STATEMENT...
	mov	326,r13		! source line 326
	mov	"\0\0AS",r10
	mov	326,r13		! source line 326
	mov	"\0\0SE",r10
!   _temp_491 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Send message Remove
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	327,r13		! source line 327
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_493		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_493
!	jmp	_Label_492
_Label_492:
! THEN...
	mov	328,r13		! source line 328
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	328,r13		! source line 328
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_494 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_494 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	329,r13		! source line 329
	mov	"\0\0SE",r10
!   _temp_495 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	330,r13		! source line 330
	mov	"\0\0AS",r10
!   heldBy = t		(4 bytes)
	load	[r14+-32],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_496
_Label_493:
! ELSE...
	mov	332,r13		! source line 332
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	332,r13		! source line 332
	mov	"\0\0AS",r10
!   heldBy = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! END IF...
_Label_496:
! ASSIGNMENT STATEMENT...
	mov	334,r13		! source line 334
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	334,r13		! source line 334
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	334,r13		! source line 334
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_3:
	.word	_sourceFileName
	.word	_Label_497
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_498
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_499
	.word	-12
	.word	4
	.word	_Label_500
	.word	-16
	.word	4
	.word	_Label_501
	.word	-20
	.word	4
	.word	_Label_502
	.word	-24
	.word	4
	.word	_Label_503
	.word	-28
	.word	4
	.word	_Label_504
	.word	-32
	.word	4
	.word	0
_Label_497:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_498:
	.ascii	"Pself\0"
	.align
_Label_499:
	.byte	'?'
	.ascii	"_temp_495\0"
	.align
_Label_500:
	.byte	'?'
	.ascii	"_temp_494\0"
	.align
_Label_501:
	.byte	'?'
	.ascii	"_temp_491\0"
	.align
_Label_502:
	.byte	'?'
	.ascii	"_temp_490\0"
	.align
_Label_503:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_504:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD IsHeldByCurrentThread  ===============
! 
_Method_P_Kernel_Mutex_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_4,r1
	push	r1
	mov	1,r1
_Label_1724:
	push	r0
	sub	r1,1,r1
	bne	_Label_1724
	mov	339,r13		! source line 339
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	340,r13		! source line 340
	mov	"\0\0RE",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_507		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_507
!	jmp	_Label_506
_Label_506:
!   _temp_505 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_508
_Label_507:
!   _temp_505 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_508:
!   ReturnResult: _temp_505  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_4:
	.word	_sourceFileName
	.word	_Label_509
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_510
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_511
	.word	-9
	.word	1
	.word	0
_Label_509:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_510:
	.ascii	"Pself\0"
	.align
_Label_511:
	.byte	'C'
	.ascii	"_temp_505\0"
	.align
! 
! ===============  CLASS Condition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Condition:
	.word	_Label_512
	jmp	_Method_P_Kernel_Condition_1	! 4:	Init
	jmp	_Method_P_Kernel_Condition_2	! 8:	Wait
	jmp	_Method_P_Kernel_Condition_3	! 12:	Signal
	jmp	_Method_P_Kernel_Condition_4	! 16:	Broadcast
	.word	0
! 
! Class descriptor:
! 
_Label_512:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_513
	.word	_sourceFileName
	.word	151		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Kernel_Condition
	.word	_P_System_Object
	.word	0
_Label_513:
	.ascii	"Condition\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Condition_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_1,r1
	push	r1
	mov	1,r1
_Label_1725:
	push	r0
	sub	r1,1,r1
	bne	_Label_1725
	mov	380,r13		! source line 380
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	381,r13		! source line 381
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! RETURN STATEMENT...
	mov	381,r13		! source line 381
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_1:
	.word	_sourceFileName
	.word	_Label_515
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_516
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_517
	.word	-12
	.word	4
	.word	0
_Label_515:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_516:
	.ascii	"Pself\0"
	.align
_Label_517:
	.byte	'?'
	.ascii	"_temp_514\0"
	.align
! 
! ===============  METHOD Wait  ===============
! 
_Method_P_Kernel_Condition_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_2,r1
	push	r1
	mov	6,r1
_Label_1726:
	push	r0
	sub	r1,1,r1
	bne	_Label_1726
	mov	386,r13		! source line 386
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	389,r13		! source line 389
	mov	"\0\0IF",r10
	mov	389,r13		! source line 389
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_520  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_520 then goto _Label_519 else goto _Label_518
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_518
	jmp	_Label_519
_Label_518:
! THEN...
	mov	390,r13		! source line 390
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_521 = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_521  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	390,r13		! source line 390
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_519:
! ASSIGNMENT STATEMENT...
	mov	392,r13		! source line 392
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	392,r13		! source line 392
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! SEND STATEMENT...
	mov	393,r13		! source line 393
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Unlock
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	394,r13		! source line 394
	mov	"\0\0SE",r10
!   _temp_522 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	395,r13		! source line 395
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! SEND STATEMENT...
	mov	396,r13		! source line 396
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Lock
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	397,r13		! source line 397
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	397,r13		! source line 397
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	397,r13		! source line 397
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_2:
	.word	_sourceFileName
	.word	_Label_523
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_524
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_525
	.word	12
	.word	4
	.word	_Label_526
	.word	-16
	.word	4
	.word	_Label_527
	.word	-20
	.word	4
	.word	_Label_528
	.word	-9
	.word	1
	.word	_Label_529
	.word	-24
	.word	4
	.word	0
_Label_523:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_524:
	.ascii	"Pself\0"
	.align
_Label_525:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_526:
	.byte	'?'
	.ascii	"_temp_522\0"
	.align
_Label_527:
	.byte	'?'
	.ascii	"_temp_521\0"
	.align
_Label_528:
	.byte	'C'
	.ascii	"_temp_520\0"
	.align
_Label_529:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  METHOD Signal  ===============
! 
_Method_P_Kernel_Condition_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_3,r1
	push	r1
	mov	9,r1
_Label_1727:
	push	r0
	sub	r1,1,r1
	bne	_Label_1727
	mov	402,r13		! source line 402
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	406,r13		! source line 406
	mov	"\0\0IF",r10
	mov	406,r13		! source line 406
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_532  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_532 then goto _Label_531 else goto _Label_530
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_530
	jmp	_Label_531
_Label_530:
! THEN...
	mov	407,r13		! source line 407
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_533 = _StringConst_43
	set	_StringConst_43,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_533  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	407,r13		! source line 407
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_531:
! ASSIGNMENT STATEMENT...
	mov	409,r13		! source line 409
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	409,r13		! source line 409
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! ASSIGNMENT STATEMENT...
	mov	410,r13		! source line 410
	mov	"\0\0AS",r10
	mov	410,r13		! source line 410
	mov	"\0\0SE",r10
!   _temp_534 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	411,r13		! source line 411
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_536		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_536
!	jmp	_Label_535
_Label_535:
! THEN...
	mov	412,r13		! source line 412
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	412,r13		! source line 412
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_537 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_537 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	413,r13		! source line 413
	mov	"\0\0SE",r10
!   _temp_538 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_536:
! ASSIGNMENT STATEMENT...
	mov	415,r13		! source line 415
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	415,r13		! source line 415
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	415,r13		! source line 415
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_3:
	.word	_sourceFileName
	.word	_Label_539
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_540
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_541
	.word	12
	.word	4
	.word	_Label_542
	.word	-16
	.word	4
	.word	_Label_543
	.word	-20
	.word	4
	.word	_Label_544
	.word	-24
	.word	4
	.word	_Label_545
	.word	-28
	.word	4
	.word	_Label_546
	.word	-9
	.word	1
	.word	_Label_547
	.word	-32
	.word	4
	.word	_Label_548
	.word	-36
	.word	4
	.word	0
_Label_539:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_540:
	.ascii	"Pself\0"
	.align
_Label_541:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_542:
	.byte	'?'
	.ascii	"_temp_538\0"
	.align
_Label_543:
	.byte	'?'
	.ascii	"_temp_537\0"
	.align
_Label_544:
	.byte	'?'
	.ascii	"_temp_534\0"
	.align
_Label_545:
	.byte	'?'
	.ascii	"_temp_533\0"
	.align
_Label_546:
	.byte	'C'
	.ascii	"_temp_532\0"
	.align
_Label_547:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_548:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD Broadcast  ===============
! 
_Method_P_Kernel_Condition_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_4,r1
	push	r1
	mov	9,r1
_Label_1728:
	push	r0
	sub	r1,1,r1
	bne	_Label_1728
	mov	420,r13		! source line 420
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	424,r13		! source line 424
	mov	"\0\0IF",r10
	mov	424,r13		! source line 424
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_551  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_551 then goto _Label_550 else goto _Label_549
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_549
	jmp	_Label_550
_Label_549:
! THEN...
	mov	425,r13		! source line 425
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_552 = _StringConst_44
	set	_StringConst_44,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_552  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	425,r13		! source line 425
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_550:
! ASSIGNMENT STATEMENT...
	mov	427,r13		! source line 427
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	427,r13		! source line 427
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! WHILE STATEMENT...
	mov	428,r13		! source line 428
	mov	"\0\0WH",r10
_Label_553:
!	jmp	_Label_554
_Label_554:
	mov	428,r13		! source line 428
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	429,r13		! source line 429
	mov	"\0\0AS",r10
	mov	429,r13		! source line 429
	mov	"\0\0SE",r10
!   _temp_556 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	430,r13		! source line 430
	mov	"\0\0IF",r10
!   if intIsZero (t) then goto _Label_557
	load	[r14+-36],r1
	cmp	r1,r0
	be	_Label_557
	jmp	_Label_558
_Label_557:
! THEN...
	mov	431,r13		! source line 431
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	431,r13		! source line 431
	mov	"\0\0BR",r10
	jmp	_Label_555
! END IF...
_Label_558:
! ASSIGNMENT STATEMENT...
	mov	433,r13		! source line 433
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_559 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_559 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	434,r13		! source line 434
	mov	"\0\0SE",r10
!   _temp_560 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_553
_Label_555:
! ASSIGNMENT STATEMENT...
	mov	436,r13		! source line 436
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	436,r13		! source line 436
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	436,r13		! source line 436
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_4:
	.word	_sourceFileName
	.word	_Label_561
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_562
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_563
	.word	12
	.word	4
	.word	_Label_564
	.word	-16
	.word	4
	.word	_Label_565
	.word	-20
	.word	4
	.word	_Label_566
	.word	-24
	.word	4
	.word	_Label_567
	.word	-28
	.word	4
	.word	_Label_568
	.word	-9
	.word	1
	.word	_Label_569
	.word	-32
	.word	4
	.word	_Label_570
	.word	-36
	.word	4
	.word	0
_Label_561:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Broadcast\0"
	.align
_Label_562:
	.ascii	"Pself\0"
	.align
_Label_563:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_564:
	.byte	'?'
	.ascii	"_temp_560\0"
	.align
_Label_565:
	.byte	'?'
	.ascii	"_temp_559\0"
	.align
_Label_566:
	.byte	'?'
	.ascii	"_temp_556\0"
	.align
_Label_567:
	.byte	'?'
	.ascii	"_temp_552\0"
	.align
_Label_568:
	.byte	'C'
	.ascii	"_temp_551\0"
	.align
_Label_569:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_570:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  CLASS Thread  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Thread:
	.word	_Label_571
	jmp	_Method_P_Kernel_Thread_1	! 4:	Init
	jmp	_Method_P_Kernel_Thread_2	! 8:	Fork
	jmp	_Method_P_Kernel_Thread_3	! 12:	Yield
	jmp	_Method_P_Kernel_Thread_4	! 16:	Sleep
	jmp	_Method_P_Kernel_Thread_5	! 20:	CheckOverflow
	jmp	_Method_P_Kernel_Thread_6	! 24:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_571:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_572
	.word	_sourceFileName
	.word	164		! line number
	.word	4164		! size of instances, in bytes
	.word	_P_Kernel_Thread
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_572:
	.ascii	"Thread\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Thread_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_1,r1
	push	r1
	mov	45,r1
_Label_1729:
	push	r0
	sub	r1,1,r1
	bne	_Label_1729
	mov	447,r13		! source line 447
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	452,r13		! source line 452
	mov	"\0\0AS",r10
!   name = n		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+72]
! ASSIGNMENT STATEMENT...
	mov	453,r13		! source line 453
	mov	"\0\0AS",r10
!   status = 1		(4 bytes)
	mov	1,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	455,r13		! source line 455
	mov	"\0\0AS",r10
!   _temp_573 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_573) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_573 = 1000  (sizeInBytes=4)
	mov	1000,r1
	load	[r14+-188],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	456,r13		! source line 456
	mov	"\0\0AS",r10
!   _temp_574 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-184]
!   Move address of _temp_574 [0 ] into _temp_575
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-184],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-180]
!   Data Move: *_temp_575 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-180],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	457,r13		! source line 457
	mov	"\0\0AS",r10
!   _temp_576 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-176]
!   Move address of _temp_576 [999 ] into _temp_577
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-176],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-172]
!   Data Move: *_temp_577 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-172],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	458,r13		! source line 458
	mov	"\0\0AS",r10
!   _temp_578 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-168]
!   Move address of _temp_578 [999 ] into _temp_579
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-168],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-164]
!   stackTop = _temp_579		(4 bytes)
	load	[r14+-164],r1
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	459,r13		! source line 459
	mov	"\0\0AS",r10
!   _temp_580 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-160]
!   NEW ARRAY Constructor...
!   _temp_582 = &_temp_581
	add	r14,-156,r1
	store	r1,[r14+-100]
!   _temp_582 = _temp_582 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Next value...
	mov	13,r1
	store	r1,[r14+-96]
_Label_584:
!   Data Move: *_temp_582 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-100],r2
	store	r1,[r2]
!   _temp_582 = _temp_582 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   _temp_583 = _temp_583 + -1
	load	[r14+-96],r1
	add	r1,-1,r1
	store	r1,[r14+-96]
!   if intNotZero (_temp_583) then goto _Label_584
	load	[r14+-96],r1
	cmp	r1,r0
	bne	_Label_584
!   Initialize the array size...
	mov	13,r1
	store	r1,[r14+-156]
!   _temp_585 = &_temp_581
	add	r14,-156,r1
	store	r1,[r14+-92]
!   make sure array has size 13
	load	[r14+-160],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,0
	be	_Label_1730
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_1730:
!   make sure array has size 13
	load	[r14+-92],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_580 = *_temp_585  (sizeInBytes=56)
	load	[r14+-92],r5
	load	[r14+-160],r4
	mov	14,r3
_Label_1731:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1731
! ASSIGNMENT STATEMENT...
	mov	460,r13		! source line 460
	mov	"\0\0AS",r10
!   isUserThread = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+4092]
! ASSIGNMENT STATEMENT...
	mov	461,r13		! source line 461
	mov	"\0\0AS",r10
!   _temp_586 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-88]
!   NEW ARRAY Constructor...
!   _temp_588 = &_temp_587
	add	r14,-84,r1
	store	r1,[r14+-20]
!   _temp_588 = _temp_588 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	15,r1
	store	r1,[r14+-16]
_Label_590:
!   Data Move: *_temp_588 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_588 = _temp_588 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_589 = _temp_589 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_589) then goto _Label_590
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_590
!   Initialize the array size...
	mov	15,r1
	store	r1,[r14+-84]
!   _temp_591 = &_temp_587
	add	r14,-84,r1
	store	r1,[r14+-12]
!   make sure array has size 15
	load	[r14+-88],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,0
	be	_Label_1732
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_1732:
!   make sure array has size 15
	load	[r14+-12],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_586 = *_temp_591  (sizeInBytes=64)
	load	[r14+-12],r5
	load	[r14+-88],r4
	mov	16,r3
_Label_1733:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1733
! RETURN STATEMENT...
	mov	461,r13		! source line 461
	mov	"\0\0RE",r10
	add	r15,184,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_1:
	.word	_sourceFileName
	.word	_Label_592
	.word	8		! total size of parameters
	.word	180		! frame size = 180
	.word	_Label_593
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_594
	.word	12
	.word	4
	.word	_Label_595
	.word	-12
	.word	4
	.word	_Label_596
	.word	-16
	.word	4
	.word	_Label_597
	.word	-20
	.word	4
	.word	_Label_598
	.word	-84
	.word	64
	.word	_Label_599
	.word	-88
	.word	4
	.word	_Label_600
	.word	-92
	.word	4
	.word	_Label_601
	.word	-96
	.word	4
	.word	_Label_602
	.word	-100
	.word	4
	.word	_Label_603
	.word	-156
	.word	56
	.word	_Label_604
	.word	-160
	.word	4
	.word	_Label_605
	.word	-164
	.word	4
	.word	_Label_606
	.word	-168
	.word	4
	.word	_Label_607
	.word	-172
	.word	4
	.word	_Label_608
	.word	-176
	.word	4
	.word	_Label_609
	.word	-180
	.word	4
	.word	_Label_610
	.word	-184
	.word	4
	.word	_Label_611
	.word	-188
	.word	4
	.word	0
_Label_592:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_593:
	.ascii	"Pself\0"
	.align
_Label_594:
	.byte	'P'
	.ascii	"n\0"
	.align
_Label_595:
	.byte	'?'
	.ascii	"_temp_591\0"
	.align
_Label_596:
	.byte	'?'
	.ascii	"_temp_589\0"
	.align
_Label_597:
	.byte	'?'
	.ascii	"_temp_588\0"
	.align
_Label_598:
	.byte	'?'
	.ascii	"_temp_587\0"
	.align
_Label_599:
	.byte	'?'
	.ascii	"_temp_586\0"
	.align
_Label_600:
	.byte	'?'
	.ascii	"_temp_585\0"
	.align
_Label_601:
	.byte	'?'
	.ascii	"_temp_583\0"
	.align
_Label_602:
	.byte	'?'
	.ascii	"_temp_582\0"
	.align
_Label_603:
	.byte	'?'
	.ascii	"_temp_581\0"
	.align
_Label_604:
	.byte	'?'
	.ascii	"_temp_580\0"
	.align
_Label_605:
	.byte	'?'
	.ascii	"_temp_579\0"
	.align
_Label_606:
	.byte	'?'
	.ascii	"_temp_578\0"
	.align
_Label_607:
	.byte	'?'
	.ascii	"_temp_577\0"
	.align
_Label_608:
	.byte	'?'
	.ascii	"_temp_576\0"
	.align
_Label_609:
	.byte	'?'
	.ascii	"_temp_575\0"
	.align
_Label_610:
	.byte	'?'
	.ascii	"_temp_574\0"
	.align
_Label_611:
	.byte	'?'
	.ascii	"_temp_573\0"
	.align
! 
! ===============  METHOD Fork  ===============
! 
_Method_P_Kernel_Thread_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_2,r1
	push	r1
	mov	7,r1
_Label_1734:
	push	r0
	sub	r1,1,r1
	bne	_Label_1734
	mov	466,r13		! source line 466
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	477,r13		! source line 477
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	477,r13		! source line 477
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! ASSIGNMENT STATEMENT...
	mov	479,r13		! source line 479
	mov	"\0\0AS",r10
!   initialFunction = fun		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+80]
! ASSIGNMENT STATEMENT...
	mov	480,r13		! source line 480
	mov	"\0\0AS",r10
!   initialArgument = arg		(4 bytes)
	load	[r14+16],r1
	load	[r14+8],r2
	store	r1,[r2+84]
! ASSIGNMENT STATEMENT...
	mov	481,r13		! source line 481
	mov	"\0\0AS",r10
!   stackTop = stackTop - 4		(int)
	load	[r14+8],r1
	load	[r1+68],r1
	mov	4,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	482,r13		! source line 482
	mov	"\0\0AS",r10
!   if intIsZero (stackTop) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_612 = ThreadStartUp
	set	ThreadStartUp,r1
	store	r1,[r14+-20]
!   Data Move: *stackTop = _temp_612  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r14+8],r2
	load	[r2+68],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	483,r13		! source line 483
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! SEND STATEMENT...
	mov	484,r13		! source line 484
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_614 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_613  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	485,r13		! source line 485
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	485,r13		! source line 485
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	485,r13		! source line 485
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_2:
	.word	_sourceFileName
	.word	_Label_615
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_616
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_617
	.word	12
	.word	4
	.word	_Label_618
	.word	16
	.word	4
	.word	_Label_619
	.word	-12
	.word	4
	.word	_Label_620
	.word	-16
	.word	4
	.word	_Label_621
	.word	-20
	.word	4
	.word	_Label_622
	.word	-24
	.word	4
	.word	_Label_623
	.word	-28
	.word	4
	.word	0
_Label_615:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Fork\0"
	.align
_Label_616:
	.ascii	"Pself\0"
	.align
_Label_617:
	.byte	'P'
	.ascii	"fun\0"
	.align
_Label_618:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_619:
	.byte	'?'
	.ascii	"_temp_614\0"
	.align
_Label_620:
	.byte	'?'
	.ascii	"_temp_613\0"
	.align
_Label_621:
	.byte	'?'
	.ascii	"_temp_612\0"
	.align
_Label_622:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_623:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  METHOD Yield  ===============
! 
_Method_P_Kernel_Thread_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_3,r1
	push	r1
	mov	11,r1
_Label_1735:
	push	r0
	sub	r1,1,r1
	bne	_Label_1735
	mov	490,r13		! source line 490
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	506,r13		! source line 506
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if _temp_626 == _P_Kernel_currentThread then goto _Label_625		(int)
	load	[r14+-32],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_625
!	jmp	_Label_624
_Label_624:
! THEN...
	mov	507,r13		! source line 507
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_627 = _StringConst_45
	set	_StringConst_45,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_627  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	507,r13		! source line 507
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_625:
! ASSIGNMENT STATEMENT...
	mov	509,r13		! source line 509
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	509,r13		! source line 509
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	513,r13		! source line 513
	mov	"\0\0AS",r10
	mov	513,r13		! source line 513
	mov	"\0\0SE",r10
!   _temp_628 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=nextTh  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	514,r13		! source line 514
	mov	"\0\0IF",r10
!   if nextTh == 0 then goto _Label_630		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_630
!	jmp	_Label_629
_Label_629:
! THEN...
	mov	518,r13		! source line 518
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	518,r13		! source line 518
	mov	"\0\0IF",r10
!   if status != 4 then goto _Label_632		(int)
	load	[r14+8],r1
	load	[r1+76],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_632
!	jmp	_Label_631
_Label_631:
! THEN...
	mov	519,r13		! source line 519
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_633 = _StringConst_46
	set	_StringConst_46,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_633  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	519,r13		! source line 519
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_632:
! ASSIGNMENT STATEMENT...
	mov	521,r13		! source line 521
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! SEND STATEMENT...
	mov	522,r13		! source line 522
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_635 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_634  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=nextTh  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	523,r13		! source line 523
	mov	"\0\0CA",r10
	call	_P_Kernel_Run
! END IF...
_Label_630:
! ASSIGNMENT STATEMENT...
	mov	525,r13		! source line 525
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	525,r13		! source line 525
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
! RETURN STATEMENT...
	mov	525,r13		! source line 525
	mov	"\0\0RE",r10
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_3:
	.word	_sourceFileName
	.word	_Label_636
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_637
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_638
	.word	-12
	.word	4
	.word	_Label_639
	.word	-16
	.word	4
	.word	_Label_640
	.word	-20
	.word	4
	.word	_Label_641
	.word	-24
	.word	4
	.word	_Label_642
	.word	-28
	.word	4
	.word	_Label_643
	.word	-32
	.word	4
	.word	_Label_644
	.word	-36
	.word	4
	.word	_Label_645
	.word	-40
	.word	4
	.word	_Label_646
	.word	-44
	.word	4
	.word	0
_Label_636:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Yield\0"
	.align
_Label_637:
	.ascii	"Pself\0"
	.align
_Label_638:
	.byte	'?'
	.ascii	"_temp_635\0"
	.align
_Label_639:
	.byte	'?'
	.ascii	"_temp_634\0"
	.align
_Label_640:
	.byte	'?'
	.ascii	"_temp_633\0"
	.align
_Label_641:
	.byte	'?'
	.ascii	"_temp_628\0"
	.align
_Label_642:
	.byte	'?'
	.ascii	"_temp_627\0"
	.align
_Label_643:
	.byte	'?'
	.ascii	"_temp_626\0"
	.align
_Label_644:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
_Label_645:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_646:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  METHOD Sleep  ===============
! 
_Method_P_Kernel_Thread_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_4,r1
	push	r1
	mov	7,r1
_Label_1736:
	push	r0
	sub	r1,1,r1
	bne	_Label_1736
	mov	530,r13		! source line 530
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	542,r13		! source line 542
	mov	"\0\0IF",r10
!   if _P_Kernel_currentInterruptStatus == 2 then goto _Label_648		(int)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_648
!	jmp	_Label_647
_Label_647:
! THEN...
	mov	543,r13		! source line 543
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_649 = _StringConst_47
	set	_StringConst_47,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_649  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	543,r13		! source line 543
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_648:
! IF STATEMENT...
	mov	546,r13		! source line 546
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if _temp_652 == _P_Kernel_currentThread then goto _Label_651		(int)
	load	[r14+-24],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_651
!	jmp	_Label_650
_Label_650:
! THEN...
	mov	547,r13		! source line 547
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_653 = _StringConst_48
	set	_StringConst_48,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_653  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	547,r13		! source line 547
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_651:
! ASSIGNMENT STATEMENT...
	mov	552,r13		! source line 552
	mov	"\0\0AS",r10
!   status = 4		(4 bytes)
	mov	4,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	553,r13		! source line 553
	mov	"\0\0AS",r10
	mov	553,r13		! source line 553
	mov	"\0\0SE",r10
!   _temp_654 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-16]
!   Send message Remove
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=nextTh  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	554,r13		! source line 554
	mov	"\0\0IF",r10
!   if intIsZero (nextTh) then goto _Label_655
	load	[r14+-32],r1
	cmp	r1,r0
	be	_Label_655
	jmp	_Label_656
_Label_655:
! THEN...
	mov	555,r13		! source line 555
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_657 = _StringConst_49
	set	_StringConst_49,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_657  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	555,r13		! source line 555
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_656:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=nextTh  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	557,r13		! source line 557
	mov	"\0\0CA",r10
	call	_P_Kernel_Run
! RETURN STATEMENT...
	mov	557,r13		! source line 557
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_4:
	.word	_sourceFileName
	.word	_Label_658
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_659
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_660
	.word	-12
	.word	4
	.word	_Label_661
	.word	-16
	.word	4
	.word	_Label_662
	.word	-20
	.word	4
	.word	_Label_663
	.word	-24
	.word	4
	.word	_Label_664
	.word	-28
	.word	4
	.word	_Label_665
	.word	-32
	.word	4
	.word	0
_Label_658:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Sleep\0"
	.align
_Label_659:
	.ascii	"Pself\0"
	.align
_Label_660:
	.byte	'?'
	.ascii	"_temp_657\0"
	.align
_Label_661:
	.byte	'?'
	.ascii	"_temp_654\0"
	.align
_Label_662:
	.byte	'?'
	.ascii	"_temp_653\0"
	.align
_Label_663:
	.byte	'?'
	.ascii	"_temp_652\0"
	.align
_Label_664:
	.byte	'?'
	.ascii	"_temp_649\0"
	.align
_Label_665:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
! 
! ===============  METHOD CheckOverflow  ===============
! 
_Method_P_Kernel_Thread_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_5,r1
	push	r1
	mov	9,r1
_Label_1737:
	push	r0
	sub	r1,1,r1
	bne	_Label_1737
	mov	562,r13		! source line 562
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	568,r13		! source line 568
	mov	"\0\0IF",r10
!   _temp_669 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-36]
!   Move address of _temp_669 [0 ] into _temp_670
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   Data Move: _temp_668 = *_temp_670  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if _temp_668 == 606348324 then goto _Label_667		(int)
	load	[r14+-40],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_667
!	jmp	_Label_666
_Label_666:
! THEN...
	mov	569,r13		! source line 569
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_671 = _StringConst_50
	set	_StringConst_50,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_671  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	569,r13		! source line 569
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
	jmp	_Label_672
_Label_667:
! ELSE...
	mov	570,r13		! source line 570
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	570,r13		! source line 570
	mov	"\0\0IF",r10
!   _temp_676 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_676 [999 ] into _temp_677
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_675 = *_temp_677  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_675 == 606348324 then goto _Label_674		(int)
	load	[r14+-24],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_674
!	jmp	_Label_673
_Label_673:
! THEN...
	mov	571,r13		! source line 571
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_678 = _StringConst_51
	set	_StringConst_51,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_678  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	571,r13		! source line 571
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_674:
! END IF...
_Label_672:
! RETURN STATEMENT...
	mov	568,r13		! source line 568
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_5:
	.word	_sourceFileName
	.word	_Label_679
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_680
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_681
	.word	-12
	.word	4
	.word	_Label_682
	.word	-16
	.word	4
	.word	_Label_683
	.word	-20
	.word	4
	.word	_Label_684
	.word	-24
	.word	4
	.word	_Label_685
	.word	-28
	.word	4
	.word	_Label_686
	.word	-32
	.word	4
	.word	_Label_687
	.word	-36
	.word	4
	.word	_Label_688
	.word	-40
	.word	4
	.word	0
_Label_679:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"CheckOverflow\0"
	.align
_Label_680:
	.ascii	"Pself\0"
	.align
_Label_681:
	.byte	'?'
	.ascii	"_temp_678\0"
	.align
_Label_682:
	.byte	'?'
	.ascii	"_temp_677\0"
	.align
_Label_683:
	.byte	'?'
	.ascii	"_temp_676\0"
	.align
_Label_684:
	.byte	'?'
	.ascii	"_temp_675\0"
	.align
_Label_685:
	.byte	'?'
	.ascii	"_temp_671\0"
	.align
_Label_686:
	.byte	'?'
	.ascii	"_temp_670\0"
	.align
_Label_687:
	.byte	'?'
	.ascii	"_temp_669\0"
	.align
_Label_688:
	.byte	'?'
	.ascii	"_temp_668\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_Thread_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_6,r1
	push	r1
	mov	49,r1
_Label_1738:
	push	r0
	sub	r1,1,r1
	bne	_Label_1738
	mov	577,r13		! source line 577
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	583,r13		! source line 583
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	583,r13		! source line 583
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-196]
! CALL STATEMENT...
!   _temp_689 = _StringConst_52
	set	_StringConst_52,r1
	store	r1,[r14+-188]
!   Prepare Argument: offset=8  value=_temp_689  sizeInBytes=4
	load	[r14+-188],r1
	store	r1,[r15+0]
!   Call the function
	mov	584,r13		! source line 584
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=name  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+72],r1
	store	r1,[r15+0]
!   Call the function
	mov	585,r13		! source line 585
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_690 = _StringConst_53
	set	_StringConst_53,r1
	store	r1,[r14+-184]
!   Prepare Argument: offset=8  value=_temp_690  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Call the function
	mov	586,r13		! source line 586
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_691  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Call the function
	mov	587,r13		! source line 587
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_692 = _StringConst_54
	set	_StringConst_54,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=8  value=_temp_692  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Call the function
	mov	588,r13		! source line 588
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_693 = _StringConst_55
	set	_StringConst_55,r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=8  value=_temp_693  sizeInBytes=4
	load	[r14+-172],r1
	store	r1,[r15+0]
!   Call the function
	mov	589,r13		! source line 589
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	590,r13		! source line 590
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_698 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-168]
!   Calculate and save the FOR-LOOP ending value
!   _temp_699 = 12		(4 bytes)
	mov	12,r1
	store	r1,[r14+-164]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_698  (sizeInBytes=4)
	load	[r14+-168],r1
	store	r1,[r14+-192]
_Label_694:
!   Perform the FOR-LOOP termination test
!   if i > _temp_699 then goto _Label_697		
	load	[r14+-192],r1
	load	[r14+-164],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_697
_Label_695:
	mov	590,r13		! source line 590
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_700 = _StringConst_56
	set	_StringConst_56,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_700  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	591,r13		! source line 591
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_701 = i + 2		(int)
	load	[r14+-192],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_701  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	592,r13		! source line 592
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_702 = _StringConst_57
	set	_StringConst_57,r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=8  value=_temp_702  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Call the function
	mov	593,r13		! source line 593
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_704 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-144]
!   Move address of _temp_704 [i ] into _temp_705
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-144],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-140]
!   Data Move: _temp_703 = *_temp_705  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_703  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	594,r13		! source line 594
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_706 = _StringConst_58
	set	_StringConst_58,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_706  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	595,r13		! source line 595
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_708 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-128]
!   Move address of _temp_708 [i ] into _temp_709
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-128],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-124]
!   Data Move: _temp_707 = *_temp_709  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_707  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	596,r13		! source line 596
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_710 = _StringConst_59
	set	_StringConst_59,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_710  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	597,r13		! source line 597
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_696:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_694
! END FOR
_Label_697:
! CALL STATEMENT...
!   _temp_711 = _StringConst_60
	set	_StringConst_60,r1
	store	r1,[r14+-116]
!   _temp_712 = stackTop		(4 bytes)
	load	[r14+8],r1
	load	[r1+68],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_711  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_712  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Call the function
	mov	599,r13		! source line 599
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_713 = _StringConst_61
	set	_StringConst_61,r1
	store	r1,[r14+-108]
!   _temp_715 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-100]
!   Move address of _temp_715 [0 ] into _temp_716
!     make sure index expr is >= 0
	mov	0,r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-96]
!   _temp_714 = _temp_716		(4 bytes)
	load	[r14+-96],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_713  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_714  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+4]
!   Call the function
	mov	600,r13		! source line 600
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! SWITCH STATEMENT (using series of tests)...
	mov	601,r13		! source line 601
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   Branch to the right case label
	load	[r14+8],r1
	load	[r1+76],r1
	cmp	r1,1
	be	_Label_719
	cmp	r1,2
	be	_Label_720
	cmp	r1,3
	be	_Label_721
	cmp	r1,4
	be	_Label_722
	cmp	r1,5
	be	_Label_723
	jmp	_Label_717
! CASE 1...
_Label_719:
! CALL STATEMENT...
!   _temp_724 = _StringConst_62
	set	_StringConst_62,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_724  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	603,r13		! source line 603
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	604,r13		! source line 604
	mov	"\0\0BR",r10
	jmp	_Label_718
! CASE 2...
_Label_720:
! CALL STATEMENT...
!   _temp_725 = _StringConst_63
	set	_StringConst_63,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_725  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	606,r13		! source line 606
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	607,r13		! source line 607
	mov	"\0\0BR",r10
	jmp	_Label_718
! CASE 3...
_Label_721:
! CALL STATEMENT...
!   _temp_726 = _StringConst_64
	set	_StringConst_64,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_726  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	609,r13		! source line 609
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	610,r13		! source line 610
	mov	"\0\0BR",r10
	jmp	_Label_718
! CASE 4...
_Label_722:
! CALL STATEMENT...
!   _temp_727 = _StringConst_65
	set	_StringConst_65,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_727  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	612,r13		! source line 612
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	613,r13		! source line 613
	mov	"\0\0BR",r10
	jmp	_Label_718
! CASE 5...
_Label_723:
! CALL STATEMENT...
!   _temp_728 = _StringConst_66
	set	_StringConst_66,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_728  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	615,r13		! source line 615
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	616,r13		! source line 616
	mov	"\0\0BR",r10
	jmp	_Label_718
! DEFAULT CASE...
_Label_717:
! CALL STATEMENT...
!   _temp_729 = _StringConst_67
	set	_StringConst_67,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_729  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	618,r13		! source line 618
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_718:
! CALL STATEMENT...
!   _temp_730 = _StringConst_68
	set	_StringConst_68,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_730  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	620,r13		! source line 620
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=isUserThread  sizeInBytes=1
	load	[r14+8],r1
	loadb	[r1+4092],r1
	storeb	r1,[r15+0]
!   Call the function
	mov	621,r13		! source line 621
	mov	"\0\0CE",r10
	call	printBool
! CALL STATEMENT...
!   Call the function
	mov	622,r13		! source line 622
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_731 = _StringConst_69
	set	_StringConst_69,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_731  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	623,r13		! source line 623
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	624,r13		! source line 624
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_736 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_737 = 14		(4 bytes)
	mov	14,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_736  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+-192]
_Label_732:
!   Perform the FOR-LOOP termination test
!   if i > _temp_737 then goto _Label_735		
	load	[r14+-192],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_735
_Label_733:
	mov	624,r13		! source line 624
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_738 = _StringConst_70
	set	_StringConst_70,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_738  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	625,r13		! source line 625
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_739 = i + 1		(int)
	load	[r14+-192],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_739  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	626,r13		! source line 626
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_740 = _StringConst_71
	set	_StringConst_71,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_740  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	627,r13		! source line 627
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_742 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_742 [i ] into _temp_743
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   Data Move: _temp_741 = *_temp_743  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_741  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	628,r13		! source line 628
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_744 = _StringConst_72
	set	_StringConst_72,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_744  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	629,r13		! source line 629
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_746 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-20]
!   Move address of _temp_746 [i ] into _temp_747
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_745 = *_temp_747  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_745  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	630,r13		! source line 630
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_748 = _StringConst_73
	set	_StringConst_73,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_748  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	631,r13		! source line 631
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_734:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_732
! END FOR
_Label_735:
! ASSIGNMENT STATEMENT...
	mov	633,r13		! source line 633
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-196],r1
	store	r1,[r15+0]
!   Call the function
	mov	633,r13		! source line 633
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-196]
! RETURN STATEMENT...
	mov	633,r13		! source line 633
	mov	"\0\0RE",r10
	add	r15,200,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_6:
	.word	_sourceFileName
	.word	_Label_749
	.word	4		! total size of parameters
	.word	196		! frame size = 196
	.word	_Label_750
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_751
	.word	-12
	.word	4
	.word	_Label_752
	.word	-16
	.word	4
	.word	_Label_753
	.word	-20
	.word	4
	.word	_Label_754
	.word	-24
	.word	4
	.word	_Label_755
	.word	-28
	.word	4
	.word	_Label_756
	.word	-32
	.word	4
	.word	_Label_757
	.word	-36
	.word	4
	.word	_Label_758
	.word	-40
	.word	4
	.word	_Label_759
	.word	-44
	.word	4
	.word	_Label_760
	.word	-48
	.word	4
	.word	_Label_761
	.word	-52
	.word	4
	.word	_Label_762
	.word	-56
	.word	4
	.word	_Label_763
	.word	-60
	.word	4
	.word	_Label_764
	.word	-64
	.word	4
	.word	_Label_765
	.word	-68
	.word	4
	.word	_Label_766
	.word	-72
	.word	4
	.word	_Label_767
	.word	-76
	.word	4
	.word	_Label_768
	.word	-80
	.word	4
	.word	_Label_769
	.word	-84
	.word	4
	.word	_Label_770
	.word	-88
	.word	4
	.word	_Label_771
	.word	-92
	.word	4
	.word	_Label_772
	.word	-96
	.word	4
	.word	_Label_773
	.word	-100
	.word	4
	.word	_Label_774
	.word	-104
	.word	4
	.word	_Label_775
	.word	-108
	.word	4
	.word	_Label_776
	.word	-112
	.word	4
	.word	_Label_777
	.word	-116
	.word	4
	.word	_Label_778
	.word	-120
	.word	4
	.word	_Label_779
	.word	-124
	.word	4
	.word	_Label_780
	.word	-128
	.word	4
	.word	_Label_781
	.word	-132
	.word	4
	.word	_Label_782
	.word	-136
	.word	4
	.word	_Label_783
	.word	-140
	.word	4
	.word	_Label_784
	.word	-144
	.word	4
	.word	_Label_785
	.word	-148
	.word	4
	.word	_Label_786
	.word	-152
	.word	4
	.word	_Label_787
	.word	-156
	.word	4
	.word	_Label_788
	.word	-160
	.word	4
	.word	_Label_789
	.word	-164
	.word	4
	.word	_Label_790
	.word	-168
	.word	4
	.word	_Label_791
	.word	-172
	.word	4
	.word	_Label_792
	.word	-176
	.word	4
	.word	_Label_793
	.word	-180
	.word	4
	.word	_Label_794
	.word	-184
	.word	4
	.word	_Label_795
	.word	-188
	.word	4
	.word	_Label_796
	.word	-192
	.word	4
	.word	_Label_797
	.word	-196
	.word	4
	.word	0
_Label_749:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_750:
	.ascii	"Pself\0"
	.align
_Label_751:
	.byte	'?'
	.ascii	"_temp_748\0"
	.align
_Label_752:
	.byte	'?'
	.ascii	"_temp_747\0"
	.align
_Label_753:
	.byte	'?'
	.ascii	"_temp_746\0"
	.align
_Label_754:
	.byte	'?'
	.ascii	"_temp_745\0"
	.align
_Label_755:
	.byte	'?'
	.ascii	"_temp_744\0"
	.align
_Label_756:
	.byte	'?'
	.ascii	"_temp_743\0"
	.align
_Label_757:
	.byte	'?'
	.ascii	"_temp_742\0"
	.align
_Label_758:
	.byte	'?'
	.ascii	"_temp_741\0"
	.align
_Label_759:
	.byte	'?'
	.ascii	"_temp_740\0"
	.align
_Label_760:
	.byte	'?'
	.ascii	"_temp_739\0"
	.align
_Label_761:
	.byte	'?'
	.ascii	"_temp_738\0"
	.align
_Label_762:
	.byte	'?'
	.ascii	"_temp_737\0"
	.align
_Label_763:
	.byte	'?'
	.ascii	"_temp_736\0"
	.align
_Label_764:
	.byte	'?'
	.ascii	"_temp_731\0"
	.align
_Label_765:
	.byte	'?'
	.ascii	"_temp_730\0"
	.align
_Label_766:
	.byte	'?'
	.ascii	"_temp_729\0"
	.align
_Label_767:
	.byte	'?'
	.ascii	"_temp_728\0"
	.align
_Label_768:
	.byte	'?'
	.ascii	"_temp_727\0"
	.align
_Label_769:
	.byte	'?'
	.ascii	"_temp_726\0"
	.align
_Label_770:
	.byte	'?'
	.ascii	"_temp_725\0"
	.align
_Label_771:
	.byte	'?'
	.ascii	"_temp_724\0"
	.align
_Label_772:
	.byte	'?'
	.ascii	"_temp_716\0"
	.align
_Label_773:
	.byte	'?'
	.ascii	"_temp_715\0"
	.align
_Label_774:
	.byte	'?'
	.ascii	"_temp_714\0"
	.align
_Label_775:
	.byte	'?'
	.ascii	"_temp_713\0"
	.align
_Label_776:
	.byte	'?'
	.ascii	"_temp_712\0"
	.align
_Label_777:
	.byte	'?'
	.ascii	"_temp_711\0"
	.align
_Label_778:
	.byte	'?'
	.ascii	"_temp_710\0"
	.align
_Label_779:
	.byte	'?'
	.ascii	"_temp_709\0"
	.align
_Label_780:
	.byte	'?'
	.ascii	"_temp_708\0"
	.align
_Label_781:
	.byte	'?'
	.ascii	"_temp_707\0"
	.align
_Label_782:
	.byte	'?'
	.ascii	"_temp_706\0"
	.align
_Label_783:
	.byte	'?'
	.ascii	"_temp_705\0"
	.align
_Label_784:
	.byte	'?'
	.ascii	"_temp_704\0"
	.align
_Label_785:
	.byte	'?'
	.ascii	"_temp_703\0"
	.align
_Label_786:
	.byte	'?'
	.ascii	"_temp_702\0"
	.align
_Label_787:
	.byte	'?'
	.ascii	"_temp_701\0"
	.align
_Label_788:
	.byte	'?'
	.ascii	"_temp_700\0"
	.align
_Label_789:
	.byte	'?'
	.ascii	"_temp_699\0"
	.align
_Label_790:
	.byte	'?'
	.ascii	"_temp_698\0"
	.align
_Label_791:
	.byte	'?'
	.ascii	"_temp_693\0"
	.align
_Label_792:
	.byte	'?'
	.ascii	"_temp_692\0"
	.align
_Label_793:
	.byte	'?'
	.ascii	"_temp_691\0"
	.align
_Label_794:
	.byte	'?'
	.ascii	"_temp_690\0"
	.align
_Label_795:
	.byte	'?'
	.ascii	"_temp_689\0"
	.align
_Label_796:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_797:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  CLASS ThreadManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ThreadManager:
	.word	_Label_798
	jmp	_Method_P_Kernel_ThreadManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ThreadManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ThreadManager_3	! 12:	GetANewThread
	jmp	_Method_P_Kernel_ThreadManager_4	! 16:	FreeThread
	.word	0
! 
! Class descriptor:
! 
_Label_798:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_799
	.word	_sourceFileName
	.word	191		! line number
	.word	41696		! size of instances, in bytes
	.word	_P_Kernel_ThreadManager
	.word	_P_System_Object
	.word	0
_Label_799:
	.ascii	"ThreadManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_ThreadManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_1,r1
	push	r1
	mov	11477,r1
_Label_1739:
	push	r0
	sub	r1,1,r1
	bne	_Label_1739
	mov	688,r13		! source line 688
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	695,r13		! source line 695
	mov	"\0\0AS",r10
!   _temp_800 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	set	-45904,r2
	store	r1,[r14+r2]
!   NEW ARRAY Constructor...
!   _temp_802 = &_temp_801
	set	-45900,r1
	add	r14,r1,r1
	store	r1,[r14+-4256]
!   _temp_802 = _temp_802 + 4
	load	[r14+-4256],r1
	add	r1,4,r1
	store	r1,[r14+-4256]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_804 = zeros  (sizeInBytes=4164)
	add	r14,-4248,r4
	mov	1041,r3
_Label_1740:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1740
!   _temp_804 = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	store	r1,[r14+-4248]
	mov	10,r1
	store	r1,[r14+-4252]
_Label_806:
!   Data Move: *_temp_802 = _temp_804  (sizeInBytes=4164)
	add	r14,-4248,r5
	load	[r14+-4256],r4
	mov	1041,r3
_Label_1741:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1741
!   _temp_802 = _temp_802 + 4164
	load	[r14+-4256],r1
	add	r1,4164,r1
	store	r1,[r14+-4256]
!   _temp_803 = _temp_803 + -1
	load	[r14+-4252],r1
	add	r1,-1,r1
	store	r1,[r14+-4252]
!   if intNotZero (_temp_803) then goto _Label_806
	load	[r14+-4252],r1
	cmp	r1,r0
	bne	_Label_806
!   Initialize the array size...
	mov	10,r1
	set	-45900,r2
	store	r1,[r14+r2]
!   _temp_807 = &_temp_801
	set	-45900,r1
	add	r14,r1,r1
	store	r1,[r14+-80]
!   make sure array has size 10
	set	-45904,r1
	load	[r14+r1],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_1742
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_1742:
!   make sure array has size 10
	load	[r14+-80],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_800 = *_temp_807  (sizeInBytes=41644)
	load	[r14+-80],r5
	set	-45904,r4
	load	[r14+r4],r4
	mov	10411,r3
_Label_1743:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1743
! ASSIGNMENT STATEMENT...
	mov	696,r13		! source line 696
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: freeList = zeros  (sizeInBytes=12)
	set	41648,r11
	load	[r14+8],r4
	add	r4,r11,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   freeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r11
	set	41648,r2
	store	r1,[r11+r2]
! ASSIGNMENT STATEMENT...
	mov	697,r13		! source line 697
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: threadManagerLock = zeros  (sizeInBytes=20)
	set	41676,r11
	load	[r14+8],r4
	add	r4,r11,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   threadManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r11
	set	41676,r2
	store	r1,[r11+r2]
! ASSIGNMENT STATEMENT...
	mov	698,r13		! source line 698
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: aThreadIsAvailable = zeros  (sizeInBytes=16)
	set	41660,r11
	load	[r14+8],r4
	add	r4,r11,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   aThreadIsAvailable = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r11
	set	41660,r2
	store	r1,[r11+r2]
! FOR STATEMENT...
	mov	699,r13		! source line 699
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_815 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_816 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_815  (sizeInBytes=4)
	load	[r14+-64],r1
	set	-45908,r2
	store	r1,[r14+r2]
_Label_811:
!   Perform the FOR-LOOP termination test
!   if i > _temp_816 then goto _Label_814		
	set	-45908,r1
	load	[r14+r1],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_814
_Label_812:
	mov	699,r13		! source line 699
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	700,r13		! source line 700
	mov	"\0\0SE",r10
!   _temp_817 = _StringConst_74
	set	_StringConst_74,r1
	store	r1,[r14+-56]
!   _temp_818 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   Move address of _temp_818 [i ] into _temp_819
!     make sure index expr is >= 0
	set	-45908,r2
	load	[r14+r2],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-52],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_817  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	701,r13		! source line 701
	mov	"\0\0AS",r10
!   _temp_820 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_820 [i ] into _temp_821
!     make sure index expr is >= 0
	set	-45908,r2
	load	[r14+r2],r2
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
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-40]
!   _temp_822 = _temp_821 + 76
	load	[r14+-40],r1
	add	r1,76,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_822 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-36],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	702,r13		! source line 702
	mov	"\0\0SE",r10
!   _temp_824 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_824 [i ] into _temp_825
!     make sure index expr is >= 0
	set	-45908,r2
	load	[r14+r2],r2
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
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   _temp_823 = _temp_825		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-32]
!   _temp_826 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_823  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_813:
!   i = i + 1
	set	-45908,r1
	load	[r14+r1],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	set	-45908,r2
	store	r1,[r14+r2]
	jmp	_Label_811
! END FOR
_Label_814:
! SEND STATEMENT...
	mov	704,r13		! source line 704
	mov	"\0\0SE",r10
!   _temp_827 = &threadManagerLock
	set	41676,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-16]
!   Send message Init
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	705,r13		! source line 705
	mov	"\0\0SE",r10
!   _temp_828 = &aThreadIsAvailable
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Send message Init
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! RETURN STATEMENT...
	mov	705,r13		! source line 705
	mov	"\0\0RE",r10
	set	45912,r1
	add	r15,r1,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_1:
	.word	_sourceFileName
	.word	_Label_829
	.word	4		! total size of parameters
	.word	45908		! frame size = 45908
	.word	_Label_830
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_831
	.word	-12
	.word	4
	.word	_Label_832
	.word	-16
	.word	4
	.word	_Label_833
	.word	-20
	.word	4
	.word	_Label_834
	.word	-24
	.word	4
	.word	_Label_835
	.word	-28
	.word	4
	.word	_Label_836
	.word	-32
	.word	4
	.word	_Label_837
	.word	-36
	.word	4
	.word	_Label_838
	.word	-40
	.word	4
	.word	_Label_839
	.word	-44
	.word	4
	.word	_Label_840
	.word	-48
	.word	4
	.word	_Label_841
	.word	-52
	.word	4
	.word	_Label_842
	.word	-56
	.word	4
	.word	_Label_843
	.word	-60
	.word	4
	.word	_Label_844
	.word	-64
	.word	4
	.word	_Label_845
	.word	-68
	.word	4
	.word	_Label_846
	.word	-72
	.word	4
	.word	_Label_847
	.word	-76
	.word	4
	.word	_Label_848
	.word	-80
	.word	4
	.word	_Label_849
	.word	-84
	.word	4
	.word	_Label_850
	.word	-4248
	.word	4164
	.word	_Label_851
	.word	-4252
	.word	4
	.word	_Label_852
	.word	-4256
	.word	4
	.word	_Label_853
	.word	-45900
	.word	41644
	.word	_Label_854
	.word	-45904
	.word	4
	.word	_Label_855
	.word	-45908
	.word	4
	.word	0
_Label_829:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_830:
	.ascii	"Pself\0"
	.align
_Label_831:
	.byte	'?'
	.ascii	"_temp_828\0"
	.align
_Label_832:
	.byte	'?'
	.ascii	"_temp_827\0"
	.align
_Label_833:
	.byte	'?'
	.ascii	"_temp_826\0"
	.align
_Label_834:
	.byte	'?'
	.ascii	"_temp_825\0"
	.align
_Label_835:
	.byte	'?'
	.ascii	"_temp_824\0"
	.align
_Label_836:
	.byte	'?'
	.ascii	"_temp_823\0"
	.align
_Label_837:
	.byte	'?'
	.ascii	"_temp_822\0"
	.align
_Label_838:
	.byte	'?'
	.ascii	"_temp_821\0"
	.align
_Label_839:
	.byte	'?'
	.ascii	"_temp_820\0"
	.align
_Label_840:
	.byte	'?'
	.ascii	"_temp_819\0"
	.align
_Label_841:
	.byte	'?'
	.ascii	"_temp_818\0"
	.align
_Label_842:
	.byte	'?'
	.ascii	"_temp_817\0"
	.align
_Label_843:
	.byte	'?'
	.ascii	"_temp_816\0"
	.align
_Label_844:
	.byte	'?'
	.ascii	"_temp_815\0"
	.align
_Label_845:
	.byte	'?'
	.ascii	"_temp_810\0"
	.align
_Label_846:
	.byte	'?'
	.ascii	"_temp_809\0"
	.align
_Label_847:
	.byte	'?'
	.ascii	"_temp_808\0"
	.align
_Label_848:
	.byte	'?'
	.ascii	"_temp_807\0"
	.align
_Label_849:
	.byte	'?'
	.ascii	"_temp_805\0"
	.align
_Label_850:
	.byte	'?'
	.ascii	"_temp_804\0"
	.align
_Label_851:
	.byte	'?'
	.ascii	"_temp_803\0"
	.align
_Label_852:
	.byte	'?'
	.ascii	"_temp_802\0"
	.align
_Label_853:
	.byte	'?'
	.ascii	"_temp_801\0"
	.align
_Label_854:
	.byte	'?'
	.ascii	"_temp_800\0"
	.align
_Label_855:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_ThreadManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_2,r1
	push	r1
	mov	15,r1
_Label_1744:
	push	r0
	sub	r1,1,r1
	bne	_Label_1744
	mov	710,r13		! source line 710
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	717,r13		! source line 717
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	717,r13		! source line 717
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! CALL STATEMENT...
!   _temp_856 = _StringConst_75
	set	_StringConst_75,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_856  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	718,r13		! source line 718
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	719,r13		! source line 719
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_861 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_862 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_861  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-56]
_Label_857:
!   Perform the FOR-LOOP termination test
!   if i > _temp_862 then goto _Label_860		
	load	[r14+-56],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_860
_Label_858:
	mov	719,r13		! source line 719
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_863 = _StringConst_76
	set	_StringConst_76,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_863  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	720,r13		! source line 720
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	721,r13		! source line 721
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_864 = _StringConst_77
	set	_StringConst_77,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_864  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	722,r13		! source line 722
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_866 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_866 [i ] into _temp_867
!     make sure index expr is >= 0
	load	[r14+-56],r2
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
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   _temp_865 = _temp_867		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_865  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	723,r13		! source line 723
	mov	"\0\0CA",r10
	call	_function_125_ThreadPrintShort
!   Increment the FOR-LOOP index variable and jump back
_Label_859:
!   i = i + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_857
! END FOR
_Label_860:
! CALL STATEMENT...
!   _temp_868 = _StringConst_78
	set	_StringConst_78,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_868  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	725,r13		! source line 725
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	726,r13		! source line 726
	mov	"\0\0SE",r10
!   _temp_869 = _function_124_PrintObjectAddr
	set	_function_124_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_870 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_869  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	727,r13		! source line 727
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	728,r13		! source line 728
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	728,r13		! source line 728
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! RETURN STATEMENT...
	mov	728,r13		! source line 728
	mov	"\0\0RE",r10
	add	r15,64,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_2:
	.word	_sourceFileName
	.word	_Label_871
	.word	4		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_872
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_873
	.word	-12
	.word	4
	.word	_Label_874
	.word	-16
	.word	4
	.word	_Label_875
	.word	-20
	.word	4
	.word	_Label_876
	.word	-24
	.word	4
	.word	_Label_877
	.word	-28
	.word	4
	.word	_Label_878
	.word	-32
	.word	4
	.word	_Label_879
	.word	-36
	.word	4
	.word	_Label_880
	.word	-40
	.word	4
	.word	_Label_881
	.word	-44
	.word	4
	.word	_Label_882
	.word	-48
	.word	4
	.word	_Label_883
	.word	-52
	.word	4
	.word	_Label_884
	.word	-56
	.word	4
	.word	_Label_885
	.word	-60
	.word	4
	.word	0
_Label_871:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_872:
	.ascii	"Pself\0"
	.align
_Label_873:
	.byte	'?'
	.ascii	"_temp_870\0"
	.align
_Label_874:
	.byte	'?'
	.ascii	"_temp_869\0"
	.align
_Label_875:
	.byte	'?'
	.ascii	"_temp_868\0"
	.align
_Label_876:
	.byte	'?'
	.ascii	"_temp_867\0"
	.align
_Label_877:
	.byte	'?'
	.ascii	"_temp_866\0"
	.align
_Label_878:
	.byte	'?'
	.ascii	"_temp_865\0"
	.align
_Label_879:
	.byte	'?'
	.ascii	"_temp_864\0"
	.align
_Label_880:
	.byte	'?'
	.ascii	"_temp_863\0"
	.align
_Label_881:
	.byte	'?'
	.ascii	"_temp_862\0"
	.align
_Label_882:
	.byte	'?'
	.ascii	"_temp_861\0"
	.align
_Label_883:
	.byte	'?'
	.ascii	"_temp_856\0"
	.align
_Label_884:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_885:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  METHOD GetANewThread  ===============
! 
_Method_P_Kernel_ThreadManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_3,r1
	push	r1
	mov	10,r1
_Label_1745:
	push	r0
	sub	r1,1,r1
	bne	_Label_1745
	mov	733,r13		! source line 733
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	739,r13		! source line 739
	mov	"\0\0SE",r10
!   _temp_886 = &threadManagerLock
	set	41676,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-36]
!   Send message Lock
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	740,r13		! source line 740
	mov	"\0\0WH",r10
_Label_887:
	mov	740,r13		! source line 740
	mov	"\0\0SE",r10
!   _temp_890 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-32]
!   Send message IsEmpty
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_888 else goto _Label_889
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_889
	jmp	_Label_888
_Label_888:
	mov	740,r13		! source line 740
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	741,r13		! source line 741
	mov	"\0\0SE",r10
!   _temp_891 = &threadManagerLock
	set	41676,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-28]
!   _temp_892 = &aThreadIsAvailable
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_891  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_887
_Label_889:
! ASSIGNMENT STATEMENT...
	mov	743,r13		! source line 743
	mov	"\0\0AS",r10
	mov	743,r13		! source line 743
	mov	"\0\0SE",r10
!   _temp_893 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-20]
!   Send message Remove
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=availableThreadPtr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	744,r13		! source line 744
	mov	"\0\0AS",r10
!   if intIsZero (availableThreadPtr) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_894 = availableThreadPtr + 76
	load	[r14+-40],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_894 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	745,r13		! source line 745
	mov	"\0\0SE",r10
!   _temp_895 = &threadManagerLock
	set	41676,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	746,r13		! source line 746
	mov	"\0\0RE",r10
!   ReturnResult: availableThreadPtr  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,44,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_3:
	.word	_sourceFileName
	.word	_Label_896
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_897
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_898
	.word	-12
	.word	4
	.word	_Label_899
	.word	-16
	.word	4
	.word	_Label_900
	.word	-20
	.word	4
	.word	_Label_901
	.word	-24
	.word	4
	.word	_Label_902
	.word	-28
	.word	4
	.word	_Label_903
	.word	-32
	.word	4
	.word	_Label_904
	.word	-36
	.word	4
	.word	_Label_905
	.word	-40
	.word	4
	.word	0
_Label_896:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"GetANewThread\0"
	.align
_Label_897:
	.ascii	"Pself\0"
	.align
_Label_898:
	.byte	'?'
	.ascii	"_temp_895\0"
	.align
_Label_899:
	.byte	'?'
	.ascii	"_temp_894\0"
	.align
_Label_900:
	.byte	'?'
	.ascii	"_temp_893\0"
	.align
_Label_901:
	.byte	'?'
	.ascii	"_temp_892\0"
	.align
_Label_902:
	.byte	'?'
	.ascii	"_temp_891\0"
	.align
_Label_903:
	.byte	'?'
	.ascii	"_temp_890\0"
	.align
_Label_904:
	.byte	'?'
	.ascii	"_temp_886\0"
	.align
_Label_905:
	.byte	'P'
	.ascii	"availableThreadPtr\0"
	.align
! 
! ===============  METHOD FreeThread  ===============
! 
_Method_P_Kernel_ThreadManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_4,r1
	push	r1
	mov	8,r1
_Label_1746:
	push	r0
	sub	r1,1,r1
	bne	_Label_1746
	mov	751,r13		! source line 751
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	755,r13		! source line 755
	mov	"\0\0SE",r10
!   _temp_906 = &threadManagerLock
	set	41676,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	756,r13		! source line 756
	mov	"\0\0AS",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_907 = th + 76
	load	[r14+12],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_907 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	757,r13		! source line 757
	mov	"\0\0SE",r10
!   _temp_908 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=th  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	758,r13		! source line 758
	mov	"\0\0SE",r10
!   _temp_909 = &threadManagerLock
	set	41676,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-20]
!   _temp_910 = &aThreadIsAvailable
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_909  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	759,r13		! source line 759
	mov	"\0\0SE",r10
!   _temp_911 = &threadManagerLock
	set	41676,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	759,r13		! source line 759
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_4:
	.word	_sourceFileName
	.word	_Label_912
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_913
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_914
	.word	12
	.word	4
	.word	_Label_915
	.word	-12
	.word	4
	.word	_Label_916
	.word	-16
	.word	4
	.word	_Label_917
	.word	-20
	.word	4
	.word	_Label_918
	.word	-24
	.word	4
	.word	_Label_919
	.word	-28
	.word	4
	.word	_Label_920
	.word	-32
	.word	4
	.word	0
_Label_912:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"FreeThread\0"
	.align
_Label_913:
	.ascii	"Pself\0"
	.align
_Label_914:
	.byte	'P'
	.ascii	"th\0"
	.align
_Label_915:
	.byte	'?'
	.ascii	"_temp_911\0"
	.align
_Label_916:
	.byte	'?'
	.ascii	"_temp_910\0"
	.align
_Label_917:
	.byte	'?'
	.ascii	"_temp_909\0"
	.align
_Label_918:
	.byte	'?'
	.ascii	"_temp_908\0"
	.align
_Label_919:
	.byte	'?'
	.ascii	"_temp_907\0"
	.align
_Label_920:
	.byte	'?'
	.ascii	"_temp_906\0"
	.align
! 
! ===============  CLASS ProcessControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessControlBlock:
	.word	_Label_921
	jmp	_Method_P_Kernel_ProcessControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessControlBlock_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessControlBlock_3	! 12:	PrintShort
	.word	0
! 
! Class descriptor:
! 
_Label_921:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_922
	.word	_sourceFileName
	.word	212		! line number
	.word	124		! size of instances, in bytes
	.word	_P_Kernel_ProcessControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_922:
	.ascii	"ProcessControlBlock\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_ProcessControlBlock_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_1,r1
	push	r1
	mov	3,r1
_Label_1747:
	push	r0
	sub	r1,1,r1
	bne	_Label_1747
	mov	772,r13		! source line 772
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	773,r13		! source line 773
	mov	"\0\0AS",r10
!   pid = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	774,r13		! source line 774
	mov	"\0\0AS",r10
!   status = 3		(4 bytes)
	mov	3,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	775,r13		! source line 775
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: addrSpace = zeros  (sizeInBytes=92)
	load	[r14+8],r4
	add	r4,32,r4
	mov	23,r3
_Label_1748:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1748
!   addrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! SEND STATEMENT...
	mov	776,r13		! source line 776
	mov	"\0\0SE",r10
!   _temp_924 = &addrSpace
	load	[r14+8],r1
	add	r1,32,r1
	store	r1,[r14+-12]
!   Send message Init
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! RETURN STATEMENT...
	mov	776,r13		! source line 776
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_1:
	.word	_sourceFileName
	.word	_Label_925
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_926
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_927
	.word	-12
	.word	4
	.word	_Label_928
	.word	-16
	.word	4
	.word	0
_Label_925:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_926:
	.ascii	"Pself\0"
	.align
_Label_927:
	.byte	'?'
	.ascii	"_temp_924\0"
	.align
_Label_928:
	.byte	'?'
	.ascii	"_temp_923\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_ProcessControlBlock_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_2,r1
	push	r1
	mov	3,r1
_Label_1749:
	push	r0
	sub	r1,1,r1
	bne	_Label_1749
	mov	786,r13		! source line 786
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	791,r13		! source line 791
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_929) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message PrintShort
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! CALL STATEMENT...
!   _temp_930 = _StringConst_79
	set	_StringConst_79,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_930  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	794,r13		! source line 794
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=myThread  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	795,r13		! source line 795
	mov	"\0\0CA",r10
	call	_function_125_ThreadPrintShort
! CALL STATEMENT...
!   Call the function
	mov	805,r13		! source line 805
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	805,r13		! source line 805
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_2:
	.word	_sourceFileName
	.word	_Label_931
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_932
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_933
	.word	-12
	.word	4
	.word	_Label_934
	.word	-16
	.word	4
	.word	0
_Label_931:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_932:
	.ascii	"Pself\0"
	.align
_Label_933:
	.byte	'?'
	.ascii	"_temp_930\0"
	.align
_Label_934:
	.byte	'?'
	.ascii	"_temp_929\0"
	.align
! 
! ===============  METHOD PrintShort  ===============
! 
_Method_P_Kernel_ProcessControlBlock_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_3,r1
	push	r1
	mov	11,r1
_Label_1750:
	push	r0
	sub	r1,1,r1
	bne	_Label_1750
	mov	810,r13		! source line 810
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_935 = _StringConst_80
	set	_StringConst_80,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_935  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	814,r13		! source line 814
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_936  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	815,r13		! source line 815
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_937 = _StringConst_81
	set	_StringConst_81,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_937  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	816,r13		! source line 816
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=pid  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	817,r13		! source line 817
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_938 = _StringConst_82
	set	_StringConst_82,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_938  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	818,r13		! source line 818
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	819,r13		! source line 819
	mov	"\0\0IF",r10
!   if status != 1 then goto _Label_940		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_940
!	jmp	_Label_939
_Label_939:
! THEN...
	mov	820,r13		! source line 820
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_941 = _StringConst_83
	set	_StringConst_83,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_941  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	820,r13		! source line 820
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_942
_Label_940:
! ELSE...
	mov	821,r13		! source line 821
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	821,r13		! source line 821
	mov	"\0\0IF",r10
!   if status != 2 then goto _Label_944		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_944
!	jmp	_Label_943
_Label_943:
! THEN...
	mov	822,r13		! source line 822
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_945 = _StringConst_84
	set	_StringConst_84,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_945  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	822,r13		! source line 822
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_946
_Label_944:
! ELSE...
	mov	823,r13		! source line 823
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	823,r13		! source line 823
	mov	"\0\0IF",r10
!   if status != 3 then goto _Label_948		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_948
!	jmp	_Label_947
_Label_947:
! THEN...
	mov	824,r13		! source line 824
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_949 = _StringConst_85
	set	_StringConst_85,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_949  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	824,r13		! source line 824
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_950
_Label_948:
! ELSE...
	mov	826,r13		! source line 826
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_951 = _StringConst_86
	set	_StringConst_86,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_951  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	826,r13		! source line 826
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_950:
! END IF...
_Label_946:
! END IF...
_Label_942:
! CALL STATEMENT...
!   _temp_952 = _StringConst_87
	set	_StringConst_87,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_952  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	828,r13		! source line 828
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=parentsPid  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	829,r13		! source line 829
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_953 = _StringConst_88
	set	_StringConst_88,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_953  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	830,r13		! source line 830
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=exitStatus  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	831,r13		! source line 831
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	832,r13		! source line 832
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	832,r13		! source line 832
	mov	"\0\0RE",r10
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_3:
	.word	_sourceFileName
	.word	_Label_954
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_955
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_956
	.word	-12
	.word	4
	.word	_Label_957
	.word	-16
	.word	4
	.word	_Label_958
	.word	-20
	.word	4
	.word	_Label_959
	.word	-24
	.word	4
	.word	_Label_960
	.word	-28
	.word	4
	.word	_Label_961
	.word	-32
	.word	4
	.word	_Label_962
	.word	-36
	.word	4
	.word	_Label_963
	.word	-40
	.word	4
	.word	_Label_964
	.word	-44
	.word	4
	.word	_Label_965
	.word	-48
	.word	4
	.word	0
_Label_954:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_955:
	.ascii	"Pself\0"
	.align
_Label_956:
	.byte	'?'
	.ascii	"_temp_953\0"
	.align
_Label_957:
	.byte	'?'
	.ascii	"_temp_952\0"
	.align
_Label_958:
	.byte	'?'
	.ascii	"_temp_951\0"
	.align
_Label_959:
	.byte	'?'
	.ascii	"_temp_949\0"
	.align
_Label_960:
	.byte	'?'
	.ascii	"_temp_945\0"
	.align
_Label_961:
	.byte	'?'
	.ascii	"_temp_941\0"
	.align
_Label_962:
	.byte	'?'
	.ascii	"_temp_938\0"
	.align
_Label_963:
	.byte	'?'
	.ascii	"_temp_937\0"
	.align
_Label_964:
	.byte	'?'
	.ascii	"_temp_936\0"
	.align
_Label_965:
	.byte	'?'
	.ascii	"_temp_935\0"
	.align
! 
! ===============  CLASS ProcessManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessManager:
	.word	_Label_966
	jmp	_Method_P_Kernel_ProcessManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessManager_3	! 12:	PrintShort
	jmp	_Method_P_Kernel_ProcessManager_4	! 16:	GetANewProcess
	jmp	_Method_P_Kernel_ProcessManager_5	! 20:	FreeProcess
	.word	0
! 
! Class descriptor:
! 
_Label_966:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_967
	.word	_sourceFileName
	.word	232		! line number
	.word	1316		! size of instances, in bytes
	.word	_P_Kernel_ProcessManager
	.word	_P_System_Object
	.word	0
_Label_967:
	.ascii	"ProcessManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_ProcessManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_1,r1
	push	r1
	mov	366,r1
_Label_1751:
	push	r0
	sub	r1,1,r1
	bne	_Label_1751
	mov	843,r13		! source line 843
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	849,r13		! source line 849
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: freeList = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,1284,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   freeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+1284]
! ASSIGNMENT STATEMENT...
	mov	850,r13		! source line 850
	mov	"\0\0AS",r10
!   _temp_969 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-1456]
!   NEW ARRAY Constructor...
!   _temp_971 = &_temp_970
	add	r14,-1452,r1
	store	r1,[r14+-208]
!   _temp_971 = _temp_971 + 4
	load	[r14+-208],r1
	add	r1,4,r1
	store	r1,[r14+-208]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_973 = zeros  (sizeInBytes=124)
	add	r14,-200,r4
	mov	31,r3
_Label_1752:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1752
!   _temp_973 = _P_Kernel_ProcessControlBlock
	set	_P_Kernel_ProcessControlBlock,r1
	store	r1,[r14+-200]
	mov	10,r1
	store	r1,[r14+-204]
_Label_975:
!   Data Move: *_temp_971 = _temp_973  (sizeInBytes=124)
	add	r14,-200,r5
	load	[r14+-208],r4
	mov	31,r3
_Label_1753:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1753
!   _temp_971 = _temp_971 + 124
	load	[r14+-208],r1
	add	r1,124,r1
	store	r1,[r14+-208]
!   _temp_972 = _temp_972 + -1
	load	[r14+-204],r1
	add	r1,-1,r1
	store	r1,[r14+-204]
!   if intNotZero (_temp_972) then goto _Label_975
	load	[r14+-204],r1
	cmp	r1,r0
	bne	_Label_975
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-1452]
!   _temp_976 = &_temp_970
	add	r14,-1452,r1
	store	r1,[r14+-72]
!   make sure array has size 10
	load	[r14+-1456],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_1754
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_1754:
!   make sure array has size 10
	load	[r14+-72],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_969 = *_temp_976  (sizeInBytes=1244)
	load	[r14+-72],r5
	load	[r14+-1456],r4
	mov	311,r3
_Label_1755:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1755
! ASSIGNMENT STATEMENT...
	mov	851,r13		! source line 851
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: processManagerLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,1248,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   processManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+1248]
! ASSIGNMENT STATEMENT...
	mov	852,r13		! source line 852
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: aProcessBecameFree = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,1268,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   aProcessBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+1268]
! ASSIGNMENT STATEMENT...
	mov	853,r13		! source line 853
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: aProcessDied = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,1296,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   aProcessDied = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+1296]
! FOR STATEMENT...
	mov	855,r13		! source line 855
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_984 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-56]
!   Calculate and save the FOR-LOOP ending value
!   _temp_985 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-52]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_984  (sizeInBytes=4)
	load	[r14+-56],r1
	store	r1,[r14+-1464]
_Label_980:
!   Perform the FOR-LOOP termination test
!   if i > _temp_985 then goto _Label_983		
	load	[r14+-1464],r1
	load	[r14+-52],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_983
_Label_981:
	mov	855,r13		! source line 855
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	856,r13		! source line 856
	mov	"\0\0SE",r10
!   _temp_987 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_987 [i ] into _temp_988
!     make sure index expr is >= 0
	load	[r14+-1464],r2
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
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-40]
!   _temp_986 = _temp_988		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   _temp_989 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_986  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	857,r13		! source line 857
	mov	"\0\0AS",r10
!   _temp_990 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Move address of _temp_990 [i ] into _temp_991
!     make sure index expr is >= 0
	load	[r14+-1464],r2
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
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_992 = _temp_991 + 20
	load	[r14+-28],r1
	add	r1,20,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_992 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-24],r2
	store	r1,[r2]
!   Increment the FOR-LOOP index variable and jump back
_Label_982:
!   i = i + 1
	load	[r14+-1464],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-1464]
	jmp	_Label_980
! END FOR
_Label_983:
! SEND STATEMENT...
	mov	859,r13		! source line 859
	mov	"\0\0SE",r10
!   _temp_993 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-20]
!   Send message Init
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	860,r13		! source line 860
	mov	"\0\0SE",r10
!   _temp_994 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-16]
!   Send message Init
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	861,r13		! source line 861
	mov	"\0\0SE",r10
!   _temp_995 = &aProcessDied
	load	[r14+8],r1
	add	r1,1296,r1
	store	r1,[r14+-12]
!   Send message Init
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! RETURN STATEMENT...
	mov	861,r13		! source line 861
	mov	"\0\0RE",r10
	add	r15,1468,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_1:
	.word	_sourceFileName
	.word	_Label_996
	.word	4		! total size of parameters
	.word	1464		! frame size = 1464
	.word	_Label_997
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_998
	.word	-12
	.word	4
	.word	_Label_999
	.word	-16
	.word	4
	.word	_Label_1000
	.word	-20
	.word	4
	.word	_Label_1001
	.word	-24
	.word	4
	.word	_Label_1002
	.word	-28
	.word	4
	.word	_Label_1003
	.word	-32
	.word	4
	.word	_Label_1004
	.word	-36
	.word	4
	.word	_Label_1005
	.word	-40
	.word	4
	.word	_Label_1006
	.word	-44
	.word	4
	.word	_Label_1007
	.word	-48
	.word	4
	.word	_Label_1008
	.word	-52
	.word	4
	.word	_Label_1009
	.word	-56
	.word	4
	.word	_Label_1010
	.word	-60
	.word	4
	.word	_Label_1011
	.word	-64
	.word	4
	.word	_Label_1012
	.word	-68
	.word	4
	.word	_Label_1013
	.word	-72
	.word	4
	.word	_Label_1014
	.word	-76
	.word	4
	.word	_Label_1015
	.word	-200
	.word	124
	.word	_Label_1016
	.word	-204
	.word	4
	.word	_Label_1017
	.word	-208
	.word	4
	.word	_Label_1018
	.word	-1452
	.word	1244
	.word	_Label_1019
	.word	-1456
	.word	4
	.word	_Label_1020
	.word	-1460
	.word	4
	.word	_Label_1021
	.word	-1464
	.word	4
	.word	0
_Label_996:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_997:
	.ascii	"Pself\0"
	.align
_Label_998:
	.byte	'?'
	.ascii	"_temp_995\0"
	.align
_Label_999:
	.byte	'?'
	.ascii	"_temp_994\0"
	.align
_Label_1000:
	.byte	'?'
	.ascii	"_temp_993\0"
	.align
_Label_1001:
	.byte	'?'
	.ascii	"_temp_992\0"
	.align
_Label_1002:
	.byte	'?'
	.ascii	"_temp_991\0"
	.align
_Label_1003:
	.byte	'?'
	.ascii	"_temp_990\0"
	.align
_Label_1004:
	.byte	'?'
	.ascii	"_temp_989\0"
	.align
_Label_1005:
	.byte	'?'
	.ascii	"_temp_988\0"
	.align
_Label_1006:
	.byte	'?'
	.ascii	"_temp_987\0"
	.align
_Label_1007:
	.byte	'?'
	.ascii	"_temp_986\0"
	.align
_Label_1008:
	.byte	'?'
	.ascii	"_temp_985\0"
	.align
_Label_1009:
	.byte	'?'
	.ascii	"_temp_984\0"
	.align
_Label_1010:
	.byte	'?'
	.ascii	"_temp_979\0"
	.align
_Label_1011:
	.byte	'?'
	.ascii	"_temp_978\0"
	.align
_Label_1012:
	.byte	'?'
	.ascii	"_temp_977\0"
	.align
_Label_1013:
	.byte	'?'
	.ascii	"_temp_976\0"
	.align
_Label_1014:
	.byte	'?'
	.ascii	"_temp_974\0"
	.align
_Label_1015:
	.byte	'?'
	.ascii	"_temp_973\0"
	.align
_Label_1016:
	.byte	'?'
	.ascii	"_temp_972\0"
	.align
_Label_1017:
	.byte	'?'
	.ascii	"_temp_971\0"
	.align
_Label_1018:
	.byte	'?'
	.ascii	"_temp_970\0"
	.align
_Label_1019:
	.byte	'?'
	.ascii	"_temp_969\0"
	.align
_Label_1020:
	.byte	'?'
	.ascii	"_temp_968\0"
	.align
_Label_1021:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_ProcessManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_2,r1
	push	r1
	mov	14,r1
_Label_1756:
	push	r0
	sub	r1,1,r1
	bne	_Label_1756
	mov	866,r13		! source line 866
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	873,r13		! source line 873
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	873,r13		! source line 873
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! CALL STATEMENT...
!   _temp_1022 = _StringConst_89
	set	_StringConst_89,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1022  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	874,r13		! source line 874
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	875,r13		! source line 875
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1027 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1028 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1027  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-52]
_Label_1023:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1028 then goto _Label_1026		
	load	[r14+-52],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1026
_Label_1024:
	mov	875,r13		! source line 875
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1029 = _StringConst_90
	set	_StringConst_90,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1029  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	876,r13		! source line 876
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	877,r13		! source line 877
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1030 = _StringConst_91
	set	_StringConst_91,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1030  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	878,r13		! source line 878
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	879,r13		! source line 879
	mov	"\0\0SE",r10
!   _temp_1031 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1031 [i ] into _temp_1032
!     make sure index expr is >= 0
	load	[r14+-52],r2
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
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   Send message Print
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1025:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_1023
! END FOR
_Label_1026:
! CALL STATEMENT...
!   _temp_1033 = _StringConst_92
	set	_StringConst_92,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1033  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	881,r13		! source line 881
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	882,r13		! source line 882
	mov	"\0\0SE",r10
!   _temp_1034 = _function_124_PrintObjectAddr
	set	_function_124_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1035 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1034  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	883,r13		! source line 883
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	884,r13		! source line 884
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	884,r13		! source line 884
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! RETURN STATEMENT...
	mov	884,r13		! source line 884
	mov	"\0\0RE",r10
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_2:
	.word	_sourceFileName
	.word	_Label_1036
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1037
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1038
	.word	-12
	.word	4
	.word	_Label_1039
	.word	-16
	.word	4
	.word	_Label_1040
	.word	-20
	.word	4
	.word	_Label_1041
	.word	-24
	.word	4
	.word	_Label_1042
	.word	-28
	.word	4
	.word	_Label_1043
	.word	-32
	.word	4
	.word	_Label_1044
	.word	-36
	.word	4
	.word	_Label_1045
	.word	-40
	.word	4
	.word	_Label_1046
	.word	-44
	.word	4
	.word	_Label_1047
	.word	-48
	.word	4
	.word	_Label_1048
	.word	-52
	.word	4
	.word	_Label_1049
	.word	-56
	.word	4
	.word	0
_Label_1036:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1037:
	.ascii	"Pself\0"
	.align
_Label_1038:
	.byte	'?'
	.ascii	"_temp_1035\0"
	.align
_Label_1039:
	.byte	'?'
	.ascii	"_temp_1034\0"
	.align
_Label_1040:
	.byte	'?'
	.ascii	"_temp_1033\0"
	.align
_Label_1041:
	.byte	'?'
	.ascii	"_temp_1032\0"
	.align
_Label_1042:
	.byte	'?'
	.ascii	"_temp_1031\0"
	.align
_Label_1043:
	.byte	'?'
	.ascii	"_temp_1030\0"
	.align
_Label_1044:
	.byte	'?'
	.ascii	"_temp_1029\0"
	.align
_Label_1045:
	.byte	'?'
	.ascii	"_temp_1028\0"
	.align
_Label_1046:
	.byte	'?'
	.ascii	"_temp_1027\0"
	.align
_Label_1047:
	.byte	'?'
	.ascii	"_temp_1022\0"
	.align
_Label_1048:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1049:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  METHOD PrintShort  ===============
! 
_Method_P_Kernel_ProcessManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_3,r1
	push	r1
	mov	13,r1
_Label_1757:
	push	r0
	sub	r1,1,r1
	bne	_Label_1757
	mov	889,r13		! source line 889
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	896,r13		! source line 896
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	896,r13		! source line 896
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! CALL STATEMENT...
!   _temp_1050 = _StringConst_93
	set	_StringConst_93,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1050  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	897,r13		! source line 897
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	898,r13		! source line 898
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1055 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1056 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1055  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-48]
_Label_1051:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1056 then goto _Label_1054		
	load	[r14+-48],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1054
_Label_1052:
	mov	898,r13		! source line 898
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1057 = _StringConst_94
	set	_StringConst_94,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1057  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	899,r13		! source line 899
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	900,r13		! source line 900
	mov	"\0\0CE",r10
	call	printInt
! SEND STATEMENT...
	mov	901,r13		! source line 901
	mov	"\0\0SE",r10
!   _temp_1058 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1058 [i ] into _temp_1059
!     make sure index expr is >= 0
	load	[r14+-48],r2
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
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   Send message PrintShort
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1053:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_1051
! END FOR
_Label_1054:
! CALL STATEMENT...
!   _temp_1060 = _StringConst_95
	set	_StringConst_95,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1060  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	903,r13		! source line 903
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	904,r13		! source line 904
	mov	"\0\0SE",r10
!   _temp_1061 = _function_124_PrintObjectAddr
	set	_function_124_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1062 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1061  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	905,r13		! source line 905
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	906,r13		! source line 906
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	906,r13		! source line 906
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! RETURN STATEMENT...
	mov	906,r13		! source line 906
	mov	"\0\0RE",r10
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_3:
	.word	_sourceFileName
	.word	_Label_1063
	.word	4		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_1064
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1065
	.word	-12
	.word	4
	.word	_Label_1066
	.word	-16
	.word	4
	.word	_Label_1067
	.word	-20
	.word	4
	.word	_Label_1068
	.word	-24
	.word	4
	.word	_Label_1069
	.word	-28
	.word	4
	.word	_Label_1070
	.word	-32
	.word	4
	.word	_Label_1071
	.word	-36
	.word	4
	.word	_Label_1072
	.word	-40
	.word	4
	.word	_Label_1073
	.word	-44
	.word	4
	.word	_Label_1074
	.word	-48
	.word	4
	.word	_Label_1075
	.word	-52
	.word	4
	.word	0
_Label_1063:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1064:
	.ascii	"Pself\0"
	.align
_Label_1065:
	.byte	'?'
	.ascii	"_temp_1062\0"
	.align
_Label_1066:
	.byte	'?'
	.ascii	"_temp_1061\0"
	.align
_Label_1067:
	.byte	'?'
	.ascii	"_temp_1060\0"
	.align
_Label_1068:
	.byte	'?'
	.ascii	"_temp_1059\0"
	.align
_Label_1069:
	.byte	'?'
	.ascii	"_temp_1058\0"
	.align
_Label_1070:
	.byte	'?'
	.ascii	"_temp_1057\0"
	.align
_Label_1071:
	.byte	'?'
	.ascii	"_temp_1056\0"
	.align
_Label_1072:
	.byte	'?'
	.ascii	"_temp_1055\0"
	.align
_Label_1073:
	.byte	'?'
	.ascii	"_temp_1050\0"
	.align
_Label_1074:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1075:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  METHOD GetANewProcess  ===============
! 
_Method_P_Kernel_ProcessManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_4,r1
	push	r1
	mov	11,r1
_Label_1758:
	push	r0
	sub	r1,1,r1
	bne	_Label_1758
	mov	911,r13		! source line 911
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	918,r13		! source line 918
	mov	"\0\0SE",r10
!   _temp_1076 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-40]
!   Send message Lock
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	919,r13		! source line 919
	mov	"\0\0WH",r10
_Label_1077:
	mov	919,r13		! source line 919
	mov	"\0\0SE",r10
!   _temp_1080 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-36]
!   Send message IsEmpty
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_1078 else goto _Label_1079
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1079
	jmp	_Label_1078
_Label_1078:
	mov	919,r13		! source line 919
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	920,r13		! source line 920
	mov	"\0\0SE",r10
!   _temp_1081 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-32]
!   _temp_1082 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_1081  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_1077
_Label_1079:
! ASSIGNMENT STATEMENT...
	mov	922,r13		! source line 922
	mov	"\0\0AS",r10
	mov	922,r13		! source line 922
	mov	"\0\0SE",r10
!   _temp_1083 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=nextProcessPtr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	923,r13		! source line 923
	mov	"\0\0AS",r10
!   if intIsZero (nextProcessPtr) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1084 = nextProcessPtr + 12
	load	[r14+-44],r1
	add	r1,12,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1084 = nextPid  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+1312],r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	924,r13		! source line 924
	mov	"\0\0AS",r10
!   nextPid = nextPid + 1		(int)
	load	[r14+8],r1
	load	[r1+1312],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+1312]
! ASSIGNMENT STATEMENT...
	mov	925,r13		! source line 925
	mov	"\0\0AS",r10
!   if intIsZero (nextProcessPtr) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1085 = nextProcessPtr + 20
	load	[r14+-44],r1
	add	r1,20,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1085 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	926,r13		! source line 926
	mov	"\0\0SE",r10
!   _temp_1086 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	927,r13		! source line 927
	mov	"\0\0RE",r10
!   ReturnResult: nextProcessPtr  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_4:
	.word	_sourceFileName
	.word	_Label_1087
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1088
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1089
	.word	-12
	.word	4
	.word	_Label_1090
	.word	-16
	.word	4
	.word	_Label_1091
	.word	-20
	.word	4
	.word	_Label_1092
	.word	-24
	.word	4
	.word	_Label_1093
	.word	-28
	.word	4
	.word	_Label_1094
	.word	-32
	.word	4
	.word	_Label_1095
	.word	-36
	.word	4
	.word	_Label_1096
	.word	-40
	.word	4
	.word	_Label_1097
	.word	-44
	.word	4
	.word	0
_Label_1087:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"GetANewProcess\0"
	.align
_Label_1088:
	.ascii	"Pself\0"
	.align
_Label_1089:
	.byte	'?'
	.ascii	"_temp_1086\0"
	.align
_Label_1090:
	.byte	'?'
	.ascii	"_temp_1085\0"
	.align
_Label_1091:
	.byte	'?'
	.ascii	"_temp_1084\0"
	.align
_Label_1092:
	.byte	'?'
	.ascii	"_temp_1083\0"
	.align
_Label_1093:
	.byte	'?'
	.ascii	"_temp_1082\0"
	.align
_Label_1094:
	.byte	'?'
	.ascii	"_temp_1081\0"
	.align
_Label_1095:
	.byte	'?'
	.ascii	"_temp_1080\0"
	.align
_Label_1096:
	.byte	'?'
	.ascii	"_temp_1076\0"
	.align
_Label_1097:
	.byte	'P'
	.ascii	"nextProcessPtr\0"
	.align
! 
! ===============  METHOD FreeProcess  ===============
! 
_Method_P_Kernel_ProcessManager_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_5,r1
	push	r1
	mov	8,r1
_Label_1759:
	push	r0
	sub	r1,1,r1
	bne	_Label_1759
	mov	932,r13		! source line 932
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	936,r13		! source line 936
	mov	"\0\0SE",r10
!   _temp_1098 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	937,r13		! source line 937
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1099 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1099 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	938,r13		! source line 938
	mov	"\0\0SE",r10
!   _temp_1100 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	939,r13		! source line 939
	mov	"\0\0SE",r10
!   _temp_1101 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-20]
!   _temp_1102 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1101  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	940,r13		! source line 940
	mov	"\0\0SE",r10
!   _temp_1103 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	940,r13		! source line 940
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_5:
	.word	_sourceFileName
	.word	_Label_1104
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1105
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1106
	.word	12
	.word	4
	.word	_Label_1107
	.word	-12
	.word	4
	.word	_Label_1108
	.word	-16
	.word	4
	.word	_Label_1109
	.word	-20
	.word	4
	.word	_Label_1110
	.word	-24
	.word	4
	.word	_Label_1111
	.word	-28
	.word	4
	.word	_Label_1112
	.word	-32
	.word	4
	.word	0
_Label_1104:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"FreeProcess\0"
	.align
_Label_1105:
	.ascii	"Pself\0"
	.align
_Label_1106:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_1107:
	.byte	'?'
	.ascii	"_temp_1103\0"
	.align
_Label_1108:
	.byte	'?'
	.ascii	"_temp_1102\0"
	.align
_Label_1109:
	.byte	'?'
	.ascii	"_temp_1101\0"
	.align
_Label_1110:
	.byte	'?'
	.ascii	"_temp_1100\0"
	.align
_Label_1111:
	.byte	'?'
	.ascii	"_temp_1099\0"
	.align
_Label_1112:
	.byte	'?'
	.ascii	"_temp_1098\0"
	.align
! 
! ===============  CLASS FrameManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FrameManager:
	.word	_Label_1113
	jmp	_Method_P_Kernel_FrameManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FrameManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FrameManager_3	! 12:	GetAFrame
	jmp	_Method_P_Kernel_FrameManager_4	! 16:	GetNewFrames
	jmp	_Method_P_Kernel_FrameManager_5	! 20:	ReturnAllFrames
	.word	0
! 
! Class descriptor:
! 
_Label_1113:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1114
	.word	_sourceFileName
	.word	255		! line number
	.word	56		! size of instances, in bytes
	.word	_P_Kernel_FrameManager
	.word	_P_System_Object
	.word	0
_Label_1114:
	.ascii	"FrameManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_FrameManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_1,r1
	push	r1
	mov	14,r1
_Label_1760:
	push	r0
	sub	r1,1,r1
	bne	_Label_1760
	mov	972,r13		! source line 972
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1115 = _StringConst_96
	set	_StringConst_96,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1115  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	978,r13		! source line 978
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	979,r13		! source line 979
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: framesInUse = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   framesInUse = _P_BitMap_BitMap
	set	_P_BitMap_BitMap,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! SEND STATEMENT...
	mov	980,r13		! source line 980
	mov	"\0\0SE",r10
!   _temp_1117 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=27  sizeInBytes=4
	mov	27,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	981,r13		! source line 981
	mov	"\0\0AS",r10
!   numberFreeFrames = 27		(4 bytes)
	mov	27,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	982,r13		! source line 982
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: frameManagerLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,20,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   frameManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! SEND STATEMENT...
	mov	983,r13		! source line 983
	mov	"\0\0SE",r10
!   _temp_1119 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Send message Init
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	984,r13		! source line 984
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: newFramesAvailable = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,40,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   newFramesAvailable = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+40]
! SEND STATEMENT...
	mov	985,r13		! source line 985
	mov	"\0\0SE",r10
!   _temp_1121 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-28]
!   Send message Init
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! FOR STATEMENT...
	mov	991,r13		! source line 991
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1126 = 1048576		(4 bytes)
	set	1048576,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1127 = 1048876		(4 bytes)
	set	1048876,r1
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1126  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-56]
_Label_1122:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1127 then goto _Label_1125		
	load	[r14+-56],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1125
_Label_1123:
	mov	991,r13		! source line 991
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	994,r13		! source line 994
	mov	"\0\0IF",r10
!   if intIsZero (i) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1130 = *i  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1130) then goto _Label_1129
	load	[r14+-16],r1
	cmp	r1,r0
	be	_Label_1129
!	jmp	_Label_1128
_Label_1128:
! THEN...
	mov	995,r13		! source line 995
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1131 = _StringConst_97
	set	_StringConst_97,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1131  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	995,r13		! source line 995
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1129:
!   Increment the FOR-LOOP index variable and jump back
_Label_1124:
!   i = i + 4
	load	[r14+-56],r1
	add	r1,4,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1122
! END FOR
_Label_1125:
! RETURN STATEMENT...
	mov	991,r13		! source line 991
	mov	"\0\0RE",r10
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_1:
	.word	_sourceFileName
	.word	_Label_1132
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1133
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1134
	.word	-12
	.word	4
	.word	_Label_1135
	.word	-16
	.word	4
	.word	_Label_1136
	.word	-20
	.word	4
	.word	_Label_1137
	.word	-24
	.word	4
	.word	_Label_1138
	.word	-28
	.word	4
	.word	_Label_1139
	.word	-32
	.word	4
	.word	_Label_1140
	.word	-36
	.word	4
	.word	_Label_1141
	.word	-40
	.word	4
	.word	_Label_1142
	.word	-44
	.word	4
	.word	_Label_1143
	.word	-48
	.word	4
	.word	_Label_1144
	.word	-52
	.word	4
	.word	_Label_1145
	.word	-56
	.word	4
	.word	0
_Label_1132:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1133:
	.ascii	"Pself\0"
	.align
_Label_1134:
	.byte	'?'
	.ascii	"_temp_1131\0"
	.align
_Label_1135:
	.byte	'?'
	.ascii	"_temp_1130\0"
	.align
_Label_1136:
	.byte	'?'
	.ascii	"_temp_1127\0"
	.align
_Label_1137:
	.byte	'?'
	.ascii	"_temp_1126\0"
	.align
_Label_1138:
	.byte	'?'
	.ascii	"_temp_1121\0"
	.align
_Label_1139:
	.byte	'?'
	.ascii	"_temp_1120\0"
	.align
_Label_1140:
	.byte	'?'
	.ascii	"_temp_1119\0"
	.align
_Label_1141:
	.byte	'?'
	.ascii	"_temp_1118\0"
	.align
_Label_1142:
	.byte	'?'
	.ascii	"_temp_1117\0"
	.align
_Label_1143:
	.byte	'?'
	.ascii	"_temp_1116\0"
	.align
_Label_1144:
	.byte	'?'
	.ascii	"_temp_1115\0"
	.align
_Label_1145:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_FrameManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_2,r1
	push	r1
	mov	8,r1
_Label_1761:
	push	r0
	sub	r1,1,r1
	bne	_Label_1761
	mov	1002,r13		! source line 1002
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1006,r13		! source line 1006
	mov	"\0\0SE",r10
!   _temp_1146 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_1147 = _StringConst_98
	set	_StringConst_98,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1147  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1007,r13		! source line 1007
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1148 = _StringConst_99
	set	_StringConst_99,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1148  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=numberFreeFrames  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1008,r13		! source line 1008
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_1149 = _StringConst_100
	set	_StringConst_100,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1149  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1009,r13		! source line 1009
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1010,r13		! source line 1010
	mov	"\0\0SE",r10
!   _temp_1150 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Send message Print
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	1011,r13		! source line 1011
	mov	"\0\0SE",r10
!   _temp_1151 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1011,r13		! source line 1011
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_2:
	.word	_sourceFileName
	.word	_Label_1152
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1153
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1154
	.word	-12
	.word	4
	.word	_Label_1155
	.word	-16
	.word	4
	.word	_Label_1156
	.word	-20
	.word	4
	.word	_Label_1157
	.word	-24
	.word	4
	.word	_Label_1158
	.word	-28
	.word	4
	.word	_Label_1159
	.word	-32
	.word	4
	.word	0
_Label_1152:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1153:
	.ascii	"Pself\0"
	.align
_Label_1154:
	.byte	'?'
	.ascii	"_temp_1151\0"
	.align
_Label_1155:
	.byte	'?'
	.ascii	"_temp_1150\0"
	.align
_Label_1156:
	.byte	'?'
	.ascii	"_temp_1149\0"
	.align
_Label_1157:
	.byte	'?'
	.ascii	"_temp_1148\0"
	.align
_Label_1158:
	.byte	'?'
	.ascii	"_temp_1147\0"
	.align
_Label_1159:
	.byte	'?'
	.ascii	"_temp_1146\0"
	.align
! 
! ===============  METHOD GetAFrame  ===============
! 
_Method_P_Kernel_FrameManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_3,r1
	push	r1
	mov	10,r1
_Label_1762:
	push	r0
	sub	r1,1,r1
	bne	_Label_1762
	mov	1016,r13		! source line 1016
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1024,r13		! source line 1024
	mov	"\0\0SE",r10
!   _temp_1160 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	1027,r13		! source line 1027
	mov	"\0\0WH",r10
_Label_1161:
!   if numberFreeFrames >= 1 then goto _Label_1163		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1163
!	jmp	_Label_1162
_Label_1162:
	mov	1027,r13		! source line 1027
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1028,r13		! source line 1028
	mov	"\0\0SE",r10
!   _temp_1164 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   _temp_1165 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1164  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_1161
_Label_1163:
! ASSIGNMENT STATEMENT...
	mov	1032,r13		! source line 1032
	mov	"\0\0AS",r10
	mov	1032,r13		! source line 1032
	mov	"\0\0SE",r10
!   _temp_1166 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Send message FindZeroAndSet
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=f  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1033,r13		! source line 1033
	mov	"\0\0AS",r10
!   numberFreeFrames = numberFreeFrames - 1		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! SEND STATEMENT...
	mov	1036,r13		! source line 1036
	mov	"\0\0SE",r10
!   _temp_1167 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1039,r13		! source line 1039
	mov	"\0\0AS",r10
!   _temp_1168 = f * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   frameAddr = 1048576 + _temp_1168		(int)
	set	1048576,r1
	load	[r14+-12],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! RETURN STATEMENT...
	mov	1041,r13		! source line 1041
	mov	"\0\0RE",r10
!   ReturnResult: frameAddr  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,44,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_3:
	.word	_sourceFileName
	.word	_Label_1169
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_1170
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1171
	.word	-12
	.word	4
	.word	_Label_1172
	.word	-16
	.word	4
	.word	_Label_1173
	.word	-20
	.word	4
	.word	_Label_1174
	.word	-24
	.word	4
	.word	_Label_1175
	.word	-28
	.word	4
	.word	_Label_1176
	.word	-32
	.word	4
	.word	_Label_1177
	.word	-36
	.word	4
	.word	_Label_1178
	.word	-40
	.word	4
	.word	0
_Label_1169:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetAFrame\0"
	.align
_Label_1170:
	.ascii	"Pself\0"
	.align
_Label_1171:
	.byte	'?'
	.ascii	"_temp_1168\0"
	.align
_Label_1172:
	.byte	'?'
	.ascii	"_temp_1167\0"
	.align
_Label_1173:
	.byte	'?'
	.ascii	"_temp_1166\0"
	.align
_Label_1174:
	.byte	'?'
	.ascii	"_temp_1165\0"
	.align
_Label_1175:
	.byte	'?'
	.ascii	"_temp_1164\0"
	.align
_Label_1176:
	.byte	'?'
	.ascii	"_temp_1160\0"
	.align
_Label_1177:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_1178:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
! 
! ===============  METHOD GetNewFrames  ===============
! 
_Method_P_Kernel_FrameManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_4,r1
	push	r1
	mov	13,r1
_Label_1763:
	push	r0
	sub	r1,1,r1
	bne	_Label_1763
	mov	1046,r13		! source line 1046
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1050,r13		! source line 1050
	mov	"\0\0SE",r10
!   _temp_1179 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   Send message Lock
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	1051,r13		! source line 1051
	mov	"\0\0WH",r10
_Label_1180:
!   if numberFreeFrames >= numFramesNeeded then goto _Label_1182		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1182
!	jmp	_Label_1181
_Label_1181:
	mov	1051,r13		! source line 1051
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1052,r13		! source line 1052
	mov	"\0\0SE",r10
!   _temp_1183 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   _temp_1184 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_1183  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_1180
_Label_1182:
! FOR STATEMENT...
	mov	1054,r13		! source line 1054
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1189 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-28]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1190 = numFramesNeeded - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1189  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+-44]
_Label_1185:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1190 then goto _Label_1188		
	load	[r14+-44],r1
	load	[r14+-24],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1188
_Label_1186:
	mov	1054,r13		! source line 1054
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1055,r13		! source line 1055
	mov	"\0\0AS",r10
	mov	1055,r13		! source line 1055
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1191) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message GetAFrame
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=frameAddr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
! SEND STATEMENT...
	mov	1056,r13		! source line 1056
	mov	"\0\0SE",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=frameAddr  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+8]
!   Send message SetFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1187:
!   i = i + 1
	load	[r14+-44],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
	jmp	_Label_1185
! END FOR
_Label_1188:
! ASSIGNMENT STATEMENT...
	mov	1058,r13		! source line 1058
	mov	"\0\0AS",r10
!   numberFreeFrames = numberFreeFrames - numFramesNeeded		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1059,r13		! source line 1059
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1192 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1192 = numFramesNeeded  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1060,r13		! source line 1060
	mov	"\0\0SE",r10
!   _temp_1193 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1060,r13		! source line 1060
	mov	"\0\0RE",r10
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_4:
	.word	_sourceFileName
	.word	_Label_1194
	.word	12		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_1195
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1196
	.word	12
	.word	4
	.word	_Label_1197
	.word	16
	.word	4
	.word	_Label_1198
	.word	-12
	.word	4
	.word	_Label_1199
	.word	-16
	.word	4
	.word	_Label_1200
	.word	-20
	.word	4
	.word	_Label_1201
	.word	-24
	.word	4
	.word	_Label_1202
	.word	-28
	.word	4
	.word	_Label_1203
	.word	-32
	.word	4
	.word	_Label_1204
	.word	-36
	.word	4
	.word	_Label_1205
	.word	-40
	.word	4
	.word	_Label_1206
	.word	-44
	.word	4
	.word	_Label_1207
	.word	-48
	.word	4
	.word	0
_Label_1194:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetNewFrames\0"
	.align
_Label_1195:
	.ascii	"Pself\0"
	.align
_Label_1196:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1197:
	.byte	'I'
	.ascii	"numFramesNeeded\0"
	.align
_Label_1198:
	.byte	'?'
	.ascii	"_temp_1193\0"
	.align
_Label_1199:
	.byte	'?'
	.ascii	"_temp_1192\0"
	.align
_Label_1200:
	.byte	'?'
	.ascii	"_temp_1191\0"
	.align
_Label_1201:
	.byte	'?'
	.ascii	"_temp_1190\0"
	.align
_Label_1202:
	.byte	'?'
	.ascii	"_temp_1189\0"
	.align
_Label_1203:
	.byte	'?'
	.ascii	"_temp_1184\0"
	.align
_Label_1204:
	.byte	'?'
	.ascii	"_temp_1183\0"
	.align
_Label_1205:
	.byte	'?'
	.ascii	"_temp_1179\0"
	.align
_Label_1206:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1207:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
! 
! ===============  METHOD ReturnAllFrames  ===============
! 
_Method_P_Kernel_FrameManager_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_5,r1
	push	r1
	mov	17,r1
_Label_1764:
	push	r0
	sub	r1,1,r1
	bne	_Label_1764
	mov	1065,r13		! source line 1065
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1070,r13		! source line 1070
	mov	"\0\0SE",r10
!   _temp_1208 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-56]
!   Send message Lock
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! FOR STATEMENT...
	mov	1071,r13		! source line 1071
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1213 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-52]
!   Calculate and save the FOR-LOOP ending value
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1216 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Data Move: _temp_1215 = *_temp_1216  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_1214 = _temp_1215 - 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1213  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+-60]
_Label_1209:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1214 then goto _Label_1212		
	load	[r14+-60],r1
	load	[r14+-48],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1212
_Label_1210:
	mov	1071,r13		! source line 1071
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1072,r13		! source line 1072
	mov	"\0\0AS",r10
	mov	1072,r13		! source line 1072
	mov	"\0\0SE",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=frameAddr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-68]
! ASSIGNMENT STATEMENT...
	mov	1073,r13		! source line 1073
	mov	"\0\0AS",r10
!   _temp_1217 = frameAddr - 1048576		(int)
	load	[r14+-68],r1
	set	1048576,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   bitIndex = _temp_1217 div 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
! SEND STATEMENT...
	mov	1074,r13		! source line 1074
	mov	"\0\0SE",r10
!   _temp_1218 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=bitIndex  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Send message ClearBit
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1211:
!   i = i + 1
	load	[r14+-60],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
	jmp	_Label_1209
! END FOR
_Label_1212:
! ASSIGNMENT STATEMENT...
	mov	1076,r13		! source line 1076
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1220 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Data Move: _temp_1219 = *_temp_1220  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   numberFreeFrames = numberFreeFrames + _temp_1219		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+-28],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! SEND STATEMENT...
	mov	1077,r13		! source line 1077
	mov	"\0\0SE",r10
!   _temp_1221 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   _temp_1222 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1221  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Broadcast
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! SEND STATEMENT...
	mov	1078,r13		! source line 1078
	mov	"\0\0SE",r10
!   _temp_1223 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1078,r13		! source line 1078
	mov	"\0\0RE",r10
	add	r15,72,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_5:
	.word	_sourceFileName
	.word	_Label_1224
	.word	8		! total size of parameters
	.word	68		! frame size = 68
	.word	_Label_1225
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1226
	.word	12
	.word	4
	.word	_Label_1227
	.word	-12
	.word	4
	.word	_Label_1228
	.word	-16
	.word	4
	.word	_Label_1229
	.word	-20
	.word	4
	.word	_Label_1230
	.word	-24
	.word	4
	.word	_Label_1231
	.word	-28
	.word	4
	.word	_Label_1232
	.word	-32
	.word	4
	.word	_Label_1233
	.word	-36
	.word	4
	.word	_Label_1234
	.word	-40
	.word	4
	.word	_Label_1235
	.word	-44
	.word	4
	.word	_Label_1236
	.word	-48
	.word	4
	.word	_Label_1237
	.word	-52
	.word	4
	.word	_Label_1238
	.word	-56
	.word	4
	.word	_Label_1239
	.word	-60
	.word	4
	.word	_Label_1240
	.word	-64
	.word	4
	.word	_Label_1241
	.word	-68
	.word	4
	.word	0
_Label_1224:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"ReturnAllFrames\0"
	.align
_Label_1225:
	.ascii	"Pself\0"
	.align
_Label_1226:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1227:
	.byte	'?'
	.ascii	"_temp_1223\0"
	.align
_Label_1228:
	.byte	'?'
	.ascii	"_temp_1222\0"
	.align
_Label_1229:
	.byte	'?'
	.ascii	"_temp_1221\0"
	.align
_Label_1230:
	.byte	'?'
	.ascii	"_temp_1220\0"
	.align
_Label_1231:
	.byte	'?'
	.ascii	"_temp_1219\0"
	.align
_Label_1232:
	.byte	'?'
	.ascii	"_temp_1218\0"
	.align
_Label_1233:
	.byte	'?'
	.ascii	"_temp_1217\0"
	.align
_Label_1234:
	.byte	'?'
	.ascii	"_temp_1216\0"
	.align
_Label_1235:
	.byte	'?'
	.ascii	"_temp_1215\0"
	.align
_Label_1236:
	.byte	'?'
	.ascii	"_temp_1214\0"
	.align
_Label_1237:
	.byte	'?'
	.ascii	"_temp_1213\0"
	.align
_Label_1238:
	.byte	'?'
	.ascii	"_temp_1208\0"
	.align
_Label_1239:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1240:
	.byte	'I'
	.ascii	"bitIndex\0"
	.align
_Label_1241:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
! 
! ===============  CLASS AddrSpace  ===============
! 
! Dispatch Table:
! 
_P_Kernel_AddrSpace:
	.word	_Label_1242
	jmp	_Method_P_Kernel_AddrSpace_1	! 4:	Init
	jmp	_Method_P_Kernel_AddrSpace_2	! 8:	Print
	jmp	_Method_P_Kernel_AddrSpace_3	! 12:	ExtractFrameAddr
	jmp	_Method_P_Kernel_AddrSpace_4	! 16:	ExtractUndefinedBits
	jmp	_Method_P_Kernel_AddrSpace_5	! 20:	SetFrameAddr
	jmp	_Method_P_Kernel_AddrSpace_6	! 24:	IsDirty
	jmp	_Method_P_Kernel_AddrSpace_7	! 28:	IsReferenced
	jmp	_Method_P_Kernel_AddrSpace_8	! 32:	IsWritable
	jmp	_Method_P_Kernel_AddrSpace_9	! 36:	IsValid
	jmp	_Method_P_Kernel_AddrSpace_10	! 40:	SetDirty
	jmp	_Method_P_Kernel_AddrSpace_11	! 44:	SetReferenced
	jmp	_Method_P_Kernel_AddrSpace_12	! 48:	SetWritable
	jmp	_Method_P_Kernel_AddrSpace_13	! 52:	SetValid
	jmp	_Method_P_Kernel_AddrSpace_14	! 56:	ClearDirty
	jmp	_Method_P_Kernel_AddrSpace_15	! 60:	ClearReferenced
	jmp	_Method_P_Kernel_AddrSpace_16	! 64:	ClearWritable
	jmp	_Method_P_Kernel_AddrSpace_17	! 68:	ClearValid
	jmp	_Method_P_Kernel_AddrSpace_18	! 72:	SetToThisPageTable
	jmp	_Method_P_Kernel_AddrSpace_19	! 76:	CopyBytesFromVirtual
	jmp	_Method_P_Kernel_AddrSpace_20	! 80:	CopyBytesToVirtual
	jmp	_Method_P_Kernel_AddrSpace_21	! 84:	GetStringFromVirtual
	.word	0
! 
! Class descriptor:
! 
_Label_1242:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1243
	.word	_sourceFileName
	.word	274		! line number
	.word	92		! size of instances, in bytes
	.word	_P_Kernel_AddrSpace
	.word	_P_System_Object
	.word	0
_Label_1243:
	.ascii	"AddrSpace\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_AddrSpace_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_1,r1
	push	r1
	mov	25,r1
_Label_1765:
	push	r0
	sub	r1,1,r1
	bne	_Label_1765
	mov	1089,r13		! source line 1089
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1093,r13		! source line 1093
	mov	"\0\0AS",r10
!   numberOfPages = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	1094,r13		! source line 1094
	mov	"\0\0AS",r10
!   _temp_1244 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-108]
!   NEW ARRAY Constructor...
!   _temp_1246 = &_temp_1245
	add	r14,-104,r1
	store	r1,[r14+-20]
!   _temp_1246 = _temp_1246 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	20,r1
	store	r1,[r14+-16]
_Label_1248:
!   Data Move: *_temp_1246 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1246 = _temp_1246 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1247 = _temp_1247 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1247) then goto _Label_1248
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1248
!   Initialize the array size...
	mov	20,r1
	store	r1,[r14+-104]
!   _temp_1249 = &_temp_1245
	add	r14,-104,r1
	store	r1,[r14+-12]
!   make sure array has size 20
	load	[r14+-108],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,0
	be	_Label_1766
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_1766:
!   make sure array has size 20
	load	[r14+-12],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1244 = *_temp_1249  (sizeInBytes=84)
	load	[r14+-12],r5
	load	[r14+-108],r4
	mov	21,r3
_Label_1767:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1767
! RETURN STATEMENT...
	mov	1094,r13		! source line 1094
	mov	"\0\0RE",r10
	add	r15,104,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_1:
	.word	_sourceFileName
	.word	_Label_1250
	.word	4		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_1251
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1252
	.word	-12
	.word	4
	.word	_Label_1253
	.word	-16
	.word	4
	.word	_Label_1254
	.word	-20
	.word	4
	.word	_Label_1255
	.word	-104
	.word	84
	.word	_Label_1256
	.word	-108
	.word	4
	.word	0
_Label_1250:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1251:
	.ascii	"Pself\0"
	.align
_Label_1252:
	.byte	'?'
	.ascii	"_temp_1249\0"
	.align
_Label_1253:
	.byte	'?'
	.ascii	"_temp_1247\0"
	.align
_Label_1254:
	.byte	'?'
	.ascii	"_temp_1246\0"
	.align
_Label_1255:
	.byte	'?'
	.ascii	"_temp_1245\0"
	.align
_Label_1256:
	.byte	'?'
	.ascii	"_temp_1244\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_AddrSpace_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_2,r1
	push	r1
	mov	42,r1
_Label_1768:
	push	r0
	sub	r1,1,r1
	bne	_Label_1768
	mov	1099,r13		! source line 1099
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1257 = _StringConst_101
	set	_StringConst_101,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_1257  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	1104,r13		! source line 1104
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1258 = _StringConst_102
	set	_StringConst_102,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1258  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	1105,r13		! source line 1105
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1106,r13		! source line 1106
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1263 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-156]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1264 = numberOfPages - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1263  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+-168]
_Label_1259:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1264 then goto _Label_1262		
	load	[r14+-168],r1
	load	[r14+-152],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1262
_Label_1260:
	mov	1106,r13		! source line 1106
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1265 = _StringConst_103
	set	_StringConst_103,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1265  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	1107,r13		! source line 1107
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1267 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-140]
!   Move address of _temp_1267 [i ] into _temp_1268
!     make sure index expr is >= 0
	load	[r14+-168],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-140],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-136]
!   _temp_1266 = _temp_1268		(4 bytes)
	load	[r14+-136],r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_1266  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	1108,r13		! source line 1108
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1269 = _StringConst_104
	set	_StringConst_104,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1269  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	1109,r13		! source line 1109
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1271 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-124]
!   Move address of _temp_1271 [i ] into _temp_1272
!     make sure index expr is >= 0
	load	[r14+-168],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-124],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-120]
!   Data Move: _temp_1270 = *_temp_1272  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_1270  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	1110,r13		! source line 1110
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1273 = _StringConst_105
	set	_StringConst_105,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_1273  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	1111,r13		! source line 1111
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1274 = i * 8192		(int)
	load	[r14+-168],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1274  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	1112,r13		! source line 1112
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1275 = _StringConst_106
	set	_StringConst_106,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_1275  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	1113,r13		! source line 1113
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	mov	1114,r13		! source line 1114
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_1277) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-100],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1276  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1276  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	1114,r13		! source line 1114
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1278 = _StringConst_107
	set	_StringConst_107,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_1278  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	1115,r13		! source line 1115
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1116,r13		! source line 1116
	mov	"\0\0IF",r10
	mov	1116,r13		! source line 1116
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-88]
!   if intIsZero (_temp_1282) then goto _runtimeErrorNullPointer
	load	[r14+-88],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message ExtractUndefinedBits
	load	[r14+-88],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_1281  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_1281) then goto _Label_1280
	load	[r14+-92],r1
	cmp	r1,r0
	be	_Label_1280
!	jmp	_Label_1279
_Label_1279:
! THEN...
	mov	1117,r13		! source line 1117
	mov	"\0\0TN",r10
! CALL STATEMENT...
	mov	1117,r13		! source line 1117
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_1284) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message ExtractUndefinedBits
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_1283  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1283  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	1117,r13		! source line 1117
	mov	"\0\0CE",r10
	call	printHex
	jmp	_Label_1285
_Label_1280:
! ELSE...
	mov	1119,r13		! source line 1119
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1286 = _StringConst_108
	set	_StringConst_108,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1286  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	1119,r13		! source line 1119
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1285:
! CALL STATEMENT...
!   _temp_1287 = _StringConst_109
	set	_StringConst_109,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1287  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	1121,r13		! source line 1121
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1122,r13		! source line 1122
	mov	"\0\0IF",r10
	mov	1122,r13		! source line 1122
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_1290) then goto _runtimeErrorNullPointer
	load	[r14+-68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsDirty
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
!   if result==true then goto _Label_1288 else goto _Label_1289
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1289
	jmp	_Label_1288
_Label_1288:
! THEN...
	mov	1123,r13		! source line 1123
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1291 = _StringConst_110
	set	_StringConst_110,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1291  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	1123,r13		! source line 1123
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1292
_Label_1289:
! ELSE...
	mov	1125,r13		! source line 1125
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1293 = _StringConst_111
	set	_StringConst_111,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_1293  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1125,r13		! source line 1125
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1292:
! CALL STATEMENT...
!   _temp_1294 = _StringConst_112
	set	_StringConst_112,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_1294  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	1127,r13		! source line 1127
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1128,r13		! source line 1128
	mov	"\0\0IF",r10
	mov	1128,r13		! source line 1128
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_1297) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsReferenced
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
!   if result==true then goto _Label_1295 else goto _Label_1296
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1296
	jmp	_Label_1295
_Label_1295:
! THEN...
	mov	1129,r13		! source line 1129
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1298 = _StringConst_113
	set	_StringConst_113,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1298  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1129,r13		! source line 1129
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1299
_Label_1296:
! ELSE...
	mov	1131,r13		! source line 1131
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1300 = _StringConst_114
	set	_StringConst_114,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1300  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1131,r13		! source line 1131
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1299:
! CALL STATEMENT...
!   _temp_1301 = _StringConst_115
	set	_StringConst_115,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1301  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1133,r13		! source line 1133
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1134,r13		! source line 1134
	mov	"\0\0IF",r10
	mov	1134,r13		! source line 1134
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_1304) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   if result==true then goto _Label_1302 else goto _Label_1303
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1303
	jmp	_Label_1302
_Label_1302:
! THEN...
	mov	1135,r13		! source line 1135
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1305 = _StringConst_116
	set	_StringConst_116,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1305  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1135,r13		! source line 1135
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1306
_Label_1303:
! ELSE...
	mov	1137,r13		! source line 1137
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1307 = _StringConst_117
	set	_StringConst_117,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1307  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1137,r13		! source line 1137
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1306:
! CALL STATEMENT...
!   _temp_1308 = _StringConst_118
	set	_StringConst_118,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1308  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1139,r13		! source line 1139
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1140,r13		! source line 1140
	mov	"\0\0IF",r10
	mov	1140,r13		! source line 1140
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1311) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   if result==true then goto _Label_1309 else goto _Label_1310
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1310
	jmp	_Label_1309
_Label_1309:
! THEN...
	mov	1141,r13		! source line 1141
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1312 = _StringConst_119
	set	_StringConst_119,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1312  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1141,r13		! source line 1141
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1313
_Label_1310:
! ELSE...
	mov	1143,r13		! source line 1143
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1314 = _StringConst_120
	set	_StringConst_120,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1314  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1143,r13		! source line 1143
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1313:
! CALL STATEMENT...
!   Call the function
	mov	1145,r13		! source line 1145
	mov	"\0\0CA",r10
	call	_P_System_nl
!   Increment the FOR-LOOP index variable and jump back
_Label_1261:
!   i = i + 1
	load	[r14+-168],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-168]
	jmp	_Label_1259
! END FOR
_Label_1262:
! RETURN STATEMENT...
	mov	1106,r13		! source line 1106
	mov	"\0\0RE",r10
	add	r15,172,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_2:
	.word	_sourceFileName
	.word	_Label_1315
	.word	4		! total size of parameters
	.word	168		! frame size = 168
	.word	_Label_1316
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1317
	.word	-12
	.word	4
	.word	_Label_1318
	.word	-16
	.word	4
	.word	_Label_1319
	.word	-20
	.word	4
	.word	_Label_1320
	.word	-24
	.word	4
	.word	_Label_1321
	.word	-28
	.word	4
	.word	_Label_1322
	.word	-32
	.word	4
	.word	_Label_1323
	.word	-36
	.word	4
	.word	_Label_1324
	.word	-40
	.word	4
	.word	_Label_1325
	.word	-44
	.word	4
	.word	_Label_1326
	.word	-48
	.word	4
	.word	_Label_1327
	.word	-52
	.word	4
	.word	_Label_1328
	.word	-56
	.word	4
	.word	_Label_1329
	.word	-60
	.word	4
	.word	_Label_1330
	.word	-64
	.word	4
	.word	_Label_1331
	.word	-68
	.word	4
	.word	_Label_1332
	.word	-72
	.word	4
	.word	_Label_1333
	.word	-76
	.word	4
	.word	_Label_1334
	.word	-80
	.word	4
	.word	_Label_1335
	.word	-84
	.word	4
	.word	_Label_1336
	.word	-88
	.word	4
	.word	_Label_1337
	.word	-92
	.word	4
	.word	_Label_1338
	.word	-96
	.word	4
	.word	_Label_1339
	.word	-100
	.word	4
	.word	_Label_1340
	.word	-104
	.word	4
	.word	_Label_1341
	.word	-108
	.word	4
	.word	_Label_1342
	.word	-112
	.word	4
	.word	_Label_1343
	.word	-116
	.word	4
	.word	_Label_1344
	.word	-120
	.word	4
	.word	_Label_1345
	.word	-124
	.word	4
	.word	_Label_1346
	.word	-128
	.word	4
	.word	_Label_1347
	.word	-132
	.word	4
	.word	_Label_1348
	.word	-136
	.word	4
	.word	_Label_1349
	.word	-140
	.word	4
	.word	_Label_1350
	.word	-144
	.word	4
	.word	_Label_1351
	.word	-148
	.word	4
	.word	_Label_1352
	.word	-152
	.word	4
	.word	_Label_1353
	.word	-156
	.word	4
	.word	_Label_1354
	.word	-160
	.word	4
	.word	_Label_1355
	.word	-164
	.word	4
	.word	_Label_1356
	.word	-168
	.word	4
	.word	0
_Label_1315:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1316:
	.ascii	"Pself\0"
	.align
_Label_1317:
	.byte	'?'
	.ascii	"_temp_1314\0"
	.align
_Label_1318:
	.byte	'?'
	.ascii	"_temp_1312\0"
	.align
_Label_1319:
	.byte	'?'
	.ascii	"_temp_1311\0"
	.align
_Label_1320:
	.byte	'?'
	.ascii	"_temp_1308\0"
	.align
_Label_1321:
	.byte	'?'
	.ascii	"_temp_1307\0"
	.align
_Label_1322:
	.byte	'?'
	.ascii	"_temp_1305\0"
	.align
_Label_1323:
	.byte	'?'
	.ascii	"_temp_1304\0"
	.align
_Label_1324:
	.byte	'?'
	.ascii	"_temp_1301\0"
	.align
_Label_1325:
	.byte	'?'
	.ascii	"_temp_1300\0"
	.align
_Label_1326:
	.byte	'?'
	.ascii	"_temp_1298\0"
	.align
_Label_1327:
	.byte	'?'
	.ascii	"_temp_1297\0"
	.align
_Label_1328:
	.byte	'?'
	.ascii	"_temp_1294\0"
	.align
_Label_1329:
	.byte	'?'
	.ascii	"_temp_1293\0"
	.align
_Label_1330:
	.byte	'?'
	.ascii	"_temp_1291\0"
	.align
_Label_1331:
	.byte	'?'
	.ascii	"_temp_1290\0"
	.align
_Label_1332:
	.byte	'?'
	.ascii	"_temp_1287\0"
	.align
_Label_1333:
	.byte	'?'
	.ascii	"_temp_1286\0"
	.align
_Label_1334:
	.byte	'?'
	.ascii	"_temp_1284\0"
	.align
_Label_1335:
	.byte	'?'
	.ascii	"_temp_1283\0"
	.align
_Label_1336:
	.byte	'?'
	.ascii	"_temp_1282\0"
	.align
_Label_1337:
	.byte	'?'
	.ascii	"_temp_1281\0"
	.align
_Label_1338:
	.byte	'?'
	.ascii	"_temp_1278\0"
	.align
_Label_1339:
	.byte	'?'
	.ascii	"_temp_1277\0"
	.align
_Label_1340:
	.byte	'?'
	.ascii	"_temp_1276\0"
	.align
_Label_1341:
	.byte	'?'
	.ascii	"_temp_1275\0"
	.align
_Label_1342:
	.byte	'?'
	.ascii	"_temp_1274\0"
	.align
_Label_1343:
	.byte	'?'
	.ascii	"_temp_1273\0"
	.align
_Label_1344:
	.byte	'?'
	.ascii	"_temp_1272\0"
	.align
_Label_1345:
	.byte	'?'
	.ascii	"_temp_1271\0"
	.align
_Label_1346:
	.byte	'?'
	.ascii	"_temp_1270\0"
	.align
_Label_1347:
	.byte	'?'
	.ascii	"_temp_1269\0"
	.align
_Label_1348:
	.byte	'?'
	.ascii	"_temp_1268\0"
	.align
_Label_1349:
	.byte	'?'
	.ascii	"_temp_1267\0"
	.align
_Label_1350:
	.byte	'?'
	.ascii	"_temp_1266\0"
	.align
_Label_1351:
	.byte	'?'
	.ascii	"_temp_1265\0"
	.align
_Label_1352:
	.byte	'?'
	.ascii	"_temp_1264\0"
	.align
_Label_1353:
	.byte	'?'
	.ascii	"_temp_1263\0"
	.align
_Label_1354:
	.byte	'?'
	.ascii	"_temp_1258\0"
	.align
_Label_1355:
	.byte	'?'
	.ascii	"_temp_1257\0"
	.align
_Label_1356:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD ExtractFrameAddr  ===============
! 
_Method_P_Kernel_AddrSpace_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_3,r1
	push	r1
	mov	4,r1
_Label_1769:
	push	r0
	sub	r1,1,r1
	bne	_Label_1769
	mov	1151,r13		! source line 1151
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1156,r13		! source line 1156
	mov	"\0\0RE",r10
!   _temp_1359 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1359 [entry ] into _temp_1360
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1358 = *_temp_1360  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1357 = _temp_1358 AND -8192		(int)
	load	[r14+-20],r1
	mov	-8192,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_1357  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_3:
	.word	_sourceFileName
	.word	_Label_1361
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1362
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1363
	.word	12
	.word	4
	.word	_Label_1364
	.word	-12
	.word	4
	.word	_Label_1365
	.word	-16
	.word	4
	.word	_Label_1366
	.word	-20
	.word	4
	.word	_Label_1367
	.word	-24
	.word	4
	.word	0
_Label_1361:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractFrameAddr\0"
	.align
_Label_1362:
	.ascii	"Pself\0"
	.align
_Label_1363:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1364:
	.byte	'?'
	.ascii	"_temp_1360\0"
	.align
_Label_1365:
	.byte	'?'
	.ascii	"_temp_1359\0"
	.align
_Label_1366:
	.byte	'?'
	.ascii	"_temp_1358\0"
	.align
_Label_1367:
	.byte	'?'
	.ascii	"_temp_1357\0"
	.align
! 
! ===============  METHOD ExtractUndefinedBits  ===============
! 
_Method_P_Kernel_AddrSpace_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_4,r1
	push	r1
	mov	4,r1
_Label_1770:
	push	r0
	sub	r1,1,r1
	bne	_Label_1770
	mov	1161,r13		! source line 1161
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1165,r13		! source line 1165
	mov	"\0\0RE",r10
!   _temp_1370 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1370 [entry ] into _temp_1371
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1369 = *_temp_1371  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1368 = _temp_1369 AND 8176		(int)
	load	[r14+-20],r1
	mov	8176,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_1368  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_4:
	.word	_sourceFileName
	.word	_Label_1372
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1373
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1374
	.word	12
	.word	4
	.word	_Label_1375
	.word	-12
	.word	4
	.word	_Label_1376
	.word	-16
	.word	4
	.word	_Label_1377
	.word	-20
	.word	4
	.word	_Label_1378
	.word	-24
	.word	4
	.word	0
_Label_1372:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractUndefinedBits\0"
	.align
_Label_1373:
	.ascii	"Pself\0"
	.align
_Label_1374:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1375:
	.byte	'?'
	.ascii	"_temp_1371\0"
	.align
_Label_1376:
	.byte	'?'
	.ascii	"_temp_1370\0"
	.align
_Label_1377:
	.byte	'?'
	.ascii	"_temp_1369\0"
	.align
_Label_1378:
	.byte	'?'
	.ascii	"_temp_1368\0"
	.align
! 
! ===============  METHOD SetFrameAddr  ===============
! 
_Method_P_Kernel_AddrSpace_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_5,r1
	push	r1
	mov	7,r1
_Label_1771:
	push	r0
	sub	r1,1,r1
	bne	_Label_1771
	mov	1170,r13		! source line 1170
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1175,r13		! source line 1175
	mov	"\0\0AS",r10
!   _temp_1379 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-36]
!   Move address of _temp_1379 [entry ] into _temp_1380
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   _temp_1384 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1384 [entry ] into _temp_1385
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1383 = *_temp_1385  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1382 = _temp_1383 AND 8191		(int)
	load	[r14+-20],r1
	mov	8191,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   _temp_1381 = _temp_1382 OR frameAddr		(int)
	load	[r14+-24],r1
	load	[r14+16],r2
	or	r1,r2,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1380 = _temp_1381  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r14+-32],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1175,r13		! source line 1175
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_5:
	.word	_sourceFileName
	.word	_Label_1386
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1387
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1388
	.word	12
	.word	4
	.word	_Label_1389
	.word	16
	.word	4
	.word	_Label_1390
	.word	-12
	.word	4
	.word	_Label_1391
	.word	-16
	.word	4
	.word	_Label_1392
	.word	-20
	.word	4
	.word	_Label_1393
	.word	-24
	.word	4
	.word	_Label_1394
	.word	-28
	.word	4
	.word	_Label_1395
	.word	-32
	.word	4
	.word	_Label_1396
	.word	-36
	.word	4
	.word	0
_Label_1386:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetFrameAddr\0"
	.align
_Label_1387:
	.ascii	"Pself\0"
	.align
_Label_1388:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1389:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_1390:
	.byte	'?'
	.ascii	"_temp_1385\0"
	.align
_Label_1391:
	.byte	'?'
	.ascii	"_temp_1384\0"
	.align
_Label_1392:
	.byte	'?'
	.ascii	"_temp_1383\0"
	.align
_Label_1393:
	.byte	'?'
	.ascii	"_temp_1382\0"
	.align
_Label_1394:
	.byte	'?'
	.ascii	"_temp_1381\0"
	.align
_Label_1395:
	.byte	'?'
	.ascii	"_temp_1380\0"
	.align
_Label_1396:
	.byte	'?'
	.ascii	"_temp_1379\0"
	.align
! 
! ===============  METHOD IsDirty  ===============
! 
_Method_P_Kernel_AddrSpace_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_6,r1
	push	r1
	mov	5,r1
_Label_1772:
	push	r0
	sub	r1,1,r1
	bne	_Label_1772
	mov	1180,r13		! source line 1180
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1184,r13		! source line 1184
	mov	"\0\0RE",r10
!   _temp_1400 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1400 [entry ] into _temp_1401
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_1399 = *_temp_1401  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1398 = _temp_1399 AND 8		(int)
	load	[r14+-24],r1
	mov	8,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1398) then goto _Label_1402
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1402
!   _temp_1397 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1403
_Label_1402:
!   _temp_1397 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1403:
!   ReturnResult: _temp_1397  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_6:
	.word	_sourceFileName
	.word	_Label_1404
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1405
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1406
	.word	12
	.word	4
	.word	_Label_1407
	.word	-16
	.word	4
	.word	_Label_1408
	.word	-20
	.word	4
	.word	_Label_1409
	.word	-24
	.word	4
	.word	_Label_1410
	.word	-28
	.word	4
	.word	_Label_1411
	.word	-9
	.word	1
	.word	0
_Label_1404:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsDirty\0"
	.align
_Label_1405:
	.ascii	"Pself\0"
	.align
_Label_1406:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1407:
	.byte	'?'
	.ascii	"_temp_1401\0"
	.align
_Label_1408:
	.byte	'?'
	.ascii	"_temp_1400\0"
	.align
_Label_1409:
	.byte	'?'
	.ascii	"_temp_1399\0"
	.align
_Label_1410:
	.byte	'?'
	.ascii	"_temp_1398\0"
	.align
_Label_1411:
	.byte	'C'
	.ascii	"_temp_1397\0"
	.align
! 
! ===============  METHOD IsReferenced  ===============
! 
_Method_P_Kernel_AddrSpace_7:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_7,r1
	push	r1
	mov	5,r1
_Label_1773:
	push	r0
	sub	r1,1,r1
	bne	_Label_1773
	mov	1189,r13		! source line 1189
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1193,r13		! source line 1193
	mov	"\0\0RE",r10
!   _temp_1415 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1415 [entry ] into _temp_1416
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_1414 = *_temp_1416  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1413 = _temp_1414 AND 4		(int)
	load	[r14+-24],r1
	mov	4,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1413) then goto _Label_1417
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1417
!   _temp_1412 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1418
_Label_1417:
!   _temp_1412 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1418:
!   ReturnResult: _temp_1412  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_7:
	.word	_sourceFileName
	.word	_Label_1419
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1420
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1421
	.word	12
	.word	4
	.word	_Label_1422
	.word	-16
	.word	4
	.word	_Label_1423
	.word	-20
	.word	4
	.word	_Label_1424
	.word	-24
	.word	4
	.word	_Label_1425
	.word	-28
	.word	4
	.word	_Label_1426
	.word	-9
	.word	1
	.word	0
_Label_1419:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsReferenced\0"
	.align
_Label_1420:
	.ascii	"Pself\0"
	.align
_Label_1421:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1422:
	.byte	'?'
	.ascii	"_temp_1416\0"
	.align
_Label_1423:
	.byte	'?'
	.ascii	"_temp_1415\0"
	.align
_Label_1424:
	.byte	'?'
	.ascii	"_temp_1414\0"
	.align
_Label_1425:
	.byte	'?'
	.ascii	"_temp_1413\0"
	.align
_Label_1426:
	.byte	'C'
	.ascii	"_temp_1412\0"
	.align
! 
! ===============  METHOD IsWritable  ===============
! 
_Method_P_Kernel_AddrSpace_8:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_8,r1
	push	r1
	mov	5,r1
_Label_1774:
	push	r0
	sub	r1,1,r1
	bne	_Label_1774
	mov	1198,r13		! source line 1198
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1202,r13		! source line 1202
	mov	"\0\0RE",r10
!   _temp_1430 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1430 [entry ] into _temp_1431
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_1429 = *_temp_1431  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1428 = _temp_1429 AND 2		(int)
	load	[r14+-24],r1
	mov	2,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1428) then goto _Label_1432
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1432
!   _temp_1427 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1433
_Label_1432:
!   _temp_1427 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1433:
!   ReturnResult: _temp_1427  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_8:
	.word	_sourceFileName
	.word	_Label_1434
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1435
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1436
	.word	12
	.word	4
	.word	_Label_1437
	.word	-16
	.word	4
	.word	_Label_1438
	.word	-20
	.word	4
	.word	_Label_1439
	.word	-24
	.word	4
	.word	_Label_1440
	.word	-28
	.word	4
	.word	_Label_1441
	.word	-9
	.word	1
	.word	0
_Label_1434:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsWritable\0"
	.align
_Label_1435:
	.ascii	"Pself\0"
	.align
_Label_1436:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1437:
	.byte	'?'
	.ascii	"_temp_1431\0"
	.align
_Label_1438:
	.byte	'?'
	.ascii	"_temp_1430\0"
	.align
_Label_1439:
	.byte	'?'
	.ascii	"_temp_1429\0"
	.align
_Label_1440:
	.byte	'?'
	.ascii	"_temp_1428\0"
	.align
_Label_1441:
	.byte	'C'
	.ascii	"_temp_1427\0"
	.align
! 
! ===============  METHOD IsValid  ===============
! 
_Method_P_Kernel_AddrSpace_9:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_9,r1
	push	r1
	mov	5,r1
_Label_1775:
	push	r0
	sub	r1,1,r1
	bne	_Label_1775
	mov	1207,r13		! source line 1207
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1211,r13		! source line 1211
	mov	"\0\0RE",r10
!   _temp_1445 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1445 [entry ] into _temp_1446
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_1444 = *_temp_1446  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1443 = _temp_1444 AND 1		(int)
	load	[r14+-24],r1
	mov	1,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1443) then goto _Label_1447
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1447
!   _temp_1442 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1448
_Label_1447:
!   _temp_1442 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1448:
!   ReturnResult: _temp_1442  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_9:
	.word	_sourceFileName
	.word	_Label_1449
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1450
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1451
	.word	12
	.word	4
	.word	_Label_1452
	.word	-16
	.word	4
	.word	_Label_1453
	.word	-20
	.word	4
	.word	_Label_1454
	.word	-24
	.word	4
	.word	_Label_1455
	.word	-28
	.word	4
	.word	_Label_1456
	.word	-9
	.word	1
	.word	0
_Label_1449:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsValid\0"
	.align
_Label_1450:
	.ascii	"Pself\0"
	.align
_Label_1451:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1452:
	.byte	'?'
	.ascii	"_temp_1446\0"
	.align
_Label_1453:
	.byte	'?'
	.ascii	"_temp_1445\0"
	.align
_Label_1454:
	.byte	'?'
	.ascii	"_temp_1444\0"
	.align
_Label_1455:
	.byte	'?'
	.ascii	"_temp_1443\0"
	.align
_Label_1456:
	.byte	'C'
	.ascii	"_temp_1442\0"
	.align
! 
! ===============  METHOD SetDirty  ===============
! 
_Method_P_Kernel_AddrSpace_10:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_10,r1
	push	r1
	mov	6,r1
_Label_1776:
	push	r0
	sub	r1,1,r1
	bne	_Label_1776
	mov	1216,r13		! source line 1216
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1220,r13		! source line 1220
	mov	"\0\0AS",r10
!   _temp_1457 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1457 [entry ] into _temp_1458
!     make sure index expr is >= 0
	load	[r14+12],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1461 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1461 [entry ] into _temp_1462
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1460 = *_temp_1462  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1459 = _temp_1460 OR 8		(int)
	load	[r14+-20],r1
	mov	8,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1458 = _temp_1459  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1220,r13		! source line 1220
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_10:
	.word	_sourceFileName
	.word	_Label_1463
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1464
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1465
	.word	12
	.word	4
	.word	_Label_1466
	.word	-12
	.word	4
	.word	_Label_1467
	.word	-16
	.word	4
	.word	_Label_1468
	.word	-20
	.word	4
	.word	_Label_1469
	.word	-24
	.word	4
	.word	_Label_1470
	.word	-28
	.word	4
	.word	_Label_1471
	.word	-32
	.word	4
	.word	0
_Label_1463:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetDirty\0"
	.align
_Label_1464:
	.ascii	"Pself\0"
	.align
_Label_1465:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1466:
	.byte	'?'
	.ascii	"_temp_1462\0"
	.align
_Label_1467:
	.byte	'?'
	.ascii	"_temp_1461\0"
	.align
_Label_1468:
	.byte	'?'
	.ascii	"_temp_1460\0"
	.align
_Label_1469:
	.byte	'?'
	.ascii	"_temp_1459\0"
	.align
_Label_1470:
	.byte	'?'
	.ascii	"_temp_1458\0"
	.align
_Label_1471:
	.byte	'?'
	.ascii	"_temp_1457\0"
	.align
! 
! ===============  METHOD SetReferenced  ===============
! 
_Method_P_Kernel_AddrSpace_11:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_11,r1
	push	r1
	mov	6,r1
_Label_1777:
	push	r0
	sub	r1,1,r1
	bne	_Label_1777
	mov	1225,r13		! source line 1225
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1229,r13		! source line 1229
	mov	"\0\0AS",r10
!   _temp_1472 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1472 [entry ] into _temp_1473
!     make sure index expr is >= 0
	load	[r14+12],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1476 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1476 [entry ] into _temp_1477
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1475 = *_temp_1477  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1474 = _temp_1475 OR 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1473 = _temp_1474  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1229,r13		! source line 1229
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_11:
	.word	_sourceFileName
	.word	_Label_1478
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1479
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1480
	.word	12
	.word	4
	.word	_Label_1481
	.word	-12
	.word	4
	.word	_Label_1482
	.word	-16
	.word	4
	.word	_Label_1483
	.word	-20
	.word	4
	.word	_Label_1484
	.word	-24
	.word	4
	.word	_Label_1485
	.word	-28
	.word	4
	.word	_Label_1486
	.word	-32
	.word	4
	.word	0
_Label_1478:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetReferenced\0"
	.align
_Label_1479:
	.ascii	"Pself\0"
	.align
_Label_1480:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1481:
	.byte	'?'
	.ascii	"_temp_1477\0"
	.align
_Label_1482:
	.byte	'?'
	.ascii	"_temp_1476\0"
	.align
_Label_1483:
	.byte	'?'
	.ascii	"_temp_1475\0"
	.align
_Label_1484:
	.byte	'?'
	.ascii	"_temp_1474\0"
	.align
_Label_1485:
	.byte	'?'
	.ascii	"_temp_1473\0"
	.align
_Label_1486:
	.byte	'?'
	.ascii	"_temp_1472\0"
	.align
! 
! ===============  METHOD SetWritable  ===============
! 
_Method_P_Kernel_AddrSpace_12:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_12,r1
	push	r1
	mov	6,r1
_Label_1778:
	push	r0
	sub	r1,1,r1
	bne	_Label_1778
	mov	1234,r13		! source line 1234
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1238,r13		! source line 1238
	mov	"\0\0AS",r10
!   _temp_1487 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1487 [entry ] into _temp_1488
!     make sure index expr is >= 0
	load	[r14+12],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1491 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1491 [entry ] into _temp_1492
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1490 = *_temp_1492  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1489 = _temp_1490 OR 2		(int)
	load	[r14+-20],r1
	mov	2,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1488 = _temp_1489  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1238,r13		! source line 1238
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_12:
	.word	_sourceFileName
	.word	_Label_1493
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1494
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1495
	.word	12
	.word	4
	.word	_Label_1496
	.word	-12
	.word	4
	.word	_Label_1497
	.word	-16
	.word	4
	.word	_Label_1498
	.word	-20
	.word	4
	.word	_Label_1499
	.word	-24
	.word	4
	.word	_Label_1500
	.word	-28
	.word	4
	.word	_Label_1501
	.word	-32
	.word	4
	.word	0
_Label_1493:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetWritable\0"
	.align
_Label_1494:
	.ascii	"Pself\0"
	.align
_Label_1495:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1496:
	.byte	'?'
	.ascii	"_temp_1492\0"
	.align
_Label_1497:
	.byte	'?'
	.ascii	"_temp_1491\0"
	.align
_Label_1498:
	.byte	'?'
	.ascii	"_temp_1490\0"
	.align
_Label_1499:
	.byte	'?'
	.ascii	"_temp_1489\0"
	.align
_Label_1500:
	.byte	'?'
	.ascii	"_temp_1488\0"
	.align
_Label_1501:
	.byte	'?'
	.ascii	"_temp_1487\0"
	.align
! 
! ===============  METHOD SetValid  ===============
! 
_Method_P_Kernel_AddrSpace_13:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_13,r1
	push	r1
	mov	6,r1
_Label_1779:
	push	r0
	sub	r1,1,r1
	bne	_Label_1779
	mov	1243,r13		! source line 1243
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1247,r13		! source line 1247
	mov	"\0\0AS",r10
!   _temp_1502 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1502 [entry ] into _temp_1503
!     make sure index expr is >= 0
	load	[r14+12],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1506 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1506 [entry ] into _temp_1507
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1505 = *_temp_1507  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1504 = _temp_1505 OR 1		(int)
	load	[r14+-20],r1
	mov	1,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1503 = _temp_1504  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1247,r13		! source line 1247
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_13:
	.word	_sourceFileName
	.word	_Label_1508
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1509
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1510
	.word	12
	.word	4
	.word	_Label_1511
	.word	-12
	.word	4
	.word	_Label_1512
	.word	-16
	.word	4
	.word	_Label_1513
	.word	-20
	.word	4
	.word	_Label_1514
	.word	-24
	.word	4
	.word	_Label_1515
	.word	-28
	.word	4
	.word	_Label_1516
	.word	-32
	.word	4
	.word	0
_Label_1508:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetValid\0"
	.align
_Label_1509:
	.ascii	"Pself\0"
	.align
_Label_1510:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1511:
	.byte	'?'
	.ascii	"_temp_1507\0"
	.align
_Label_1512:
	.byte	'?'
	.ascii	"_temp_1506\0"
	.align
_Label_1513:
	.byte	'?'
	.ascii	"_temp_1505\0"
	.align
_Label_1514:
	.byte	'?'
	.ascii	"_temp_1504\0"
	.align
_Label_1515:
	.byte	'?'
	.ascii	"_temp_1503\0"
	.align
_Label_1516:
	.byte	'?'
	.ascii	"_temp_1502\0"
	.align
! 
! ===============  METHOD ClearDirty  ===============
! 
_Method_P_Kernel_AddrSpace_14:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_14,r1
	push	r1
	mov	6,r1
_Label_1780:
	push	r0
	sub	r1,1,r1
	bne	_Label_1780
	mov	1252,r13		! source line 1252
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1256,r13		! source line 1256
	mov	"\0\0AS",r10
!   _temp_1517 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1517 [entry ] into _temp_1518
!     make sure index expr is >= 0
	load	[r14+12],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1521 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1521 [entry ] into _temp_1522
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1520 = *_temp_1522  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1519 = _temp_1520 AND -9		(int)
	load	[r14+-20],r1
	mov	-9,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1518 = _temp_1519  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1256,r13		! source line 1256
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_14:
	.word	_sourceFileName
	.word	_Label_1523
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1524
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1525
	.word	12
	.word	4
	.word	_Label_1526
	.word	-12
	.word	4
	.word	_Label_1527
	.word	-16
	.word	4
	.word	_Label_1528
	.word	-20
	.word	4
	.word	_Label_1529
	.word	-24
	.word	4
	.word	_Label_1530
	.word	-28
	.word	4
	.word	_Label_1531
	.word	-32
	.word	4
	.word	0
_Label_1523:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearDirty\0"
	.align
_Label_1524:
	.ascii	"Pself\0"
	.align
_Label_1525:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1526:
	.byte	'?'
	.ascii	"_temp_1522\0"
	.align
_Label_1527:
	.byte	'?'
	.ascii	"_temp_1521\0"
	.align
_Label_1528:
	.byte	'?'
	.ascii	"_temp_1520\0"
	.align
_Label_1529:
	.byte	'?'
	.ascii	"_temp_1519\0"
	.align
_Label_1530:
	.byte	'?'
	.ascii	"_temp_1518\0"
	.align
_Label_1531:
	.byte	'?'
	.ascii	"_temp_1517\0"
	.align
! 
! ===============  METHOD ClearReferenced  ===============
! 
_Method_P_Kernel_AddrSpace_15:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_15,r1
	push	r1
	mov	6,r1
_Label_1781:
	push	r0
	sub	r1,1,r1
	bne	_Label_1781
	mov	1261,r13		! source line 1261
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1265,r13		! source line 1265
	mov	"\0\0AS",r10
!   _temp_1532 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1532 [entry ] into _temp_1533
!     make sure index expr is >= 0
	load	[r14+12],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1536 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1536 [entry ] into _temp_1537
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1535 = *_temp_1537  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1534 = _temp_1535 AND -5		(int)
	load	[r14+-20],r1
	mov	-5,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1533 = _temp_1534  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1265,r13		! source line 1265
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_15:
	.word	_sourceFileName
	.word	_Label_1538
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1539
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1540
	.word	12
	.word	4
	.word	_Label_1541
	.word	-12
	.word	4
	.word	_Label_1542
	.word	-16
	.word	4
	.word	_Label_1543
	.word	-20
	.word	4
	.word	_Label_1544
	.word	-24
	.word	4
	.word	_Label_1545
	.word	-28
	.word	4
	.word	_Label_1546
	.word	-32
	.word	4
	.word	0
_Label_1538:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearReferenced\0"
	.align
_Label_1539:
	.ascii	"Pself\0"
	.align
_Label_1540:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1541:
	.byte	'?'
	.ascii	"_temp_1537\0"
	.align
_Label_1542:
	.byte	'?'
	.ascii	"_temp_1536\0"
	.align
_Label_1543:
	.byte	'?'
	.ascii	"_temp_1535\0"
	.align
_Label_1544:
	.byte	'?'
	.ascii	"_temp_1534\0"
	.align
_Label_1545:
	.byte	'?'
	.ascii	"_temp_1533\0"
	.align
_Label_1546:
	.byte	'?'
	.ascii	"_temp_1532\0"
	.align
! 
! ===============  METHOD ClearWritable  ===============
! 
_Method_P_Kernel_AddrSpace_16:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_16,r1
	push	r1
	mov	6,r1
_Label_1782:
	push	r0
	sub	r1,1,r1
	bne	_Label_1782
	mov	1270,r13		! source line 1270
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1274,r13		! source line 1274
	mov	"\0\0AS",r10
!   _temp_1547 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1547 [entry ] into _temp_1548
!     make sure index expr is >= 0
	load	[r14+12],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1551 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1551 [entry ] into _temp_1552
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1550 = *_temp_1552  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1549 = _temp_1550 AND -3		(int)
	load	[r14+-20],r1
	mov	-3,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1548 = _temp_1549  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1274,r13		! source line 1274
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_16:
	.word	_sourceFileName
	.word	_Label_1553
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1554
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1555
	.word	12
	.word	4
	.word	_Label_1556
	.word	-12
	.word	4
	.word	_Label_1557
	.word	-16
	.word	4
	.word	_Label_1558
	.word	-20
	.word	4
	.word	_Label_1559
	.word	-24
	.word	4
	.word	_Label_1560
	.word	-28
	.word	4
	.word	_Label_1561
	.word	-32
	.word	4
	.word	0
_Label_1553:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearWritable\0"
	.align
_Label_1554:
	.ascii	"Pself\0"
	.align
_Label_1555:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1556:
	.byte	'?'
	.ascii	"_temp_1552\0"
	.align
_Label_1557:
	.byte	'?'
	.ascii	"_temp_1551\0"
	.align
_Label_1558:
	.byte	'?'
	.ascii	"_temp_1550\0"
	.align
_Label_1559:
	.byte	'?'
	.ascii	"_temp_1549\0"
	.align
_Label_1560:
	.byte	'?'
	.ascii	"_temp_1548\0"
	.align
_Label_1561:
	.byte	'?'
	.ascii	"_temp_1547\0"
	.align
! 
! ===============  METHOD ClearValid  ===============
! 
_Method_P_Kernel_AddrSpace_17:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_17,r1
	push	r1
	mov	6,r1
_Label_1783:
	push	r0
	sub	r1,1,r1
	bne	_Label_1783
	mov	1279,r13		! source line 1279
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1283,r13		! source line 1283
	mov	"\0\0AS",r10
!   _temp_1562 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1562 [entry ] into _temp_1563
!     make sure index expr is >= 0
	load	[r14+12],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1566 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1566 [entry ] into _temp_1567
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1565 = *_temp_1567  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1564 = _temp_1565 AND -2		(int)
	load	[r14+-20],r1
	mov	-2,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1563 = _temp_1564  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1283,r13		! source line 1283
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_17:
	.word	_sourceFileName
	.word	_Label_1568
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1569
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1570
	.word	12
	.word	4
	.word	_Label_1571
	.word	-12
	.word	4
	.word	_Label_1572
	.word	-16
	.word	4
	.word	_Label_1573
	.word	-20
	.word	4
	.word	_Label_1574
	.word	-24
	.word	4
	.word	_Label_1575
	.word	-28
	.word	4
	.word	_Label_1576
	.word	-32
	.word	4
	.word	0
_Label_1568:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearValid\0"
	.align
_Label_1569:
	.ascii	"Pself\0"
	.align
_Label_1570:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1571:
	.byte	'?'
	.ascii	"_temp_1567\0"
	.align
_Label_1572:
	.byte	'?'
	.ascii	"_temp_1566\0"
	.align
_Label_1573:
	.byte	'?'
	.ascii	"_temp_1565\0"
	.align
_Label_1574:
	.byte	'?'
	.ascii	"_temp_1564\0"
	.align
_Label_1575:
	.byte	'?'
	.ascii	"_temp_1563\0"
	.align
_Label_1576:
	.byte	'?'
	.ascii	"_temp_1562\0"
	.align
! 
! ===============  METHOD SetToThisPageTable  ===============
! 
_Method_P_Kernel_AddrSpace_18:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_18,r1
	push	r1
	mov	6,r1
_Label_1784:
	push	r0
	sub	r1,1,r1
	bne	_Label_1784
	mov	1288,r13		! source line 1288
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1578 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1578 [0 ] into _temp_1579
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   _temp_1577 = _temp_1579		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_1580 = numberOfPages * 4		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	4,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1577  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1580  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Call the function
	mov	1294,r13		! source line 1294
	mov	"\0\0CE",r10
	call	LoadPageTableRegs
! RETURN STATEMENT...
	mov	1294,r13		! source line 1294
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_18:
	.word	_sourceFileName
	.word	_Label_1581
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1582
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1583
	.word	-12
	.word	4
	.word	_Label_1584
	.word	-16
	.word	4
	.word	_Label_1585
	.word	-20
	.word	4
	.word	_Label_1586
	.word	-24
	.word	4
	.word	0
_Label_1581:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetToThisPageTable\0"
	.align
_Label_1582:
	.ascii	"Pself\0"
	.align
_Label_1583:
	.byte	'?'
	.ascii	"_temp_1580\0"
	.align
_Label_1584:
	.byte	'?'
	.ascii	"_temp_1579\0"
	.align
_Label_1585:
	.byte	'?'
	.ascii	"_temp_1578\0"
	.align
_Label_1586:
	.byte	'?'
	.ascii	"_temp_1577\0"
	.align
! 
! ===============  METHOD CopyBytesFromVirtual  ===============
! 
_Method_P_Kernel_AddrSpace_19:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_19,r1
	push	r1
	mov	12,r1
_Label_1785:
	push	r0
	sub	r1,1,r1
	bne	_Label_1785
	mov	1299,r13		! source line 1299
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1314,r13		! source line 1314
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_1587
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_1587
	jmp	_Label_1588
_Label_1587:
! THEN...
	mov	1315,r13		! source line 1315
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1315,r13		! source line 1315
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_1589
_Label_1588:
! ELSE...
	mov	1316,r13		! source line 1316
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1316,r13		! source line 1316
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_1591		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1591
!	jmp	_Label_1590
_Label_1590:
! THEN...
	mov	1317,r13		! source line 1317
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1317,r13		! source line 1317
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1591:
! END IF...
_Label_1589:
! ASSIGNMENT STATEMENT...
	mov	1319,r13		! source line 1319
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+16],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1320,r13		! source line 1320
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+16],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1323,r13		! source line 1323
	mov	"\0\0WH",r10
_Label_1592:
!	jmp	_Label_1593
_Label_1593:
	mov	1323,r13		! source line 1323
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1324,r13		! source line 1324
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_1596		(int)
	load	[r14+-40],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_1596
!	jmp	_Label_1595
_Label_1595:
! THEN...
	mov	1325,r13		! source line 1325
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1597 = _StringConst_121
	set	_StringConst_121,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1597  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1325,r13		! source line 1325
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1326,r13		! source line 1326
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1596:
! IF STATEMENT...
	mov	1328,r13		! source line 1328
	mov	"\0\0IF",r10
	mov	1328,r13		! source line 1328
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1601) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1600  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_1600 then goto _Label_1599 else goto _Label_1598
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_1598
	jmp	_Label_1599
_Label_1598:
! THEN...
	mov	1329,r13		! source line 1329
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1602 = _StringConst_122
	set	_StringConst_122,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1602  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1329,r13		! source line 1329
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1330,r13		! source line 1330
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1599:
! ASSIGNMENT STATEMENT...
	mov	1332,r13		! source line 1332
	mov	"\0\0AS",r10
	mov	1332,r13		! source line 1332
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1604) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1603  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   fromAddr = _temp_1603 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! WHILE STATEMENT...
	mov	1334,r13		! source line 1334
	mov	"\0\0WH",r10
_Label_1605:
!   if offset >= 8192 then goto _Label_1607		(int)
	load	[r14+-44],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1607
!	jmp	_Label_1606
_Label_1606:
	mov	1334,r13		! source line 1334
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1337,r13		! source line 1337
	mov	"\0\0AS",r10
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (fromAddr) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1608 = *fromAddr  (sizeInBytes=1)
	load	[r14+-48],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *kernelAddr = _temp_1608  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+12],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1338,r13		! source line 1338
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1339,r13		! source line 1339
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+12],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+12]
! ASSIGNMENT STATEMENT...
	mov	1340,r13		! source line 1340
	mov	"\0\0AS",r10
!   fromAddr = fromAddr + 1		(int)
	load	[r14+-48],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! ASSIGNMENT STATEMENT...
	mov	1341,r13		! source line 1341
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	1342,r13		! source line 1342
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_1610		(int)
	load	[r14+-36],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_1610
!	jmp	_Label_1609
_Label_1609:
! THEN...
	mov	1343,r13		! source line 1343
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1343,r13		! source line 1343
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1610:
! END WHILE...
	jmp	_Label_1605
_Label_1607:
! ASSIGNMENT STATEMENT...
	mov	1346,r13		! source line 1346
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1347,r13		! source line 1347
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
! END WHILE...
	jmp	_Label_1592
_Label_1594:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_19:
	.word	_sourceFileName
	.word	_Label_1611
	.word	16		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_1612
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1613
	.word	12
	.word	4
	.word	_Label_1614
	.word	16
	.word	4
	.word	_Label_1615
	.word	20
	.word	4
	.word	_Label_1616
	.word	-9
	.word	1
	.word	_Label_1617
	.word	-16
	.word	4
	.word	_Label_1618
	.word	-20
	.word	4
	.word	_Label_1619
	.word	-24
	.word	4
	.word	_Label_1620
	.word	-28
	.word	4
	.word	_Label_1621
	.word	-10
	.word	1
	.word	_Label_1622
	.word	-32
	.word	4
	.word	_Label_1623
	.word	-36
	.word	4
	.word	_Label_1624
	.word	-40
	.word	4
	.word	_Label_1625
	.word	-44
	.word	4
	.word	_Label_1626
	.word	-48
	.word	4
	.word	0
_Label_1611:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesFromVirtual\0"
	.align
_Label_1612:
	.ascii	"Pself\0"
	.align
_Label_1613:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_1614:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1615:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_1616:
	.byte	'C'
	.ascii	"_temp_1608\0"
	.align
_Label_1617:
	.byte	'?'
	.ascii	"_temp_1604\0"
	.align
_Label_1618:
	.byte	'?'
	.ascii	"_temp_1603\0"
	.align
_Label_1619:
	.byte	'?'
	.ascii	"_temp_1602\0"
	.align
_Label_1620:
	.byte	'?'
	.ascii	"_temp_1601\0"
	.align
_Label_1621:
	.byte	'C'
	.ascii	"_temp_1600\0"
	.align
_Label_1622:
	.byte	'?'
	.ascii	"_temp_1597\0"
	.align
_Label_1623:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_1624:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_1625:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_1626:
	.byte	'I'
	.ascii	"fromAddr\0"
	.align
! 
! ===============  METHOD CopyBytesToVirtual  ===============
! 
_Method_P_Kernel_AddrSpace_20:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_20,r1
	push	r1
	mov	11,r1
_Label_1786:
	push	r0
	sub	r1,1,r1
	bne	_Label_1786
	mov	1353,r13		! source line 1353
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1364,r13		! source line 1364
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_1627
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_1627
	jmp	_Label_1628
_Label_1627:
! THEN...
	mov	1365,r13		! source line 1365
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1365,r13		! source line 1365
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_1629
_Label_1628:
! ELSE...
	mov	1366,r13		! source line 1366
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1366,r13		! source line 1366
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_1631		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1631
!	jmp	_Label_1630
_Label_1630:
! THEN...
	mov	1367,r13		! source line 1367
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1367,r13		! source line 1367
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1631:
! END IF...
_Label_1629:
! ASSIGNMENT STATEMENT...
	mov	1369,r13		! source line 1369
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+12],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1370,r13		! source line 1370
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+12],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! WHILE STATEMENT...
	mov	1371,r13		! source line 1371
	mov	"\0\0WH",r10
_Label_1632:
!	jmp	_Label_1633
_Label_1633:
	mov	1371,r13		! source line 1371
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1372,r13		! source line 1372
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_1638		(int)
	load	[r14+-36],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_1638
	jmp	_Label_1635
_Label_1638:
	mov	1373,r13		! source line 1373
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1640) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1639  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_1639 then goto _Label_1637 else goto _Label_1635
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_1635
	jmp	_Label_1637
_Label_1637:
	mov	1374,r13		! source line 1374
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_1642) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_1641  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_1641 then goto _Label_1636 else goto _Label_1635
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_1635
	jmp	_Label_1636
_Label_1635:
! THEN...
	mov	1375,r13		! source line 1375
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1375,r13		! source line 1375
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1636:
! ASSIGNMENT STATEMENT...
	mov	1377,r13		! source line 1377
	mov	"\0\0AS",r10
	mov	1377,r13		! source line 1377
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1644) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1643  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   destAddr = _temp_1643 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-40],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1378,r13		! source line 1378
	mov	"\0\0WH",r10
_Label_1645:
!   if offset >= 8192 then goto _Label_1647		(int)
	load	[r14+-40],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1647
!	jmp	_Label_1646
_Label_1646:
	mov	1378,r13		! source line 1378
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1379,r13		! source line 1379
	mov	"\0\0AS",r10
!   if intIsZero (destAddr) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1648 = *kernelAddr  (sizeInBytes=1)
	load	[r14+16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *destAddr = _temp_1648  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1380,r13		! source line 1380
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1381,r13		! source line 1381
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+16],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	1382,r13		! source line 1382
	mov	"\0\0AS",r10
!   destAddr = destAddr + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1383,r13		! source line 1383
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-32],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	1384,r13		! source line 1384
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_1650		(int)
	load	[r14+-32],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_1650
!	jmp	_Label_1649
_Label_1649:
! THEN...
	mov	1385,r13		! source line 1385
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1385,r13		! source line 1385
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1650:
! END WHILE...
	jmp	_Label_1645
_Label_1647:
! ASSIGNMENT STATEMENT...
	mov	1388,r13		! source line 1388
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1389,r13		! source line 1389
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
! END WHILE...
	jmp	_Label_1632
_Label_1634:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_20:
	.word	_sourceFileName
	.word	_Label_1651
	.word	16		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1652
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1653
	.word	12
	.word	4
	.word	_Label_1654
	.word	16
	.word	4
	.word	_Label_1655
	.word	20
	.word	4
	.word	_Label_1656
	.word	-9
	.word	1
	.word	_Label_1657
	.word	-16
	.word	4
	.word	_Label_1658
	.word	-20
	.word	4
	.word	_Label_1659
	.word	-24
	.word	4
	.word	_Label_1660
	.word	-10
	.word	1
	.word	_Label_1661
	.word	-28
	.word	4
	.word	_Label_1662
	.word	-11
	.word	1
	.word	_Label_1663
	.word	-32
	.word	4
	.word	_Label_1664
	.word	-36
	.word	4
	.word	_Label_1665
	.word	-40
	.word	4
	.word	_Label_1666
	.word	-44
	.word	4
	.word	0
_Label_1651:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesToVirtual\0"
	.align
_Label_1652:
	.ascii	"Pself\0"
	.align
_Label_1653:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1654:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_1655:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_1656:
	.byte	'C'
	.ascii	"_temp_1648\0"
	.align
_Label_1657:
	.byte	'?'
	.ascii	"_temp_1644\0"
	.align
_Label_1658:
	.byte	'?'
	.ascii	"_temp_1643\0"
	.align
_Label_1659:
	.byte	'?'
	.ascii	"_temp_1642\0"
	.align
_Label_1660:
	.byte	'C'
	.ascii	"_temp_1641\0"
	.align
_Label_1661:
	.byte	'?'
	.ascii	"_temp_1640\0"
	.align
_Label_1662:
	.byte	'C'
	.ascii	"_temp_1639\0"
	.align
_Label_1663:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_1664:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_1665:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_1666:
	.byte	'I'
	.ascii	"destAddr\0"
	.align
! 
! ===============  METHOD GetStringFromVirtual  ===============
! 
_Method_P_Kernel_AddrSpace_21:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_21,r1
	push	r1
	mov	13,r1
_Label_1787:
	push	r0
	sub	r1,1,r1
	bne	_Label_1787
	mov	1395,r13		! source line 1395
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1419,r13		! source line 1419
	mov	"\0\0IF",r10
	mov	1419,r13		! source line 1419
	mov	"\0\0SE",r10
!   _temp_1670 = &sourceSize
	add	r14,-44,r1
	store	r1,[r14+-36]
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_1671) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_1670  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=virtAddr  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+12]
!   Send message CopyBytesFromVirtual
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,76,r2
	call	r2
!   Retrieve Result: targetName=_temp_1669  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   if _temp_1669 >= 4 then goto _Label_1668		(int)
	load	[r14+-40],r1
	mov	4,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1668
!	jmp	_Label_1667
_Label_1667:
! THEN...
	mov	1422,r13		! source line 1422
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1422,r13		! source line 1422
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1668:
! IF STATEMENT...
	mov	1426,r13		! source line 1426
	mov	"\0\0IF",r10
!   if sourceSize <= maxSize then goto _Label_1673		(int)
	load	[r14+-44],r1
	load	[r14+20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1673
!	jmp	_Label_1672
_Label_1672:
! THEN...
	mov	1427,r13		! source line 1427
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1427,r13		! source line 1427
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1673:
! ASSIGNMENT STATEMENT...
	mov	1430,r13		! source line 1430
	mov	"\0\0AS",r10
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *kernelAddr = sourceSize  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+12],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1432,r13		! source line 1432
	mov	"\0\0RE",r10
	mov	1432,r13		! source line 1432
	mov	"\0\0SE",r10
!   _temp_1676 = kernelAddr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-20]
!   _temp_1675 = _temp_1676 + 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   _temp_1677 = virtAddr + 4		(int)
	load	[r14+16],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
	load	[r14+8],r1
	store	r1,[r14+-12]
!   if intIsZero (_temp_1678) then goto _runtimeErrorNullPointer
	load	[r14+-12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_1675  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_1677  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=sourceSize  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+12]
!   Send message CopyBytesFromVirtual
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,76,r2
	call	r2
!   Retrieve Result: targetName=_temp_1674  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_1674  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_21:
	.word	_sourceFileName
	.word	_Label_1679
	.word	16		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_1680
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1681
	.word	12
	.word	4
	.word	_Label_1682
	.word	16
	.word	4
	.word	_Label_1683
	.word	20
	.word	4
	.word	_Label_1684
	.word	-12
	.word	4
	.word	_Label_1685
	.word	-16
	.word	4
	.word	_Label_1686
	.word	-20
	.word	4
	.word	_Label_1687
	.word	-24
	.word	4
	.word	_Label_1688
	.word	-28
	.word	4
	.word	_Label_1689
	.word	-32
	.word	4
	.word	_Label_1690
	.word	-36
	.word	4
	.word	_Label_1691
	.word	-40
	.word	4
	.word	_Label_1692
	.word	-44
	.word	4
	.word	0
_Label_1679:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"GetStringFromVirtual\0"
	.align
_Label_1680:
	.ascii	"Pself\0"
	.align
_Label_1681:
	.byte	'P'
	.ascii	"kernelAddr\0"
	.align
_Label_1682:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1683:
	.byte	'I'
	.ascii	"maxSize\0"
	.align
_Label_1684:
	.byte	'?'
	.ascii	"_temp_1678\0"
	.align
_Label_1685:
	.byte	'?'
	.ascii	"_temp_1677\0"
	.align
_Label_1686:
	.byte	'?'
	.ascii	"_temp_1676\0"
	.align
_Label_1687:
	.byte	'?'
	.ascii	"_temp_1675\0"
	.align
_Label_1688:
	.byte	'?'
	.ascii	"_temp_1674\0"
	.align
_Label_1689:
	.byte	'?'
	.ascii	"_temp_1671\0"
	.align
_Label_1690:
	.byte	'?'
	.ascii	"_temp_1670\0"
	.align
_Label_1691:
	.byte	'?'
	.ascii	"_temp_1669\0"
	.align
_Label_1692:
	.byte	'I'
	.ascii	"sourceSize\0"
	.align
