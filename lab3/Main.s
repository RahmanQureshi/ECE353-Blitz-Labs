! Name of package being compiled: Main
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
	.import	_P_Thread_InitializeScheduler
	.import	_P_Thread_Run
	.import	_P_Thread_PrintReadyList
	.import	_P_Thread_ThreadStartMain
	.import	_P_Thread_ThreadFinish
	.import	_P_Thread_FatalError
	.import	_P_Thread_SetInterruptsTo
	.import	_P_Thread_TimerInterruptHandler
	.import	Switch
	.import	ThreadStartUp
! Externally visible functions in this package
	.export	_mainEntry
	.export	main
! The following class and its methods are from other packages
	.import	_P_System_Object
! The following class and its methods are from other packages
	.import	_P_List_List
! The following class and its methods are from other packages
	.import	_P_List_Listable
! The following class and its methods are from other packages
	.import	_P_Thread_Thread
! The following class and its methods are from other packages
	.import	_P_Synch_Semaphore
! The following class and its methods are from other packages
	.import	_P_Synch_Mutex
! The following class and its methods are from other packages
	.import	_P_Synch_Mutex2
! The following class and its methods are from other packages
	.import	_P_Synch_Condition
! The following class and its methods are from this package
	.export	_P_Main_ForkMonitor
	.export	_Method_P_Main_ForkMonitor_1
	.export	_Method_P_Main_ForkMonitor_2
	.export	_Method_P_Main_ForkMonitor_3
	.export	_Method_P_Main_ForkMonitor_4
! The following interfaces are from other packages
! The following interfaces are from this package
! Globals imported from other packages
	.import	_P_Thread_readyList
	.import	_P_Thread_currentThread
	.import	_P_Thread_mainThread
	.import	_P_Thread_idleThread
	.import	_P_Thread_threadsToBeDestroyed
	.import	_P_Thread_currentInterruptStatus
! Global variables in this package
	.data
_Global_mon:
	.skip	64
_Global_philospher:
! Static array
	.word	5		! number of elements
! Static object
	.word	_P_Thread_Thread
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
! Static object
	.word	_P_Thread_Thread
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
! Static object
	.word	_P_Thread_Thread
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
! Static object
	.word	_P_Thread_Thread
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
! Static object
	.word	_P_Thread_Thread
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.align
_Global_numWaitingCustomers:
	.skip	4
_Global_waitingCustomers:
	.skip	20
_Global_barberSem:
	.skip	20
_Global_access_lock:
	.skip	20
_Global_numCustomers:
	.skip	4
_Global_cuttingHair:
	.skip	20
_Global_doneCutting:
	.skip	20
_Global_gameAvailable:
	.skip	16
_Global_frontDesk:
	.skip	20
_Global_numDice:
	.skip	4
	.align
! String constants
_StringConst_50:
	.word	4			! length
	.ascii	".   "
	.align
_StringConst_49:
	.word	4			! length
	.ascii	"E   "
	.align
_StringConst_48:
	.word	4			! length
	.ascii	"    "
	.align
_StringConst_47:
	.word	9			! length
	.ascii	" returns "
	.align
_StringConst_46:
	.word	15			! length
	.ascii	" proceeds with "
	.align
_StringConst_45:
	.word	20			! length
	.ascii	"Num Dice Available: "
	.align
_StringConst_44:
	.word	10			! length
	.ascii	" requests "
	.align
_StringConst_43:
	.word	1			! length
	.ascii	"H"
	.align
_StringConst_42:
	.word	1			! length
	.ascii	"G"
	.align
_StringConst_41:
	.word	1			! length
	.ascii	"F"
	.align
_StringConst_40:
	.word	1			! length
	.ascii	"E"
	.align
_StringConst_39:
	.word	1			! length
	.ascii	"D"
	.align
_StringConst_38:
	.word	1			! length
	.ascii	"C"
	.align
_StringConst_37:
	.word	1			! length
	.ascii	"B"
	.align
_StringConst_36:
	.word	1			! length
	.ascii	"A"
	.align
_StringConst_35:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_34:
	.word	1			! length
	.ascii	" "
	.align
_StringConst_33:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_32:
	.word	1			! length
	.ascii	"-"
	.align
_StringConst_31:
	.word	1			! length
	.ascii	"X"
	.align
_StringConst_30:
	.word	7			! length
	.ascii	" End   "
	.align
_StringConst_29:
	.word	1			! length
	.ascii	" "
	.align
_StringConst_28:
	.word	8			! length
	.ascii	" BARBER "
	.align
_StringConst_27:
	.word	1			! length
	.ascii	" "
	.align
_StringConst_26:
	.word	6			! length
	.ascii	" START"
	.align
_StringConst_25:
	.word	1			! length
	.ascii	"L"
	.align
_StringConst_24:
	.word	1			! length
	.ascii	"F"
	.align
_StringConst_23:
	.word	1			! length
	.ascii	"B"
	.align
_StringConst_22:
	.word	1			! length
	.ascii	"S"
	.align
_StringConst_21:
	.word	1			! length
	.ascii	"E"
	.align
_StringConst_20:
	.word	1			! length
	.ascii	"8"
	.align
_StringConst_19:
	.word	1			! length
	.ascii	"7"
	.align
_StringConst_18:
	.word	1			! length
	.ascii	"6"
	.align
_StringConst_17:
	.word	1			! length
	.ascii	"5"
	.align
_StringConst_16:
	.word	1			! length
	.ascii	"4"
	.align
_StringConst_15:
	.word	1			! length
	.ascii	"3"
	.align
_StringConst_14:
	.word	1			! length
	.ascii	"2"
	.align
_StringConst_13:
	.word	1			! length
	.ascii	"1"
	.align
_StringConst_12:
	.word	1			! length
	.ascii	"B"
	.align
_StringConst_11:
	.word	27			! length
	.ascii	"RUNNING THE SLEEPING BARBER"
	.align
_StringConst_10:
	.word	9			! length
	.ascii	"Aristotle"
	.align
_StringConst_9:
	.word	9			! length
	.ascii	"Nietzsche"
	.align
_StringConst_8:
	.word	4			! length
	.ascii	"Kant"
	.align
_StringConst_7:
	.word	6			! length
	.ascii	"Sartre"
	.align
_StringConst_6:
	.word	5			! length
	.ascii	"Plato"
	.align
_StringConst_5:
	.word	26			! length
	.ascii	"                Aristotle\n"
	.align
_StringConst_4:
	.word	22			! length
	.ascii	"            Nietzsche\n"
	.align
_StringConst_3:
	.word	13			! length
	.ascii	"        Kant\n"
	.align
_StringConst_2:
	.word	11			! length
	.ascii	"    Sartre\n"
	.align
_StringConst_1:
	.word	6			! length
	.ascii	"Plato\n"
	.align
	.text
! 
! =====  MAIN ENTRY POINT  =====
! 
_mainEntry:
	set	_packageName,r2		! Get CheckVersion started
	set	0x87d0aa21,r3		! .  hashVal = -2016368095
	call	_CheckVersion_P_Main_	! .
	cmp	r1,0			! .
	be	_Label_69		! .
	ret				! .
_Label_69:				! .
	call	_heapInitialize
	jmp	main
! 
! Source Filename and Package Name
! 
_sourceFileName:
	.ascii	"Main.c\0"
_packageName:
	.ascii	"Main\0"
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
_CheckVersion_P_Main_:
	.export	_CheckVersion_P_Main_
	set	0x87d0aa21,r4		! myHashVal = -2016368095
	cmp	r3,r4
	be	_Label_70
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
_Label_70:
	mov	0,r1
! Make sure _P_System_ has hash value 0xfe42cccc (decimal -29176628)
	set	_packageName,r2
	set	0xfe42cccc,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_71
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_71
! Make sure _P_Thread_ has hash value 0xd98e6cc5 (decimal -644977467)
	set	_packageName,r2
	set	0xd98e6cc5,r3
	call	_CheckVersion_P_Thread_
	.import	_CheckVersion_P_Thread_
	cmp	r1,0
	bne	_Label_71
! Make sure _P_Synch_ has hash value 0x8e356f6d (decimal -1909100691)
	set	_packageName,r2
	set	0x8e356f6d,r3
	call	_CheckVersion_P_Synch_
	.import	_CheckVersion_P_Synch_
	cmp	r1,0
	bne	_Label_71
_Label_71:
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
	mov	12,r13		! source line 12
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	14,r13		! source line 14
	mov	"\0\0CA",r10
	call	_P_Thread_InitializeScheduler
! CALL STATEMENT...
!   Call the function
	mov	24,r13		! source line 24
	mov	"\0\0CA",r10
	call	_function_58_TheGamingParlor
! CALL STATEMENT...
!   Call the function
	mov	25,r13		! source line 25
	mov	"\0\0CA",r10
	call	_P_Thread_ThreadFinish
! RETURN STATEMENT...
	mov	25,r13		! source line 25
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor_main:
	.word	_sourceFileName
	.word	_Label_72
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_72:
	.ascii	"main\0"
	.align
! 
! ===============  FUNCTION DiningPhilosophers  ===============
! 
_function_68_DiningPhilosophers:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_68_DiningPhilosophers,r1
	push	r1
	mov	41,r1
_Label_795:
	push	r0
	sub	r1,1,r1
	bne	_Label_795
	mov	69,r13		! source line 69
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_73 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_73  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	71,r13		! source line 71
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_74 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_74  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	72,r13		! source line 72
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_75 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=8  value=_temp_75  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Call the function
	mov	73,r13		! source line 73
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_76 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_76  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	74,r13		! source line 74
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_77 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_77  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	75,r13		! source line 75
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	77,r13		! source line 77
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _Global_mon = zeros  (sizeInBytes=64)
	set	_Global_mon,r4
	mov	16,r3
_Label_796:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_796
!   _Global_mon = _P_Main_ForkMonitor
	set	_P_Main_ForkMonitor,r1
	set	_Global_mon,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	78,r13		! source line 78
	mov	"\0\0SE",r10
!   _temp_79 = &_Global_mon
	set	_Global_mon,r1
	store	r1,[r14+-136]
!   Send message Init
	load	[r14+-136],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	79,r13		! source line 79
	mov	"\0\0SE",r10
!   _temp_80 = &_Global_mon
	set	_Global_mon,r1
	store	r1,[r14+-132]
!   Send message PrintAllStatus
	load	[r14+-132],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! SEND STATEMENT...
	mov	81,r13		! source line 81
	mov	"\0\0SE",r10
!   _temp_81 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-128]
!   _temp_82 = &_Global_philospher
	set	_Global_philospher,r1
	store	r1,[r14+-124]
!   Move address of _temp_82 [0 ] into _temp_83
!     make sure index expr is >= 0
	mov	0,r2
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
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-120]
!   Prepare Argument: offset=12  value=_temp_81  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-120],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	82,r13		! source line 82
	mov	"\0\0SE",r10
!   _temp_84 = _function_67_PhilosphizeAndEat
	set	_function_67_PhilosphizeAndEat,r1
	store	r1,[r14+-116]
!   _temp_85 = &_Global_philospher
	set	_Global_philospher,r1
	store	r1,[r14+-112]
!   Move address of _temp_85 [0 ] into _temp_86
!     make sure index expr is >= 0
	mov	0,r2
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
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-108]
!   Prepare Argument: offset=12  value=_temp_84  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-108],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	84,r13		! source line 84
	mov	"\0\0SE",r10
!   _temp_87 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-104]
!   _temp_88 = &_Global_philospher
	set	_Global_philospher,r1
	store	r1,[r14+-100]
!   Move address of _temp_88 [1 ] into _temp_89
!     make sure index expr is >= 0
	mov	1,r2
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
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-96]
!   Prepare Argument: offset=12  value=_temp_87  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	85,r13		! source line 85
	mov	"\0\0SE",r10
!   _temp_90 = _function_67_PhilosphizeAndEat
	set	_function_67_PhilosphizeAndEat,r1
	store	r1,[r14+-92]
!   _temp_91 = &_Global_philospher
	set	_Global_philospher,r1
	store	r1,[r14+-88]
!   Move address of _temp_91 [1 ] into _temp_92
!     make sure index expr is >= 0
	mov	1,r2
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
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-84]
!   Prepare Argument: offset=12  value=_temp_90  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-84],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	87,r13		! source line 87
	mov	"\0\0SE",r10
!   _temp_93 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-80]
!   _temp_94 = &_Global_philospher
	set	_Global_philospher,r1
	store	r1,[r14+-76]
!   Move address of _temp_94 [2 ] into _temp_95
!     make sure index expr is >= 0
	mov	2,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-76],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_93  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	88,r13		! source line 88
	mov	"\0\0SE",r10
!   _temp_96 = _function_67_PhilosphizeAndEat
	set	_function_67_PhilosphizeAndEat,r1
	store	r1,[r14+-68]
!   _temp_97 = &_Global_philospher
	set	_Global_philospher,r1
	store	r1,[r14+-64]
!   Move address of _temp_97 [2 ] into _temp_98
!     make sure index expr is >= 0
	mov	2,r2
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
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-60]
!   Prepare Argument: offset=12  value=_temp_96  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	90,r13		! source line 90
	mov	"\0\0SE",r10
!   _temp_99 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-56]
!   _temp_100 = &_Global_philospher
	set	_Global_philospher,r1
	store	r1,[r14+-52]
!   Move address of _temp_100 [3 ] into _temp_101
!     make sure index expr is >= 0
	mov	3,r2
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
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_99  sizeInBytes=4
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
! SEND STATEMENT...
	mov	91,r13		! source line 91
	mov	"\0\0SE",r10
!   _temp_102 = _function_67_PhilosphizeAndEat
	set	_function_67_PhilosphizeAndEat,r1
	store	r1,[r14+-44]
!   _temp_103 = &_Global_philospher
	set	_Global_philospher,r1
	store	r1,[r14+-40]
!   Move address of _temp_103 [3 ] into _temp_104
!     make sure index expr is >= 0
	mov	3,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-40],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_102  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=3  sizeInBytes=4
	mov	3,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	93,r13		! source line 93
	mov	"\0\0SE",r10
!   _temp_105 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-32]
!   _temp_106 = &_Global_philospher
	set	_Global_philospher,r1
	store	r1,[r14+-28]
!   Move address of _temp_106 [4 ] into _temp_107
!     make sure index expr is >= 0
	mov	4,r2
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
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_105  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	94,r13		! source line 94
	mov	"\0\0SE",r10
!   _temp_108 = _function_67_PhilosphizeAndEat
	set	_function_67_PhilosphizeAndEat,r1
	store	r1,[r14+-20]
!   _temp_109 = &_Global_philospher
	set	_Global_philospher,r1
	store	r1,[r14+-16]
!   Move address of _temp_109 [4 ] into _temp_110
!     make sure index expr is >= 0
	mov	4,r2
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
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_108  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	94,r13		! source line 94
	mov	"\0\0RE",r10
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_68_DiningPhilosophers:
	.word	_sourceFileName
	.word	_Label_111
	.word	0		! total size of parameters
	.word	164		! frame size = 164
	.word	_Label_112
	.word	-12
	.word	4
	.word	_Label_113
	.word	-16
	.word	4
	.word	_Label_114
	.word	-20
	.word	4
	.word	_Label_115
	.word	-24
	.word	4
	.word	_Label_116
	.word	-28
	.word	4
	.word	_Label_117
	.word	-32
	.word	4
	.word	_Label_118
	.word	-36
	.word	4
	.word	_Label_119
	.word	-40
	.word	4
	.word	_Label_120
	.word	-44
	.word	4
	.word	_Label_121
	.word	-48
	.word	4
	.word	_Label_122
	.word	-52
	.word	4
	.word	_Label_123
	.word	-56
	.word	4
	.word	_Label_124
	.word	-60
	.word	4
	.word	_Label_125
	.word	-64
	.word	4
	.word	_Label_126
	.word	-68
	.word	4
	.word	_Label_127
	.word	-72
	.word	4
	.word	_Label_128
	.word	-76
	.word	4
	.word	_Label_129
	.word	-80
	.word	4
	.word	_Label_130
	.word	-84
	.word	4
	.word	_Label_131
	.word	-88
	.word	4
	.word	_Label_132
	.word	-92
	.word	4
	.word	_Label_133
	.word	-96
	.word	4
	.word	_Label_134
	.word	-100
	.word	4
	.word	_Label_135
	.word	-104
	.word	4
	.word	_Label_136
	.word	-108
	.word	4
	.word	_Label_137
	.word	-112
	.word	4
	.word	_Label_138
	.word	-116
	.word	4
	.word	_Label_139
	.word	-120
	.word	4
	.word	_Label_140
	.word	-124
	.word	4
	.word	_Label_141
	.word	-128
	.word	4
	.word	_Label_142
	.word	-132
	.word	4
	.word	_Label_143
	.word	-136
	.word	4
	.word	_Label_144
	.word	-140
	.word	4
	.word	_Label_145
	.word	-144
	.word	4
	.word	_Label_146
	.word	-148
	.word	4
	.word	_Label_147
	.word	-152
	.word	4
	.word	_Label_148
	.word	-156
	.word	4
	.word	_Label_149
	.word	-160
	.word	4
	.word	0
_Label_111:
	.ascii	"DiningPhilosophers\0"
	.align
_Label_112:
	.byte	'?'
	.ascii	"_temp_110\0"
	.align
_Label_113:
	.byte	'?'
	.ascii	"_temp_109\0"
	.align
_Label_114:
	.byte	'?'
	.ascii	"_temp_108\0"
	.align
_Label_115:
	.byte	'?'
	.ascii	"_temp_107\0"
	.align
_Label_116:
	.byte	'?'
	.ascii	"_temp_106\0"
	.align
_Label_117:
	.byte	'?'
	.ascii	"_temp_105\0"
	.align
_Label_118:
	.byte	'?'
	.ascii	"_temp_104\0"
	.align
_Label_119:
	.byte	'?'
	.ascii	"_temp_103\0"
	.align
_Label_120:
	.byte	'?'
	.ascii	"_temp_102\0"
	.align
_Label_121:
	.byte	'?'
	.ascii	"_temp_101\0"
	.align
_Label_122:
	.byte	'?'
	.ascii	"_temp_100\0"
	.align
_Label_123:
	.byte	'?'
	.ascii	"_temp_99\0"
	.align
_Label_124:
	.byte	'?'
	.ascii	"_temp_98\0"
	.align
_Label_125:
	.byte	'?'
	.ascii	"_temp_97\0"
	.align
_Label_126:
	.byte	'?'
	.ascii	"_temp_96\0"
	.align
_Label_127:
	.byte	'?'
	.ascii	"_temp_95\0"
	.align
_Label_128:
	.byte	'?'
	.ascii	"_temp_94\0"
	.align
_Label_129:
	.byte	'?'
	.ascii	"_temp_93\0"
	.align
_Label_130:
	.byte	'?'
	.ascii	"_temp_92\0"
	.align
_Label_131:
	.byte	'?'
	.ascii	"_temp_91\0"
	.align
_Label_132:
	.byte	'?'
	.ascii	"_temp_90\0"
	.align
_Label_133:
	.byte	'?'
	.ascii	"_temp_89\0"
	.align
_Label_134:
	.byte	'?'
	.ascii	"_temp_88\0"
	.align
_Label_135:
	.byte	'?'
	.ascii	"_temp_87\0"
	.align
_Label_136:
	.byte	'?'
	.ascii	"_temp_86\0"
	.align
_Label_137:
	.byte	'?'
	.ascii	"_temp_85\0"
	.align
_Label_138:
	.byte	'?'
	.ascii	"_temp_84\0"
	.align
_Label_139:
	.byte	'?'
	.ascii	"_temp_83\0"
	.align
_Label_140:
	.byte	'?'
	.ascii	"_temp_82\0"
	.align
_Label_141:
	.byte	'?'
	.ascii	"_temp_81\0"
	.align
_Label_142:
	.byte	'?'
	.ascii	"_temp_80\0"
	.align
_Label_143:
	.byte	'?'
	.ascii	"_temp_79\0"
	.align
_Label_144:
	.byte	'?'
	.ascii	"_temp_78\0"
	.align
_Label_145:
	.byte	'?'
	.ascii	"_temp_77\0"
	.align
_Label_146:
	.byte	'?'
	.ascii	"_temp_76\0"
	.align
_Label_147:
	.byte	'?'
	.ascii	"_temp_75\0"
	.align
_Label_148:
	.byte	'?'
	.ascii	"_temp_74\0"
	.align
_Label_149:
	.byte	'?'
	.ascii	"_temp_73\0"
	.align
! 
! ===============  FUNCTION PhilosphizeAndEat  ===============
! 
_function_67_PhilosphizeAndEat:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_67_PhilosphizeAndEat,r1
	push	r1
	mov	7,r1
_Label_797:
	push	r0
	sub	r1,1,r1
	bne	_Label_797
	mov	98,r13		! source line 98
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! FOR STATEMENT...
	mov	104,r13		! source line 104
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_154 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_155 = 7		(4 bytes)
	mov	7,r1
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_154  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-28]
_Label_150:
!   Perform the FOR-LOOP termination test
!   if i > _temp_155 then goto _Label_153		
	load	[r14+-28],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_153
_Label_151:
	mov	104,r13		! source line 104
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	106,r13		! source line 106
	mov	"\0\0SE",r10
!   _temp_156 = &_Global_mon
	set	_Global_mon,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Send message PickupForks
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	108,r13		! source line 108
	mov	"\0\0SE",r10
!   _temp_157 = &_Global_mon
	set	_Global_mon,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Send message PutDownForks
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_152:
!   i = i + 1
	load	[r14+-28],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
	jmp	_Label_150
! END FOR
_Label_153:
! RETURN STATEMENT...
	mov	104,r13		! source line 104
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_67_PhilosphizeAndEat:
	.word	_sourceFileName
	.word	_Label_158
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_159
	.word	8
	.word	4
	.word	_Label_160
	.word	-12
	.word	4
	.word	_Label_161
	.word	-16
	.word	4
	.word	_Label_162
	.word	-20
	.word	4
	.word	_Label_163
	.word	-24
	.word	4
	.word	_Label_164
	.word	-28
	.word	4
	.word	0
_Label_158:
	.ascii	"PhilosphizeAndEat\0"
	.align
_Label_159:
	.byte	'I'
	.ascii	"p\0"
	.align
_Label_160:
	.byte	'?'
	.ascii	"_temp_157\0"
	.align
_Label_161:
	.byte	'?'
	.ascii	"_temp_156\0"
	.align
_Label_162:
	.byte	'?'
	.ascii	"_temp_155\0"
	.align
_Label_163:
	.byte	'?'
	.ascii	"_temp_154\0"
	.align
_Label_164:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  FUNCTION TheSleepingBarber  ===============
! 
_function_66_TheSleepingBarber:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_66_TheSleepingBarber,r1
	push	r1
	mov	18487,r1
_Label_798:
	push	r0
	sub	r1,1,r1
	bne	_Label_798
	mov	207,r13		! source line 207
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! customers
!   NEW ARRAY Constructor...
!   _temp_166 = &_temp_165
	set	-37112,r1
	add	r14,r1,r1
	store	r1,[r14+-4372]
!   _temp_166 = _temp_166 + 4
	load	[r14+-4372],r1
	add	r1,4,r1
	store	r1,[r14+-4372]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_168 = zeros  (sizeInBytes=4092)
	add	r14,-4364,r4
	mov	1023,r3
_Label_799:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_799
!   _temp_168 = _P_Thread_Thread
	set	_P_Thread_Thread,r1
	store	r1,[r14+-4364]
	mov	8,r1
	store	r1,[r14+-4368]
_Label_170:
!   Data Move: *_temp_166 = _temp_168  (sizeInBytes=4092)
	add	r14,-4364,r5
	load	[r14+-4372],r4
	mov	1023,r3
_Label_800:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_800
!   _temp_166 = _temp_166 + 4092
	load	[r14+-4372],r1
	add	r1,4092,r1
	store	r1,[r14+-4372]
!   _temp_167 = _temp_167 + -1
	load	[r14+-4368],r1
	add	r1,-1,r1
	store	r1,[r14+-4368]
!   if intNotZero (_temp_167) then goto _Label_170
	load	[r14+-4368],r1
	cmp	r1,r0
	bne	_Label_170
!   Initialize the array size...
	mov	8,r1
	set	-37112,r2
	store	r1,[r14+r2]
!   _temp_171 = &_temp_165
	set	-37112,r1
	add	r14,r1,r1
	store	r1,[r14+-268]
!   make sure array has size 8
	load	[r14+-268],r1
	load	[r1],r1
	set	8, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: customers = *_temp_171  (sizeInBytes=32740)
	load	[r14+-268],r5
	set	-73944,r4
	add	r14,r4,r4
	mov	8185,r3
_Label_801:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_801
! ASSIGNMENT STATEMENT...
	mov	213,r13		! source line 213
	mov	"\0\0AS",r10
!   _Global_numCustomers = 8		(4 bytes)
	mov	8,r1
	set	_Global_numCustomers,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	214,r13		! source line 214
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _Global_waitingCustomers = zeros  (sizeInBytes=20)
	set	_Global_waitingCustomers,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   _Global_waitingCustomers = _P_Synch_Semaphore
	set	_P_Synch_Semaphore,r1
	set	_Global_waitingCustomers,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	215,r13		! source line 215
	mov	"\0\0SE",r10
!   _temp_173 = &_Global_waitingCustomers
	set	_Global_waitingCustomers,r1
	store	r1,[r14+-260]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-260],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	216,r13		! source line 216
	mov	"\0\0AS",r10
!   _Global_numWaitingCustomers = 0		(4 bytes)
	mov	0,r1
	set	_Global_numWaitingCustomers,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	217,r13		! source line 217
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _Global_barberSem = zeros  (sizeInBytes=20)
	set	_Global_barberSem,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   _Global_barberSem = _P_Synch_Semaphore
	set	_P_Synch_Semaphore,r1
	set	_Global_barberSem,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	218,r13		! source line 218
	mov	"\0\0SE",r10
!   _temp_175 = &_Global_barberSem
	set	_Global_barberSem,r1
	store	r1,[r14+-252]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-252],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	219,r13		! source line 219
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _Global_cuttingHair = zeros  (sizeInBytes=20)
	set	_Global_cuttingHair,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   _Global_cuttingHair = _P_Synch_Semaphore
	set	_P_Synch_Semaphore,r1
	set	_Global_cuttingHair,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	220,r13		! source line 220
	mov	"\0\0SE",r10
!   _temp_177 = &_Global_cuttingHair
	set	_Global_cuttingHair,r1
	store	r1,[r14+-244]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-244],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	221,r13		! source line 221
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _Global_doneCutting = zeros  (sizeInBytes=20)
	set	_Global_doneCutting,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   _Global_doneCutting = _P_Synch_Semaphore
	set	_P_Synch_Semaphore,r1
	set	_Global_doneCutting,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	222,r13		! source line 222
	mov	"\0\0SE",r10
!   _temp_179 = &_Global_doneCutting
	set	_Global_doneCutting,r1
	store	r1,[r14+-236]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-236],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! CALL STATEMENT...
!   _temp_180 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-232]
!   Prepare Argument: offset=8  value=_temp_180  sizeInBytes=4
	load	[r14+-232],r1
	store	r1,[r15+0]
!   Call the function
	mov	224,r13		! source line 224
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	225,r13		! source line 225
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   Call the function
	mov	226,r13		! source line 226
	mov	"\0\0CA",r10
	call	_function_62_PrintHeader
! ASSIGNMENT STATEMENT...
	mov	228,r13		! source line 228
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _Global_access_lock = zeros  (sizeInBytes=20)
	set	_Global_access_lock,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   _Global_access_lock = _P_Synch_Mutex
	set	_P_Synch_Mutex,r1
	set	_Global_access_lock,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	229,r13		! source line 229
	mov	"\0\0SE",r10
!   _temp_182 = &_Global_access_lock
	set	_Global_access_lock,r1
	store	r1,[r14+-224]
!   Send message Init
	load	[r14+-224],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	231,r13		! source line 231
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: barber = zeros  (sizeInBytes=4092)
	set	-41204,r4
	add	r14,r4,r4
	mov	1023,r3
_Label_802:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_802
!   barber = _P_Thread_Thread
	set	_P_Thread_Thread,r1
	set	-41204,r2
	store	r1,[r14+r2]
! SEND STATEMENT...
	mov	232,r13		! source line 232
	mov	"\0\0SE",r10
!   _temp_184 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-216]
!   _temp_185 = &barber
	set	-41204,r1
	add	r14,r1,r1
	store	r1,[r14+-212]
!   Prepare Argument: offset=12  value=_temp_184  sizeInBytes=4
	load	[r14+-216],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-212],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	233,r13		! source line 233
	mov	"\0\0SE",r10
!   _temp_186 = _function_64_GiveHairCuts
	set	_function_64_GiveHairCuts,r1
	store	r1,[r14+-208]
!   _temp_187 = &barber
	set	-41204,r1
	add	r14,r1,r1
	store	r1,[r14+-204]
!   Prepare Argument: offset=12  value=_temp_186  sizeInBytes=4
	load	[r14+-208],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=5  sizeInBytes=4
	mov	5,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-204],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	235,r13		! source line 235
	mov	"\0\0SE",r10
!   _temp_188 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-200]
!   _temp_189 = &customers
	set	-73944,r1
	add	r14,r1,r1
	store	r1,[r14+-196]
!   Move address of _temp_189 [0 ] into _temp_190
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-196],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-192]
!   Prepare Argument: offset=12  value=_temp_188  sizeInBytes=4
	load	[r14+-200],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-192],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	236,r13		! source line 236
	mov	"\0\0SE",r10
!   _temp_191 = _function_65_GetHairCut
	set	_function_65_GetHairCut,r1
	store	r1,[r14+-188]
!   _temp_192 = &customers
	set	-73944,r1
	add	r14,r1,r1
	store	r1,[r14+-184]
!   Move address of _temp_192 [0 ] into _temp_193
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
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-180]
!   Prepare Argument: offset=12  value=_temp_191  sizeInBytes=4
	load	[r14+-188],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-180],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	237,r13		! source line 237
	mov	"\0\0SE",r10
!   _temp_194 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-176]
!   _temp_195 = &customers
	set	-73944,r1
	add	r14,r1,r1
	store	r1,[r14+-172]
!   Move address of _temp_195 [1 ] into _temp_196
!     make sure index expr is >= 0
	mov	1,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-172],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-168]
!   Prepare Argument: offset=12  value=_temp_194  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-168],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	238,r13		! source line 238
	mov	"\0\0SE",r10
!   _temp_197 = _function_65_GetHairCut
	set	_function_65_GetHairCut,r1
	store	r1,[r14+-164]
!   _temp_198 = &customers
	set	-73944,r1
	add	r14,r1,r1
	store	r1,[r14+-160]
!   Move address of _temp_198 [1 ] into _temp_199
!     make sure index expr is >= 0
	mov	1,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-160],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-156]
!   Prepare Argument: offset=12  value=_temp_197  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-156],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	239,r13		! source line 239
	mov	"\0\0SE",r10
!   _temp_200 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-152]
!   _temp_201 = &customers
	set	-73944,r1
	add	r14,r1,r1
	store	r1,[r14+-148]
!   Move address of _temp_201 [2 ] into _temp_202
!     make sure index expr is >= 0
	mov	2,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-148],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-144]
!   Prepare Argument: offset=12  value=_temp_200  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-144],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	240,r13		! source line 240
	mov	"\0\0SE",r10
!   _temp_203 = _function_65_GetHairCut
	set	_function_65_GetHairCut,r1
	store	r1,[r14+-140]
!   _temp_204 = &customers
	set	-73944,r1
	add	r14,r1,r1
	store	r1,[r14+-136]
!   Move address of _temp_204 [2 ] into _temp_205
!     make sure index expr is >= 0
	mov	2,r2
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
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-132]
!   Prepare Argument: offset=12  value=_temp_203  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-132],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	241,r13		! source line 241
	mov	"\0\0SE",r10
!   _temp_206 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-128]
!   _temp_207 = &customers
	set	-73944,r1
	add	r14,r1,r1
	store	r1,[r14+-124]
!   Move address of _temp_207 [3 ] into _temp_208
!     make sure index expr is >= 0
	mov	3,r2
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
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-120]
!   Prepare Argument: offset=12  value=_temp_206  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-120],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	242,r13		! source line 242
	mov	"\0\0SE",r10
!   _temp_209 = _function_65_GetHairCut
	set	_function_65_GetHairCut,r1
	store	r1,[r14+-116]
!   _temp_210 = &customers
	set	-73944,r1
	add	r14,r1,r1
	store	r1,[r14+-112]
!   Move address of _temp_210 [3 ] into _temp_211
!     make sure index expr is >= 0
	mov	3,r2
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
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-108]
!   Prepare Argument: offset=12  value=_temp_209  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-108],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	243,r13		! source line 243
	mov	"\0\0SE",r10
!   _temp_212 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-104]
!   _temp_213 = &customers
	set	-73944,r1
	add	r14,r1,r1
	store	r1,[r14+-100]
!   Move address of _temp_213 [4 ] into _temp_214
!     make sure index expr is >= 0
	mov	4,r2
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
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-96]
!   Prepare Argument: offset=12  value=_temp_212  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	244,r13		! source line 244
	mov	"\0\0SE",r10
!   _temp_215 = _function_65_GetHairCut
	set	_function_65_GetHairCut,r1
	store	r1,[r14+-92]
!   _temp_216 = &customers
	set	-73944,r1
	add	r14,r1,r1
	store	r1,[r14+-88]
!   Move address of _temp_216 [4 ] into _temp_217
!     make sure index expr is >= 0
	mov	4,r2
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
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-84]
!   Prepare Argument: offset=12  value=_temp_215  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-84],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	245,r13		! source line 245
	mov	"\0\0SE",r10
!   _temp_218 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-80]
!   _temp_219 = &customers
	set	-73944,r1
	add	r14,r1,r1
	store	r1,[r14+-76]
!   Move address of _temp_219 [5 ] into _temp_220
!     make sure index expr is >= 0
	mov	5,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-76],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_218  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	246,r13		! source line 246
	mov	"\0\0SE",r10
!   _temp_221 = _function_65_GetHairCut
	set	_function_65_GetHairCut,r1
	store	r1,[r14+-68]
!   _temp_222 = &customers
	set	-73944,r1
	add	r14,r1,r1
	store	r1,[r14+-64]
!   Move address of _temp_222 [5 ] into _temp_223
!     make sure index expr is >= 0
	mov	5,r2
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
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-60]
!   Prepare Argument: offset=12  value=_temp_221  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	247,r13		! source line 247
	mov	"\0\0SE",r10
!   _temp_224 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-56]
!   _temp_225 = &customers
	set	-73944,r1
	add	r14,r1,r1
	store	r1,[r14+-52]
!   Move address of _temp_225 [6 ] into _temp_226
!     make sure index expr is >= 0
	mov	6,r2
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
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_224  sizeInBytes=4
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
! SEND STATEMENT...
	mov	248,r13		! source line 248
	mov	"\0\0SE",r10
!   _temp_227 = _function_65_GetHairCut
	set	_function_65_GetHairCut,r1
	store	r1,[r14+-44]
!   _temp_228 = &customers
	set	-73944,r1
	add	r14,r1,r1
	store	r1,[r14+-40]
!   Move address of _temp_228 [6 ] into _temp_229
!     make sure index expr is >= 0
	mov	6,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-40],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_227  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	249,r13		! source line 249
	mov	"\0\0SE",r10
!   _temp_230 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-32]
!   _temp_231 = &customers
	set	-73944,r1
	add	r14,r1,r1
	store	r1,[r14+-28]
!   Move address of _temp_231 [7 ] into _temp_232
!     make sure index expr is >= 0
	mov	7,r2
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
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_230  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	250,r13		! source line 250
	mov	"\0\0SE",r10
!   _temp_233 = _function_65_GetHairCut
	set	_function_65_GetHairCut,r1
	store	r1,[r14+-20]
!   _temp_234 = &customers
	set	-73944,r1
	add	r14,r1,r1
	store	r1,[r14+-16]
!   Move address of _temp_234 [7 ] into _temp_235
!     make sure index expr is >= 0
	mov	7,r2
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
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_233  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	250,r13		! source line 250
	mov	"\0\0RE",r10
	set	73952,r1
	add	r15,r1,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_66_TheSleepingBarber:
	.word	_sourceFileName
	.word	_Label_236
	.word	0		! total size of parameters
	.word	73948		! frame size = 73948
	.word	_Label_237
	.word	-12
	.word	4
	.word	_Label_238
	.word	-16
	.word	4
	.word	_Label_239
	.word	-20
	.word	4
	.word	_Label_240
	.word	-24
	.word	4
	.word	_Label_241
	.word	-28
	.word	4
	.word	_Label_242
	.word	-32
	.word	4
	.word	_Label_243
	.word	-36
	.word	4
	.word	_Label_244
	.word	-40
	.word	4
	.word	_Label_245
	.word	-44
	.word	4
	.word	_Label_246
	.word	-48
	.word	4
	.word	_Label_247
	.word	-52
	.word	4
	.word	_Label_248
	.word	-56
	.word	4
	.word	_Label_249
	.word	-60
	.word	4
	.word	_Label_250
	.word	-64
	.word	4
	.word	_Label_251
	.word	-68
	.word	4
	.word	_Label_252
	.word	-72
	.word	4
	.word	_Label_253
	.word	-76
	.word	4
	.word	_Label_254
	.word	-80
	.word	4
	.word	_Label_255
	.word	-84
	.word	4
	.word	_Label_256
	.word	-88
	.word	4
	.word	_Label_257
	.word	-92
	.word	4
	.word	_Label_258
	.word	-96
	.word	4
	.word	_Label_259
	.word	-100
	.word	4
	.word	_Label_260
	.word	-104
	.word	4
	.word	_Label_261
	.word	-108
	.word	4
	.word	_Label_262
	.word	-112
	.word	4
	.word	_Label_263
	.word	-116
	.word	4
	.word	_Label_264
	.word	-120
	.word	4
	.word	_Label_265
	.word	-124
	.word	4
	.word	_Label_266
	.word	-128
	.word	4
	.word	_Label_267
	.word	-132
	.word	4
	.word	_Label_268
	.word	-136
	.word	4
	.word	_Label_269
	.word	-140
	.word	4
	.word	_Label_270
	.word	-144
	.word	4
	.word	_Label_271
	.word	-148
	.word	4
	.word	_Label_272
	.word	-152
	.word	4
	.word	_Label_273
	.word	-156
	.word	4
	.word	_Label_274
	.word	-160
	.word	4
	.word	_Label_275
	.word	-164
	.word	4
	.word	_Label_276
	.word	-168
	.word	4
	.word	_Label_277
	.word	-172
	.word	4
	.word	_Label_278
	.word	-176
	.word	4
	.word	_Label_279
	.word	-180
	.word	4
	.word	_Label_280
	.word	-184
	.word	4
	.word	_Label_281
	.word	-188
	.word	4
	.word	_Label_282
	.word	-192
	.word	4
	.word	_Label_283
	.word	-196
	.word	4
	.word	_Label_284
	.word	-200
	.word	4
	.word	_Label_285
	.word	-204
	.word	4
	.word	_Label_286
	.word	-208
	.word	4
	.word	_Label_287
	.word	-212
	.word	4
	.word	_Label_288
	.word	-216
	.word	4
	.word	_Label_289
	.word	-220
	.word	4
	.word	_Label_290
	.word	-224
	.word	4
	.word	_Label_291
	.word	-228
	.word	4
	.word	_Label_292
	.word	-232
	.word	4
	.word	_Label_293
	.word	-236
	.word	4
	.word	_Label_294
	.word	-240
	.word	4
	.word	_Label_295
	.word	-244
	.word	4
	.word	_Label_296
	.word	-248
	.word	4
	.word	_Label_297
	.word	-252
	.word	4
	.word	_Label_298
	.word	-256
	.word	4
	.word	_Label_299
	.word	-260
	.word	4
	.word	_Label_300
	.word	-264
	.word	4
	.word	_Label_301
	.word	-268
	.word	4
	.word	_Label_302
	.word	-272
	.word	4
	.word	_Label_303
	.word	-4364
	.word	4092
	.word	_Label_304
	.word	-4368
	.word	4
	.word	_Label_305
	.word	-4372
	.word	4
	.word	_Label_306
	.word	-37112
	.word	32740
	.word	_Label_307
	.word	-41204
	.word	4092
	.word	_Label_308
	.word	-73944
	.word	32740
	.word	0
_Label_236:
	.ascii	"TheSleepingBarber\0"
	.align
_Label_237:
	.byte	'?'
	.ascii	"_temp_235\0"
	.align
_Label_238:
	.byte	'?'
	.ascii	"_temp_234\0"
	.align
_Label_239:
	.byte	'?'
	.ascii	"_temp_233\0"
	.align
_Label_240:
	.byte	'?'
	.ascii	"_temp_232\0"
	.align
_Label_241:
	.byte	'?'
	.ascii	"_temp_231\0"
	.align
_Label_242:
	.byte	'?'
	.ascii	"_temp_230\0"
	.align
_Label_243:
	.byte	'?'
	.ascii	"_temp_229\0"
	.align
_Label_244:
	.byte	'?'
	.ascii	"_temp_228\0"
	.align
_Label_245:
	.byte	'?'
	.ascii	"_temp_227\0"
	.align
_Label_246:
	.byte	'?'
	.ascii	"_temp_226\0"
	.align
_Label_247:
	.byte	'?'
	.ascii	"_temp_225\0"
	.align
_Label_248:
	.byte	'?'
	.ascii	"_temp_224\0"
	.align
_Label_249:
	.byte	'?'
	.ascii	"_temp_223\0"
	.align
_Label_250:
	.byte	'?'
	.ascii	"_temp_222\0"
	.align
_Label_251:
	.byte	'?'
	.ascii	"_temp_221\0"
	.align
_Label_252:
	.byte	'?'
	.ascii	"_temp_220\0"
	.align
_Label_253:
	.byte	'?'
	.ascii	"_temp_219\0"
	.align
_Label_254:
	.byte	'?'
	.ascii	"_temp_218\0"
	.align
_Label_255:
	.byte	'?'
	.ascii	"_temp_217\0"
	.align
_Label_256:
	.byte	'?'
	.ascii	"_temp_216\0"
	.align
_Label_257:
	.byte	'?'
	.ascii	"_temp_215\0"
	.align
_Label_258:
	.byte	'?'
	.ascii	"_temp_214\0"
	.align
_Label_259:
	.byte	'?'
	.ascii	"_temp_213\0"
	.align
_Label_260:
	.byte	'?'
	.ascii	"_temp_212\0"
	.align
_Label_261:
	.byte	'?'
	.ascii	"_temp_211\0"
	.align
_Label_262:
	.byte	'?'
	.ascii	"_temp_210\0"
	.align
_Label_263:
	.byte	'?'
	.ascii	"_temp_209\0"
	.align
_Label_264:
	.byte	'?'
	.ascii	"_temp_208\0"
	.align
_Label_265:
	.byte	'?'
	.ascii	"_temp_207\0"
	.align
_Label_266:
	.byte	'?'
	.ascii	"_temp_206\0"
	.align
_Label_267:
	.byte	'?'
	.ascii	"_temp_205\0"
	.align
_Label_268:
	.byte	'?'
	.ascii	"_temp_204\0"
	.align
_Label_269:
	.byte	'?'
	.ascii	"_temp_203\0"
	.align
_Label_270:
	.byte	'?'
	.ascii	"_temp_202\0"
	.align
_Label_271:
	.byte	'?'
	.ascii	"_temp_201\0"
	.align
_Label_272:
	.byte	'?'
	.ascii	"_temp_200\0"
	.align
_Label_273:
	.byte	'?'
	.ascii	"_temp_199\0"
	.align
_Label_274:
	.byte	'?'
	.ascii	"_temp_198\0"
	.align
_Label_275:
	.byte	'?'
	.ascii	"_temp_197\0"
	.align
_Label_276:
	.byte	'?'
	.ascii	"_temp_196\0"
	.align
_Label_277:
	.byte	'?'
	.ascii	"_temp_195\0"
	.align
_Label_278:
	.byte	'?'
	.ascii	"_temp_194\0"
	.align
_Label_279:
	.byte	'?'
	.ascii	"_temp_193\0"
	.align
_Label_280:
	.byte	'?'
	.ascii	"_temp_192\0"
	.align
_Label_281:
	.byte	'?'
	.ascii	"_temp_191\0"
	.align
_Label_282:
	.byte	'?'
	.ascii	"_temp_190\0"
	.align
_Label_283:
	.byte	'?'
	.ascii	"_temp_189\0"
	.align
_Label_284:
	.byte	'?'
	.ascii	"_temp_188\0"
	.align
_Label_285:
	.byte	'?'
	.ascii	"_temp_187\0"
	.align
_Label_286:
	.byte	'?'
	.ascii	"_temp_186\0"
	.align
_Label_287:
	.byte	'?'
	.ascii	"_temp_185\0"
	.align
_Label_288:
	.byte	'?'
	.ascii	"_temp_184\0"
	.align
_Label_289:
	.byte	'?'
	.ascii	"_temp_183\0"
	.align
_Label_290:
	.byte	'?'
	.ascii	"_temp_182\0"
	.align
_Label_291:
	.byte	'?'
	.ascii	"_temp_181\0"
	.align
_Label_292:
	.byte	'?'
	.ascii	"_temp_180\0"
	.align
_Label_293:
	.byte	'?'
	.ascii	"_temp_179\0"
	.align
_Label_294:
	.byte	'?'
	.ascii	"_temp_178\0"
	.align
_Label_295:
	.byte	'?'
	.ascii	"_temp_177\0"
	.align
_Label_296:
	.byte	'?'
	.ascii	"_temp_176\0"
	.align
_Label_297:
	.byte	'?'
	.ascii	"_temp_175\0"
	.align
_Label_298:
	.byte	'?'
	.ascii	"_temp_174\0"
	.align
_Label_299:
	.byte	'?'
	.ascii	"_temp_173\0"
	.align
_Label_300:
	.byte	'?'
	.ascii	"_temp_172\0"
	.align
_Label_301:
	.byte	'?'
	.ascii	"_temp_171\0"
	.align
_Label_302:
	.byte	'?'
	.ascii	"_temp_169\0"
	.align
_Label_303:
	.byte	'?'
	.ascii	"_temp_168\0"
	.align
_Label_304:
	.byte	'?'
	.ascii	"_temp_167\0"
	.align
_Label_305:
	.byte	'?'
	.ascii	"_temp_166\0"
	.align
_Label_306:
	.byte	'?'
	.ascii	"_temp_165\0"
	.align
_Label_307:
	.byte	'O'
	.ascii	"barber\0"
	.align
_Label_308:
	.byte	'A'
	.ascii	"customers\0"
	.align
! 
! ===============  FUNCTION GetHairCut  ===============
! 
_function_65_GetHairCut:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_65_GetHairCut,r1
	push	r1
	mov	43,r1
_Label_803:
	push	r0
	sub	r1,1,r1
	bne	_Label_803
	mov	254,r13		! source line 254
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	257,r13		! source line 257
	mov	"\0\0AS",r10
!   cutsReceived = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-172]
! WHILE STATEMENT...
	mov	258,r13		! source line 258
	mov	"\0\0WH",r10
_Label_309:
!   if cutsReceived >= numCuts then goto _Label_311		(int)
	load	[r14+-172],r1
	load	[r14+8],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_311
!	jmp	_Label_310
_Label_310:
	mov	258,r13		! source line 258
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	259,r13		! source line 259
	mov	"\0\0AS",r10
!   cutsReceived = cutsReceived + 1		(int)
	load	[r14+-172],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-172]
! SEND STATEMENT...
	mov	260,r13		! source line 260
	mov	"\0\0SE",r10
!   _temp_312 = &_Global_access_lock
	set	_Global_access_lock,r1
	store	r1,[r14+-168]
!   Send message Lock
	load	[r14+-168],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_317 = _P_Thread_currentThread + 72
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-152]
!   Data Move: _temp_316 = *_temp_317  (sizeInBytes=4)
	load	[r14+-152],r1
	load	[r1],r1
	store	r1,[r14+-156]
!   if intIsZero (_temp_316) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_316 [0 ] into _temp_318
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-156],r1
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
	store	r2,[r14+-148]
!   Data Move: _temp_315 = *_temp_318  (sizeInBytes=1)
	load	[r14+-148],r1
	loadb	[r1],r1
	storeb	r1,[r14+-13]
!   _temp_314 = charToInt (_temp_315)
	loadb	[r14+-13],r1
	sll	r1,24,r1
	sra	r1,24,r1
	store	r1,[r14+-160]
!   _temp_313 = _temp_314 - 48		(int)
	load	[r14+-160],r1
	mov	48,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-164]
!   _temp_319 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_313  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_319  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+4]
!   Call the function
	mov	261,r13		! source line 261
	mov	"\0\0CA",r10
	call	_function_59_PrintCustomerState
! IF STATEMENT...
	mov	262,r13		! source line 262
	mov	"\0\0IF",r10
!   if _Global_numWaitingCustomers >= 5 then goto _Label_321		(int)
	set	_Global_numWaitingCustomers,r1
	load	[r1],r1
	mov	5,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_321
!	jmp	_Label_320
_Label_320:
! THEN...
	mov	263,r13		! source line 263
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	263,r13		! source line 263
	mov	"\0\0AS",r10
!   _Global_numWaitingCustomers = _Global_numWaitingCustomers + 1		(int)
	set	_Global_numWaitingCustomers,r1
	load	[r1],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	set	_Global_numWaitingCustomers,r2
	store	r1,[r2]
! CALL STATEMENT...
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_326 = _P_Thread_currentThread + 72
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-128]
!   Data Move: _temp_325 = *_temp_326  (sizeInBytes=4)
	load	[r14+-128],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   if intIsZero (_temp_325) then goto _runtimeErrorNullPointer
	load	[r14+-132],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_325 [0 ] into _temp_327
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-132],r1
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
	store	r2,[r14+-124]
!   Data Move: _temp_324 = *_temp_327  (sizeInBytes=1)
	load	[r14+-124],r1
	loadb	[r1],r1
	storeb	r1,[r14+-12]
!   _temp_323 = charToInt (_temp_324)
	loadb	[r14+-12],r1
	sll	r1,24,r1
	sra	r1,24,r1
	store	r1,[r14+-136]
!   _temp_322 = _temp_323 - 48		(int)
	load	[r14+-136],r1
	mov	48,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-140]
!   _temp_328 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_322  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_328  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+4]
!   Call the function
	mov	264,r13		! source line 264
	mov	"\0\0CA",r10
	call	_function_59_PrintCustomerState
! SEND STATEMENT...
	mov	265,r13		! source line 265
	mov	"\0\0SE",r10
!   _temp_329 = &_Global_access_lock
	set	_Global_access_lock,r1
	store	r1,[r14+-116]
!   Send message Unlock
	load	[r14+-116],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	266,r13		! source line 266
	mov	"\0\0SE",r10
!   _temp_330 = &_Global_waitingCustomers
	set	_Global_waitingCustomers,r1
	store	r1,[r14+-112]
!   Send message Up
	load	[r14+-112],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	267,r13		! source line 267
	mov	"\0\0SE",r10
!   _temp_331 = &_Global_barberSem
	set	_Global_barberSem,r1
	store	r1,[r14+-108]
!   Send message Down
	load	[r14+-108],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_336 = _P_Thread_currentThread + 72
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-92]
!   Data Move: _temp_335 = *_temp_336  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if intIsZero (_temp_335) then goto _runtimeErrorNullPointer
	load	[r14+-96],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_335 [0 ] into _temp_337
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-96],r1
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
	store	r2,[r14+-88]
!   Data Move: _temp_334 = *_temp_337  (sizeInBytes=1)
	load	[r14+-88],r1
	loadb	[r1],r1
	storeb	r1,[r14+-11]
!   _temp_333 = charToInt (_temp_334)
	loadb	[r14+-11],r1
	sll	r1,24,r1
	sra	r1,24,r1
	store	r1,[r14+-100]
!   _temp_332 = _temp_333 - 48		(int)
	load	[r14+-100],r1
	mov	48,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-104]
!   _temp_338 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_332  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_338  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+4]
!   Call the function
	mov	268,r13		! source line 268
	mov	"\0\0CA",r10
	call	_function_59_PrintCustomerState
! SEND STATEMENT...
	mov	269,r13		! source line 269
	mov	"\0\0SE",r10
!   _temp_339 = &_Global_cuttingHair
	set	_Global_cuttingHair,r1
	store	r1,[r14+-80]
!   Send message Up
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	270,r13		! source line 270
	mov	"\0\0SE",r10
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! CALL STATEMENT...
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_344 = _P_Thread_currentThread + 72
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-64]
!   Data Move: _temp_343 = *_temp_344  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_343) then goto _runtimeErrorNullPointer
	load	[r14+-68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_343 [0 ] into _temp_345
!     make sure index expr is >= 0
	mov	0,r2
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
!   Data Move: _temp_342 = *_temp_345  (sizeInBytes=1)
	load	[r14+-60],r1
	loadb	[r1],r1
	storeb	r1,[r14+-10]
!   _temp_341 = charToInt (_temp_342)
	loadb	[r14+-10],r1
	sll	r1,24,r1
	sra	r1,24,r1
	store	r1,[r14+-72]
!   _temp_340 = _temp_341 - 48		(int)
	load	[r14+-72],r1
	mov	48,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-76]
!   _temp_346 = _StringConst_24
	set	_StringConst_24,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_340  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_346  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Call the function
	mov	271,r13		! source line 271
	mov	"\0\0CA",r10
	call	_function_59_PrintCustomerState
! SEND STATEMENT...
	mov	272,r13		! source line 272
	mov	"\0\0SE",r10
!   _temp_347 = &_Global_cuttingHair
	set	_Global_cuttingHair,r1
	store	r1,[r14+-52]
!   Send message Up
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	273,r13		! source line 273
	mov	"\0\0SE",r10
!   _temp_348 = &_Global_doneCutting
	set	_Global_doneCutting,r1
	store	r1,[r14+-48]
!   Send message Down
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
	jmp	_Label_349
_Label_321:
! ELSE...
	mov	275,r13		! source line 275
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	275,r13		! source line 275
	mov	"\0\0SE",r10
!   _temp_350 = &_Global_access_lock
	set	_Global_access_lock,r1
	store	r1,[r14+-44]
!   Send message Unlock
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_349:
! CALL STATEMENT...
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_355 = _P_Thread_currentThread + 72
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-28]
!   Data Move: _temp_354 = *_temp_355  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_354) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_354 [0 ] into _temp_356
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
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   Data Move: _temp_353 = *_temp_356  (sizeInBytes=1)
	load	[r14+-24],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   _temp_352 = charToInt (_temp_353)
	loadb	[r14+-9],r1
	sll	r1,24,r1
	sra	r1,24,r1
	store	r1,[r14+-36]
!   _temp_351 = _temp_352 - 48		(int)
	load	[r14+-36],r1
	mov	48,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
!   _temp_357 = _StringConst_25
	set	_StringConst_25,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_351  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_357  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Call the function
	mov	277,r13		! source line 277
	mov	"\0\0CA",r10
	call	_function_59_PrintCustomerState
! END WHILE...
	jmp	_Label_309
_Label_311:
! RETURN STATEMENT...
	mov	258,r13		! source line 258
	mov	"\0\0RE",r10
	add	r15,176,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_65_GetHairCut:
	.word	_sourceFileName
	.word	_Label_358
	.word	4		! total size of parameters
	.word	172		! frame size = 172
	.word	_Label_359
	.word	8
	.word	4
	.word	_Label_360
	.word	-20
	.word	4
	.word	_Label_361
	.word	-24
	.word	4
	.word	_Label_362
	.word	-28
	.word	4
	.word	_Label_363
	.word	-32
	.word	4
	.word	_Label_364
	.word	-9
	.word	1
	.word	_Label_365
	.word	-36
	.word	4
	.word	_Label_366
	.word	-40
	.word	4
	.word	_Label_367
	.word	-44
	.word	4
	.word	_Label_368
	.word	-48
	.word	4
	.word	_Label_369
	.word	-52
	.word	4
	.word	_Label_370
	.word	-56
	.word	4
	.word	_Label_371
	.word	-60
	.word	4
	.word	_Label_372
	.word	-64
	.word	4
	.word	_Label_373
	.word	-68
	.word	4
	.word	_Label_374
	.word	-10
	.word	1
	.word	_Label_375
	.word	-72
	.word	4
	.word	_Label_376
	.word	-76
	.word	4
	.word	_Label_377
	.word	-80
	.word	4
	.word	_Label_378
	.word	-84
	.word	4
	.word	_Label_379
	.word	-88
	.word	4
	.word	_Label_380
	.word	-92
	.word	4
	.word	_Label_381
	.word	-96
	.word	4
	.word	_Label_382
	.word	-11
	.word	1
	.word	_Label_383
	.word	-100
	.word	4
	.word	_Label_384
	.word	-104
	.word	4
	.word	_Label_385
	.word	-108
	.word	4
	.word	_Label_386
	.word	-112
	.word	4
	.word	_Label_387
	.word	-116
	.word	4
	.word	_Label_388
	.word	-120
	.word	4
	.word	_Label_389
	.word	-124
	.word	4
	.word	_Label_390
	.word	-128
	.word	4
	.word	_Label_391
	.word	-132
	.word	4
	.word	_Label_392
	.word	-12
	.word	1
	.word	_Label_393
	.word	-136
	.word	4
	.word	_Label_394
	.word	-140
	.word	4
	.word	_Label_395
	.word	-144
	.word	4
	.word	_Label_396
	.word	-148
	.word	4
	.word	_Label_397
	.word	-152
	.word	4
	.word	_Label_398
	.word	-156
	.word	4
	.word	_Label_399
	.word	-13
	.word	1
	.word	_Label_400
	.word	-160
	.word	4
	.word	_Label_401
	.word	-164
	.word	4
	.word	_Label_402
	.word	-168
	.word	4
	.word	_Label_403
	.word	-172
	.word	4
	.word	0
_Label_358:
	.ascii	"GetHairCut\0"
	.align
_Label_359:
	.byte	'I'
	.ascii	"numCuts\0"
	.align
_Label_360:
	.byte	'?'
	.ascii	"_temp_357\0"
	.align
_Label_361:
	.byte	'?'
	.ascii	"_temp_356\0"
	.align
_Label_362:
	.byte	'?'
	.ascii	"_temp_355\0"
	.align
_Label_363:
	.byte	'?'
	.ascii	"_temp_354\0"
	.align
_Label_364:
	.byte	'C'
	.ascii	"_temp_353\0"
	.align
_Label_365:
	.byte	'?'
	.ascii	"_temp_352\0"
	.align
_Label_366:
	.byte	'?'
	.ascii	"_temp_351\0"
	.align
_Label_367:
	.byte	'?'
	.ascii	"_temp_350\0"
	.align
_Label_368:
	.byte	'?'
	.ascii	"_temp_348\0"
	.align
_Label_369:
	.byte	'?'
	.ascii	"_temp_347\0"
	.align
_Label_370:
	.byte	'?'
	.ascii	"_temp_346\0"
	.align
_Label_371:
	.byte	'?'
	.ascii	"_temp_345\0"
	.align
_Label_372:
	.byte	'?'
	.ascii	"_temp_344\0"
	.align
_Label_373:
	.byte	'?'
	.ascii	"_temp_343\0"
	.align
_Label_374:
	.byte	'C'
	.ascii	"_temp_342\0"
	.align
_Label_375:
	.byte	'?'
	.ascii	"_temp_341\0"
	.align
_Label_376:
	.byte	'?'
	.ascii	"_temp_340\0"
	.align
_Label_377:
	.byte	'?'
	.ascii	"_temp_339\0"
	.align
_Label_378:
	.byte	'?'
	.ascii	"_temp_338\0"
	.align
_Label_379:
	.byte	'?'
	.ascii	"_temp_337\0"
	.align
_Label_380:
	.byte	'?'
	.ascii	"_temp_336\0"
	.align
_Label_381:
	.byte	'?'
	.ascii	"_temp_335\0"
	.align
_Label_382:
	.byte	'C'
	.ascii	"_temp_334\0"
	.align
_Label_383:
	.byte	'?'
	.ascii	"_temp_333\0"
	.align
_Label_384:
	.byte	'?'
	.ascii	"_temp_332\0"
	.align
_Label_385:
	.byte	'?'
	.ascii	"_temp_331\0"
	.align
_Label_386:
	.byte	'?'
	.ascii	"_temp_330\0"
	.align
_Label_387:
	.byte	'?'
	.ascii	"_temp_329\0"
	.align
_Label_388:
	.byte	'?'
	.ascii	"_temp_328\0"
	.align
_Label_389:
	.byte	'?'
	.ascii	"_temp_327\0"
	.align
_Label_390:
	.byte	'?'
	.ascii	"_temp_326\0"
	.align
_Label_391:
	.byte	'?'
	.ascii	"_temp_325\0"
	.align
_Label_392:
	.byte	'C'
	.ascii	"_temp_324\0"
	.align
_Label_393:
	.byte	'?'
	.ascii	"_temp_323\0"
	.align
_Label_394:
	.byte	'?'
	.ascii	"_temp_322\0"
	.align
_Label_395:
	.byte	'?'
	.ascii	"_temp_319\0"
	.align
_Label_396:
	.byte	'?'
	.ascii	"_temp_318\0"
	.align
_Label_397:
	.byte	'?'
	.ascii	"_temp_317\0"
	.align
_Label_398:
	.byte	'?'
	.ascii	"_temp_316\0"
	.align
_Label_399:
	.byte	'C'
	.ascii	"_temp_315\0"
	.align
_Label_400:
	.byte	'?'
	.ascii	"_temp_314\0"
	.align
_Label_401:
	.byte	'?'
	.ascii	"_temp_313\0"
	.align
_Label_402:
	.byte	'?'
	.ascii	"_temp_312\0"
	.align
_Label_403:
	.byte	'I'
	.ascii	"cutsReceived\0"
	.align
! 
! ===============  FUNCTION GiveHairCuts  ===============
! 
_function_64_GiveHairCuts:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_64_GiveHairCuts,r1
	push	r1
	mov	8,r1
_Label_804:
	push	r0
	sub	r1,1,r1
	bne	_Label_804
	mov	281,r13		! source line 281
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	282,r13		! source line 282
	mov	"\0\0WH",r10
_Label_404:
!	jmp	_Label_405
_Label_405:
	mov	282,r13		! source line 282
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	283,r13		! source line 283
	mov	"\0\0SE",r10
!   _temp_407 = &_Global_waitingCustomers
	set	_Global_waitingCustomers,r1
	store	r1,[r14+-36]
!   Send message Down
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	284,r13		! source line 284
	mov	"\0\0SE",r10
!   _temp_408 = &_Global_access_lock
	set	_Global_access_lock,r1
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
	mov	285,r13		! source line 285
	mov	"\0\0AS",r10
!   _Global_numWaitingCustomers = _Global_numWaitingCustomers - 1		(int)
	set	_Global_numWaitingCustomers,r1
	load	[r1],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	set	_Global_numWaitingCustomers,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	286,r13		! source line 286
	mov	"\0\0SE",r10
!   _temp_409 = &_Global_access_lock
	set	_Global_access_lock,r1
	store	r1,[r14+-28]
!   Send message Unlock
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	287,r13		! source line 287
	mov	"\0\0CA",r10
	call	_function_63_PrintBarberStart
! SEND STATEMENT...
	mov	288,r13		! source line 288
	mov	"\0\0SE",r10
!   _temp_410 = &_Global_barberSem
	set	_Global_barberSem,r1
	store	r1,[r14+-24]
!   Send message Up
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	289,r13		! source line 289
	mov	"\0\0SE",r10
!   _temp_411 = &_Global_cuttingHair
	set	_Global_cuttingHair,r1
	store	r1,[r14+-20]
!   Send message Down
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	290,r13		! source line 290
	mov	"\0\0SE",r10
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	291,r13		! source line 291
	mov	"\0\0SE",r10
!   _temp_412 = &_Global_cuttingHair
	set	_Global_cuttingHair,r1
	store	r1,[r14+-16]
!   Send message Down
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	292,r13		! source line 292
	mov	"\0\0CA",r10
	call	_function_61_PrintBarberEnd
! SEND STATEMENT...
	mov	293,r13		! source line 293
	mov	"\0\0SE",r10
!   _temp_413 = &_Global_doneCutting
	set	_Global_doneCutting,r1
	store	r1,[r14+-12]
!   Send message Up
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END WHILE...
	jmp	_Label_404
_Label_406:
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_64_GiveHairCuts:
	.word	_sourceFileName
	.word	_Label_414
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_415
	.word	8
	.word	4
	.word	_Label_416
	.word	-12
	.word	4
	.word	_Label_417
	.word	-16
	.word	4
	.word	_Label_418
	.word	-20
	.word	4
	.word	_Label_419
	.word	-24
	.word	4
	.word	_Label_420
	.word	-28
	.word	4
	.word	_Label_421
	.word	-32
	.word	4
	.word	_Label_422
	.word	-36
	.word	4
	.word	0
_Label_414:
	.ascii	"GiveHairCuts\0"
	.align
_Label_415:
	.byte	'I'
	.ascii	"numChairs\0"
	.align
_Label_416:
	.byte	'?'
	.ascii	"_temp_413\0"
	.align
_Label_417:
	.byte	'?'
	.ascii	"_temp_412\0"
	.align
_Label_418:
	.byte	'?'
	.ascii	"_temp_411\0"
	.align
_Label_419:
	.byte	'?'
	.ascii	"_temp_410\0"
	.align
_Label_420:
	.byte	'?'
	.ascii	"_temp_409\0"
	.align
_Label_421:
	.byte	'?'
	.ascii	"_temp_408\0"
	.align
_Label_422:
	.byte	'?'
	.ascii	"_temp_407\0"
	.align
! 
! ===============  FUNCTION PrintBarberStart  ===============
! 
_function_63_PrintBarberStart:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_63_PrintBarberStart,r1
	push	r1
	mov	3,r1
_Label_805:
	push	r0
	sub	r1,1,r1
	bne	_Label_805
	mov	297,r13		! source line 297
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	301,r13		! source line 301
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	301,r13		! source line 301
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-16]
! CALL STATEMENT...
!   Call the function
	mov	302,r13		! source line 302
	mov	"\0\0CA",r10
	call	_function_60_PrintChairs
! CALL STATEMENT...
!   _temp_423 = _StringConst_26
	set	_StringConst_26,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_423  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	303,r13		! source line 303
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	304,r13		! source line 304
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	305,r13		! source line 305
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	305,r13		! source line 305
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-16]
! RETURN STATEMENT...
	mov	305,r13		! source line 305
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_63_PrintBarberStart:
	.word	_sourceFileName
	.word	_Label_424
	.word	0		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_425
	.word	-12
	.word	4
	.word	_Label_426
	.word	-16
	.word	4
	.word	0
_Label_424:
	.ascii	"PrintBarberStart\0"
	.align
_Label_425:
	.byte	'?'
	.ascii	"_temp_423\0"
	.align
_Label_426:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION PrintHeader  ===============
! 
_function_62_PrintHeader:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_62_PrintHeader,r1
	push	r1
	mov	9,r1
_Label_806:
	push	r0
	sub	r1,1,r1
	bne	_Label_806
	mov	308,r13		! source line 308
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! FOR STATEMENT...
	mov	311,r13		! source line 311
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_431 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-36]
!   Calculate and save the FOR-LOOP ending value
!   _temp_432 = 5		(4 bytes)
	mov	5,r1
	store	r1,[r14+-32]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_431  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+-40]
_Label_427:
!   Perform the FOR-LOOP termination test
!   if i > _temp_432 then goto _Label_430		
	load	[r14+-40],r1
	load	[r14+-32],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_430
_Label_428:
	mov	311,r13		! source line 311
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_433 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_433  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	312,r13		! source line 312
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_429:
!   i = i + 1
	load	[r14+-40],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
	jmp	_Label_427
! END FOR
_Label_430:
! CALL STATEMENT...
!   _temp_434 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_434  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	314,r13		! source line 314
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	315,r13		! source line 315
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_439 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-20]
!   Calculate and save the FOR-LOOP ending value
!   _temp_440 = _Global_numCustomers		(4 bytes)
	set	_Global_numCustomers,r1
	load	[r1],r1
	store	r1,[r14+-16]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_439  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+-40]
_Label_435:
!   Perform the FOR-LOOP termination test
!   if i > _temp_440 then goto _Label_438		
	load	[r14+-40],r1
	load	[r14+-16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_438
_Label_436:
	mov	315,r13		! source line 315
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	316,r13		! source line 316
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_441 = _StringConst_29
	set	_StringConst_29,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_441  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	317,r13		! source line 317
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_437:
!   i = i + 1
	load	[r14+-40],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
	jmp	_Label_435
! END FOR
_Label_438:
! CALL STATEMENT...
!   Call the function
	mov	319,r13		! source line 319
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	319,r13		! source line 319
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_62_PrintHeader:
	.word	_sourceFileName
	.word	_Label_442
	.word	0		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_443
	.word	-12
	.word	4
	.word	_Label_444
	.word	-16
	.word	4
	.word	_Label_445
	.word	-20
	.word	4
	.word	_Label_446
	.word	-24
	.word	4
	.word	_Label_447
	.word	-28
	.word	4
	.word	_Label_448
	.word	-32
	.word	4
	.word	_Label_449
	.word	-36
	.word	4
	.word	_Label_450
	.word	-40
	.word	4
	.word	0
_Label_442:
	.ascii	"PrintHeader\0"
	.align
_Label_443:
	.byte	'?'
	.ascii	"_temp_441\0"
	.align
_Label_444:
	.byte	'?'
	.ascii	"_temp_440\0"
	.align
_Label_445:
	.byte	'?'
	.ascii	"_temp_439\0"
	.align
_Label_446:
	.byte	'?'
	.ascii	"_temp_434\0"
	.align
_Label_447:
	.byte	'?'
	.ascii	"_temp_433\0"
	.align
_Label_448:
	.byte	'?'
	.ascii	"_temp_432\0"
	.align
_Label_449:
	.byte	'?'
	.ascii	"_temp_431\0"
	.align
_Label_450:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  FUNCTION PrintBarberEnd  ===============
! 
_function_61_PrintBarberEnd:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_61_PrintBarberEnd,r1
	push	r1
	mov	3,r1
_Label_807:
	push	r0
	sub	r1,1,r1
	bne	_Label_807
	mov	322,r13		! source line 322
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	326,r13		! source line 326
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	326,r13		! source line 326
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-16]
! CALL STATEMENT...
!   Call the function
	mov	327,r13		! source line 327
	mov	"\0\0CA",r10
	call	_function_60_PrintChairs
! CALL STATEMENT...
!   _temp_451 = _StringConst_30
	set	_StringConst_30,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_451  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	328,r13		! source line 328
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	329,r13		! source line 329
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	330,r13		! source line 330
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	330,r13		! source line 330
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-16]
! RETURN STATEMENT...
	mov	330,r13		! source line 330
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_61_PrintBarberEnd:
	.word	_sourceFileName
	.word	_Label_452
	.word	0		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_453
	.word	-12
	.word	4
	.word	_Label_454
	.word	-16
	.word	4
	.word	0
_Label_452:
	.ascii	"PrintBarberEnd\0"
	.align
_Label_453:
	.byte	'?'
	.ascii	"_temp_451\0"
	.align
_Label_454:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION PrintChairs  ===============
! 
_function_60_PrintChairs:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_60_PrintChairs,r1
	push	r1
	mov	8,r1
_Label_808:
	push	r0
	sub	r1,1,r1
	bne	_Label_808
	mov	333,r13		! source line 333
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! FOR STATEMENT...
	mov	336,r13		! source line 336
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_459 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-32]
!   Calculate and save the FOR-LOOP ending value
!   _temp_460 = _Global_numWaitingCustomers		(4 bytes)
	set	_Global_numWaitingCustomers,r1
	load	[r1],r1
	store	r1,[r14+-28]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_459  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+-36]
_Label_455:
!   Perform the FOR-LOOP termination test
!   if i > _temp_460 then goto _Label_458		
	load	[r14+-36],r1
	load	[r14+-28],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_458
_Label_456:
	mov	336,r13		! source line 336
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_461 = _StringConst_31
	set	_StringConst_31,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_461  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	337,r13		! source line 337
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_457:
!   i = i + 1
	load	[r14+-36],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
	jmp	_Label_455
! END FOR
_Label_458:
! FOR STATEMENT...
	mov	339,r13		! source line 339
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_466 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-20]
!   Calculate and save the FOR-LOOP ending value
!   _temp_467 = 5 - _Global_numWaitingCustomers		(int)
	mov	5,r1
	set	_Global_numWaitingCustomers,r2
	load	[r2],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_466  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+-36]
_Label_462:
!   Perform the FOR-LOOP termination test
!   if i > _temp_467 then goto _Label_465		
	load	[r14+-36],r1
	load	[r14+-16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_465
_Label_463:
	mov	339,r13		! source line 339
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_468 = _StringConst_32
	set	_StringConst_32,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_468  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	340,r13		! source line 340
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_464:
!   i = i + 1
	load	[r14+-36],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
	jmp	_Label_462
! END FOR
_Label_465:
! RETURN STATEMENT...
	mov	339,r13		! source line 339
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_60_PrintChairs:
	.word	_sourceFileName
	.word	_Label_469
	.word	0		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_470
	.word	-12
	.word	4
	.word	_Label_471
	.word	-16
	.word	4
	.word	_Label_472
	.word	-20
	.word	4
	.word	_Label_473
	.word	-24
	.word	4
	.word	_Label_474
	.word	-28
	.word	4
	.word	_Label_475
	.word	-32
	.word	4
	.word	_Label_476
	.word	-36
	.word	4
	.word	0
_Label_469:
	.ascii	"PrintChairs\0"
	.align
_Label_470:
	.byte	'?'
	.ascii	"_temp_468\0"
	.align
_Label_471:
	.byte	'?'
	.ascii	"_temp_467\0"
	.align
_Label_472:
	.byte	'?'
	.ascii	"_temp_466\0"
	.align
_Label_473:
	.byte	'?'
	.ascii	"_temp_461\0"
	.align
_Label_474:
	.byte	'?'
	.ascii	"_temp_460\0"
	.align
_Label_475:
	.byte	'?'
	.ascii	"_temp_459\0"
	.align
_Label_476:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  FUNCTION PrintCustomerState  ===============
! 
_function_59_PrintCustomerState:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_59_PrintCustomerState,r1
	push	r1
	mov	8,r1
_Label_809:
	push	r0
	sub	r1,1,r1
	bne	_Label_809
	mov	344,r13		! source line 344
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	348,r13		! source line 348
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	348,r13		! source line 348
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! CALL STATEMENT...
!   Call the function
	mov	349,r13		! source line 349
	mov	"\0\0CA",r10
	call	_function_60_PrintChairs
! CALL STATEMENT...
!   _temp_477 = _StringConst_33
	set	_StringConst_33,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_477  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	350,r13		! source line 350
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_478 = _StringConst_34
	set	_StringConst_34,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_478  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	351,r13		! source line 351
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	352,r13		! source line 352
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_483 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-20]
!   Calculate and save the FOR-LOOP ending value
!   _temp_484 = customerNumber		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-16]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_483  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+-32]
_Label_479:
!   Perform the FOR-LOOP termination test
!   if i > _temp_484 then goto _Label_482		
	load	[r14+-32],r1
	load	[r14+-16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_482
_Label_480:
	mov	352,r13		! source line 352
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_485 = _StringConst_35
	set	_StringConst_35,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_485  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	353,r13		! source line 353
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_481:
!   i = i + 1
	load	[r14+-32],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
	jmp	_Label_479
! END FOR
_Label_482:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=customerState  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	355,r13		! source line 355
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	356,r13		! source line 356
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	357,r13		! source line 357
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	357,r13		! source line 357
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! RETURN STATEMENT...
	mov	357,r13		! source line 357
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_59_PrintCustomerState:
	.word	_sourceFileName
	.word	_Label_486
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_487
	.word	8
	.word	4
	.word	_Label_488
	.word	12
	.word	4
	.word	_Label_489
	.word	-12
	.word	4
	.word	_Label_490
	.word	-16
	.word	4
	.word	_Label_491
	.word	-20
	.word	4
	.word	_Label_492
	.word	-24
	.word	4
	.word	_Label_493
	.word	-28
	.word	4
	.word	_Label_494
	.word	-32
	.word	4
	.word	_Label_495
	.word	-36
	.word	4
	.word	0
_Label_486:
	.ascii	"PrintCustomerState\0"
	.align
_Label_487:
	.byte	'I'
	.ascii	"customerNumber\0"
	.align
_Label_488:
	.byte	'P'
	.ascii	"customerState\0"
	.align
_Label_489:
	.byte	'?'
	.ascii	"_temp_485\0"
	.align
_Label_490:
	.byte	'?'
	.ascii	"_temp_484\0"
	.align
_Label_491:
	.byte	'?'
	.ascii	"_temp_483\0"
	.align
_Label_492:
	.byte	'?'
	.ascii	"_temp_478\0"
	.align
_Label_493:
	.byte	'?'
	.ascii	"_temp_477\0"
	.align
_Label_494:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_495:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION TheGamingParlor  ===============
! 
_function_58_TheGamingParlor:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_58_TheGamingParlor,r1
	push	r1
	mov	17452,r1
_Label_810:
	push	r0
	sub	r1,1,r1
	bne	_Label_810
	mov	368,r13		! source line 368
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! customers
!   NEW ARRAY Constructor...
!   _temp_497 = &_temp_496
	set	-37064,r1
	add	r14,r1,r1
	store	r1,[r14+-4324]
!   _temp_497 = _temp_497 + 4
	load	[r14+-4324],r1
	add	r1,4,r1
	store	r1,[r14+-4324]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_499 = zeros  (sizeInBytes=4092)
	add	r14,-4316,r4
	mov	1023,r3
_Label_811:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_811
!   _temp_499 = _P_Thread_Thread
	set	_P_Thread_Thread,r1
	store	r1,[r14+-4316]
	mov	8,r1
	store	r1,[r14+-4320]
_Label_501:
!   Data Move: *_temp_497 = _temp_499  (sizeInBytes=4092)
	add	r14,-4316,r5
	load	[r14+-4324],r4
	mov	1023,r3
_Label_812:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_812
!   _temp_497 = _temp_497 + 4092
	load	[r14+-4324],r1
	add	r1,4092,r1
	store	r1,[r14+-4324]
!   _temp_498 = _temp_498 + -1
	load	[r14+-4320],r1
	add	r1,-1,r1
	store	r1,[r14+-4320]
!   if intNotZero (_temp_498) then goto _Label_501
	load	[r14+-4320],r1
	cmp	r1,r0
	bne	_Label_501
!   Initialize the array size...
	mov	8,r1
	set	-37064,r2
	store	r1,[r14+r2]
!   _temp_502 = &_temp_496
	set	-37064,r1
	add	r14,r1,r1
	store	r1,[r14+-220]
!   make sure array has size 8
	load	[r14+-220],r1
	load	[r1],r1
	set	8, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: customers = *_temp_502  (sizeInBytes=32740)
	load	[r14+-220],r5
	set	-69804,r4
	add	r14,r4,r4
	mov	8185,r3
_Label_813:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_813
! ASSIGNMENT STATEMENT...
	mov	372,r13		! source line 372
	mov	"\0\0AS",r10
!   _Global_numDice = 8		(4 bytes)
	mov	8,r1
	set	_Global_numDice,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	373,r13		! source line 373
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _Global_frontDesk = zeros  (sizeInBytes=20)
	set	_Global_frontDesk,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   _Global_frontDesk = _P_Synch_Mutex
	set	_P_Synch_Mutex,r1
	set	_Global_frontDesk,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	374,r13		! source line 374
	mov	"\0\0SE",r10
!   _temp_504 = &_Global_frontDesk
	set	_Global_frontDesk,r1
	store	r1,[r14+-212]
!   Send message Init
	load	[r14+-212],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	375,r13		! source line 375
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _Global_gameAvailable = zeros  (sizeInBytes=16)
	set	_Global_gameAvailable,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   _Global_gameAvailable = _P_Synch_Condition
	set	_P_Synch_Condition,r1
	set	_Global_gameAvailable,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	376,r13		! source line 376
	mov	"\0\0SE",r10
!   _temp_506 = &_Global_gameAvailable
	set	_Global_gameAvailable,r1
	store	r1,[r14+-204]
!   Send message Init
	load	[r14+-204],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	378,r13		! source line 378
	mov	"\0\0SE",r10
!   _temp_507 = _StringConst_36
	set	_StringConst_36,r1
	store	r1,[r14+-200]
!   _temp_508 = &customers
	set	-69804,r1
	add	r14,r1,r1
	store	r1,[r14+-196]
!   Move address of _temp_508 [0 ] into _temp_509
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-196],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-192]
!   Prepare Argument: offset=12  value=_temp_507  sizeInBytes=4
	load	[r14+-200],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-192],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	379,r13		! source line 379
	mov	"\0\0SE",r10
!   _temp_510 = _function_57_PlayGame
	set	_function_57_PlayGame,r1
	store	r1,[r14+-188]
!   _temp_511 = &customers
	set	-69804,r1
	add	r14,r1,r1
	store	r1,[r14+-184]
!   Move address of _temp_511 [0 ] into _temp_512
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
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-180]
!   Prepare Argument: offset=12  value=_temp_510  sizeInBytes=4
	load	[r14+-188],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-180],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	380,r13		! source line 380
	mov	"\0\0SE",r10
!   _temp_513 = _StringConst_37
	set	_StringConst_37,r1
	store	r1,[r14+-176]
!   _temp_514 = &customers
	set	-69804,r1
	add	r14,r1,r1
	store	r1,[r14+-172]
!   Move address of _temp_514 [1 ] into _temp_515
!     make sure index expr is >= 0
	mov	1,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-172],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-168]
!   Prepare Argument: offset=12  value=_temp_513  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-168],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	381,r13		! source line 381
	mov	"\0\0SE",r10
!   _temp_516 = _function_57_PlayGame
	set	_function_57_PlayGame,r1
	store	r1,[r14+-164]
!   _temp_517 = &customers
	set	-69804,r1
	add	r14,r1,r1
	store	r1,[r14+-160]
!   Move address of _temp_517 [1 ] into _temp_518
!     make sure index expr is >= 0
	mov	1,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-160],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-156]
!   Prepare Argument: offset=12  value=_temp_516  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-156],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	382,r13		! source line 382
	mov	"\0\0SE",r10
!   _temp_519 = _StringConst_38
	set	_StringConst_38,r1
	store	r1,[r14+-152]
!   _temp_520 = &customers
	set	-69804,r1
	add	r14,r1,r1
	store	r1,[r14+-148]
!   Move address of _temp_520 [2 ] into _temp_521
!     make sure index expr is >= 0
	mov	2,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-148],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-144]
!   Prepare Argument: offset=12  value=_temp_519  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-144],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	383,r13		! source line 383
	mov	"\0\0SE",r10
!   _temp_522 = _function_57_PlayGame
	set	_function_57_PlayGame,r1
	store	r1,[r14+-140]
!   _temp_523 = &customers
	set	-69804,r1
	add	r14,r1,r1
	store	r1,[r14+-136]
!   Move address of _temp_523 [2 ] into _temp_524
!     make sure index expr is >= 0
	mov	2,r2
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
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-132]
!   Prepare Argument: offset=12  value=_temp_522  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-132],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	384,r13		! source line 384
	mov	"\0\0SE",r10
!   _temp_525 = _StringConst_39
	set	_StringConst_39,r1
	store	r1,[r14+-128]
!   _temp_526 = &customers
	set	-69804,r1
	add	r14,r1,r1
	store	r1,[r14+-124]
!   Move address of _temp_526 [3 ] into _temp_527
!     make sure index expr is >= 0
	mov	3,r2
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
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-120]
!   Prepare Argument: offset=12  value=_temp_525  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-120],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	385,r13		! source line 385
	mov	"\0\0SE",r10
!   _temp_528 = _function_57_PlayGame
	set	_function_57_PlayGame,r1
	store	r1,[r14+-116]
!   _temp_529 = &customers
	set	-69804,r1
	add	r14,r1,r1
	store	r1,[r14+-112]
!   Move address of _temp_529 [3 ] into _temp_530
!     make sure index expr is >= 0
	mov	3,r2
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
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-108]
!   Prepare Argument: offset=12  value=_temp_528  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-108],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	386,r13		! source line 386
	mov	"\0\0SE",r10
!   _temp_531 = _StringConst_40
	set	_StringConst_40,r1
	store	r1,[r14+-104]
!   _temp_532 = &customers
	set	-69804,r1
	add	r14,r1,r1
	store	r1,[r14+-100]
!   Move address of _temp_532 [4 ] into _temp_533
!     make sure index expr is >= 0
	mov	4,r2
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
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-96]
!   Prepare Argument: offset=12  value=_temp_531  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	387,r13		! source line 387
	mov	"\0\0SE",r10
!   _temp_534 = _function_57_PlayGame
	set	_function_57_PlayGame,r1
	store	r1,[r14+-92]
!   _temp_535 = &customers
	set	-69804,r1
	add	r14,r1,r1
	store	r1,[r14+-88]
!   Move address of _temp_535 [4 ] into _temp_536
!     make sure index expr is >= 0
	mov	4,r2
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
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-84]
!   Prepare Argument: offset=12  value=_temp_534  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-84],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	388,r13		! source line 388
	mov	"\0\0SE",r10
!   _temp_537 = _StringConst_41
	set	_StringConst_41,r1
	store	r1,[r14+-80]
!   _temp_538 = &customers
	set	-69804,r1
	add	r14,r1,r1
	store	r1,[r14+-76]
!   Move address of _temp_538 [5 ] into _temp_539
!     make sure index expr is >= 0
	mov	5,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-76],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_537  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	389,r13		! source line 389
	mov	"\0\0SE",r10
!   _temp_540 = _function_57_PlayGame
	set	_function_57_PlayGame,r1
	store	r1,[r14+-68]
!   _temp_541 = &customers
	set	-69804,r1
	add	r14,r1,r1
	store	r1,[r14+-64]
!   Move address of _temp_541 [5 ] into _temp_542
!     make sure index expr is >= 0
	mov	5,r2
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
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-60]
!   Prepare Argument: offset=12  value=_temp_540  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	390,r13		! source line 390
	mov	"\0\0SE",r10
!   _temp_543 = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-56]
!   _temp_544 = &customers
	set	-69804,r1
	add	r14,r1,r1
	store	r1,[r14+-52]
!   Move address of _temp_544 [6 ] into _temp_545
!     make sure index expr is >= 0
	mov	6,r2
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
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_543  sizeInBytes=4
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
! SEND STATEMENT...
	mov	391,r13		! source line 391
	mov	"\0\0SE",r10
!   _temp_546 = _function_57_PlayGame
	set	_function_57_PlayGame,r1
	store	r1,[r14+-44]
!   _temp_547 = &customers
	set	-69804,r1
	add	r14,r1,r1
	store	r1,[r14+-40]
!   Move address of _temp_547 [6 ] into _temp_548
!     make sure index expr is >= 0
	mov	6,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-40],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_546  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=3  sizeInBytes=4
	mov	3,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	392,r13		! source line 392
	mov	"\0\0SE",r10
!   _temp_549 = _StringConst_43
	set	_StringConst_43,r1
	store	r1,[r14+-32]
!   _temp_550 = &customers
	set	-69804,r1
	add	r14,r1,r1
	store	r1,[r14+-28]
!   Move address of _temp_550 [7 ] into _temp_551
!     make sure index expr is >= 0
	mov	7,r2
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
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_549  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	393,r13		! source line 393
	mov	"\0\0SE",r10
!   _temp_552 = _function_57_PlayGame
	set	_function_57_PlayGame,r1
	store	r1,[r14+-20]
!   _temp_553 = &customers
	set	-69804,r1
	add	r14,r1,r1
	store	r1,[r14+-16]
!   Move address of _temp_553 [7 ] into _temp_554
!     make sure index expr is >= 0
	mov	7,r2
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
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_552  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=3  sizeInBytes=4
	mov	3,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	393,r13		! source line 393
	mov	"\0\0RE",r10
	set	69812,r1
	add	r15,r1,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_58_TheGamingParlor:
	.word	_sourceFileName
	.word	_Label_555
	.word	0		! total size of parameters
	.word	69808		! frame size = 69808
	.word	_Label_556
	.word	-12
	.word	4
	.word	_Label_557
	.word	-16
	.word	4
	.word	_Label_558
	.word	-20
	.word	4
	.word	_Label_559
	.word	-24
	.word	4
	.word	_Label_560
	.word	-28
	.word	4
	.word	_Label_561
	.word	-32
	.word	4
	.word	_Label_562
	.word	-36
	.word	4
	.word	_Label_563
	.word	-40
	.word	4
	.word	_Label_564
	.word	-44
	.word	4
	.word	_Label_565
	.word	-48
	.word	4
	.word	_Label_566
	.word	-52
	.word	4
	.word	_Label_567
	.word	-56
	.word	4
	.word	_Label_568
	.word	-60
	.word	4
	.word	_Label_569
	.word	-64
	.word	4
	.word	_Label_570
	.word	-68
	.word	4
	.word	_Label_571
	.word	-72
	.word	4
	.word	_Label_572
	.word	-76
	.word	4
	.word	_Label_573
	.word	-80
	.word	4
	.word	_Label_574
	.word	-84
	.word	4
	.word	_Label_575
	.word	-88
	.word	4
	.word	_Label_576
	.word	-92
	.word	4
	.word	_Label_577
	.word	-96
	.word	4
	.word	_Label_578
	.word	-100
	.word	4
	.word	_Label_579
	.word	-104
	.word	4
	.word	_Label_580
	.word	-108
	.word	4
	.word	_Label_581
	.word	-112
	.word	4
	.word	_Label_582
	.word	-116
	.word	4
	.word	_Label_583
	.word	-120
	.word	4
	.word	_Label_584
	.word	-124
	.word	4
	.word	_Label_585
	.word	-128
	.word	4
	.word	_Label_586
	.word	-132
	.word	4
	.word	_Label_587
	.word	-136
	.word	4
	.word	_Label_588
	.word	-140
	.word	4
	.word	_Label_589
	.word	-144
	.word	4
	.word	_Label_590
	.word	-148
	.word	4
	.word	_Label_591
	.word	-152
	.word	4
	.word	_Label_592
	.word	-156
	.word	4
	.word	_Label_593
	.word	-160
	.word	4
	.word	_Label_594
	.word	-164
	.word	4
	.word	_Label_595
	.word	-168
	.word	4
	.word	_Label_596
	.word	-172
	.word	4
	.word	_Label_597
	.word	-176
	.word	4
	.word	_Label_598
	.word	-180
	.word	4
	.word	_Label_599
	.word	-184
	.word	4
	.word	_Label_600
	.word	-188
	.word	4
	.word	_Label_601
	.word	-192
	.word	4
	.word	_Label_602
	.word	-196
	.word	4
	.word	_Label_603
	.word	-200
	.word	4
	.word	_Label_604
	.word	-204
	.word	4
	.word	_Label_605
	.word	-208
	.word	4
	.word	_Label_606
	.word	-212
	.word	4
	.word	_Label_607
	.word	-216
	.word	4
	.word	_Label_608
	.word	-220
	.word	4
	.word	_Label_609
	.word	-224
	.word	4
	.word	_Label_610
	.word	-4316
	.word	4092
	.word	_Label_611
	.word	-4320
	.word	4
	.word	_Label_612
	.word	-4324
	.word	4
	.word	_Label_613
	.word	-37064
	.word	32740
	.word	_Label_614
	.word	-69804
	.word	32740
	.word	0
_Label_555:
	.ascii	"TheGamingParlor\0"
	.align
_Label_556:
	.byte	'?'
	.ascii	"_temp_554\0"
	.align
_Label_557:
	.byte	'?'
	.ascii	"_temp_553\0"
	.align
_Label_558:
	.byte	'?'
	.ascii	"_temp_552\0"
	.align
_Label_559:
	.byte	'?'
	.ascii	"_temp_551\0"
	.align
_Label_560:
	.byte	'?'
	.ascii	"_temp_550\0"
	.align
_Label_561:
	.byte	'?'
	.ascii	"_temp_549\0"
	.align
_Label_562:
	.byte	'?'
	.ascii	"_temp_548\0"
	.align
_Label_563:
	.byte	'?'
	.ascii	"_temp_547\0"
	.align
_Label_564:
	.byte	'?'
	.ascii	"_temp_546\0"
	.align
_Label_565:
	.byte	'?'
	.ascii	"_temp_545\0"
	.align
_Label_566:
	.byte	'?'
	.ascii	"_temp_544\0"
	.align
_Label_567:
	.byte	'?'
	.ascii	"_temp_543\0"
	.align
_Label_568:
	.byte	'?'
	.ascii	"_temp_542\0"
	.align
_Label_569:
	.byte	'?'
	.ascii	"_temp_541\0"
	.align
_Label_570:
	.byte	'?'
	.ascii	"_temp_540\0"
	.align
_Label_571:
	.byte	'?'
	.ascii	"_temp_539\0"
	.align
_Label_572:
	.byte	'?'
	.ascii	"_temp_538\0"
	.align
_Label_573:
	.byte	'?'
	.ascii	"_temp_537\0"
	.align
_Label_574:
	.byte	'?'
	.ascii	"_temp_536\0"
	.align
_Label_575:
	.byte	'?'
	.ascii	"_temp_535\0"
	.align
_Label_576:
	.byte	'?'
	.ascii	"_temp_534\0"
	.align
_Label_577:
	.byte	'?'
	.ascii	"_temp_533\0"
	.align
_Label_578:
	.byte	'?'
	.ascii	"_temp_532\0"
	.align
_Label_579:
	.byte	'?'
	.ascii	"_temp_531\0"
	.align
_Label_580:
	.byte	'?'
	.ascii	"_temp_530\0"
	.align
_Label_581:
	.byte	'?'
	.ascii	"_temp_529\0"
	.align
_Label_582:
	.byte	'?'
	.ascii	"_temp_528\0"
	.align
_Label_583:
	.byte	'?'
	.ascii	"_temp_527\0"
	.align
_Label_584:
	.byte	'?'
	.ascii	"_temp_526\0"
	.align
_Label_585:
	.byte	'?'
	.ascii	"_temp_525\0"
	.align
_Label_586:
	.byte	'?'
	.ascii	"_temp_524\0"
	.align
_Label_587:
	.byte	'?'
	.ascii	"_temp_523\0"
	.align
_Label_588:
	.byte	'?'
	.ascii	"_temp_522\0"
	.align
_Label_589:
	.byte	'?'
	.ascii	"_temp_521\0"
	.align
_Label_590:
	.byte	'?'
	.ascii	"_temp_520\0"
	.align
_Label_591:
	.byte	'?'
	.ascii	"_temp_519\0"
	.align
_Label_592:
	.byte	'?'
	.ascii	"_temp_518\0"
	.align
_Label_593:
	.byte	'?'
	.ascii	"_temp_517\0"
	.align
_Label_594:
	.byte	'?'
	.ascii	"_temp_516\0"
	.align
_Label_595:
	.byte	'?'
	.ascii	"_temp_515\0"
	.align
_Label_596:
	.byte	'?'
	.ascii	"_temp_514\0"
	.align
_Label_597:
	.byte	'?'
	.ascii	"_temp_513\0"
	.align
_Label_598:
	.byte	'?'
	.ascii	"_temp_512\0"
	.align
_Label_599:
	.byte	'?'
	.ascii	"_temp_511\0"
	.align
_Label_600:
	.byte	'?'
	.ascii	"_temp_510\0"
	.align
_Label_601:
	.byte	'?'
	.ascii	"_temp_509\0"
	.align
_Label_602:
	.byte	'?'
	.ascii	"_temp_508\0"
	.align
_Label_603:
	.byte	'?'
	.ascii	"_temp_507\0"
	.align
_Label_604:
	.byte	'?'
	.ascii	"_temp_506\0"
	.align
_Label_605:
	.byte	'?'
	.ascii	"_temp_505\0"
	.align
_Label_606:
	.byte	'?'
	.ascii	"_temp_504\0"
	.align
_Label_607:
	.byte	'?'
	.ascii	"_temp_503\0"
	.align
_Label_608:
	.byte	'?'
	.ascii	"_temp_502\0"
	.align
_Label_609:
	.byte	'?'
	.ascii	"_temp_500\0"
	.align
_Label_610:
	.byte	'?'
	.ascii	"_temp_499\0"
	.align
_Label_611:
	.byte	'?'
	.ascii	"_temp_498\0"
	.align
_Label_612:
	.byte	'?'
	.ascii	"_temp_497\0"
	.align
_Label_613:
	.byte	'?'
	.ascii	"_temp_496\0"
	.align
_Label_614:
	.byte	'A'
	.ascii	"customers\0"
	.align
! 
! ===============  FUNCTION PlayGame  ===============
! 
_function_57_PlayGame:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_57_PlayGame,r1
	push	r1
	mov	2,r1
_Label_814:
	push	r0
	sub	r1,1,r1
	bne	_Label_814
	mov	396,r13		! source line 396
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	399,r13		! source line 399
	mov	"\0\0AS",r10
!   numPlays = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-12]
! WHILE STATEMENT...
	mov	400,r13		! source line 400
	mov	"\0\0WH",r10
_Label_615:
!   if numPlays >= 5 then goto _Label_617		(int)
	load	[r14+-12],r1
	mov	5,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_617
!	jmp	_Label_616
_Label_616:
	mov	400,r13		! source line 400
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	401,r13		! source line 401
	mov	"\0\0AS",r10
!   numPlays = numPlays + 1		(int)
	load	[r14+-12],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
! IF STATEMENT...
	mov	402,r13		! source line 402
	mov	"\0\0IF",r10
!   if intIsZero (game) then goto _Label_618
	load	[r14+8],r1
	cmp	r1,r0
	be	_Label_618
	jmp	_Label_619
_Label_618:
! THEN...
	mov	403,r13		! source line 403
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+0]
!   Call the function
	mov	403,r13		! source line 403
	mov	"\0\0CA",r10
	call	_function_52_Request
! SEND STATEMENT...
	mov	404,r13		! source line 404
	mov	"\0\0SE",r10
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+0]
!   Call the function
	mov	405,r13		! source line 405
	mov	"\0\0CA",r10
	call	_function_51_Return
	jmp	_Label_620
_Label_619:
! ELSE...
	mov	406,r13		! source line 406
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	406,r13		! source line 406
	mov	"\0\0IF",r10
!   if game != 1 then goto _Label_622		(int)
	load	[r14+8],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_622
!	jmp	_Label_621
_Label_621:
! THEN...
	mov	407,r13		! source line 407
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=5  sizeInBytes=4
	mov	5,r1
	store	r1,[r15+0]
!   Call the function
	mov	407,r13		! source line 407
	mov	"\0\0CA",r10
	call	_function_52_Request
! SEND STATEMENT...
	mov	408,r13		! source line 408
	mov	"\0\0SE",r10
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=5  sizeInBytes=4
	mov	5,r1
	store	r1,[r15+0]
!   Call the function
	mov	409,r13		! source line 409
	mov	"\0\0CA",r10
	call	_function_51_Return
	jmp	_Label_623
_Label_622:
! ELSE...
	mov	410,r13		! source line 410
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	410,r13		! source line 410
	mov	"\0\0IF",r10
!   if game != 2 then goto _Label_625		(int)
	load	[r14+8],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_625
!	jmp	_Label_624
_Label_624:
! THEN...
	mov	411,r13		! source line 411
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	411,r13		! source line 411
	mov	"\0\0CA",r10
	call	_function_52_Request
! SEND STATEMENT...
	mov	412,r13		! source line 412
	mov	"\0\0SE",r10
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	413,r13		! source line 413
	mov	"\0\0CA",r10
	call	_function_51_Return
	jmp	_Label_626
_Label_625:
! ELSE...
	mov	414,r13		! source line 414
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	414,r13		! source line 414
	mov	"\0\0IF",r10
!   if game != 3 then goto _Label_628		(int)
	load	[r14+8],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_628
!	jmp	_Label_627
_Label_627:
! THEN...
	mov	415,r13		! source line 415
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	415,r13		! source line 415
	mov	"\0\0CA",r10
	call	_function_52_Request
! SEND STATEMENT...
	mov	416,r13		! source line 416
	mov	"\0\0SE",r10
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	417,r13		! source line 417
	mov	"\0\0CA",r10
	call	_function_51_Return
! END IF...
_Label_628:
! END IF...
_Label_626:
! END IF...
_Label_623:
! END IF...
_Label_620:
! END WHILE...
	jmp	_Label_615
_Label_617:
! RETURN STATEMENT...
	mov	400,r13		! source line 400
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_57_PlayGame:
	.word	_sourceFileName
	.word	_Label_629
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_630
	.word	8
	.word	4
	.word	_Label_631
	.word	-12
	.word	4
	.word	0
_Label_629:
	.ascii	"PlayGame\0"
	.align
_Label_630:
	.byte	'I'
	.ascii	"game\0"
	.align
_Label_631:
	.byte	'I'
	.ascii	"numPlays\0"
	.align
! 
! ===============  FUNCTION PrintRequest  ===============
! 
_function_56_PrintRequest:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_56_PrintRequest,r1
	push	r1
	mov	4,r1
_Label_815:
	push	r0
	sub	r1,1,r1
	bne	_Label_815
	mov	422,r13		! source line 422
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_633 = _P_Thread_currentThread + 72
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-16]
!   Data Move: _temp_632 = *_temp_633  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_632  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	423,r13		! source line 423
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_634 = _StringConst_44
	set	_StringConst_44,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_634  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	424,r13		! source line 424
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=n  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	425,r13		! source line 425
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	426,r13		! source line 426
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   Call the function
	mov	427,r13		! source line 427
	mov	"\0\0CA",r10
	call	_function_55_PrintAvailableDice
! RETURN STATEMENT...
	mov	427,r13		! source line 427
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_56_PrintRequest:
	.word	_sourceFileName
	.word	_Label_635
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_636
	.word	8
	.word	4
	.word	_Label_637
	.word	-12
	.word	4
	.word	_Label_638
	.word	-16
	.word	4
	.word	_Label_639
	.word	-20
	.word	4
	.word	0
_Label_635:
	.ascii	"PrintRequest\0"
	.align
_Label_636:
	.byte	'I'
	.ascii	"n\0"
	.align
_Label_637:
	.byte	'?'
	.ascii	"_temp_634\0"
	.align
_Label_638:
	.byte	'?'
	.ascii	"_temp_633\0"
	.align
_Label_639:
	.byte	'?'
	.ascii	"_temp_632\0"
	.align
! 
! ===============  FUNCTION PrintAvailableDice  ===============
! 
_function_55_PrintAvailableDice:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_55_PrintAvailableDice,r1
	push	r1
	mov	2,r1
_Label_816:
	push	r0
	sub	r1,1,r1
	bne	_Label_816
	mov	430,r13		! source line 430
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_640 = _StringConst_45
	set	_StringConst_45,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_640  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	431,r13		! source line 431
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=_Global_numDice  sizeInBytes=4
	set	_Global_numDice,r1
	load	[r1],r1
	store	r1,[r15+0]
!   Call the function
	mov	432,r13		! source line 432
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	433,r13		! source line 433
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	433,r13		! source line 433
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_55_PrintAvailableDice:
	.word	_sourceFileName
	.word	_Label_641
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_642
	.word	-12
	.word	4
	.word	0
_Label_641:
	.ascii	"PrintAvailableDice\0"
	.align
_Label_642:
	.byte	'?'
	.ascii	"_temp_640\0"
	.align
! 
! ===============  FUNCTION PrintProceeds  ===============
! 
_function_54_PrintProceeds:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_54_PrintProceeds,r1
	push	r1
	mov	4,r1
_Label_817:
	push	r0
	sub	r1,1,r1
	bne	_Label_817
	mov	436,r13		! source line 436
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_644 = _P_Thread_currentThread + 72
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-16]
!   Data Move: _temp_643 = *_temp_644  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_643  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	437,r13		! source line 437
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_645 = _StringConst_46
	set	_StringConst_46,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_645  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	438,r13		! source line 438
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=n  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	439,r13		! source line 439
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	440,r13		! source line 440
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   Call the function
	mov	441,r13		! source line 441
	mov	"\0\0CA",r10
	call	_function_55_PrintAvailableDice
! RETURN STATEMENT...
	mov	441,r13		! source line 441
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_54_PrintProceeds:
	.word	_sourceFileName
	.word	_Label_646
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_647
	.word	8
	.word	4
	.word	_Label_648
	.word	-12
	.word	4
	.word	_Label_649
	.word	-16
	.word	4
	.word	_Label_650
	.word	-20
	.word	4
	.word	0
_Label_646:
	.ascii	"PrintProceeds\0"
	.align
_Label_647:
	.byte	'I'
	.ascii	"n\0"
	.align
_Label_648:
	.byte	'?'
	.ascii	"_temp_645\0"
	.align
_Label_649:
	.byte	'?'
	.ascii	"_temp_644\0"
	.align
_Label_650:
	.byte	'?'
	.ascii	"_temp_643\0"
	.align
! 
! ===============  FUNCTION PrintReturn  ===============
! 
_function_53_PrintReturn:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_53_PrintReturn,r1
	push	r1
	mov	4,r1
_Label_818:
	push	r0
	sub	r1,1,r1
	bne	_Label_818
	mov	444,r13		! source line 444
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_652 = _P_Thread_currentThread + 72
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-16]
!   Data Move: _temp_651 = *_temp_652  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_651  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	445,r13		! source line 445
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_653 = _StringConst_47
	set	_StringConst_47,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_653  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	446,r13		! source line 446
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=n  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	447,r13		! source line 447
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	448,r13		! source line 448
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   Call the function
	mov	449,r13		! source line 449
	mov	"\0\0CA",r10
	call	_function_55_PrintAvailableDice
! RETURN STATEMENT...
	mov	449,r13		! source line 449
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_53_PrintReturn:
	.word	_sourceFileName
	.word	_Label_654
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_655
	.word	8
	.word	4
	.word	_Label_656
	.word	-12
	.word	4
	.word	_Label_657
	.word	-16
	.word	4
	.word	_Label_658
	.word	-20
	.word	4
	.word	0
_Label_654:
	.ascii	"PrintReturn\0"
	.align
_Label_655:
	.byte	'I'
	.ascii	"n\0"
	.align
_Label_656:
	.byte	'?'
	.ascii	"_temp_653\0"
	.align
_Label_657:
	.byte	'?'
	.ascii	"_temp_652\0"
	.align
_Label_658:
	.byte	'?'
	.ascii	"_temp_651\0"
	.align
! 
! ===============  FUNCTION Request  ===============
! 
_function_52_Request:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_52_Request,r1
	push	r1
	mov	6,r1
_Label_819:
	push	r0
	sub	r1,1,r1
	bne	_Label_819
	mov	452,r13		! source line 452
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	453,r13		! source line 453
	mov	"\0\0SE",r10
!   _temp_659 = &_Global_frontDesk
	set	_Global_frontDesk,r1
	store	r1,[r14+-24]
!   Send message Lock
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=numDiceRequested  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	454,r13		! source line 454
	mov	"\0\0CA",r10
	call	_function_56_PrintRequest
! WHILE STATEMENT...
	mov	455,r13		! source line 455
	mov	"\0\0WH",r10
_Label_660:
!   if numDiceRequested <= _Global_numDice then goto _Label_662		(int)
	load	[r14+8],r1
	set	_Global_numDice,r2
	load	[r2],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_662
!	jmp	_Label_661
_Label_661:
	mov	455,r13		! source line 455
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	456,r13		! source line 456
	mov	"\0\0SE",r10
!   _temp_663 = &_Global_frontDesk
	set	_Global_frontDesk,r1
	store	r1,[r14+-20]
!   _temp_664 = &_Global_gameAvailable
	set	_Global_gameAvailable,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_663  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_660
_Label_662:
! ASSIGNMENT STATEMENT...
	mov	458,r13		! source line 458
	mov	"\0\0AS",r10
!   _Global_numDice = _Global_numDice - numDiceRequested		(int)
	set	_Global_numDice,r1
	load	[r1],r1
	load	[r14+8],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	set	_Global_numDice,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=numDiceRequested  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	459,r13		! source line 459
	mov	"\0\0CA",r10
	call	_function_54_PrintProceeds
! SEND STATEMENT...
	mov	460,r13		! source line 460
	mov	"\0\0SE",r10
!   _temp_665 = &_Global_frontDesk
	set	_Global_frontDesk,r1
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
	mov	460,r13		! source line 460
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_52_Request:
	.word	_sourceFileName
	.word	_Label_666
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_667
	.word	8
	.word	4
	.word	_Label_668
	.word	-12
	.word	4
	.word	_Label_669
	.word	-16
	.word	4
	.word	_Label_670
	.word	-20
	.word	4
	.word	_Label_671
	.word	-24
	.word	4
	.word	0
_Label_666:
	.ascii	"Request\0"
	.align
_Label_667:
	.byte	'I'
	.ascii	"numDiceRequested\0"
	.align
_Label_668:
	.byte	'?'
	.ascii	"_temp_665\0"
	.align
_Label_669:
	.byte	'?'
	.ascii	"_temp_664\0"
	.align
_Label_670:
	.byte	'?'
	.ascii	"_temp_663\0"
	.align
_Label_671:
	.byte	'?'
	.ascii	"_temp_659\0"
	.align
! 
! ===============  FUNCTION Return  ===============
! 
_function_51_Return:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_51_Return,r1
	push	r1
	mov	6,r1
_Label_820:
	push	r0
	sub	r1,1,r1
	bne	_Label_820
	mov	463,r13		! source line 463
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	464,r13		! source line 464
	mov	"\0\0SE",r10
!   _temp_672 = &_Global_frontDesk
	set	_Global_frontDesk,r1
	store	r1,[r14+-24]
!   Send message Lock
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	465,r13		! source line 465
	mov	"\0\0AS",r10
!   _Global_numDice = _Global_numDice + numDiceReturned		(int)
	set	_Global_numDice,r1
	load	[r1],r1
	load	[r14+8],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	set	_Global_numDice,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=numDiceReturned  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	466,r13		! source line 466
	mov	"\0\0CA",r10
	call	_function_53_PrintReturn
! SEND STATEMENT...
	mov	467,r13		! source line 467
	mov	"\0\0SE",r10
!   _temp_673 = &_Global_frontDesk
	set	_Global_frontDesk,r1
	store	r1,[r14+-20]
!   _temp_674 = &_Global_gameAvailable
	set	_Global_gameAvailable,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_673  sizeInBytes=4
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
	mov	468,r13		! source line 468
	mov	"\0\0SE",r10
!   _temp_675 = &_Global_frontDesk
	set	_Global_frontDesk,r1
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
	mov	468,r13		! source line 468
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_51_Return:
	.word	_sourceFileName
	.word	_Label_676
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_677
	.word	8
	.word	4
	.word	_Label_678
	.word	-12
	.word	4
	.word	_Label_679
	.word	-16
	.word	4
	.word	_Label_680
	.word	-20
	.word	4
	.word	_Label_681
	.word	-24
	.word	4
	.word	0
_Label_676:
	.ascii	"Return\0"
	.align
_Label_677:
	.byte	'I'
	.ascii	"numDiceReturned\0"
	.align
_Label_678:
	.byte	'?'
	.ascii	"_temp_675\0"
	.align
_Label_679:
	.byte	'?'
	.ascii	"_temp_674\0"
	.align
_Label_680:
	.byte	'?'
	.ascii	"_temp_673\0"
	.align
_Label_681:
	.byte	'?'
	.ascii	"_temp_672\0"
	.align
! 
! ===============  CLASS ForkMonitor  ===============
! 
! Dispatch Table:
! 
_P_Main_ForkMonitor:
	.word	_Label_682
	jmp	_Method_P_Main_ForkMonitor_1	! 4:	Init
	jmp	_Method_P_Main_ForkMonitor_2	! 8:	PickupForks
	jmp	_Method_P_Main_ForkMonitor_3	! 12:	PutDownForks
	jmp	_Method_P_Main_ForkMonitor_4	! 16:	PrintAllStatus
	.word	0
! 
! Class descriptor:
! 
_Label_682:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_683
	.word	_sourceFileName
	.word	112		! line number
	.word	64		! size of instances, in bytes
	.word	_P_Main_ForkMonitor
	.word	_P_System_Object
	.word	0
_Label_683:
	.ascii	"ForkMonitor\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Main_ForkMonitor_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Main_ForkMonitor_1,r1
	push	r1
	mov	15,r1
_Label_821:
	push	r0
	sub	r1,1,r1
	bne	_Label_821
	mov	128,r13		! source line 128
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	129,r13		! source line 129
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: mutex = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,28,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   mutex = _P_Synch_Mutex
	set	_P_Synch_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+28]
! ASSIGNMENT STATEMENT...
	mov	130,r13		! source line 130
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: condition = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,48,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   condition = _P_Synch_Condition
	set	_P_Synch_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+48]
! SEND STATEMENT...
	mov	131,r13		! source line 131
	mov	"\0\0SE",r10
!   _temp_686 = &mutex
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-56]
!   Send message Init
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	132,r13		! source line 132
	mov	"\0\0SE",r10
!   _temp_687 = &condition
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-52]
!   Send message Init
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	133,r13		! source line 133
	mov	"\0\0AS",r10
!   _temp_688 = &status
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-48]
!   NEW ARRAY Constructor...
!   _temp_690 = &_temp_689
	add	r14,-44,r1
	store	r1,[r14+-20]
!   _temp_690 = _temp_690 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	5,r1
	store	r1,[r14+-16]
_Label_692:
!   Data Move: *_temp_690 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_690 = _temp_690 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_691 = _temp_691 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_691) then goto _Label_692
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_692
!   Initialize the array size...
	mov	5,r1
	store	r1,[r14+-44]
!   _temp_693 = &_temp_689
	add	r14,-44,r1
	store	r1,[r14+-12]
!   make sure array has size 5
	load	[r14+-48],r1
	load	[r1],r1
	set	5, r2
	cmp	r1,0
	be	_Label_822
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_822:
!   make sure array has size 5
	load	[r14+-12],r1
	load	[r1],r1
	set	5, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_688 = *_temp_693  (sizeInBytes=24)
	load	[r14+-12],r5
	load	[r14+-48],r4
	load	[r5],r1
	store	r1,[r4]
	load	[r5+4],r1
	store	r1,[r4+4]
	load	[r5+8],r1
	store	r1,[r4+8]
	load	[r5+12],r1
	store	r1,[r4+12]
	load	[r5+16],r1
	store	r1,[r4+16]
	load	[r5+20],r1
	store	r1,[r4+20]
! RETURN STATEMENT...
	mov	133,r13		! source line 133
	mov	"\0\0RE",r10
	add	r15,64,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Main_ForkMonitor_1:
	.word	_sourceFileName
	.word	_Label_694
	.word	4		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_695
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_696
	.word	-12
	.word	4
	.word	_Label_697
	.word	-16
	.word	4
	.word	_Label_698
	.word	-20
	.word	4
	.word	_Label_699
	.word	-44
	.word	24
	.word	_Label_700
	.word	-48
	.word	4
	.word	_Label_701
	.word	-52
	.word	4
	.word	_Label_702
	.word	-56
	.word	4
	.word	_Label_703
	.word	-60
	.word	4
	.word	_Label_704
	.word	-64
	.word	4
	.word	0
_Label_694:
	.ascii	"ForkMonitor"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_695:
	.ascii	"Pself\0"
	.align
_Label_696:
	.byte	'?'
	.ascii	"_temp_693\0"
	.align
_Label_697:
	.byte	'?'
	.ascii	"_temp_691\0"
	.align
_Label_698:
	.byte	'?'
	.ascii	"_temp_690\0"
	.align
_Label_699:
	.byte	'?'
	.ascii	"_temp_689\0"
	.align
_Label_700:
	.byte	'?'
	.ascii	"_temp_688\0"
	.align
_Label_701:
	.byte	'?'
	.ascii	"_temp_687\0"
	.align
_Label_702:
	.byte	'?'
	.ascii	"_temp_686\0"
	.align
_Label_703:
	.byte	'?'
	.ascii	"_temp_685\0"
	.align
_Label_704:
	.byte	'?'
	.ascii	"_temp_684\0"
	.align
! 
! ===============  METHOD PickupForks  ===============
! 
_Method_P_Main_ForkMonitor_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Main_ForkMonitor_2,r1
	push	r1
	mov	22,r1
_Label_823:
	push	r0
	sub	r1,1,r1
	bne	_Label_823
	mov	136,r13		! source line 136
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	140,r13		! source line 140
	mov	"\0\0SE",r10
!   _temp_705 = &mutex
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-80]
!   Send message Lock
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	141,r13		! source line 141
	mov	"\0\0AS",r10
!   _temp_706 = &status
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-76]
!   Move address of _temp_706 [p ] into _temp_707
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-76],r1
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
	store	r2,[r14+-72]
!   Data Move: *_temp_707 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-72],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	142,r13		! source line 142
	mov	"\0\0SE",r10
!   _temp_708 = &_Global_mon
	set	_Global_mon,r1
	store	r1,[r14+-68]
!   Send message PrintAllStatus
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	143,r13		! source line 143
	mov	"\0\0AS",r10
!   _temp_709 = p + 4		(int)
	load	[r14+12],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
!   left = _temp_709 rem 5		(int)
	load	[r14+-64],r1
	mov	5,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-84]
! ASSIGNMENT STATEMENT...
	mov	144,r13		! source line 144
	mov	"\0\0AS",r10
!   _temp_710 = p + 1		(int)
	load	[r14+12],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   right = _temp_710 rem 5		(int)
	load	[r14+-60],r1
	mov	5,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-88]
! WHILE STATEMENT...
	mov	145,r13		! source line 145
	mov	"\0\0WH",r10
_Label_711:
!   _temp_716 = &status
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   Move address of _temp_716 [left ] into _temp_717
!     make sure index expr is >= 0
	load	[r14+-84],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-48]
!   Data Move: _temp_715 = *_temp_717  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if _temp_715 != 2 then goto _Label_714		(int)
	load	[r14+-56],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_714
	jmp	_Label_712
_Label_714:
!   _temp_719 = &status
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Move address of _temp_719 [right ] into _temp_720
!     make sure index expr is >= 0
	load	[r14+-88],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-40],r1
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
	store	r2,[r14+-36]
!   Data Move: _temp_718 = *_temp_720  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   if _temp_718 != 2 then goto _Label_713		(int)
	load	[r14+-44],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_713
!	jmp	_Label_712
_Label_712:
	mov	145,r13		! source line 145
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	146,r13		! source line 146
	mov	"\0\0SE",r10
!   _temp_721 = &mutex
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-32]
!   _temp_722 = &condition
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_721  sizeInBytes=4
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
	jmp	_Label_711
_Label_713:
! ASSIGNMENT STATEMENT...
	mov	148,r13		! source line 148
	mov	"\0\0AS",r10
!   _temp_723 = &status
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Move address of _temp_723 [p ] into _temp_724
!     make sure index expr is >= 0
	load	[r14+12],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-20]
!   Data Move: *_temp_724 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	149,r13		! source line 149
	mov	"\0\0SE",r10
!   _temp_725 = &_Global_mon
	set	_Global_mon,r1
	store	r1,[r14+-16]
!   Send message PrintAllStatus
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! SEND STATEMENT...
	mov	150,r13		! source line 150
	mov	"\0\0SE",r10
!   _temp_726 = &mutex
	load	[r14+8],r1
	add	r1,28,r1
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
	mov	150,r13		! source line 150
	mov	"\0\0RE",r10
	add	r15,92,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Main_ForkMonitor_2:
	.word	_sourceFileName
	.word	_Label_727
	.word	8		! total size of parameters
	.word	88		! frame size = 88
	.word	_Label_728
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_729
	.word	12
	.word	4
	.word	_Label_730
	.word	-12
	.word	4
	.word	_Label_731
	.word	-16
	.word	4
	.word	_Label_732
	.word	-20
	.word	4
	.word	_Label_733
	.word	-24
	.word	4
	.word	_Label_734
	.word	-28
	.word	4
	.word	_Label_735
	.word	-32
	.word	4
	.word	_Label_736
	.word	-36
	.word	4
	.word	_Label_737
	.word	-40
	.word	4
	.word	_Label_738
	.word	-44
	.word	4
	.word	_Label_739
	.word	-48
	.word	4
	.word	_Label_740
	.word	-52
	.word	4
	.word	_Label_741
	.word	-56
	.word	4
	.word	_Label_742
	.word	-60
	.word	4
	.word	_Label_743
	.word	-64
	.word	4
	.word	_Label_744
	.word	-68
	.word	4
	.word	_Label_745
	.word	-72
	.word	4
	.word	_Label_746
	.word	-76
	.word	4
	.word	_Label_747
	.word	-80
	.word	4
	.word	_Label_748
	.word	-84
	.word	4
	.word	_Label_749
	.word	-88
	.word	4
	.word	0
_Label_727:
	.ascii	"ForkMonitor"
	.ascii	"::"
	.ascii	"PickupForks\0"
	.align
_Label_728:
	.ascii	"Pself\0"
	.align
_Label_729:
	.byte	'I'
	.ascii	"p\0"
	.align
_Label_730:
	.byte	'?'
	.ascii	"_temp_726\0"
	.align
_Label_731:
	.byte	'?'
	.ascii	"_temp_725\0"
	.align
_Label_732:
	.byte	'?'
	.ascii	"_temp_724\0"
	.align
_Label_733:
	.byte	'?'
	.ascii	"_temp_723\0"
	.align
_Label_734:
	.byte	'?'
	.ascii	"_temp_722\0"
	.align
_Label_735:
	.byte	'?'
	.ascii	"_temp_721\0"
	.align
_Label_736:
	.byte	'?'
	.ascii	"_temp_720\0"
	.align
_Label_737:
	.byte	'?'
	.ascii	"_temp_719\0"
	.align
_Label_738:
	.byte	'?'
	.ascii	"_temp_718\0"
	.align
_Label_739:
	.byte	'?'
	.ascii	"_temp_717\0"
	.align
_Label_740:
	.byte	'?'
	.ascii	"_temp_716\0"
	.align
_Label_741:
	.byte	'?'
	.ascii	"_temp_715\0"
	.align
_Label_742:
	.byte	'?'
	.ascii	"_temp_710\0"
	.align
_Label_743:
	.byte	'?'
	.ascii	"_temp_709\0"
	.align
_Label_744:
	.byte	'?'
	.ascii	"_temp_708\0"
	.align
_Label_745:
	.byte	'?'
	.ascii	"_temp_707\0"
	.align
_Label_746:
	.byte	'?'
	.ascii	"_temp_706\0"
	.align
_Label_747:
	.byte	'?'
	.ascii	"_temp_705\0"
	.align
_Label_748:
	.byte	'I'
	.ascii	"left\0"
	.align
_Label_749:
	.byte	'I'
	.ascii	"right\0"
	.align
! 
! ===============  METHOD PutDownForks  ===============
! 
_Method_P_Main_ForkMonitor_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Main_ForkMonitor_3,r1
	push	r1
	mov	9,r1
_Label_824:
	push	r0
	sub	r1,1,r1
	bne	_Label_824
	mov	153,r13		! source line 153
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	154,r13		! source line 154
	mov	"\0\0SE",r10
!   _temp_750 = &mutex
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-36]
!   Send message Lock
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	155,r13		! source line 155
	mov	"\0\0AS",r10
!   _temp_751 = &status
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Move address of _temp_751 [p ] into _temp_752
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
!   Data Move: *_temp_752 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	156,r13		! source line 156
	mov	"\0\0SE",r10
!   _temp_753 = &_Global_mon
	set	_Global_mon,r1
	store	r1,[r14+-24]
!   Send message PrintAllStatus
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! SEND STATEMENT...
	mov	158,r13		! source line 158
	mov	"\0\0SE",r10
!   _temp_754 = &mutex
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-20]
!   _temp_755 = &condition
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_754  sizeInBytes=4
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
	mov	159,r13		! source line 159
	mov	"\0\0SE",r10
!   _temp_756 = &mutex
	load	[r14+8],r1
	add	r1,28,r1
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
	mov	159,r13		! source line 159
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Main_ForkMonitor_3:
	.word	_sourceFileName
	.word	_Label_757
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_758
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_759
	.word	12
	.word	4
	.word	_Label_760
	.word	-12
	.word	4
	.word	_Label_761
	.word	-16
	.word	4
	.word	_Label_762
	.word	-20
	.word	4
	.word	_Label_763
	.word	-24
	.word	4
	.word	_Label_764
	.word	-28
	.word	4
	.word	_Label_765
	.word	-32
	.word	4
	.word	_Label_766
	.word	-36
	.word	4
	.word	0
_Label_757:
	.ascii	"ForkMonitor"
	.ascii	"::"
	.ascii	"PutDownForks\0"
	.align
_Label_758:
	.ascii	"Pself\0"
	.align
_Label_759:
	.byte	'I'
	.ascii	"p\0"
	.align
_Label_760:
	.byte	'?'
	.ascii	"_temp_756\0"
	.align
_Label_761:
	.byte	'?'
	.ascii	"_temp_755\0"
	.align
_Label_762:
	.byte	'?'
	.ascii	"_temp_754\0"
	.align
_Label_763:
	.byte	'?'
	.ascii	"_temp_753\0"
	.align
_Label_764:
	.byte	'?'
	.ascii	"_temp_752\0"
	.align
_Label_765:
	.byte	'?'
	.ascii	"_temp_751\0"
	.align
_Label_766:
	.byte	'?'
	.ascii	"_temp_750\0"
	.align
! 
! ===============  METHOD PrintAllStatus  ===============
! 
_Method_P_Main_ForkMonitor_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Main_ForkMonitor_4,r1
	push	r1
	mov	10,r1
_Label_825:
	push	r0
	sub	r1,1,r1
	bne	_Label_825
	mov	162,r13		! source line 162
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! FOR STATEMENT...
	mov	176,r13		! source line 176
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_771 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_772 = 4		(4 bytes)
	mov	4,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: p = _temp_771  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-44]
_Label_767:
!   Perform the FOR-LOOP termination test
!   if p > _temp_772 then goto _Label_770		
	load	[r14+-44],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_770
_Label_768:
	mov	176,r13		! source line 176
	mov	"\0\0FB",r10
! SWITCH STATEMENT (using series of tests)...
	mov	177,r13		! source line 177
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   _temp_779 = &status
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_779 [p ] into _temp_780
!     make sure index expr is >= 0
	load	[r14+-44],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   Data Move: _temp_778 = *_temp_780  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   Branch to the right case label
	load	[r14+-32],r1
	cmp	r1,1
	be	_Label_775
	cmp	r1,2
	be	_Label_776
	cmp	r1,3
	be	_Label_777
	jmp	_Label_773
! CASE 1...
_Label_775:
! CALL STATEMENT...
!   _temp_781 = _StringConst_48
	set	_StringConst_48,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_781  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	179,r13		! source line 179
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	180,r13		! source line 180
	mov	"\0\0BR",r10
	jmp	_Label_774
! CASE 2...
_Label_776:
! CALL STATEMENT...
!   _temp_782 = _StringConst_49
	set	_StringConst_49,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_782  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	182,r13		! source line 182
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	183,r13		! source line 183
	mov	"\0\0BR",r10
	jmp	_Label_774
! CASE 3...
_Label_777:
! CALL STATEMENT...
!   _temp_783 = _StringConst_50
	set	_StringConst_50,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_783  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	185,r13		! source line 185
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	186,r13		! source line 186
	mov	"\0\0BR",r10
	jmp	_Label_774
! DEFAULT CASE...
_Label_773:
! END SWITCH...
_Label_774:
!   Increment the FOR-LOOP index variable and jump back
_Label_769:
!   p = p + 1
	load	[r14+-44],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
	jmp	_Label_767
! END FOR
_Label_770:
! CALL STATEMENT...
!   Call the function
	mov	189,r13		! source line 189
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	189,r13		! source line 189
	mov	"\0\0RE",r10
	add	r15,44,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Main_ForkMonitor_4:
	.word	_sourceFileName
	.word	_Label_784
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_785
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_786
	.word	-12
	.word	4
	.word	_Label_787
	.word	-16
	.word	4
	.word	_Label_788
	.word	-20
	.word	4
	.word	_Label_789
	.word	-24
	.word	4
	.word	_Label_790
	.word	-28
	.word	4
	.word	_Label_791
	.word	-32
	.word	4
	.word	_Label_792
	.word	-36
	.word	4
	.word	_Label_793
	.word	-40
	.word	4
	.word	_Label_794
	.word	-44
	.word	4
	.word	0
_Label_784:
	.ascii	"ForkMonitor"
	.ascii	"::"
	.ascii	"PrintAllStatus\0"
	.align
_Label_785:
	.ascii	"Pself\0"
	.align
_Label_786:
	.byte	'?'
	.ascii	"_temp_783\0"
	.align
_Label_787:
	.byte	'?'
	.ascii	"_temp_782\0"
	.align
_Label_788:
	.byte	'?'
	.ascii	"_temp_781\0"
	.align
_Label_789:
	.byte	'?'
	.ascii	"_temp_780\0"
	.align
_Label_790:
	.byte	'?'
	.ascii	"_temp_779\0"
	.align
_Label_791:
	.byte	'?'
	.ascii	"_temp_778\0"
	.align
_Label_792:
	.byte	'?'
	.ascii	"_temp_772\0"
	.align
_Label_793:
	.byte	'?'
	.ascii	"_temp_771\0"
	.align
_Label_794:
	.byte	'I'
	.ascii	"p\0"
	.align
