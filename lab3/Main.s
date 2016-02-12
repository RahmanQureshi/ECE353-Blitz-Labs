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
_Label_791:
	push	r0
	sub	r1,1,r1
	bne	_Label_791
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
_Label_792:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_792
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
_Label_793:
	push	r0
	sub	r1,1,r1
	bne	_Label_793
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
_Label_794:
	push	r0
	sub	r1,1,r1
	bne	_Label_794
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
_Label_795:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_795
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
_Label_796:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_796
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
_Label_797:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_797
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
_Label_798:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_798
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
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
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
	mov	42,r1
_Label_799:
	push	r0
	sub	r1,1,r1
	bne	_Label_799
	mov	254,r13		! source line 254
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	255,r13		! source line 255
	mov	"\0\0SE",r10
!   _temp_309 = &_Global_access_lock
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
!   _temp_314 = _P_Thread_currentThread + 72
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-152]
!   Data Move: _temp_313 = *_temp_314  (sizeInBytes=4)
	load	[r14+-152],r1
	load	[r1],r1
	store	r1,[r14+-156]
!   if intIsZero (_temp_313) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_313 [0 ] into _temp_315
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
!   Data Move: _temp_312 = *_temp_315  (sizeInBytes=1)
	load	[r14+-148],r1
	loadb	[r1],r1
	storeb	r1,[r14+-13]
!   _temp_311 = charToInt (_temp_312)
	loadb	[r14+-13],r1
	sll	r1,24,r1
	sra	r1,24,r1
	store	r1,[r14+-160]
!   _temp_310 = _temp_311 - 48		(int)
	load	[r14+-160],r1
	mov	48,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-164]
!   _temp_316 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_310  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_316  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+4]
!   Call the function
	mov	256,r13		! source line 256
	mov	"\0\0CA",r10
	call	_function_59_PrintCustomerState
! IF STATEMENT...
	mov	257,r13		! source line 257
	mov	"\0\0IF",r10
!   if _Global_numWaitingCustomers >= 5 then goto _Label_318		(int)
	set	_Global_numWaitingCustomers,r1
	load	[r1],r1
	mov	5,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_318
!	jmp	_Label_317
_Label_317:
! THEN...
	mov	258,r13		! source line 258
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	258,r13		! source line 258
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
!   _temp_323 = _P_Thread_currentThread + 72
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-128]
!   Data Move: _temp_322 = *_temp_323  (sizeInBytes=4)
	load	[r14+-128],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   if intIsZero (_temp_322) then goto _runtimeErrorNullPointer
	load	[r14+-132],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_322 [0 ] into _temp_324
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
!   Data Move: _temp_321 = *_temp_324  (sizeInBytes=1)
	load	[r14+-124],r1
	loadb	[r1],r1
	storeb	r1,[r14+-12]
!   _temp_320 = charToInt (_temp_321)
	loadb	[r14+-12],r1
	sll	r1,24,r1
	sra	r1,24,r1
	store	r1,[r14+-136]
!   _temp_319 = _temp_320 - 48		(int)
	load	[r14+-136],r1
	mov	48,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-140]
!   _temp_325 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_319  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_325  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+4]
!   Call the function
	mov	259,r13		! source line 259
	mov	"\0\0CA",r10
	call	_function_59_PrintCustomerState
! SEND STATEMENT...
	mov	260,r13		! source line 260
	mov	"\0\0SE",r10
!   _temp_326 = &_Global_access_lock
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
	mov	261,r13		! source line 261
	mov	"\0\0SE",r10
!   _temp_327 = &_Global_waitingCustomers
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
	mov	262,r13		! source line 262
	mov	"\0\0SE",r10
!   _temp_328 = &_Global_barberSem
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
!   _temp_333 = _P_Thread_currentThread + 72
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-92]
!   Data Move: _temp_332 = *_temp_333  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if intIsZero (_temp_332) then goto _runtimeErrorNullPointer
	load	[r14+-96],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_332 [0 ] into _temp_334
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
!   Data Move: _temp_331 = *_temp_334  (sizeInBytes=1)
	load	[r14+-88],r1
	loadb	[r1],r1
	storeb	r1,[r14+-11]
!   _temp_330 = charToInt (_temp_331)
	loadb	[r14+-11],r1
	sll	r1,24,r1
	sra	r1,24,r1
	store	r1,[r14+-100]
!   _temp_329 = _temp_330 - 48		(int)
	load	[r14+-100],r1
	mov	48,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-104]
!   _temp_335 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_329  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_335  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+4]
!   Call the function
	mov	263,r13		! source line 263
	mov	"\0\0CA",r10
	call	_function_59_PrintCustomerState
! SEND STATEMENT...
	mov	264,r13		! source line 264
	mov	"\0\0SE",r10
!   _temp_336 = &_Global_cuttingHair
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
	mov	265,r13		! source line 265
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
!   _temp_341 = _P_Thread_currentThread + 72
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-64]
!   Data Move: _temp_340 = *_temp_341  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_340) then goto _runtimeErrorNullPointer
	load	[r14+-68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_340 [0 ] into _temp_342
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
!   Data Move: _temp_339 = *_temp_342  (sizeInBytes=1)
	load	[r14+-60],r1
	loadb	[r1],r1
	storeb	r1,[r14+-10]
!   _temp_338 = charToInt (_temp_339)
	loadb	[r14+-10],r1
	sll	r1,24,r1
	sra	r1,24,r1
	store	r1,[r14+-72]
!   _temp_337 = _temp_338 - 48		(int)
	load	[r14+-72],r1
	mov	48,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-76]
!   _temp_343 = _StringConst_24
	set	_StringConst_24,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_337  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_343  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Call the function
	mov	266,r13		! source line 266
	mov	"\0\0CA",r10
	call	_function_59_PrintCustomerState
! SEND STATEMENT...
	mov	267,r13		! source line 267
	mov	"\0\0SE",r10
!   _temp_344 = &_Global_cuttingHair
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
	mov	268,r13		! source line 268
	mov	"\0\0SE",r10
!   _temp_345 = &_Global_doneCutting
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
	jmp	_Label_346
_Label_318:
! ELSE...
	mov	270,r13		! source line 270
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	270,r13		! source line 270
	mov	"\0\0SE",r10
!   _temp_347 = &_Global_access_lock
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
_Label_346:
! CALL STATEMENT...
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_352 = _P_Thread_currentThread + 72
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-28]
!   Data Move: _temp_351 = *_temp_352  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_351) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_351 [0 ] into _temp_353
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
!   Data Move: _temp_350 = *_temp_353  (sizeInBytes=1)
	load	[r14+-24],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   _temp_349 = charToInt (_temp_350)
	loadb	[r14+-9],r1
	sll	r1,24,r1
	sra	r1,24,r1
	store	r1,[r14+-36]
!   _temp_348 = _temp_349 - 48		(int)
	load	[r14+-36],r1
	mov	48,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
!   _temp_354 = _StringConst_25
	set	_StringConst_25,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_348  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_354  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Call the function
	mov	272,r13		! source line 272
	mov	"\0\0CA",r10
	call	_function_59_PrintCustomerState
! RETURN STATEMENT...
	mov	272,r13		! source line 272
	mov	"\0\0RE",r10
	add	r15,172,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_65_GetHairCut:
	.word	_sourceFileName
	.word	_Label_355
	.word	4		! total size of parameters
	.word	168		! frame size = 168
	.word	_Label_356
	.word	8
	.word	4
	.word	_Label_357
	.word	-20
	.word	4
	.word	_Label_358
	.word	-24
	.word	4
	.word	_Label_359
	.word	-28
	.word	4
	.word	_Label_360
	.word	-32
	.word	4
	.word	_Label_361
	.word	-9
	.word	1
	.word	_Label_362
	.word	-36
	.word	4
	.word	_Label_363
	.word	-40
	.word	4
	.word	_Label_364
	.word	-44
	.word	4
	.word	_Label_365
	.word	-48
	.word	4
	.word	_Label_366
	.word	-52
	.word	4
	.word	_Label_367
	.word	-56
	.word	4
	.word	_Label_368
	.word	-60
	.word	4
	.word	_Label_369
	.word	-64
	.word	4
	.word	_Label_370
	.word	-68
	.word	4
	.word	_Label_371
	.word	-10
	.word	1
	.word	_Label_372
	.word	-72
	.word	4
	.word	_Label_373
	.word	-76
	.word	4
	.word	_Label_374
	.word	-80
	.word	4
	.word	_Label_375
	.word	-84
	.word	4
	.word	_Label_376
	.word	-88
	.word	4
	.word	_Label_377
	.word	-92
	.word	4
	.word	_Label_378
	.word	-96
	.word	4
	.word	_Label_379
	.word	-11
	.word	1
	.word	_Label_380
	.word	-100
	.word	4
	.word	_Label_381
	.word	-104
	.word	4
	.word	_Label_382
	.word	-108
	.word	4
	.word	_Label_383
	.word	-112
	.word	4
	.word	_Label_384
	.word	-116
	.word	4
	.word	_Label_385
	.word	-120
	.word	4
	.word	_Label_386
	.word	-124
	.word	4
	.word	_Label_387
	.word	-128
	.word	4
	.word	_Label_388
	.word	-132
	.word	4
	.word	_Label_389
	.word	-12
	.word	1
	.word	_Label_390
	.word	-136
	.word	4
	.word	_Label_391
	.word	-140
	.word	4
	.word	_Label_392
	.word	-144
	.word	4
	.word	_Label_393
	.word	-148
	.word	4
	.word	_Label_394
	.word	-152
	.word	4
	.word	_Label_395
	.word	-156
	.word	4
	.word	_Label_396
	.word	-13
	.word	1
	.word	_Label_397
	.word	-160
	.word	4
	.word	_Label_398
	.word	-164
	.word	4
	.word	_Label_399
	.word	-168
	.word	4
	.word	0
_Label_355:
	.ascii	"GetHairCut\0"
	.align
_Label_356:
	.byte	'I'
	.ascii	"numCuts\0"
	.align
_Label_357:
	.byte	'?'
	.ascii	"_temp_354\0"
	.align
_Label_358:
	.byte	'?'
	.ascii	"_temp_353\0"
	.align
_Label_359:
	.byte	'?'
	.ascii	"_temp_352\0"
	.align
_Label_360:
	.byte	'?'
	.ascii	"_temp_351\0"
	.align
_Label_361:
	.byte	'C'
	.ascii	"_temp_350\0"
	.align
_Label_362:
	.byte	'?'
	.ascii	"_temp_349\0"
	.align
_Label_363:
	.byte	'?'
	.ascii	"_temp_348\0"
	.align
_Label_364:
	.byte	'?'
	.ascii	"_temp_347\0"
	.align
_Label_365:
	.byte	'?'
	.ascii	"_temp_345\0"
	.align
_Label_366:
	.byte	'?'
	.ascii	"_temp_344\0"
	.align
_Label_367:
	.byte	'?'
	.ascii	"_temp_343\0"
	.align
_Label_368:
	.byte	'?'
	.ascii	"_temp_342\0"
	.align
_Label_369:
	.byte	'?'
	.ascii	"_temp_341\0"
	.align
_Label_370:
	.byte	'?'
	.ascii	"_temp_340\0"
	.align
_Label_371:
	.byte	'C'
	.ascii	"_temp_339\0"
	.align
_Label_372:
	.byte	'?'
	.ascii	"_temp_338\0"
	.align
_Label_373:
	.byte	'?'
	.ascii	"_temp_337\0"
	.align
_Label_374:
	.byte	'?'
	.ascii	"_temp_336\0"
	.align
_Label_375:
	.byte	'?'
	.ascii	"_temp_335\0"
	.align
_Label_376:
	.byte	'?'
	.ascii	"_temp_334\0"
	.align
_Label_377:
	.byte	'?'
	.ascii	"_temp_333\0"
	.align
_Label_378:
	.byte	'?'
	.ascii	"_temp_332\0"
	.align
_Label_379:
	.byte	'C'
	.ascii	"_temp_331\0"
	.align
_Label_380:
	.byte	'?'
	.ascii	"_temp_330\0"
	.align
_Label_381:
	.byte	'?'
	.ascii	"_temp_329\0"
	.align
_Label_382:
	.byte	'?'
	.ascii	"_temp_328\0"
	.align
_Label_383:
	.byte	'?'
	.ascii	"_temp_327\0"
	.align
_Label_384:
	.byte	'?'
	.ascii	"_temp_326\0"
	.align
_Label_385:
	.byte	'?'
	.ascii	"_temp_325\0"
	.align
_Label_386:
	.byte	'?'
	.ascii	"_temp_324\0"
	.align
_Label_387:
	.byte	'?'
	.ascii	"_temp_323\0"
	.align
_Label_388:
	.byte	'?'
	.ascii	"_temp_322\0"
	.align
_Label_389:
	.byte	'C'
	.ascii	"_temp_321\0"
	.align
_Label_390:
	.byte	'?'
	.ascii	"_temp_320\0"
	.align
_Label_391:
	.byte	'?'
	.ascii	"_temp_319\0"
	.align
_Label_392:
	.byte	'?'
	.ascii	"_temp_316\0"
	.align
_Label_393:
	.byte	'?'
	.ascii	"_temp_315\0"
	.align
_Label_394:
	.byte	'?'
	.ascii	"_temp_314\0"
	.align
_Label_395:
	.byte	'?'
	.ascii	"_temp_313\0"
	.align
_Label_396:
	.byte	'C'
	.ascii	"_temp_312\0"
	.align
_Label_397:
	.byte	'?'
	.ascii	"_temp_311\0"
	.align
_Label_398:
	.byte	'?'
	.ascii	"_temp_310\0"
	.align
_Label_399:
	.byte	'?'
	.ascii	"_temp_309\0"
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
_Label_800:
	push	r0
	sub	r1,1,r1
	bne	_Label_800
	mov	275,r13		! source line 275
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	276,r13		! source line 276
	mov	"\0\0WH",r10
_Label_400:
!	jmp	_Label_401
_Label_401:
	mov	276,r13		! source line 276
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	277,r13		! source line 277
	mov	"\0\0SE",r10
!   _temp_403 = &_Global_waitingCustomers
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
	mov	278,r13		! source line 278
	mov	"\0\0SE",r10
!   _temp_404 = &_Global_access_lock
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
	mov	279,r13		! source line 279
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
	mov	280,r13		! source line 280
	mov	"\0\0SE",r10
!   _temp_405 = &_Global_access_lock
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
	mov	281,r13		! source line 281
	mov	"\0\0CA",r10
	call	_function_63_PrintBarberStart
! SEND STATEMENT...
	mov	282,r13		! source line 282
	mov	"\0\0SE",r10
!   _temp_406 = &_Global_barberSem
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
	mov	283,r13		! source line 283
	mov	"\0\0SE",r10
!   _temp_407 = &_Global_cuttingHair
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
	mov	284,r13		! source line 284
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
	mov	285,r13		! source line 285
	mov	"\0\0SE",r10
!   _temp_408 = &_Global_cuttingHair
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
	mov	286,r13		! source line 286
	mov	"\0\0CA",r10
	call	_function_61_PrintBarberEnd
! SEND STATEMENT...
	mov	287,r13		! source line 287
	mov	"\0\0SE",r10
!   _temp_409 = &_Global_doneCutting
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
	jmp	_Label_400
_Label_402:
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_64_GiveHairCuts:
	.word	_sourceFileName
	.word	_Label_410
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_411
	.word	8
	.word	4
	.word	_Label_412
	.word	-12
	.word	4
	.word	_Label_413
	.word	-16
	.word	4
	.word	_Label_414
	.word	-20
	.word	4
	.word	_Label_415
	.word	-24
	.word	4
	.word	_Label_416
	.word	-28
	.word	4
	.word	_Label_417
	.word	-32
	.word	4
	.word	_Label_418
	.word	-36
	.word	4
	.word	0
_Label_410:
	.ascii	"GiveHairCuts\0"
	.align
_Label_411:
	.byte	'I'
	.ascii	"numChairs\0"
	.align
_Label_412:
	.byte	'?'
	.ascii	"_temp_409\0"
	.align
_Label_413:
	.byte	'?'
	.ascii	"_temp_408\0"
	.align
_Label_414:
	.byte	'?'
	.ascii	"_temp_407\0"
	.align
_Label_415:
	.byte	'?'
	.ascii	"_temp_406\0"
	.align
_Label_416:
	.byte	'?'
	.ascii	"_temp_405\0"
	.align
_Label_417:
	.byte	'?'
	.ascii	"_temp_404\0"
	.align
_Label_418:
	.byte	'?'
	.ascii	"_temp_403\0"
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
_Label_801:
	push	r0
	sub	r1,1,r1
	bne	_Label_801
	mov	291,r13		! source line 291
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	295,r13		! source line 295
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	295,r13		! source line 295
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-16]
! CALL STATEMENT...
!   Call the function
	mov	296,r13		! source line 296
	mov	"\0\0CA",r10
	call	_function_60_PrintChairs
! CALL STATEMENT...
!   _temp_419 = _StringConst_26
	set	_StringConst_26,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_419  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	297,r13		! source line 297
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	298,r13		! source line 298
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	299,r13		! source line 299
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	299,r13		! source line 299
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-16]
! RETURN STATEMENT...
	mov	299,r13		! source line 299
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
	.word	_Label_420
	.word	0		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_421
	.word	-12
	.word	4
	.word	_Label_422
	.word	-16
	.word	4
	.word	0
_Label_420:
	.ascii	"PrintBarberStart\0"
	.align
_Label_421:
	.byte	'?'
	.ascii	"_temp_419\0"
	.align
_Label_422:
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
_Label_802:
	push	r0
	sub	r1,1,r1
	bne	_Label_802
	mov	302,r13		! source line 302
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! FOR STATEMENT...
	mov	305,r13		! source line 305
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_427 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-36]
!   Calculate and save the FOR-LOOP ending value
!   _temp_428 = 5		(4 bytes)
	mov	5,r1
	store	r1,[r14+-32]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_427  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+-40]
_Label_423:
!   Perform the FOR-LOOP termination test
!   if i > _temp_428 then goto _Label_426		
	load	[r14+-40],r1
	load	[r14+-32],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_426
_Label_424:
	mov	305,r13		! source line 305
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_429 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_429  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	306,r13		! source line 306
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_425:
!   i = i + 1
	load	[r14+-40],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
	jmp	_Label_423
! END FOR
_Label_426:
! CALL STATEMENT...
!   _temp_430 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_430  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	308,r13		! source line 308
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	309,r13		! source line 309
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_435 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-20]
!   Calculate and save the FOR-LOOP ending value
!   _temp_436 = _Global_numCustomers		(4 bytes)
	set	_Global_numCustomers,r1
	load	[r1],r1
	store	r1,[r14+-16]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_435  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+-40]
_Label_431:
!   Perform the FOR-LOOP termination test
!   if i > _temp_436 then goto _Label_434		
	load	[r14+-40],r1
	load	[r14+-16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_434
_Label_432:
	mov	309,r13		! source line 309
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	310,r13		! source line 310
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_437 = _StringConst_29
	set	_StringConst_29,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_437  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	311,r13		! source line 311
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_433:
!   i = i + 1
	load	[r14+-40],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
	jmp	_Label_431
! END FOR
_Label_434:
! CALL STATEMENT...
!   Call the function
	mov	313,r13		! source line 313
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	313,r13		! source line 313
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
	.word	_Label_438
	.word	0		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_439
	.word	-12
	.word	4
	.word	_Label_440
	.word	-16
	.word	4
	.word	_Label_441
	.word	-20
	.word	4
	.word	_Label_442
	.word	-24
	.word	4
	.word	_Label_443
	.word	-28
	.word	4
	.word	_Label_444
	.word	-32
	.word	4
	.word	_Label_445
	.word	-36
	.word	4
	.word	_Label_446
	.word	-40
	.word	4
	.word	0
_Label_438:
	.ascii	"PrintHeader\0"
	.align
_Label_439:
	.byte	'?'
	.ascii	"_temp_437\0"
	.align
_Label_440:
	.byte	'?'
	.ascii	"_temp_436\0"
	.align
_Label_441:
	.byte	'?'
	.ascii	"_temp_435\0"
	.align
_Label_442:
	.byte	'?'
	.ascii	"_temp_430\0"
	.align
_Label_443:
	.byte	'?'
	.ascii	"_temp_429\0"
	.align
_Label_444:
	.byte	'?'
	.ascii	"_temp_428\0"
	.align
_Label_445:
	.byte	'?'
	.ascii	"_temp_427\0"
	.align
_Label_446:
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
_Label_803:
	push	r0
	sub	r1,1,r1
	bne	_Label_803
	mov	316,r13		! source line 316
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	320,r13		! source line 320
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	320,r13		! source line 320
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-16]
! CALL STATEMENT...
!   Call the function
	mov	321,r13		! source line 321
	mov	"\0\0CA",r10
	call	_function_60_PrintChairs
! CALL STATEMENT...
!   _temp_447 = _StringConst_30
	set	_StringConst_30,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_447  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	322,r13		! source line 322
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	323,r13		! source line 323
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	324,r13		! source line 324
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	324,r13		! source line 324
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-16]
! RETURN STATEMENT...
	mov	324,r13		! source line 324
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
	.word	_Label_448
	.word	0		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_449
	.word	-12
	.word	4
	.word	_Label_450
	.word	-16
	.word	4
	.word	0
_Label_448:
	.ascii	"PrintBarberEnd\0"
	.align
_Label_449:
	.byte	'?'
	.ascii	"_temp_447\0"
	.align
_Label_450:
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
_Label_804:
	push	r0
	sub	r1,1,r1
	bne	_Label_804
	mov	327,r13		! source line 327
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! FOR STATEMENT...
	mov	330,r13		! source line 330
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_455 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-32]
!   Calculate and save the FOR-LOOP ending value
!   _temp_456 = _Global_numWaitingCustomers		(4 bytes)
	set	_Global_numWaitingCustomers,r1
	load	[r1],r1
	store	r1,[r14+-28]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_455  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+-36]
_Label_451:
!   Perform the FOR-LOOP termination test
!   if i > _temp_456 then goto _Label_454		
	load	[r14+-36],r1
	load	[r14+-28],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_454
_Label_452:
	mov	330,r13		! source line 330
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_457 = _StringConst_31
	set	_StringConst_31,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_457  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	331,r13		! source line 331
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_453:
!   i = i + 1
	load	[r14+-36],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
	jmp	_Label_451
! END FOR
_Label_454:
! FOR STATEMENT...
	mov	333,r13		! source line 333
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_462 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-20]
!   Calculate and save the FOR-LOOP ending value
!   _temp_463 = 5 - _Global_numWaitingCustomers		(int)
	mov	5,r1
	set	_Global_numWaitingCustomers,r2
	load	[r2],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_462  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+-36]
_Label_458:
!   Perform the FOR-LOOP termination test
!   if i > _temp_463 then goto _Label_461		
	load	[r14+-36],r1
	load	[r14+-16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_461
_Label_459:
	mov	333,r13		! source line 333
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_464 = _StringConst_32
	set	_StringConst_32,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_464  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	334,r13		! source line 334
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_460:
!   i = i + 1
	load	[r14+-36],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
	jmp	_Label_458
! END FOR
_Label_461:
! RETURN STATEMENT...
	mov	333,r13		! source line 333
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
	.word	_Label_465
	.word	0		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_466
	.word	-12
	.word	4
	.word	_Label_467
	.word	-16
	.word	4
	.word	_Label_468
	.word	-20
	.word	4
	.word	_Label_469
	.word	-24
	.word	4
	.word	_Label_470
	.word	-28
	.word	4
	.word	_Label_471
	.word	-32
	.word	4
	.word	_Label_472
	.word	-36
	.word	4
	.word	0
_Label_465:
	.ascii	"PrintChairs\0"
	.align
_Label_466:
	.byte	'?'
	.ascii	"_temp_464\0"
	.align
_Label_467:
	.byte	'?'
	.ascii	"_temp_463\0"
	.align
_Label_468:
	.byte	'?'
	.ascii	"_temp_462\0"
	.align
_Label_469:
	.byte	'?'
	.ascii	"_temp_457\0"
	.align
_Label_470:
	.byte	'?'
	.ascii	"_temp_456\0"
	.align
_Label_471:
	.byte	'?'
	.ascii	"_temp_455\0"
	.align
_Label_472:
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
_Label_805:
	push	r0
	sub	r1,1,r1
	bne	_Label_805
	mov	338,r13		! source line 338
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	342,r13		! source line 342
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	342,r13		! source line 342
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! CALL STATEMENT...
!   Call the function
	mov	343,r13		! source line 343
	mov	"\0\0CA",r10
	call	_function_60_PrintChairs
! CALL STATEMENT...
!   _temp_473 = _StringConst_33
	set	_StringConst_33,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_473  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	344,r13		! source line 344
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_474 = _StringConst_34
	set	_StringConst_34,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_474  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	345,r13		! source line 345
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	346,r13		! source line 346
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_479 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-20]
!   Calculate and save the FOR-LOOP ending value
!   _temp_480 = customerNumber		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-16]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_479  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+-32]
_Label_475:
!   Perform the FOR-LOOP termination test
!   if i > _temp_480 then goto _Label_478		
	load	[r14+-32],r1
	load	[r14+-16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_478
_Label_476:
	mov	346,r13		! source line 346
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_481 = _StringConst_35
	set	_StringConst_35,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_481  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	347,r13		! source line 347
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_477:
!   i = i + 1
	load	[r14+-32],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
	jmp	_Label_475
! END FOR
_Label_478:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=customerState  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	349,r13		! source line 349
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	350,r13		! source line 350
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	351,r13		! source line 351
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	351,r13		! source line 351
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! RETURN STATEMENT...
	mov	351,r13		! source line 351
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
	.word	_Label_482
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_483
	.word	8
	.word	4
	.word	_Label_484
	.word	12
	.word	4
	.word	_Label_485
	.word	-12
	.word	4
	.word	_Label_486
	.word	-16
	.word	4
	.word	_Label_487
	.word	-20
	.word	4
	.word	_Label_488
	.word	-24
	.word	4
	.word	_Label_489
	.word	-28
	.word	4
	.word	_Label_490
	.word	-32
	.word	4
	.word	_Label_491
	.word	-36
	.word	4
	.word	0
_Label_482:
	.ascii	"PrintCustomerState\0"
	.align
_Label_483:
	.byte	'I'
	.ascii	"customerNumber\0"
	.align
_Label_484:
	.byte	'P'
	.ascii	"customerState\0"
	.align
_Label_485:
	.byte	'?'
	.ascii	"_temp_481\0"
	.align
_Label_486:
	.byte	'?'
	.ascii	"_temp_480\0"
	.align
_Label_487:
	.byte	'?'
	.ascii	"_temp_479\0"
	.align
_Label_488:
	.byte	'?'
	.ascii	"_temp_474\0"
	.align
_Label_489:
	.byte	'?'
	.ascii	"_temp_473\0"
	.align
_Label_490:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_491:
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
_Label_806:
	push	r0
	sub	r1,1,r1
	bne	_Label_806
	mov	362,r13		! source line 362
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! customers
!   NEW ARRAY Constructor...
!   _temp_493 = &_temp_492
	set	-37064,r1
	add	r14,r1,r1
	store	r1,[r14+-4324]
!   _temp_493 = _temp_493 + 4
	load	[r14+-4324],r1
	add	r1,4,r1
	store	r1,[r14+-4324]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_495 = zeros  (sizeInBytes=4092)
	add	r14,-4316,r4
	mov	1023,r3
_Label_807:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_807
!   _temp_495 = _P_Thread_Thread
	set	_P_Thread_Thread,r1
	store	r1,[r14+-4316]
	mov	8,r1
	store	r1,[r14+-4320]
_Label_497:
!   Data Move: *_temp_493 = _temp_495  (sizeInBytes=4092)
	add	r14,-4316,r5
	load	[r14+-4324],r4
	mov	1023,r3
_Label_808:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_808
!   _temp_493 = _temp_493 + 4092
	load	[r14+-4324],r1
	add	r1,4092,r1
	store	r1,[r14+-4324]
!   _temp_494 = _temp_494 + -1
	load	[r14+-4320],r1
	add	r1,-1,r1
	store	r1,[r14+-4320]
!   if intNotZero (_temp_494) then goto _Label_497
	load	[r14+-4320],r1
	cmp	r1,r0
	bne	_Label_497
!   Initialize the array size...
	mov	8,r1
	set	-37064,r2
	store	r1,[r14+r2]
!   _temp_498 = &_temp_492
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
!   Data Move: customers = *_temp_498  (sizeInBytes=32740)
	load	[r14+-220],r5
	set	-69804,r4
	add	r14,r4,r4
	mov	8185,r3
_Label_809:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_809
! ASSIGNMENT STATEMENT...
	mov	366,r13		! source line 366
	mov	"\0\0AS",r10
!   _Global_numDice = 8		(4 bytes)
	mov	8,r1
	set	_Global_numDice,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	367,r13		! source line 367
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
	mov	368,r13		! source line 368
	mov	"\0\0SE",r10
!   _temp_500 = &_Global_frontDesk
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
	mov	369,r13		! source line 369
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
	mov	370,r13		! source line 370
	mov	"\0\0SE",r10
!   _temp_502 = &_Global_gameAvailable
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
	mov	372,r13		! source line 372
	mov	"\0\0SE",r10
!   _temp_503 = _StringConst_36
	set	_StringConst_36,r1
	store	r1,[r14+-200]
!   _temp_504 = &customers
	set	-69804,r1
	add	r14,r1,r1
	store	r1,[r14+-196]
!   Move address of _temp_504 [0 ] into _temp_505
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
!   Prepare Argument: offset=12  value=_temp_503  sizeInBytes=4
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
	mov	373,r13		! source line 373
	mov	"\0\0SE",r10
!   _temp_506 = _function_57_PlayGame
	set	_function_57_PlayGame,r1
	store	r1,[r14+-188]
!   _temp_507 = &customers
	set	-69804,r1
	add	r14,r1,r1
	store	r1,[r14+-184]
!   Move address of _temp_507 [0 ] into _temp_508
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
!   Prepare Argument: offset=12  value=_temp_506  sizeInBytes=4
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
	mov	374,r13		! source line 374
	mov	"\0\0SE",r10
!   _temp_509 = _StringConst_37
	set	_StringConst_37,r1
	store	r1,[r14+-176]
!   _temp_510 = &customers
	set	-69804,r1
	add	r14,r1,r1
	store	r1,[r14+-172]
!   Move address of _temp_510 [1 ] into _temp_511
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
!   Prepare Argument: offset=12  value=_temp_509  sizeInBytes=4
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
	mov	375,r13		! source line 375
	mov	"\0\0SE",r10
!   _temp_512 = _function_57_PlayGame
	set	_function_57_PlayGame,r1
	store	r1,[r14+-164]
!   _temp_513 = &customers
	set	-69804,r1
	add	r14,r1,r1
	store	r1,[r14+-160]
!   Move address of _temp_513 [1 ] into _temp_514
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
!   Prepare Argument: offset=12  value=_temp_512  sizeInBytes=4
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
	mov	376,r13		! source line 376
	mov	"\0\0SE",r10
!   _temp_515 = _StringConst_38
	set	_StringConst_38,r1
	store	r1,[r14+-152]
!   _temp_516 = &customers
	set	-69804,r1
	add	r14,r1,r1
	store	r1,[r14+-148]
!   Move address of _temp_516 [2 ] into _temp_517
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
!   Prepare Argument: offset=12  value=_temp_515  sizeInBytes=4
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
	mov	377,r13		! source line 377
	mov	"\0\0SE",r10
!   _temp_518 = _function_57_PlayGame
	set	_function_57_PlayGame,r1
	store	r1,[r14+-140]
!   _temp_519 = &customers
	set	-69804,r1
	add	r14,r1,r1
	store	r1,[r14+-136]
!   Move address of _temp_519 [2 ] into _temp_520
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
!   Prepare Argument: offset=12  value=_temp_518  sizeInBytes=4
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
	mov	378,r13		! source line 378
	mov	"\0\0SE",r10
!   _temp_521 = _StringConst_39
	set	_StringConst_39,r1
	store	r1,[r14+-128]
!   _temp_522 = &customers
	set	-69804,r1
	add	r14,r1,r1
	store	r1,[r14+-124]
!   Move address of _temp_522 [3 ] into _temp_523
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
!   Prepare Argument: offset=12  value=_temp_521  sizeInBytes=4
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
	mov	379,r13		! source line 379
	mov	"\0\0SE",r10
!   _temp_524 = _function_57_PlayGame
	set	_function_57_PlayGame,r1
	store	r1,[r14+-116]
!   _temp_525 = &customers
	set	-69804,r1
	add	r14,r1,r1
	store	r1,[r14+-112]
!   Move address of _temp_525 [3 ] into _temp_526
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
!   Prepare Argument: offset=12  value=_temp_524  sizeInBytes=4
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
	mov	380,r13		! source line 380
	mov	"\0\0SE",r10
!   _temp_527 = _StringConst_40
	set	_StringConst_40,r1
	store	r1,[r14+-104]
!   _temp_528 = &customers
	set	-69804,r1
	add	r14,r1,r1
	store	r1,[r14+-100]
!   Move address of _temp_528 [4 ] into _temp_529
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
!   Prepare Argument: offset=12  value=_temp_527  sizeInBytes=4
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
	mov	381,r13		! source line 381
	mov	"\0\0SE",r10
!   _temp_530 = _function_57_PlayGame
	set	_function_57_PlayGame,r1
	store	r1,[r14+-92]
!   _temp_531 = &customers
	set	-69804,r1
	add	r14,r1,r1
	store	r1,[r14+-88]
!   Move address of _temp_531 [4 ] into _temp_532
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
!   Prepare Argument: offset=12  value=_temp_530  sizeInBytes=4
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
	mov	382,r13		! source line 382
	mov	"\0\0SE",r10
!   _temp_533 = _StringConst_41
	set	_StringConst_41,r1
	store	r1,[r14+-80]
!   _temp_534 = &customers
	set	-69804,r1
	add	r14,r1,r1
	store	r1,[r14+-76]
!   Move address of _temp_534 [5 ] into _temp_535
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
!   Prepare Argument: offset=12  value=_temp_533  sizeInBytes=4
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
	mov	383,r13		! source line 383
	mov	"\0\0SE",r10
!   _temp_536 = _function_57_PlayGame
	set	_function_57_PlayGame,r1
	store	r1,[r14+-68]
!   _temp_537 = &customers
	set	-69804,r1
	add	r14,r1,r1
	store	r1,[r14+-64]
!   Move address of _temp_537 [5 ] into _temp_538
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
!   Prepare Argument: offset=12  value=_temp_536  sizeInBytes=4
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
	mov	384,r13		! source line 384
	mov	"\0\0SE",r10
!   _temp_539 = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-56]
!   _temp_540 = &customers
	set	-69804,r1
	add	r14,r1,r1
	store	r1,[r14+-52]
!   Move address of _temp_540 [6 ] into _temp_541
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
!   Prepare Argument: offset=12  value=_temp_539  sizeInBytes=4
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
	mov	385,r13		! source line 385
	mov	"\0\0SE",r10
!   _temp_542 = _function_57_PlayGame
	set	_function_57_PlayGame,r1
	store	r1,[r14+-44]
!   _temp_543 = &customers
	set	-69804,r1
	add	r14,r1,r1
	store	r1,[r14+-40]
!   Move address of _temp_543 [6 ] into _temp_544
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
!   Prepare Argument: offset=12  value=_temp_542  sizeInBytes=4
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
	mov	386,r13		! source line 386
	mov	"\0\0SE",r10
!   _temp_545 = _StringConst_43
	set	_StringConst_43,r1
	store	r1,[r14+-32]
!   _temp_546 = &customers
	set	-69804,r1
	add	r14,r1,r1
	store	r1,[r14+-28]
!   Move address of _temp_546 [7 ] into _temp_547
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
!   Prepare Argument: offset=12  value=_temp_545  sizeInBytes=4
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
	mov	387,r13		! source line 387
	mov	"\0\0SE",r10
!   _temp_548 = _function_57_PlayGame
	set	_function_57_PlayGame,r1
	store	r1,[r14+-20]
!   _temp_549 = &customers
	set	-69804,r1
	add	r14,r1,r1
	store	r1,[r14+-16]
!   Move address of _temp_549 [7 ] into _temp_550
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
!   Prepare Argument: offset=12  value=_temp_548  sizeInBytes=4
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
	mov	387,r13		! source line 387
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
	.word	_Label_551
	.word	0		! total size of parameters
	.word	69808		! frame size = 69808
	.word	_Label_552
	.word	-12
	.word	4
	.word	_Label_553
	.word	-16
	.word	4
	.word	_Label_554
	.word	-20
	.word	4
	.word	_Label_555
	.word	-24
	.word	4
	.word	_Label_556
	.word	-28
	.word	4
	.word	_Label_557
	.word	-32
	.word	4
	.word	_Label_558
	.word	-36
	.word	4
	.word	_Label_559
	.word	-40
	.word	4
	.word	_Label_560
	.word	-44
	.word	4
	.word	_Label_561
	.word	-48
	.word	4
	.word	_Label_562
	.word	-52
	.word	4
	.word	_Label_563
	.word	-56
	.word	4
	.word	_Label_564
	.word	-60
	.word	4
	.word	_Label_565
	.word	-64
	.word	4
	.word	_Label_566
	.word	-68
	.word	4
	.word	_Label_567
	.word	-72
	.word	4
	.word	_Label_568
	.word	-76
	.word	4
	.word	_Label_569
	.word	-80
	.word	4
	.word	_Label_570
	.word	-84
	.word	4
	.word	_Label_571
	.word	-88
	.word	4
	.word	_Label_572
	.word	-92
	.word	4
	.word	_Label_573
	.word	-96
	.word	4
	.word	_Label_574
	.word	-100
	.word	4
	.word	_Label_575
	.word	-104
	.word	4
	.word	_Label_576
	.word	-108
	.word	4
	.word	_Label_577
	.word	-112
	.word	4
	.word	_Label_578
	.word	-116
	.word	4
	.word	_Label_579
	.word	-120
	.word	4
	.word	_Label_580
	.word	-124
	.word	4
	.word	_Label_581
	.word	-128
	.word	4
	.word	_Label_582
	.word	-132
	.word	4
	.word	_Label_583
	.word	-136
	.word	4
	.word	_Label_584
	.word	-140
	.word	4
	.word	_Label_585
	.word	-144
	.word	4
	.word	_Label_586
	.word	-148
	.word	4
	.word	_Label_587
	.word	-152
	.word	4
	.word	_Label_588
	.word	-156
	.word	4
	.word	_Label_589
	.word	-160
	.word	4
	.word	_Label_590
	.word	-164
	.word	4
	.word	_Label_591
	.word	-168
	.word	4
	.word	_Label_592
	.word	-172
	.word	4
	.word	_Label_593
	.word	-176
	.word	4
	.word	_Label_594
	.word	-180
	.word	4
	.word	_Label_595
	.word	-184
	.word	4
	.word	_Label_596
	.word	-188
	.word	4
	.word	_Label_597
	.word	-192
	.word	4
	.word	_Label_598
	.word	-196
	.word	4
	.word	_Label_599
	.word	-200
	.word	4
	.word	_Label_600
	.word	-204
	.word	4
	.word	_Label_601
	.word	-208
	.word	4
	.word	_Label_602
	.word	-212
	.word	4
	.word	_Label_603
	.word	-216
	.word	4
	.word	_Label_604
	.word	-220
	.word	4
	.word	_Label_605
	.word	-224
	.word	4
	.word	_Label_606
	.word	-4316
	.word	4092
	.word	_Label_607
	.word	-4320
	.word	4
	.word	_Label_608
	.word	-4324
	.word	4
	.word	_Label_609
	.word	-37064
	.word	32740
	.word	_Label_610
	.word	-69804
	.word	32740
	.word	0
_Label_551:
	.ascii	"TheGamingParlor\0"
	.align
_Label_552:
	.byte	'?'
	.ascii	"_temp_550\0"
	.align
_Label_553:
	.byte	'?'
	.ascii	"_temp_549\0"
	.align
_Label_554:
	.byte	'?'
	.ascii	"_temp_548\0"
	.align
_Label_555:
	.byte	'?'
	.ascii	"_temp_547\0"
	.align
_Label_556:
	.byte	'?'
	.ascii	"_temp_546\0"
	.align
_Label_557:
	.byte	'?'
	.ascii	"_temp_545\0"
	.align
_Label_558:
	.byte	'?'
	.ascii	"_temp_544\0"
	.align
_Label_559:
	.byte	'?'
	.ascii	"_temp_543\0"
	.align
_Label_560:
	.byte	'?'
	.ascii	"_temp_542\0"
	.align
_Label_561:
	.byte	'?'
	.ascii	"_temp_541\0"
	.align
_Label_562:
	.byte	'?'
	.ascii	"_temp_540\0"
	.align
_Label_563:
	.byte	'?'
	.ascii	"_temp_539\0"
	.align
_Label_564:
	.byte	'?'
	.ascii	"_temp_538\0"
	.align
_Label_565:
	.byte	'?'
	.ascii	"_temp_537\0"
	.align
_Label_566:
	.byte	'?'
	.ascii	"_temp_536\0"
	.align
_Label_567:
	.byte	'?'
	.ascii	"_temp_535\0"
	.align
_Label_568:
	.byte	'?'
	.ascii	"_temp_534\0"
	.align
_Label_569:
	.byte	'?'
	.ascii	"_temp_533\0"
	.align
_Label_570:
	.byte	'?'
	.ascii	"_temp_532\0"
	.align
_Label_571:
	.byte	'?'
	.ascii	"_temp_531\0"
	.align
_Label_572:
	.byte	'?'
	.ascii	"_temp_530\0"
	.align
_Label_573:
	.byte	'?'
	.ascii	"_temp_529\0"
	.align
_Label_574:
	.byte	'?'
	.ascii	"_temp_528\0"
	.align
_Label_575:
	.byte	'?'
	.ascii	"_temp_527\0"
	.align
_Label_576:
	.byte	'?'
	.ascii	"_temp_526\0"
	.align
_Label_577:
	.byte	'?'
	.ascii	"_temp_525\0"
	.align
_Label_578:
	.byte	'?'
	.ascii	"_temp_524\0"
	.align
_Label_579:
	.byte	'?'
	.ascii	"_temp_523\0"
	.align
_Label_580:
	.byte	'?'
	.ascii	"_temp_522\0"
	.align
_Label_581:
	.byte	'?'
	.ascii	"_temp_521\0"
	.align
_Label_582:
	.byte	'?'
	.ascii	"_temp_520\0"
	.align
_Label_583:
	.byte	'?'
	.ascii	"_temp_519\0"
	.align
_Label_584:
	.byte	'?'
	.ascii	"_temp_518\0"
	.align
_Label_585:
	.byte	'?'
	.ascii	"_temp_517\0"
	.align
_Label_586:
	.byte	'?'
	.ascii	"_temp_516\0"
	.align
_Label_587:
	.byte	'?'
	.ascii	"_temp_515\0"
	.align
_Label_588:
	.byte	'?'
	.ascii	"_temp_514\0"
	.align
_Label_589:
	.byte	'?'
	.ascii	"_temp_513\0"
	.align
_Label_590:
	.byte	'?'
	.ascii	"_temp_512\0"
	.align
_Label_591:
	.byte	'?'
	.ascii	"_temp_511\0"
	.align
_Label_592:
	.byte	'?'
	.ascii	"_temp_510\0"
	.align
_Label_593:
	.byte	'?'
	.ascii	"_temp_509\0"
	.align
_Label_594:
	.byte	'?'
	.ascii	"_temp_508\0"
	.align
_Label_595:
	.byte	'?'
	.ascii	"_temp_507\0"
	.align
_Label_596:
	.byte	'?'
	.ascii	"_temp_506\0"
	.align
_Label_597:
	.byte	'?'
	.ascii	"_temp_505\0"
	.align
_Label_598:
	.byte	'?'
	.ascii	"_temp_504\0"
	.align
_Label_599:
	.byte	'?'
	.ascii	"_temp_503\0"
	.align
_Label_600:
	.byte	'?'
	.ascii	"_temp_502\0"
	.align
_Label_601:
	.byte	'?'
	.ascii	"_temp_501\0"
	.align
_Label_602:
	.byte	'?'
	.ascii	"_temp_500\0"
	.align
_Label_603:
	.byte	'?'
	.ascii	"_temp_499\0"
	.align
_Label_604:
	.byte	'?'
	.ascii	"_temp_498\0"
	.align
_Label_605:
	.byte	'?'
	.ascii	"_temp_496\0"
	.align
_Label_606:
	.byte	'?'
	.ascii	"_temp_495\0"
	.align
_Label_607:
	.byte	'?'
	.ascii	"_temp_494\0"
	.align
_Label_608:
	.byte	'?'
	.ascii	"_temp_493\0"
	.align
_Label_609:
	.byte	'?'
	.ascii	"_temp_492\0"
	.align
_Label_610:
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
_Label_810:
	push	r0
	sub	r1,1,r1
	bne	_Label_810
	mov	390,r13		! source line 390
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	393,r13		! source line 393
	mov	"\0\0AS",r10
!   numPlays = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-12]
! WHILE STATEMENT...
	mov	394,r13		! source line 394
	mov	"\0\0WH",r10
_Label_611:
!   if numPlays >= 5 then goto _Label_613		(int)
	load	[r14+-12],r1
	mov	5,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_613
!	jmp	_Label_612
_Label_612:
	mov	394,r13		! source line 394
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	395,r13		! source line 395
	mov	"\0\0AS",r10
!   numPlays = numPlays + 1		(int)
	load	[r14+-12],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
! IF STATEMENT...
	mov	396,r13		! source line 396
	mov	"\0\0IF",r10
!   if intIsZero (game) then goto _Label_614
	load	[r14+8],r1
	cmp	r1,r0
	be	_Label_614
	jmp	_Label_615
_Label_614:
! THEN...
	mov	397,r13		! source line 397
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+0]
!   Call the function
	mov	397,r13		! source line 397
	mov	"\0\0CA",r10
	call	_function_52_Request
! SEND STATEMENT...
	mov	398,r13		! source line 398
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
	mov	399,r13		! source line 399
	mov	"\0\0CA",r10
	call	_function_51_Return
	jmp	_Label_616
_Label_615:
! ELSE...
	mov	400,r13		! source line 400
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	400,r13		! source line 400
	mov	"\0\0IF",r10
!   if game != 1 then goto _Label_618		(int)
	load	[r14+8],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_618
!	jmp	_Label_617
_Label_617:
! THEN...
	mov	401,r13		! source line 401
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=5  sizeInBytes=4
	mov	5,r1
	store	r1,[r15+0]
!   Call the function
	mov	401,r13		! source line 401
	mov	"\0\0CA",r10
	call	_function_52_Request
! SEND STATEMENT...
	mov	402,r13		! source line 402
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
	mov	403,r13		! source line 403
	mov	"\0\0CA",r10
	call	_function_51_Return
	jmp	_Label_619
_Label_618:
! ELSE...
	mov	404,r13		! source line 404
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	404,r13		! source line 404
	mov	"\0\0IF",r10
!   if game != 2 then goto _Label_621		(int)
	load	[r14+8],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_621
!	jmp	_Label_620
_Label_620:
! THEN...
	mov	405,r13		! source line 405
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	405,r13		! source line 405
	mov	"\0\0CA",r10
	call	_function_52_Request
! SEND STATEMENT...
	mov	406,r13		! source line 406
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
	mov	407,r13		! source line 407
	mov	"\0\0CA",r10
	call	_function_51_Return
	jmp	_Label_622
_Label_621:
! ELSE...
	mov	408,r13		! source line 408
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	408,r13		! source line 408
	mov	"\0\0IF",r10
!   if game != 3 then goto _Label_624		(int)
	load	[r14+8],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_624
!	jmp	_Label_623
_Label_623:
! THEN...
	mov	409,r13		! source line 409
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	409,r13		! source line 409
	mov	"\0\0CA",r10
	call	_function_52_Request
! SEND STATEMENT...
	mov	410,r13		! source line 410
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
	mov	411,r13		! source line 411
	mov	"\0\0CA",r10
	call	_function_51_Return
! END IF...
_Label_624:
! END IF...
_Label_622:
! END IF...
_Label_619:
! END IF...
_Label_616:
! END WHILE...
	jmp	_Label_611
_Label_613:
! RETURN STATEMENT...
	mov	394,r13		! source line 394
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
	.word	_Label_625
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_626
	.word	8
	.word	4
	.word	_Label_627
	.word	-12
	.word	4
	.word	0
_Label_625:
	.ascii	"PlayGame\0"
	.align
_Label_626:
	.byte	'I'
	.ascii	"game\0"
	.align
_Label_627:
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
_Label_811:
	push	r0
	sub	r1,1,r1
	bne	_Label_811
	mov	416,r13		! source line 416
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_629 = _P_Thread_currentThread + 72
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-16]
!   Data Move: _temp_628 = *_temp_629  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_628  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	417,r13		! source line 417
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_630 = _StringConst_44
	set	_StringConst_44,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_630  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	418,r13		! source line 418
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=n  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	419,r13		! source line 419
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	420,r13		! source line 420
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   Call the function
	mov	421,r13		! source line 421
	mov	"\0\0CA",r10
	call	_function_55_PrintAvailableDice
! RETURN STATEMENT...
	mov	421,r13		! source line 421
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
	.word	_Label_631
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_632
	.word	8
	.word	4
	.word	_Label_633
	.word	-12
	.word	4
	.word	_Label_634
	.word	-16
	.word	4
	.word	_Label_635
	.word	-20
	.word	4
	.word	0
_Label_631:
	.ascii	"PrintRequest\0"
	.align
_Label_632:
	.byte	'I'
	.ascii	"n\0"
	.align
_Label_633:
	.byte	'?'
	.ascii	"_temp_630\0"
	.align
_Label_634:
	.byte	'?'
	.ascii	"_temp_629\0"
	.align
_Label_635:
	.byte	'?'
	.ascii	"_temp_628\0"
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
_Label_812:
	push	r0
	sub	r1,1,r1
	bne	_Label_812
	mov	424,r13		! source line 424
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_636 = _StringConst_45
	set	_StringConst_45,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_636  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	425,r13		! source line 425
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=_Global_numDice  sizeInBytes=4
	set	_Global_numDice,r1
	load	[r1],r1
	store	r1,[r15+0]
!   Call the function
	mov	426,r13		! source line 426
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	427,r13		! source line 427
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	427,r13		! source line 427
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
	.word	_Label_637
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_638
	.word	-12
	.word	4
	.word	0
_Label_637:
	.ascii	"PrintAvailableDice\0"
	.align
_Label_638:
	.byte	'?'
	.ascii	"_temp_636\0"
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
_Label_813:
	push	r0
	sub	r1,1,r1
	bne	_Label_813
	mov	430,r13		! source line 430
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_640 = _P_Thread_currentThread + 72
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-16]
!   Data Move: _temp_639 = *_temp_640  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_639  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	431,r13		! source line 431
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_641 = _StringConst_46
	set	_StringConst_46,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_641  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	432,r13		! source line 432
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=n  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	433,r13		! source line 433
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	434,r13		! source line 434
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   Call the function
	mov	435,r13		! source line 435
	mov	"\0\0CA",r10
	call	_function_55_PrintAvailableDice
! RETURN STATEMENT...
	mov	435,r13		! source line 435
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
	.word	_Label_642
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_643
	.word	8
	.word	4
	.word	_Label_644
	.word	-12
	.word	4
	.word	_Label_645
	.word	-16
	.word	4
	.word	_Label_646
	.word	-20
	.word	4
	.word	0
_Label_642:
	.ascii	"PrintProceeds\0"
	.align
_Label_643:
	.byte	'I'
	.ascii	"n\0"
	.align
_Label_644:
	.byte	'?'
	.ascii	"_temp_641\0"
	.align
_Label_645:
	.byte	'?'
	.ascii	"_temp_640\0"
	.align
_Label_646:
	.byte	'?'
	.ascii	"_temp_639\0"
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
_Label_814:
	push	r0
	sub	r1,1,r1
	bne	_Label_814
	mov	438,r13		! source line 438
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_648 = _P_Thread_currentThread + 72
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-16]
!   Data Move: _temp_647 = *_temp_648  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_647  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	439,r13		! source line 439
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_649 = _StringConst_47
	set	_StringConst_47,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_649  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	440,r13		! source line 440
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=n  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	441,r13		! source line 441
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	442,r13		! source line 442
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   Call the function
	mov	443,r13		! source line 443
	mov	"\0\0CA",r10
	call	_function_55_PrintAvailableDice
! RETURN STATEMENT...
	mov	443,r13		! source line 443
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
	.word	_Label_650
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_651
	.word	8
	.word	4
	.word	_Label_652
	.word	-12
	.word	4
	.word	_Label_653
	.word	-16
	.word	4
	.word	_Label_654
	.word	-20
	.word	4
	.word	0
_Label_650:
	.ascii	"PrintReturn\0"
	.align
_Label_651:
	.byte	'I'
	.ascii	"n\0"
	.align
_Label_652:
	.byte	'?'
	.ascii	"_temp_649\0"
	.align
_Label_653:
	.byte	'?'
	.ascii	"_temp_648\0"
	.align
_Label_654:
	.byte	'?'
	.ascii	"_temp_647\0"
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
_Label_815:
	push	r0
	sub	r1,1,r1
	bne	_Label_815
	mov	446,r13		! source line 446
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	447,r13		! source line 447
	mov	"\0\0SE",r10
!   _temp_655 = &_Global_frontDesk
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
	mov	448,r13		! source line 448
	mov	"\0\0CA",r10
	call	_function_56_PrintRequest
! WHILE STATEMENT...
	mov	449,r13		! source line 449
	mov	"\0\0WH",r10
_Label_656:
!   if numDiceRequested <= _Global_numDice then goto _Label_658		(int)
	load	[r14+8],r1
	set	_Global_numDice,r2
	load	[r2],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_658
!	jmp	_Label_657
_Label_657:
	mov	449,r13		! source line 449
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	450,r13		! source line 450
	mov	"\0\0SE",r10
!   _temp_659 = &_Global_frontDesk
	set	_Global_frontDesk,r1
	store	r1,[r14+-20]
!   _temp_660 = &_Global_gameAvailable
	set	_Global_gameAvailable,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_659  sizeInBytes=4
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
	jmp	_Label_656
_Label_658:
! ASSIGNMENT STATEMENT...
	mov	452,r13		! source line 452
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
	mov	453,r13		! source line 453
	mov	"\0\0CA",r10
	call	_function_54_PrintProceeds
! SEND STATEMENT...
	mov	454,r13		! source line 454
	mov	"\0\0SE",r10
!   _temp_661 = &_Global_frontDesk
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
	mov	454,r13		! source line 454
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
	.word	_Label_662
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_663
	.word	8
	.word	4
	.word	_Label_664
	.word	-12
	.word	4
	.word	_Label_665
	.word	-16
	.word	4
	.word	_Label_666
	.word	-20
	.word	4
	.word	_Label_667
	.word	-24
	.word	4
	.word	0
_Label_662:
	.ascii	"Request\0"
	.align
_Label_663:
	.byte	'I'
	.ascii	"numDiceRequested\0"
	.align
_Label_664:
	.byte	'?'
	.ascii	"_temp_661\0"
	.align
_Label_665:
	.byte	'?'
	.ascii	"_temp_660\0"
	.align
_Label_666:
	.byte	'?'
	.ascii	"_temp_659\0"
	.align
_Label_667:
	.byte	'?'
	.ascii	"_temp_655\0"
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
_Label_816:
	push	r0
	sub	r1,1,r1
	bne	_Label_816
	mov	457,r13		! source line 457
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	458,r13		! source line 458
	mov	"\0\0SE",r10
!   _temp_668 = &_Global_frontDesk
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
	mov	459,r13		! source line 459
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
	mov	460,r13		! source line 460
	mov	"\0\0CA",r10
	call	_function_53_PrintReturn
! SEND STATEMENT...
	mov	461,r13		! source line 461
	mov	"\0\0SE",r10
!   _temp_669 = &_Global_frontDesk
	set	_Global_frontDesk,r1
	store	r1,[r14+-20]
!   _temp_670 = &_Global_gameAvailable
	set	_Global_gameAvailable,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_669  sizeInBytes=4
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
	mov	462,r13		! source line 462
	mov	"\0\0SE",r10
!   _temp_671 = &_Global_frontDesk
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
	mov	462,r13		! source line 462
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
	.word	_Label_672
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_673
	.word	8
	.word	4
	.word	_Label_674
	.word	-12
	.word	4
	.word	_Label_675
	.word	-16
	.word	4
	.word	_Label_676
	.word	-20
	.word	4
	.word	_Label_677
	.word	-24
	.word	4
	.word	0
_Label_672:
	.ascii	"Return\0"
	.align
_Label_673:
	.byte	'I'
	.ascii	"numDiceReturned\0"
	.align
_Label_674:
	.byte	'?'
	.ascii	"_temp_671\0"
	.align
_Label_675:
	.byte	'?'
	.ascii	"_temp_670\0"
	.align
_Label_676:
	.byte	'?'
	.ascii	"_temp_669\0"
	.align
_Label_677:
	.byte	'?'
	.ascii	"_temp_668\0"
	.align
! 
! ===============  CLASS ForkMonitor  ===============
! 
! Dispatch Table:
! 
_P_Main_ForkMonitor:
	.word	_Label_678
	jmp	_Method_P_Main_ForkMonitor_1	! 4:	Init
	jmp	_Method_P_Main_ForkMonitor_2	! 8:	PickupForks
	jmp	_Method_P_Main_ForkMonitor_3	! 12:	PutDownForks
	jmp	_Method_P_Main_ForkMonitor_4	! 16:	PrintAllStatus
	.word	0
! 
! Class descriptor:
! 
_Label_678:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_679
	.word	_sourceFileName
	.word	112		! line number
	.word	64		! size of instances, in bytes
	.word	_P_Main_ForkMonitor
	.word	_P_System_Object
	.word	0
_Label_679:
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
_Label_817:
	push	r0
	sub	r1,1,r1
	bne	_Label_817
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
!   _temp_682 = &mutex
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
!   _temp_683 = &condition
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
!   _temp_684 = &status
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-48]
!   NEW ARRAY Constructor...
!   _temp_686 = &_temp_685
	add	r14,-44,r1
	store	r1,[r14+-20]
!   _temp_686 = _temp_686 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	5,r1
	store	r1,[r14+-16]
_Label_688:
!   Data Move: *_temp_686 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_686 = _temp_686 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_687 = _temp_687 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_687) then goto _Label_688
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_688
!   Initialize the array size...
	mov	5,r1
	store	r1,[r14+-44]
!   _temp_689 = &_temp_685
	add	r14,-44,r1
	store	r1,[r14+-12]
!   make sure array has size 5
	load	[r14+-48],r1
	load	[r1],r1
	set	5, r2
	cmp	r1,0
	be	_Label_818
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_818:
!   make sure array has size 5
	load	[r14+-12],r1
	load	[r1],r1
	set	5, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_684 = *_temp_689  (sizeInBytes=24)
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
	.word	_Label_690
	.word	4		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_691
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_692
	.word	-12
	.word	4
	.word	_Label_693
	.word	-16
	.word	4
	.word	_Label_694
	.word	-20
	.word	4
	.word	_Label_695
	.word	-44
	.word	24
	.word	_Label_696
	.word	-48
	.word	4
	.word	_Label_697
	.word	-52
	.word	4
	.word	_Label_698
	.word	-56
	.word	4
	.word	_Label_699
	.word	-60
	.word	4
	.word	_Label_700
	.word	-64
	.word	4
	.word	0
_Label_690:
	.ascii	"ForkMonitor"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_691:
	.ascii	"Pself\0"
	.align
_Label_692:
	.byte	'?'
	.ascii	"_temp_689\0"
	.align
_Label_693:
	.byte	'?'
	.ascii	"_temp_687\0"
	.align
_Label_694:
	.byte	'?'
	.ascii	"_temp_686\0"
	.align
_Label_695:
	.byte	'?'
	.ascii	"_temp_685\0"
	.align
_Label_696:
	.byte	'?'
	.ascii	"_temp_684\0"
	.align
_Label_697:
	.byte	'?'
	.ascii	"_temp_683\0"
	.align
_Label_698:
	.byte	'?'
	.ascii	"_temp_682\0"
	.align
_Label_699:
	.byte	'?'
	.ascii	"_temp_681\0"
	.align
_Label_700:
	.byte	'?'
	.ascii	"_temp_680\0"
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
_Label_819:
	push	r0
	sub	r1,1,r1
	bne	_Label_819
	mov	136,r13		! source line 136
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	140,r13		! source line 140
	mov	"\0\0SE",r10
!   _temp_701 = &mutex
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
!   _temp_702 = &status
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-76]
!   Move address of _temp_702 [p ] into _temp_703
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
!   Data Move: *_temp_703 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-72],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	142,r13		! source line 142
	mov	"\0\0SE",r10
!   _temp_704 = &_Global_mon
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
!   _temp_705 = p + 4		(int)
	load	[r14+12],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
!   left = _temp_705 rem 5		(int)
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
!   _temp_706 = p + 1		(int)
	load	[r14+12],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   right = _temp_706 rem 5		(int)
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
_Label_707:
!   _temp_712 = &status
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   Move address of _temp_712 [left ] into _temp_713
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
!   Data Move: _temp_711 = *_temp_713  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if _temp_711 != 2 then goto _Label_710		(int)
	load	[r14+-56],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_710
	jmp	_Label_708
_Label_710:
!   _temp_715 = &status
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Move address of _temp_715 [right ] into _temp_716
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
!   Data Move: _temp_714 = *_temp_716  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   if _temp_714 != 2 then goto _Label_709		(int)
	load	[r14+-44],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_709
!	jmp	_Label_708
_Label_708:
	mov	145,r13		! source line 145
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	146,r13		! source line 146
	mov	"\0\0SE",r10
!   _temp_717 = &mutex
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-32]
!   _temp_718 = &condition
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_717  sizeInBytes=4
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
	jmp	_Label_707
_Label_709:
! ASSIGNMENT STATEMENT...
	mov	148,r13		! source line 148
	mov	"\0\0AS",r10
!   _temp_719 = &status
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Move address of _temp_719 [p ] into _temp_720
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
!   Data Move: *_temp_720 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	149,r13		! source line 149
	mov	"\0\0SE",r10
!   _temp_721 = &_Global_mon
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
!   _temp_722 = &mutex
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
	.word	_Label_723
	.word	8		! total size of parameters
	.word	88		! frame size = 88
	.word	_Label_724
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_725
	.word	12
	.word	4
	.word	_Label_726
	.word	-12
	.word	4
	.word	_Label_727
	.word	-16
	.word	4
	.word	_Label_728
	.word	-20
	.word	4
	.word	_Label_729
	.word	-24
	.word	4
	.word	_Label_730
	.word	-28
	.word	4
	.word	_Label_731
	.word	-32
	.word	4
	.word	_Label_732
	.word	-36
	.word	4
	.word	_Label_733
	.word	-40
	.word	4
	.word	_Label_734
	.word	-44
	.word	4
	.word	_Label_735
	.word	-48
	.word	4
	.word	_Label_736
	.word	-52
	.word	4
	.word	_Label_737
	.word	-56
	.word	4
	.word	_Label_738
	.word	-60
	.word	4
	.word	_Label_739
	.word	-64
	.word	4
	.word	_Label_740
	.word	-68
	.word	4
	.word	_Label_741
	.word	-72
	.word	4
	.word	_Label_742
	.word	-76
	.word	4
	.word	_Label_743
	.word	-80
	.word	4
	.word	_Label_744
	.word	-84
	.word	4
	.word	_Label_745
	.word	-88
	.word	4
	.word	0
_Label_723:
	.ascii	"ForkMonitor"
	.ascii	"::"
	.ascii	"PickupForks\0"
	.align
_Label_724:
	.ascii	"Pself\0"
	.align
_Label_725:
	.byte	'I'
	.ascii	"p\0"
	.align
_Label_726:
	.byte	'?'
	.ascii	"_temp_722\0"
	.align
_Label_727:
	.byte	'?'
	.ascii	"_temp_721\0"
	.align
_Label_728:
	.byte	'?'
	.ascii	"_temp_720\0"
	.align
_Label_729:
	.byte	'?'
	.ascii	"_temp_719\0"
	.align
_Label_730:
	.byte	'?'
	.ascii	"_temp_718\0"
	.align
_Label_731:
	.byte	'?'
	.ascii	"_temp_717\0"
	.align
_Label_732:
	.byte	'?'
	.ascii	"_temp_716\0"
	.align
_Label_733:
	.byte	'?'
	.ascii	"_temp_715\0"
	.align
_Label_734:
	.byte	'?'
	.ascii	"_temp_714\0"
	.align
_Label_735:
	.byte	'?'
	.ascii	"_temp_713\0"
	.align
_Label_736:
	.byte	'?'
	.ascii	"_temp_712\0"
	.align
_Label_737:
	.byte	'?'
	.ascii	"_temp_711\0"
	.align
_Label_738:
	.byte	'?'
	.ascii	"_temp_706\0"
	.align
_Label_739:
	.byte	'?'
	.ascii	"_temp_705\0"
	.align
_Label_740:
	.byte	'?'
	.ascii	"_temp_704\0"
	.align
_Label_741:
	.byte	'?'
	.ascii	"_temp_703\0"
	.align
_Label_742:
	.byte	'?'
	.ascii	"_temp_702\0"
	.align
_Label_743:
	.byte	'?'
	.ascii	"_temp_701\0"
	.align
_Label_744:
	.byte	'I'
	.ascii	"left\0"
	.align
_Label_745:
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
_Label_820:
	push	r0
	sub	r1,1,r1
	bne	_Label_820
	mov	153,r13		! source line 153
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	154,r13		! source line 154
	mov	"\0\0SE",r10
!   _temp_746 = &mutex
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
!   _temp_747 = &status
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Move address of _temp_747 [p ] into _temp_748
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
!   Data Move: *_temp_748 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	156,r13		! source line 156
	mov	"\0\0SE",r10
!   _temp_749 = &_Global_mon
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
!   _temp_750 = &mutex
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-20]
!   _temp_751 = &condition
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_750  sizeInBytes=4
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
!   _temp_752 = &mutex
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
	.word	_Label_753
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_754
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_755
	.word	12
	.word	4
	.word	_Label_756
	.word	-12
	.word	4
	.word	_Label_757
	.word	-16
	.word	4
	.word	_Label_758
	.word	-20
	.word	4
	.word	_Label_759
	.word	-24
	.word	4
	.word	_Label_760
	.word	-28
	.word	4
	.word	_Label_761
	.word	-32
	.word	4
	.word	_Label_762
	.word	-36
	.word	4
	.word	0
_Label_753:
	.ascii	"ForkMonitor"
	.ascii	"::"
	.ascii	"PutDownForks\0"
	.align
_Label_754:
	.ascii	"Pself\0"
	.align
_Label_755:
	.byte	'I'
	.ascii	"p\0"
	.align
_Label_756:
	.byte	'?'
	.ascii	"_temp_752\0"
	.align
_Label_757:
	.byte	'?'
	.ascii	"_temp_751\0"
	.align
_Label_758:
	.byte	'?'
	.ascii	"_temp_750\0"
	.align
_Label_759:
	.byte	'?'
	.ascii	"_temp_749\0"
	.align
_Label_760:
	.byte	'?'
	.ascii	"_temp_748\0"
	.align
_Label_761:
	.byte	'?'
	.ascii	"_temp_747\0"
	.align
_Label_762:
	.byte	'?'
	.ascii	"_temp_746\0"
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
_Label_821:
	push	r0
	sub	r1,1,r1
	bne	_Label_821
	mov	162,r13		! source line 162
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! FOR STATEMENT...
	mov	176,r13		! source line 176
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_767 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_768 = 4		(4 bytes)
	mov	4,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: p = _temp_767  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-44]
_Label_763:
!   Perform the FOR-LOOP termination test
!   if p > _temp_768 then goto _Label_766		
	load	[r14+-44],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_766
_Label_764:
	mov	176,r13		! source line 176
	mov	"\0\0FB",r10
! SWITCH STATEMENT (using series of tests)...
	mov	177,r13		! source line 177
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   _temp_775 = &status
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_775 [p ] into _temp_776
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
!   Data Move: _temp_774 = *_temp_776  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   Branch to the right case label
	load	[r14+-32],r1
	cmp	r1,1
	be	_Label_771
	cmp	r1,2
	be	_Label_772
	cmp	r1,3
	be	_Label_773
	jmp	_Label_769
! CASE 1...
_Label_771:
! CALL STATEMENT...
!   _temp_777 = _StringConst_48
	set	_StringConst_48,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_777  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	179,r13		! source line 179
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	180,r13		! source line 180
	mov	"\0\0BR",r10
	jmp	_Label_770
! CASE 2...
_Label_772:
! CALL STATEMENT...
!   _temp_778 = _StringConst_49
	set	_StringConst_49,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_778  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	182,r13		! source line 182
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	183,r13		! source line 183
	mov	"\0\0BR",r10
	jmp	_Label_770
! CASE 3...
_Label_773:
! CALL STATEMENT...
!   _temp_779 = _StringConst_50
	set	_StringConst_50,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_779  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	185,r13		! source line 185
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	186,r13		! source line 186
	mov	"\0\0BR",r10
	jmp	_Label_770
! DEFAULT CASE...
_Label_769:
! END SWITCH...
_Label_770:
!   Increment the FOR-LOOP index variable and jump back
_Label_765:
!   p = p + 1
	load	[r14+-44],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
	jmp	_Label_763
! END FOR
_Label_766:
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
	.word	_Label_780
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_781
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_782
	.word	-12
	.word	4
	.word	_Label_783
	.word	-16
	.word	4
	.word	_Label_784
	.word	-20
	.word	4
	.word	_Label_785
	.word	-24
	.word	4
	.word	_Label_786
	.word	-28
	.word	4
	.word	_Label_787
	.word	-32
	.word	4
	.word	_Label_788
	.word	-36
	.word	4
	.word	_Label_789
	.word	-40
	.word	4
	.word	_Label_790
	.word	-44
	.word	4
	.word	0
_Label_780:
	.ascii	"ForkMonitor"
	.ascii	"::"
	.ascii	"PrintAllStatus\0"
	.align
_Label_781:
	.ascii	"Pself\0"
	.align
_Label_782:
	.byte	'?'
	.ascii	"_temp_779\0"
	.align
_Label_783:
	.byte	'?'
	.ascii	"_temp_778\0"
	.align
_Label_784:
	.byte	'?'
	.ascii	"_temp_777\0"
	.align
_Label_785:
	.byte	'?'
	.ascii	"_temp_776\0"
	.align
_Label_786:
	.byte	'?'
	.ascii	"_temp_775\0"
	.align
_Label_787:
	.byte	'?'
	.ascii	"_temp_774\0"
	.align
_Label_788:
	.byte	'?'
	.ascii	"_temp_768\0"
	.align
_Label_789:
	.byte	'?'
	.ascii	"_temp_767\0"
	.align
_Label_790:
	.byte	'I'
	.ascii	"p\0"
	.align
