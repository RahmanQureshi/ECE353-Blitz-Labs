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
	.export	_P_Kernel_InitFirstProcess
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
	.export	_Method_P_Kernel_ProcessManager_6
	.export	_Method_P_Kernel_ProcessManager_7
! The following class and its methods are from this package
	.export	_P_Kernel_FrameManager
	.export	_Method_P_Kernel_FrameManager_1
	.export	_Method_P_Kernel_FrameManager_2
	.export	_Method_P_Kernel_FrameManager_3
	.export	_Method_P_Kernel_FrameManager_4
	.export	_Method_P_Kernel_FrameManager_5
	.export	_Method_P_Kernel_FrameManager_6
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
! The following class and its methods are from this package
	.export	_P_Kernel_DiskDriver
	.export	_Method_P_Kernel_DiskDriver_1
	.export	_Method_P_Kernel_DiskDriver_2
	.export	_Method_P_Kernel_DiskDriver_3
	.export	_Method_P_Kernel_DiskDriver_4
	.export	_Method_P_Kernel_DiskDriver_5
! The following class and its methods are from this package
	.export	_P_Kernel_FileManager
	.export	_Method_P_Kernel_FileManager_1
	.export	_Method_P_Kernel_FileManager_2
	.export	_Method_P_Kernel_FileManager_3
	.export	_Method_P_Kernel_FileManager_4
	.export	_Method_P_Kernel_FileManager_5
	.export	_Method_P_Kernel_FileManager_6
	.export	_Method_P_Kernel_FileManager_7
	.export	_Method_P_Kernel_FileManager_8
! The following class and its methods are from this package
	.export	_P_Kernel_FileControlBlock
	.export	_Method_P_Kernel_FileControlBlock_1
	.export	_Method_P_Kernel_FileControlBlock_2
! The following class and its methods are from this package
	.export	_P_Kernel_OpenFile
	.export	_Method_P_Kernel_OpenFile_1
	.export	_Method_P_Kernel_OpenFile_2
	.export	_Method_P_Kernel_OpenFile_3
	.export	_Method_P_Kernel_OpenFile_4
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
	.export	_P_Kernel_diskDriver
	.export	_P_Kernel_fileManager
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
	.skip	1756
_P_Kernel_threadManager:
	.skip	41696
_P_Kernel_frameManager:
	.skip	56
_P_Kernel_diskDriver:
	.skip	68
_P_Kernel_fileManager:
	.skip	800
	.align
! String constants
_StringConst_181:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (3)\n"
	.align
_StringConst_180:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_179:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (2)\n"
	.align
_StringConst_178:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_177:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (1)\n"
	.align
_StringConst_176:
	.word	40			! length
	.ascii	"LoadExecutable: MAX_PAGES_PER_VIRT_SPACE"
	.align
_StringConst_175:
	.word	53			! length
	.ascii	"LoadExecutable: Number of pages in this address space"
	.align
_StringConst_174:
	.word	61			! length
	.ascii	"LoadExecutable: This virtual address space exceeds the limit\n"
	.align
_StringConst_173:
	.word	49			! length
	.ascii	"LoadExecutable: bssStart != dataStart + dataSize\n"
	.align
_StringConst_172:
	.word	65			! length
	.ascii	"LoadExecutable: The bss segment size not a multiple of page size\n"
	.align
_StringConst_171:
	.word	50			! length
	.ascii	"LoadExecutable: dataStart != textStart + textSize\n"
	.align
_StringConst_170:
	.word	66			! length
	.ascii	"LoadExecutable: The data segment size not a multiple of page size\n"
	.align
_StringConst_169:
	.word	95			! length
	.ascii	"LoadExecutable: The environment size does not match the \'loadAddr\' info supplied to the linker\n"
	.align
_StringConst_168:
	.word	66			! length
	.ascii	"LoadExecutable: The text segment size not a multiple of page size\n"
	.align
_StringConst_167:
	.word	33			! length
	.ascii	"LoadExecutable: Bad magic number\n"
	.align
_StringConst_166:
	.word	55			! length
	.ascii	"LoadExecutable: This virtual address space is not empty"
	.align
_StringConst_165:
	.word	32			! length
	.ascii	"Within ReadInt: ReadBytes failed"
	.align
_StringConst_164:
	.word	5			! length
	.ascii	"null\n"
	.align
_StringConst_163:
	.word	6			! length
	.ascii	", fcb="
	.align
_StringConst_162:
	.word	28			! length
	.ascii	"    OPEN FILE:   currentPos="
	.align
_StringConst_161:
	.word	26			! length
	.ascii	",  relativeSectorInBuffer="
	.align
_StringConst_160:
	.word	13			! length
	.ascii	",  bufferPtr="
	.align
_StringConst_159:
	.word	21			! length
	.ascii	",  sizeOfFileInBytes="
	.align
_StringConst_158:
	.word	18			! length
	.ascii	",  startingSector="
	.align
_StringConst_157:
	.word	17			! length
	.ascii	",  numberOfUsers="
	.align
_StringConst_156:
	.word	6			! length
	.ascii	"fcbID="
	.align
_StringConst_155:
	.word	48			! length
	.ascii	"FileManager.SynchWrite: file not properly opened"
	.align
_StringConst_154:
	.word	47			! length
	.ascii	"FileManager.SynchRead: file not properly opened"
	.align
_StringConst_153:
	.word	67			! length
	.ascii	"FileManager.Flush: buffer is dirty but relativeSectorInBuffer =  -1"
	.align
_StringConst_152:
	.word	10			! length
	.ascii	"openisnull"
	.align
_StringConst_151:
	.word	72			! length
	.ascii	"In FileManager.Open: a free FCB appears not to have been closed properly"
	.align
_StringConst_150:
	.word	51			! length
	.ascii	"Magic number in sector 0 of stub file system is bad"
	.align
_StringConst_149:
	.word	36			! length
	.ascii	"Here is the FREE list of OpenFiles:\n"
	.align
_StringConst_148:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_147:
	.word	5			! length
	.ascii	":  0x"
	.align
_StringConst_146:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_145:
	.word	30			! length
	.ascii	"Here is the OpenFile table...\n"
	.align
_StringConst_144:
	.word	47			! length
	.ascii	"Here is the FREE list of FileControlBlocks:\n   "
	.align
_StringConst_143:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_142:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_141:
	.word	38			! length
	.ascii	"Here is the FileControlBlock table...\n"
	.align
_StringConst_140:
	.word	29			! length
	.ascii	"Initializing File Manager...\n"
	.align
_StringConst_139:
	.word	40			! length
	.ascii	"SynchWriteSector: Unexpected status code"
	.align
_StringConst_138:
	.word	52			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad command word"
	.align
_StringConst_137:
	.word	95			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_136:
	.word	76			! length
	.ascii	"Disk I/O error in SynchWriteSector: Attempt to access invalid memory address"
	.align
_StringConst_135:
	.word	99			! length
	.ascii	"Disk I/O error in SynchWriteSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_134:
	.word	39			! length
	.ascii	"SynchReadSector: Unexpected status code"
	.align
_StringConst_133:
	.word	51			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad command word"
	.align
_StringConst_132:
	.word	94			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_131:
	.word	75			! length
	.ascii	"Disk I/O error in SynchReadSector: Attempt to access invalid memory address"
	.align
_StringConst_130:
	.word	98			! length
	.ascii	"Disk I/O error in SynchReadSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_129:
	.word	28			! length
	.ascii	"Initializing Disk Driver...\n"
	.align
_StringConst_128:
	.word	38			! length
	.ascii	"  Virtual page is not marked VALID!!!\n"
	.align
_StringConst_127:
	.word	38			! length
	.ascii	"  Virtual page number is too large!!!\n"
	.align
_StringConst_126:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_125:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_124:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_123:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_122:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_121:
	.word	9			! length
	.ascii	"         "
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
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_114:
	.word	10			! length
	.ascii	"          "
	.align
_StringConst_113:
	.word	4			! length
	.ascii	"    "
	.align
_StringConst_112:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_111:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_110:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_109:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_108:
	.word	109			! length
	.ascii	"     ==========   ==========     ==========  ==========  ==============  =====  ==========  =========  =====\n"
	.align
_StringConst_107:
	.word	109			! length
	.ascii	"        addr        entry          Virtual    Physical   Undefined Bits  Dirty  Referenced  Writeable  Valid\n"
	.align
_StringConst_106:
	.word	35			! length
	.ascii	"  Here are the frames in use: \n    "
	.align
_StringConst_105:
	.word	18			! length
	.ascii	"  numberFreeFrames"
	.align
_StringConst_104:
	.word	15			! length
	.ascii	"FRAME MANAGER:\n"
	.align
_StringConst_103:
	.word	89			! length
	.ascii	"Kernel code size appears to have grown too large and is overflowing into the frame region"
	.align
_StringConst_102:
	.word	30			! length
	.ascii	"Initializing Frame Manager...\n"
	.align
_StringConst_101:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_100:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_99:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_98:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_97:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_96:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_95:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_94:
	.word	13			! length
	.ascii	", exitStatus="
	.align
_StringConst_93:
	.word	13			! length
	.ascii	", parentsPid="
	.align
_StringConst_92:
	.word	33			! length
	.ascii	"Bad status in ProcessControlBlock"
	.align
_StringConst_91:
	.word	4			! length
	.ascii	"FREE"
	.align
_StringConst_90:
	.word	6			! length
	.ascii	"ZOMBIE"
	.align
_StringConst_89:
	.word	6			! length
	.ascii	"ACTIVE"
	.align
_StringConst_88:
	.word	9			! length
	.ascii	", status="
	.align
_StringConst_87:
	.word	8			! length
	.ascii	")   pid="
	.align
_StringConst_86:
	.word	30			! length
	.ascii	"  ProcessControlBlock   (addr="
	.align
_StringConst_85:
	.word	15			! length
	.ascii	"    myThread = "
	.align
_StringConst_84:
	.word	37			! length
	.ascii	"Here is the FREE list of Threads:\n   "
	.align
_StringConst_83:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_82:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_81:
	.word	28			! length
	.ascii	"Here is the thread table...\n"
	.align
_StringConst_80:
	.word	14			! length
	.ascii	"ThreadNameHere"
	.align
_StringConst_79:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_78:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_77:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_76:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_75:
	.word	20			! length
	.ascii	"    user registers:\n"
	.align
_StringConst_74:
	.word	20			! length
	.ascii	"    is user thread: "
	.align
_StringConst_73:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_72:
	.word	20			! length
	.ascii	"    status = UNUSED\n"
	.align
_StringConst_71:
	.word	21			! length
	.ascii	"    status = BLOCKED\n"
	.align
_StringConst_70:
	.word	21			! length
	.ascii	"    status = RUNNING\n"
	.align
_StringConst_69:
	.word	19			! length
	.ascii	"    status = READY\n"
	.align
_StringConst_68:
	.word	26			! length
	.ascii	"    status = JUST_CREATED\n"
	.align
_StringConst_67:
	.word	23			! length
	.ascii	"    stack starting addr"
	.align
_StringConst_66:
	.word	12			! length
	.ascii	"    stackTop"
	.align
_StringConst_65:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_64:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_63:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_62:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_61:
	.word	19			! length
	.ascii	"    machine state:\n"
	.align
_StringConst_60:
	.word	2			! length
	.ascii	")\n"
	.align
_StringConst_59:
	.word	29			! length
	.ascii	"\"    (addr of Thread object: "
	.align
_StringConst_58:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_57:
	.word	32			! length
	.ascii	"System stack underflow detected!"
	.align
_StringConst_56:
	.word	31			! length
	.ascii	"System stack overflow detected!"
	.align
_StringConst_55:
	.word	48			! length
	.ascii	"Ready list should always contain the idle thread"
	.align
_StringConst_54:
	.word	31			! length
	.ascii	"In Sleep, self != currentThread"
	.align
_StringConst_53:
	.word	44			! length
	.ascii	"In Sleep, currentInterruptStatus != DISABLED"
	.align
_StringConst_52:
	.word	51			! length
	.ascii	"Status of current thread should be READY or RUNNING"
	.align
_StringConst_51:
	.word	31			! length
	.ascii	"In Yield, self != currentThread"
	.align
_StringConst_50:
	.word	54			! length
	.ascii	"Attempt to broadcast a condition when lock is not held"
	.align
_StringConst_49:
	.word	52			! length
	.ascii	"Attempt to signal a condition when mutex is not held"
	.align
_StringConst_48:
	.word	51			! length
	.ascii	"Attempt to wait on condition when mutex is not held"
	.align
_StringConst_47:
	.word	52			! length
	.ascii	"Attempt to unlock a mutex by a thread not holding it"
	.align
_StringConst_46:
	.word	54			! length
	.ascii	"Attempt to lock a mutex by a thread already holding it"
	.align
_StringConst_45:
	.word	51			! length
	.ascii	"Semaphore count underflowed during \'Down\' operation"
	.align
_StringConst_44:
	.word	48			! length
	.ascii	"Semaphore count overflowed during \'Up\' operation"
	.align
_StringConst_43:
	.word	39			! length
	.ascii	"Semaphore created with initialCount < 0"
	.align
_StringConst_42:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_41:
	.word	4			! length
	.ascii	"  0x"
	.align
_StringConst_40:
	.word	10			! length
	.ascii	"Filename: "
	.align
_StringConst_39:
	.word	29			! length
	.ascii	"Virtual address of filename: "
	.align
_StringConst_38:
	.word	26			! length
	.ascii	"Handle_Sys_Create invoked!"
	.align
_StringConst_37:
	.word	37			! length
	.ascii	"Unknown syscall code from user thread"
	.align
_StringConst_36:
	.word	15			! length
	.ascii	"Syscall code = "
	.align
_StringConst_35:
	.word	42			! length
	.ascii	"  ERROR: currentThread.myProcess is null\n\n"
	.align
_StringConst_34:
	.word	14			! length
	.ascii	"  **********\n\n"
	.align
_StringConst_33:
	.word	13			! length
	.ascii	"\n**********  "
	.align
_StringConst_32:
	.word	62			! length
	.ascii	"An AlignmentException exception has occured while in user mode"
	.align
_StringConst_31:
	.word	64			! length
	.ascii	"A PrivilegedInstruction exception has occured while in user mode"
	.align
_StringConst_30:
	.word	64			! length
	.ascii	"A PageReadonlyException exception has occured while in user mode"
	.align
_StringConst_29:
	.word	63			! length
	.ascii	"A PageInvalidException exception has occured while in user mode"
	.align
_StringConst_28:
	.word	60			! length
	.ascii	"An AddressException exception has occured while in user mode"
	.align
_StringConst_27:
	.word	63			! length
	.ascii	"An ArithmeticException exception has occured while in user mode"
	.align
_StringConst_26:
	.word	62			! length
	.ascii	"An IllegalInstruction exception has occured while in user mode"
	.align
_StringConst_25:
	.word	1			! length
	.ascii	")"
	.align
_StringConst_24:
	.word	28			! length
	.ascii	"    (addr of Thread object: "
	.align
_StringConst_23:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_22:
	.word	6			! length
	.ascii	"UNUSED"
	.align
_StringConst_21:
	.word	7			! length
	.ascii	"BLOCKED"
	.align
_StringConst_20:
	.word	7			! length
	.ascii	"RUNNING"
	.align
_StringConst_19:
	.word	5			! length
	.ascii	"READY"
	.align
_StringConst_18:
	.word	12			! length
	.ascii	"JUST_CREATED"
	.align
_StringConst_17:
	.word	12			! length
	.ascii	"\"    status="
	.align
_StringConst_16:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_15:
	.word	5			! length
	.ascii	"NULL\n"
	.align
_StringConst_14:
	.word	92			! length
	.ascii	"(To find out where execution was when the problem arose, type \'st\' at the emulator prompt.)\n"
	.align
_StringConst_13:
	.word	19			! length
	.ascii	"\" -- TERMINATING!\n\n"
	.align
_StringConst_12:
	.word	3			! length
	.ascii	": \""
	.align
_StringConst_11:
	.word	4			! length
	.ascii	" in "
	.align
_StringConst_10:
	.word	12			! length
	.ascii	"\nFATAL ERROR"
	.align
_StringConst_9:
	.word	32			! length
	.ascii	"This thread will never run again"
	.align
_StringConst_8:
	.word	32			! length
	.ascii	"ThreadFinish should never return"
	.align
_StringConst_7:
	.word	24			! length
	.ascii	"Here is the ready list:\n"
	.align
_StringConst_6:
	.word	11			! length
	.ascii	"idle-thread"
	.align
_StringConst_5:
	.word	11			! length
	.ascii	"main-thread"
	.align
_StringConst_4:
	.word	33			! length
	.ascii	"Initializing Thread Scheduler...\n"
	.align
_StringConst_3:
	.word	20			! length
	.ascii	"Becoming User Thread"
	.align
_StringConst_2:
	.word	12			! length
	.ascii	"TestProgram4"
	.align
_StringConst_1:
	.word	11			! length
	.ascii	"UserProgram"
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
	set	0xbdef3f74,r4		! myHashVal = -1108394124
	cmp	r3,r4
	be	_Label_191
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
_Label_191:
	mov	0,r1
! Make sure _P_System_ has hash value 0x9e9d23b6 (decimal -1633868874)
	set	_packageName,r2
	set	0x9e9d23b6,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_192
! Make sure _P_BitMap_ has hash value 0xa596b1b5 (decimal -1516850763)
	set	_packageName,r2
	set	0xa596b1b5,r3
	call	_CheckVersion_P_BitMap_
	.import	_CheckVersion_P_BitMap_
	cmp	r1,0
	bne	_Label_192
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_192
_Label_192:
	ret
_CVMess1:	.ascii	"\nVERSION CONSISTENCY ERROR: Package '\0"
_CVMess2:	.ascii	"' uses package '\0"
_CVMess3:	.ascii	"'.  Whenever a header file is modified, all packages that use that package (directly or indirectly) must be recompiled.  The header file for '\0"
_CVMess4:	.ascii	"' has been changed since '\0"
_CVMess5:	.ascii	"' was compiled last.  Please recompile all packages that depend on '\0"
_CVMess6:	.ascii	"'.\n\n\0"
	.align
! 
! ===============  FUNCTION InitFirstProcess  ===============
! 
_P_Kernel_InitFirstProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_InitFirstProcess,r1
	push	r1
	mov	7,r1
_Label_3917:
	push	r0
	sub	r1,1,r1
	bne	_Label_3917
	mov	6,r13		! source line 6
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	9,r13		! source line 9
	mov	"\0\0AS",r10
	mov	9,r13		! source line 9
	mov	"\0\0SE",r10
!   _temp_193 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-20]
!   Send message GetANewThread
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=threadPtr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! SEND STATEMENT...
	mov	10,r13		! source line 10
	mov	"\0\0SE",r10
!   _temp_194 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-16]
!   if intIsZero (threadPtr) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_194  sizeInBytes=4
	load	[r14+-16],r1
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
	mov	11,r13		! source line 11
	mov	"\0\0SE",r10
!   _temp_195 = _function_190_StartUserProcess
	set	_function_190_StartUserProcess,r1
	store	r1,[r14+-12]
!   if intIsZero (threadPtr) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_195  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	11,r13		! source line 11
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_InitFirstProcess:
	.word	_sourceFileName
	.word	_Label_196
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_197
	.word	-12
	.word	4
	.word	_Label_198
	.word	-16
	.word	4
	.word	_Label_199
	.word	-20
	.word	4
	.word	_Label_200
	.word	-24
	.word	4
	.word	0
_Label_196:
	.ascii	"InitFirstProcess\0"
	.align
_Label_197:
	.byte	'?'
	.ascii	"_temp_195\0"
	.align
_Label_198:
	.byte	'?'
	.ascii	"_temp_194\0"
	.align
_Label_199:
	.byte	'?'
	.ascii	"_temp_193\0"
	.align
_Label_200:
	.byte	'P'
	.ascii	"threadPtr\0"
	.align
! 
! ===============  FUNCTION StartUserProcess  ===============
! 
_function_190_StartUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_190_StartUserProcess,r1
	push	r1
	mov	25,r1
_Label_3918:
	push	r0
	sub	r1,1,r1
	bne	_Label_3918
	mov	14,r13		! source line 14
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	24,r13		! source line 24
	mov	"\0\0AS",r10
	mov	24,r13		! source line 24
	mov	"\0\0SE",r10
!   _temp_201 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-72]
!   Send message GetANewProcess
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=pcb  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-76]
! ASSIGNMENT STATEMENT...
	mov	26,r13		! source line 26
	mov	"\0\0AS",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_202 = pcb + 24
	load	[r14+-76],r1
	add	r1,24,r1
	store	r1,[r14+-68]
!   Data Move: *_temp_202 = _P_Kernel_currentThread  (sizeInBytes=4)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r14+-68],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	28,r13		! source line 28
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_203 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-64]
!   Data Move: *_temp_203 = pcb  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r14+-64],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	30,r13		! source line 30
	mov	"\0\0AS",r10
	mov	30,r13		! source line 30
	mov	"\0\0SE",r10
!   _temp_204 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-60]
!   _temp_205 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=12  value=_temp_204  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Send message Open
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=openFilePtr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! ASSIGNMENT STATEMENT...
	mov	32,r13		! source line 32
	mov	"\0\0AS",r10
	mov	32,r13		! source line 32
	mov	"\0\0SE",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_207 = pcb + 32
	load	[r14+-76],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   _temp_206 = _temp_207		(4 bytes)
	load	[r14+-48],r1
	store	r1,[r14+-52]
!   if intIsZero (openFilePtr) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_206  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+4]
!   Send message LoadExecutable
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=entryPoint  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
! SEND STATEMENT...
	mov	34,r13		! source line 34
	mov	"\0\0SE",r10
!   _temp_208 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=openFilePtr  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+4]
!   Send message Close
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	36,r13		! source line 36
	mov	"\0\0AS",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_210 = pcb + 32
	load	[r14+-76],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   _temp_211 = _temp_210 + 4
	load	[r14+-36],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Data Move: _temp_209 = *_temp_211  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   initUserStackTop = _temp_209 * 8192		(int)
	load	[r14+-40],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-88]
! ASSIGNMENT STATEMENT...
	mov	38,r13		! source line 38
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_212 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-28]
!   Move address of _temp_212 [999 ] into _temp_213
!     make sure index expr is >= 0
	mov	999,r2
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
!   initSystemStackTop = _temp_213		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-92]
! ASSIGNMENT STATEMENT...
	mov	41,r13		! source line 41
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	41,r13		! source line 41
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-96]
! SEND STATEMENT...
	mov	43,r13		! source line 43
	mov	"\0\0SE",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_214 = pcb + 32
	load	[r14+-76],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   Send message SetToThisPageTable
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,72,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	45,r13		! source line 45
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_215 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_215 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-16],r2
	storeb	r1,[r2]
! CALL STATEMENT...
!   _temp_216 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_216  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	47,r13		! source line 47
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=initUserStackTop  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=entryPoint  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=initSystemStackTop  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+8]
!   Call the function
	mov	49,r13		! source line 49
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	49,r13		! source line 49
	mov	"\0\0RE",r10
	add	r15,104,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_190_StartUserProcess:
	.word	_sourceFileName
	.word	_Label_217
	.word	4		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_218
	.word	8
	.word	4
	.word	_Label_219
	.word	-12
	.word	4
	.word	_Label_220
	.word	-16
	.word	4
	.word	_Label_221
	.word	-20
	.word	4
	.word	_Label_222
	.word	-24
	.word	4
	.word	_Label_223
	.word	-28
	.word	4
	.word	_Label_224
	.word	-32
	.word	4
	.word	_Label_225
	.word	-36
	.word	4
	.word	_Label_226
	.word	-40
	.word	4
	.word	_Label_227
	.word	-44
	.word	4
	.word	_Label_228
	.word	-48
	.word	4
	.word	_Label_229
	.word	-52
	.word	4
	.word	_Label_230
	.word	-56
	.word	4
	.word	_Label_231
	.word	-60
	.word	4
	.word	_Label_232
	.word	-64
	.word	4
	.word	_Label_233
	.word	-68
	.word	4
	.word	_Label_234
	.word	-72
	.word	4
	.word	_Label_235
	.word	-76
	.word	4
	.word	_Label_236
	.word	-80
	.word	4
	.word	_Label_237
	.word	-84
	.word	4
	.word	_Label_238
	.word	-88
	.word	4
	.word	_Label_239
	.word	-92
	.word	4
	.word	_Label_240
	.word	-96
	.word	4
	.word	0
_Label_217:
	.ascii	"StartUserProcess\0"
	.align
_Label_218:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_219:
	.byte	'?'
	.ascii	"_temp_216\0"
	.align
_Label_220:
	.byte	'?'
	.ascii	"_temp_215\0"
	.align
_Label_221:
	.byte	'?'
	.ascii	"_temp_214\0"
	.align
_Label_222:
	.byte	'?'
	.ascii	"_temp_213\0"
	.align
_Label_223:
	.byte	'?'
	.ascii	"_temp_212\0"
	.align
_Label_224:
	.byte	'?'
	.ascii	"_temp_211\0"
	.align
_Label_225:
	.byte	'?'
	.ascii	"_temp_210\0"
	.align
_Label_226:
	.byte	'?'
	.ascii	"_temp_209\0"
	.align
_Label_227:
	.byte	'?'
	.ascii	"_temp_208\0"
	.align
_Label_228:
	.byte	'?'
	.ascii	"_temp_207\0"
	.align
_Label_229:
	.byte	'?'
	.ascii	"_temp_206\0"
	.align
_Label_230:
	.byte	'?'
	.ascii	"_temp_205\0"
	.align
_Label_231:
	.byte	'?'
	.ascii	"_temp_204\0"
	.align
_Label_232:
	.byte	'?'
	.ascii	"_temp_203\0"
	.align
_Label_233:
	.byte	'?'
	.ascii	"_temp_202\0"
	.align
_Label_234:
	.byte	'?'
	.ascii	"_temp_201\0"
	.align
_Label_235:
	.byte	'P'
	.ascii	"pcb\0"
	.align
_Label_236:
	.byte	'P'
	.ascii	"openFilePtr\0"
	.align
_Label_237:
	.byte	'I'
	.ascii	"entryPoint\0"
	.align
_Label_238:
	.byte	'I'
	.ascii	"initUserStackTop\0"
	.align
_Label_239:
	.byte	'I'
	.ascii	"initSystemStackTop\0"
	.align
_Label_240:
	.byte	'I'
	.ascii	"junk\0"
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
_Label_3919:
	push	r0
	sub	r1,1,r1
	bne	_Label_3919
	mov	56,r13		! source line 56
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	63,r13		! source line 63
	mov	"\0\0CE",r10
	call	Cleari
! CALL STATEMENT...
!   _temp_241 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_241  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	64,r13		! source line 64
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	65,r13		! source line 65
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
	mov	66,r13		! source line 66
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
	mov	67,r13		! source line 67
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_mainThread = zeros  (sizeInBytes=4164)
	set	_P_Kernel_mainThread,r4
	mov	1041,r3
_Label_3920:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3920
!   _P_Kernel_mainThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_mainThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	68,r13		! source line 68
	mov	"\0\0SE",r10
!   _temp_245 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-44]
!   _temp_246 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_245  sizeInBytes=4
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
	mov	69,r13		! source line 69
	mov	"\0\0AS",r10
!   _temp_247 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-36]
!   _temp_248 = _temp_247 + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_248 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	70,r13		! source line 70
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_idleThread = zeros  (sizeInBytes=4164)
	set	_P_Kernel_idleThread,r4
	mov	1041,r3
_Label_3921:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3921
!   _P_Kernel_idleThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_idleThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	71,r13		! source line 71
	mov	"\0\0SE",r10
!   _temp_250 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-24]
!   _temp_251 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_250  sizeInBytes=4
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
	mov	72,r13		! source line 72
	mov	"\0\0SE",r10
!   _temp_252 = _function_189_IdleFunction
	set	_function_189_IdleFunction,r1
	store	r1,[r14+-16]
!   _temp_253 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_252  sizeInBytes=4
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
	mov	73,r13		! source line 73
	mov	"\0\0AS",r10
!   _P_Kernel_currentThread = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	set	_P_Kernel_currentThread,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	74,r13		! source line 74
	mov	"\0\0AS",r10
!   _P_System_FatalError = _P_Kernel_FatalError_ThreadVersion
	set	_P_Kernel_FatalError_ThreadVersion,r1
	set	_P_System_FatalError,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	75,r13		! source line 75
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	76,r13		! source line 76
	mov	"\0\0CE",r10
	call	Seti
! RETURN STATEMENT...
	mov	76,r13		! source line 76
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
	.word	_Label_254
	.word	0		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_255
	.word	-12
	.word	4
	.word	_Label_256
	.word	-16
	.word	4
	.word	_Label_257
	.word	-20
	.word	4
	.word	_Label_258
	.word	-24
	.word	4
	.word	_Label_259
	.word	-28
	.word	4
	.word	_Label_260
	.word	-32
	.word	4
	.word	_Label_261
	.word	-36
	.word	4
	.word	_Label_262
	.word	-40
	.word	4
	.word	_Label_263
	.word	-44
	.word	4
	.word	_Label_264
	.word	-48
	.word	4
	.word	_Label_265
	.word	-52
	.word	4
	.word	_Label_266
	.word	-56
	.word	4
	.word	_Label_267
	.word	-60
	.word	4
	.word	0
_Label_254:
	.ascii	"InitializeScheduler\0"
	.align
_Label_255:
	.byte	'?'
	.ascii	"_temp_253\0"
	.align
_Label_256:
	.byte	'?'
	.ascii	"_temp_252\0"
	.align
_Label_257:
	.byte	'?'
	.ascii	"_temp_251\0"
	.align
_Label_258:
	.byte	'?'
	.ascii	"_temp_250\0"
	.align
_Label_259:
	.byte	'?'
	.ascii	"_temp_249\0"
	.align
_Label_260:
	.byte	'?'
	.ascii	"_temp_248\0"
	.align
_Label_261:
	.byte	'?'
	.ascii	"_temp_247\0"
	.align
_Label_262:
	.byte	'?'
	.ascii	"_temp_246\0"
	.align
_Label_263:
	.byte	'?'
	.ascii	"_temp_245\0"
	.align
_Label_264:
	.byte	'?'
	.ascii	"_temp_244\0"
	.align
_Label_265:
	.byte	'?'
	.ascii	"_temp_243\0"
	.align
_Label_266:
	.byte	'?'
	.ascii	"_temp_242\0"
	.align
_Label_267:
	.byte	'?'
	.ascii	"_temp_241\0"
	.align
! 
! ===============  FUNCTION IdleFunction  ===============
! 
_function_189_IdleFunction:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_189_IdleFunction,r1
	push	r1
	mov	3,r1
_Label_3922:
	push	r0
	sub	r1,1,r1
	bne	_Label_3922
	mov	81,r13		! source line 81
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	91,r13		! source line 91
	mov	"\0\0WH",r10
_Label_268:
!	jmp	_Label_269
_Label_269:
	mov	91,r13		! source line 91
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	92,r13		! source line 92
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	92,r13		! source line 92
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-16]
! IF STATEMENT...
	mov	93,r13		! source line 93
	mov	"\0\0IF",r10
	mov	93,r13		! source line 93
	mov	"\0\0SE",r10
!   _temp_273 = &_P_Kernel_readyList
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
!   if result==true then goto _Label_271 else goto _Label_272
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_272
	jmp	_Label_271
_Label_271:
! THEN...
	mov	94,r13		! source line 94
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Call the function
	mov	94,r13		! source line 94
	mov	"\0\0CE",r10
	call	Wait
	jmp	_Label_274
_Label_272:
! ELSE...
	mov	96,r13		! source line 96
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	96,r13		! source line 96
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
_Label_274:
! END WHILE...
	jmp	_Label_268
_Label_270:
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_189_IdleFunction:
	.word	_sourceFileName
	.word	_Label_275
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_276
	.word	8
	.word	4
	.word	_Label_277
	.word	-12
	.word	4
	.word	_Label_278
	.word	-16
	.word	4
	.word	0
_Label_275:
	.ascii	"IdleFunction\0"
	.align
_Label_276:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_277:
	.byte	'?'
	.ascii	"_temp_273\0"
	.align
_Label_278:
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
_Label_3923:
	push	r0
	sub	r1,1,r1
	bne	_Label_3923
	mov	103,r13		! source line 103
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	116,r13		! source line 116
	mov	"\0\0AS",r10
!   prevThread = _P_Kernel_currentThread		(4 bytes)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r14+-76]
! SEND STATEMENT...
	mov	117,r13		! source line 117
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
	mov	119,r13		! source line 119
	mov	"\0\0IF",r10
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_281 = prevThread + 4092
	load	[r14+-76],r1
	add	r1,4092,r1
	store	r1,[r14+-72]
!   if boolIsZero (_temp_281 ) then goto _Label_280		(int)
	load	[r14+-72],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_280
!	jmp	_Label_279
_Label_279:
! THEN...
	mov	120,r13		! source line 120
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_283 = prevThread + 4096
	load	[r14+-76],r1
	add	r1,4096,r1
	store	r1,[r14+-64]
!   Move address of _temp_283 [0 ] into _temp_284
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
!   _temp_282 = _temp_284		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_282  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	120,r13		! source line 120
	mov	"\0\0CE",r10
	call	SaveUserRegs
! END IF...
_Label_280:
! ASSIGNMENT STATEMENT...
	mov	122,r13		! source line 122
	mov	"\0\0AS",r10
!   _P_Kernel_currentThread = nextThread		(4 bytes)
	load	[r14+8],r1
	set	_P_Kernel_currentThread,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	123,r13		! source line 123
	mov	"\0\0AS",r10
!   if intIsZero (nextThread) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_285 = nextThread + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-56]
!   Data Move: *_temp_285 = 3  (sizeInBytes=4)
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
	mov	129,r13		! source line 129
	mov	"\0\0CE",r10
	call	Switch
! WHILE STATEMENT...
	mov	133,r13		! source line 133
	mov	"\0\0WH",r10
_Label_286:
	mov	133,r13		! source line 133
	mov	"\0\0SE",r10
!   _temp_290 = &_P_Kernel_threadsToBeDestroyed
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
!   Retrieve Result: targetName=_temp_289  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_289 then goto _Label_288 else goto _Label_287
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_287
	jmp	_Label_288
_Label_287:
	mov	133,r13		! source line 133
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	134,r13		! source line 134
	mov	"\0\0AS",r10
	mov	134,r13		! source line 134
	mov	"\0\0SE",r10
!   _temp_291 = &_P_Kernel_threadsToBeDestroyed
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
	mov	135,r13		! source line 135
	mov	"\0\0SE",r10
!   _temp_292 = &_P_Kernel_threadManager
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
	jmp	_Label_286
_Label_288:
! IF STATEMENT...
	mov	138,r13		! source line 138
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_295 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-40]
!   if boolIsZero (_temp_295 ) then goto _Label_294		(int)
	load	[r14+-40],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_294
!	jmp	_Label_293
_Label_293:
! THEN...
	mov	139,r13		! source line 139
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_297 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-32]
!   Move address of _temp_297 [0 ] into _temp_298
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
!   _temp_296 = _temp_298		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_296  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	139,r13		! source line 139
	mov	"\0\0CE",r10
	call	RestoreUserRegs
! SEND STATEMENT...
	mov	140,r13		! source line 140
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_300 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_299 = *_temp_300  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_299) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_301 = _temp_299 + 32
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
_Label_294:
! RETURN STATEMENT...
	mov	138,r13		! source line 138
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
	.word	_Label_302
	.word	4		! total size of parameters
	.word	80		! frame size = 80
	.word	_Label_303
	.word	8
	.word	4
	.word	_Label_304
	.word	-16
	.word	4
	.word	_Label_305
	.word	-20
	.word	4
	.word	_Label_306
	.word	-24
	.word	4
	.word	_Label_307
	.word	-28
	.word	4
	.word	_Label_308
	.word	-32
	.word	4
	.word	_Label_309
	.word	-36
	.word	4
	.word	_Label_310
	.word	-40
	.word	4
	.word	_Label_311
	.word	-44
	.word	4
	.word	_Label_312
	.word	-48
	.word	4
	.word	_Label_313
	.word	-52
	.word	4
	.word	_Label_314
	.word	-9
	.word	1
	.word	_Label_315
	.word	-56
	.word	4
	.word	_Label_316
	.word	-60
	.word	4
	.word	_Label_317
	.word	-64
	.word	4
	.word	_Label_318
	.word	-68
	.word	4
	.word	_Label_319
	.word	-72
	.word	4
	.word	_Label_320
	.word	-76
	.word	4
	.word	_Label_321
	.word	-80
	.word	4
	.word	0
_Label_302:
	.ascii	"Run\0"
	.align
_Label_303:
	.byte	'P'
	.ascii	"nextThread\0"
	.align
_Label_304:
	.byte	'?'
	.ascii	"_temp_301\0"
	.align
_Label_305:
	.byte	'?'
	.ascii	"_temp_300\0"
	.align
_Label_306:
	.byte	'?'
	.ascii	"_temp_299\0"
	.align
_Label_307:
	.byte	'?'
	.ascii	"_temp_298\0"
	.align
_Label_308:
	.byte	'?'
	.ascii	"_temp_297\0"
	.align
_Label_309:
	.byte	'?'
	.ascii	"_temp_296\0"
	.align
_Label_310:
	.byte	'?'
	.ascii	"_temp_295\0"
	.align
_Label_311:
	.byte	'?'
	.ascii	"_temp_292\0"
	.align
_Label_312:
	.byte	'?'
	.ascii	"_temp_291\0"
	.align
_Label_313:
	.byte	'?'
	.ascii	"_temp_290\0"
	.align
_Label_314:
	.byte	'C'
	.ascii	"_temp_289\0"
	.align
_Label_315:
	.byte	'?'
	.ascii	"_temp_285\0"
	.align
_Label_316:
	.byte	'?'
	.ascii	"_temp_284\0"
	.align
_Label_317:
	.byte	'?'
	.ascii	"_temp_283\0"
	.align
_Label_318:
	.byte	'?'
	.ascii	"_temp_282\0"
	.align
_Label_319:
	.byte	'?'
	.ascii	"_temp_281\0"
	.align
_Label_320:
	.byte	'P'
	.ascii	"prevThread\0"
	.align
_Label_321:
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
_Label_3924:
	push	r0
	sub	r1,1,r1
	bne	_Label_3924
	mov	146,r13		! source line 146
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	153,r13		! source line 153
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	153,r13		! source line 153
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! CALL STATEMENT...
!   _temp_322 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_322  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	154,r13		! source line 154
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	155,r13		! source line 155
	mov	"\0\0SE",r10
!   _temp_323 = _function_188_ThreadPrintShort
	set	_function_188_ThreadPrintShort,r1
	store	r1,[r14+-16]
!   _temp_324 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_323  sizeInBytes=4
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
	mov	156,r13		! source line 156
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	156,r13		! source line 156
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	156,r13		! source line 156
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
	.word	_Label_325
	.word	0		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_326
	.word	-12
	.word	4
	.word	_Label_327
	.word	-16
	.word	4
	.word	_Label_328
	.word	-20
	.word	4
	.word	_Label_329
	.word	-24
	.word	4
	.word	0
_Label_325:
	.ascii	"PrintReadyList\0"
	.align
_Label_326:
	.byte	'?'
	.ascii	"_temp_324\0"
	.align
_Label_327:
	.byte	'?'
	.ascii	"_temp_323\0"
	.align
_Label_328:
	.byte	'?'
	.ascii	"_temp_322\0"
	.align
_Label_329:
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
_Label_3925:
	push	r0
	sub	r1,1,r1
	bne	_Label_3925
	mov	161,r13		! source line 161
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	173,r13		! source line 173
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	173,r13		! source line 173
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! ASSIGNMENT STATEMENT...
	mov	174,r13		! source line 174
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_330 = _P_Kernel_currentThread + 80
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,80,r1
	store	r1,[r14+-24]
!   Data Move: mainFun = *_temp_330  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_332 = _P_Kernel_currentThread + 84
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,84,r1
	store	r1,[r14+-16]
!   Data Move: _temp_331 = *_temp_332  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_331  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable mainFun
	mov	175,r13		! source line 175
	mov	"\0\0CF",r10
	load	[r14+-32],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CALL STATEMENT...
!   Call the function
	mov	176,r13		! source line 176
	mov	"\0\0CA",r10
	call	_P_Kernel_ThreadFinish
! CALL STATEMENT...
!   _temp_333 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_333  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	177,r13		! source line 177
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	177,r13		! source line 177
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
	.word	_Label_334
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_335
	.word	-12
	.word	4
	.word	_Label_336
	.word	-16
	.word	4
	.word	_Label_337
	.word	-20
	.word	4
	.word	_Label_338
	.word	-24
	.word	4
	.word	_Label_339
	.word	-28
	.word	4
	.word	_Label_340
	.word	-32
	.word	4
	.word	0
_Label_334:
	.ascii	"ThreadStartMain\0"
	.align
_Label_335:
	.byte	'?'
	.ascii	"_temp_333\0"
	.align
_Label_336:
	.byte	'?'
	.ascii	"_temp_332\0"
	.align
_Label_337:
	.byte	'?'
	.ascii	"_temp_331\0"
	.align
_Label_338:
	.byte	'?'
	.ascii	"_temp_330\0"
	.align
_Label_339:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_340:
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
_Label_3926:
	push	r0
	sub	r1,1,r1
	bne	_Label_3926
	mov	182,r13		! source line 182
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	193,r13		! source line 193
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	193,r13		! source line 193
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! SEND STATEMENT...
	mov	197,r13		! source line 197
	mov	"\0\0SE",r10
!   _temp_341 = &_P_Kernel_threadsToBeDestroyed
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
	mov	198,r13		! source line 198
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
!   _temp_342 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_342  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	200,r13		! source line 200
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	200,r13		! source line 200
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
	.word	_Label_343
	.word	0		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_344
	.word	-12
	.word	4
	.word	_Label_345
	.word	-16
	.word	4
	.word	_Label_346
	.word	-20
	.word	4
	.word	0
_Label_343:
	.ascii	"ThreadFinish\0"
	.align
_Label_344:
	.byte	'?'
	.ascii	"_temp_342\0"
	.align
_Label_345:
	.byte	'?'
	.ascii	"_temp_341\0"
	.align
_Label_346:
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
_Label_3927:
	push	r0
	sub	r1,1,r1
	bne	_Label_3927
	mov	205,r13		! source line 205
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	213,r13		! source line 213
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	213,r13		! source line 213
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! CALL STATEMENT...
!   _temp_347 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_347  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	214,r13		! source line 214
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	215,r13		! source line 215
	mov	"\0\0IF",r10
!   if _P_Kernel_currentThread == 0 then goto _Label_349		(int)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_349
!	jmp	_Label_348
_Label_348:
! THEN...
	mov	216,r13		! source line 216
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_350 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_350  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	216,r13		! source line 216
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_352 = _P_Kernel_currentThread + 72
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-24]
!   Data Move: _temp_351 = *_temp_352  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_351  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	217,r13		! source line 217
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_349:
! CALL STATEMENT...
!   _temp_353 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_353  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	219,r13		! source line 219
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	220,r13		! source line 220
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_354 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_354  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	221,r13		! source line 221
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_355 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_355  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	222,r13		! source line 222
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	223,r13		! source line 223
	mov	"\0\0CE",r10
	call	RuntimeExit
! RETURN STATEMENT...
	mov	223,r13		! source line 223
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
	.word	_Label_356
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_357
	.word	8
	.word	4
	.word	_Label_358
	.word	-12
	.word	4
	.word	_Label_359
	.word	-16
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
	.word	-36
	.word	4
	.word	_Label_365
	.word	-40
	.word	4
	.word	0
_Label_356:
	.ascii	"FatalError_ThreadVersion\0"
	.align
_Label_357:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_358:
	.byte	'?'
	.ascii	"_temp_355\0"
	.align
_Label_359:
	.byte	'?'
	.ascii	"_temp_354\0"
	.align
_Label_360:
	.byte	'?'
	.ascii	"_temp_353\0"
	.align
_Label_361:
	.byte	'?'
	.ascii	"_temp_352\0"
	.align
_Label_362:
	.byte	'?'
	.ascii	"_temp_351\0"
	.align
_Label_363:
	.byte	'?'
	.ascii	"_temp_350\0"
	.align
_Label_364:
	.byte	'?'
	.ascii	"_temp_347\0"
	.align
_Label_365:
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
_Label_3928:
	push	r0
	sub	r1,1,r1
	bne	_Label_3928
	mov	228,r13		! source line 228
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	241,r13		! source line 241
	mov	"\0\0CE",r10
	call	Cleari
! ASSIGNMENT STATEMENT...
	mov	242,r13		! source line 242
	mov	"\0\0AS",r10
!   oldStat = _P_Kernel_currentInterruptStatus		(4 bytes)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	store	r1,[r14+-12]
! IF STATEMENT...
	mov	243,r13		! source line 243
	mov	"\0\0IF",r10
!   if newStatus != 1 then goto _Label_367		(int)
	load	[r14+8],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_367
!	jmp	_Label_366
_Label_366:
! THEN...
	mov	244,r13		! source line 244
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	244,r13		! source line 244
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	245,r13		! source line 245
	mov	"\0\0CE",r10
	call	Seti
	jmp	_Label_368
_Label_367:
! ELSE...
	mov	247,r13		! source line 247
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	247,r13		! source line 247
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	248,r13		! source line 248
	mov	"\0\0CE",r10
	call	Cleari
! END IF...
_Label_368:
! RETURN STATEMENT...
	mov	250,r13		! source line 250
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
	.word	_Label_369
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_370
	.word	8
	.word	4
	.word	_Label_371
	.word	-12
	.word	4
	.word	0
_Label_369:
	.ascii	"SetInterruptsTo\0"
	.align
_Label_370:
	.byte	'I'
	.ascii	"newStatus\0"
	.align
_Label_371:
	.byte	'I'
	.ascii	"oldStat\0"
	.align
! 
! ===============  FUNCTION ThreadPrintShort  ===============
! 
_function_188_ThreadPrintShort:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_188_ThreadPrintShort,r1
	push	r1
	mov	19,r1
_Label_3929:
	push	r0
	sub	r1,1,r1
	bne	_Label_3929
	mov	689,r13		! source line 689
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! oldStatus
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	696,r13		! source line 696
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! IF STATEMENT...
	mov	697,r13		! source line 697
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_375		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_375
!   _temp_374 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_376
_Label_375:
!   _temp_374 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_376:
!   if _temp_374 then goto _Label_373 else goto _Label_372
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_372
	jmp	_Label_373
_Label_372:
! THEN...
	mov	698,r13		! source line 698
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_377 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_377  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	698,r13		! source line 698
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	699,r13		! source line 699
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_373:
! CALL STATEMENT...
!   _temp_378 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_378  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	701,r13		! source line 701
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_380 = t + 72
	load	[r14+8],r1
	add	r1,72,r1
	store	r1,[r14+-64]
!   Data Move: _temp_379 = *_temp_380  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_379  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	702,r13		! source line 702
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_381 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_381  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	703,r13		! source line 703
	mov	"\0\0CE",r10
	call	print
! SWITCH STATEMENT (using series of tests)...
	mov	704,r13		! source line 704
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_390 = t + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-52]
!   Data Move: _temp_389 = *_temp_390  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   Branch to the right case label
	load	[r14+-56],r1
	cmp	r1,1
	be	_Label_384
	cmp	r1,2
	be	_Label_385
	cmp	r1,3
	be	_Label_386
	cmp	r1,4
	be	_Label_387
	cmp	r1,5
	be	_Label_388
	jmp	_Label_382
! CASE 1...
_Label_384:
! CALL STATEMENT...
!   _temp_391 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_391  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	706,r13		! source line 706
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	707,r13		! source line 707
	mov	"\0\0BR",r10
	jmp	_Label_383
! CASE 2...
_Label_385:
! CALL STATEMENT...
!   _temp_392 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_392  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	709,r13		! source line 709
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	710,r13		! source line 710
	mov	"\0\0BR",r10
	jmp	_Label_383
! CASE 3...
_Label_386:
! CALL STATEMENT...
!   _temp_393 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_393  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	712,r13		! source line 712
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	713,r13		! source line 713
	mov	"\0\0BR",r10
	jmp	_Label_383
! CASE 4...
_Label_387:
! CALL STATEMENT...
!   _temp_394 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_394  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	715,r13		! source line 715
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	716,r13		! source line 716
	mov	"\0\0BR",r10
	jmp	_Label_383
! CASE 5...
_Label_388:
! CALL STATEMENT...
!   _temp_395 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_395  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	718,r13		! source line 718
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	719,r13		! source line 719
	mov	"\0\0BR",r10
	jmp	_Label_383
! DEFAULT CASE...
_Label_382:
! CALL STATEMENT...
!   _temp_396 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_396  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	721,r13		! source line 721
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_383:
! CALL STATEMENT...
!   _temp_397 = _StringConst_24
	set	_StringConst_24,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_397  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	723,r13		! source line 723
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_398 = t		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_398  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	724,r13		! source line 724
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_399 = _StringConst_25
	set	_StringConst_25,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_399  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	725,r13		! source line 725
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	726,r13		! source line 726
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	728,r13		! source line 728
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	728,r13		! source line 728
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! RETURN STATEMENT...
	mov	728,r13		! source line 728
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_188_ThreadPrintShort:
	.word	_sourceFileName
	.word	_Label_400
	.word	4		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_401
	.word	8
	.word	4
	.word	_Label_402
	.word	-16
	.word	4
	.word	_Label_403
	.word	-20
	.word	4
	.word	_Label_404
	.word	-24
	.word	4
	.word	_Label_405
	.word	-28
	.word	4
	.word	_Label_406
	.word	-32
	.word	4
	.word	_Label_407
	.word	-36
	.word	4
	.word	_Label_408
	.word	-40
	.word	4
	.word	_Label_409
	.word	-44
	.word	4
	.word	_Label_410
	.word	-48
	.word	4
	.word	_Label_411
	.word	-52
	.word	4
	.word	_Label_412
	.word	-56
	.word	4
	.word	_Label_413
	.word	-60
	.word	4
	.word	_Label_414
	.word	-64
	.word	4
	.word	_Label_415
	.word	-68
	.word	4
	.word	_Label_416
	.word	-72
	.word	4
	.word	_Label_417
	.word	-76
	.word	4
	.word	_Label_418
	.word	-9
	.word	1
	.word	_Label_419
	.word	-80
	.word	4
	.word	0
_Label_400:
	.ascii	"ThreadPrintShort\0"
	.align
_Label_401:
	.byte	'P'
	.ascii	"t\0"
	.align
_Label_402:
	.byte	'?'
	.ascii	"_temp_399\0"
	.align
_Label_403:
	.byte	'?'
	.ascii	"_temp_398\0"
	.align
_Label_404:
	.byte	'?'
	.ascii	"_temp_397\0"
	.align
_Label_405:
	.byte	'?'
	.ascii	"_temp_396\0"
	.align
_Label_406:
	.byte	'?'
	.ascii	"_temp_395\0"
	.align
_Label_407:
	.byte	'?'
	.ascii	"_temp_394\0"
	.align
_Label_408:
	.byte	'?'
	.ascii	"_temp_393\0"
	.align
_Label_409:
	.byte	'?'
	.ascii	"_temp_392\0"
	.align
_Label_410:
	.byte	'?'
	.ascii	"_temp_391\0"
	.align
_Label_411:
	.byte	'?'
	.ascii	"_temp_390\0"
	.align
_Label_412:
	.byte	'?'
	.ascii	"_temp_389\0"
	.align
_Label_413:
	.byte	'?'
	.ascii	"_temp_381\0"
	.align
_Label_414:
	.byte	'?'
	.ascii	"_temp_380\0"
	.align
_Label_415:
	.byte	'?'
	.ascii	"_temp_379\0"
	.align
_Label_416:
	.byte	'?'
	.ascii	"_temp_378\0"
	.align
_Label_417:
	.byte	'?'
	.ascii	"_temp_377\0"
	.align
_Label_418:
	.byte	'C'
	.ascii	"_temp_374\0"
	.align
_Label_419:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION PrintObjectAddr  ===============
! 
_function_187_PrintObjectAddr:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_187_PrintObjectAddr,r1
	push	r1
	mov	2,r1
_Label_3930:
	push	r0
	sub	r1,1,r1
	bne	_Label_3930
	mov	1048,r13		! source line 1048
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_420 = p		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_420  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1052,r13		! source line 1052
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	1053,r13		! source line 1053
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	1053,r13		! source line 1053
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_187_PrintObjectAddr:
	.word	_sourceFileName
	.word	_Label_421
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_422
	.word	8
	.word	4
	.word	_Label_423
	.word	-12
	.word	4
	.word	0
_Label_421:
	.ascii	"PrintObjectAddr\0"
	.align
_Label_422:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_423:
	.byte	'?'
	.ascii	"_temp_420\0"
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
	mov	37,r1
_Label_3931:
	push	r0
	sub	r1,1,r1
	bne	_Label_3931
	mov	1058,r13		! source line 1058
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1066,r13		! source line 1066
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_425 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-136]
!   Data Move: _temp_424 = *_temp_425  (sizeInBytes=4)
	load	[r14+-136],r1
	load	[r1],r1
	store	r1,[r14+-140]
!   if intIsZero (_temp_424) then goto _runtimeErrorNullPointer
	load	[r14+-140],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_426 = _temp_424 + 28
	load	[r14+-140],r1
	add	r1,28,r1
	store	r1,[r14+-132]
!   Data Move: *_temp_426 = exitStatus  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r14+-132],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1067,r13		! source line 1067
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1067,r13		! source line 1067
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-144]
! ASSIGNMENT STATEMENT...
	mov	1068,r13		! source line 1068
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_427 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-128]
!   Data Move: *_temp_427 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-128],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1069,r13		! source line 1069
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStatus  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	1069,r13		! source line 1069
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-144]
! SEND STATEMENT...
	mov	1071,r13		! source line 1071
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_430 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-116]
!   Data Move: _temp_429 = *_temp_430  (sizeInBytes=4)
	load	[r14+-116],r1
	load	[r1],r1
	store	r1,[r14+-120]
!   if intIsZero (_temp_429) then goto _runtimeErrorNullPointer
	load	[r14+-120],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_431 = _temp_429 + 32
	load	[r14+-120],r1
	add	r1,32,r1
	store	r1,[r14+-112]
!   _temp_428 = _temp_431		(4 bytes)
	load	[r14+-112],r1
	store	r1,[r14+-124]
!   _temp_432 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=12  value=_temp_428  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-108],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! SEND STATEMENT...
	mov	1072,r13		! source line 1072
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_434 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-100]
!   Data Move: _temp_433 = *_temp_434  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   _temp_435 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=12  value=_temp_433  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+4]
!   Send message TurnIntoZombie
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! FOR STATEMENT...
	mov	1073,r13		! source line 1073
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_440 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-92]
!   Calculate and save the FOR-LOOP ending value
!   _temp_441 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-88]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_440  (sizeInBytes=4)
	load	[r14+-92],r1
	store	r1,[r14+-148]
_Label_436:
!   Perform the FOR-LOOP termination test
!   if i > _temp_441 then goto _Label_439		
	load	[r14+-148],r1
	load	[r14+-88],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_439
_Label_437:
	mov	1073,r13		! source line 1073
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1074,r13		! source line 1074
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_446 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-76]
!   Data Move: _temp_445 = *_temp_446  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_445) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_447 = _temp_445 + 124
	load	[r14+-80],r1
	add	r1,124,r1
	store	r1,[r14+-72]
!   Move address of _temp_447 [i ] into _temp_448
!     make sure index expr is >= 0
	load	[r14+-148],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-72],r1
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
	store	r2,[r14+-68]
!   Data Move: _temp_444 = *_temp_448  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if intIsZero (_temp_444) then goto _Label_443
	load	[r14+-84],r1
	cmp	r1,r0
	be	_Label_443
!	jmp	_Label_442
_Label_442:
! THEN...
	mov	1075,r13		! source line 1075
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1075,r13		! source line 1075
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_451 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-56]
!   Data Move: _temp_450 = *_temp_451  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_450) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_452 = _temp_450 + 124
	load	[r14+-60],r1
	add	r1,124,r1
	store	r1,[r14+-52]
!   Move address of _temp_452 [i ] into _temp_453
!     make sure index expr is >= 0
	load	[r14+-148],r2
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
!   Data Move: _temp_449 = *_temp_453  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   _temp_454 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=_temp_449  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Send message Close
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1076,r13		! source line 1076
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_456 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-36]
!   Data Move: _temp_455 = *_temp_456  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_455) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_457 = _temp_455 + 124
	load	[r14+-40],r1
	add	r1,124,r1
	store	r1,[r14+-32]
!   Move address of _temp_457 [i ] into _temp_458
!     make sure index expr is >= 0
	load	[r14+-148],r2
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
!   Data Move: *_temp_458 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-28],r2
	store	r1,[r2]
! END IF...
_Label_443:
!   Increment the FOR-LOOP index variable and jump back
_Label_438:
!   i = i + 1
	load	[r14+-148],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-148]
	jmp	_Label_436
! END FOR
_Label_439:
! ASSIGNMENT STATEMENT...
	mov	1079,r13		! source line 1079
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_460 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_459 = *_temp_460  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_459) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_461 = _temp_459 + 24
	load	[r14+-24],r1
	add	r1,24,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_461 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-16],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1080,r13		! source line 1080
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_462 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-12]
!   Data Move: *_temp_462 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-12],r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	1081,r13		! source line 1081
	mov	"\0\0CA",r10
	call	_P_Kernel_ThreadFinish
! RETURN STATEMENT...
	mov	1081,r13		! source line 1081
	mov	"\0\0RE",r10
	add	r15,152,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ProcessFinish:
	.word	_sourceFileName
	.word	_Label_463
	.word	4		! total size of parameters
	.word	148		! frame size = 148
	.word	_Label_464
	.word	8
	.word	4
	.word	_Label_465
	.word	-12
	.word	4
	.word	_Label_466
	.word	-16
	.word	4
	.word	_Label_467
	.word	-20
	.word	4
	.word	_Label_468
	.word	-24
	.word	4
	.word	_Label_469
	.word	-28
	.word	4
	.word	_Label_470
	.word	-32
	.word	4
	.word	_Label_471
	.word	-36
	.word	4
	.word	_Label_472
	.word	-40
	.word	4
	.word	_Label_473
	.word	-44
	.word	4
	.word	_Label_474
	.word	-48
	.word	4
	.word	_Label_475
	.word	-52
	.word	4
	.word	_Label_476
	.word	-56
	.word	4
	.word	_Label_477
	.word	-60
	.word	4
	.word	_Label_478
	.word	-64
	.word	4
	.word	_Label_479
	.word	-68
	.word	4
	.word	_Label_480
	.word	-72
	.word	4
	.word	_Label_481
	.word	-76
	.word	4
	.word	_Label_482
	.word	-80
	.word	4
	.word	_Label_483
	.word	-84
	.word	4
	.word	_Label_484
	.word	-88
	.word	4
	.word	_Label_485
	.word	-92
	.word	4
	.word	_Label_486
	.word	-96
	.word	4
	.word	_Label_487
	.word	-100
	.word	4
	.word	_Label_488
	.word	-104
	.word	4
	.word	_Label_489
	.word	-108
	.word	4
	.word	_Label_490
	.word	-112
	.word	4
	.word	_Label_491
	.word	-116
	.word	4
	.word	_Label_492
	.word	-120
	.word	4
	.word	_Label_493
	.word	-124
	.word	4
	.word	_Label_494
	.word	-128
	.word	4
	.word	_Label_495
	.word	-132
	.word	4
	.word	_Label_496
	.word	-136
	.word	4
	.word	_Label_497
	.word	-140
	.word	4
	.word	_Label_498
	.word	-144
	.word	4
	.word	_Label_499
	.word	-148
	.word	4
	.word	0
_Label_463:
	.ascii	"ProcessFinish\0"
	.align
_Label_464:
	.byte	'I'
	.ascii	"exitStatus\0"
	.align
_Label_465:
	.byte	'?'
	.ascii	"_temp_462\0"
	.align
_Label_466:
	.byte	'?'
	.ascii	"_temp_461\0"
	.align
_Label_467:
	.byte	'?'
	.ascii	"_temp_460\0"
	.align
_Label_468:
	.byte	'?'
	.ascii	"_temp_459\0"
	.align
_Label_469:
	.byte	'?'
	.ascii	"_temp_458\0"
	.align
_Label_470:
	.byte	'?'
	.ascii	"_temp_457\0"
	.align
_Label_471:
	.byte	'?'
	.ascii	"_temp_456\0"
	.align
_Label_472:
	.byte	'?'
	.ascii	"_temp_455\0"
	.align
_Label_473:
	.byte	'?'
	.ascii	"_temp_454\0"
	.align
_Label_474:
	.byte	'?'
	.ascii	"_temp_453\0"
	.align
_Label_475:
	.byte	'?'
	.ascii	"_temp_452\0"
	.align
_Label_476:
	.byte	'?'
	.ascii	"_temp_451\0"
	.align
_Label_477:
	.byte	'?'
	.ascii	"_temp_450\0"
	.align
_Label_478:
	.byte	'?'
	.ascii	"_temp_449\0"
	.align
_Label_479:
	.byte	'?'
	.ascii	"_temp_448\0"
	.align
_Label_480:
	.byte	'?'
	.ascii	"_temp_447\0"
	.align
_Label_481:
	.byte	'?'
	.ascii	"_temp_446\0"
	.align
_Label_482:
	.byte	'?'
	.ascii	"_temp_445\0"
	.align
_Label_483:
	.byte	'?'
	.ascii	"_temp_444\0"
	.align
_Label_484:
	.byte	'?'
	.ascii	"_temp_441\0"
	.align
_Label_485:
	.byte	'?'
	.ascii	"_temp_440\0"
	.align
_Label_486:
	.byte	'?'
	.ascii	"_temp_435\0"
	.align
_Label_487:
	.byte	'?'
	.ascii	"_temp_434\0"
	.align
_Label_488:
	.byte	'?'
	.ascii	"_temp_433\0"
	.align
_Label_489:
	.byte	'?'
	.ascii	"_temp_432\0"
	.align
_Label_490:
	.byte	'?'
	.ascii	"_temp_431\0"
	.align
_Label_491:
	.byte	'?'
	.ascii	"_temp_430\0"
	.align
_Label_492:
	.byte	'?'
	.ascii	"_temp_429\0"
	.align
_Label_493:
	.byte	'?'
	.ascii	"_temp_428\0"
	.align
_Label_494:
	.byte	'?'
	.ascii	"_temp_427\0"
	.align
_Label_495:
	.byte	'?'
	.ascii	"_temp_426\0"
	.align
_Label_496:
	.byte	'?'
	.ascii	"_temp_425\0"
	.align
_Label_497:
	.byte	'?'
	.ascii	"_temp_424\0"
	.align
_Label_498:
	.byte	'I'
	.ascii	"oldIntStatus\0"
	.align
_Label_499:
	.byte	'I'
	.ascii	"i\0"
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
_Label_3932:
	push	r0
	sub	r1,1,r1
	bne	_Label_3932
	mov	1573,r13		! source line 1573
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1583,r13		! source line 1583
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1585,r13		! source line 1585
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
	mov	1586,r13		! source line 1586
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1586,r13		! source line 1586
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
	.word	_Label_500
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_500:
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
	mov	7,r1
_Label_3933:
	push	r0
	sub	r1,1,r1
	bne	_Label_3933
	mov	1591,r13		! source line 1591
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1603,r13		! source line 1603
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! IF STATEMENT...
	mov	1605,r13		! source line 1605
	mov	"\0\0IF",r10
!   _temp_504 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   _temp_505 = _temp_504 + 24
	load	[r14+-28],r1
	add	r1,24,r1
	store	r1,[r14+-24]
!   Data Move: _temp_503 = *_temp_505  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_503 == 0 then goto _Label_502		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_502
!	jmp	_Label_501
_Label_501:
! THEN...
	mov	1606,r13		! source line 1606
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1606,r13		! source line 1606
	mov	"\0\0SE",r10
!   _temp_507 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-16]
!   _temp_508 = _temp_507 + 24
	load	[r14+-16],r1
	add	r1,24,r1
	store	r1,[r14+-12]
!   Data Move: _temp_506 = *_temp_508  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_506) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Up
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_502:
! RETURN STATEMENT...
	mov	1605,r13		! source line 1605
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_DiskInterruptHandler:
	.word	_sourceFileName
	.word	_Label_509
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_510
	.word	-12
	.word	4
	.word	_Label_511
	.word	-16
	.word	4
	.word	_Label_512
	.word	-20
	.word	4
	.word	_Label_513
	.word	-24
	.word	4
	.word	_Label_514
	.word	-28
	.word	4
	.word	_Label_515
	.word	-32
	.word	4
	.word	0
_Label_509:
	.ascii	"DiskInterruptHandler\0"
	.align
_Label_510:
	.byte	'?'
	.ascii	"_temp_508\0"
	.align
_Label_511:
	.byte	'?'
	.ascii	"_temp_507\0"
	.align
_Label_512:
	.byte	'?'
	.ascii	"_temp_506\0"
	.align
_Label_513:
	.byte	'?'
	.ascii	"_temp_505\0"
	.align
_Label_514:
	.byte	'?'
	.ascii	"_temp_504\0"
	.align
_Label_515:
	.byte	'?'
	.ascii	"_temp_503\0"
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
	mov	1613,r13		! source line 1613
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1622,r13		! source line 1622
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1622,r13		! source line 1622
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
	.word	_Label_516
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_516:
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
_Label_3934:
	push	r0
	sub	r1,1,r1
	bne	_Label_3934
	mov	1627,r13		! source line 1627
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1633,r13		! source line 1633
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_517 = _StringConst_26
	set	_StringConst_26,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_517  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1634,r13		! source line 1634
	mov	"\0\0CA",r10
	call	_function_186_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1634,r13		! source line 1634
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
	.word	_Label_518
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_519
	.word	-12
	.word	4
	.word	0
_Label_518:
	.ascii	"IllegalInstructionHandler\0"
	.align
_Label_519:
	.byte	'?'
	.ascii	"_temp_517\0"
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
_Label_3935:
	push	r0
	sub	r1,1,r1
	bne	_Label_3935
	mov	1639,r13		! source line 1639
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1645,r13		! source line 1645
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_520 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_520  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1646,r13		! source line 1646
	mov	"\0\0CA",r10
	call	_function_186_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1646,r13		! source line 1646
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
	.word	_Label_521
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_522
	.word	-12
	.word	4
	.word	0
_Label_521:
	.ascii	"ArithmeticExceptionHandler\0"
	.align
_Label_522:
	.byte	'?'
	.ascii	"_temp_520\0"
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
_Label_3936:
	push	r0
	sub	r1,1,r1
	bne	_Label_3936
	mov	1651,r13		! source line 1651
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1657,r13		! source line 1657
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_523 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_523  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1658,r13		! source line 1658
	mov	"\0\0CA",r10
	call	_function_186_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1658,r13		! source line 1658
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
	.word	_Label_524
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_525
	.word	-12
	.word	4
	.word	0
_Label_524:
	.ascii	"AddressExceptionHandler\0"
	.align
_Label_525:
	.byte	'?'
	.ascii	"_temp_523\0"
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
_Label_3937:
	push	r0
	sub	r1,1,r1
	bne	_Label_3937
	mov	1663,r13		! source line 1663
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1669,r13		! source line 1669
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_526 = _StringConst_29
	set	_StringConst_29,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_526  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1670,r13		! source line 1670
	mov	"\0\0CA",r10
	call	_function_186_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1670,r13		! source line 1670
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
	.word	_Label_527
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_528
	.word	-12
	.word	4
	.word	0
_Label_527:
	.ascii	"PageInvalidExceptionHandler\0"
	.align
_Label_528:
	.byte	'?'
	.ascii	"_temp_526\0"
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
_Label_3938:
	push	r0
	sub	r1,1,r1
	bne	_Label_3938
	mov	1675,r13		! source line 1675
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1681,r13		! source line 1681
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_529 = _StringConst_30
	set	_StringConst_30,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_529  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1682,r13		! source line 1682
	mov	"\0\0CA",r10
	call	_function_186_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1682,r13		! source line 1682
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
	.word	_Label_530
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_531
	.word	-12
	.word	4
	.word	0
_Label_530:
	.ascii	"PageReadonlyExceptionHandler\0"
	.align
_Label_531:
	.byte	'?'
	.ascii	"_temp_529\0"
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
_Label_3939:
	push	r0
	sub	r1,1,r1
	bne	_Label_3939
	mov	1687,r13		! source line 1687
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1693,r13		! source line 1693
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_532 = _StringConst_31
	set	_StringConst_31,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_532  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1694,r13		! source line 1694
	mov	"\0\0CA",r10
	call	_function_186_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1694,r13		! source line 1694
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
	.word	_Label_533
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_534
	.word	-12
	.word	4
	.word	0
_Label_533:
	.ascii	"PrivilegedInstructionHandler\0"
	.align
_Label_534:
	.byte	'?'
	.ascii	"_temp_532\0"
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
_Label_3940:
	push	r0
	sub	r1,1,r1
	bne	_Label_3940
	mov	1699,r13		! source line 1699
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1705,r13		! source line 1705
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_535 = _StringConst_32
	set	_StringConst_32,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_535  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1706,r13		! source line 1706
	mov	"\0\0CA",r10
	call	_function_186_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1706,r13		! source line 1706
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
	.word	_Label_536
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_537
	.word	-12
	.word	4
	.word	0
_Label_536:
	.ascii	"AlignmentExceptionHandler\0"
	.align
_Label_537:
	.byte	'?'
	.ascii	"_temp_535\0"
	.align
! 
! ===============  FUNCTION ErrorInUserProcess  ===============
! 
_function_186_ErrorInUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_186_ErrorInUserProcess,r1
	push	r1
	mov	8,r1
_Label_3941:
	push	r0
	sub	r1,1,r1
	bne	_Label_3941
	mov	1711,r13		! source line 1711
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_538 = _StringConst_33
	set	_StringConst_33,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_538  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1716,r13		! source line 1716
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1717,r13		! source line 1717
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_539 = _StringConst_34
	set	_StringConst_34,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_539  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1718,r13		! source line 1718
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1721,r13		! source line 1721
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_543 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_542 = *_temp_543  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if _temp_542 == 0 then goto _Label_541		(int)
	load	[r14+-28],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_541
!	jmp	_Label_540
_Label_540:
! THEN...
	mov	1722,r13		! source line 1722
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1722,r13		! source line 1722
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_545 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-16]
!   Data Move: _temp_544 = *_temp_545  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_544) then goto _runtimeErrorNullPointer
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
	jmp	_Label_546
_Label_541:
! ELSE...
	mov	1724,r13		! source line 1724
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_547 = _StringConst_35
	set	_StringConst_35,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_547  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1724,r13		! source line 1724
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_546:
! SEND STATEMENT...
	mov	1726,r13		! source line 1726
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
	mov	1732,r13		! source line 1732
	mov	"\0\0CA",r10
	call	_P_Kernel_ProcessFinish
! RETURN STATEMENT...
	mov	1732,r13		! source line 1732
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_186_ErrorInUserProcess:
	.word	_sourceFileName
	.word	_Label_548
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_549
	.word	8
	.word	4
	.word	_Label_550
	.word	-12
	.word	4
	.word	_Label_551
	.word	-16
	.word	4
	.word	_Label_552
	.word	-20
	.word	4
	.word	_Label_553
	.word	-24
	.word	4
	.word	_Label_554
	.word	-28
	.word	4
	.word	_Label_555
	.word	-32
	.word	4
	.word	_Label_556
	.word	-36
	.word	4
	.word	0
_Label_548:
	.ascii	"ErrorInUserProcess\0"
	.align
_Label_549:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_550:
	.byte	'?'
	.ascii	"_temp_547\0"
	.align
_Label_551:
	.byte	'?'
	.ascii	"_temp_545\0"
	.align
_Label_552:
	.byte	'?'
	.ascii	"_temp_544\0"
	.align
_Label_553:
	.byte	'?'
	.ascii	"_temp_543\0"
	.align
_Label_554:
	.byte	'?'
	.ascii	"_temp_542\0"
	.align
_Label_555:
	.byte	'?'
	.ascii	"_temp_539\0"
	.align
_Label_556:
	.byte	'?'
	.ascii	"_temp_538\0"
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
_Label_3942:
	push	r0
	sub	r1,1,r1
	bne	_Label_3942
	mov	1737,r13		! source line 1737
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1744,r13		! source line 1744
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SWITCH STATEMENT (using an indirect jump table)...
	mov	1758,r13		! source line 1758
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
	load	[r14+8],r1
!   If syscallCodeNum is not within 16-bits goto default code
	srl	r1,15,r2
	cmp	r2,0
	be	_Label_3943
	set	0x1ffff,r3
	cmp	r2,r3
	bne	_Label_557
_Label_3943:
!   If syscallCodeNum is < 1 (==smallestCaseValue) goto default code
	cmp	r1,1
	bl	_Label_557
!   If syscallCodeNum is > 12 (==greatestCaseValue) goto default code
	cmp	r1,12
	bg	_Label_557
!   r1 = (r1-lowValue) * 4 + jumpTableAddr
	sub	r1,1,r1
	sll	r1,2,r1
	set	_Label_571,r2
	add	r1,r2,r1
!   Jump indirect through the jump table
	jmp	r1
!   Jump table
_Label_571:
	jmp	_Label_563	! 1:	
	jmp	_Label_570	! 2:	
	jmp	_Label_560	! 3:	
	jmp	_Label_559	! 4:	
	jmp	_Label_562	! 5:	
	jmp	_Label_561	! 6:	
	jmp	_Label_564	! 7:	
	jmp	_Label_565	! 8:	
	jmp	_Label_566	! 9:	
	jmp	_Label_567	! 10:	
	jmp	_Label_568	! 11:	
	jmp	_Label_569	! 12:	
! CASE 4...
_Label_559:
! RETURN STATEMENT...
	mov	1760,r13		! source line 1760
	mov	"\0\0RE",r10
!   Call the function
	mov	1760,r13		! source line 1760
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Fork
!   Retrieve Result: targetName=_temp_572  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
!   ReturnResult: _temp_572  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 3...
_Label_560:
! CALL STATEMENT...
!   Call the function
	mov	1762,r13		! source line 1762
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Yield
! RETURN STATEMENT...
	mov	1763,r13		! source line 1763
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 6...
_Label_561:
! RETURN STATEMENT...
	mov	1765,r13		! source line 1765
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1765,r13		! source line 1765
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exec
!   Retrieve Result: targetName=_temp_573  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
!   ReturnResult: _temp_573  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 5...
_Label_562:
! RETURN STATEMENT...
	mov	1767,r13		! source line 1767
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1767,r13		! source line 1767
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Join
!   Retrieve Result: targetName=_temp_574  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   ReturnResult: _temp_574  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 1...
_Label_563:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1769,r13		! source line 1769
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exit
! RETURN STATEMENT...
	mov	1770,r13		! source line 1770
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 7...
_Label_564:
! RETURN STATEMENT...
	mov	1772,r13		! source line 1772
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1772,r13		! source line 1772
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Create
!   Retrieve Result: targetName=_temp_575  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
!   ReturnResult: _temp_575  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 8...
_Label_565:
! RETURN STATEMENT...
	mov	1774,r13		! source line 1774
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1774,r13		! source line 1774
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Open
!   Retrieve Result: targetName=_temp_576  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
!   ReturnResult: _temp_576  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 9...
_Label_566:
! RETURN STATEMENT...
	mov	1776,r13		! source line 1776
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
	mov	1776,r13		! source line 1776
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Read
!   Retrieve Result: targetName=_temp_577  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_577  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 10...
_Label_567:
! RETURN STATEMENT...
	mov	1778,r13		! source line 1778
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
	mov	1778,r13		! source line 1778
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Write
!   Retrieve Result: targetName=_temp_578  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_578  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 11...
_Label_568:
! RETURN STATEMENT...
	mov	1780,r13		! source line 1780
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1780,r13		! source line 1780
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Seek
!   Retrieve Result: targetName=_temp_579  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   ReturnResult: _temp_579  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 12...
_Label_569:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1782,r13		! source line 1782
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Close
! RETURN STATEMENT...
	mov	1783,r13		! source line 1783
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_570:
! CALL STATEMENT...
!   Call the function
	mov	1785,r13		! source line 1785
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Shutdown
! RETURN STATEMENT...
	mov	1786,r13		! source line 1786
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! DEFAULT CASE...
_Label_557:
! CALL STATEMENT...
!   _temp_580 = _StringConst_36
	set	_StringConst_36,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_580  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1788,r13		! source line 1788
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=syscallCodeNum  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1789,r13		! source line 1789
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1790,r13		! source line 1790
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_581 = _StringConst_37
	set	_StringConst_37,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_581  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1791,r13		! source line 1791
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_558:
! RETURN STATEMENT...
	mov	1793,r13		! source line 1793
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
	.word	_Label_582
	.word	20		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_583
	.word	8
	.word	4
	.word	_Label_584
	.word	12
	.word	4
	.word	_Label_585
	.word	16
	.word	4
	.word	_Label_586
	.word	20
	.word	4
	.word	_Label_587
	.word	24
	.word	4
	.word	_Label_588
	.word	-12
	.word	4
	.word	_Label_589
	.word	-16
	.word	4
	.word	_Label_590
	.word	-20
	.word	4
	.word	_Label_591
	.word	-24
	.word	4
	.word	_Label_592
	.word	-28
	.word	4
	.word	_Label_593
	.word	-32
	.word	4
	.word	_Label_594
	.word	-36
	.word	4
	.word	_Label_595
	.word	-40
	.word	4
	.word	_Label_596
	.word	-44
	.word	4
	.word	_Label_597
	.word	-48
	.word	4
	.word	0
_Label_582:
	.ascii	"SyscallTrapHandler\0"
	.align
_Label_583:
	.byte	'I'
	.ascii	"syscallCodeNum\0"
	.align
_Label_584:
	.byte	'I'
	.ascii	"arg1\0"
	.align
_Label_585:
	.byte	'I'
	.ascii	"arg2\0"
	.align
_Label_586:
	.byte	'I'
	.ascii	"arg3\0"
	.align
_Label_587:
	.byte	'I'
	.ascii	"arg4\0"
	.align
_Label_588:
	.byte	'?'
	.ascii	"_temp_581\0"
	.align
_Label_589:
	.byte	'?'
	.ascii	"_temp_580\0"
	.align
_Label_590:
	.byte	'?'
	.ascii	"_temp_579\0"
	.align
_Label_591:
	.byte	'?'
	.ascii	"_temp_578\0"
	.align
_Label_592:
	.byte	'?'
	.ascii	"_temp_577\0"
	.align
_Label_593:
	.byte	'?'
	.ascii	"_temp_576\0"
	.align
_Label_594:
	.byte	'?'
	.ascii	"_temp_575\0"
	.align
_Label_595:
	.byte	'?'
	.ascii	"_temp_574\0"
	.align
_Label_596:
	.byte	'?'
	.ascii	"_temp_573\0"
	.align
_Label_597:
	.byte	'?'
	.ascii	"_temp_572\0"
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
	mov	1,r1
_Label_3944:
	push	r0
	sub	r1,1,r1
	bne	_Label_3944
	mov	1798,r13		! source line 1798
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=returnStatus  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1799,r13		! source line 1799
	mov	"\0\0CA",r10
	call	_P_Kernel_ProcessFinish
! RETURN STATEMENT...
	mov	1799,r13		! source line 1799
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Exit:
	.word	_sourceFileName
	.word	_Label_598
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_599
	.word	8
	.word	4
	.word	0
_Label_598:
	.ascii	"Handle_Sys_Exit\0"
	.align
_Label_599:
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
	mov	1804,r13		! source line 1804
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1804,r13		! source line 1804
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
	.word	_Label_600
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_600:
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
	mov	1,r1
_Label_3945:
	push	r0
	sub	r1,1,r1
	bne	_Label_3945
	mov	1810,r13		! source line 1810
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1811,r13		! source line 1811
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
! RETURN STATEMENT...
	mov	1811,r13		! source line 1811
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Yield:
	.word	_sourceFileName
	.word	_Label_601
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_601:
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
	mov	85,r1
_Label_3946:
	push	r0
	sub	r1,1,r1
	bne	_Label_3946
	mov	1816,r13		! source line 1816
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1825,r13		! source line 1825
	mov	"\0\0AS",r10
	mov	1825,r13		! source line 1825
	mov	"\0\0SE",r10
!   _temp_602 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-316]
!   Send message GetANewThread
	load	[r14+-316],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=newThread  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-320]
! ASSIGNMENT STATEMENT...
	mov	1826,r13		! source line 1826
	mov	"\0\0AS",r10
	mov	1826,r13		! source line 1826
	mov	"\0\0SE",r10
!   _temp_603 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-312]
!   Send message GetANewProcess
	load	[r14+-312],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=newPCB  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-324]
! ASSIGNMENT STATEMENT...
	mov	1827,r13		! source line 1827
	mov	"\0\0AS",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-324],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_604 = newPCB + 24
	load	[r14+-324],r1
	add	r1,24,r1
	store	r1,[r14+-308]
!   Data Move: *_temp_604 = newThread  (sizeInBytes=4)
	load	[r14+-320],r1
	load	[r14+-308],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1828,r13		! source line 1828
	mov	"\0\0AS",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-324],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_605 = newPCB + 16
	load	[r14+-324],r1
	add	r1,16,r1
	store	r1,[r14+-304]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_608 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-292]
!   Data Move: _temp_607 = *_temp_608  (sizeInBytes=4)
	load	[r14+-292],r1
	load	[r1],r1
	store	r1,[r14+-296]
!   if intIsZero (_temp_607) then goto _runtimeErrorNullPointer
	load	[r14+-296],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_609 = _temp_607 + 12
	load	[r14+-296],r1
	add	r1,12,r1
	store	r1,[r14+-288]
!   Data Move: _temp_606 = *_temp_609  (sizeInBytes=4)
	load	[r14+-288],r1
	load	[r1],r1
	store	r1,[r14+-300]
!   Data Move: *_temp_605 = _temp_606  (sizeInBytes=4)
	load	[r14+-300],r1
	load	[r14+-304],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1829,r13		! source line 1829
	mov	"\0\0AS",r10
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-320],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_610 = newThread + 76
	load	[r14+-320],r1
	add	r1,76,r1
	store	r1,[r14+-284]
!   Data Move: *_temp_610 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-284],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1830,r13		! source line 1830
	mov	"\0\0AS",r10
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-320],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_611 = newThread + 4160
	load	[r14+-320],r1
	add	r1,4160,r1
	store	r1,[r14+-280]
!   Data Move: *_temp_611 = newPCB  (sizeInBytes=4)
	load	[r14+-324],r1
	load	[r14+-280],r2
	store	r1,[r2]
! CALL STATEMENT...
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-320],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_613 = newThread + 4096
	load	[r14+-320],r1
	add	r1,4096,r1
	store	r1,[r14+-272]
!   Move address of _temp_613 [0 ] into _temp_614
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-272],r1
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
	store	r2,[r14+-268]
!   _temp_612 = _temp_614		(4 bytes)
	load	[r14+-268],r1
	store	r1,[r14+-276]
!   Prepare Argument: offset=8  value=_temp_612  sizeInBytes=4
	load	[r14+-276],r1
	store	r1,[r15+0]
!   Call the function
	mov	1833,r13		! source line 1833
	mov	"\0\0CE",r10
	call	SaveUserRegs
! ASSIGNMENT STATEMENT...
	mov	1835,r13		! source line 1835
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	1835,r13		! source line 1835
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-328]
! FOR STATEMENT...
	mov	1838,r13		! source line 1838
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_619 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-264]
!   Calculate and save the FOR-LOOP ending value
!   _temp_620 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-260]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_619  (sizeInBytes=4)
	load	[r14+-264],r1
	store	r1,[r14+-332]
_Label_615:
!   Perform the FOR-LOOP termination test
!   if i > _temp_620 then goto _Label_618		
	load	[r14+-332],r1
	load	[r14+-260],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_618
_Label_616:
	mov	1838,r13		! source line 1838
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1839,r13		! source line 1839
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_625 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-248]
!   Data Move: _temp_624 = *_temp_625  (sizeInBytes=4)
	load	[r14+-248],r1
	load	[r1],r1
	store	r1,[r14+-252]
!   if intIsZero (_temp_624) then goto _runtimeErrorNullPointer
	load	[r14+-252],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_626 = _temp_624 + 124
	load	[r14+-252],r1
	add	r1,124,r1
	store	r1,[r14+-244]
!   Move address of _temp_626 [i ] into _temp_627
!     make sure index expr is >= 0
	load	[r14+-332],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-244],r1
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
	store	r2,[r14+-240]
!   Data Move: _temp_623 = *_temp_627  (sizeInBytes=4)
	load	[r14+-240],r1
	load	[r1],r1
	store	r1,[r14+-256]
!   if intIsZero (_temp_623) then goto _Label_622
	load	[r14+-256],r1
	cmp	r1,r0
	be	_Label_622
!	jmp	_Label_621
_Label_621:
! THEN...
	mov	1840,r13		! source line 1840
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1840,r13		! source line 1840
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_630 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-228]
!   Data Move: _temp_629 = *_temp_630  (sizeInBytes=4)
	load	[r14+-228],r1
	load	[r1],r1
	store	r1,[r14+-232]
!   if intIsZero (_temp_629) then goto _runtimeErrorNullPointer
	load	[r14+-232],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_631 = _temp_629 + 124
	load	[r14+-232],r1
	add	r1,124,r1
	store	r1,[r14+-224]
!   Move address of _temp_631 [i ] into _temp_632
!     make sure index expr is >= 0
	load	[r14+-332],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-224],r1
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
	store	r2,[r14+-220]
!   Data Move: _temp_628 = *_temp_632  (sizeInBytes=4)
	load	[r14+-220],r1
	load	[r1],r1
	store	r1,[r14+-236]
!   if intIsZero (_temp_628) then goto _runtimeErrorNullPointer
	load	[r14+-236],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_633 = _temp_628 + 24
	load	[r14+-236],r1
	add	r1,24,r1
	store	r1,[r14+-216]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_638 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-196]
!   Data Move: _temp_637 = *_temp_638  (sizeInBytes=4)
	load	[r14+-196],r1
	load	[r1],r1
	store	r1,[r14+-200]
!   if intIsZero (_temp_637) then goto _runtimeErrorNullPointer
	load	[r14+-200],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_639 = _temp_637 + 124
	load	[r14+-200],r1
	add	r1,124,r1
	store	r1,[r14+-192]
!   Move address of _temp_639 [i ] into _temp_640
!     make sure index expr is >= 0
	load	[r14+-332],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-192],r1
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
	store	r2,[r14+-188]
!   Data Move: _temp_636 = *_temp_640  (sizeInBytes=4)
	load	[r14+-188],r1
	load	[r1],r1
	store	r1,[r14+-204]
!   if intIsZero (_temp_636) then goto _runtimeErrorNullPointer
	load	[r14+-204],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_641 = _temp_636 + 24
	load	[r14+-204],r1
	add	r1,24,r1
	store	r1,[r14+-184]
!   Data Move: _temp_635 = *_temp_641  (sizeInBytes=4)
	load	[r14+-184],r1
	load	[r1],r1
	store	r1,[r14+-208]
!   _temp_634 = _temp_635 + 1		(int)
	load	[r14+-208],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-212]
!   Data Move: *_temp_633 = _temp_634  (sizeInBytes=4)
	load	[r14+-212],r1
	load	[r14+-216],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1841,r13		! source line 1841
	mov	"\0\0AS",r10
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-320],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_643 = newThread + 4160
	load	[r14+-320],r1
	add	r1,4160,r1
	store	r1,[r14+-176]
!   Data Move: _temp_642 = *_temp_643  (sizeInBytes=4)
	load	[r14+-176],r1
	load	[r1],r1
	store	r1,[r14+-180]
!   if intIsZero (_temp_642) then goto _runtimeErrorNullPointer
	load	[r14+-180],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_644 = _temp_642 + 124
	load	[r14+-180],r1
	add	r1,124,r1
	store	r1,[r14+-172]
!   Move address of _temp_644 [i ] into _temp_645
!     make sure index expr is >= 0
	load	[r14+-332],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-168]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_648 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-156]
!   Data Move: _temp_647 = *_temp_648  (sizeInBytes=4)
	load	[r14+-156],r1
	load	[r1],r1
	store	r1,[r14+-160]
!   if intIsZero (_temp_647) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_649 = _temp_647 + 124
	load	[r14+-160],r1
	add	r1,124,r1
	store	r1,[r14+-152]
!   Move address of _temp_649 [i ] into _temp_650
!     make sure index expr is >= 0
	load	[r14+-332],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-152],r1
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
	store	r2,[r14+-148]
!   Data Move: _temp_646 = *_temp_650  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r1],r1
	store	r1,[r14+-164]
!   Data Move: *_temp_645 = _temp_646  (sizeInBytes=4)
	load	[r14+-164],r1
	load	[r14+-168],r2
	store	r1,[r2]
! END IF...
_Label_622:
!   Increment the FOR-LOOP index variable and jump back
_Label_617:
!   i = i + 1
	load	[r14+-332],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-332]
	jmp	_Label_615
! END FOR
_Label_618:
! ASSIGNMENT STATEMENT...
	mov	1846,r13		! source line 1846
	mov	"\0\0AS",r10
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-320],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_651 = newThread + 68
	load	[r14+-320],r1
	add	r1,68,r1
	store	r1,[r14+-144]
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-320],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_653 = newThread + 88
	load	[r14+-320],r1
	add	r1,88,r1
	store	r1,[r14+-136]
!   Move address of _temp_653 [999 ] into _temp_654
!     make sure index expr is >= 0
	mov	999,r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-132]
!   _temp_652 = _temp_654		(4 bytes)
	load	[r14+-132],r1
	store	r1,[r14+-140]
!   Data Move: *_temp_651 = _temp_652  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r14+-144],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1848,r13		! source line 1848
	mov	"\0\0SE",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-324],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_656 = newPCB + 32
	load	[r14+-324],r1
	add	r1,32,r1
	store	r1,[r14+-124]
!   _temp_655 = _temp_656		(4 bytes)
	load	[r14+-124],r1
	store	r1,[r14+-128]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_659 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-112]
!   Data Move: _temp_658 = *_temp_659  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if intIsZero (_temp_658) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_660 = _temp_658 + 32
	load	[r14+-116],r1
	add	r1,32,r1
	store	r1,[r14+-108]
!   _temp_661 = _temp_660 + 4
	load	[r14+-108],r1
	add	r1,4,r1
	store	r1,[r14+-104]
!   Data Move: _temp_657 = *_temp_661  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-120]
!   _temp_662 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-100]
!   Prepare Argument: offset=12  value=_temp_655  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_657  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+8]
!   Send message GetNewFrames
	load	[r14+-100],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! FOR STATEMENT...
	mov	1849,r13		! source line 1849
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_667 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-96]
!   Calculate and save the FOR-LOOP ending value
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_671 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-80]
!   Data Move: _temp_670 = *_temp_671  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if intIsZero (_temp_670) then goto _runtimeErrorNullPointer
	load	[r14+-84],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_672 = _temp_670 + 32
	load	[r14+-84],r1
	add	r1,32,r1
	store	r1,[r14+-76]
!   _temp_673 = _temp_672 + 4
	load	[r14+-76],r1
	add	r1,4,r1
	store	r1,[r14+-72]
!   Data Move: _temp_669 = *_temp_673  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-88]
!   _temp_668 = _temp_669 - 1		(int)
	load	[r14+-88],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-92]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_667  (sizeInBytes=4)
	load	[r14+-96],r1
	store	r1,[r14+-332]
_Label_663:
!   Perform the FOR-LOOP termination test
!   if i > _temp_668 then goto _Label_666		
	load	[r14+-332],r1
	load	[r14+-92],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_666
_Label_664:
	mov	1849,r13		! source line 1849
	mov	"\0\0FB",r10
! CALL STATEMENT...
	mov	1850,r13		! source line 1850
	mov	"\0\0SE",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-324],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_675 = newPCB + 32
	load	[r14+-324],r1
	add	r1,32,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-332],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_674  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-68]
	mov	1850,r13		! source line 1850
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_678 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-52]
!   Data Move: _temp_677 = *_temp_678  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_677) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_679 = _temp_677 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-332],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_676  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_674  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_676  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=8192  sizeInBytes=4
	mov	8192,r1
	store	r1,[r15+8]
!   Call the function
	mov	1850,r13		! source line 1850
	mov	"\0\0CE",r10
	call	MemoryCopy
! IF STATEMENT...
	mov	1851,r13		! source line 1851
	mov	"\0\0IF",r10
	mov	1851,r13		! source line 1851
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_684 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-40]
!   Data Move: _temp_683 = *_temp_684  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_683) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_685 = _temp_683 + 32
	load	[r14+-44],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-332],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_682  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   _temp_686 = _temp_682 XOR 0		(bool)
	loadb	[r14+-10],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_686 then goto _Label_681 else goto _Label_680
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_680
	jmp	_Label_681
_Label_680:
! THEN...
	mov	1852,r13		! source line 1852
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1852,r13		! source line 1852
	mov	"\0\0SE",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-324],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_687 = newPCB + 32
	load	[r14+-324],r1
	add	r1,32,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-332],r1
	store	r1,[r15+4]
!   Send message ClearWritable
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,64,r2
	call	r2
	jmp	_Label_688
_Label_681:
! ELSE...
	mov	1854,r13		! source line 1854
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	1854,r13		! source line 1854
	mov	"\0\0SE",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-324],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_689 = newPCB + 32
	load	[r14+-324],r1
	add	r1,32,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-332],r1
	store	r1,[r15+4]
!   Send message SetWritable
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,48,r2
	call	r2
! END IF...
_Label_688:
!   Increment the FOR-LOOP index variable and jump back
_Label_665:
!   i = i + 1
	load	[r14+-332],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-332]
	jmp	_Label_663
! END FOR
_Label_666:
! ASSIGNMENT STATEMENT...
	mov	1859,r13		! source line 1859
	mov	"\0\0AS",r10
!   Call the function
	mov	1859,r13		! source line 1859
	mov	"\0\0CE",r10
	call	GetOldUserPCFromSystemStack
!   Retrieve Result: targetName=oldUserPC  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-336]
! SEND STATEMENT...
	mov	1860,r13		! source line 1860
	mov	"\0\0SE",r10
!   _temp_690 = _function_185_ResumeChildAfterFork
	set	_function_185_ResumeChildAfterFork,r1
	store	r1,[r14+-24]
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-320],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_690  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=oldUserPC  sizeInBytes=4
	load	[r14+-336],r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-320],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	1862,r13		! source line 1862
	mov	"\0\0RE",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-324],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_692 = newPCB + 12
	load	[r14+-324],r1
	add	r1,12,r1
	store	r1,[r14+-16]
!   Data Move: _temp_691 = *_temp_692  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   ReturnResult: _temp_691  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+8]
	add	r15,344,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Fork:
	.word	_sourceFileName
	.word	_Label_693
	.word	0		! total size of parameters
	.word	340		! frame size = 340
	.word	_Label_694
	.word	-16
	.word	4
	.word	_Label_695
	.word	-20
	.word	4
	.word	_Label_696
	.word	-24
	.word	4
	.word	_Label_697
	.word	-28
	.word	4
	.word	_Label_698
	.word	-32
	.word	4
	.word	_Label_699
	.word	-9
	.word	1
	.word	_Label_700
	.word	-36
	.word	4
	.word	_Label_701
	.word	-40
	.word	4
	.word	_Label_702
	.word	-44
	.word	4
	.word	_Label_703
	.word	-10
	.word	1
	.word	_Label_704
	.word	-48
	.word	4
	.word	_Label_705
	.word	-52
	.word	4
	.word	_Label_706
	.word	-56
	.word	4
	.word	_Label_707
	.word	-60
	.word	4
	.word	_Label_708
	.word	-64
	.word	4
	.word	_Label_709
	.word	-68
	.word	4
	.word	_Label_710
	.word	-72
	.word	4
	.word	_Label_711
	.word	-76
	.word	4
	.word	_Label_712
	.word	-80
	.word	4
	.word	_Label_713
	.word	-84
	.word	4
	.word	_Label_714
	.word	-88
	.word	4
	.word	_Label_715
	.word	-92
	.word	4
	.word	_Label_716
	.word	-96
	.word	4
	.word	_Label_717
	.word	-100
	.word	4
	.word	_Label_718
	.word	-104
	.word	4
	.word	_Label_719
	.word	-108
	.word	4
	.word	_Label_720
	.word	-112
	.word	4
	.word	_Label_721
	.word	-116
	.word	4
	.word	_Label_722
	.word	-120
	.word	4
	.word	_Label_723
	.word	-124
	.word	4
	.word	_Label_724
	.word	-128
	.word	4
	.word	_Label_725
	.word	-132
	.word	4
	.word	_Label_726
	.word	-136
	.word	4
	.word	_Label_727
	.word	-140
	.word	4
	.word	_Label_728
	.word	-144
	.word	4
	.word	_Label_729
	.word	-148
	.word	4
	.word	_Label_730
	.word	-152
	.word	4
	.word	_Label_731
	.word	-156
	.word	4
	.word	_Label_732
	.word	-160
	.word	4
	.word	_Label_733
	.word	-164
	.word	4
	.word	_Label_734
	.word	-168
	.word	4
	.word	_Label_735
	.word	-172
	.word	4
	.word	_Label_736
	.word	-176
	.word	4
	.word	_Label_737
	.word	-180
	.word	4
	.word	_Label_738
	.word	-184
	.word	4
	.word	_Label_739
	.word	-188
	.word	4
	.word	_Label_740
	.word	-192
	.word	4
	.word	_Label_741
	.word	-196
	.word	4
	.word	_Label_742
	.word	-200
	.word	4
	.word	_Label_743
	.word	-204
	.word	4
	.word	_Label_744
	.word	-208
	.word	4
	.word	_Label_745
	.word	-212
	.word	4
	.word	_Label_746
	.word	-216
	.word	4
	.word	_Label_747
	.word	-220
	.word	4
	.word	_Label_748
	.word	-224
	.word	4
	.word	_Label_749
	.word	-228
	.word	4
	.word	_Label_750
	.word	-232
	.word	4
	.word	_Label_751
	.word	-236
	.word	4
	.word	_Label_752
	.word	-240
	.word	4
	.word	_Label_753
	.word	-244
	.word	4
	.word	_Label_754
	.word	-248
	.word	4
	.word	_Label_755
	.word	-252
	.word	4
	.word	_Label_756
	.word	-256
	.word	4
	.word	_Label_757
	.word	-260
	.word	4
	.word	_Label_758
	.word	-264
	.word	4
	.word	_Label_759
	.word	-268
	.word	4
	.word	_Label_760
	.word	-272
	.word	4
	.word	_Label_761
	.word	-276
	.word	4
	.word	_Label_762
	.word	-280
	.word	4
	.word	_Label_763
	.word	-284
	.word	4
	.word	_Label_764
	.word	-288
	.word	4
	.word	_Label_765
	.word	-292
	.word	4
	.word	_Label_766
	.word	-296
	.word	4
	.word	_Label_767
	.word	-300
	.word	4
	.word	_Label_768
	.word	-304
	.word	4
	.word	_Label_769
	.word	-308
	.word	4
	.word	_Label_770
	.word	-312
	.word	4
	.word	_Label_771
	.word	-316
	.word	4
	.word	_Label_772
	.word	-320
	.word	4
	.word	_Label_773
	.word	-324
	.word	4
	.word	_Label_774
	.word	-328
	.word	4
	.word	_Label_775
	.word	-332
	.word	4
	.word	_Label_776
	.word	-336
	.word	4
	.word	0
_Label_693:
	.ascii	"Handle_Sys_Fork\0"
	.align
_Label_694:
	.byte	'?'
	.ascii	"_temp_692\0"
	.align
_Label_695:
	.byte	'?'
	.ascii	"_temp_691\0"
	.align
_Label_696:
	.byte	'?'
	.ascii	"_temp_690\0"
	.align
_Label_697:
	.byte	'?'
	.ascii	"_temp_689\0"
	.align
_Label_698:
	.byte	'?'
	.ascii	"_temp_687\0"
	.align
_Label_699:
	.byte	'C'
	.ascii	"_temp_686\0"
	.align
_Label_700:
	.byte	'?'
	.ascii	"_temp_685\0"
	.align
_Label_701:
	.byte	'?'
	.ascii	"_temp_684\0"
	.align
_Label_702:
	.byte	'?'
	.ascii	"_temp_683\0"
	.align
_Label_703:
	.byte	'C'
	.ascii	"_temp_682\0"
	.align
_Label_704:
	.byte	'?'
	.ascii	"_temp_679\0"
	.align
_Label_705:
	.byte	'?'
	.ascii	"_temp_678\0"
	.align
_Label_706:
	.byte	'?'
	.ascii	"_temp_677\0"
	.align
_Label_707:
	.byte	'?'
	.ascii	"_temp_676\0"
	.align
_Label_708:
	.byte	'?'
	.ascii	"_temp_675\0"
	.align
_Label_709:
	.byte	'?'
	.ascii	"_temp_674\0"
	.align
_Label_710:
	.byte	'?'
	.ascii	"_temp_673\0"
	.align
_Label_711:
	.byte	'?'
	.ascii	"_temp_672\0"
	.align
_Label_712:
	.byte	'?'
	.ascii	"_temp_671\0"
	.align
_Label_713:
	.byte	'?'
	.ascii	"_temp_670\0"
	.align
_Label_714:
	.byte	'?'
	.ascii	"_temp_669\0"
	.align
_Label_715:
	.byte	'?'
	.ascii	"_temp_668\0"
	.align
_Label_716:
	.byte	'?'
	.ascii	"_temp_667\0"
	.align
_Label_717:
	.byte	'?'
	.ascii	"_temp_662\0"
	.align
_Label_718:
	.byte	'?'
	.ascii	"_temp_661\0"
	.align
_Label_719:
	.byte	'?'
	.ascii	"_temp_660\0"
	.align
_Label_720:
	.byte	'?'
	.ascii	"_temp_659\0"
	.align
_Label_721:
	.byte	'?'
	.ascii	"_temp_658\0"
	.align
_Label_722:
	.byte	'?'
	.ascii	"_temp_657\0"
	.align
_Label_723:
	.byte	'?'
	.ascii	"_temp_656\0"
	.align
_Label_724:
	.byte	'?'
	.ascii	"_temp_655\0"
	.align
_Label_725:
	.byte	'?'
	.ascii	"_temp_654\0"
	.align
_Label_726:
	.byte	'?'
	.ascii	"_temp_653\0"
	.align
_Label_727:
	.byte	'?'
	.ascii	"_temp_652\0"
	.align
_Label_728:
	.byte	'?'
	.ascii	"_temp_651\0"
	.align
_Label_729:
	.byte	'?'
	.ascii	"_temp_650\0"
	.align
_Label_730:
	.byte	'?'
	.ascii	"_temp_649\0"
	.align
_Label_731:
	.byte	'?'
	.ascii	"_temp_648\0"
	.align
_Label_732:
	.byte	'?'
	.ascii	"_temp_647\0"
	.align
_Label_733:
	.byte	'?'
	.ascii	"_temp_646\0"
	.align
_Label_734:
	.byte	'?'
	.ascii	"_temp_645\0"
	.align
_Label_735:
	.byte	'?'
	.ascii	"_temp_644\0"
	.align
_Label_736:
	.byte	'?'
	.ascii	"_temp_643\0"
	.align
_Label_737:
	.byte	'?'
	.ascii	"_temp_642\0"
	.align
_Label_738:
	.byte	'?'
	.ascii	"_temp_641\0"
	.align
_Label_739:
	.byte	'?'
	.ascii	"_temp_640\0"
	.align
_Label_740:
	.byte	'?'
	.ascii	"_temp_639\0"
	.align
_Label_741:
	.byte	'?'
	.ascii	"_temp_638\0"
	.align
_Label_742:
	.byte	'?'
	.ascii	"_temp_637\0"
	.align
_Label_743:
	.byte	'?'
	.ascii	"_temp_636\0"
	.align
_Label_744:
	.byte	'?'
	.ascii	"_temp_635\0"
	.align
_Label_745:
	.byte	'?'
	.ascii	"_temp_634\0"
	.align
_Label_746:
	.byte	'?'
	.ascii	"_temp_633\0"
	.align
_Label_747:
	.byte	'?'
	.ascii	"_temp_632\0"
	.align
_Label_748:
	.byte	'?'
	.ascii	"_temp_631\0"
	.align
_Label_749:
	.byte	'?'
	.ascii	"_temp_630\0"
	.align
_Label_750:
	.byte	'?'
	.ascii	"_temp_629\0"
	.align
_Label_751:
	.byte	'?'
	.ascii	"_temp_628\0"
	.align
_Label_752:
	.byte	'?'
	.ascii	"_temp_627\0"
	.align
_Label_753:
	.byte	'?'
	.ascii	"_temp_626\0"
	.align
_Label_754:
	.byte	'?'
	.ascii	"_temp_625\0"
	.align
_Label_755:
	.byte	'?'
	.ascii	"_temp_624\0"
	.align
_Label_756:
	.byte	'?'
	.ascii	"_temp_623\0"
	.align
_Label_757:
	.byte	'?'
	.ascii	"_temp_620\0"
	.align
_Label_758:
	.byte	'?'
	.ascii	"_temp_619\0"
	.align
_Label_759:
	.byte	'?'
	.ascii	"_temp_614\0"
	.align
_Label_760:
	.byte	'?'
	.ascii	"_temp_613\0"
	.align
_Label_761:
	.byte	'?'
	.ascii	"_temp_612\0"
	.align
_Label_762:
	.byte	'?'
	.ascii	"_temp_611\0"
	.align
_Label_763:
	.byte	'?'
	.ascii	"_temp_610\0"
	.align
_Label_764:
	.byte	'?'
	.ascii	"_temp_609\0"
	.align
_Label_765:
	.byte	'?'
	.ascii	"_temp_608\0"
	.align
_Label_766:
	.byte	'?'
	.ascii	"_temp_607\0"
	.align
_Label_767:
	.byte	'?'
	.ascii	"_temp_606\0"
	.align
_Label_768:
	.byte	'?'
	.ascii	"_temp_605\0"
	.align
_Label_769:
	.byte	'?'
	.ascii	"_temp_604\0"
	.align
_Label_770:
	.byte	'?'
	.ascii	"_temp_603\0"
	.align
_Label_771:
	.byte	'?'
	.ascii	"_temp_602\0"
	.align
_Label_772:
	.byte	'P'
	.ascii	"newThread\0"
	.align
_Label_773:
	.byte	'P'
	.ascii	"newPCB\0"
	.align
_Label_774:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_775:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_776:
	.byte	'I'
	.ascii	"oldUserPC\0"
	.align
! 
! ===============  FUNCTION ResumeChildAfterFork  ===============
! 
_function_185_ResumeChildAfterFork:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_185_ResumeChildAfterFork,r1
	push	r1
	mov	17,r1
_Label_3947:
	push	r0
	sub	r1,1,r1
	bne	_Label_3947
	mov	1866,r13		! source line 1866
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1872,r13		! source line 1872
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1872,r13		! source line 1872
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! SEND STATEMENT...
	mov	1873,r13		! source line 1873
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_778 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-48]
!   Data Move: _temp_777 = *_temp_778  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_777) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_779 = _temp_777 + 32
	load	[r14+-52],r1
	add	r1,32,r1
	store	r1,[r14+-44]
!   Send message SetToThisPageTable
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,72,r2
	call	r2
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_781 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_781 [0 ] into _temp_782
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
!   _temp_780 = _temp_782		(4 bytes)
	load	[r14+-32],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_780  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1874,r13		! source line 1874
	mov	"\0\0CE",r10
	call	RestoreUserRegs
! ASSIGNMENT STATEMENT...
	mov	1875,r13		! source line 1875
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_783 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_783 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1876,r13		! source line 1876
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_784 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-24]
!   Move address of _temp_784 [14 ] into _temp_785
!     make sure index expr is >= 0
	mov	14,r2
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
!   Data Move: initUserStackTop = *_temp_785  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-60]
! ASSIGNMENT STATEMENT...
	mov	1877,r13		! source line 1877
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_786 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-16]
!   Move address of _temp_786 [999 ] into _temp_787
!     make sure index expr is >= 0
	mov	999,r2
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
!   initSystemStackTop = _temp_787		(4 bytes)
	load	[r14+-12],r1
	store	r1,[r14+-64]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=initUserStackTop  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=startPC  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=initSystemStackTop  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+8]
!   Call the function
	mov	1878,r13		! source line 1878
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	1878,r13		! source line 1878
	mov	"\0\0RE",r10
	add	r15,72,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_185_ResumeChildAfterFork:
	.word	_sourceFileName
	.word	_Label_788
	.word	4		! total size of parameters
	.word	68		! frame size = 68
	.word	_Label_789
	.word	8
	.word	4
	.word	_Label_790
	.word	-12
	.word	4
	.word	_Label_791
	.word	-16
	.word	4
	.word	_Label_792
	.word	-20
	.word	4
	.word	_Label_793
	.word	-24
	.word	4
	.word	_Label_794
	.word	-28
	.word	4
	.word	_Label_795
	.word	-32
	.word	4
	.word	_Label_796
	.word	-36
	.word	4
	.word	_Label_797
	.word	-40
	.word	4
	.word	_Label_798
	.word	-44
	.word	4
	.word	_Label_799
	.word	-48
	.word	4
	.word	_Label_800
	.word	-52
	.word	4
	.word	_Label_801
	.word	-56
	.word	4
	.word	_Label_802
	.word	-60
	.word	4
	.word	_Label_803
	.word	-64
	.word	4
	.word	0
_Label_788:
	.ascii	"ResumeChildAfterFork\0"
	.align
_Label_789:
	.byte	'I'
	.ascii	"startPC\0"
	.align
_Label_790:
	.byte	'?'
	.ascii	"_temp_787\0"
	.align
_Label_791:
	.byte	'?'
	.ascii	"_temp_786\0"
	.align
_Label_792:
	.byte	'?'
	.ascii	"_temp_785\0"
	.align
_Label_793:
	.byte	'?'
	.ascii	"_temp_784\0"
	.align
_Label_794:
	.byte	'?'
	.ascii	"_temp_783\0"
	.align
_Label_795:
	.byte	'?'
	.ascii	"_temp_782\0"
	.align
_Label_796:
	.byte	'?'
	.ascii	"_temp_781\0"
	.align
_Label_797:
	.byte	'?'
	.ascii	"_temp_780\0"
	.align
_Label_798:
	.byte	'?'
	.ascii	"_temp_779\0"
	.align
_Label_799:
	.byte	'?'
	.ascii	"_temp_778\0"
	.align
_Label_800:
	.byte	'?'
	.ascii	"_temp_777\0"
	.align
_Label_801:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_802:
	.byte	'I'
	.ascii	"initUserStackTop\0"
	.align
_Label_803:
	.byte	'I'
	.ascii	"initSystemStackTop\0"
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
	mov	30,r1
_Label_3948:
	push	r0
	sub	r1,1,r1
	bne	_Label_3948
	mov	1883,r13		! source line 1883
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! FOR STATEMENT...
	mov	1887,r13		! source line 1887
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_808 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-112]
!   Calculate and save the FOR-LOOP ending value
!   _temp_809 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-108]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_808  (sizeInBytes=4)
	load	[r14+-112],r1
	store	r1,[r14+-116]
_Label_804:
!   Perform the FOR-LOOP termination test
!   if i > _temp_809 then goto _Label_807		
	load	[r14+-116],r1
	load	[r14+-108],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_807
_Label_805:
	mov	1887,r13		! source line 1887
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1888,r13		! source line 1888
	mov	"\0\0IF",r10
!   _temp_815 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-100]
!   _temp_816 = _temp_815 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-96]
!   Move address of _temp_816 [i ] into _temp_817
!     make sure index expr is >= 0
	load	[r14+-116],r2
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
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-92]
!   _temp_818 = _temp_817 + 12
	load	[r14+-92],r1
	add	r1,12,r1
	store	r1,[r14+-88]
!   Data Move: _temp_814 = *_temp_818  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_814 != processID then goto _Label_811		(int)
	load	[r14+-104],r1
	load	[r14+8],r2
	cmp	r1,r2
	bne	_Label_811
!	jmp	_Label_813
_Label_813:
!   _temp_820 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-80]
!   _temp_821 = _temp_820 + 4
	load	[r14+-80],r1
	add	r1,4,r1
	store	r1,[r14+-76]
!   Move address of _temp_821 [i ] into _temp_822
!     make sure index expr is >= 0
	load	[r14+-116],r2
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
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-72]
!   _temp_823 = _temp_822 + 16
	load	[r14+-72],r1
	add	r1,16,r1
	store	r1,[r14+-68]
!   Data Move: _temp_819 = *_temp_823  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_826 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-56]
!   Data Move: _temp_825 = *_temp_826  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_825) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_827 = _temp_825 + 12
	load	[r14+-60],r1
	add	r1,12,r1
	store	r1,[r14+-52]
!   Data Move: _temp_824 = *_temp_827  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   if _temp_819 != _temp_824 then goto _Label_811		(int)
	load	[r14+-84],r1
	load	[r14+-64],r2
	cmp	r1,r2
	bne	_Label_811
!	jmp	_Label_812
_Label_812:
!   _temp_829 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-44]
!   _temp_830 = _temp_829 + 4
	load	[r14+-44],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Move address of _temp_830 [i ] into _temp_831
!     make sure index expr is >= 0
	load	[r14+-116],r2
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
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-36]
!   _temp_832 = _temp_831 + 20
	load	[r14+-36],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: _temp_828 = *_temp_832  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   if _temp_828 == 3 then goto _Label_811		(int)
	load	[r14+-48],r1
	mov	3,r2
	cmp	r1,r2
	be	_Label_811
!	jmp	_Label_810
_Label_810:
! THEN...
	mov	1889,r13		! source line 1889
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1889,r13		! source line 1889
	mov	"\0\0AS",r10
	mov	1889,r13		! source line 1889
	mov	"\0\0SE",r10
!   _temp_834 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-24]
!   _temp_835 = _temp_834 + 4
	load	[r14+-24],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_835 [i ] into _temp_836
!     make sure index expr is >= 0
	load	[r14+-116],r2
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
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   _temp_833 = _temp_836		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-28]
!   _temp_837 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_833  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+4]
!   Send message WaitForZombie
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
!   Retrieve Result: targetName=childExitStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-120]
! RETURN STATEMENT...
	mov	1890,r13		! source line 1890
	mov	"\0\0RE",r10
!   ReturnResult: childExitStatus  (sizeInBytes=4)
	load	[r14+-120],r1
	store	r1,[r14+8]
	add	r15,124,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_811:
!   Increment the FOR-LOOP index variable and jump back
_Label_806:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_804
! END FOR
_Label_807:
! RETURN STATEMENT...
	mov	1893,r13		! source line 1893
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,124,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Join:
	.word	_sourceFileName
	.word	_Label_838
	.word	4		! total size of parameters
	.word	120		! frame size = 120
	.word	_Label_839
	.word	8
	.word	4
	.word	_Label_840
	.word	-12
	.word	4
	.word	_Label_841
	.word	-16
	.word	4
	.word	_Label_842
	.word	-20
	.word	4
	.word	_Label_843
	.word	-24
	.word	4
	.word	_Label_844
	.word	-28
	.word	4
	.word	_Label_845
	.word	-32
	.word	4
	.word	_Label_846
	.word	-36
	.word	4
	.word	_Label_847
	.word	-40
	.word	4
	.word	_Label_848
	.word	-44
	.word	4
	.word	_Label_849
	.word	-48
	.word	4
	.word	_Label_850
	.word	-52
	.word	4
	.word	_Label_851
	.word	-56
	.word	4
	.word	_Label_852
	.word	-60
	.word	4
	.word	_Label_853
	.word	-64
	.word	4
	.word	_Label_854
	.word	-68
	.word	4
	.word	_Label_855
	.word	-72
	.word	4
	.word	_Label_856
	.word	-76
	.word	4
	.word	_Label_857
	.word	-80
	.word	4
	.word	_Label_858
	.word	-84
	.word	4
	.word	_Label_859
	.word	-88
	.word	4
	.word	_Label_860
	.word	-92
	.word	4
	.word	_Label_861
	.word	-96
	.word	4
	.word	_Label_862
	.word	-100
	.word	4
	.word	_Label_863
	.word	-104
	.word	4
	.word	_Label_864
	.word	-108
	.word	4
	.word	_Label_865
	.word	-112
	.word	4
	.word	_Label_866
	.word	-116
	.word	4
	.word	_Label_867
	.word	-120
	.word	4
	.word	0
_Label_838:
	.ascii	"Handle_Sys_Join\0"
	.align
_Label_839:
	.byte	'I'
	.ascii	"processID\0"
	.align
_Label_840:
	.byte	'?'
	.ascii	"_temp_837\0"
	.align
_Label_841:
	.byte	'?'
	.ascii	"_temp_836\0"
	.align
_Label_842:
	.byte	'?'
	.ascii	"_temp_835\0"
	.align
_Label_843:
	.byte	'?'
	.ascii	"_temp_834\0"
	.align
_Label_844:
	.byte	'?'
	.ascii	"_temp_833\0"
	.align
_Label_845:
	.byte	'?'
	.ascii	"_temp_832\0"
	.align
_Label_846:
	.byte	'?'
	.ascii	"_temp_831\0"
	.align
_Label_847:
	.byte	'?'
	.ascii	"_temp_830\0"
	.align
_Label_848:
	.byte	'?'
	.ascii	"_temp_829\0"
	.align
_Label_849:
	.byte	'?'
	.ascii	"_temp_828\0"
	.align
_Label_850:
	.byte	'?'
	.ascii	"_temp_827\0"
	.align
_Label_851:
	.byte	'?'
	.ascii	"_temp_826\0"
	.align
_Label_852:
	.byte	'?'
	.ascii	"_temp_825\0"
	.align
_Label_853:
	.byte	'?'
	.ascii	"_temp_824\0"
	.align
_Label_854:
	.byte	'?'
	.ascii	"_temp_823\0"
	.align
_Label_855:
	.byte	'?'
	.ascii	"_temp_822\0"
	.align
_Label_856:
	.byte	'?'
	.ascii	"_temp_821\0"
	.align
_Label_857:
	.byte	'?'
	.ascii	"_temp_820\0"
	.align
_Label_858:
	.byte	'?'
	.ascii	"_temp_819\0"
	.align
_Label_859:
	.byte	'?'
	.ascii	"_temp_818\0"
	.align
_Label_860:
	.byte	'?'
	.ascii	"_temp_817\0"
	.align
_Label_861:
	.byte	'?'
	.ascii	"_temp_816\0"
	.align
_Label_862:
	.byte	'?'
	.ascii	"_temp_815\0"
	.align
_Label_863:
	.byte	'?'
	.ascii	"_temp_814\0"
	.align
_Label_864:
	.byte	'?'
	.ascii	"_temp_809\0"
	.align
_Label_865:
	.byte	'?'
	.ascii	"_temp_808\0"
	.align
_Label_866:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_867:
	.byte	'I'
	.ascii	"childExitStatus\0"
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
	mov	64,r1
_Label_3949:
	push	r0
	sub	r1,1,r1
	bne	_Label_3949
	mov	1898,r13		! source line 1898
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! newAddrSpace
!   NEW CLASS Constructor...
!   ZeroMemory: newAddrSpace = zeros  (sizeInBytes=92)
	add	r14,-204,r4
	mov	23,r3
_Label_3950:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3950
!   newAddrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	store	r1,[r14+-204]
! ASSIGNMENT STATEMENT...
	mov	1908,r13		! source line 1908
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1908,r13		! source line 1908
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=temp  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-248]
! ASSIGNMENT STATEMENT...
	mov	1910,r13		! source line 1910
	mov	"\0\0AS",r10
	mov	1910,r13		! source line 1910
	mov	"\0\0SE",r10
!   _temp_869 = &kernalFileName
	add	r14,-228,r1
	store	r1,[r14+-108]
!   _temp_870 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-104]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_872 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-96]
!   Data Move: _temp_871 = *_temp_872  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_871) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_873 = _temp_871 + 32
	load	[r14+-100],r1
	add	r1,32,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=12  value=_temp_869  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_870  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-92],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=temp  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-248]
! IF STATEMENT...
	mov	1911,r13		! source line 1911
	mov	"\0\0IF",r10
!   if temp >= 0 then goto _Label_875		(int)
	load	[r14+-248],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_875
!	jmp	_Label_874
_Label_874:
! THEN...
	mov	1912,r13		! source line 1912
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1912,r13		! source line 1912
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,260,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_875:
! SEND STATEMENT...
	mov	1915,r13		! source line 1915
	mov	"\0\0SE",r10
!   _temp_876 = &newAddrSpace
	add	r14,-204,r1
	store	r1,[r14+-88]
!   Send message Init
	load	[r14+-88],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1917,r13		! source line 1917
	mov	"\0\0AS",r10
	mov	1917,r13		! source line 1917
	mov	"\0\0SE",r10
!   _temp_877 = &kernalFileName
	add	r14,-228,r1
	store	r1,[r14+-84]
!   _temp_878 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=12  value=_temp_877  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+4]
!   Send message Open
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=openFilePtr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-244]
! IF STATEMENT...
	mov	1918,r13		! source line 1918
	mov	"\0\0IF",r10
!   if intIsZero (openFilePtr) then goto _Label_879
	load	[r14+-244],r1
	cmp	r1,r0
	be	_Label_879
	jmp	_Label_880
_Label_879:
! THEN...
	mov	1919,r13		! source line 1919
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1919,r13		! source line 1919
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,260,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_880:
! ASSIGNMENT STATEMENT...
	mov	1922,r13		! source line 1922
	mov	"\0\0AS",r10
	mov	1922,r13		! source line 1922
	mov	"\0\0SE",r10
!   _temp_881 = &newAddrSpace
	add	r14,-204,r1
	store	r1,[r14+-76]
!   if intIsZero (openFilePtr) then goto _runtimeErrorNullPointer
	load	[r14+-244],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_881  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+4]
!   Send message LoadExecutable
	load	[r14+-244],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=entryPoint  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-240]
! IF STATEMENT...
	mov	1923,r13		! source line 1923
	mov	"\0\0IF",r10
!   if entryPoint >= 0 then goto _Label_883		(int)
	load	[r14+-240],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_883
!	jmp	_Label_882
_Label_882:
! THEN...
	mov	1924,r13		! source line 1924
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1924,r13		! source line 1924
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,260,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_883:
! SEND STATEMENT...
	mov	1927,r13		! source line 1927
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_886 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-64]
!   Data Move: _temp_885 = *_temp_886  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_885) then goto _runtimeErrorNullPointer
	load	[r14+-68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_887 = _temp_885 + 32
	load	[r14+-68],r1
	add	r1,32,r1
	store	r1,[r14+-60]
!   _temp_884 = _temp_887		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-72]
!   _temp_888 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=12  value=_temp_884  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1929,r13		! source line 1929
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_890 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-48]
!   Data Move: _temp_889 = *_temp_890  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_889) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_891 = _temp_889 + 32
	load	[r14+-52],r1
	add	r1,32,r1
	store	r1,[r14+-44]
!   Data Move: *_temp_891 = newAddrSpace  (sizeInBytes=92)
	add	r14,-204,r5
	load	[r14+-44],r4
	mov	23,r3
_Label_3951:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3951
! SEND STATEMENT...
	mov	1931,r13		! source line 1931
	mov	"\0\0SE",r10
!   _temp_892 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=openFilePtr  sizeInBytes=4
	load	[r14+-244],r1
	store	r1,[r15+4]
!   Send message Close
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1932,r13		! source line 1932
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_893 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_893 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-36],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1934,r13		! source line 1934
	mov	"\0\0AS",r10
!   _temp_895 = &newAddrSpace
	add	r14,-204,r1
	store	r1,[r14+-28]
!   _temp_896 = _temp_895 + 4
	load	[r14+-28],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Data Move: _temp_894 = *_temp_896  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   initUserStackTop = _temp_894 * 8192		(int)
	load	[r14+-32],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-232]
! ASSIGNMENT STATEMENT...
	mov	1935,r13		! source line 1935
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_897 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_897 [999 ] into _temp_898
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
!   initSystemStackTop = _temp_898		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-236]
! SEND STATEMENT...
	mov	1937,r13		! source line 1937
	mov	"\0\0SE",r10
!   _temp_899 = &newAddrSpace
	add	r14,-204,r1
	store	r1,[r14+-12]
!   Send message SetToThisPageTable
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,72,r2
	call	r2
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=initUserStackTop  sizeInBytes=4
	load	[r14+-232],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=entryPoint  sizeInBytes=4
	load	[r14+-240],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=initSystemStackTop  sizeInBytes=4
	load	[r14+-236],r1
	store	r1,[r15+8]
!   Call the function
	mov	1938,r13		! source line 1938
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	1939,r13		! source line 1939
	mov	"\0\0RE",r10
!   ReturnResult: 3000  (sizeInBytes=4)
	mov	3000,r1
	store	r1,[r14+8]
	add	r15,260,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Exec:
	.word	_sourceFileName
	.word	_Label_900
	.word	4		! total size of parameters
	.word	256		! frame size = 256
	.word	_Label_901
	.word	8
	.word	4
	.word	_Label_902
	.word	-12
	.word	4
	.word	_Label_903
	.word	-16
	.word	4
	.word	_Label_904
	.word	-20
	.word	4
	.word	_Label_905
	.word	-24
	.word	4
	.word	_Label_906
	.word	-28
	.word	4
	.word	_Label_907
	.word	-32
	.word	4
	.word	_Label_908
	.word	-36
	.word	4
	.word	_Label_909
	.word	-40
	.word	4
	.word	_Label_910
	.word	-44
	.word	4
	.word	_Label_911
	.word	-48
	.word	4
	.word	_Label_912
	.word	-52
	.word	4
	.word	_Label_913
	.word	-56
	.word	4
	.word	_Label_914
	.word	-60
	.word	4
	.word	_Label_915
	.word	-64
	.word	4
	.word	_Label_916
	.word	-68
	.word	4
	.word	_Label_917
	.word	-72
	.word	4
	.word	_Label_918
	.word	-76
	.word	4
	.word	_Label_919
	.word	-80
	.word	4
	.word	_Label_920
	.word	-84
	.word	4
	.word	_Label_921
	.word	-88
	.word	4
	.word	_Label_922
	.word	-92
	.word	4
	.word	_Label_923
	.word	-96
	.word	4
	.word	_Label_924
	.word	-100
	.word	4
	.word	_Label_925
	.word	-104
	.word	4
	.word	_Label_926
	.word	-108
	.word	4
	.word	_Label_927
	.word	-112
	.word	4
	.word	_Label_928
	.word	-204
	.word	92
	.word	_Label_929
	.word	-228
	.word	24
	.word	_Label_930
	.word	-232
	.word	4
	.word	_Label_931
	.word	-236
	.word	4
	.word	_Label_932
	.word	-240
	.word	4
	.word	_Label_933
	.word	-244
	.word	4
	.word	_Label_934
	.word	-248
	.word	4
	.word	0
_Label_900:
	.ascii	"Handle_Sys_Exec\0"
	.align
_Label_901:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_902:
	.byte	'?'
	.ascii	"_temp_899\0"
	.align
_Label_903:
	.byte	'?'
	.ascii	"_temp_898\0"
	.align
_Label_904:
	.byte	'?'
	.ascii	"_temp_897\0"
	.align
_Label_905:
	.byte	'?'
	.ascii	"_temp_896\0"
	.align
_Label_906:
	.byte	'?'
	.ascii	"_temp_895\0"
	.align
_Label_907:
	.byte	'?'
	.ascii	"_temp_894\0"
	.align
_Label_908:
	.byte	'?'
	.ascii	"_temp_893\0"
	.align
_Label_909:
	.byte	'?'
	.ascii	"_temp_892\0"
	.align
_Label_910:
	.byte	'?'
	.ascii	"_temp_891\0"
	.align
_Label_911:
	.byte	'?'
	.ascii	"_temp_890\0"
	.align
_Label_912:
	.byte	'?'
	.ascii	"_temp_889\0"
	.align
_Label_913:
	.byte	'?'
	.ascii	"_temp_888\0"
	.align
_Label_914:
	.byte	'?'
	.ascii	"_temp_887\0"
	.align
_Label_915:
	.byte	'?'
	.ascii	"_temp_886\0"
	.align
_Label_916:
	.byte	'?'
	.ascii	"_temp_885\0"
	.align
_Label_917:
	.byte	'?'
	.ascii	"_temp_884\0"
	.align
_Label_918:
	.byte	'?'
	.ascii	"_temp_881\0"
	.align
_Label_919:
	.byte	'?'
	.ascii	"_temp_878\0"
	.align
_Label_920:
	.byte	'?'
	.ascii	"_temp_877\0"
	.align
_Label_921:
	.byte	'?'
	.ascii	"_temp_876\0"
	.align
_Label_922:
	.byte	'?'
	.ascii	"_temp_873\0"
	.align
_Label_923:
	.byte	'?'
	.ascii	"_temp_872\0"
	.align
_Label_924:
	.byte	'?'
	.ascii	"_temp_871\0"
	.align
_Label_925:
	.byte	'?'
	.ascii	"_temp_870\0"
	.align
_Label_926:
	.byte	'?'
	.ascii	"_temp_869\0"
	.align
_Label_927:
	.byte	'?'
	.ascii	"_temp_868\0"
	.align
_Label_928:
	.byte	'O'
	.ascii	"newAddrSpace\0"
	.align
_Label_929:
	.byte	'A'
	.ascii	"kernalFileName\0"
	.align
_Label_930:
	.byte	'I'
	.ascii	"initUserStackTop\0"
	.align
_Label_931:
	.byte	'I'
	.ascii	"initSystemStackTop\0"
	.align
_Label_932:
	.byte	'I'
	.ascii	"entryPoint\0"
	.align
_Label_933:
	.byte	'P'
	.ascii	"openFilePtr\0"
	.align
_Label_934:
	.byte	'I'
	.ascii	"temp\0"
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
	mov	21,r1
_Label_3952:
	push	r0
	sub	r1,1,r1
	bne	_Label_3952
	mov	1944,r13		! source line 1944
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1949,r13		! source line 1949
	mov	"\0\0AS",r10
	mov	1949,r13		! source line 1949
	mov	"\0\0SE",r10
!   _temp_935 = &kernalFileName
	add	r14,-76,r1
	store	r1,[r14+-48]
!   _temp_936 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_938 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-36]
!   Data Move: _temp_937 = *_temp_938  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_937) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_939 = _temp_937 + 32
	load	[r14+-40],r1
	add	r1,32,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_935  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_936  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=temp  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! CALL STATEMENT...
!   _temp_940 = _StringConst_38
	set	_StringConst_38,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_940  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1950,r13		! source line 1950
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1951,r13		! source line 1951
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_941 = _StringConst_39
	set	_StringConst_39,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_941  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1952,r13		! source line 1952
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_942 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_942  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1953,r13		! source line 1953
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Call the function
	mov	1954,r13		! source line 1954
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_943 = _StringConst_40
	set	_StringConst_40,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_943  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1955,r13		! source line 1955
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_944 = &kernalFileName
	add	r14,-76,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_944  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1956,r13		! source line 1956
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1957,r13		! source line 1957
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1958,r13		! source line 1958
	mov	"\0\0RE",r10
!   ReturnResult: 4000  (sizeInBytes=4)
	mov	4000,r1
	store	r1,[r14+8]
	add	r15,88,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Create:
	.word	_sourceFileName
	.word	_Label_945
	.word	4		! total size of parameters
	.word	84		! frame size = 84
	.word	_Label_946
	.word	8
	.word	4
	.word	_Label_947
	.word	-12
	.word	4
	.word	_Label_948
	.word	-16
	.word	4
	.word	_Label_949
	.word	-20
	.word	4
	.word	_Label_950
	.word	-24
	.word	4
	.word	_Label_951
	.word	-28
	.word	4
	.word	_Label_952
	.word	-32
	.word	4
	.word	_Label_953
	.word	-36
	.word	4
	.word	_Label_954
	.word	-40
	.word	4
	.word	_Label_955
	.word	-44
	.word	4
	.word	_Label_956
	.word	-48
	.word	4
	.word	_Label_957
	.word	-52
	.word	4
	.word	_Label_958
	.word	-76
	.word	24
	.word	0
_Label_945:
	.ascii	"Handle_Sys_Create\0"
	.align
_Label_946:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_947:
	.byte	'?'
	.ascii	"_temp_944\0"
	.align
_Label_948:
	.byte	'?'
	.ascii	"_temp_943\0"
	.align
_Label_949:
	.byte	'?'
	.ascii	"_temp_942\0"
	.align
_Label_950:
	.byte	'?'
	.ascii	"_temp_941\0"
	.align
_Label_951:
	.byte	'?'
	.ascii	"_temp_940\0"
	.align
_Label_952:
	.byte	'?'
	.ascii	"_temp_939\0"
	.align
_Label_953:
	.byte	'?'
	.ascii	"_temp_938\0"
	.align
_Label_954:
	.byte	'?'
	.ascii	"_temp_937\0"
	.align
_Label_955:
	.byte	'?'
	.ascii	"_temp_936\0"
	.align
_Label_956:
	.byte	'?'
	.ascii	"_temp_935\0"
	.align
_Label_957:
	.byte	'I'
	.ascii	"temp\0"
	.align
_Label_958:
	.byte	'A'
	.ascii	"kernalFileName\0"
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
	mov	32,r1
_Label_3953:
	push	r0
	sub	r1,1,r1
	bne	_Label_3953
	mov	1963,r13		! source line 1963
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1971,r13		! source line 1971
	mov	"\0\0AS",r10
	mov	1971,r13		! source line 1971
	mov	"\0\0SE",r10
!   _temp_959 = &kernalFileName
	add	r14,-116,r1
	store	r1,[r14+-80]
!   _temp_960 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-76]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_962 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-68]
!   Data Move: _temp_961 = *_temp_962  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_961) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_963 = _temp_961 + 32
	load	[r14+-72],r1
	add	r1,32,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=12  value=_temp_959  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_960  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=temp  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
! ASSIGNMENT STATEMENT...
	mov	1974,r13		! source line 1974
	mov	"\0\0AS",r10
!   fileDescriptorIndex = -1		(4 bytes)
	mov	-1,r1
	store	r1,[r14+-92]
! FOR STATEMENT...
	mov	1975,r13		! source line 1975
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_968 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_969 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_968  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+-88]
_Label_964:
!   Perform the FOR-LOOP termination test
!   if i > _temp_969 then goto _Label_967		
	load	[r14+-88],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_967
_Label_965:
	mov	1975,r13		! source line 1975
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1976,r13		! source line 1976
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_974 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-44]
!   Data Move: _temp_973 = *_temp_974  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   if intIsZero (_temp_973) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_975 = _temp_973 + 124
	load	[r14+-48],r1
	add	r1,124,r1
	store	r1,[r14+-40]
!   Move address of _temp_975 [i ] into _temp_976
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
!   Data Move: _temp_972 = *_temp_976  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_972) then goto _Label_970
	load	[r14+-52],r1
	cmp	r1,r0
	be	_Label_970
	jmp	_Label_971
_Label_970:
! THEN...
	mov	1977,r13		! source line 1977
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1977,r13		! source line 1977
	mov	"\0\0AS",r10
!   fileDescriptorIndex = i		(4 bytes)
	load	[r14+-88],r1
	store	r1,[r14+-92]
! BREAK STATEMENT...
	mov	1978,r13		! source line 1978
	mov	"\0\0BR",r10
	jmp	_Label_967
! END IF...
_Label_971:
!   Increment the FOR-LOOP index variable and jump back
_Label_966:
!   i = i + 1
	load	[r14+-88],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-88]
	jmp	_Label_964
! END FOR
_Label_967:
! IF STATEMENT...
	mov	1981,r13		! source line 1981
	mov	"\0\0IF",r10
!   if fileDescriptorIndex != -1 then goto _Label_978		(int)
	load	[r14+-92],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_978
!	jmp	_Label_977
_Label_977:
! THEN...
	mov	1982,r13		! source line 1982
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1982,r13		! source line 1982
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,132,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_978:
! ASSIGNMENT STATEMENT...
	mov	1985,r13		! source line 1985
	mov	"\0\0AS",r10
	mov	1985,r13		! source line 1985
	mov	"\0\0SE",r10
!   _temp_979 = &kernalFileName
	add	r14,-116,r1
	store	r1,[r14+-32]
!   _temp_980 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_979  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message Open
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=openFile  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-120]
! IF STATEMENT...
	mov	1986,r13		! source line 1986
	mov	"\0\0IF",r10
!   if intIsZero (openFile) then goto _Label_981
	load	[r14+-120],r1
	cmp	r1,r0
	be	_Label_981
	jmp	_Label_982
_Label_981:
! THEN...
	mov	1987,r13		! source line 1987
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1987,r13		! source line 1987
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,132,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_982:
! ASSIGNMENT STATEMENT...
	mov	1989,r13		! source line 1989
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_984 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_983 = *_temp_984  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_983) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_985 = _temp_983 + 124
	load	[r14+-24],r1
	add	r1,124,r1
	store	r1,[r14+-16]
!   Move address of _temp_985 [fileDescriptorIndex ] into _temp_986
!     make sure index expr is >= 0
	load	[r14+-92],r2
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
!   Data Move: *_temp_986 = openFile  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r14+-12],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1990,r13		! source line 1990
	mov	"\0\0RE",r10
!   ReturnResult: fileDescriptorIndex  (sizeInBytes=4)
	load	[r14+-92],r1
	store	r1,[r14+8]
	add	r15,132,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Open:
	.word	_sourceFileName
	.word	_Label_987
	.word	4		! total size of parameters
	.word	128		! frame size = 128
	.word	_Label_988
	.word	8
	.word	4
	.word	_Label_989
	.word	-12
	.word	4
	.word	_Label_990
	.word	-16
	.word	4
	.word	_Label_991
	.word	-20
	.word	4
	.word	_Label_992
	.word	-24
	.word	4
	.word	_Label_993
	.word	-28
	.word	4
	.word	_Label_994
	.word	-32
	.word	4
	.word	_Label_995
	.word	-36
	.word	4
	.word	_Label_996
	.word	-40
	.word	4
	.word	_Label_997
	.word	-44
	.word	4
	.word	_Label_998
	.word	-48
	.word	4
	.word	_Label_999
	.word	-52
	.word	4
	.word	_Label_1000
	.word	-56
	.word	4
	.word	_Label_1001
	.word	-60
	.word	4
	.word	_Label_1002
	.word	-64
	.word	4
	.word	_Label_1003
	.word	-68
	.word	4
	.word	_Label_1004
	.word	-72
	.word	4
	.word	_Label_1005
	.word	-76
	.word	4
	.word	_Label_1006
	.word	-80
	.word	4
	.word	_Label_1007
	.word	-84
	.word	4
	.word	_Label_1008
	.word	-88
	.word	4
	.word	_Label_1009
	.word	-92
	.word	4
	.word	_Label_1010
	.word	-116
	.word	24
	.word	_Label_1011
	.word	-120
	.word	4
	.word	0
_Label_987:
	.ascii	"Handle_Sys_Open\0"
	.align
_Label_988:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_989:
	.byte	'?'
	.ascii	"_temp_986\0"
	.align
_Label_990:
	.byte	'?'
	.ascii	"_temp_985\0"
	.align
_Label_991:
	.byte	'?'
	.ascii	"_temp_984\0"
	.align
_Label_992:
	.byte	'?'
	.ascii	"_temp_983\0"
	.align
_Label_993:
	.byte	'?'
	.ascii	"_temp_980\0"
	.align
_Label_994:
	.byte	'?'
	.ascii	"_temp_979\0"
	.align
_Label_995:
	.byte	'?'
	.ascii	"_temp_976\0"
	.align
_Label_996:
	.byte	'?'
	.ascii	"_temp_975\0"
	.align
_Label_997:
	.byte	'?'
	.ascii	"_temp_974\0"
	.align
_Label_998:
	.byte	'?'
	.ascii	"_temp_973\0"
	.align
_Label_999:
	.byte	'?'
	.ascii	"_temp_972\0"
	.align
_Label_1000:
	.byte	'?'
	.ascii	"_temp_969\0"
	.align
_Label_1001:
	.byte	'?'
	.ascii	"_temp_968\0"
	.align
_Label_1002:
	.byte	'?'
	.ascii	"_temp_963\0"
	.align
_Label_1003:
	.byte	'?'
	.ascii	"_temp_962\0"
	.align
_Label_1004:
	.byte	'?'
	.ascii	"_temp_961\0"
	.align
_Label_1005:
	.byte	'?'
	.ascii	"_temp_960\0"
	.align
_Label_1006:
	.byte	'?'
	.ascii	"_temp_959\0"
	.align
_Label_1007:
	.byte	'I'
	.ascii	"temp\0"
	.align
_Label_1008:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1009:
	.byte	'I'
	.ascii	"fileDescriptorIndex\0"
	.align
_Label_1010:
	.byte	'A'
	.ascii	"kernalFileName\0"
	.align
_Label_1011:
	.byte	'P'
	.ascii	"openFile\0"
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
	mov	76,r1
_Label_3954:
	push	r0
	sub	r1,1,r1
	bne	_Label_3954
	mov	1995,r13		! source line 1995
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2009,r13		! source line 2009
	mov	"\0\0IF",r10
!   if fileDesc >= 0 then goto _Label_1016		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1016
	jmp	_Label_1012
_Label_1016:
!   if fileDesc <= 9 then goto _Label_1015		(int)
	load	[r14+8],r1
	mov	9,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1015
	jmp	_Label_1012
_Label_1015:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1019 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-248]
!   Data Move: _temp_1018 = *_temp_1019  (sizeInBytes=4)
	load	[r14+-248],r1
	load	[r1],r1
	store	r1,[r14+-252]
!   if intIsZero (_temp_1018) then goto _runtimeErrorNullPointer
	load	[r14+-252],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1020 = _temp_1018 + 124
	load	[r14+-252],r1
	add	r1,124,r1
	store	r1,[r14+-244]
!   Move address of _temp_1020 [fileDesc ] into _temp_1021
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-244],r1
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
	store	r2,[r14+-240]
!   Data Move: _temp_1017 = *_temp_1021  (sizeInBytes=4)
	load	[r14+-240],r1
	load	[r1],r1
	store	r1,[r14+-256]
!   if intIsZero (_temp_1017) then goto _Label_1012
	load	[r14+-256],r1
	cmp	r1,r0
	be	_Label_1012
!	jmp	_Label_1014
_Label_1014:
!   if sizeInBytes >= 0 then goto _Label_1013		(int)
	load	[r14+16],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1013
!	jmp	_Label_1012
_Label_1012:
! THEN...
	mov	2010,r13		! source line 2010
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2010,r13		! source line 2010
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,308,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1013:
! ASSIGNMENT STATEMENT...
	mov	2014,r13		! source line 2014
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1023 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-232]
!   Data Move: _temp_1022 = *_temp_1023  (sizeInBytes=4)
	load	[r14+-232],r1
	load	[r1],r1
	store	r1,[r14+-236]
!   if intIsZero (_temp_1022) then goto _runtimeErrorNullPointer
	load	[r14+-236],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1024 = _temp_1022 + 124
	load	[r14+-236],r1
	add	r1,124,r1
	store	r1,[r14+-228]
!   Move address of _temp_1024 [fileDesc ] into _temp_1025
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-228],r1
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
	store	r2,[r14+-224]
!   Data Move: openFile = *_temp_1025  (sizeInBytes=4)
	load	[r14+-224],r1
	load	[r1],r1
	store	r1,[r14+-292]
! ASSIGNMENT STATEMENT...
	mov	2015,r13		! source line 2015
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-260]
! ASSIGNMENT STATEMENT...
	mov	2016,r13		! source line 2016
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+-260],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-264]
! ASSIGNMENT STATEMENT...
	mov	2017,r13		! source line 2017
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+-260],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-268]
! ASSIGNMENT STATEMENT...
	mov	2018,r13		! source line 2018
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-272]
! ASSIGNMENT STATEMENT...
	mov	2019,r13		! source line 2019
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-292],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1026 = openFile + 16
	load	[r14+-292],r1
	add	r1,16,r1
	store	r1,[r14+-220]
!   Data Move: nextPosInFile = *_temp_1026  (sizeInBytes=4)
	load	[r14+-220],r1
	load	[r1],r1
	store	r1,[r14+-276]
! ASSIGNMENT STATEMENT...
	mov	2020,r13		! source line 2020
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-292],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1028 = openFile + 20
	load	[r14+-292],r1
	add	r1,20,r1
	store	r1,[r14+-212]
!   Data Move: _temp_1027 = *_temp_1028  (sizeInBytes=4)
	load	[r14+-212],r1
	load	[r1],r1
	store	r1,[r14+-216]
!   if intIsZero (_temp_1027) then goto _runtimeErrorNullPointer
	load	[r14+-216],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1029 = _temp_1027 + 24
	load	[r14+-216],r1
	add	r1,24,r1
	store	r1,[r14+-208]
!   Data Move: fileSize = *_temp_1029  (sizeInBytes=4)
	load	[r14+-208],r1
	load	[r1],r1
	store	r1,[r14+-284]
! WHILE STATEMENT...
	mov	2021,r13		! source line 2021
	mov	"\0\0WH",r10
_Label_1030:
!	jmp	_Label_1031
_Label_1031:
	mov	2021,r13		! source line 2021
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2022,r13		! source line 2022
	mov	"\0\0AS",r10
!   currentChunkSize = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-268],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-280]
! IF STATEMENT...
	mov	2023,r13		! source line 2023
	mov	"\0\0IF",r10
!   _temp_1035 = nextPosInFile + currentChunkSize		(int)
	load	[r14+-276],r1
	load	[r14+-280],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-204]
!   if _temp_1035 <= fileSize then goto _Label_1034		(int)
	load	[r14+-204],r1
	load	[r14+-284],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1034
!	jmp	_Label_1033
_Label_1033:
! THEN...
	mov	2024,r13		! source line 2024
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2024,r13		! source line 2024
	mov	"\0\0AS",r10
!   currentChunkSize = fileSize - nextPosInFile		(int)
	load	[r14+-284],r1
	load	[r14+-276],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-280]
! END IF...
_Label_1034:
! IF STATEMENT...
	mov	2026,r13		! source line 2026
	mov	"\0\0IF",r10
!   _temp_1038 = copiedSoFar + currentChunkSize		(int)
	load	[r14+-272],r1
	load	[r14+-280],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-200]
!   if _temp_1038 <= sizeInBytes then goto _Label_1037		(int)
	load	[r14+-200],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1037
!	jmp	_Label_1036
_Label_1036:
! THEN...
	mov	2027,r13		! source line 2027
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2027,r13		! source line 2027
	mov	"\0\0AS",r10
!   currentChunkSize = sizeInBytes - copiedSoFar		(int)
	load	[r14+16],r1
	load	[r14+-272],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-280]
! END IF...
_Label_1037:
! IF STATEMENT...
	mov	2029,r13		! source line 2029
	mov	"\0\0IF",r10
!   if currentChunkSize > 0 then goto _Label_1040		(int)
	load	[r14+-280],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1040
!	jmp	_Label_1039
_Label_1039:
! THEN...
	mov	2030,r13		! source line 2030
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2030,r13		! source line 2030
	mov	"\0\0BR",r10
	jmp	_Label_1032
! END IF...
_Label_1040:
! IF STATEMENT...
	mov	2032,r13		! source line 2032
	mov	"\0\0IF",r10
!   if virtPage >= 0 then goto _Label_1045		(int)
	load	[r14+-264],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1045
	jmp	_Label_1041
_Label_1045:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1048 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-188]
!   Data Move: _temp_1047 = *_temp_1048  (sizeInBytes=4)
	load	[r14+-188],r1
	load	[r1],r1
	store	r1,[r14+-192]
!   if intIsZero (_temp_1047) then goto _runtimeErrorNullPointer
	load	[r14+-192],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1049 = _temp_1047 + 32
	load	[r14+-192],r1
	add	r1,32,r1
	store	r1,[r14+-184]
!   _temp_1050 = _temp_1049 + 4
	load	[r14+-184],r1
	add	r1,4,r1
	store	r1,[r14+-180]
!   Data Move: _temp_1046 = *_temp_1050  (sizeInBytes=4)
	load	[r14+-180],r1
	load	[r1],r1
	store	r1,[r14+-196]
!   if virtPage <= _temp_1046 then goto _Label_1044		(int)
	load	[r14+-264],r1
	load	[r14+-196],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1044
	jmp	_Label_1041
_Label_1044:
	mov	2032,r13		! source line 2032
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1053 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-172]
!   Data Move: _temp_1052 = *_temp_1053  (sizeInBytes=4)
	load	[r14+-172],r1
	load	[r1],r1
	store	r1,[r14+-176]
!   if intIsZero (_temp_1052) then goto _runtimeErrorNullPointer
	load	[r14+-176],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1054 = _temp_1052 + 32
	load	[r14+-176],r1
	add	r1,32,r1
	store	r1,[r14+-168]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-264],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-168],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1051  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-16]
!   _temp_1055 = _temp_1051 XOR 0		(bool)
	loadb	[r14+-16],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-15]
!   if _temp_1055 then goto _Label_1043 else goto _Label_1041
	loadb	[r14+-15],r1
	cmp	r1,0
	be	_Label_1041
	jmp	_Label_1043
_Label_1043:
	mov	2032,r13		! source line 2032
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1058 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-160]
!   Data Move: _temp_1057 = *_temp_1058  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-164]
!   if intIsZero (_temp_1057) then goto _runtimeErrorNullPointer
	load	[r14+-164],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1059 = _temp_1057 + 32
	load	[r14+-164],r1
	add	r1,32,r1
	store	r1,[r14+-156]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-264],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-156],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_1056  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-14]
!   _temp_1060 = _temp_1056 XOR 0		(bool)
	loadb	[r14+-14],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-13]
!   if _temp_1060 then goto _Label_1042 else goto _Label_1041
	loadb	[r14+-13],r1
	cmp	r1,0
	be	_Label_1041
	jmp	_Label_1042
_Label_1041:
! THEN...
	mov	2033,r13		! source line 2033
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2033,r13		! source line 2033
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,308,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1042:
! ASSIGNMENT STATEMENT...
	mov	2035,r13		! source line 2035
	mov	"\0\0AS",r10
!   nextPosInFile = nextPosInFile + currentChunkSize		(int)
	load	[r14+-276],r1
	load	[r14+-280],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-276]
! ASSIGNMENT STATEMENT...
	mov	2036,r13		! source line 2036
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + currentChunkSize		(int)
	load	[r14+-272],r1
	load	[r14+-280],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-272]
! ASSIGNMENT STATEMENT...
	mov	2037,r13		! source line 2037
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-264],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-264]
! ASSIGNMENT STATEMENT...
	mov	2038,r13		! source line 2038
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-268]
! IF STATEMENT...
	mov	2039,r13		! source line 2039
	mov	"\0\0IF",r10
!   if copiedSoFar != sizeInBytes then goto _Label_1062		(int)
	load	[r14+-272],r1
	load	[r14+16],r2
	cmp	r1,r2
	bne	_Label_1062
!	jmp	_Label_1061
_Label_1061:
! THEN...
	mov	2040,r13		! source line 2040
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2040,r13		! source line 2040
	mov	"\0\0BR",r10
	jmp	_Label_1032
! END IF...
_Label_1062:
! END WHILE...
	jmp	_Label_1030
_Label_1032:
! ASSIGNMENT STATEMENT...
	mov	2045,r13		! source line 2045
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1064 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-148]
!   Data Move: _temp_1063 = *_temp_1064  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r1],r1
	store	r1,[r14+-152]
!   if intIsZero (_temp_1063) then goto _runtimeErrorNullPointer
	load	[r14+-152],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1065 = _temp_1063 + 124
	load	[r14+-152],r1
	add	r1,124,r1
	store	r1,[r14+-144]
!   Move address of _temp_1065 [fileDesc ] into _temp_1066
!     make sure index expr is >= 0
	load	[r14+8],r2
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
!   Data Move: openFile = *_temp_1066  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-292]
! ASSIGNMENT STATEMENT...
	mov	2046,r13		! source line 2046
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-260]
! ASSIGNMENT STATEMENT...
	mov	2047,r13		! source line 2047
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+-260],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-264]
! ASSIGNMENT STATEMENT...
	mov	2048,r13		! source line 2048
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+-260],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-268]
! ASSIGNMENT STATEMENT...
	mov	2049,r13		! source line 2049
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-272]
! ASSIGNMENT STATEMENT...
	mov	2050,r13		! source line 2050
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-292],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1067 = openFile + 16
	load	[r14+-292],r1
	add	r1,16,r1
	store	r1,[r14+-136]
!   Data Move: nextPosInFile = *_temp_1067  (sizeInBytes=4)
	load	[r14+-136],r1
	load	[r1],r1
	store	r1,[r14+-276]
! ASSIGNMENT STATEMENT...
	mov	2051,r13		! source line 2051
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-292],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1069 = openFile + 20
	load	[r14+-292],r1
	add	r1,20,r1
	store	r1,[r14+-128]
!   Data Move: _temp_1068 = *_temp_1069  (sizeInBytes=4)
	load	[r14+-128],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   if intIsZero (_temp_1068) then goto _runtimeErrorNullPointer
	load	[r14+-132],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1070 = _temp_1068 + 24
	load	[r14+-132],r1
	add	r1,24,r1
	store	r1,[r14+-124]
!   Data Move: fileSize = *_temp_1070  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-284]
! WHILE STATEMENT...
	mov	2053,r13		! source line 2053
	mov	"\0\0WH",r10
_Label_1071:
!	jmp	_Label_1072
_Label_1072:
	mov	2053,r13		! source line 2053
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2054,r13		! source line 2054
	mov	"\0\0AS",r10
!   currentChunkSize = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-268],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-280]
! IF STATEMENT...
	mov	2055,r13		! source line 2055
	mov	"\0\0IF",r10
!   _temp_1076 = nextPosInFile + currentChunkSize		(int)
	load	[r14+-276],r1
	load	[r14+-280],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
!   if _temp_1076 <= fileSize then goto _Label_1075		(int)
	load	[r14+-120],r1
	load	[r14+-284],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1075
!	jmp	_Label_1074
_Label_1074:
! THEN...
	mov	2056,r13		! source line 2056
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2056,r13		! source line 2056
	mov	"\0\0AS",r10
!   currentChunkSize = fileSize - nextPosInFile		(int)
	load	[r14+-284],r1
	load	[r14+-276],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-280]
! END IF...
_Label_1075:
! IF STATEMENT...
	mov	2058,r13		! source line 2058
	mov	"\0\0IF",r10
!   _temp_1079 = copiedSoFar + currentChunkSize		(int)
	load	[r14+-272],r1
	load	[r14+-280],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
!   if _temp_1079 <= sizeInBytes then goto _Label_1078		(int)
	load	[r14+-116],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1078
!	jmp	_Label_1077
_Label_1077:
! THEN...
	mov	2059,r13		! source line 2059
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2059,r13		! source line 2059
	mov	"\0\0AS",r10
!   currentChunkSize = sizeInBytes - copiedSoFar		(int)
	load	[r14+16],r1
	load	[r14+-272],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-280]
! END IF...
_Label_1078:
! IF STATEMENT...
	mov	2061,r13		! source line 2061
	mov	"\0\0IF",r10
!   if currentChunkSize > 0 then goto _Label_1081		(int)
	load	[r14+-280],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1081
!	jmp	_Label_1080
_Label_1080:
! THEN...
	mov	2062,r13		! source line 2062
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2062,r13		! source line 2062
	mov	"\0\0BR",r10
	jmp	_Label_1073
! END IF...
_Label_1081:
! IF STATEMENT...
	mov	2064,r13		! source line 2064
	mov	"\0\0IF",r10
!   if virtPage >= 0 then goto _Label_1086		(int)
	load	[r14+-264],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1086
	jmp	_Label_1082
_Label_1086:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1089 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-104]
!   Data Move: _temp_1088 = *_temp_1089  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_1088) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1090 = _temp_1088 + 32
	load	[r14+-108],r1
	add	r1,32,r1
	store	r1,[r14+-100]
!   _temp_1091 = _temp_1090 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-96]
!   Data Move: _temp_1087 = *_temp_1091  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if virtPage <= _temp_1087 then goto _Label_1085		(int)
	load	[r14+-264],r1
	load	[r14+-112],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1085
	jmp	_Label_1082
_Label_1085:
	mov	2064,r13		! source line 2064
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1094 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-88]
!   Data Move: _temp_1093 = *_temp_1094  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_1093) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1095 = _temp_1093 + 32
	load	[r14+-92],r1
	add	r1,32,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-264],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-84],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1092  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-12]
!   _temp_1096 = _temp_1092 XOR 0		(bool)
	loadb	[r14+-12],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-11]
!   if _temp_1096 then goto _Label_1084 else goto _Label_1082
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_1082
	jmp	_Label_1084
_Label_1084:
	mov	2064,r13		! source line 2064
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1099 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-76]
!   Data Move: _temp_1098 = *_temp_1099  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_1098) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1100 = _temp_1098 + 32
	load	[r14+-80],r1
	add	r1,32,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-264],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_1097  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   _temp_1101 = _temp_1097 XOR 0		(bool)
	loadb	[r14+-10],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_1101 then goto _Label_1083 else goto _Label_1082
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1082
	jmp	_Label_1083
_Label_1082:
! THEN...
	mov	2065,r13		! source line 2065
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2065,r13		! source line 2065
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,308,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1083:
! SEND STATEMENT...
	mov	2067,r13		! source line 2067
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1103 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-64]
!   Data Move: _temp_1102 = *_temp_1103  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_1102) then goto _runtimeErrorNullPointer
	load	[r14+-68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1104 = _temp_1102 + 32
	load	[r14+-68],r1
	add	r1,32,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-264],r1
	store	r1,[r15+4]
!   Send message SetReferenced
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,44,r2
	call	r2
! SEND STATEMENT...
	mov	2068,r13		! source line 2068
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1106 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-52]
!   Data Move: _temp_1105 = *_temp_1106  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_1105) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1107 = _temp_1105 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-264],r1
	store	r1,[r15+4]
!   Send message SetDirty
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,40,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2069,r13		! source line 2069
	mov	"\0\0AS",r10
	mov	2069,r13		! source line 2069
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1110 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-36]
!   Data Move: _temp_1109 = *_temp_1110  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_1109) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1111 = _temp_1109 + 32
	load	[r14+-40],r1
	add	r1,32,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-264],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1108  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
!   destAddr = _temp_1108 + offset		(int)
	load	[r14+-44],r1
	load	[r14+-268],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-288]
! ASSIGNMENT STATEMENT...
	mov	2070,r13		! source line 2070
	mov	"\0\0AS",r10
	mov	2070,r13		! source line 2070
	mov	"\0\0SE",r10
!   _temp_1112 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=openFile  sizeInBytes=4
	load	[r14+-292],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=destAddr  sizeInBytes=4
	load	[r14+-288],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=nextPosInFile  sizeInBytes=4
	load	[r14+-276],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=currentChunkSize  sizeInBytes=4
	load	[r14+-280],r1
	store	r1,[r15+16]
!   Send message SynchRead
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
!   Retrieve Result: targetName=readSuccess  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-17]
! ASSIGNMENT STATEMENT...
	mov	2071,r13		! source line 2071
	mov	"\0\0AS",r10
!   nextPosInFile = nextPosInFile + currentChunkSize		(int)
	load	[r14+-276],r1
	load	[r14+-280],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-276]
! ASSIGNMENT STATEMENT...
	mov	2072,r13		! source line 2072
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + currentChunkSize		(int)
	load	[r14+-272],r1
	load	[r14+-280],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-272]
! ASSIGNMENT STATEMENT...
	mov	2073,r13		! source line 2073
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-264],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-264]
! ASSIGNMENT STATEMENT...
	mov	2074,r13		! source line 2074
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-268]
! IF STATEMENT...
	mov	2075,r13		! source line 2075
	mov	"\0\0IF",r10
!   if copiedSoFar != sizeInBytes then goto _Label_1114		(int)
	load	[r14+-272],r1
	load	[r14+16],r2
	cmp	r1,r2
	bne	_Label_1114
!	jmp	_Label_1113
_Label_1113:
! THEN...
	mov	2076,r13		! source line 2076
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2076,r13		! source line 2076
	mov	"\0\0BR",r10
	jmp	_Label_1073
! END IF...
_Label_1114:
! END WHILE...
	jmp	_Label_1071
_Label_1073:
! ASSIGNMENT STATEMENT...
	mov	2080,r13		! source line 2080
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-292],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1115 = openFile + 16
	load	[r14+-292],r1
	add	r1,16,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1115 = nextPosInFile  (sizeInBytes=4)
	load	[r14+-276],r1
	load	[r14+-24],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2082,r13		! source line 2082
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-272],r1
	store	r1,[r14+8]
	add	r15,308,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Read:
	.word	_sourceFileName
	.word	_Label_1116
	.word	12		! total size of parameters
	.word	304		! frame size = 304
	.word	_Label_1117
	.word	8
	.word	4
	.word	_Label_1118
	.word	12
	.word	4
	.word	_Label_1119
	.word	16
	.word	4
	.word	_Label_1120
	.word	-24
	.word	4
	.word	_Label_1121
	.word	-28
	.word	4
	.word	_Label_1122
	.word	-32
	.word	4
	.word	_Label_1123
	.word	-36
	.word	4
	.word	_Label_1124
	.word	-40
	.word	4
	.word	_Label_1125
	.word	-44
	.word	4
	.word	_Label_1126
	.word	-48
	.word	4
	.word	_Label_1127
	.word	-52
	.word	4
	.word	_Label_1128
	.word	-56
	.word	4
	.word	_Label_1129
	.word	-60
	.word	4
	.word	_Label_1130
	.word	-64
	.word	4
	.word	_Label_1131
	.word	-68
	.word	4
	.word	_Label_1132
	.word	-9
	.word	1
	.word	_Label_1133
	.word	-72
	.word	4
	.word	_Label_1134
	.word	-76
	.word	4
	.word	_Label_1135
	.word	-80
	.word	4
	.word	_Label_1136
	.word	-10
	.word	1
	.word	_Label_1137
	.word	-11
	.word	1
	.word	_Label_1138
	.word	-84
	.word	4
	.word	_Label_1139
	.word	-88
	.word	4
	.word	_Label_1140
	.word	-92
	.word	4
	.word	_Label_1141
	.word	-12
	.word	1
	.word	_Label_1142
	.word	-96
	.word	4
	.word	_Label_1143
	.word	-100
	.word	4
	.word	_Label_1144
	.word	-104
	.word	4
	.word	_Label_1145
	.word	-108
	.word	4
	.word	_Label_1146
	.word	-112
	.word	4
	.word	_Label_1147
	.word	-116
	.word	4
	.word	_Label_1148
	.word	-120
	.word	4
	.word	_Label_1149
	.word	-124
	.word	4
	.word	_Label_1150
	.word	-128
	.word	4
	.word	_Label_1151
	.word	-132
	.word	4
	.word	_Label_1152
	.word	-136
	.word	4
	.word	_Label_1153
	.word	-140
	.word	4
	.word	_Label_1154
	.word	-144
	.word	4
	.word	_Label_1155
	.word	-148
	.word	4
	.word	_Label_1156
	.word	-152
	.word	4
	.word	_Label_1157
	.word	-13
	.word	1
	.word	_Label_1158
	.word	-156
	.word	4
	.word	_Label_1159
	.word	-160
	.word	4
	.word	_Label_1160
	.word	-164
	.word	4
	.word	_Label_1161
	.word	-14
	.word	1
	.word	_Label_1162
	.word	-15
	.word	1
	.word	_Label_1163
	.word	-168
	.word	4
	.word	_Label_1164
	.word	-172
	.word	4
	.word	_Label_1165
	.word	-176
	.word	4
	.word	_Label_1166
	.word	-16
	.word	1
	.word	_Label_1167
	.word	-180
	.word	4
	.word	_Label_1168
	.word	-184
	.word	4
	.word	_Label_1169
	.word	-188
	.word	4
	.word	_Label_1170
	.word	-192
	.word	4
	.word	_Label_1171
	.word	-196
	.word	4
	.word	_Label_1172
	.word	-200
	.word	4
	.word	_Label_1173
	.word	-204
	.word	4
	.word	_Label_1174
	.word	-208
	.word	4
	.word	_Label_1175
	.word	-212
	.word	4
	.word	_Label_1176
	.word	-216
	.word	4
	.word	_Label_1177
	.word	-220
	.word	4
	.word	_Label_1178
	.word	-224
	.word	4
	.word	_Label_1179
	.word	-228
	.word	4
	.word	_Label_1180
	.word	-232
	.word	4
	.word	_Label_1181
	.word	-236
	.word	4
	.word	_Label_1182
	.word	-240
	.word	4
	.word	_Label_1183
	.word	-244
	.word	4
	.word	_Label_1184
	.word	-248
	.word	4
	.word	_Label_1185
	.word	-252
	.word	4
	.word	_Label_1186
	.word	-256
	.word	4
	.word	_Label_1187
	.word	-260
	.word	4
	.word	_Label_1188
	.word	-264
	.word	4
	.word	_Label_1189
	.word	-268
	.word	4
	.word	_Label_1190
	.word	-272
	.word	4
	.word	_Label_1191
	.word	-276
	.word	4
	.word	_Label_1192
	.word	-280
	.word	4
	.word	_Label_1193
	.word	-284
	.word	4
	.word	_Label_1194
	.word	-288
	.word	4
	.word	_Label_1195
	.word	-292
	.word	4
	.word	_Label_1196
	.word	-17
	.word	1
	.word	0
_Label_1116:
	.ascii	"Handle_Sys_Read\0"
	.align
_Label_1117:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_1118:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_1119:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_1120:
	.byte	'?'
	.ascii	"_temp_1115\0"
	.align
_Label_1121:
	.byte	'?'
	.ascii	"_temp_1112\0"
	.align
_Label_1122:
	.byte	'?'
	.ascii	"_temp_1111\0"
	.align
_Label_1123:
	.byte	'?'
	.ascii	"_temp_1110\0"
	.align
_Label_1124:
	.byte	'?'
	.ascii	"_temp_1109\0"
	.align
_Label_1125:
	.byte	'?'
	.ascii	"_temp_1108\0"
	.align
_Label_1126:
	.byte	'?'
	.ascii	"_temp_1107\0"
	.align
_Label_1127:
	.byte	'?'
	.ascii	"_temp_1106\0"
	.align
_Label_1128:
	.byte	'?'
	.ascii	"_temp_1105\0"
	.align
_Label_1129:
	.byte	'?'
	.ascii	"_temp_1104\0"
	.align
_Label_1130:
	.byte	'?'
	.ascii	"_temp_1103\0"
	.align
_Label_1131:
	.byte	'?'
	.ascii	"_temp_1102\0"
	.align
_Label_1132:
	.byte	'C'
	.ascii	"_temp_1101\0"
	.align
_Label_1133:
	.byte	'?'
	.ascii	"_temp_1100\0"
	.align
_Label_1134:
	.byte	'?'
	.ascii	"_temp_1099\0"
	.align
_Label_1135:
	.byte	'?'
	.ascii	"_temp_1098\0"
	.align
_Label_1136:
	.byte	'C'
	.ascii	"_temp_1097\0"
	.align
_Label_1137:
	.byte	'C'
	.ascii	"_temp_1096\0"
	.align
_Label_1138:
	.byte	'?'
	.ascii	"_temp_1095\0"
	.align
_Label_1139:
	.byte	'?'
	.ascii	"_temp_1094\0"
	.align
_Label_1140:
	.byte	'?'
	.ascii	"_temp_1093\0"
	.align
_Label_1141:
	.byte	'C'
	.ascii	"_temp_1092\0"
	.align
_Label_1142:
	.byte	'?'
	.ascii	"_temp_1091\0"
	.align
_Label_1143:
	.byte	'?'
	.ascii	"_temp_1090\0"
	.align
_Label_1144:
	.byte	'?'
	.ascii	"_temp_1089\0"
	.align
_Label_1145:
	.byte	'?'
	.ascii	"_temp_1088\0"
	.align
_Label_1146:
	.byte	'?'
	.ascii	"_temp_1087\0"
	.align
_Label_1147:
	.byte	'?'
	.ascii	"_temp_1079\0"
	.align
_Label_1148:
	.byte	'?'
	.ascii	"_temp_1076\0"
	.align
_Label_1149:
	.byte	'?'
	.ascii	"_temp_1070\0"
	.align
_Label_1150:
	.byte	'?'
	.ascii	"_temp_1069\0"
	.align
_Label_1151:
	.byte	'?'
	.ascii	"_temp_1068\0"
	.align
_Label_1152:
	.byte	'?'
	.ascii	"_temp_1067\0"
	.align
_Label_1153:
	.byte	'?'
	.ascii	"_temp_1066\0"
	.align
_Label_1154:
	.byte	'?'
	.ascii	"_temp_1065\0"
	.align
_Label_1155:
	.byte	'?'
	.ascii	"_temp_1064\0"
	.align
_Label_1156:
	.byte	'?'
	.ascii	"_temp_1063\0"
	.align
_Label_1157:
	.byte	'C'
	.ascii	"_temp_1060\0"
	.align
_Label_1158:
	.byte	'?'
	.ascii	"_temp_1059\0"
	.align
_Label_1159:
	.byte	'?'
	.ascii	"_temp_1058\0"
	.align
_Label_1160:
	.byte	'?'
	.ascii	"_temp_1057\0"
	.align
_Label_1161:
	.byte	'C'
	.ascii	"_temp_1056\0"
	.align
_Label_1162:
	.byte	'C'
	.ascii	"_temp_1055\0"
	.align
_Label_1163:
	.byte	'?'
	.ascii	"_temp_1054\0"
	.align
_Label_1164:
	.byte	'?'
	.ascii	"_temp_1053\0"
	.align
_Label_1165:
	.byte	'?'
	.ascii	"_temp_1052\0"
	.align
_Label_1166:
	.byte	'C'
	.ascii	"_temp_1051\0"
	.align
_Label_1167:
	.byte	'?'
	.ascii	"_temp_1050\0"
	.align
_Label_1168:
	.byte	'?'
	.ascii	"_temp_1049\0"
	.align
_Label_1169:
	.byte	'?'
	.ascii	"_temp_1048\0"
	.align
_Label_1170:
	.byte	'?'
	.ascii	"_temp_1047\0"
	.align
_Label_1171:
	.byte	'?'
	.ascii	"_temp_1046\0"
	.align
_Label_1172:
	.byte	'?'
	.ascii	"_temp_1038\0"
	.align
_Label_1173:
	.byte	'?'
	.ascii	"_temp_1035\0"
	.align
_Label_1174:
	.byte	'?'
	.ascii	"_temp_1029\0"
	.align
_Label_1175:
	.byte	'?'
	.ascii	"_temp_1028\0"
	.align
_Label_1176:
	.byte	'?'
	.ascii	"_temp_1027\0"
	.align
_Label_1177:
	.byte	'?'
	.ascii	"_temp_1026\0"
	.align
_Label_1178:
	.byte	'?'
	.ascii	"_temp_1025\0"
	.align
_Label_1179:
	.byte	'?'
	.ascii	"_temp_1024\0"
	.align
_Label_1180:
	.byte	'?'
	.ascii	"_temp_1023\0"
	.align
_Label_1181:
	.byte	'?'
	.ascii	"_temp_1022\0"
	.align
_Label_1182:
	.byte	'?'
	.ascii	"_temp_1021\0"
	.align
_Label_1183:
	.byte	'?'
	.ascii	"_temp_1020\0"
	.align
_Label_1184:
	.byte	'?'
	.ascii	"_temp_1019\0"
	.align
_Label_1185:
	.byte	'?'
	.ascii	"_temp_1018\0"
	.align
_Label_1186:
	.byte	'?'
	.ascii	"_temp_1017\0"
	.align
_Label_1187:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1188:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_1189:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_1190:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_1191:
	.byte	'I'
	.ascii	"nextPosInFile\0"
	.align
_Label_1192:
	.byte	'I'
	.ascii	"currentChunkSize\0"
	.align
_Label_1193:
	.byte	'I'
	.ascii	"fileSize\0"
	.align
_Label_1194:
	.byte	'I'
	.ascii	"destAddr\0"
	.align
_Label_1195:
	.byte	'P'
	.ascii	"openFile\0"
	.align
_Label_1196:
	.byte	'B'
	.ascii	"readSuccess\0"
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
	mov	76,r1
_Label_3955:
	push	r0
	sub	r1,1,r1
	bne	_Label_3955
	mov	2088,r13		! source line 2088
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2102,r13		! source line 2102
	mov	"\0\0IF",r10
!   if fileDesc >= 0 then goto _Label_1201		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1201
	jmp	_Label_1197
_Label_1201:
!   if fileDesc <= 9 then goto _Label_1200		(int)
	load	[r14+8],r1
	mov	9,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1200
	jmp	_Label_1197
_Label_1200:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1204 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-248]
!   Data Move: _temp_1203 = *_temp_1204  (sizeInBytes=4)
	load	[r14+-248],r1
	load	[r1],r1
	store	r1,[r14+-252]
!   if intIsZero (_temp_1203) then goto _runtimeErrorNullPointer
	load	[r14+-252],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1205 = _temp_1203 + 124
	load	[r14+-252],r1
	add	r1,124,r1
	store	r1,[r14+-244]
!   Move address of _temp_1205 [fileDesc ] into _temp_1206
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-244],r1
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
	store	r2,[r14+-240]
!   Data Move: _temp_1202 = *_temp_1206  (sizeInBytes=4)
	load	[r14+-240],r1
	load	[r1],r1
	store	r1,[r14+-256]
!   if intIsZero (_temp_1202) then goto _Label_1197
	load	[r14+-256],r1
	cmp	r1,r0
	be	_Label_1197
!	jmp	_Label_1199
_Label_1199:
!   if sizeInBytes >= 0 then goto _Label_1198		(int)
	load	[r14+16],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1198
!	jmp	_Label_1197
_Label_1197:
! THEN...
	mov	2103,r13		! source line 2103
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2103,r13		! source line 2103
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,308,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1198:
! ASSIGNMENT STATEMENT...
	mov	2107,r13		! source line 2107
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1208 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-232]
!   Data Move: _temp_1207 = *_temp_1208  (sizeInBytes=4)
	load	[r14+-232],r1
	load	[r1],r1
	store	r1,[r14+-236]
!   if intIsZero (_temp_1207) then goto _runtimeErrorNullPointer
	load	[r14+-236],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1209 = _temp_1207 + 124
	load	[r14+-236],r1
	add	r1,124,r1
	store	r1,[r14+-228]
!   Move address of _temp_1209 [fileDesc ] into _temp_1210
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-228],r1
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
	store	r2,[r14+-224]
!   Data Move: openFile = *_temp_1210  (sizeInBytes=4)
	load	[r14+-224],r1
	load	[r1],r1
	store	r1,[r14+-292]
! ASSIGNMENT STATEMENT...
	mov	2108,r13		! source line 2108
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-260]
! ASSIGNMENT STATEMENT...
	mov	2109,r13		! source line 2109
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+-260],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-264]
! ASSIGNMENT STATEMENT...
	mov	2110,r13		! source line 2110
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+-260],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-268]
! ASSIGNMENT STATEMENT...
	mov	2111,r13		! source line 2111
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-272]
! ASSIGNMENT STATEMENT...
	mov	2112,r13		! source line 2112
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-292],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1211 = openFile + 16
	load	[r14+-292],r1
	add	r1,16,r1
	store	r1,[r14+-220]
!   Data Move: nextPosInFile = *_temp_1211  (sizeInBytes=4)
	load	[r14+-220],r1
	load	[r1],r1
	store	r1,[r14+-276]
! ASSIGNMENT STATEMENT...
	mov	2113,r13		! source line 2113
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-292],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1213 = openFile + 20
	load	[r14+-292],r1
	add	r1,20,r1
	store	r1,[r14+-212]
!   Data Move: _temp_1212 = *_temp_1213  (sizeInBytes=4)
	load	[r14+-212],r1
	load	[r1],r1
	store	r1,[r14+-216]
!   if intIsZero (_temp_1212) then goto _runtimeErrorNullPointer
	load	[r14+-216],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1214 = _temp_1212 + 24
	load	[r14+-216],r1
	add	r1,24,r1
	store	r1,[r14+-208]
!   Data Move: fileSize = *_temp_1214  (sizeInBytes=4)
	load	[r14+-208],r1
	load	[r1],r1
	store	r1,[r14+-284]
! WHILE STATEMENT...
	mov	2114,r13		! source line 2114
	mov	"\0\0WH",r10
_Label_1215:
!	jmp	_Label_1216
_Label_1216:
	mov	2114,r13		! source line 2114
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2115,r13		! source line 2115
	mov	"\0\0AS",r10
!   currentChunkSize = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-268],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-280]
! IF STATEMENT...
	mov	2116,r13		! source line 2116
	mov	"\0\0IF",r10
!   _temp_1220 = nextPosInFile + currentChunkSize		(int)
	load	[r14+-276],r1
	load	[r14+-280],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-204]
!   if _temp_1220 <= fileSize then goto _Label_1219		(int)
	load	[r14+-204],r1
	load	[r14+-284],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1219
!	jmp	_Label_1218
_Label_1218:
! THEN...
	mov	2117,r13		! source line 2117
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2117,r13		! source line 2117
	mov	"\0\0AS",r10
!   currentChunkSize = fileSize - nextPosInFile		(int)
	load	[r14+-284],r1
	load	[r14+-276],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-280]
! END IF...
_Label_1219:
! IF STATEMENT...
	mov	2119,r13		! source line 2119
	mov	"\0\0IF",r10
!   _temp_1223 = copiedSoFar + currentChunkSize		(int)
	load	[r14+-272],r1
	load	[r14+-280],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-200]
!   if _temp_1223 <= sizeInBytes then goto _Label_1222		(int)
	load	[r14+-200],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1222
!	jmp	_Label_1221
_Label_1221:
! THEN...
	mov	2120,r13		! source line 2120
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2120,r13		! source line 2120
	mov	"\0\0AS",r10
!   currentChunkSize = sizeInBytes - copiedSoFar		(int)
	load	[r14+16],r1
	load	[r14+-272],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-280]
! END IF...
_Label_1222:
! IF STATEMENT...
	mov	2122,r13		! source line 2122
	mov	"\0\0IF",r10
!   if currentChunkSize > 0 then goto _Label_1225		(int)
	load	[r14+-280],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1225
!	jmp	_Label_1224
_Label_1224:
! THEN...
	mov	2123,r13		! source line 2123
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2123,r13		! source line 2123
	mov	"\0\0BR",r10
	jmp	_Label_1217
! END IF...
_Label_1225:
! IF STATEMENT...
	mov	2125,r13		! source line 2125
	mov	"\0\0IF",r10
!   if virtPage >= 0 then goto _Label_1230		(int)
	load	[r14+-264],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1230
	jmp	_Label_1226
_Label_1230:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1233 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-188]
!   Data Move: _temp_1232 = *_temp_1233  (sizeInBytes=4)
	load	[r14+-188],r1
	load	[r1],r1
	store	r1,[r14+-192]
!   if intIsZero (_temp_1232) then goto _runtimeErrorNullPointer
	load	[r14+-192],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1234 = _temp_1232 + 32
	load	[r14+-192],r1
	add	r1,32,r1
	store	r1,[r14+-184]
!   _temp_1235 = _temp_1234 + 4
	load	[r14+-184],r1
	add	r1,4,r1
	store	r1,[r14+-180]
!   Data Move: _temp_1231 = *_temp_1235  (sizeInBytes=4)
	load	[r14+-180],r1
	load	[r1],r1
	store	r1,[r14+-196]
!   if virtPage <= _temp_1231 then goto _Label_1229		(int)
	load	[r14+-264],r1
	load	[r14+-196],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1229
	jmp	_Label_1226
_Label_1229:
	mov	2125,r13		! source line 2125
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1238 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-172]
!   Data Move: _temp_1237 = *_temp_1238  (sizeInBytes=4)
	load	[r14+-172],r1
	load	[r1],r1
	store	r1,[r14+-176]
!   if intIsZero (_temp_1237) then goto _runtimeErrorNullPointer
	load	[r14+-176],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1239 = _temp_1237 + 32
	load	[r14+-176],r1
	add	r1,32,r1
	store	r1,[r14+-168]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-264],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-168],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1236  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-16]
!   _temp_1240 = _temp_1236 XOR 0		(bool)
	loadb	[r14+-16],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-15]
!   if _temp_1240 then goto _Label_1228 else goto _Label_1226
	loadb	[r14+-15],r1
	cmp	r1,0
	be	_Label_1226
	jmp	_Label_1228
_Label_1228:
	mov	2125,r13		! source line 2125
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1243 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-160]
!   Data Move: _temp_1242 = *_temp_1243  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-164]
!   if intIsZero (_temp_1242) then goto _runtimeErrorNullPointer
	load	[r14+-164],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1244 = _temp_1242 + 32
	load	[r14+-164],r1
	add	r1,32,r1
	store	r1,[r14+-156]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-264],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-156],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_1241  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-14]
!   _temp_1245 = _temp_1241 XOR 0		(bool)
	loadb	[r14+-14],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-13]
!   if _temp_1245 then goto _Label_1227 else goto _Label_1226
	loadb	[r14+-13],r1
	cmp	r1,0
	be	_Label_1226
	jmp	_Label_1227
_Label_1226:
! THEN...
	mov	2126,r13		! source line 2126
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2126,r13		! source line 2126
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,308,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1227:
! ASSIGNMENT STATEMENT...
	mov	2128,r13		! source line 2128
	mov	"\0\0AS",r10
!   nextPosInFile = nextPosInFile + currentChunkSize		(int)
	load	[r14+-276],r1
	load	[r14+-280],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-276]
! ASSIGNMENT STATEMENT...
	mov	2129,r13		! source line 2129
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + currentChunkSize		(int)
	load	[r14+-272],r1
	load	[r14+-280],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-272]
! ASSIGNMENT STATEMENT...
	mov	2130,r13		! source line 2130
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-264],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-264]
! ASSIGNMENT STATEMENT...
	mov	2131,r13		! source line 2131
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-268]
! IF STATEMENT...
	mov	2132,r13		! source line 2132
	mov	"\0\0IF",r10
!   if copiedSoFar != sizeInBytes then goto _Label_1247		(int)
	load	[r14+-272],r1
	load	[r14+16],r2
	cmp	r1,r2
	bne	_Label_1247
!	jmp	_Label_1246
_Label_1246:
! THEN...
	mov	2133,r13		! source line 2133
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2133,r13		! source line 2133
	mov	"\0\0BR",r10
	jmp	_Label_1217
! END IF...
_Label_1247:
! END WHILE...
	jmp	_Label_1215
_Label_1217:
! ASSIGNMENT STATEMENT...
	mov	2138,r13		! source line 2138
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1249 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-148]
!   Data Move: _temp_1248 = *_temp_1249  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r1],r1
	store	r1,[r14+-152]
!   if intIsZero (_temp_1248) then goto _runtimeErrorNullPointer
	load	[r14+-152],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1250 = _temp_1248 + 124
	load	[r14+-152],r1
	add	r1,124,r1
	store	r1,[r14+-144]
!   Move address of _temp_1250 [fileDesc ] into _temp_1251
!     make sure index expr is >= 0
	load	[r14+8],r2
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
!   Data Move: openFile = *_temp_1251  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-292]
! ASSIGNMENT STATEMENT...
	mov	2139,r13		! source line 2139
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-260]
! ASSIGNMENT STATEMENT...
	mov	2140,r13		! source line 2140
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+-260],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-264]
! ASSIGNMENT STATEMENT...
	mov	2141,r13		! source line 2141
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+-260],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-268]
! ASSIGNMENT STATEMENT...
	mov	2142,r13		! source line 2142
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-272]
! ASSIGNMENT STATEMENT...
	mov	2143,r13		! source line 2143
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-292],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1252 = openFile + 16
	load	[r14+-292],r1
	add	r1,16,r1
	store	r1,[r14+-136]
!   Data Move: nextPosInFile = *_temp_1252  (sizeInBytes=4)
	load	[r14+-136],r1
	load	[r1],r1
	store	r1,[r14+-276]
! ASSIGNMENT STATEMENT...
	mov	2144,r13		! source line 2144
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-292],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1254 = openFile + 20
	load	[r14+-292],r1
	add	r1,20,r1
	store	r1,[r14+-128]
!   Data Move: _temp_1253 = *_temp_1254  (sizeInBytes=4)
	load	[r14+-128],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   if intIsZero (_temp_1253) then goto _runtimeErrorNullPointer
	load	[r14+-132],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1255 = _temp_1253 + 24
	load	[r14+-132],r1
	add	r1,24,r1
	store	r1,[r14+-124]
!   Data Move: fileSize = *_temp_1255  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-284]
! WHILE STATEMENT...
	mov	2146,r13		! source line 2146
	mov	"\0\0WH",r10
_Label_1256:
!	jmp	_Label_1257
_Label_1257:
	mov	2146,r13		! source line 2146
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2147,r13		! source line 2147
	mov	"\0\0AS",r10
!   currentChunkSize = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-268],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-280]
! IF STATEMENT...
	mov	2148,r13		! source line 2148
	mov	"\0\0IF",r10
!   _temp_1261 = nextPosInFile + currentChunkSize		(int)
	load	[r14+-276],r1
	load	[r14+-280],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
!   if _temp_1261 <= fileSize then goto _Label_1260		(int)
	load	[r14+-120],r1
	load	[r14+-284],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1260
!	jmp	_Label_1259
_Label_1259:
! THEN...
	mov	2149,r13		! source line 2149
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2149,r13		! source line 2149
	mov	"\0\0AS",r10
!   currentChunkSize = fileSize - nextPosInFile		(int)
	load	[r14+-284],r1
	load	[r14+-276],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-280]
! END IF...
_Label_1260:
! IF STATEMENT...
	mov	2151,r13		! source line 2151
	mov	"\0\0IF",r10
!   _temp_1264 = copiedSoFar + currentChunkSize		(int)
	load	[r14+-272],r1
	load	[r14+-280],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
!   if _temp_1264 <= sizeInBytes then goto _Label_1263		(int)
	load	[r14+-116],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1263
!	jmp	_Label_1262
_Label_1262:
! THEN...
	mov	2152,r13		! source line 2152
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2152,r13		! source line 2152
	mov	"\0\0AS",r10
!   currentChunkSize = sizeInBytes - copiedSoFar		(int)
	load	[r14+16],r1
	load	[r14+-272],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-280]
! END IF...
_Label_1263:
! IF STATEMENT...
	mov	2154,r13		! source line 2154
	mov	"\0\0IF",r10
!   if currentChunkSize > 0 then goto _Label_1266		(int)
	load	[r14+-280],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1266
!	jmp	_Label_1265
_Label_1265:
! THEN...
	mov	2155,r13		! source line 2155
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2155,r13		! source line 2155
	mov	"\0\0BR",r10
	jmp	_Label_1258
! END IF...
_Label_1266:
! IF STATEMENT...
	mov	2157,r13		! source line 2157
	mov	"\0\0IF",r10
!   if virtPage >= 0 then goto _Label_1271		(int)
	load	[r14+-264],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1271
	jmp	_Label_1267
_Label_1271:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1274 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-104]
!   Data Move: _temp_1273 = *_temp_1274  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_1273) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1275 = _temp_1273 + 32
	load	[r14+-108],r1
	add	r1,32,r1
	store	r1,[r14+-100]
!   _temp_1276 = _temp_1275 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-96]
!   Data Move: _temp_1272 = *_temp_1276  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if virtPage <= _temp_1272 then goto _Label_1270		(int)
	load	[r14+-264],r1
	load	[r14+-112],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1270
	jmp	_Label_1267
_Label_1270:
	mov	2157,r13		! source line 2157
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1279 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-88]
!   Data Move: _temp_1278 = *_temp_1279  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_1278) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1280 = _temp_1278 + 32
	load	[r14+-92],r1
	add	r1,32,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-264],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-84],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1277  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-12]
!   _temp_1281 = _temp_1277 XOR 0		(bool)
	loadb	[r14+-12],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-11]
!   if _temp_1281 then goto _Label_1269 else goto _Label_1267
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_1267
	jmp	_Label_1269
_Label_1269:
	mov	2157,r13		! source line 2157
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1284 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-76]
!   Data Move: _temp_1283 = *_temp_1284  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_1283) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1285 = _temp_1283 + 32
	load	[r14+-80],r1
	add	r1,32,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-264],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_1282  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   _temp_1286 = _temp_1282 XOR 0		(bool)
	loadb	[r14+-10],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_1286 then goto _Label_1268 else goto _Label_1267
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1267
	jmp	_Label_1268
_Label_1267:
! THEN...
	mov	2158,r13		! source line 2158
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2158,r13		! source line 2158
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,308,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1268:
! SEND STATEMENT...
	mov	2160,r13		! source line 2160
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1288 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-64]
!   Data Move: _temp_1287 = *_temp_1288  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_1287) then goto _runtimeErrorNullPointer
	load	[r14+-68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1289 = _temp_1287 + 32
	load	[r14+-68],r1
	add	r1,32,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-264],r1
	store	r1,[r15+4]
!   Send message SetReferenced
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,44,r2
	call	r2
! SEND STATEMENT...
	mov	2161,r13		! source line 2161
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1291 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-52]
!   Data Move: _temp_1290 = *_temp_1291  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_1290) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1292 = _temp_1290 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-264],r1
	store	r1,[r15+4]
!   Send message SetDirty
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,40,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2162,r13		! source line 2162
	mov	"\0\0AS",r10
	mov	2162,r13		! source line 2162
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1295 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-36]
!   Data Move: _temp_1294 = *_temp_1295  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_1294) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1296 = _temp_1294 + 32
	load	[r14+-40],r1
	add	r1,32,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-264],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1293  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
!   destAddr = _temp_1293 + offset		(int)
	load	[r14+-44],r1
	load	[r14+-268],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-288]
! ASSIGNMENT STATEMENT...
	mov	2163,r13		! source line 2163
	mov	"\0\0AS",r10
	mov	2163,r13		! source line 2163
	mov	"\0\0SE",r10
!   _temp_1297 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=openFile  sizeInBytes=4
	load	[r14+-292],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=destAddr  sizeInBytes=4
	load	[r14+-288],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=nextPosInFile  sizeInBytes=4
	load	[r14+-276],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=currentChunkSize  sizeInBytes=4
	load	[r14+-280],r1
	store	r1,[r15+16]
!   Send message SynchWrite
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=readSuccess  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-17]
! ASSIGNMENT STATEMENT...
	mov	2164,r13		! source line 2164
	mov	"\0\0AS",r10
!   nextPosInFile = nextPosInFile + currentChunkSize		(int)
	load	[r14+-276],r1
	load	[r14+-280],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-276]
! ASSIGNMENT STATEMENT...
	mov	2165,r13		! source line 2165
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + currentChunkSize		(int)
	load	[r14+-272],r1
	load	[r14+-280],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-272]
! ASSIGNMENT STATEMENT...
	mov	2166,r13		! source line 2166
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-264],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-264]
! ASSIGNMENT STATEMENT...
	mov	2167,r13		! source line 2167
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-268]
! IF STATEMENT...
	mov	2168,r13		! source line 2168
	mov	"\0\0IF",r10
!   if copiedSoFar != sizeInBytes then goto _Label_1299		(int)
	load	[r14+-272],r1
	load	[r14+16],r2
	cmp	r1,r2
	bne	_Label_1299
!	jmp	_Label_1298
_Label_1298:
! THEN...
	mov	2169,r13		! source line 2169
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2169,r13		! source line 2169
	mov	"\0\0BR",r10
	jmp	_Label_1258
! END IF...
_Label_1299:
! END WHILE...
	jmp	_Label_1256
_Label_1258:
! ASSIGNMENT STATEMENT...
	mov	2173,r13		! source line 2173
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-292],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1300 = openFile + 16
	load	[r14+-292],r1
	add	r1,16,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1300 = nextPosInFile  (sizeInBytes=4)
	load	[r14+-276],r1
	load	[r14+-24],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2175,r13		! source line 2175
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-272],r1
	store	r1,[r14+8]
	add	r15,308,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Write:
	.word	_sourceFileName
	.word	_Label_1301
	.word	12		! total size of parameters
	.word	304		! frame size = 304
	.word	_Label_1302
	.word	8
	.word	4
	.word	_Label_1303
	.word	12
	.word	4
	.word	_Label_1304
	.word	16
	.word	4
	.word	_Label_1305
	.word	-24
	.word	4
	.word	_Label_1306
	.word	-28
	.word	4
	.word	_Label_1307
	.word	-32
	.word	4
	.word	_Label_1308
	.word	-36
	.word	4
	.word	_Label_1309
	.word	-40
	.word	4
	.word	_Label_1310
	.word	-44
	.word	4
	.word	_Label_1311
	.word	-48
	.word	4
	.word	_Label_1312
	.word	-52
	.word	4
	.word	_Label_1313
	.word	-56
	.word	4
	.word	_Label_1314
	.word	-60
	.word	4
	.word	_Label_1315
	.word	-64
	.word	4
	.word	_Label_1316
	.word	-68
	.word	4
	.word	_Label_1317
	.word	-9
	.word	1
	.word	_Label_1318
	.word	-72
	.word	4
	.word	_Label_1319
	.word	-76
	.word	4
	.word	_Label_1320
	.word	-80
	.word	4
	.word	_Label_1321
	.word	-10
	.word	1
	.word	_Label_1322
	.word	-11
	.word	1
	.word	_Label_1323
	.word	-84
	.word	4
	.word	_Label_1324
	.word	-88
	.word	4
	.word	_Label_1325
	.word	-92
	.word	4
	.word	_Label_1326
	.word	-12
	.word	1
	.word	_Label_1327
	.word	-96
	.word	4
	.word	_Label_1328
	.word	-100
	.word	4
	.word	_Label_1329
	.word	-104
	.word	4
	.word	_Label_1330
	.word	-108
	.word	4
	.word	_Label_1331
	.word	-112
	.word	4
	.word	_Label_1332
	.word	-116
	.word	4
	.word	_Label_1333
	.word	-120
	.word	4
	.word	_Label_1334
	.word	-124
	.word	4
	.word	_Label_1335
	.word	-128
	.word	4
	.word	_Label_1336
	.word	-132
	.word	4
	.word	_Label_1337
	.word	-136
	.word	4
	.word	_Label_1338
	.word	-140
	.word	4
	.word	_Label_1339
	.word	-144
	.word	4
	.word	_Label_1340
	.word	-148
	.word	4
	.word	_Label_1341
	.word	-152
	.word	4
	.word	_Label_1342
	.word	-13
	.word	1
	.word	_Label_1343
	.word	-156
	.word	4
	.word	_Label_1344
	.word	-160
	.word	4
	.word	_Label_1345
	.word	-164
	.word	4
	.word	_Label_1346
	.word	-14
	.word	1
	.word	_Label_1347
	.word	-15
	.word	1
	.word	_Label_1348
	.word	-168
	.word	4
	.word	_Label_1349
	.word	-172
	.word	4
	.word	_Label_1350
	.word	-176
	.word	4
	.word	_Label_1351
	.word	-16
	.word	1
	.word	_Label_1352
	.word	-180
	.word	4
	.word	_Label_1353
	.word	-184
	.word	4
	.word	_Label_1354
	.word	-188
	.word	4
	.word	_Label_1355
	.word	-192
	.word	4
	.word	_Label_1356
	.word	-196
	.word	4
	.word	_Label_1357
	.word	-200
	.word	4
	.word	_Label_1358
	.word	-204
	.word	4
	.word	_Label_1359
	.word	-208
	.word	4
	.word	_Label_1360
	.word	-212
	.word	4
	.word	_Label_1361
	.word	-216
	.word	4
	.word	_Label_1362
	.word	-220
	.word	4
	.word	_Label_1363
	.word	-224
	.word	4
	.word	_Label_1364
	.word	-228
	.word	4
	.word	_Label_1365
	.word	-232
	.word	4
	.word	_Label_1366
	.word	-236
	.word	4
	.word	_Label_1367
	.word	-240
	.word	4
	.word	_Label_1368
	.word	-244
	.word	4
	.word	_Label_1369
	.word	-248
	.word	4
	.word	_Label_1370
	.word	-252
	.word	4
	.word	_Label_1371
	.word	-256
	.word	4
	.word	_Label_1372
	.word	-260
	.word	4
	.word	_Label_1373
	.word	-264
	.word	4
	.word	_Label_1374
	.word	-268
	.word	4
	.word	_Label_1375
	.word	-272
	.word	4
	.word	_Label_1376
	.word	-276
	.word	4
	.word	_Label_1377
	.word	-280
	.word	4
	.word	_Label_1378
	.word	-284
	.word	4
	.word	_Label_1379
	.word	-288
	.word	4
	.word	_Label_1380
	.word	-292
	.word	4
	.word	_Label_1381
	.word	-17
	.word	1
	.word	0
_Label_1301:
	.ascii	"Handle_Sys_Write\0"
	.align
_Label_1302:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_1303:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_1304:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_1305:
	.byte	'?'
	.ascii	"_temp_1300\0"
	.align
_Label_1306:
	.byte	'?'
	.ascii	"_temp_1297\0"
	.align
_Label_1307:
	.byte	'?'
	.ascii	"_temp_1296\0"
	.align
_Label_1308:
	.byte	'?'
	.ascii	"_temp_1295\0"
	.align
_Label_1309:
	.byte	'?'
	.ascii	"_temp_1294\0"
	.align
_Label_1310:
	.byte	'?'
	.ascii	"_temp_1293\0"
	.align
_Label_1311:
	.byte	'?'
	.ascii	"_temp_1292\0"
	.align
_Label_1312:
	.byte	'?'
	.ascii	"_temp_1291\0"
	.align
_Label_1313:
	.byte	'?'
	.ascii	"_temp_1290\0"
	.align
_Label_1314:
	.byte	'?'
	.ascii	"_temp_1289\0"
	.align
_Label_1315:
	.byte	'?'
	.ascii	"_temp_1288\0"
	.align
_Label_1316:
	.byte	'?'
	.ascii	"_temp_1287\0"
	.align
_Label_1317:
	.byte	'C'
	.ascii	"_temp_1286\0"
	.align
_Label_1318:
	.byte	'?'
	.ascii	"_temp_1285\0"
	.align
_Label_1319:
	.byte	'?'
	.ascii	"_temp_1284\0"
	.align
_Label_1320:
	.byte	'?'
	.ascii	"_temp_1283\0"
	.align
_Label_1321:
	.byte	'C'
	.ascii	"_temp_1282\0"
	.align
_Label_1322:
	.byte	'C'
	.ascii	"_temp_1281\0"
	.align
_Label_1323:
	.byte	'?'
	.ascii	"_temp_1280\0"
	.align
_Label_1324:
	.byte	'?'
	.ascii	"_temp_1279\0"
	.align
_Label_1325:
	.byte	'?'
	.ascii	"_temp_1278\0"
	.align
_Label_1326:
	.byte	'C'
	.ascii	"_temp_1277\0"
	.align
_Label_1327:
	.byte	'?'
	.ascii	"_temp_1276\0"
	.align
_Label_1328:
	.byte	'?'
	.ascii	"_temp_1275\0"
	.align
_Label_1329:
	.byte	'?'
	.ascii	"_temp_1274\0"
	.align
_Label_1330:
	.byte	'?'
	.ascii	"_temp_1273\0"
	.align
_Label_1331:
	.byte	'?'
	.ascii	"_temp_1272\0"
	.align
_Label_1332:
	.byte	'?'
	.ascii	"_temp_1264\0"
	.align
_Label_1333:
	.byte	'?'
	.ascii	"_temp_1261\0"
	.align
_Label_1334:
	.byte	'?'
	.ascii	"_temp_1255\0"
	.align
_Label_1335:
	.byte	'?'
	.ascii	"_temp_1254\0"
	.align
_Label_1336:
	.byte	'?'
	.ascii	"_temp_1253\0"
	.align
_Label_1337:
	.byte	'?'
	.ascii	"_temp_1252\0"
	.align
_Label_1338:
	.byte	'?'
	.ascii	"_temp_1251\0"
	.align
_Label_1339:
	.byte	'?'
	.ascii	"_temp_1250\0"
	.align
_Label_1340:
	.byte	'?'
	.ascii	"_temp_1249\0"
	.align
_Label_1341:
	.byte	'?'
	.ascii	"_temp_1248\0"
	.align
_Label_1342:
	.byte	'C'
	.ascii	"_temp_1245\0"
	.align
_Label_1343:
	.byte	'?'
	.ascii	"_temp_1244\0"
	.align
_Label_1344:
	.byte	'?'
	.ascii	"_temp_1243\0"
	.align
_Label_1345:
	.byte	'?'
	.ascii	"_temp_1242\0"
	.align
_Label_1346:
	.byte	'C'
	.ascii	"_temp_1241\0"
	.align
_Label_1347:
	.byte	'C'
	.ascii	"_temp_1240\0"
	.align
_Label_1348:
	.byte	'?'
	.ascii	"_temp_1239\0"
	.align
_Label_1349:
	.byte	'?'
	.ascii	"_temp_1238\0"
	.align
_Label_1350:
	.byte	'?'
	.ascii	"_temp_1237\0"
	.align
_Label_1351:
	.byte	'C'
	.ascii	"_temp_1236\0"
	.align
_Label_1352:
	.byte	'?'
	.ascii	"_temp_1235\0"
	.align
_Label_1353:
	.byte	'?'
	.ascii	"_temp_1234\0"
	.align
_Label_1354:
	.byte	'?'
	.ascii	"_temp_1233\0"
	.align
_Label_1355:
	.byte	'?'
	.ascii	"_temp_1232\0"
	.align
_Label_1356:
	.byte	'?'
	.ascii	"_temp_1231\0"
	.align
_Label_1357:
	.byte	'?'
	.ascii	"_temp_1223\0"
	.align
_Label_1358:
	.byte	'?'
	.ascii	"_temp_1220\0"
	.align
_Label_1359:
	.byte	'?'
	.ascii	"_temp_1214\0"
	.align
_Label_1360:
	.byte	'?'
	.ascii	"_temp_1213\0"
	.align
_Label_1361:
	.byte	'?'
	.ascii	"_temp_1212\0"
	.align
_Label_1362:
	.byte	'?'
	.ascii	"_temp_1211\0"
	.align
_Label_1363:
	.byte	'?'
	.ascii	"_temp_1210\0"
	.align
_Label_1364:
	.byte	'?'
	.ascii	"_temp_1209\0"
	.align
_Label_1365:
	.byte	'?'
	.ascii	"_temp_1208\0"
	.align
_Label_1366:
	.byte	'?'
	.ascii	"_temp_1207\0"
	.align
_Label_1367:
	.byte	'?'
	.ascii	"_temp_1206\0"
	.align
_Label_1368:
	.byte	'?'
	.ascii	"_temp_1205\0"
	.align
_Label_1369:
	.byte	'?'
	.ascii	"_temp_1204\0"
	.align
_Label_1370:
	.byte	'?'
	.ascii	"_temp_1203\0"
	.align
_Label_1371:
	.byte	'?'
	.ascii	"_temp_1202\0"
	.align
_Label_1372:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1373:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_1374:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_1375:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_1376:
	.byte	'I'
	.ascii	"nextPosInFile\0"
	.align
_Label_1377:
	.byte	'I'
	.ascii	"currentChunkSize\0"
	.align
_Label_1378:
	.byte	'I'
	.ascii	"fileSize\0"
	.align
_Label_1379:
	.byte	'I'
	.ascii	"destAddr\0"
	.align
_Label_1380:
	.byte	'P'
	.ascii	"openFile\0"
	.align
_Label_1381:
	.byte	'B'
	.ascii	"readSuccess\0"
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
	mov	38,r1
_Label_3956:
	push	r0
	sub	r1,1,r1
	bne	_Label_3956
	mov	2180,r13		! source line 2180
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2184,r13		! source line 2184
	mov	"\0\0SE",r10
!   _temp_1382 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-152]
!   _temp_1383 = _temp_1382 + 4
	load	[r14+-152],r1
	add	r1,4,r1
	store	r1,[r14+-148]
!   Send message Lock
	load	[r14+-148],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	2186,r13		! source line 2186
	mov	"\0\0IF",r10
!   if fileDesc >= 0 then goto _Label_1389		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1389
	jmp	_Label_1384
_Label_1389:
!   if fileDesc <= 9 then goto _Label_1388		(int)
	load	[r14+8],r1
	mov	9,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1388
	jmp	_Label_1384
_Label_1388:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1392 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-136]
!   Data Move: _temp_1391 = *_temp_1392  (sizeInBytes=4)
	load	[r14+-136],r1
	load	[r1],r1
	store	r1,[r14+-140]
!   if intIsZero (_temp_1391) then goto _runtimeErrorNullPointer
	load	[r14+-140],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1393 = _temp_1391 + 124
	load	[r14+-140],r1
	add	r1,124,r1
	store	r1,[r14+-132]
!   Move address of _temp_1393 [fileDesc ] into _temp_1394
!     make sure index expr is >= 0
	load	[r14+8],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-128]
!   Data Move: _temp_1390 = *_temp_1394  (sizeInBytes=4)
	load	[r14+-128],r1
	load	[r1],r1
	store	r1,[r14+-144]
!   if intIsZero (_temp_1390) then goto _Label_1384
	load	[r14+-144],r1
	cmp	r1,r0
	be	_Label_1384
!	jmp	_Label_1387
_Label_1387:
!   if newCurrentPos >= -1 then goto _Label_1386		(int)
	load	[r14+12],r1
	mov	-1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1386
	jmp	_Label_1384
_Label_1386:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1399 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-108]
!   Data Move: _temp_1398 = *_temp_1399  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if intIsZero (_temp_1398) then goto _runtimeErrorNullPointer
	load	[r14+-112],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1400 = _temp_1398 + 124
	load	[r14+-112],r1
	add	r1,124,r1
	store	r1,[r14+-104]
!   Move address of _temp_1400 [fileDesc ] into _temp_1401
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-104],r1
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
	store	r2,[r14+-100]
!   Data Move: _temp_1397 = *_temp_1401  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if intIsZero (_temp_1397) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1402 = _temp_1397 + 20
	load	[r14+-116],r1
	add	r1,20,r1
	store	r1,[r14+-96]
!   Data Move: _temp_1396 = *_temp_1402  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-120]
!   if intIsZero (_temp_1396) then goto _runtimeErrorNullPointer
	load	[r14+-120],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1403 = _temp_1396 + 24
	load	[r14+-120],r1
	add	r1,24,r1
	store	r1,[r14+-92]
!   Data Move: _temp_1395 = *_temp_1403  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-124]
!   if newCurrentPos <= _temp_1395 then goto _Label_1385		(int)
	load	[r14+12],r1
	load	[r14+-124],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1385
!	jmp	_Label_1384
_Label_1384:
! THEN...
	mov	2187,r13		! source line 2187
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2187,r13		! source line 2187
	mov	"\0\0SE",r10
!   _temp_1404 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-88]
!   _temp_1405 = _temp_1404 + 4
	load	[r14+-88],r1
	add	r1,4,r1
	store	r1,[r14+-84]
!   Send message Unlock
	load	[r14+-84],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2188,r13		! source line 2188
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,156,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1385:
! ASSIGNMENT STATEMENT...
	mov	2190,r13		! source line 2190
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1407 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-76]
!   Data Move: _temp_1406 = *_temp_1407  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_1406) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1408 = _temp_1406 + 124
	load	[r14+-80],r1
	add	r1,124,r1
	store	r1,[r14+-72]
!   Move address of _temp_1408 [fileDesc ] into _temp_1409
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-72],r1
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
	store	r2,[r14+-68]
!   Data Move: openFile = *_temp_1409  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-156]
! IF STATEMENT...
	mov	2191,r13		! source line 2191
	mov	"\0\0IF",r10
!   if newCurrentPos != -1 then goto _Label_1411		(int)
	load	[r14+12],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_1411
!	jmp	_Label_1410
_Label_1410:
! THEN...
	mov	2192,r13		! source line 2192
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2192,r13		! source line 2192
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1412 = openFile + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-64]
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1415 = openFile + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_1414 = *_temp_1415  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_1414) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1416 = _temp_1414 + 24
	load	[r14+-56],r1
	add	r1,24,r1
	store	r1,[r14+-48]
!   Data Move: _temp_1413 = *_temp_1416  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   Data Move: *_temp_1412 = _temp_1413  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r14+-64],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2193,r13		! source line 2193
	mov	"\0\0SE",r10
!   _temp_1417 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-44]
!   _temp_1418 = _temp_1417 + 4
	load	[r14+-44],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Send message Unlock
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2194,r13		! source line 2194
	mov	"\0\0RE",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1421 = openFile + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: _temp_1420 = *_temp_1421  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_1420) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1422 = _temp_1420 + 24
	load	[r14+-32],r1
	add	r1,24,r1
	store	r1,[r14+-24]
!   Data Move: _temp_1419 = *_temp_1422  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   ReturnResult: _temp_1419  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,156,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1411:
! ASSIGNMENT STATEMENT...
	mov	2196,r13		! source line 2196
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1423 = openFile + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1423 = newCurrentPos  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2197,r13		! source line 2197
	mov	"\0\0SE",r10
!   _temp_1424 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-16]
!   _temp_1425 = _temp_1424 + 4
	load	[r14+-16],r1
	add	r1,4,r1
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
	mov	2198,r13		! source line 2198
	mov	"\0\0RE",r10
!   ReturnResult: newCurrentPos  (sizeInBytes=4)
	load	[r14+12],r1
	store	r1,[r14+8]
	add	r15,156,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Seek:
	.word	_sourceFileName
	.word	_Label_1426
	.word	8		! total size of parameters
	.word	152		! frame size = 152
	.word	_Label_1427
	.word	8
	.word	4
	.word	_Label_1428
	.word	12
	.word	4
	.word	_Label_1429
	.word	-12
	.word	4
	.word	_Label_1430
	.word	-16
	.word	4
	.word	_Label_1431
	.word	-20
	.word	4
	.word	_Label_1432
	.word	-24
	.word	4
	.word	_Label_1433
	.word	-28
	.word	4
	.word	_Label_1434
	.word	-32
	.word	4
	.word	_Label_1435
	.word	-36
	.word	4
	.word	_Label_1436
	.word	-40
	.word	4
	.word	_Label_1437
	.word	-44
	.word	4
	.word	_Label_1438
	.word	-48
	.word	4
	.word	_Label_1439
	.word	-52
	.word	4
	.word	_Label_1440
	.word	-56
	.word	4
	.word	_Label_1441
	.word	-60
	.word	4
	.word	_Label_1442
	.word	-64
	.word	4
	.word	_Label_1443
	.word	-68
	.word	4
	.word	_Label_1444
	.word	-72
	.word	4
	.word	_Label_1445
	.word	-76
	.word	4
	.word	_Label_1446
	.word	-80
	.word	4
	.word	_Label_1447
	.word	-84
	.word	4
	.word	_Label_1448
	.word	-88
	.word	4
	.word	_Label_1449
	.word	-92
	.word	4
	.word	_Label_1450
	.word	-96
	.word	4
	.word	_Label_1451
	.word	-100
	.word	4
	.word	_Label_1452
	.word	-104
	.word	4
	.word	_Label_1453
	.word	-108
	.word	4
	.word	_Label_1454
	.word	-112
	.word	4
	.word	_Label_1455
	.word	-116
	.word	4
	.word	_Label_1456
	.word	-120
	.word	4
	.word	_Label_1457
	.word	-124
	.word	4
	.word	_Label_1458
	.word	-128
	.word	4
	.word	_Label_1459
	.word	-132
	.word	4
	.word	_Label_1460
	.word	-136
	.word	4
	.word	_Label_1461
	.word	-140
	.word	4
	.word	_Label_1462
	.word	-144
	.word	4
	.word	_Label_1463
	.word	-148
	.word	4
	.word	_Label_1464
	.word	-152
	.word	4
	.word	_Label_1465
	.word	-156
	.word	4
	.word	0
_Label_1426:
	.ascii	"Handle_Sys_Seek\0"
	.align
_Label_1427:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_1428:
	.byte	'I'
	.ascii	"newCurrentPos\0"
	.align
_Label_1429:
	.byte	'?'
	.ascii	"_temp_1425\0"
	.align
_Label_1430:
	.byte	'?'
	.ascii	"_temp_1424\0"
	.align
_Label_1431:
	.byte	'?'
	.ascii	"_temp_1423\0"
	.align
_Label_1432:
	.byte	'?'
	.ascii	"_temp_1422\0"
	.align
_Label_1433:
	.byte	'?'
	.ascii	"_temp_1421\0"
	.align
_Label_1434:
	.byte	'?'
	.ascii	"_temp_1420\0"
	.align
_Label_1435:
	.byte	'?'
	.ascii	"_temp_1419\0"
	.align
_Label_1436:
	.byte	'?'
	.ascii	"_temp_1418\0"
	.align
_Label_1437:
	.byte	'?'
	.ascii	"_temp_1417\0"
	.align
_Label_1438:
	.byte	'?'
	.ascii	"_temp_1416\0"
	.align
_Label_1439:
	.byte	'?'
	.ascii	"_temp_1415\0"
	.align
_Label_1440:
	.byte	'?'
	.ascii	"_temp_1414\0"
	.align
_Label_1441:
	.byte	'?'
	.ascii	"_temp_1413\0"
	.align
_Label_1442:
	.byte	'?'
	.ascii	"_temp_1412\0"
	.align
_Label_1443:
	.byte	'?'
	.ascii	"_temp_1409\0"
	.align
_Label_1444:
	.byte	'?'
	.ascii	"_temp_1408\0"
	.align
_Label_1445:
	.byte	'?'
	.ascii	"_temp_1407\0"
	.align
_Label_1446:
	.byte	'?'
	.ascii	"_temp_1406\0"
	.align
_Label_1447:
	.byte	'?'
	.ascii	"_temp_1405\0"
	.align
_Label_1448:
	.byte	'?'
	.ascii	"_temp_1404\0"
	.align
_Label_1449:
	.byte	'?'
	.ascii	"_temp_1403\0"
	.align
_Label_1450:
	.byte	'?'
	.ascii	"_temp_1402\0"
	.align
_Label_1451:
	.byte	'?'
	.ascii	"_temp_1401\0"
	.align
_Label_1452:
	.byte	'?'
	.ascii	"_temp_1400\0"
	.align
_Label_1453:
	.byte	'?'
	.ascii	"_temp_1399\0"
	.align
_Label_1454:
	.byte	'?'
	.ascii	"_temp_1398\0"
	.align
_Label_1455:
	.byte	'?'
	.ascii	"_temp_1397\0"
	.align
_Label_1456:
	.byte	'?'
	.ascii	"_temp_1396\0"
	.align
_Label_1457:
	.byte	'?'
	.ascii	"_temp_1395\0"
	.align
_Label_1458:
	.byte	'?'
	.ascii	"_temp_1394\0"
	.align
_Label_1459:
	.byte	'?'
	.ascii	"_temp_1393\0"
	.align
_Label_1460:
	.byte	'?'
	.ascii	"_temp_1392\0"
	.align
_Label_1461:
	.byte	'?'
	.ascii	"_temp_1391\0"
	.align
_Label_1462:
	.byte	'?'
	.ascii	"_temp_1390\0"
	.align
_Label_1463:
	.byte	'?'
	.ascii	"_temp_1383\0"
	.align
_Label_1464:
	.byte	'?'
	.ascii	"_temp_1382\0"
	.align
_Label_1465:
	.byte	'P'
	.ascii	"openFile\0"
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
	mov	17,r1
_Label_3957:
	push	r0
	sub	r1,1,r1
	bne	_Label_3957
	mov	2203,r13		! source line 2203
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2204,r13		! source line 2204
	mov	"\0\0IF",r10
!   if fileDesc >= 0 then goto _Label_1469		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1469
	jmp	_Label_1466
_Label_1469:
!   if fileDesc <= 9 then goto _Label_1468		(int)
	load	[r14+8],r1
	mov	9,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1468
	jmp	_Label_1466
_Label_1468:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1472 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-60]
!   Data Move: _temp_1471 = *_temp_1472  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_1471) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1473 = _temp_1471 + 124
	load	[r14+-64],r1
	add	r1,124,r1
	store	r1,[r14+-56]
!   Move address of _temp_1473 [fileDesc ] into _temp_1474
!     make sure index expr is >= 0
	load	[r14+8],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-52]
!   Data Move: _temp_1470 = *_temp_1474  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_1470) then goto _Label_1466
	load	[r14+-68],r1
	cmp	r1,r0
	be	_Label_1466
	jmp	_Label_1467
_Label_1466:
	jmp	_Label_1475
_Label_1467:
! ELSE...
	mov	2207,r13		! source line 2207
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	2207,r13		! source line 2207
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1478 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-40]
!   Data Move: _temp_1477 = *_temp_1478  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_1477) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1479 = _temp_1477 + 124
	load	[r14+-44],r1
	add	r1,124,r1
	store	r1,[r14+-36]
!   Move address of _temp_1479 [fileDesc ] into _temp_1480
!     make sure index expr is >= 0
	load	[r14+8],r2
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
!   Data Move: _temp_1476 = *_temp_1480  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_1481 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_1476  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Send message Close
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2208,r13		! source line 2208
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1483 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_1482 = *_temp_1483  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_1482) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1484 = _temp_1482 + 124
	load	[r14+-24],r1
	add	r1,124,r1
	store	r1,[r14+-16]
!   Move address of _temp_1484 [fileDesc ] into _temp_1485
!     make sure index expr is >= 0
	load	[r14+8],r2
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
!   Data Move: *_temp_1485 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-12],r2
	store	r1,[r2]
! END IF...
_Label_1475:
! RETURN STATEMENT...
	mov	2204,r13		! source line 2204
	mov	"\0\0RE",r10
	add	r15,72,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Close:
	.word	_sourceFileName
	.word	_Label_1486
	.word	4		! total size of parameters
	.word	68		! frame size = 68
	.word	_Label_1487
	.word	8
	.word	4
	.word	_Label_1488
	.word	-12
	.word	4
	.word	_Label_1489
	.word	-16
	.word	4
	.word	_Label_1490
	.word	-20
	.word	4
	.word	_Label_1491
	.word	-24
	.word	4
	.word	_Label_1492
	.word	-28
	.word	4
	.word	_Label_1493
	.word	-32
	.word	4
	.word	_Label_1494
	.word	-36
	.word	4
	.word	_Label_1495
	.word	-40
	.word	4
	.word	_Label_1496
	.word	-44
	.word	4
	.word	_Label_1497
	.word	-48
	.word	4
	.word	_Label_1498
	.word	-52
	.word	4
	.word	_Label_1499
	.word	-56
	.word	4
	.word	_Label_1500
	.word	-60
	.word	4
	.word	_Label_1501
	.word	-64
	.word	4
	.word	_Label_1502
	.word	-68
	.word	4
	.word	0
_Label_1486:
	.ascii	"Handle_Sys_Close\0"
	.align
_Label_1487:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_1488:
	.byte	'?'
	.ascii	"_temp_1485\0"
	.align
_Label_1489:
	.byte	'?'
	.ascii	"_temp_1484\0"
	.align
_Label_1490:
	.byte	'?'
	.ascii	"_temp_1483\0"
	.align
_Label_1491:
	.byte	'?'
	.ascii	"_temp_1482\0"
	.align
_Label_1492:
	.byte	'?'
	.ascii	"_temp_1481\0"
	.align
_Label_1493:
	.byte	'?'
	.ascii	"_temp_1480\0"
	.align
_Label_1494:
	.byte	'?'
	.ascii	"_temp_1479\0"
	.align
_Label_1495:
	.byte	'?'
	.ascii	"_temp_1478\0"
	.align
_Label_1496:
	.byte	'?'
	.ascii	"_temp_1477\0"
	.align
_Label_1497:
	.byte	'?'
	.ascii	"_temp_1476\0"
	.align
_Label_1498:
	.byte	'?'
	.ascii	"_temp_1474\0"
	.align
_Label_1499:
	.byte	'?'
	.ascii	"_temp_1473\0"
	.align
_Label_1500:
	.byte	'?'
	.ascii	"_temp_1472\0"
	.align
_Label_1501:
	.byte	'?'
	.ascii	"_temp_1471\0"
	.align
_Label_1502:
	.byte	'?'
	.ascii	"_temp_1470\0"
	.align
! 
! ===============  FUNCTION copyUnalignedWord  ===============
! 
_function_184_copyUnalignedWord:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_184_copyUnalignedWord,r1
	push	r1
	mov	9,r1
_Label_3958:
	push	r0
	sub	r1,1,r1
	bne	_Label_3958
	mov	2803,r13		! source line 2803
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2805,r13		! source line 2805
	mov	"\0\0AS",r10
!   from = fromPtr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2806,r13		! source line 2806
	mov	"\0\0AS",r10
!   dest = destPtr		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	2807,r13		! source line 2807
	mov	"\0\0AS",r10
!   if intIsZero (dest) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (from) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1503 = *from  (sizeInBytes=1)
	load	[r14+-40],r1
	loadb	[r1],r1
	storeb	r1,[r14+-12]
!   Data Move: *dest = _temp_1503  (sizeInBytes=1)
	loadb	[r14+-12],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2808,r13		! source line 2808
	mov	"\0\0AS",r10
!   _temp_1504 = dest + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   if intIsZero (_temp_1504) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1506 = from + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   if intIsZero (_temp_1506) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1505 = *_temp_1506  (sizeInBytes=1)
	load	[r14+-32],r1
	loadb	[r1],r1
	storeb	r1,[r14+-11]
!   Data Move: *_temp_1504 = _temp_1505  (sizeInBytes=1)
	loadb	[r14+-11],r1
	load	[r14+-36],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2809,r13		! source line 2809
	mov	"\0\0AS",r10
!   _temp_1507 = dest + 2		(int)
	load	[r14+-44],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   if intIsZero (_temp_1507) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1509 = from + 2		(int)
	load	[r14+-40],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   if intIsZero (_temp_1509) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1508 = *_temp_1509  (sizeInBytes=1)
	load	[r14+-24],r1
	loadb	[r1],r1
	storeb	r1,[r14+-10]
!   Data Move: *_temp_1507 = _temp_1508  (sizeInBytes=1)
	loadb	[r14+-10],r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2810,r13		! source line 2810
	mov	"\0\0AS",r10
!   _temp_1510 = dest + 3		(int)
	load	[r14+-44],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   if intIsZero (_temp_1510) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1512 = from + 3		(int)
	load	[r14+-40],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
!   if intIsZero (_temp_1512) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1511 = *_temp_1512  (sizeInBytes=1)
	load	[r14+-16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *_temp_1510 = _temp_1511  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! RETURN STATEMENT...
	mov	2810,r13		! source line 2810
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_184_copyUnalignedWord:
	.word	_sourceFileName
	.word	_Label_1513
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1514
	.word	8
	.word	4
	.word	_Label_1515
	.word	12
	.word	4
	.word	_Label_1516
	.word	-16
	.word	4
	.word	_Label_1517
	.word	-9
	.word	1
	.word	_Label_1518
	.word	-20
	.word	4
	.word	_Label_1519
	.word	-24
	.word	4
	.word	_Label_1520
	.word	-10
	.word	1
	.word	_Label_1521
	.word	-28
	.word	4
	.word	_Label_1522
	.word	-32
	.word	4
	.word	_Label_1523
	.word	-11
	.word	1
	.word	_Label_1524
	.word	-36
	.word	4
	.word	_Label_1525
	.word	-12
	.word	1
	.word	_Label_1526
	.word	-40
	.word	4
	.word	_Label_1527
	.word	-44
	.word	4
	.word	0
_Label_1513:
	.ascii	"copyUnalignedWord\0"
	.align
_Label_1514:
	.byte	'P'
	.ascii	"destPtr\0"
	.align
_Label_1515:
	.byte	'P'
	.ascii	"fromPtr\0"
	.align
_Label_1516:
	.byte	'?'
	.ascii	"_temp_1512\0"
	.align
_Label_1517:
	.byte	'C'
	.ascii	"_temp_1511\0"
	.align
_Label_1518:
	.byte	'?'
	.ascii	"_temp_1510\0"
	.align
_Label_1519:
	.byte	'?'
	.ascii	"_temp_1509\0"
	.align
_Label_1520:
	.byte	'C'
	.ascii	"_temp_1508\0"
	.align
_Label_1521:
	.byte	'?'
	.ascii	"_temp_1507\0"
	.align
_Label_1522:
	.byte	'?'
	.ascii	"_temp_1506\0"
	.align
_Label_1523:
	.byte	'C'
	.ascii	"_temp_1505\0"
	.align
_Label_1524:
	.byte	'?'
	.ascii	"_temp_1504\0"
	.align
_Label_1525:
	.byte	'C'
	.ascii	"_temp_1503\0"
	.align
_Label_1526:
	.byte	'P'
	.ascii	"from\0"
	.align
_Label_1527:
	.byte	'P'
	.ascii	"dest\0"
	.align
! 
! ===============  FUNCTION printFCB  ===============
! 
_function_183_printFCB:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_183_printFCB,r1
	push	r1
	mov	3,r1
_Label_3959:
	push	r0
	sub	r1,1,r1
	bne	_Label_3959
	mov	2813,r13		! source line 2813
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1529 = fcb + 12
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-12]
!   Data Move: _temp_1528 = *_temp_1529  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1528  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2814,r13		! source line 2814
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	2815,r13		! source line 2815
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	2815,r13		! source line 2815
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_183_printFCB:
	.word	_sourceFileName
	.word	_Label_1530
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1531
	.word	8
	.word	4
	.word	_Label_1532
	.word	-12
	.word	4
	.word	_Label_1533
	.word	-16
	.word	4
	.word	0
_Label_1530:
	.ascii	"printFCB\0"
	.align
_Label_1531:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_1532:
	.byte	'?'
	.ascii	"_temp_1529\0"
	.align
_Label_1533:
	.byte	'?'
	.ascii	"_temp_1528\0"
	.align
! 
! ===============  FUNCTION printOpen  ===============
! 
_function_182_printOpen:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_182_printOpen,r1
	push	r1
	mov	4,r1
_Label_3960:
	push	r0
	sub	r1,1,r1
	bne	_Label_3960
	mov	2818,r13		! source line 2818
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1534 = _StringConst_41
	set	_StringConst_41,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1534  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2819,r13		! source line 2819
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1535 = open		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1535  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2820,r13		! source line 2820
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1536 = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1536  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2821,r13		! source line 2821
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2822,r13		! source line 2822
	mov	"\0\0SE",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	load	[r14+8],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! RETURN STATEMENT...
	mov	2822,r13		! source line 2822
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_182_printOpen:
	.word	_sourceFileName
	.word	_Label_1537
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1538
	.word	8
	.word	4
	.word	_Label_1539
	.word	-12
	.word	4
	.word	_Label_1540
	.word	-16
	.word	4
	.word	_Label_1541
	.word	-20
	.word	4
	.word	0
_Label_1537:
	.ascii	"printOpen\0"
	.align
_Label_1538:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_1539:
	.byte	'?'
	.ascii	"_temp_1536\0"
	.align
_Label_1540:
	.byte	'?'
	.ascii	"_temp_1535\0"
	.align
_Label_1541:
	.byte	'?'
	.ascii	"_temp_1534\0"
	.align
! 
! ===============  CLASS Semaphore  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Semaphore:
	.word	_Label_1542
	jmp	_Method_P_Kernel_Semaphore_1	! 4:	Init
	jmp	_Method_P_Kernel_Semaphore_3	! 8:	Down
	jmp	_Method_P_Kernel_Semaphore_2	! 12:	Up
	.word	0
! 
! Class descriptor:
! 
_Label_1542:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1543
	.word	_sourceFileName
	.word	125		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Semaphore
	.word	_P_System_Object
	.word	0
_Label_1543:
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
_Label_3961:
	push	r0
	sub	r1,1,r1
	bne	_Label_3961
	mov	279,r13		! source line 279
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	280,r13		! source line 280
	mov	"\0\0IF",r10
!   if initialCount >= 0 then goto _Label_1545		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1545
!	jmp	_Label_1544
_Label_1544:
! THEN...
	mov	281,r13		! source line 281
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1546 = _StringConst_43
	set	_StringConst_43,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1546  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	281,r13		! source line 281
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1545:
! ASSIGNMENT STATEMENT...
	mov	283,r13		! source line 283
	mov	"\0\0AS",r10
!   count = initialCount		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	284,r13		! source line 284
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
	mov	284,r13		! source line 284
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
	.word	_Label_1548
	.word	8		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1549
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1550
	.word	12
	.word	4
	.word	_Label_1551
	.word	-12
	.word	4
	.word	_Label_1552
	.word	-16
	.word	4
	.word	0
_Label_1548:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1549:
	.ascii	"Pself\0"
	.align
_Label_1550:
	.byte	'I'
	.ascii	"initialCount\0"
	.align
_Label_1551:
	.byte	'?'
	.ascii	"_temp_1547\0"
	.align
_Label_1552:
	.byte	'?'
	.ascii	"_temp_1546\0"
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
_Label_3962:
	push	r0
	sub	r1,1,r1
	bne	_Label_3962
	mov	289,r13		! source line 289
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	293,r13		! source line 293
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	293,r13		! source line 293
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! IF STATEMENT...
	mov	294,r13		! source line 294
	mov	"\0\0IF",r10
!   if count != 2147483647 then goto _Label_1554		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	2147483647,r2
	cmp	r1,r2
	bne	_Label_1554
!	jmp	_Label_1553
_Label_1553:
! THEN...
	mov	295,r13		! source line 295
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1555 = _StringConst_44
	set	_StringConst_44,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1555  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	295,r13		! source line 295
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1554:
! ASSIGNMENT STATEMENT...
	mov	297,r13		! source line 297
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
	mov	298,r13		! source line 298
	mov	"\0\0IF",r10
!   if count > 0 then goto _Label_1557		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1557
!	jmp	_Label_1556
_Label_1556:
! THEN...
	mov	299,r13		! source line 299
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	299,r13		! source line 299
	mov	"\0\0AS",r10
	mov	299,r13		! source line 299
	mov	"\0\0SE",r10
!   _temp_1558 = &waitingThreads
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
	mov	300,r13		! source line 300
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1559 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1559 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	301,r13		! source line 301
	mov	"\0\0SE",r10
!   _temp_1560 = &_P_Kernel_readyList
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
_Label_1557:
! ASSIGNMENT STATEMENT...
	mov	303,r13		! source line 303
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	303,r13		! source line 303
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	303,r13		! source line 303
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
	.word	_Label_1561
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1562
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1563
	.word	-12
	.word	4
	.word	_Label_1564
	.word	-16
	.word	4
	.word	_Label_1565
	.word	-20
	.word	4
	.word	_Label_1566
	.word	-24
	.word	4
	.word	_Label_1567
	.word	-28
	.word	4
	.word	_Label_1568
	.word	-32
	.word	4
	.word	0
_Label_1561:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Up\0"
	.align
_Label_1562:
	.ascii	"Pself\0"
	.align
_Label_1563:
	.byte	'?'
	.ascii	"_temp_1560\0"
	.align
_Label_1564:
	.byte	'?'
	.ascii	"_temp_1559\0"
	.align
_Label_1565:
	.byte	'?'
	.ascii	"_temp_1558\0"
	.align
_Label_1566:
	.byte	'?'
	.ascii	"_temp_1555\0"
	.align
_Label_1567:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1568:
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
_Label_3963:
	push	r0
	sub	r1,1,r1
	bne	_Label_3963
	mov	308,r13		! source line 308
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	311,r13		! source line 311
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	311,r13		! source line 311
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! IF STATEMENT...
	mov	312,r13		! source line 312
	mov	"\0\0IF",r10
!   if count != -2147483648 then goto _Label_1570		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	0x80000000,r2
	cmp	r1,r2
	bne	_Label_1570
!	jmp	_Label_1569
_Label_1569:
! THEN...
	mov	313,r13		! source line 313
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1571 = _StringConst_45
	set	_StringConst_45,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1571  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	313,r13		! source line 313
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1570:
! ASSIGNMENT STATEMENT...
	mov	315,r13		! source line 315
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
	mov	316,r13		! source line 316
	mov	"\0\0IF",r10
!   if count >= 0 then goto _Label_1573		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1573
!	jmp	_Label_1572
_Label_1572:
! THEN...
	mov	317,r13		! source line 317
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	317,r13		! source line 317
	mov	"\0\0SE",r10
!   _temp_1574 = &waitingThreads
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
	mov	318,r13		! source line 318
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
_Label_1573:
! ASSIGNMENT STATEMENT...
	mov	320,r13		! source line 320
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	320,r13		! source line 320
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! RETURN STATEMENT...
	mov	320,r13		! source line 320
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
	.word	_Label_1575
	.word	4		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1576
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1577
	.word	-12
	.word	4
	.word	_Label_1578
	.word	-16
	.word	4
	.word	_Label_1579
	.word	-20
	.word	4
	.word	0
_Label_1575:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Down\0"
	.align
_Label_1576:
	.ascii	"Pself\0"
	.align
_Label_1577:
	.byte	'?'
	.ascii	"_temp_1574\0"
	.align
_Label_1578:
	.byte	'?'
	.ascii	"_temp_1571\0"
	.align
_Label_1579:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Mutex  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Mutex:
	.word	_Label_1580
	jmp	_Method_P_Kernel_Mutex_1	! 4:	Init
	jmp	_Method_P_Kernel_Mutex_2	! 8:	Lock
	jmp	_Method_P_Kernel_Mutex_3	! 12:	Unlock
	jmp	_Method_P_Kernel_Mutex_4	! 16:	IsHeldByCurrentThread
	.word	0
! 
! Class descriptor:
! 
_Label_1580:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1581
	.word	_sourceFileName
	.word	138		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Mutex
	.word	_P_System_Object
	.word	0
_Label_1581:
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
_Label_3964:
	push	r0
	sub	r1,1,r1
	bne	_Label_3964
	mov	343,r13		! source line 343
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	344,r13		! source line 344
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
	mov	344,r13		! source line 344
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
	.word	_Label_1583
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1584
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1585
	.word	-12
	.word	4
	.word	0
_Label_1583:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1584:
	.ascii	"Pself\0"
	.align
_Label_1585:
	.byte	'?'
	.ascii	"_temp_1582\0"
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
_Label_3965:
	push	r0
	sub	r1,1,r1
	bne	_Label_3965
	mov	349,r13		! source line 349
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	352,r13		! source line 352
	mov	"\0\0IF",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_1587		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_1587
!	jmp	_Label_1586
_Label_1586:
! THEN...
	mov	353,r13		! source line 353
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1588 = _StringConst_46
	set	_StringConst_46,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1588  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	353,r13		! source line 353
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1587:
! ASSIGNMENT STATEMENT...
	mov	355,r13		! source line 355
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	355,r13		! source line 355
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! IF STATEMENT...
	mov	356,r13		! source line 356
	mov	"\0\0IF",r10
!   if heldBy == 0 then goto _Label_1592		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1592
!   _temp_1591 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1593
_Label_1592:
!   _temp_1591 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1593:
!   if _temp_1591 then goto _Label_1590 else goto _Label_1589
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1589
	jmp	_Label_1590
_Label_1589:
! THEN...
	mov	357,r13		! source line 357
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	357,r13		! source line 357
	mov	"\0\0AS",r10
!   heldBy = _P_Kernel_currentThread		(4 bytes)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_1594
_Label_1590:
! ELSE...
	mov	359,r13		! source line 359
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	359,r13		! source line 359
	mov	"\0\0SE",r10
!   _temp_1595 = &waitingThreads
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
	mov	360,r13		! source line 360
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
_Label_1594:
! ASSIGNMENT STATEMENT...
	mov	362,r13		! source line 362
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	362,r13		! source line 362
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	362,r13		! source line 362
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
	.word	_Label_1596
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1597
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1598
	.word	-16
	.word	4
	.word	_Label_1599
	.word	-9
	.word	1
	.word	_Label_1600
	.word	-20
	.word	4
	.word	_Label_1601
	.word	-24
	.word	4
	.word	0
_Label_1596:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_1597:
	.ascii	"Pself\0"
	.align
_Label_1598:
	.byte	'?'
	.ascii	"_temp_1595\0"
	.align
_Label_1599:
	.byte	'C'
	.ascii	"_temp_1591\0"
	.align
_Label_1600:
	.byte	'?'
	.ascii	"_temp_1588\0"
	.align
_Label_1601:
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
_Label_3966:
	push	r0
	sub	r1,1,r1
	bne	_Label_3966
	mov	367,r13		! source line 367
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	371,r13		! source line 371
	mov	"\0\0IF",r10
!   if heldBy == _P_Kernel_currentThread then goto _Label_1603		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1603
!	jmp	_Label_1602
_Label_1602:
! THEN...
	mov	372,r13		! source line 372
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1604 = _StringConst_47
	set	_StringConst_47,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1604  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	372,r13		! source line 372
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1603:
! ASSIGNMENT STATEMENT...
	mov	374,r13		! source line 374
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	374,r13		! source line 374
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! ASSIGNMENT STATEMENT...
	mov	375,r13		! source line 375
	mov	"\0\0AS",r10
	mov	375,r13		! source line 375
	mov	"\0\0SE",r10
!   _temp_1605 = &waitingThreads
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
	mov	376,r13		! source line 376
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_1607		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1607
!	jmp	_Label_1606
_Label_1606:
! THEN...
	mov	377,r13		! source line 377
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	377,r13		! source line 377
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1608 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1608 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	378,r13		! source line 378
	mov	"\0\0SE",r10
!   _temp_1609 = &_P_Kernel_readyList
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
	mov	379,r13		! source line 379
	mov	"\0\0AS",r10
!   heldBy = t		(4 bytes)
	load	[r14+-32],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_1610
_Label_1607:
! ELSE...
	mov	381,r13		! source line 381
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	381,r13		! source line 381
	mov	"\0\0AS",r10
!   heldBy = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! END IF...
_Label_1610:
! ASSIGNMENT STATEMENT...
	mov	383,r13		! source line 383
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	383,r13		! source line 383
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	383,r13		! source line 383
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
	.word	_Label_1611
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1612
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1613
	.word	-12
	.word	4
	.word	_Label_1614
	.word	-16
	.word	4
	.word	_Label_1615
	.word	-20
	.word	4
	.word	_Label_1616
	.word	-24
	.word	4
	.word	_Label_1617
	.word	-28
	.word	4
	.word	_Label_1618
	.word	-32
	.word	4
	.word	0
_Label_1611:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_1612:
	.ascii	"Pself\0"
	.align
_Label_1613:
	.byte	'?'
	.ascii	"_temp_1609\0"
	.align
_Label_1614:
	.byte	'?'
	.ascii	"_temp_1608\0"
	.align
_Label_1615:
	.byte	'?'
	.ascii	"_temp_1605\0"
	.align
_Label_1616:
	.byte	'?'
	.ascii	"_temp_1604\0"
	.align
_Label_1617:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1618:
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
_Label_3967:
	push	r0
	sub	r1,1,r1
	bne	_Label_3967
	mov	388,r13		! source line 388
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	389,r13		! source line 389
	mov	"\0\0RE",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_1621		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_1621
!	jmp	_Label_1620
_Label_1620:
!   _temp_1619 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1622
_Label_1621:
!   _temp_1619 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1622:
!   ReturnResult: _temp_1619  (sizeInBytes=1)
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
	.word	_Label_1623
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1624
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1625
	.word	-9
	.word	1
	.word	0
_Label_1623:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_1624:
	.ascii	"Pself\0"
	.align
_Label_1625:
	.byte	'C'
	.ascii	"_temp_1619\0"
	.align
! 
! ===============  CLASS Condition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Condition:
	.word	_Label_1626
	jmp	_Method_P_Kernel_Condition_1	! 4:	Init
	jmp	_Method_P_Kernel_Condition_2	! 8:	Wait
	jmp	_Method_P_Kernel_Condition_3	! 12:	Signal
	jmp	_Method_P_Kernel_Condition_4	! 16:	Broadcast
	.word	0
! 
! Class descriptor:
! 
_Label_1626:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1627
	.word	_sourceFileName
	.word	152		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Kernel_Condition
	.word	_P_System_Object
	.word	0
_Label_1627:
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
_Label_3968:
	push	r0
	sub	r1,1,r1
	bne	_Label_3968
	mov	429,r13		! source line 429
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	430,r13		! source line 430
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
	mov	430,r13		! source line 430
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
	.word	_Label_1629
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1630
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1631
	.word	-12
	.word	4
	.word	0
_Label_1629:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1630:
	.ascii	"Pself\0"
	.align
_Label_1631:
	.byte	'?'
	.ascii	"_temp_1628\0"
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
_Label_3969:
	push	r0
	sub	r1,1,r1
	bne	_Label_3969
	mov	435,r13		! source line 435
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	438,r13		! source line 438
	mov	"\0\0IF",r10
	mov	438,r13		! source line 438
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
!   Retrieve Result: targetName=_temp_1634  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1634 then goto _Label_1633 else goto _Label_1632
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1632
	jmp	_Label_1633
_Label_1632:
! THEN...
	mov	439,r13		! source line 439
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1635 = _StringConst_48
	set	_StringConst_48,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1635  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	439,r13		! source line 439
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1633:
! ASSIGNMENT STATEMENT...
	mov	441,r13		! source line 441
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	441,r13		! source line 441
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! SEND STATEMENT...
	mov	442,r13		! source line 442
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
	mov	443,r13		! source line 443
	mov	"\0\0SE",r10
!   _temp_1636 = &waitingThreads
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
	mov	444,r13		! source line 444
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
	mov	445,r13		! source line 445
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
	mov	446,r13		! source line 446
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	446,r13		! source line 446
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	446,r13		! source line 446
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
	.word	_Label_1637
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1638
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1639
	.word	12
	.word	4
	.word	_Label_1640
	.word	-16
	.word	4
	.word	_Label_1641
	.word	-20
	.word	4
	.word	_Label_1642
	.word	-9
	.word	1
	.word	_Label_1643
	.word	-24
	.word	4
	.word	0
_Label_1637:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_1638:
	.ascii	"Pself\0"
	.align
_Label_1639:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1640:
	.byte	'?'
	.ascii	"_temp_1636\0"
	.align
_Label_1641:
	.byte	'?'
	.ascii	"_temp_1635\0"
	.align
_Label_1642:
	.byte	'C'
	.ascii	"_temp_1634\0"
	.align
_Label_1643:
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
_Label_3970:
	push	r0
	sub	r1,1,r1
	bne	_Label_3970
	mov	451,r13		! source line 451
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	455,r13		! source line 455
	mov	"\0\0IF",r10
	mov	455,r13		! source line 455
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
!   Retrieve Result: targetName=_temp_1646  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1646 then goto _Label_1645 else goto _Label_1644
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1644
	jmp	_Label_1645
_Label_1644:
! THEN...
	mov	456,r13		! source line 456
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1647 = _StringConst_49
	set	_StringConst_49,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1647  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	456,r13		! source line 456
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1645:
! ASSIGNMENT STATEMENT...
	mov	458,r13		! source line 458
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	458,r13		! source line 458
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! ASSIGNMENT STATEMENT...
	mov	459,r13		! source line 459
	mov	"\0\0AS",r10
	mov	459,r13		! source line 459
	mov	"\0\0SE",r10
!   _temp_1648 = &waitingThreads
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
	mov	460,r13		! source line 460
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_1650		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1650
!	jmp	_Label_1649
_Label_1649:
! THEN...
	mov	461,r13		! source line 461
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	461,r13		! source line 461
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1651 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1651 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	462,r13		! source line 462
	mov	"\0\0SE",r10
!   _temp_1652 = &_P_Kernel_readyList
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
_Label_1650:
! ASSIGNMENT STATEMENT...
	mov	464,r13		! source line 464
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	464,r13		! source line 464
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	464,r13		! source line 464
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
	.word	_Label_1653
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1654
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1655
	.word	12
	.word	4
	.word	_Label_1656
	.word	-16
	.word	4
	.word	_Label_1657
	.word	-20
	.word	4
	.word	_Label_1658
	.word	-24
	.word	4
	.word	_Label_1659
	.word	-28
	.word	4
	.word	_Label_1660
	.word	-9
	.word	1
	.word	_Label_1661
	.word	-32
	.word	4
	.word	_Label_1662
	.word	-36
	.word	4
	.word	0
_Label_1653:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_1654:
	.ascii	"Pself\0"
	.align
_Label_1655:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1656:
	.byte	'?'
	.ascii	"_temp_1652\0"
	.align
_Label_1657:
	.byte	'?'
	.ascii	"_temp_1651\0"
	.align
_Label_1658:
	.byte	'?'
	.ascii	"_temp_1648\0"
	.align
_Label_1659:
	.byte	'?'
	.ascii	"_temp_1647\0"
	.align
_Label_1660:
	.byte	'C'
	.ascii	"_temp_1646\0"
	.align
_Label_1661:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1662:
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
_Label_3971:
	push	r0
	sub	r1,1,r1
	bne	_Label_3971
	mov	469,r13		! source line 469
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	473,r13		! source line 473
	mov	"\0\0IF",r10
	mov	473,r13		! source line 473
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
!   Retrieve Result: targetName=_temp_1665  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1665 then goto _Label_1664 else goto _Label_1663
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1663
	jmp	_Label_1664
_Label_1663:
! THEN...
	mov	474,r13		! source line 474
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1666 = _StringConst_50
	set	_StringConst_50,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1666  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	474,r13		! source line 474
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1664:
! ASSIGNMENT STATEMENT...
	mov	476,r13		! source line 476
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	476,r13		! source line 476
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! WHILE STATEMENT...
	mov	477,r13		! source line 477
	mov	"\0\0WH",r10
_Label_1667:
!	jmp	_Label_1668
_Label_1668:
	mov	477,r13		! source line 477
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	478,r13		! source line 478
	mov	"\0\0AS",r10
	mov	478,r13		! source line 478
	mov	"\0\0SE",r10
!   _temp_1670 = &waitingThreads
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
	mov	479,r13		! source line 479
	mov	"\0\0IF",r10
!   if intIsZero (t) then goto _Label_1671
	load	[r14+-36],r1
	cmp	r1,r0
	be	_Label_1671
	jmp	_Label_1672
_Label_1671:
! THEN...
	mov	480,r13		! source line 480
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	480,r13		! source line 480
	mov	"\0\0BR",r10
	jmp	_Label_1669
! END IF...
_Label_1672:
! ASSIGNMENT STATEMENT...
	mov	482,r13		! source line 482
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1673 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1673 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	483,r13		! source line 483
	mov	"\0\0SE",r10
!   _temp_1674 = &_P_Kernel_readyList
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
	jmp	_Label_1667
_Label_1669:
! ASSIGNMENT STATEMENT...
	mov	485,r13		! source line 485
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	485,r13		! source line 485
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	485,r13		! source line 485
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
	.word	_Label_1675
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1676
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1677
	.word	12
	.word	4
	.word	_Label_1678
	.word	-16
	.word	4
	.word	_Label_1679
	.word	-20
	.word	4
	.word	_Label_1680
	.word	-24
	.word	4
	.word	_Label_1681
	.word	-28
	.word	4
	.word	_Label_1682
	.word	-9
	.word	1
	.word	_Label_1683
	.word	-32
	.word	4
	.word	_Label_1684
	.word	-36
	.word	4
	.word	0
_Label_1675:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Broadcast\0"
	.align
_Label_1676:
	.ascii	"Pself\0"
	.align
_Label_1677:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1678:
	.byte	'?'
	.ascii	"_temp_1674\0"
	.align
_Label_1679:
	.byte	'?'
	.ascii	"_temp_1673\0"
	.align
_Label_1680:
	.byte	'?'
	.ascii	"_temp_1670\0"
	.align
_Label_1681:
	.byte	'?'
	.ascii	"_temp_1666\0"
	.align
_Label_1682:
	.byte	'C'
	.ascii	"_temp_1665\0"
	.align
_Label_1683:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1684:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  CLASS Thread  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Thread:
	.word	_Label_1685
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
_Label_1685:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1686
	.word	_sourceFileName
	.word	165		! line number
	.word	4164		! size of instances, in bytes
	.word	_P_Kernel_Thread
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_1686:
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
_Label_3972:
	push	r0
	sub	r1,1,r1
	bne	_Label_3972
	mov	496,r13		! source line 496
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	501,r13		! source line 501
	mov	"\0\0AS",r10
!   name = n		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+72]
! ASSIGNMENT STATEMENT...
	mov	502,r13		! source line 502
	mov	"\0\0AS",r10
!   status = 1		(4 bytes)
	mov	1,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	504,r13		! source line 504
	mov	"\0\0AS",r10
!   _temp_1687 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_1687) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_1687 = 1000  (sizeInBytes=4)
	mov	1000,r1
	load	[r14+-188],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	505,r13		! source line 505
	mov	"\0\0AS",r10
!   _temp_1688 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-184]
!   Move address of _temp_1688 [0 ] into _temp_1689
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
!   Data Move: *_temp_1689 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-180],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	506,r13		! source line 506
	mov	"\0\0AS",r10
!   _temp_1690 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-176]
!   Move address of _temp_1690 [999 ] into _temp_1691
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
!   Data Move: *_temp_1691 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-172],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	507,r13		! source line 507
	mov	"\0\0AS",r10
!   _temp_1692 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-168]
!   Move address of _temp_1692 [999 ] into _temp_1693
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
!   stackTop = _temp_1693		(4 bytes)
	load	[r14+-164],r1
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	508,r13		! source line 508
	mov	"\0\0AS",r10
!   _temp_1694 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-160]
!   NEW ARRAY Constructor...
!   _temp_1696 = &_temp_1695
	add	r14,-156,r1
	store	r1,[r14+-100]
!   _temp_1696 = _temp_1696 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Next value...
	mov	13,r1
	store	r1,[r14+-96]
_Label_1698:
!   Data Move: *_temp_1696 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-100],r2
	store	r1,[r2]
!   _temp_1696 = _temp_1696 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   _temp_1697 = _temp_1697 + -1
	load	[r14+-96],r1
	add	r1,-1,r1
	store	r1,[r14+-96]
!   if intNotZero (_temp_1697) then goto _Label_1698
	load	[r14+-96],r1
	cmp	r1,r0
	bne	_Label_1698
!   Initialize the array size...
	mov	13,r1
	store	r1,[r14+-156]
!   _temp_1699 = &_temp_1695
	add	r14,-156,r1
	store	r1,[r14+-92]
!   make sure array has size 13
	load	[r14+-160],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,0
	be	_Label_3973
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3973:
!   make sure array has size 13
	load	[r14+-92],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1694 = *_temp_1699  (sizeInBytes=56)
	load	[r14+-92],r5
	load	[r14+-160],r4
	mov	14,r3
_Label_3974:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3974
! ASSIGNMENT STATEMENT...
	mov	509,r13		! source line 509
	mov	"\0\0AS",r10
!   isUserThread = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+4092]
! ASSIGNMENT STATEMENT...
	mov	510,r13		! source line 510
	mov	"\0\0AS",r10
!   _temp_1700 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-88]
!   NEW ARRAY Constructor...
!   _temp_1702 = &_temp_1701
	add	r14,-84,r1
	store	r1,[r14+-20]
!   _temp_1702 = _temp_1702 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	15,r1
	store	r1,[r14+-16]
_Label_1704:
!   Data Move: *_temp_1702 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1702 = _temp_1702 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1703 = _temp_1703 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1703) then goto _Label_1704
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1704
!   Initialize the array size...
	mov	15,r1
	store	r1,[r14+-84]
!   _temp_1705 = &_temp_1701
	add	r14,-84,r1
	store	r1,[r14+-12]
!   make sure array has size 15
	load	[r14+-88],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,0
	be	_Label_3975
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3975:
!   make sure array has size 15
	load	[r14+-12],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1700 = *_temp_1705  (sizeInBytes=64)
	load	[r14+-12],r5
	load	[r14+-88],r4
	mov	16,r3
_Label_3976:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3976
! RETURN STATEMENT...
	mov	510,r13		! source line 510
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
	.word	_Label_1706
	.word	8		! total size of parameters
	.word	180		! frame size = 180
	.word	_Label_1707
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1708
	.word	12
	.word	4
	.word	_Label_1709
	.word	-12
	.word	4
	.word	_Label_1710
	.word	-16
	.word	4
	.word	_Label_1711
	.word	-20
	.word	4
	.word	_Label_1712
	.word	-84
	.word	64
	.word	_Label_1713
	.word	-88
	.word	4
	.word	_Label_1714
	.word	-92
	.word	4
	.word	_Label_1715
	.word	-96
	.word	4
	.word	_Label_1716
	.word	-100
	.word	4
	.word	_Label_1717
	.word	-156
	.word	56
	.word	_Label_1718
	.word	-160
	.word	4
	.word	_Label_1719
	.word	-164
	.word	4
	.word	_Label_1720
	.word	-168
	.word	4
	.word	_Label_1721
	.word	-172
	.word	4
	.word	_Label_1722
	.word	-176
	.word	4
	.word	_Label_1723
	.word	-180
	.word	4
	.word	_Label_1724
	.word	-184
	.word	4
	.word	_Label_1725
	.word	-188
	.word	4
	.word	0
_Label_1706:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1707:
	.ascii	"Pself\0"
	.align
_Label_1708:
	.byte	'P'
	.ascii	"n\0"
	.align
_Label_1709:
	.byte	'?'
	.ascii	"_temp_1705\0"
	.align
_Label_1710:
	.byte	'?'
	.ascii	"_temp_1703\0"
	.align
_Label_1711:
	.byte	'?'
	.ascii	"_temp_1702\0"
	.align
_Label_1712:
	.byte	'?'
	.ascii	"_temp_1701\0"
	.align
_Label_1713:
	.byte	'?'
	.ascii	"_temp_1700\0"
	.align
_Label_1714:
	.byte	'?'
	.ascii	"_temp_1699\0"
	.align
_Label_1715:
	.byte	'?'
	.ascii	"_temp_1697\0"
	.align
_Label_1716:
	.byte	'?'
	.ascii	"_temp_1696\0"
	.align
_Label_1717:
	.byte	'?'
	.ascii	"_temp_1695\0"
	.align
_Label_1718:
	.byte	'?'
	.ascii	"_temp_1694\0"
	.align
_Label_1719:
	.byte	'?'
	.ascii	"_temp_1693\0"
	.align
_Label_1720:
	.byte	'?'
	.ascii	"_temp_1692\0"
	.align
_Label_1721:
	.byte	'?'
	.ascii	"_temp_1691\0"
	.align
_Label_1722:
	.byte	'?'
	.ascii	"_temp_1690\0"
	.align
_Label_1723:
	.byte	'?'
	.ascii	"_temp_1689\0"
	.align
_Label_1724:
	.byte	'?'
	.ascii	"_temp_1688\0"
	.align
_Label_1725:
	.byte	'?'
	.ascii	"_temp_1687\0"
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
_Label_3977:
	push	r0
	sub	r1,1,r1
	bne	_Label_3977
	mov	515,r13		! source line 515
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	526,r13		! source line 526
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	526,r13		! source line 526
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! ASSIGNMENT STATEMENT...
	mov	528,r13		! source line 528
	mov	"\0\0AS",r10
!   initialFunction = fun		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+80]
! ASSIGNMENT STATEMENT...
	mov	529,r13		! source line 529
	mov	"\0\0AS",r10
!   initialArgument = arg		(4 bytes)
	load	[r14+16],r1
	load	[r14+8],r2
	store	r1,[r2+84]
! ASSIGNMENT STATEMENT...
	mov	530,r13		! source line 530
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
	mov	531,r13		! source line 531
	mov	"\0\0AS",r10
!   if intIsZero (stackTop) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1726 = ThreadStartUp
	set	ThreadStartUp,r1
	store	r1,[r14+-20]
!   Data Move: *stackTop = _temp_1726  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r14+8],r2
	load	[r2+68],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	532,r13		! source line 532
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! SEND STATEMENT...
	mov	533,r13		! source line 533
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_1728 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1727  sizeInBytes=4
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
	mov	534,r13		! source line 534
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	534,r13		! source line 534
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	534,r13		! source line 534
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
	.word	_Label_1729
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1730
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1731
	.word	12
	.word	4
	.word	_Label_1732
	.word	16
	.word	4
	.word	_Label_1733
	.word	-12
	.word	4
	.word	_Label_1734
	.word	-16
	.word	4
	.word	_Label_1735
	.word	-20
	.word	4
	.word	_Label_1736
	.word	-24
	.word	4
	.word	_Label_1737
	.word	-28
	.word	4
	.word	0
_Label_1729:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Fork\0"
	.align
_Label_1730:
	.ascii	"Pself\0"
	.align
_Label_1731:
	.byte	'P'
	.ascii	"fun\0"
	.align
_Label_1732:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_1733:
	.byte	'?'
	.ascii	"_temp_1728\0"
	.align
_Label_1734:
	.byte	'?'
	.ascii	"_temp_1727\0"
	.align
_Label_1735:
	.byte	'?'
	.ascii	"_temp_1726\0"
	.align
_Label_1736:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1737:
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
_Label_3978:
	push	r0
	sub	r1,1,r1
	bne	_Label_3978
	mov	539,r13		! source line 539
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	555,r13		! source line 555
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if _temp_1740 == _P_Kernel_currentThread then goto _Label_1739		(int)
	load	[r14+-32],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1739
!	jmp	_Label_1738
_Label_1738:
! THEN...
	mov	556,r13		! source line 556
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1741 = _StringConst_51
	set	_StringConst_51,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1741  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	556,r13		! source line 556
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1739:
! ASSIGNMENT STATEMENT...
	mov	558,r13		! source line 558
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	558,r13		! source line 558
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	562,r13		! source line 562
	mov	"\0\0AS",r10
	mov	562,r13		! source line 562
	mov	"\0\0SE",r10
!   _temp_1742 = &_P_Kernel_readyList
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
	mov	563,r13		! source line 563
	mov	"\0\0IF",r10
!   if nextTh == 0 then goto _Label_1744		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1744
!	jmp	_Label_1743
_Label_1743:
! THEN...
	mov	567,r13		! source line 567
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	567,r13		! source line 567
	mov	"\0\0IF",r10
!   if status != 4 then goto _Label_1746		(int)
	load	[r14+8],r1
	load	[r1+76],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_1746
!	jmp	_Label_1745
_Label_1745:
! THEN...
	mov	568,r13		! source line 568
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1747 = _StringConst_52
	set	_StringConst_52,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1747  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	568,r13		! source line 568
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1746:
! ASSIGNMENT STATEMENT...
	mov	570,r13		! source line 570
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! SEND STATEMENT...
	mov	571,r13		! source line 571
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_1749 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1748  sizeInBytes=4
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
	mov	572,r13		! source line 572
	mov	"\0\0CA",r10
	call	_P_Kernel_Run
! END IF...
_Label_1744:
! ASSIGNMENT STATEMENT...
	mov	574,r13		! source line 574
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	574,r13		! source line 574
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
! RETURN STATEMENT...
	mov	574,r13		! source line 574
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
	.word	_Label_1750
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1751
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1752
	.word	-12
	.word	4
	.word	_Label_1753
	.word	-16
	.word	4
	.word	_Label_1754
	.word	-20
	.word	4
	.word	_Label_1755
	.word	-24
	.word	4
	.word	_Label_1756
	.word	-28
	.word	4
	.word	_Label_1757
	.word	-32
	.word	4
	.word	_Label_1758
	.word	-36
	.word	4
	.word	_Label_1759
	.word	-40
	.word	4
	.word	_Label_1760
	.word	-44
	.word	4
	.word	0
_Label_1750:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Yield\0"
	.align
_Label_1751:
	.ascii	"Pself\0"
	.align
_Label_1752:
	.byte	'?'
	.ascii	"_temp_1749\0"
	.align
_Label_1753:
	.byte	'?'
	.ascii	"_temp_1748\0"
	.align
_Label_1754:
	.byte	'?'
	.ascii	"_temp_1747\0"
	.align
_Label_1755:
	.byte	'?'
	.ascii	"_temp_1742\0"
	.align
_Label_1756:
	.byte	'?'
	.ascii	"_temp_1741\0"
	.align
_Label_1757:
	.byte	'?'
	.ascii	"_temp_1740\0"
	.align
_Label_1758:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
_Label_1759:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1760:
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
_Label_3979:
	push	r0
	sub	r1,1,r1
	bne	_Label_3979
	mov	579,r13		! source line 579
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	591,r13		! source line 591
	mov	"\0\0IF",r10
!   if _P_Kernel_currentInterruptStatus == 2 then goto _Label_1762		(int)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_1762
!	jmp	_Label_1761
_Label_1761:
! THEN...
	mov	592,r13		! source line 592
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1763 = _StringConst_53
	set	_StringConst_53,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1763  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	592,r13		! source line 592
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1762:
! IF STATEMENT...
	mov	595,r13		! source line 595
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if _temp_1766 == _P_Kernel_currentThread then goto _Label_1765		(int)
	load	[r14+-24],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1765
!	jmp	_Label_1764
_Label_1764:
! THEN...
	mov	596,r13		! source line 596
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1767 = _StringConst_54
	set	_StringConst_54,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1767  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	596,r13		! source line 596
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1765:
! ASSIGNMENT STATEMENT...
	mov	601,r13		! source line 601
	mov	"\0\0AS",r10
!   status = 4		(4 bytes)
	mov	4,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	602,r13		! source line 602
	mov	"\0\0AS",r10
	mov	602,r13		! source line 602
	mov	"\0\0SE",r10
!   _temp_1768 = &_P_Kernel_readyList
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
	mov	603,r13		! source line 603
	mov	"\0\0IF",r10
!   if intIsZero (nextTh) then goto _Label_1769
	load	[r14+-32],r1
	cmp	r1,r0
	be	_Label_1769
	jmp	_Label_1770
_Label_1769:
! THEN...
	mov	604,r13		! source line 604
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1771 = _StringConst_55
	set	_StringConst_55,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1771  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	604,r13		! source line 604
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1770:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=nextTh  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	606,r13		! source line 606
	mov	"\0\0CA",r10
	call	_P_Kernel_Run
! RETURN STATEMENT...
	mov	606,r13		! source line 606
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
	.word	_Label_1772
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1773
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1774
	.word	-12
	.word	4
	.word	_Label_1775
	.word	-16
	.word	4
	.word	_Label_1776
	.word	-20
	.word	4
	.word	_Label_1777
	.word	-24
	.word	4
	.word	_Label_1778
	.word	-28
	.word	4
	.word	_Label_1779
	.word	-32
	.word	4
	.word	0
_Label_1772:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Sleep\0"
	.align
_Label_1773:
	.ascii	"Pself\0"
	.align
_Label_1774:
	.byte	'?'
	.ascii	"_temp_1771\0"
	.align
_Label_1775:
	.byte	'?'
	.ascii	"_temp_1768\0"
	.align
_Label_1776:
	.byte	'?'
	.ascii	"_temp_1767\0"
	.align
_Label_1777:
	.byte	'?'
	.ascii	"_temp_1766\0"
	.align
_Label_1778:
	.byte	'?'
	.ascii	"_temp_1763\0"
	.align
_Label_1779:
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
_Label_3980:
	push	r0
	sub	r1,1,r1
	bne	_Label_3980
	mov	611,r13		! source line 611
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	617,r13		! source line 617
	mov	"\0\0IF",r10
!   _temp_1783 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-36]
!   Move address of _temp_1783 [0 ] into _temp_1784
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
!   Data Move: _temp_1782 = *_temp_1784  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if _temp_1782 == 606348324 then goto _Label_1781		(int)
	load	[r14+-40],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1781
!	jmp	_Label_1780
_Label_1780:
! THEN...
	mov	618,r13		! source line 618
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1785 = _StringConst_56
	set	_StringConst_56,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1785  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	618,r13		! source line 618
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
	jmp	_Label_1786
_Label_1781:
! ELSE...
	mov	619,r13		! source line 619
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	619,r13		! source line 619
	mov	"\0\0IF",r10
!   _temp_1790 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_1790 [999 ] into _temp_1791
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
!   Data Move: _temp_1789 = *_temp_1791  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_1789 == 606348324 then goto _Label_1788		(int)
	load	[r14+-24],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1788
!	jmp	_Label_1787
_Label_1787:
! THEN...
	mov	620,r13		! source line 620
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1792 = _StringConst_57
	set	_StringConst_57,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1792  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	620,r13		! source line 620
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1788:
! END IF...
_Label_1786:
! RETURN STATEMENT...
	mov	617,r13		! source line 617
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
	.word	_Label_1793
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1794
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1795
	.word	-12
	.word	4
	.word	_Label_1796
	.word	-16
	.word	4
	.word	_Label_1797
	.word	-20
	.word	4
	.word	_Label_1798
	.word	-24
	.word	4
	.word	_Label_1799
	.word	-28
	.word	4
	.word	_Label_1800
	.word	-32
	.word	4
	.word	_Label_1801
	.word	-36
	.word	4
	.word	_Label_1802
	.word	-40
	.word	4
	.word	0
_Label_1793:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"CheckOverflow\0"
	.align
_Label_1794:
	.ascii	"Pself\0"
	.align
_Label_1795:
	.byte	'?'
	.ascii	"_temp_1792\0"
	.align
_Label_1796:
	.byte	'?'
	.ascii	"_temp_1791\0"
	.align
_Label_1797:
	.byte	'?'
	.ascii	"_temp_1790\0"
	.align
_Label_1798:
	.byte	'?'
	.ascii	"_temp_1789\0"
	.align
_Label_1799:
	.byte	'?'
	.ascii	"_temp_1785\0"
	.align
_Label_1800:
	.byte	'?'
	.ascii	"_temp_1784\0"
	.align
_Label_1801:
	.byte	'?'
	.ascii	"_temp_1783\0"
	.align
_Label_1802:
	.byte	'?'
	.ascii	"_temp_1782\0"
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
_Label_3981:
	push	r0
	sub	r1,1,r1
	bne	_Label_3981
	mov	626,r13		! source line 626
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	632,r13		! source line 632
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	632,r13		! source line 632
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-196]
! CALL STATEMENT...
!   _temp_1803 = _StringConst_58
	set	_StringConst_58,r1
	store	r1,[r14+-188]
!   Prepare Argument: offset=8  value=_temp_1803  sizeInBytes=4
	load	[r14+-188],r1
	store	r1,[r15+0]
!   Call the function
	mov	633,r13		! source line 633
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=name  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+72],r1
	store	r1,[r15+0]
!   Call the function
	mov	634,r13		! source line 634
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1804 = _StringConst_59
	set	_StringConst_59,r1
	store	r1,[r14+-184]
!   Prepare Argument: offset=8  value=_temp_1804  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Call the function
	mov	635,r13		! source line 635
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_1805  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Call the function
	mov	636,r13		! source line 636
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1806 = _StringConst_60
	set	_StringConst_60,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=8  value=_temp_1806  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Call the function
	mov	637,r13		! source line 637
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1807 = _StringConst_61
	set	_StringConst_61,r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=8  value=_temp_1807  sizeInBytes=4
	load	[r14+-172],r1
	store	r1,[r15+0]
!   Call the function
	mov	638,r13		! source line 638
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	639,r13		! source line 639
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1812 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-168]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1813 = 12		(4 bytes)
	mov	12,r1
	store	r1,[r14+-164]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1812  (sizeInBytes=4)
	load	[r14+-168],r1
	store	r1,[r14+-192]
_Label_1808:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1813 then goto _Label_1811		
	load	[r14+-192],r1
	load	[r14+-164],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1811
_Label_1809:
	mov	639,r13		! source line 639
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1814 = _StringConst_62
	set	_StringConst_62,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1814  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	640,r13		! source line 640
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1815 = i + 2		(int)
	load	[r14+-192],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_1815  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	641,r13		! source line 641
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1816 = _StringConst_63
	set	_StringConst_63,r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=8  value=_temp_1816  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Call the function
	mov	642,r13		! source line 642
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1818 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-144]
!   Move address of _temp_1818 [i ] into _temp_1819
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
!   Data Move: _temp_1817 = *_temp_1819  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1817  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	643,r13		! source line 643
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1820 = _StringConst_64
	set	_StringConst_64,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_1820  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	644,r13		! source line 644
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1822 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-128]
!   Move address of _temp_1822 [i ] into _temp_1823
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
!   Data Move: _temp_1821 = *_temp_1823  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1821  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	645,r13		! source line 645
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1824 = _StringConst_65
	set	_StringConst_65,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_1824  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	646,r13		! source line 646
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1810:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1808
! END FOR
_Label_1811:
! CALL STATEMENT...
!   _temp_1825 = _StringConst_66
	set	_StringConst_66,r1
	store	r1,[r14+-116]
!   _temp_1826 = stackTop		(4 bytes)
	load	[r14+8],r1
	load	[r1+68],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1825  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1826  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Call the function
	mov	648,r13		! source line 648
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_1827 = _StringConst_67
	set	_StringConst_67,r1
	store	r1,[r14+-108]
!   _temp_1829 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-100]
!   Move address of _temp_1829 [0 ] into _temp_1830
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
!   _temp_1828 = _temp_1830		(4 bytes)
	load	[r14+-96],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1827  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1828  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+4]
!   Call the function
	mov	649,r13		! source line 649
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! SWITCH STATEMENT (using series of tests)...
	mov	650,r13		! source line 650
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   Branch to the right case label
	load	[r14+8],r1
	load	[r1+76],r1
	cmp	r1,1
	be	_Label_1833
	cmp	r1,2
	be	_Label_1834
	cmp	r1,3
	be	_Label_1835
	cmp	r1,4
	be	_Label_1836
	cmp	r1,5
	be	_Label_1837
	jmp	_Label_1831
! CASE 1...
_Label_1833:
! CALL STATEMENT...
!   _temp_1838 = _StringConst_68
	set	_StringConst_68,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_1838  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	652,r13		! source line 652
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	653,r13		! source line 653
	mov	"\0\0BR",r10
	jmp	_Label_1832
! CASE 2...
_Label_1834:
! CALL STATEMENT...
!   _temp_1839 = _StringConst_69
	set	_StringConst_69,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_1839  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	655,r13		! source line 655
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	656,r13		! source line 656
	mov	"\0\0BR",r10
	jmp	_Label_1832
! CASE 3...
_Label_1835:
! CALL STATEMENT...
!   _temp_1840 = _StringConst_70
	set	_StringConst_70,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1840  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	658,r13		! source line 658
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	659,r13		! source line 659
	mov	"\0\0BR",r10
	jmp	_Label_1832
! CASE 4...
_Label_1836:
! CALL STATEMENT...
!   _temp_1841 = _StringConst_71
	set	_StringConst_71,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_1841  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	661,r13		! source line 661
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	662,r13		! source line 662
	mov	"\0\0BR",r10
	jmp	_Label_1832
! CASE 5...
_Label_1837:
! CALL STATEMENT...
!   _temp_1842 = _StringConst_72
	set	_StringConst_72,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1842  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	664,r13		! source line 664
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	665,r13		! source line 665
	mov	"\0\0BR",r10
	jmp	_Label_1832
! DEFAULT CASE...
_Label_1831:
! CALL STATEMENT...
!   _temp_1843 = _StringConst_73
	set	_StringConst_73,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1843  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	667,r13		! source line 667
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_1832:
! CALL STATEMENT...
!   _temp_1844 = _StringConst_74
	set	_StringConst_74,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_1844  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	669,r13		! source line 669
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=isUserThread  sizeInBytes=1
	load	[r14+8],r1
	loadb	[r1+4092],r1
	storeb	r1,[r15+0]
!   Call the function
	mov	670,r13		! source line 670
	mov	"\0\0CE",r10
	call	printBool
! CALL STATEMENT...
!   Call the function
	mov	671,r13		! source line 671
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_1845 = _StringConst_75
	set	_StringConst_75,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1845  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	672,r13		! source line 672
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	673,r13		! source line 673
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1850 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1851 = 14		(4 bytes)
	mov	14,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1850  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+-192]
_Label_1846:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1851 then goto _Label_1849		
	load	[r14+-192],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1849
_Label_1847:
	mov	673,r13		! source line 673
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1852 = _StringConst_76
	set	_StringConst_76,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1852  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	674,r13		! source line 674
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1853 = i + 1		(int)
	load	[r14+-192],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1853  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	675,r13		! source line 675
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1854 = _StringConst_77
	set	_StringConst_77,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1854  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	676,r13		! source line 676
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1856 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_1856 [i ] into _temp_1857
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
!   Data Move: _temp_1855 = *_temp_1857  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1855  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	677,r13		! source line 677
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1858 = _StringConst_78
	set	_StringConst_78,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1858  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	678,r13		! source line 678
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1860 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-20]
!   Move address of _temp_1860 [i ] into _temp_1861
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
!   Data Move: _temp_1859 = *_temp_1861  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1859  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	679,r13		! source line 679
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1862 = _StringConst_79
	set	_StringConst_79,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1862  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	680,r13		! source line 680
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1848:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1846
! END FOR
_Label_1849:
! ASSIGNMENT STATEMENT...
	mov	682,r13		! source line 682
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-196],r1
	store	r1,[r15+0]
!   Call the function
	mov	682,r13		! source line 682
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-196]
! RETURN STATEMENT...
	mov	682,r13		! source line 682
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
	.word	_Label_1863
	.word	4		! total size of parameters
	.word	196		! frame size = 196
	.word	_Label_1864
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1865
	.word	-12
	.word	4
	.word	_Label_1866
	.word	-16
	.word	4
	.word	_Label_1867
	.word	-20
	.word	4
	.word	_Label_1868
	.word	-24
	.word	4
	.word	_Label_1869
	.word	-28
	.word	4
	.word	_Label_1870
	.word	-32
	.word	4
	.word	_Label_1871
	.word	-36
	.word	4
	.word	_Label_1872
	.word	-40
	.word	4
	.word	_Label_1873
	.word	-44
	.word	4
	.word	_Label_1874
	.word	-48
	.word	4
	.word	_Label_1875
	.word	-52
	.word	4
	.word	_Label_1876
	.word	-56
	.word	4
	.word	_Label_1877
	.word	-60
	.word	4
	.word	_Label_1878
	.word	-64
	.word	4
	.word	_Label_1879
	.word	-68
	.word	4
	.word	_Label_1880
	.word	-72
	.word	4
	.word	_Label_1881
	.word	-76
	.word	4
	.word	_Label_1882
	.word	-80
	.word	4
	.word	_Label_1883
	.word	-84
	.word	4
	.word	_Label_1884
	.word	-88
	.word	4
	.word	_Label_1885
	.word	-92
	.word	4
	.word	_Label_1886
	.word	-96
	.word	4
	.word	_Label_1887
	.word	-100
	.word	4
	.word	_Label_1888
	.word	-104
	.word	4
	.word	_Label_1889
	.word	-108
	.word	4
	.word	_Label_1890
	.word	-112
	.word	4
	.word	_Label_1891
	.word	-116
	.word	4
	.word	_Label_1892
	.word	-120
	.word	4
	.word	_Label_1893
	.word	-124
	.word	4
	.word	_Label_1894
	.word	-128
	.word	4
	.word	_Label_1895
	.word	-132
	.word	4
	.word	_Label_1896
	.word	-136
	.word	4
	.word	_Label_1897
	.word	-140
	.word	4
	.word	_Label_1898
	.word	-144
	.word	4
	.word	_Label_1899
	.word	-148
	.word	4
	.word	_Label_1900
	.word	-152
	.word	4
	.word	_Label_1901
	.word	-156
	.word	4
	.word	_Label_1902
	.word	-160
	.word	4
	.word	_Label_1903
	.word	-164
	.word	4
	.word	_Label_1904
	.word	-168
	.word	4
	.word	_Label_1905
	.word	-172
	.word	4
	.word	_Label_1906
	.word	-176
	.word	4
	.word	_Label_1907
	.word	-180
	.word	4
	.word	_Label_1908
	.word	-184
	.word	4
	.word	_Label_1909
	.word	-188
	.word	4
	.word	_Label_1910
	.word	-192
	.word	4
	.word	_Label_1911
	.word	-196
	.word	4
	.word	0
_Label_1863:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1864:
	.ascii	"Pself\0"
	.align
_Label_1865:
	.byte	'?'
	.ascii	"_temp_1862\0"
	.align
_Label_1866:
	.byte	'?'
	.ascii	"_temp_1861\0"
	.align
_Label_1867:
	.byte	'?'
	.ascii	"_temp_1860\0"
	.align
_Label_1868:
	.byte	'?'
	.ascii	"_temp_1859\0"
	.align
_Label_1869:
	.byte	'?'
	.ascii	"_temp_1858\0"
	.align
_Label_1870:
	.byte	'?'
	.ascii	"_temp_1857\0"
	.align
_Label_1871:
	.byte	'?'
	.ascii	"_temp_1856\0"
	.align
_Label_1872:
	.byte	'?'
	.ascii	"_temp_1855\0"
	.align
_Label_1873:
	.byte	'?'
	.ascii	"_temp_1854\0"
	.align
_Label_1874:
	.byte	'?'
	.ascii	"_temp_1853\0"
	.align
_Label_1875:
	.byte	'?'
	.ascii	"_temp_1852\0"
	.align
_Label_1876:
	.byte	'?'
	.ascii	"_temp_1851\0"
	.align
_Label_1877:
	.byte	'?'
	.ascii	"_temp_1850\0"
	.align
_Label_1878:
	.byte	'?'
	.ascii	"_temp_1845\0"
	.align
_Label_1879:
	.byte	'?'
	.ascii	"_temp_1844\0"
	.align
_Label_1880:
	.byte	'?'
	.ascii	"_temp_1843\0"
	.align
_Label_1881:
	.byte	'?'
	.ascii	"_temp_1842\0"
	.align
_Label_1882:
	.byte	'?'
	.ascii	"_temp_1841\0"
	.align
_Label_1883:
	.byte	'?'
	.ascii	"_temp_1840\0"
	.align
_Label_1884:
	.byte	'?'
	.ascii	"_temp_1839\0"
	.align
_Label_1885:
	.byte	'?'
	.ascii	"_temp_1838\0"
	.align
_Label_1886:
	.byte	'?'
	.ascii	"_temp_1830\0"
	.align
_Label_1887:
	.byte	'?'
	.ascii	"_temp_1829\0"
	.align
_Label_1888:
	.byte	'?'
	.ascii	"_temp_1828\0"
	.align
_Label_1889:
	.byte	'?'
	.ascii	"_temp_1827\0"
	.align
_Label_1890:
	.byte	'?'
	.ascii	"_temp_1826\0"
	.align
_Label_1891:
	.byte	'?'
	.ascii	"_temp_1825\0"
	.align
_Label_1892:
	.byte	'?'
	.ascii	"_temp_1824\0"
	.align
_Label_1893:
	.byte	'?'
	.ascii	"_temp_1823\0"
	.align
_Label_1894:
	.byte	'?'
	.ascii	"_temp_1822\0"
	.align
_Label_1895:
	.byte	'?'
	.ascii	"_temp_1821\0"
	.align
_Label_1896:
	.byte	'?'
	.ascii	"_temp_1820\0"
	.align
_Label_1897:
	.byte	'?'
	.ascii	"_temp_1819\0"
	.align
_Label_1898:
	.byte	'?'
	.ascii	"_temp_1818\0"
	.align
_Label_1899:
	.byte	'?'
	.ascii	"_temp_1817\0"
	.align
_Label_1900:
	.byte	'?'
	.ascii	"_temp_1816\0"
	.align
_Label_1901:
	.byte	'?'
	.ascii	"_temp_1815\0"
	.align
_Label_1902:
	.byte	'?'
	.ascii	"_temp_1814\0"
	.align
_Label_1903:
	.byte	'?'
	.ascii	"_temp_1813\0"
	.align
_Label_1904:
	.byte	'?'
	.ascii	"_temp_1812\0"
	.align
_Label_1905:
	.byte	'?'
	.ascii	"_temp_1807\0"
	.align
_Label_1906:
	.byte	'?'
	.ascii	"_temp_1806\0"
	.align
_Label_1907:
	.byte	'?'
	.ascii	"_temp_1805\0"
	.align
_Label_1908:
	.byte	'?'
	.ascii	"_temp_1804\0"
	.align
_Label_1909:
	.byte	'?'
	.ascii	"_temp_1803\0"
	.align
_Label_1910:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1911:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  CLASS ThreadManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ThreadManager:
	.word	_Label_1912
	jmp	_Method_P_Kernel_ThreadManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ThreadManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ThreadManager_3	! 12:	GetANewThread
	jmp	_Method_P_Kernel_ThreadManager_4	! 16:	FreeThread
	.word	0
! 
! Class descriptor:
! 
_Label_1912:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1913
	.word	_sourceFileName
	.word	192		! line number
	.word	41696		! size of instances, in bytes
	.word	_P_Kernel_ThreadManager
	.word	_P_System_Object
	.word	0
_Label_1913:
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
_Label_3982:
	push	r0
	sub	r1,1,r1
	bne	_Label_3982
	mov	737,r13		! source line 737
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	743,r13		! source line 743
	mov	"\0\0AS",r10
!   _temp_1914 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	set	-45904,r2
	store	r1,[r14+r2]
!   NEW ARRAY Constructor...
!   _temp_1916 = &_temp_1915
	set	-45900,r1
	add	r14,r1,r1
	store	r1,[r14+-4256]
!   _temp_1916 = _temp_1916 + 4
	load	[r14+-4256],r1
	add	r1,4,r1
	store	r1,[r14+-4256]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1918 = zeros  (sizeInBytes=4164)
	add	r14,-4248,r4
	mov	1041,r3
_Label_3983:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3983
!   _temp_1918 = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	store	r1,[r14+-4248]
	mov	10,r1
	store	r1,[r14+-4252]
_Label_1920:
!   Data Move: *_temp_1916 = _temp_1918  (sizeInBytes=4164)
	add	r14,-4248,r5
	load	[r14+-4256],r4
	mov	1041,r3
_Label_3984:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3984
!   _temp_1916 = _temp_1916 + 4164
	load	[r14+-4256],r1
	add	r1,4164,r1
	store	r1,[r14+-4256]
!   _temp_1917 = _temp_1917 + -1
	load	[r14+-4252],r1
	add	r1,-1,r1
	store	r1,[r14+-4252]
!   if intNotZero (_temp_1917) then goto _Label_1920
	load	[r14+-4252],r1
	cmp	r1,r0
	bne	_Label_1920
!   Initialize the array size...
	mov	10,r1
	set	-45900,r2
	store	r1,[r14+r2]
!   _temp_1921 = &_temp_1915
	set	-45900,r1
	add	r14,r1,r1
	store	r1,[r14+-80]
!   make sure array has size 10
	set	-45904,r1
	load	[r14+r1],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3985
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3985:
!   make sure array has size 10
	load	[r14+-80],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1914 = *_temp_1921  (sizeInBytes=41644)
	load	[r14+-80],r5
	set	-45904,r4
	load	[r14+r4],r4
	mov	10411,r3
_Label_3986:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3986
! ASSIGNMENT STATEMENT...
	mov	744,r13		! source line 744
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
	mov	745,r13		! source line 745
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
	mov	746,r13		! source line 746
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
	mov	747,r13		! source line 747
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1929 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1930 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1929  (sizeInBytes=4)
	load	[r14+-64],r1
	set	-45908,r2
	store	r1,[r14+r2]
_Label_1925:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1930 then goto _Label_1928		
	set	-45908,r1
	load	[r14+r1],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1928
_Label_1926:
	mov	747,r13		! source line 747
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	748,r13		! source line 748
	mov	"\0\0SE",r10
!   _temp_1931 = _StringConst_80
	set	_StringConst_80,r1
	store	r1,[r14+-56]
!   _temp_1932 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   Move address of _temp_1932 [i ] into _temp_1933
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
!   Prepare Argument: offset=12  value=_temp_1931  sizeInBytes=4
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
	mov	749,r13		! source line 749
	mov	"\0\0AS",r10
!   _temp_1934 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_1934 [i ] into _temp_1935
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
!   _temp_1936 = _temp_1935 + 76
	load	[r14+-40],r1
	add	r1,76,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_1936 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-36],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	750,r13		! source line 750
	mov	"\0\0SE",r10
!   _temp_1938 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1938 [i ] into _temp_1939
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
!   _temp_1937 = _temp_1939		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-32]
!   _temp_1940 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_1937  sizeInBytes=4
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
_Label_1927:
!   i = i + 1
	set	-45908,r1
	load	[r14+r1],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	set	-45908,r2
	store	r1,[r14+r2]
	jmp	_Label_1925
! END FOR
_Label_1928:
! SEND STATEMENT...
	mov	752,r13		! source line 752
	mov	"\0\0SE",r10
!   _temp_1941 = &threadManagerLock
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
	mov	753,r13		! source line 753
	mov	"\0\0SE",r10
!   _temp_1942 = &aThreadIsAvailable
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
	mov	753,r13		! source line 753
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
	.word	_Label_1943
	.word	4		! total size of parameters
	.word	45908		! frame size = 45908
	.word	_Label_1944
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1945
	.word	-12
	.word	4
	.word	_Label_1946
	.word	-16
	.word	4
	.word	_Label_1947
	.word	-20
	.word	4
	.word	_Label_1948
	.word	-24
	.word	4
	.word	_Label_1949
	.word	-28
	.word	4
	.word	_Label_1950
	.word	-32
	.word	4
	.word	_Label_1951
	.word	-36
	.word	4
	.word	_Label_1952
	.word	-40
	.word	4
	.word	_Label_1953
	.word	-44
	.word	4
	.word	_Label_1954
	.word	-48
	.word	4
	.word	_Label_1955
	.word	-52
	.word	4
	.word	_Label_1956
	.word	-56
	.word	4
	.word	_Label_1957
	.word	-60
	.word	4
	.word	_Label_1958
	.word	-64
	.word	4
	.word	_Label_1959
	.word	-68
	.word	4
	.word	_Label_1960
	.word	-72
	.word	4
	.word	_Label_1961
	.word	-76
	.word	4
	.word	_Label_1962
	.word	-80
	.word	4
	.word	_Label_1963
	.word	-84
	.word	4
	.word	_Label_1964
	.word	-4248
	.word	4164
	.word	_Label_1965
	.word	-4252
	.word	4
	.word	_Label_1966
	.word	-4256
	.word	4
	.word	_Label_1967
	.word	-45900
	.word	41644
	.word	_Label_1968
	.word	-45904
	.word	4
	.word	_Label_1969
	.word	-45908
	.word	4
	.word	0
_Label_1943:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1944:
	.ascii	"Pself\0"
	.align
_Label_1945:
	.byte	'?'
	.ascii	"_temp_1942\0"
	.align
_Label_1946:
	.byte	'?'
	.ascii	"_temp_1941\0"
	.align
_Label_1947:
	.byte	'?'
	.ascii	"_temp_1940\0"
	.align
_Label_1948:
	.byte	'?'
	.ascii	"_temp_1939\0"
	.align
_Label_1949:
	.byte	'?'
	.ascii	"_temp_1938\0"
	.align
_Label_1950:
	.byte	'?'
	.ascii	"_temp_1937\0"
	.align
_Label_1951:
	.byte	'?'
	.ascii	"_temp_1936\0"
	.align
_Label_1952:
	.byte	'?'
	.ascii	"_temp_1935\0"
	.align
_Label_1953:
	.byte	'?'
	.ascii	"_temp_1934\0"
	.align
_Label_1954:
	.byte	'?'
	.ascii	"_temp_1933\0"
	.align
_Label_1955:
	.byte	'?'
	.ascii	"_temp_1932\0"
	.align
_Label_1956:
	.byte	'?'
	.ascii	"_temp_1931\0"
	.align
_Label_1957:
	.byte	'?'
	.ascii	"_temp_1930\0"
	.align
_Label_1958:
	.byte	'?'
	.ascii	"_temp_1929\0"
	.align
_Label_1959:
	.byte	'?'
	.ascii	"_temp_1924\0"
	.align
_Label_1960:
	.byte	'?'
	.ascii	"_temp_1923\0"
	.align
_Label_1961:
	.byte	'?'
	.ascii	"_temp_1922\0"
	.align
_Label_1962:
	.byte	'?'
	.ascii	"_temp_1921\0"
	.align
_Label_1963:
	.byte	'?'
	.ascii	"_temp_1919\0"
	.align
_Label_1964:
	.byte	'?'
	.ascii	"_temp_1918\0"
	.align
_Label_1965:
	.byte	'?'
	.ascii	"_temp_1917\0"
	.align
_Label_1966:
	.byte	'?'
	.ascii	"_temp_1916\0"
	.align
_Label_1967:
	.byte	'?'
	.ascii	"_temp_1915\0"
	.align
_Label_1968:
	.byte	'?'
	.ascii	"_temp_1914\0"
	.align
_Label_1969:
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
_Label_3987:
	push	r0
	sub	r1,1,r1
	bne	_Label_3987
	mov	758,r13		! source line 758
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	765,r13		! source line 765
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	765,r13		! source line 765
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! CALL STATEMENT...
!   _temp_1970 = _StringConst_81
	set	_StringConst_81,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1970  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	766,r13		! source line 766
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	767,r13		! source line 767
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1975 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1976 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1975  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-56]
_Label_1971:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1976 then goto _Label_1974		
	load	[r14+-56],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1974
_Label_1972:
	mov	767,r13		! source line 767
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1977 = _StringConst_82
	set	_StringConst_82,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1977  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	768,r13		! source line 768
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	769,r13		! source line 769
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1978 = _StringConst_83
	set	_StringConst_83,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1978  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	770,r13		! source line 770
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1980 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1980 [i ] into _temp_1981
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
!   _temp_1979 = _temp_1981		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1979  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	771,r13		! source line 771
	mov	"\0\0CA",r10
	call	_function_188_ThreadPrintShort
!   Increment the FOR-LOOP index variable and jump back
_Label_1973:
!   i = i + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1971
! END FOR
_Label_1974:
! CALL STATEMENT...
!   _temp_1982 = _StringConst_84
	set	_StringConst_84,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1982  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	773,r13		! source line 773
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	774,r13		! source line 774
	mov	"\0\0SE",r10
!   _temp_1983 = _function_187_PrintObjectAddr
	set	_function_187_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1984 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1983  sizeInBytes=4
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
	mov	775,r13		! source line 775
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	776,r13		! source line 776
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	776,r13		! source line 776
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! RETURN STATEMENT...
	mov	776,r13		! source line 776
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
	.word	_Label_1985
	.word	4		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1986
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1987
	.word	-12
	.word	4
	.word	_Label_1988
	.word	-16
	.word	4
	.word	_Label_1989
	.word	-20
	.word	4
	.word	_Label_1990
	.word	-24
	.word	4
	.word	_Label_1991
	.word	-28
	.word	4
	.word	_Label_1992
	.word	-32
	.word	4
	.word	_Label_1993
	.word	-36
	.word	4
	.word	_Label_1994
	.word	-40
	.word	4
	.word	_Label_1995
	.word	-44
	.word	4
	.word	_Label_1996
	.word	-48
	.word	4
	.word	_Label_1997
	.word	-52
	.word	4
	.word	_Label_1998
	.word	-56
	.word	4
	.word	_Label_1999
	.word	-60
	.word	4
	.word	0
_Label_1985:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1986:
	.ascii	"Pself\0"
	.align
_Label_1987:
	.byte	'?'
	.ascii	"_temp_1984\0"
	.align
_Label_1988:
	.byte	'?'
	.ascii	"_temp_1983\0"
	.align
_Label_1989:
	.byte	'?'
	.ascii	"_temp_1982\0"
	.align
_Label_1990:
	.byte	'?'
	.ascii	"_temp_1981\0"
	.align
_Label_1991:
	.byte	'?'
	.ascii	"_temp_1980\0"
	.align
_Label_1992:
	.byte	'?'
	.ascii	"_temp_1979\0"
	.align
_Label_1993:
	.byte	'?'
	.ascii	"_temp_1978\0"
	.align
_Label_1994:
	.byte	'?'
	.ascii	"_temp_1977\0"
	.align
_Label_1995:
	.byte	'?'
	.ascii	"_temp_1976\0"
	.align
_Label_1996:
	.byte	'?'
	.ascii	"_temp_1975\0"
	.align
_Label_1997:
	.byte	'?'
	.ascii	"_temp_1970\0"
	.align
_Label_1998:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1999:
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
_Label_3988:
	push	r0
	sub	r1,1,r1
	bne	_Label_3988
	mov	781,r13		! source line 781
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	787,r13		! source line 787
	mov	"\0\0SE",r10
!   _temp_2000 = &threadManagerLock
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
	mov	788,r13		! source line 788
	mov	"\0\0WH",r10
_Label_2001:
	mov	788,r13		! source line 788
	mov	"\0\0SE",r10
!   _temp_2004 = &freeList
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
!   if result==true then goto _Label_2002 else goto _Label_2003
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2003
	jmp	_Label_2002
_Label_2002:
	mov	788,r13		! source line 788
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	789,r13		! source line 789
	mov	"\0\0SE",r10
!   _temp_2005 = &threadManagerLock
	set	41676,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-28]
!   _temp_2006 = &aThreadIsAvailable
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_2005  sizeInBytes=4
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
	jmp	_Label_2001
_Label_2003:
! ASSIGNMENT STATEMENT...
	mov	791,r13		! source line 791
	mov	"\0\0AS",r10
	mov	791,r13		! source line 791
	mov	"\0\0SE",r10
!   _temp_2007 = &freeList
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
	mov	792,r13		! source line 792
	mov	"\0\0AS",r10
!   if intIsZero (availableThreadPtr) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2008 = availableThreadPtr + 76
	load	[r14+-40],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2008 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	793,r13		! source line 793
	mov	"\0\0SE",r10
!   _temp_2009 = &threadManagerLock
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
	mov	794,r13		! source line 794
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
	.word	_Label_2010
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_2011
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2012
	.word	-12
	.word	4
	.word	_Label_2013
	.word	-16
	.word	4
	.word	_Label_2014
	.word	-20
	.word	4
	.word	_Label_2015
	.word	-24
	.word	4
	.word	_Label_2016
	.word	-28
	.word	4
	.word	_Label_2017
	.word	-32
	.word	4
	.word	_Label_2018
	.word	-36
	.word	4
	.word	_Label_2019
	.word	-40
	.word	4
	.word	0
_Label_2010:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"GetANewThread\0"
	.align
_Label_2011:
	.ascii	"Pself\0"
	.align
_Label_2012:
	.byte	'?'
	.ascii	"_temp_2009\0"
	.align
_Label_2013:
	.byte	'?'
	.ascii	"_temp_2008\0"
	.align
_Label_2014:
	.byte	'?'
	.ascii	"_temp_2007\0"
	.align
_Label_2015:
	.byte	'?'
	.ascii	"_temp_2006\0"
	.align
_Label_2016:
	.byte	'?'
	.ascii	"_temp_2005\0"
	.align
_Label_2017:
	.byte	'?'
	.ascii	"_temp_2004\0"
	.align
_Label_2018:
	.byte	'?'
	.ascii	"_temp_2000\0"
	.align
_Label_2019:
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
_Label_3989:
	push	r0
	sub	r1,1,r1
	bne	_Label_3989
	mov	799,r13		! source line 799
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	803,r13		! source line 803
	mov	"\0\0SE",r10
!   _temp_2020 = &threadManagerLock
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
	mov	804,r13		! source line 804
	mov	"\0\0AS",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2021 = th + 76
	load	[r14+12],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2021 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	805,r13		! source line 805
	mov	"\0\0SE",r10
!   _temp_2022 = &freeList
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
	mov	806,r13		! source line 806
	mov	"\0\0SE",r10
!   _temp_2023 = &threadManagerLock
	set	41676,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-20]
!   _temp_2024 = &aThreadIsAvailable
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2023  sizeInBytes=4
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
	mov	807,r13		! source line 807
	mov	"\0\0SE",r10
!   _temp_2025 = &threadManagerLock
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
	mov	807,r13		! source line 807
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
	.word	_Label_2026
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_2027
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2028
	.word	12
	.word	4
	.word	_Label_2029
	.word	-12
	.word	4
	.word	_Label_2030
	.word	-16
	.word	4
	.word	_Label_2031
	.word	-20
	.word	4
	.word	_Label_2032
	.word	-24
	.word	4
	.word	_Label_2033
	.word	-28
	.word	4
	.word	_Label_2034
	.word	-32
	.word	4
	.word	0
_Label_2026:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"FreeThread\0"
	.align
_Label_2027:
	.ascii	"Pself\0"
	.align
_Label_2028:
	.byte	'P'
	.ascii	"th\0"
	.align
_Label_2029:
	.byte	'?'
	.ascii	"_temp_2025\0"
	.align
_Label_2030:
	.byte	'?'
	.ascii	"_temp_2024\0"
	.align
_Label_2031:
	.byte	'?'
	.ascii	"_temp_2023\0"
	.align
_Label_2032:
	.byte	'?'
	.ascii	"_temp_2022\0"
	.align
_Label_2033:
	.byte	'?'
	.ascii	"_temp_2021\0"
	.align
_Label_2034:
	.byte	'?'
	.ascii	"_temp_2020\0"
	.align
! 
! ===============  CLASS ProcessControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessControlBlock:
	.word	_Label_2035
	jmp	_Method_P_Kernel_ProcessControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessControlBlock_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessControlBlock_3	! 12:	PrintShort
	.word	0
! 
! Class descriptor:
! 
_Label_2035:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2036
	.word	_sourceFileName
	.word	213		! line number
	.word	168		! size of instances, in bytes
	.word	_P_Kernel_ProcessControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_2036:
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
	mov	18,r1
_Label_3990:
	push	r0
	sub	r1,1,r1
	bne	_Label_3990
	mov	820,r13		! source line 820
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	821,r13		! source line 821
	mov	"\0\0AS",r10
!   pid = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	822,r13		! source line 822
	mov	"\0\0AS",r10
!   status = 3		(4 bytes)
	mov	3,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	823,r13		! source line 823
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: addrSpace = zeros  (sizeInBytes=92)
	load	[r14+8],r4
	add	r4,32,r4
	mov	23,r3
_Label_3991:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3991
!   addrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! SEND STATEMENT...
	mov	824,r13		! source line 824
	mov	"\0\0SE",r10
!   _temp_2038 = &addrSpace
	load	[r14+8],r1
	add	r1,32,r1
	store	r1,[r14+-72]
!   Send message Init
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	825,r13		! source line 825
	mov	"\0\0AS",r10
!   _temp_2039 = &fileDescriptor
	load	[r14+8],r1
	add	r1,124,r1
	store	r1,[r14+-68]
!   NEW ARRAY Constructor...
!   _temp_2041 = &_temp_2040
	add	r14,-64,r1
	store	r1,[r14+-20]
!   _temp_2041 = _temp_2041 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	10,r1
	store	r1,[r14+-16]
_Label_2043:
!   Data Move: *_temp_2041 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_2041 = _temp_2041 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_2042 = _temp_2042 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_2042) then goto _Label_2043
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_2043
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-64]
!   _temp_2044 = &_temp_2040
	add	r14,-64,r1
	store	r1,[r14+-12]
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3992
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3992:
!   make sure array has size 10
	load	[r14+-12],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2039 = *_temp_2044  (sizeInBytes=44)
	load	[r14+-12],r5
	load	[r14+-68],r4
	mov	11,r3
_Label_3993:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3993
! RETURN STATEMENT...
	mov	825,r13		! source line 825
	mov	"\0\0RE",r10
	add	r15,76,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_1:
	.word	_sourceFileName
	.word	_Label_2045
	.word	4		! total size of parameters
	.word	72		! frame size = 72
	.word	_Label_2046
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2047
	.word	-12
	.word	4
	.word	_Label_2048
	.word	-16
	.word	4
	.word	_Label_2049
	.word	-20
	.word	4
	.word	_Label_2050
	.word	-64
	.word	44
	.word	_Label_2051
	.word	-68
	.word	4
	.word	_Label_2052
	.word	-72
	.word	4
	.word	_Label_2053
	.word	-76
	.word	4
	.word	0
_Label_2045:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2046:
	.ascii	"Pself\0"
	.align
_Label_2047:
	.byte	'?'
	.ascii	"_temp_2044\0"
	.align
_Label_2048:
	.byte	'?'
	.ascii	"_temp_2042\0"
	.align
_Label_2049:
	.byte	'?'
	.ascii	"_temp_2041\0"
	.align
_Label_2050:
	.byte	'?'
	.ascii	"_temp_2040\0"
	.align
_Label_2051:
	.byte	'?'
	.ascii	"_temp_2039\0"
	.align
_Label_2052:
	.byte	'?'
	.ascii	"_temp_2038\0"
	.align
_Label_2053:
	.byte	'?'
	.ascii	"_temp_2037\0"
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
_Label_3994:
	push	r0
	sub	r1,1,r1
	bne	_Label_3994
	mov	831,r13		! source line 831
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	836,r13		! source line 836
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2054) then goto _runtimeErrorNullPointer
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
!   _temp_2055 = _StringConst_85
	set	_StringConst_85,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2055  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	839,r13		! source line 839
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=myThread  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	840,r13		! source line 840
	mov	"\0\0CA",r10
	call	_function_188_ThreadPrintShort
! CALL STATEMENT...
!   Call the function
	mov	850,r13		! source line 850
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	850,r13		! source line 850
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
	.word	_Label_2056
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_2057
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2058
	.word	-12
	.word	4
	.word	_Label_2059
	.word	-16
	.word	4
	.word	0
_Label_2056:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2057:
	.ascii	"Pself\0"
	.align
_Label_2058:
	.byte	'?'
	.ascii	"_temp_2055\0"
	.align
_Label_2059:
	.byte	'?'
	.ascii	"_temp_2054\0"
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
_Label_3995:
	push	r0
	sub	r1,1,r1
	bne	_Label_3995
	mov	855,r13		! source line 855
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2060 = _StringConst_86
	set	_StringConst_86,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2060  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	859,r13		! source line 859
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_2061  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	860,r13		! source line 860
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2062 = _StringConst_87
	set	_StringConst_87,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_2062  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	861,r13		! source line 861
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=pid  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	862,r13		! source line 862
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2063 = _StringConst_88
	set	_StringConst_88,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2063  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	863,r13		! source line 863
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	864,r13		! source line 864
	mov	"\0\0IF",r10
!   if status != 1 then goto _Label_2065		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_2065
!	jmp	_Label_2064
_Label_2064:
! THEN...
	mov	865,r13		! source line 865
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2066 = _StringConst_89
	set	_StringConst_89,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2066  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	865,r13		! source line 865
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2067
_Label_2065:
! ELSE...
	mov	866,r13		! source line 866
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	866,r13		! source line 866
	mov	"\0\0IF",r10
!   if status != 2 then goto _Label_2069		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_2069
!	jmp	_Label_2068
_Label_2068:
! THEN...
	mov	867,r13		! source line 867
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2070 = _StringConst_90
	set	_StringConst_90,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2070  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	867,r13		! source line 867
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2071
_Label_2069:
! ELSE...
	mov	868,r13		! source line 868
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	868,r13		! source line 868
	mov	"\0\0IF",r10
!   if status != 3 then goto _Label_2073		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_2073
!	jmp	_Label_2072
_Label_2072:
! THEN...
	mov	869,r13		! source line 869
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2074 = _StringConst_91
	set	_StringConst_91,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2074  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	869,r13		! source line 869
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2075
_Label_2073:
! ELSE...
	mov	871,r13		! source line 871
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2076 = _StringConst_92
	set	_StringConst_92,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2076  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	871,r13		! source line 871
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2075:
! END IF...
_Label_2071:
! END IF...
_Label_2067:
! CALL STATEMENT...
!   _temp_2077 = _StringConst_93
	set	_StringConst_93,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2077  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	873,r13		! source line 873
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=parentsPid  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	874,r13		! source line 874
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2078 = _StringConst_94
	set	_StringConst_94,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2078  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	875,r13		! source line 875
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=exitStatus  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	876,r13		! source line 876
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	877,r13		! source line 877
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	877,r13		! source line 877
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
	.word	_Label_2079
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_2080
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2081
	.word	-12
	.word	4
	.word	_Label_2082
	.word	-16
	.word	4
	.word	_Label_2083
	.word	-20
	.word	4
	.word	_Label_2084
	.word	-24
	.word	4
	.word	_Label_2085
	.word	-28
	.word	4
	.word	_Label_2086
	.word	-32
	.word	4
	.word	_Label_2087
	.word	-36
	.word	4
	.word	_Label_2088
	.word	-40
	.word	4
	.word	_Label_2089
	.word	-44
	.word	4
	.word	_Label_2090
	.word	-48
	.word	4
	.word	0
_Label_2079:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_2080:
	.ascii	"Pself\0"
	.align
_Label_2081:
	.byte	'?'
	.ascii	"_temp_2078\0"
	.align
_Label_2082:
	.byte	'?'
	.ascii	"_temp_2077\0"
	.align
_Label_2083:
	.byte	'?'
	.ascii	"_temp_2076\0"
	.align
_Label_2084:
	.byte	'?'
	.ascii	"_temp_2074\0"
	.align
_Label_2085:
	.byte	'?'
	.ascii	"_temp_2070\0"
	.align
_Label_2086:
	.byte	'?'
	.ascii	"_temp_2066\0"
	.align
_Label_2087:
	.byte	'?'
	.ascii	"_temp_2063\0"
	.align
_Label_2088:
	.byte	'?'
	.ascii	"_temp_2062\0"
	.align
_Label_2089:
	.byte	'?'
	.ascii	"_temp_2061\0"
	.align
_Label_2090:
	.byte	'?'
	.ascii	"_temp_2060\0"
	.align
! 
! ===============  CLASS ProcessManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessManager:
	.word	_Label_2091
	jmp	_Method_P_Kernel_ProcessManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessManager_3	! 12:	PrintShort
	jmp	_Method_P_Kernel_ProcessManager_4	! 16:	GetANewProcess
	jmp	_Method_P_Kernel_ProcessManager_7	! 20:	FreeProcess
	jmp	_Method_P_Kernel_ProcessManager_5	! 24:	TurnIntoZombie
	jmp	_Method_P_Kernel_ProcessManager_6	! 28:	WaitForZombie
	.word	0
! 
! Class descriptor:
! 
_Label_2091:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2092
	.word	_sourceFileName
	.word	233		! line number
	.word	1756		! size of instances, in bytes
	.word	_P_Kernel_ProcessManager
	.word	_P_System_Object
	.word	0
_Label_2092:
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
	mov	489,r1
_Label_3996:
	push	r0
	sub	r1,1,r1
	bne	_Label_3996
	mov	888,r13		! source line 888
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	894,r13		! source line 894
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: freeList = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,1724,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   freeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+1724]
! ASSIGNMENT STATEMENT...
	mov	895,r13		! source line 895
	mov	"\0\0AS",r10
!   _temp_2094 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-1948]
!   NEW ARRAY Constructor...
!   _temp_2096 = &_temp_2095
	add	r14,-1944,r1
	store	r1,[r14+-260]
!   _temp_2096 = _temp_2096 + 4
	load	[r14+-260],r1
	add	r1,4,r1
	store	r1,[r14+-260]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2098 = zeros  (sizeInBytes=168)
	add	r14,-252,r4
	mov	42,r3
_Label_3997:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3997
!   _temp_2098 = _P_Kernel_ProcessControlBlock
	set	_P_Kernel_ProcessControlBlock,r1
	store	r1,[r14+-252]
	mov	10,r1
	store	r1,[r14+-256]
_Label_2100:
!   Data Move: *_temp_2096 = _temp_2098  (sizeInBytes=168)
	add	r14,-252,r5
	load	[r14+-260],r4
	mov	42,r3
_Label_3998:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3998
!   _temp_2096 = _temp_2096 + 168
	load	[r14+-260],r1
	add	r1,168,r1
	store	r1,[r14+-260]
!   _temp_2097 = _temp_2097 + -1
	load	[r14+-256],r1
	add	r1,-1,r1
	store	r1,[r14+-256]
!   if intNotZero (_temp_2097) then goto _Label_2100
	load	[r14+-256],r1
	cmp	r1,r0
	bne	_Label_2100
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-1944]
!   _temp_2101 = &_temp_2095
	add	r14,-1944,r1
	store	r1,[r14+-80]
!   make sure array has size 10
	load	[r14+-1948],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3999
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3999:
!   make sure array has size 10
	load	[r14+-80],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2094 = *_temp_2101  (sizeInBytes=1684)
	load	[r14+-80],r5
	load	[r14+-1948],r4
	mov	421,r3
_Label_4000:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4000
! ASSIGNMENT STATEMENT...
	mov	896,r13		! source line 896
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: processManagerLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,1688,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   processManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+1688]
! ASSIGNMENT STATEMENT...
	mov	897,r13		! source line 897
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: aProcessBecameFree = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,1708,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   aProcessBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+1708]
! ASSIGNMENT STATEMENT...
	mov	898,r13		! source line 898
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: aProcessDied = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,1736,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   aProcessDied = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+1736]
! FOR STATEMENT...
	mov	899,r13		! source line 899
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2109 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2110 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2109  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-1956]
_Label_2105:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2110 then goto _Label_2108		
	load	[r14+-1956],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2108
_Label_2106:
	mov	899,r13		! source line 899
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	900,r13		! source line 900
	mov	"\0\0SE",r10
!   _temp_2111 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   Move address of _temp_2111 [i ] into _temp_2112
!     make sure index expr is >= 0
	load	[r14+-1956],r2
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
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-52]
!   Send message Init
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	901,r13		! source line 901
	mov	"\0\0SE",r10
!   _temp_2114 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_2114 [i ] into _temp_2115
!     make sure index expr is >= 0
	load	[r14+-1956],r2
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
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-40]
!   _temp_2113 = _temp_2115		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   _temp_2116 = &freeList
	load	[r14+8],r1
	add	r1,1724,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_2113  sizeInBytes=4
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
	mov	902,r13		! source line 902
	mov	"\0\0AS",r10
!   _temp_2117 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Move address of _temp_2117 [i ] into _temp_2118
!     make sure index expr is >= 0
	load	[r14+-1956],r2
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
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_2119 = _temp_2118 + 20
	load	[r14+-28],r1
	add	r1,20,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2119 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-24],r2
	store	r1,[r2]
!   Increment the FOR-LOOP index variable and jump back
_Label_2107:
!   i = i + 1
	load	[r14+-1956],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-1956]
	jmp	_Label_2105
! END FOR
_Label_2108:
! ASSIGNMENT STATEMENT...
	mov	904,r13		! source line 904
	mov	"\0\0AS",r10
!   nextPid = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+1752]
! SEND STATEMENT...
	mov	905,r13		! source line 905
	mov	"\0\0SE",r10
!   _temp_2120 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
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
	mov	906,r13		! source line 906
	mov	"\0\0SE",r10
!   _temp_2121 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1708,r1
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
	mov	907,r13		! source line 907
	mov	"\0\0SE",r10
!   _temp_2122 = &aProcessDied
	load	[r14+8],r1
	add	r1,1736,r1
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
	mov	907,r13		! source line 907
	mov	"\0\0RE",r10
	add	r15,1960,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_1:
	.word	_sourceFileName
	.word	_Label_2123
	.word	4		! total size of parameters
	.word	1956		! frame size = 1956
	.word	_Label_2124
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2125
	.word	-12
	.word	4
	.word	_Label_2126
	.word	-16
	.word	4
	.word	_Label_2127
	.word	-20
	.word	4
	.word	_Label_2128
	.word	-24
	.word	4
	.word	_Label_2129
	.word	-28
	.word	4
	.word	_Label_2130
	.word	-32
	.word	4
	.word	_Label_2131
	.word	-36
	.word	4
	.word	_Label_2132
	.word	-40
	.word	4
	.word	_Label_2133
	.word	-44
	.word	4
	.word	_Label_2134
	.word	-48
	.word	4
	.word	_Label_2135
	.word	-52
	.word	4
	.word	_Label_2136
	.word	-56
	.word	4
	.word	_Label_2137
	.word	-60
	.word	4
	.word	_Label_2138
	.word	-64
	.word	4
	.word	_Label_2139
	.word	-68
	.word	4
	.word	_Label_2140
	.word	-72
	.word	4
	.word	_Label_2141
	.word	-76
	.word	4
	.word	_Label_2142
	.word	-80
	.word	4
	.word	_Label_2143
	.word	-84
	.word	4
	.word	_Label_2144
	.word	-252
	.word	168
	.word	_Label_2145
	.word	-256
	.word	4
	.word	_Label_2146
	.word	-260
	.word	4
	.word	_Label_2147
	.word	-1944
	.word	1684
	.word	_Label_2148
	.word	-1948
	.word	4
	.word	_Label_2149
	.word	-1952
	.word	4
	.word	_Label_2150
	.word	-1956
	.word	4
	.word	0
_Label_2123:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2124:
	.ascii	"Pself\0"
	.align
_Label_2125:
	.byte	'?'
	.ascii	"_temp_2122\0"
	.align
_Label_2126:
	.byte	'?'
	.ascii	"_temp_2121\0"
	.align
_Label_2127:
	.byte	'?'
	.ascii	"_temp_2120\0"
	.align
_Label_2128:
	.byte	'?'
	.ascii	"_temp_2119\0"
	.align
_Label_2129:
	.byte	'?'
	.ascii	"_temp_2118\0"
	.align
_Label_2130:
	.byte	'?'
	.ascii	"_temp_2117\0"
	.align
_Label_2131:
	.byte	'?'
	.ascii	"_temp_2116\0"
	.align
_Label_2132:
	.byte	'?'
	.ascii	"_temp_2115\0"
	.align
_Label_2133:
	.byte	'?'
	.ascii	"_temp_2114\0"
	.align
_Label_2134:
	.byte	'?'
	.ascii	"_temp_2113\0"
	.align
_Label_2135:
	.byte	'?'
	.ascii	"_temp_2112\0"
	.align
_Label_2136:
	.byte	'?'
	.ascii	"_temp_2111\0"
	.align
_Label_2137:
	.byte	'?'
	.ascii	"_temp_2110\0"
	.align
_Label_2138:
	.byte	'?'
	.ascii	"_temp_2109\0"
	.align
_Label_2139:
	.byte	'?'
	.ascii	"_temp_2104\0"
	.align
_Label_2140:
	.byte	'?'
	.ascii	"_temp_2103\0"
	.align
_Label_2141:
	.byte	'?'
	.ascii	"_temp_2102\0"
	.align
_Label_2142:
	.byte	'?'
	.ascii	"_temp_2101\0"
	.align
_Label_2143:
	.byte	'?'
	.ascii	"_temp_2099\0"
	.align
_Label_2144:
	.byte	'?'
	.ascii	"_temp_2098\0"
	.align
_Label_2145:
	.byte	'?'
	.ascii	"_temp_2097\0"
	.align
_Label_2146:
	.byte	'?'
	.ascii	"_temp_2096\0"
	.align
_Label_2147:
	.byte	'?'
	.ascii	"_temp_2095\0"
	.align
_Label_2148:
	.byte	'?'
	.ascii	"_temp_2094\0"
	.align
_Label_2149:
	.byte	'?'
	.ascii	"_temp_2093\0"
	.align
_Label_2150:
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
_Label_4001:
	push	r0
	sub	r1,1,r1
	bne	_Label_4001
	mov	912,r13		! source line 912
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	919,r13		! source line 919
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	919,r13		! source line 919
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! CALL STATEMENT...
!   _temp_2151 = _StringConst_95
	set	_StringConst_95,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2151  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	920,r13		! source line 920
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	921,r13		! source line 921
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2156 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2157 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2156  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-52]
_Label_2152:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2157 then goto _Label_2155		
	load	[r14+-52],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2155
_Label_2153:
	mov	921,r13		! source line 921
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2158 = _StringConst_96
	set	_StringConst_96,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2158  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	922,r13		! source line 922
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	923,r13		! source line 923
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2159 = _StringConst_97
	set	_StringConst_97,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2159  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	924,r13		! source line 924
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	925,r13		! source line 925
	mov	"\0\0SE",r10
!   _temp_2160 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_2160 [i ] into _temp_2161
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
	set	168,r3
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
_Label_2154:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_2152
! END FOR
_Label_2155:
! CALL STATEMENT...
!   _temp_2162 = _StringConst_98
	set	_StringConst_98,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2162  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	927,r13		! source line 927
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	928,r13		! source line 928
	mov	"\0\0SE",r10
!   _temp_2163 = _function_187_PrintObjectAddr
	set	_function_187_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_2164 = &freeList
	load	[r14+8],r1
	add	r1,1724,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2163  sizeInBytes=4
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
	mov	929,r13		! source line 929
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	930,r13		! source line 930
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	930,r13		! source line 930
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! RETURN STATEMENT...
	mov	930,r13		! source line 930
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
	.word	_Label_2165
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_2166
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2167
	.word	-12
	.word	4
	.word	_Label_2168
	.word	-16
	.word	4
	.word	_Label_2169
	.word	-20
	.word	4
	.word	_Label_2170
	.word	-24
	.word	4
	.word	_Label_2171
	.word	-28
	.word	4
	.word	_Label_2172
	.word	-32
	.word	4
	.word	_Label_2173
	.word	-36
	.word	4
	.word	_Label_2174
	.word	-40
	.word	4
	.word	_Label_2175
	.word	-44
	.word	4
	.word	_Label_2176
	.word	-48
	.word	4
	.word	_Label_2177
	.word	-52
	.word	4
	.word	_Label_2178
	.word	-56
	.word	4
	.word	0
_Label_2165:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2166:
	.ascii	"Pself\0"
	.align
_Label_2167:
	.byte	'?'
	.ascii	"_temp_2164\0"
	.align
_Label_2168:
	.byte	'?'
	.ascii	"_temp_2163\0"
	.align
_Label_2169:
	.byte	'?'
	.ascii	"_temp_2162\0"
	.align
_Label_2170:
	.byte	'?'
	.ascii	"_temp_2161\0"
	.align
_Label_2171:
	.byte	'?'
	.ascii	"_temp_2160\0"
	.align
_Label_2172:
	.byte	'?'
	.ascii	"_temp_2159\0"
	.align
_Label_2173:
	.byte	'?'
	.ascii	"_temp_2158\0"
	.align
_Label_2174:
	.byte	'?'
	.ascii	"_temp_2157\0"
	.align
_Label_2175:
	.byte	'?'
	.ascii	"_temp_2156\0"
	.align
_Label_2176:
	.byte	'?'
	.ascii	"_temp_2151\0"
	.align
_Label_2177:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2178:
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
_Label_4002:
	push	r0
	sub	r1,1,r1
	bne	_Label_4002
	mov	935,r13		! source line 935
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	942,r13		! source line 942
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	942,r13		! source line 942
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! CALL STATEMENT...
!   _temp_2179 = _StringConst_99
	set	_StringConst_99,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_2179  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	943,r13		! source line 943
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	944,r13		! source line 944
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2184 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2185 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2184  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-48]
_Label_2180:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2185 then goto _Label_2183		
	load	[r14+-48],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2183
_Label_2181:
	mov	944,r13		! source line 944
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2186 = _StringConst_100
	set	_StringConst_100,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2186  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	945,r13		! source line 945
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	946,r13		! source line 946
	mov	"\0\0CE",r10
	call	printInt
! SEND STATEMENT...
	mov	947,r13		! source line 947
	mov	"\0\0SE",r10
!   _temp_2187 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_2187 [i ] into _temp_2188
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
	set	168,r3
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
_Label_2182:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_2180
! END FOR
_Label_2183:
! CALL STATEMENT...
!   _temp_2189 = _StringConst_101
	set	_StringConst_101,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2189  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	949,r13		! source line 949
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	950,r13		! source line 950
	mov	"\0\0SE",r10
!   _temp_2190 = _function_187_PrintObjectAddr
	set	_function_187_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_2191 = &freeList
	load	[r14+8],r1
	add	r1,1724,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2190  sizeInBytes=4
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
	mov	951,r13		! source line 951
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	952,r13		! source line 952
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	952,r13		! source line 952
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! RETURN STATEMENT...
	mov	952,r13		! source line 952
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
	.word	_Label_2192
	.word	4		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2193
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2194
	.word	-12
	.word	4
	.word	_Label_2195
	.word	-16
	.word	4
	.word	_Label_2196
	.word	-20
	.word	4
	.word	_Label_2197
	.word	-24
	.word	4
	.word	_Label_2198
	.word	-28
	.word	4
	.word	_Label_2199
	.word	-32
	.word	4
	.word	_Label_2200
	.word	-36
	.word	4
	.word	_Label_2201
	.word	-40
	.word	4
	.word	_Label_2202
	.word	-44
	.word	4
	.word	_Label_2203
	.word	-48
	.word	4
	.word	_Label_2204
	.word	-52
	.word	4
	.word	0
_Label_2192:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_2193:
	.ascii	"Pself\0"
	.align
_Label_2194:
	.byte	'?'
	.ascii	"_temp_2191\0"
	.align
_Label_2195:
	.byte	'?'
	.ascii	"_temp_2190\0"
	.align
_Label_2196:
	.byte	'?'
	.ascii	"_temp_2189\0"
	.align
_Label_2197:
	.byte	'?'
	.ascii	"_temp_2188\0"
	.align
_Label_2198:
	.byte	'?'
	.ascii	"_temp_2187\0"
	.align
_Label_2199:
	.byte	'?'
	.ascii	"_temp_2186\0"
	.align
_Label_2200:
	.byte	'?'
	.ascii	"_temp_2185\0"
	.align
_Label_2201:
	.byte	'?'
	.ascii	"_temp_2184\0"
	.align
_Label_2202:
	.byte	'?'
	.ascii	"_temp_2179\0"
	.align
_Label_2203:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2204:
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
_Label_4003:
	push	r0
	sub	r1,1,r1
	bne	_Label_4003
	mov	957,r13		! source line 957
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	964,r13		! source line 964
	mov	"\0\0SE",r10
!   _temp_2205 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
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
	mov	965,r13		! source line 965
	mov	"\0\0WH",r10
_Label_2206:
	mov	965,r13		! source line 965
	mov	"\0\0SE",r10
!   _temp_2209 = &freeList
	load	[r14+8],r1
	add	r1,1724,r1
	store	r1,[r14+-36]
!   Send message IsEmpty
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_2207 else goto _Label_2208
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2208
	jmp	_Label_2207
_Label_2207:
	mov	965,r13		! source line 965
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	966,r13		! source line 966
	mov	"\0\0SE",r10
!   _temp_2210 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-32]
!   _temp_2211 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1708,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_2210  sizeInBytes=4
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
	jmp	_Label_2206
_Label_2208:
! ASSIGNMENT STATEMENT...
	mov	968,r13		! source line 968
	mov	"\0\0AS",r10
	mov	968,r13		! source line 968
	mov	"\0\0SE",r10
!   _temp_2212 = &freeList
	load	[r14+8],r1
	add	r1,1724,r1
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
	mov	969,r13		! source line 969
	mov	"\0\0AS",r10
!   nextPid = nextPid + 1		(int)
	load	[r14+8],r1
	load	[r1+1752],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+1752]
! ASSIGNMENT STATEMENT...
	mov	970,r13		! source line 970
	mov	"\0\0AS",r10
!   if intIsZero (nextProcessPtr) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2213 = nextProcessPtr + 12
	load	[r14+-44],r1
	add	r1,12,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2213 = nextPid  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+1752],r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	971,r13		! source line 971
	mov	"\0\0AS",r10
!   if intIsZero (nextProcessPtr) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2214 = nextProcessPtr + 20
	load	[r14+-44],r1
	add	r1,20,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2214 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	972,r13		! source line 972
	mov	"\0\0SE",r10
!   _temp_2215 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
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
	mov	973,r13		! source line 973
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
	.word	_Label_2216
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_2217
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2218
	.word	-12
	.word	4
	.word	_Label_2219
	.word	-16
	.word	4
	.word	_Label_2220
	.word	-20
	.word	4
	.word	_Label_2221
	.word	-24
	.word	4
	.word	_Label_2222
	.word	-28
	.word	4
	.word	_Label_2223
	.word	-32
	.word	4
	.word	_Label_2224
	.word	-36
	.word	4
	.word	_Label_2225
	.word	-40
	.word	4
	.word	_Label_2226
	.word	-44
	.word	4
	.word	0
_Label_2216:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"GetANewProcess\0"
	.align
_Label_2217:
	.ascii	"Pself\0"
	.align
_Label_2218:
	.byte	'?'
	.ascii	"_temp_2215\0"
	.align
_Label_2219:
	.byte	'?'
	.ascii	"_temp_2214\0"
	.align
_Label_2220:
	.byte	'?'
	.ascii	"_temp_2213\0"
	.align
_Label_2221:
	.byte	'?'
	.ascii	"_temp_2212\0"
	.align
_Label_2222:
	.byte	'?'
	.ascii	"_temp_2211\0"
	.align
_Label_2223:
	.byte	'?'
	.ascii	"_temp_2210\0"
	.align
_Label_2224:
	.byte	'?'
	.ascii	"_temp_2209\0"
	.align
_Label_2225:
	.byte	'?'
	.ascii	"_temp_2205\0"
	.align
_Label_2226:
	.byte	'P'
	.ascii	"nextProcessPtr\0"
	.align
! 
! ===============  METHOD TurnIntoZombie  ===============
! 
_Method_P_Kernel_ProcessManager_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_5,r1
	push	r1
	mov	63,r1
_Label_4004:
	push	r0
	sub	r1,1,r1
	bne	_Label_4004
	mov	978,r13		! source line 978
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	982,r13		! source line 982
	mov	"\0\0SE",r10
!   _temp_2227 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-244]
!   _temp_2228 = _temp_2227 + 1688
	load	[r14+-244],r1
	add	r1,1688,r1
	store	r1,[r14+-240]
!   Send message Lock
	load	[r14+-240],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! FOR STATEMENT...
	mov	985,r13		! source line 985
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2233 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-236]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2234 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-232]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2233  (sizeInBytes=4)
	load	[r14+-236],r1
	store	r1,[r14+-248]
_Label_2229:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2234 then goto _Label_2232		
	load	[r14+-248],r1
	load	[r14+-232],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2232
_Label_2230:
	mov	985,r13		! source line 985
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	986,r13		! source line 986
	mov	"\0\0IF",r10
!   _temp_2238 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-224]
!   _temp_2239 = _temp_2238 + 4
	load	[r14+-224],r1
	add	r1,4,r1
	store	r1,[r14+-220]
!   Move address of _temp_2239 [i ] into _temp_2240
!     make sure index expr is >= 0
	load	[r14+-248],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-220],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-216]
!   _temp_2241 = _temp_2240 + 12
	load	[r14+-216],r1
	add	r1,12,r1
	store	r1,[r14+-212]
!   Data Move: _temp_2237 = *_temp_2241  (sizeInBytes=4)
	load	[r14+-212],r1
	load	[r1],r1
	store	r1,[r14+-228]
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2243 = p + 16
	load	[r14+12],r1
	add	r1,16,r1
	store	r1,[r14+-204]
!   Data Move: _temp_2242 = *_temp_2243  (sizeInBytes=4)
	load	[r14+-204],r1
	load	[r1],r1
	store	r1,[r14+-208]
!   if _temp_2237 != _temp_2242 then goto _Label_2236		(int)
	load	[r14+-228],r1
	load	[r14+-208],r2
	cmp	r1,r2
	bne	_Label_2236
!	jmp	_Label_2235
_Label_2235:
! THEN...
	mov	987,r13		! source line 987
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	987,r13		! source line 987
	mov	"\0\0AS",r10
!   _temp_2244 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-200]
!   _temp_2245 = _temp_2244 + 4
	load	[r14+-200],r1
	add	r1,4,r1
	store	r1,[r14+-196]
!   Move address of _temp_2245 [i ] into _temp_2246
!     make sure index expr is >= 0
	load	[r14+-248],r2
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
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-192]
!   parentPcb = _temp_2246		(4 bytes)
	load	[r14+-192],r1
	store	r1,[r14+-252]
! END IF...
_Label_2236:
! IF STATEMENT...
	mov	989,r13		! source line 989
	mov	"\0\0IF",r10
!   _temp_2251 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-184]
!   _temp_2252 = _temp_2251 + 4
	load	[r14+-184],r1
	add	r1,4,r1
	store	r1,[r14+-180]
!   Move address of _temp_2252 [i ] into _temp_2253
!     make sure index expr is >= 0
	load	[r14+-248],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-180],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-176]
!   _temp_2254 = _temp_2253 + 20
	load	[r14+-176],r1
	add	r1,20,r1
	store	r1,[r14+-172]
!   Data Move: _temp_2250 = *_temp_2254  (sizeInBytes=4)
	load	[r14+-172],r1
	load	[r1],r1
	store	r1,[r14+-188]
!   if _temp_2250 != 2 then goto _Label_2248		(int)
	load	[r14+-188],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_2248
!	jmp	_Label_2249
_Label_2249:
!   _temp_2256 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-164]
!   _temp_2257 = _temp_2256 + 4
	load	[r14+-164],r1
	add	r1,4,r1
	store	r1,[r14+-160]
!   Move address of _temp_2257 [i ] into _temp_2258
!     make sure index expr is >= 0
	load	[r14+-248],r2
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
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-156]
!   _temp_2259 = _temp_2258 + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-152]
!   Data Move: _temp_2255 = *_temp_2259  (sizeInBytes=4)
	load	[r14+-152],r1
	load	[r1],r1
	store	r1,[r14+-168]
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2261 = p + 12
	load	[r14+12],r1
	add	r1,12,r1
	store	r1,[r14+-144]
!   Data Move: _temp_2260 = *_temp_2261  (sizeInBytes=4)
	load	[r14+-144],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   if _temp_2255 != _temp_2260 then goto _Label_2248		(int)
	load	[r14+-168],r1
	load	[r14+-148],r2
	cmp	r1,r2
	bne	_Label_2248
!	jmp	_Label_2247
_Label_2247:
! THEN...
	mov	990,r13		! source line 990
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	990,r13		! source line 990
	mov	"\0\0AS",r10
!   _temp_2262 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-140]
!   _temp_2263 = _temp_2262 + 4
	load	[r14+-140],r1
	add	r1,4,r1
	store	r1,[r14+-136]
!   Move address of _temp_2263 [i ] into _temp_2264
!     make sure index expr is >= 0
	load	[r14+-248],r2
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
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-132]
!   _temp_2265 = _temp_2264 + 20
	load	[r14+-132],r1
	add	r1,20,r1
	store	r1,[r14+-128]
!   Data Move: *_temp_2265 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-128],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	991,r13		! source line 991
	mov	"\0\0SE",r10
!   _temp_2267 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-120]
!   _temp_2268 = _temp_2267 + 4
	load	[r14+-120],r1
	add	r1,4,r1
	store	r1,[r14+-116]
!   Move address of _temp_2268 [i ] into _temp_2269
!     make sure index expr is >= 0
	load	[r14+-248],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-116],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-112]
!   _temp_2266 = _temp_2269		(4 bytes)
	load	[r14+-112],r1
	store	r1,[r14+-124]
!   _temp_2270 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-108]
!   _temp_2271 = _temp_2270 + 1724
	load	[r14+-108],r1
	add	r1,1724,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=12  value=_temp_2266  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-104],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	992,r13		! source line 992
	mov	"\0\0SE",r10
!   _temp_2273 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-96]
!   _temp_2274 = _temp_2273 + 1688
	load	[r14+-96],r1
	add	r1,1688,r1
	store	r1,[r14+-92]
!   _temp_2272 = _temp_2274		(4 bytes)
	load	[r14+-92],r1
	store	r1,[r14+-100]
!   _temp_2275 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-88]
!   _temp_2276 = _temp_2275 + 1708
	load	[r14+-88],r1
	add	r1,1708,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=12  value=_temp_2272  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-84],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_2248:
!   Increment the FOR-LOOP index variable and jump back
_Label_2231:
!   i = i + 1
	load	[r14+-248],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-248]
	jmp	_Label_2229
! END FOR
_Label_2232:
! IF STATEMENT...
	mov	997,r13		! source line 997
	mov	"\0\0IF",r10
!   if intIsZero (parentPcb) then goto _Label_2278
	load	[r14+-252],r1
	cmp	r1,r0
	be	_Label_2278
!	jmp	_Label_2279
_Label_2279:
!   if intIsZero (parentPcb) then goto _runtimeErrorNullPointer
	load	[r14+-252],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2281 = parentPcb + 20
	load	[r14+-252],r1
	add	r1,20,r1
	store	r1,[r14+-76]
!   Data Move: _temp_2280 = *_temp_2281  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_2280 != 1 then goto _Label_2278		(int)
	load	[r14+-80],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_2278
!	jmp	_Label_2277
_Label_2277:
! THEN...
	mov	998,r13		! source line 998
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	998,r13		! source line 998
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2282 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-72]
!   Data Move: *_temp_2282 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-72],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	999,r13		! source line 999
	mov	"\0\0SE",r10
!   _temp_2284 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-64]
!   _temp_2285 = _temp_2284 + 1688
	load	[r14+-64],r1
	add	r1,1688,r1
	store	r1,[r14+-60]
!   _temp_2283 = _temp_2285		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-68]
!   _temp_2286 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-56]
!   _temp_2287 = _temp_2286 + 1736
	load	[r14+-56],r1
	add	r1,1736,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_2283  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+4]
!   Send message Broadcast
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
	jmp	_Label_2288
_Label_2278:
! ELSE...
	mov	1001,r13		! source line 1001
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	1001,r13		! source line 1001
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2289 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_2289 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1002,r13		! source line 1002
	mov	"\0\0SE",r10
!   _temp_2290 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-44]
!   _temp_2291 = _temp_2290 + 1724
	load	[r14+-44],r1
	add	r1,1724,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	1003,r13		! source line 1003
	mov	"\0\0SE",r10
!   _temp_2293 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-32]
!   _temp_2294 = _temp_2293 + 1688
	load	[r14+-32],r1
	add	r1,1688,r1
	store	r1,[r14+-28]
!   _temp_2292 = _temp_2294		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   _temp_2295 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-24]
!   _temp_2296 = _temp_2295 + 1708
	load	[r14+-24],r1
	add	r1,1708,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_2292  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_2288:
! SEND STATEMENT...
	mov	1006,r13		! source line 1006
	mov	"\0\0SE",r10
!   _temp_2297 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-16]
!   _temp_2298 = _temp_2297 + 1688
	load	[r14+-16],r1
	add	r1,1688,r1
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
	mov	1006,r13		! source line 1006
	mov	"\0\0RE",r10
	add	r15,256,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_5:
	.word	_sourceFileName
	.word	_Label_2299
	.word	8		! total size of parameters
	.word	252		! frame size = 252
	.word	_Label_2300
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2301
	.word	12
	.word	4
	.word	_Label_2302
	.word	-12
	.word	4
	.word	_Label_2303
	.word	-16
	.word	4
	.word	_Label_2304
	.word	-20
	.word	4
	.word	_Label_2305
	.word	-24
	.word	4
	.word	_Label_2306
	.word	-28
	.word	4
	.word	_Label_2307
	.word	-32
	.word	4
	.word	_Label_2308
	.word	-36
	.word	4
	.word	_Label_2309
	.word	-40
	.word	4
	.word	_Label_2310
	.word	-44
	.word	4
	.word	_Label_2311
	.word	-48
	.word	4
	.word	_Label_2312
	.word	-52
	.word	4
	.word	_Label_2313
	.word	-56
	.word	4
	.word	_Label_2314
	.word	-60
	.word	4
	.word	_Label_2315
	.word	-64
	.word	4
	.word	_Label_2316
	.word	-68
	.word	4
	.word	_Label_2317
	.word	-72
	.word	4
	.word	_Label_2318
	.word	-76
	.word	4
	.word	_Label_2319
	.word	-80
	.word	4
	.word	_Label_2320
	.word	-84
	.word	4
	.word	_Label_2321
	.word	-88
	.word	4
	.word	_Label_2322
	.word	-92
	.word	4
	.word	_Label_2323
	.word	-96
	.word	4
	.word	_Label_2324
	.word	-100
	.word	4
	.word	_Label_2325
	.word	-104
	.word	4
	.word	_Label_2326
	.word	-108
	.word	4
	.word	_Label_2327
	.word	-112
	.word	4
	.word	_Label_2328
	.word	-116
	.word	4
	.word	_Label_2329
	.word	-120
	.word	4
	.word	_Label_2330
	.word	-124
	.word	4
	.word	_Label_2331
	.word	-128
	.word	4
	.word	_Label_2332
	.word	-132
	.word	4
	.word	_Label_2333
	.word	-136
	.word	4
	.word	_Label_2334
	.word	-140
	.word	4
	.word	_Label_2335
	.word	-144
	.word	4
	.word	_Label_2336
	.word	-148
	.word	4
	.word	_Label_2337
	.word	-152
	.word	4
	.word	_Label_2338
	.word	-156
	.word	4
	.word	_Label_2339
	.word	-160
	.word	4
	.word	_Label_2340
	.word	-164
	.word	4
	.word	_Label_2341
	.word	-168
	.word	4
	.word	_Label_2342
	.word	-172
	.word	4
	.word	_Label_2343
	.word	-176
	.word	4
	.word	_Label_2344
	.word	-180
	.word	4
	.word	_Label_2345
	.word	-184
	.word	4
	.word	_Label_2346
	.word	-188
	.word	4
	.word	_Label_2347
	.word	-192
	.word	4
	.word	_Label_2348
	.word	-196
	.word	4
	.word	_Label_2349
	.word	-200
	.word	4
	.word	_Label_2350
	.word	-204
	.word	4
	.word	_Label_2351
	.word	-208
	.word	4
	.word	_Label_2352
	.word	-212
	.word	4
	.word	_Label_2353
	.word	-216
	.word	4
	.word	_Label_2354
	.word	-220
	.word	4
	.word	_Label_2355
	.word	-224
	.word	4
	.word	_Label_2356
	.word	-228
	.word	4
	.word	_Label_2357
	.word	-232
	.word	4
	.word	_Label_2358
	.word	-236
	.word	4
	.word	_Label_2359
	.word	-240
	.word	4
	.word	_Label_2360
	.word	-244
	.word	4
	.word	_Label_2361
	.word	-248
	.word	4
	.word	_Label_2362
	.word	-252
	.word	4
	.word	0
_Label_2299:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"TurnIntoZombie\0"
	.align
_Label_2300:
	.ascii	"Pself\0"
	.align
_Label_2301:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_2302:
	.byte	'?'
	.ascii	"_temp_2298\0"
	.align
_Label_2303:
	.byte	'?'
	.ascii	"_temp_2297\0"
	.align
_Label_2304:
	.byte	'?'
	.ascii	"_temp_2296\0"
	.align
_Label_2305:
	.byte	'?'
	.ascii	"_temp_2295\0"
	.align
_Label_2306:
	.byte	'?'
	.ascii	"_temp_2294\0"
	.align
_Label_2307:
	.byte	'?'
	.ascii	"_temp_2293\0"
	.align
_Label_2308:
	.byte	'?'
	.ascii	"_temp_2292\0"
	.align
_Label_2309:
	.byte	'?'
	.ascii	"_temp_2291\0"
	.align
_Label_2310:
	.byte	'?'
	.ascii	"_temp_2290\0"
	.align
_Label_2311:
	.byte	'?'
	.ascii	"_temp_2289\0"
	.align
_Label_2312:
	.byte	'?'
	.ascii	"_temp_2287\0"
	.align
_Label_2313:
	.byte	'?'
	.ascii	"_temp_2286\0"
	.align
_Label_2314:
	.byte	'?'
	.ascii	"_temp_2285\0"
	.align
_Label_2315:
	.byte	'?'
	.ascii	"_temp_2284\0"
	.align
_Label_2316:
	.byte	'?'
	.ascii	"_temp_2283\0"
	.align
_Label_2317:
	.byte	'?'
	.ascii	"_temp_2282\0"
	.align
_Label_2318:
	.byte	'?'
	.ascii	"_temp_2281\0"
	.align
_Label_2319:
	.byte	'?'
	.ascii	"_temp_2280\0"
	.align
_Label_2320:
	.byte	'?'
	.ascii	"_temp_2276\0"
	.align
_Label_2321:
	.byte	'?'
	.ascii	"_temp_2275\0"
	.align
_Label_2322:
	.byte	'?'
	.ascii	"_temp_2274\0"
	.align
_Label_2323:
	.byte	'?'
	.ascii	"_temp_2273\0"
	.align
_Label_2324:
	.byte	'?'
	.ascii	"_temp_2272\0"
	.align
_Label_2325:
	.byte	'?'
	.ascii	"_temp_2271\0"
	.align
_Label_2326:
	.byte	'?'
	.ascii	"_temp_2270\0"
	.align
_Label_2327:
	.byte	'?'
	.ascii	"_temp_2269\0"
	.align
_Label_2328:
	.byte	'?'
	.ascii	"_temp_2268\0"
	.align
_Label_2329:
	.byte	'?'
	.ascii	"_temp_2267\0"
	.align
_Label_2330:
	.byte	'?'
	.ascii	"_temp_2266\0"
	.align
_Label_2331:
	.byte	'?'
	.ascii	"_temp_2265\0"
	.align
_Label_2332:
	.byte	'?'
	.ascii	"_temp_2264\0"
	.align
_Label_2333:
	.byte	'?'
	.ascii	"_temp_2263\0"
	.align
_Label_2334:
	.byte	'?'
	.ascii	"_temp_2262\0"
	.align
_Label_2335:
	.byte	'?'
	.ascii	"_temp_2261\0"
	.align
_Label_2336:
	.byte	'?'
	.ascii	"_temp_2260\0"
	.align
_Label_2337:
	.byte	'?'
	.ascii	"_temp_2259\0"
	.align
_Label_2338:
	.byte	'?'
	.ascii	"_temp_2258\0"
	.align
_Label_2339:
	.byte	'?'
	.ascii	"_temp_2257\0"
	.align
_Label_2340:
	.byte	'?'
	.ascii	"_temp_2256\0"
	.align
_Label_2341:
	.byte	'?'
	.ascii	"_temp_2255\0"
	.align
_Label_2342:
	.byte	'?'
	.ascii	"_temp_2254\0"
	.align
_Label_2343:
	.byte	'?'
	.ascii	"_temp_2253\0"
	.align
_Label_2344:
	.byte	'?'
	.ascii	"_temp_2252\0"
	.align
_Label_2345:
	.byte	'?'
	.ascii	"_temp_2251\0"
	.align
_Label_2346:
	.byte	'?'
	.ascii	"_temp_2250\0"
	.align
_Label_2347:
	.byte	'?'
	.ascii	"_temp_2246\0"
	.align
_Label_2348:
	.byte	'?'
	.ascii	"_temp_2245\0"
	.align
_Label_2349:
	.byte	'?'
	.ascii	"_temp_2244\0"
	.align
_Label_2350:
	.byte	'?'
	.ascii	"_temp_2243\0"
	.align
_Label_2351:
	.byte	'?'
	.ascii	"_temp_2242\0"
	.align
_Label_2352:
	.byte	'?'
	.ascii	"_temp_2241\0"
	.align
_Label_2353:
	.byte	'?'
	.ascii	"_temp_2240\0"
	.align
_Label_2354:
	.byte	'?'
	.ascii	"_temp_2239\0"
	.align
_Label_2355:
	.byte	'?'
	.ascii	"_temp_2238\0"
	.align
_Label_2356:
	.byte	'?'
	.ascii	"_temp_2237\0"
	.align
_Label_2357:
	.byte	'?'
	.ascii	"_temp_2234\0"
	.align
_Label_2358:
	.byte	'?'
	.ascii	"_temp_2233\0"
	.align
_Label_2359:
	.byte	'?'
	.ascii	"_temp_2228\0"
	.align
_Label_2360:
	.byte	'?'
	.ascii	"_temp_2227\0"
	.align
_Label_2361:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2362:
	.byte	'P'
	.ascii	"parentPcb\0"
	.align
! 
! ===============  METHOD WaitForZombie  ===============
! 
_Method_P_Kernel_ProcessManager_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_6,r1
	push	r1
	mov	23,r1
_Label_4005:
	push	r0
	sub	r1,1,r1
	bne	_Label_4005
	mov	1012,r13		! source line 1012
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1016,r13		! source line 1016
	mov	"\0\0SE",r10
!   _temp_2363 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-88]
!   _temp_2364 = _temp_2363 + 1688
	load	[r14+-88],r1
	add	r1,1688,r1
	store	r1,[r14+-84]
!   Send message Lock
	load	[r14+-84],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	1018,r13		! source line 1018
	mov	"\0\0WH",r10
_Label_2365:
!   if intIsZero (proc) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2369 = proc + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-76]
!   Data Move: _temp_2368 = *_temp_2369  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_2368 == 2 then goto _Label_2367		(int)
	load	[r14+-80],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_2367
!	jmp	_Label_2366
_Label_2366:
	mov	1018,r13		! source line 1018
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1019,r13		! source line 1019
	mov	"\0\0SE",r10
!   _temp_2371 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-68]
!   _temp_2372 = _temp_2371 + 1688
	load	[r14+-68],r1
	add	r1,1688,r1
	store	r1,[r14+-64]
!   _temp_2370 = _temp_2372		(4 bytes)
	load	[r14+-64],r1
	store	r1,[r14+-72]
!   _temp_2373 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-60]
!   _temp_2374 = _temp_2373 + 1736
	load	[r14+-60],r1
	add	r1,1736,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=12  value=_temp_2370  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_2365
_Label_2367:
! ASSIGNMENT STATEMENT...
	mov	1022,r13		! source line 1022
	mov	"\0\0AS",r10
!   if intIsZero (proc) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2375 = proc + 28
	load	[r14+12],r1
	add	r1,28,r1
	store	r1,[r14+-52]
!   Data Move: procExitStatus = *_temp_2375  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-92]
! ASSIGNMENT STATEMENT...
	mov	1023,r13		! source line 1023
	mov	"\0\0AS",r10
!   if intIsZero (proc) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2376 = proc + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_2376 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1024,r13		! source line 1024
	mov	"\0\0SE",r10
!   _temp_2377 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-44]
!   _temp_2378 = _temp_2377 + 1724
	load	[r14+-44],r1
	add	r1,1724,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=proc  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	1025,r13		! source line 1025
	mov	"\0\0SE",r10
!   _temp_2380 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-32]
!   _temp_2381 = _temp_2380 + 1688
	load	[r14+-32],r1
	add	r1,1688,r1
	store	r1,[r14+-28]
!   _temp_2379 = _temp_2381		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   _temp_2382 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-24]
!   _temp_2383 = _temp_2382 + 1708
	load	[r14+-24],r1
	add	r1,1708,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_2379  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	1027,r13		! source line 1027
	mov	"\0\0SE",r10
!   _temp_2384 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-16]
!   _temp_2385 = _temp_2384 + 1688
	load	[r14+-16],r1
	add	r1,1688,r1
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
	mov	1028,r13		! source line 1028
	mov	"\0\0RE",r10
!   ReturnResult: procExitStatus  (sizeInBytes=4)
	load	[r14+-92],r1
	store	r1,[r14+8]
	add	r15,96,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_6:
	.word	_sourceFileName
	.word	_Label_2386
	.word	8		! total size of parameters
	.word	92		! frame size = 92
	.word	_Label_2387
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2388
	.word	12
	.word	4
	.word	_Label_2389
	.word	-12
	.word	4
	.word	_Label_2390
	.word	-16
	.word	4
	.word	_Label_2391
	.word	-20
	.word	4
	.word	_Label_2392
	.word	-24
	.word	4
	.word	_Label_2393
	.word	-28
	.word	4
	.word	_Label_2394
	.word	-32
	.word	4
	.word	_Label_2395
	.word	-36
	.word	4
	.word	_Label_2396
	.word	-40
	.word	4
	.word	_Label_2397
	.word	-44
	.word	4
	.word	_Label_2398
	.word	-48
	.word	4
	.word	_Label_2399
	.word	-52
	.word	4
	.word	_Label_2400
	.word	-56
	.word	4
	.word	_Label_2401
	.word	-60
	.word	4
	.word	_Label_2402
	.word	-64
	.word	4
	.word	_Label_2403
	.word	-68
	.word	4
	.word	_Label_2404
	.word	-72
	.word	4
	.word	_Label_2405
	.word	-76
	.word	4
	.word	_Label_2406
	.word	-80
	.word	4
	.word	_Label_2407
	.word	-84
	.word	4
	.word	_Label_2408
	.word	-88
	.word	4
	.word	_Label_2409
	.word	-92
	.word	4
	.word	0
_Label_2386:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"WaitForZombie\0"
	.align
_Label_2387:
	.ascii	"Pself\0"
	.align
_Label_2388:
	.byte	'P'
	.ascii	"proc\0"
	.align
_Label_2389:
	.byte	'?'
	.ascii	"_temp_2385\0"
	.align
_Label_2390:
	.byte	'?'
	.ascii	"_temp_2384\0"
	.align
_Label_2391:
	.byte	'?'
	.ascii	"_temp_2383\0"
	.align
_Label_2392:
	.byte	'?'
	.ascii	"_temp_2382\0"
	.align
_Label_2393:
	.byte	'?'
	.ascii	"_temp_2381\0"
	.align
_Label_2394:
	.byte	'?'
	.ascii	"_temp_2380\0"
	.align
_Label_2395:
	.byte	'?'
	.ascii	"_temp_2379\0"
	.align
_Label_2396:
	.byte	'?'
	.ascii	"_temp_2378\0"
	.align
_Label_2397:
	.byte	'?'
	.ascii	"_temp_2377\0"
	.align
_Label_2398:
	.byte	'?'
	.ascii	"_temp_2376\0"
	.align
_Label_2399:
	.byte	'?'
	.ascii	"_temp_2375\0"
	.align
_Label_2400:
	.byte	'?'
	.ascii	"_temp_2374\0"
	.align
_Label_2401:
	.byte	'?'
	.ascii	"_temp_2373\0"
	.align
_Label_2402:
	.byte	'?'
	.ascii	"_temp_2372\0"
	.align
_Label_2403:
	.byte	'?'
	.ascii	"_temp_2371\0"
	.align
_Label_2404:
	.byte	'?'
	.ascii	"_temp_2370\0"
	.align
_Label_2405:
	.byte	'?'
	.ascii	"_temp_2369\0"
	.align
_Label_2406:
	.byte	'?'
	.ascii	"_temp_2368\0"
	.align
_Label_2407:
	.byte	'?'
	.ascii	"_temp_2364\0"
	.align
_Label_2408:
	.byte	'?'
	.ascii	"_temp_2363\0"
	.align
_Label_2409:
	.byte	'I'
	.ascii	"procExitStatus\0"
	.align
! 
! ===============  METHOD FreeProcess  ===============
! 
_Method_P_Kernel_ProcessManager_7:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_7,r1
	push	r1
	mov	8,r1
_Label_4006:
	push	r0
	sub	r1,1,r1
	bne	_Label_4006
	mov	1033,r13		! source line 1033
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1037,r13		! source line 1037
	mov	"\0\0SE",r10
!   _temp_2410 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
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
	mov	1038,r13		! source line 1038
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2411 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2411 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1039,r13		! source line 1039
	mov	"\0\0SE",r10
!   _temp_2412 = &freeList
	load	[r14+8],r1
	add	r1,1724,r1
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
	mov	1040,r13		! source line 1040
	mov	"\0\0SE",r10
!   _temp_2413 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-20]
!   _temp_2414 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1708,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2413  sizeInBytes=4
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
	mov	1041,r13		! source line 1041
	mov	"\0\0SE",r10
!   _temp_2415 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
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
	mov	1041,r13		! source line 1041
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_7:
	.word	_sourceFileName
	.word	_Label_2416
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_2417
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2418
	.word	12
	.word	4
	.word	_Label_2419
	.word	-12
	.word	4
	.word	_Label_2420
	.word	-16
	.word	4
	.word	_Label_2421
	.word	-20
	.word	4
	.word	_Label_2422
	.word	-24
	.word	4
	.word	_Label_2423
	.word	-28
	.word	4
	.word	_Label_2424
	.word	-32
	.word	4
	.word	0
_Label_2416:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"FreeProcess\0"
	.align
_Label_2417:
	.ascii	"Pself\0"
	.align
_Label_2418:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_2419:
	.byte	'?'
	.ascii	"_temp_2415\0"
	.align
_Label_2420:
	.byte	'?'
	.ascii	"_temp_2414\0"
	.align
_Label_2421:
	.byte	'?'
	.ascii	"_temp_2413\0"
	.align
_Label_2422:
	.byte	'?'
	.ascii	"_temp_2412\0"
	.align
_Label_2423:
	.byte	'?'
	.ascii	"_temp_2411\0"
	.align
_Label_2424:
	.byte	'?'
	.ascii	"_temp_2410\0"
	.align
! 
! ===============  CLASS FrameManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FrameManager:
	.word	_Label_2425
	jmp	_Method_P_Kernel_FrameManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FrameManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FrameManager_3	! 12:	GetAFrame
	jmp	_Method_P_Kernel_FrameManager_4	! 16:	GetAFrame2
	jmp	_Method_P_Kernel_FrameManager_5	! 20:	GetNewFrames
	jmp	_Method_P_Kernel_FrameManager_6	! 24:	ReturnAllFrames
	.word	0
! 
! Class descriptor:
! 
_Label_2425:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2426
	.word	_sourceFileName
	.word	256		! line number
	.word	56		! size of instances, in bytes
	.word	_P_Kernel_FrameManager
	.word	_P_System_Object
	.word	0
_Label_2426:
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
_Label_4007:
	push	r0
	sub	r1,1,r1
	bne	_Label_4007
	mov	1090,r13		! source line 1090
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2427 = _StringConst_102
	set	_StringConst_102,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_2427  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	1096,r13		! source line 1096
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1097,r13		! source line 1097
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
	mov	1098,r13		! source line 1098
	mov	"\0\0SE",r10
!   _temp_2429 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=512  sizeInBytes=4
	mov	512,r1
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
	mov	1099,r13		! source line 1099
	mov	"\0\0AS",r10
!   numberFreeFrames = 512		(4 bytes)
	mov	512,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1100,r13		! source line 1100
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
	mov	1101,r13		! source line 1101
	mov	"\0\0SE",r10
!   _temp_2431 = &frameManagerLock
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
	mov	1102,r13		! source line 1102
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
	mov	1103,r13		! source line 1103
	mov	"\0\0SE",r10
!   _temp_2433 = &newFramesAvailable
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
	mov	1109,r13		! source line 1109
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2438 = 1048576		(4 bytes)
	set	1048576,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2439 = 1048876		(4 bytes)
	set	1048876,r1
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2438  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-56]
_Label_2434:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2439 then goto _Label_2437		
	load	[r14+-56],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2437
_Label_2435:
	mov	1109,r13		! source line 1109
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1112,r13		! source line 1112
	mov	"\0\0IF",r10
!   if intIsZero (i) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2442 = *i  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2442) then goto _Label_2441
	load	[r14+-16],r1
	cmp	r1,r0
	be	_Label_2441
!	jmp	_Label_2440
_Label_2440:
! THEN...
	mov	1113,r13		! source line 1113
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2443 = _StringConst_103
	set	_StringConst_103,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2443  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1113,r13		! source line 1113
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2441:
!   Increment the FOR-LOOP index variable and jump back
_Label_2436:
!   i = i + 4
	load	[r14+-56],r1
	add	r1,4,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_2434
! END FOR
_Label_2437:
! RETURN STATEMENT...
	mov	1109,r13		! source line 1109
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
	.word	_Label_2444
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_2445
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2446
	.word	-12
	.word	4
	.word	_Label_2447
	.word	-16
	.word	4
	.word	_Label_2448
	.word	-20
	.word	4
	.word	_Label_2449
	.word	-24
	.word	4
	.word	_Label_2450
	.word	-28
	.word	4
	.word	_Label_2451
	.word	-32
	.word	4
	.word	_Label_2452
	.word	-36
	.word	4
	.word	_Label_2453
	.word	-40
	.word	4
	.word	_Label_2454
	.word	-44
	.word	4
	.word	_Label_2455
	.word	-48
	.word	4
	.word	_Label_2456
	.word	-52
	.word	4
	.word	_Label_2457
	.word	-56
	.word	4
	.word	0
_Label_2444:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2445:
	.ascii	"Pself\0"
	.align
_Label_2446:
	.byte	'?'
	.ascii	"_temp_2443\0"
	.align
_Label_2447:
	.byte	'?'
	.ascii	"_temp_2442\0"
	.align
_Label_2448:
	.byte	'?'
	.ascii	"_temp_2439\0"
	.align
_Label_2449:
	.byte	'?'
	.ascii	"_temp_2438\0"
	.align
_Label_2450:
	.byte	'?'
	.ascii	"_temp_2433\0"
	.align
_Label_2451:
	.byte	'?'
	.ascii	"_temp_2432\0"
	.align
_Label_2452:
	.byte	'?'
	.ascii	"_temp_2431\0"
	.align
_Label_2453:
	.byte	'?'
	.ascii	"_temp_2430\0"
	.align
_Label_2454:
	.byte	'?'
	.ascii	"_temp_2429\0"
	.align
_Label_2455:
	.byte	'?'
	.ascii	"_temp_2428\0"
	.align
_Label_2456:
	.byte	'?'
	.ascii	"_temp_2427\0"
	.align
_Label_2457:
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
_Label_4008:
	push	r0
	sub	r1,1,r1
	bne	_Label_4008
	mov	1120,r13		! source line 1120
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1124,r13		! source line 1124
	mov	"\0\0SE",r10
!   _temp_2458 = &frameManagerLock
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
!   _temp_2459 = _StringConst_104
	set	_StringConst_104,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2459  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1125,r13		! source line 1125
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2460 = _StringConst_105
	set	_StringConst_105,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2460  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=numberFreeFrames  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1126,r13		! source line 1126
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_2461 = _StringConst_106
	set	_StringConst_106,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2461  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1127,r13		! source line 1127
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1128,r13		! source line 1128
	mov	"\0\0SE",r10
!   _temp_2462 = &framesInUse
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
	mov	1129,r13		! source line 1129
	mov	"\0\0SE",r10
!   _temp_2463 = &frameManagerLock
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
	mov	1129,r13		! source line 1129
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
	.word	_Label_2464
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_2465
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2466
	.word	-12
	.word	4
	.word	_Label_2467
	.word	-16
	.word	4
	.word	_Label_2468
	.word	-20
	.word	4
	.word	_Label_2469
	.word	-24
	.word	4
	.word	_Label_2470
	.word	-28
	.word	4
	.word	_Label_2471
	.word	-32
	.word	4
	.word	0
_Label_2464:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2465:
	.ascii	"Pself\0"
	.align
_Label_2466:
	.byte	'?'
	.ascii	"_temp_2463\0"
	.align
_Label_2467:
	.byte	'?'
	.ascii	"_temp_2462\0"
	.align
_Label_2468:
	.byte	'?'
	.ascii	"_temp_2461\0"
	.align
_Label_2469:
	.byte	'?'
	.ascii	"_temp_2460\0"
	.align
_Label_2470:
	.byte	'?'
	.ascii	"_temp_2459\0"
	.align
_Label_2471:
	.byte	'?'
	.ascii	"_temp_2458\0"
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
_Label_4009:
	push	r0
	sub	r1,1,r1
	bne	_Label_4009
	mov	1134,r13		! source line 1134
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1141,r13		! source line 1141
	mov	"\0\0SE",r10
!   _temp_2472 = &frameManagerLock
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
	mov	1144,r13		! source line 1144
	mov	"\0\0WH",r10
_Label_2473:
!   if numberFreeFrames >= 1 then goto _Label_2475		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2475
!	jmp	_Label_2474
_Label_2474:
	mov	1144,r13		! source line 1144
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1145,r13		! source line 1145
	mov	"\0\0SE",r10
!   _temp_2476 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   _temp_2477 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_2476  sizeInBytes=4
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
	jmp	_Label_2473
_Label_2475:
! ASSIGNMENT STATEMENT...
	mov	1149,r13		! source line 1149
	mov	"\0\0AS",r10
	mov	1149,r13		! source line 1149
	mov	"\0\0SE",r10
!   _temp_2478 = &framesInUse
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
	mov	1150,r13		! source line 1150
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
	mov	1153,r13		! source line 1153
	mov	"\0\0SE",r10
!   _temp_2479 = &frameManagerLock
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
	mov	1156,r13		! source line 1156
	mov	"\0\0AS",r10
!   _temp_2480 = f * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   frameAddr = 1048576 + _temp_2480		(int)
	set	1048576,r1
	load	[r14+-12],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! RETURN STATEMENT...
	mov	1158,r13		! source line 1158
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
	.word	_Label_2481
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_2482
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2483
	.word	-12
	.word	4
	.word	_Label_2484
	.word	-16
	.word	4
	.word	_Label_2485
	.word	-20
	.word	4
	.word	_Label_2486
	.word	-24
	.word	4
	.word	_Label_2487
	.word	-28
	.word	4
	.word	_Label_2488
	.word	-32
	.word	4
	.word	_Label_2489
	.word	-36
	.word	4
	.word	_Label_2490
	.word	-40
	.word	4
	.word	0
_Label_2481:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetAFrame\0"
	.align
_Label_2482:
	.ascii	"Pself\0"
	.align
_Label_2483:
	.byte	'?'
	.ascii	"_temp_2480\0"
	.align
_Label_2484:
	.byte	'?'
	.ascii	"_temp_2479\0"
	.align
_Label_2485:
	.byte	'?'
	.ascii	"_temp_2478\0"
	.align
_Label_2486:
	.byte	'?'
	.ascii	"_temp_2477\0"
	.align
_Label_2487:
	.byte	'?'
	.ascii	"_temp_2476\0"
	.align
_Label_2488:
	.byte	'?'
	.ascii	"_temp_2472\0"
	.align
_Label_2489:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_2490:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
! 
! ===============  METHOD GetAFrame2  ===============
! 
_Method_P_Kernel_FrameManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_4,r1
	push	r1
	mov	5,r1
_Label_4010:
	push	r0
	sub	r1,1,r1
	bne	_Label_4010
	mov	1161,r13		! source line 1161
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1168,r13		! source line 1168
	mov	"\0\0AS",r10
	mov	1168,r13		! source line 1168
	mov	"\0\0SE",r10
!   _temp_2491 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Send message FindZeroAndSet
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=f  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! ASSIGNMENT STATEMENT...
	mov	1171,r13		! source line 1171
	mov	"\0\0AS",r10
!   _temp_2492 = f * 8192		(int)
	load	[r14+-20],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   frameAddr = 1048576 + _temp_2492		(int)
	set	1048576,r1
	load	[r14+-12],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	1173,r13		! source line 1173
	mov	"\0\0RE",r10
!   ReturnResult: frameAddr  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_4:
	.word	_sourceFileName
	.word	_Label_2493
	.word	4		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2494
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2495
	.word	-12
	.word	4
	.word	_Label_2496
	.word	-16
	.word	4
	.word	_Label_2497
	.word	-20
	.word	4
	.word	_Label_2498
	.word	-24
	.word	4
	.word	0
_Label_2493:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetAFrame2\0"
	.align
_Label_2494:
	.ascii	"Pself\0"
	.align
_Label_2495:
	.byte	'?'
	.ascii	"_temp_2492\0"
	.align
_Label_2496:
	.byte	'?'
	.ascii	"_temp_2491\0"
	.align
_Label_2497:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_2498:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
! 
! ===============  METHOD GetNewFrames  ===============
! 
_Method_P_Kernel_FrameManager_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_5,r1
	push	r1
	mov	13,r1
_Label_4011:
	push	r0
	sub	r1,1,r1
	bne	_Label_4011
	mov	1178,r13		! source line 1178
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1182,r13		! source line 1182
	mov	"\0\0SE",r10
!   _temp_2499 = &frameManagerLock
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
	mov	1183,r13		! source line 1183
	mov	"\0\0WH",r10
_Label_2500:
!   if numberFreeFrames >= numFramesNeeded then goto _Label_2502		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2502
!	jmp	_Label_2501
_Label_2501:
	mov	1183,r13		! source line 1183
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1184,r13		! source line 1184
	mov	"\0\0SE",r10
!   _temp_2503 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   _temp_2504 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_2503  sizeInBytes=4
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
	jmp	_Label_2500
_Label_2502:
! FOR STATEMENT...
	mov	1186,r13		! source line 1186
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2509 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-28]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2510 = numFramesNeeded - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2509  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+-44]
_Label_2505:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2510 then goto _Label_2508		
	load	[r14+-44],r1
	load	[r14+-24],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2508
_Label_2506:
	mov	1186,r13		! source line 1186
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1187,r13		! source line 1187
	mov	"\0\0AS",r10
	mov	1187,r13		! source line 1187
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_2511) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message GetAFrame2
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=frameAddr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
! SEND STATEMENT...
	mov	1188,r13		! source line 1188
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
_Label_2507:
!   i = i + 1
	load	[r14+-44],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
	jmp	_Label_2505
! END FOR
_Label_2508:
! ASSIGNMENT STATEMENT...
	mov	1190,r13		! source line 1190
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
	mov	1191,r13		! source line 1191
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2512 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2512 = numFramesNeeded  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1192,r13		! source line 1192
	mov	"\0\0SE",r10
!   _temp_2513 = &frameManagerLock
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
	mov	1192,r13		! source line 1192
	mov	"\0\0RE",r10
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_5:
	.word	_sourceFileName
	.word	_Label_2514
	.word	12		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2515
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2516
	.word	12
	.word	4
	.word	_Label_2517
	.word	16
	.word	4
	.word	_Label_2518
	.word	-12
	.word	4
	.word	_Label_2519
	.word	-16
	.word	4
	.word	_Label_2520
	.word	-20
	.word	4
	.word	_Label_2521
	.word	-24
	.word	4
	.word	_Label_2522
	.word	-28
	.word	4
	.word	_Label_2523
	.word	-32
	.word	4
	.word	_Label_2524
	.word	-36
	.word	4
	.word	_Label_2525
	.word	-40
	.word	4
	.word	_Label_2526
	.word	-44
	.word	4
	.word	_Label_2527
	.word	-48
	.word	4
	.word	0
_Label_2514:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetNewFrames\0"
	.align
_Label_2515:
	.ascii	"Pself\0"
	.align
_Label_2516:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_2517:
	.byte	'I'
	.ascii	"numFramesNeeded\0"
	.align
_Label_2518:
	.byte	'?'
	.ascii	"_temp_2513\0"
	.align
_Label_2519:
	.byte	'?'
	.ascii	"_temp_2512\0"
	.align
_Label_2520:
	.byte	'?'
	.ascii	"_temp_2511\0"
	.align
_Label_2521:
	.byte	'?'
	.ascii	"_temp_2510\0"
	.align
_Label_2522:
	.byte	'?'
	.ascii	"_temp_2509\0"
	.align
_Label_2523:
	.byte	'?'
	.ascii	"_temp_2504\0"
	.align
_Label_2524:
	.byte	'?'
	.ascii	"_temp_2503\0"
	.align
_Label_2525:
	.byte	'?'
	.ascii	"_temp_2499\0"
	.align
_Label_2526:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2527:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
! 
! ===============  METHOD ReturnAllFrames  ===============
! 
_Method_P_Kernel_FrameManager_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_6,r1
	push	r1
	mov	17,r1
_Label_4012:
	push	r0
	sub	r1,1,r1
	bne	_Label_4012
	mov	1197,r13		! source line 1197
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1202,r13		! source line 1202
	mov	"\0\0SE",r10
!   _temp_2528 = &frameManagerLock
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
	mov	1203,r13		! source line 1203
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2533 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-52]
!   Calculate and save the FOR-LOOP ending value
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2536 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Data Move: _temp_2535 = *_temp_2536  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_2534 = _temp_2535 - 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2533  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+-60]
_Label_2529:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2534 then goto _Label_2532		
	load	[r14+-60],r1
	load	[r14+-48],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2532
_Label_2530:
	mov	1203,r13		! source line 1203
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1204,r13		! source line 1204
	mov	"\0\0AS",r10
	mov	1204,r13		! source line 1204
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
	mov	1205,r13		! source line 1205
	mov	"\0\0AS",r10
!   _temp_2537 = frameAddr - 1048576		(int)
	load	[r14+-68],r1
	set	1048576,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   bitIndex = _temp_2537 div 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
! SEND STATEMENT...
	mov	1206,r13		! source line 1206
	mov	"\0\0SE",r10
!   _temp_2538 = &framesInUse
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
_Label_2531:
!   i = i + 1
	load	[r14+-60],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
	jmp	_Label_2529
! END FOR
_Label_2532:
! ASSIGNMENT STATEMENT...
	mov	1208,r13		! source line 1208
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2540 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Data Move: _temp_2539 = *_temp_2540  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   numberFreeFrames = numberFreeFrames + _temp_2539		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+-28],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! SEND STATEMENT...
	mov	1209,r13		! source line 1209
	mov	"\0\0SE",r10
!   _temp_2541 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   _temp_2542 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2541  sizeInBytes=4
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
	mov	1210,r13		! source line 1210
	mov	"\0\0SE",r10
!   _temp_2543 = &frameManagerLock
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
	mov	1210,r13		! source line 1210
	mov	"\0\0RE",r10
	add	r15,72,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_6:
	.word	_sourceFileName
	.word	_Label_2544
	.word	8		! total size of parameters
	.word	68		! frame size = 68
	.word	_Label_2545
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2546
	.word	12
	.word	4
	.word	_Label_2547
	.word	-12
	.word	4
	.word	_Label_2548
	.word	-16
	.word	4
	.word	_Label_2549
	.word	-20
	.word	4
	.word	_Label_2550
	.word	-24
	.word	4
	.word	_Label_2551
	.word	-28
	.word	4
	.word	_Label_2552
	.word	-32
	.word	4
	.word	_Label_2553
	.word	-36
	.word	4
	.word	_Label_2554
	.word	-40
	.word	4
	.word	_Label_2555
	.word	-44
	.word	4
	.word	_Label_2556
	.word	-48
	.word	4
	.word	_Label_2557
	.word	-52
	.word	4
	.word	_Label_2558
	.word	-56
	.word	4
	.word	_Label_2559
	.word	-60
	.word	4
	.word	_Label_2560
	.word	-64
	.word	4
	.word	_Label_2561
	.word	-68
	.word	4
	.word	0
_Label_2544:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"ReturnAllFrames\0"
	.align
_Label_2545:
	.ascii	"Pself\0"
	.align
_Label_2546:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_2547:
	.byte	'?'
	.ascii	"_temp_2543\0"
	.align
_Label_2548:
	.byte	'?'
	.ascii	"_temp_2542\0"
	.align
_Label_2549:
	.byte	'?'
	.ascii	"_temp_2541\0"
	.align
_Label_2550:
	.byte	'?'
	.ascii	"_temp_2540\0"
	.align
_Label_2551:
	.byte	'?'
	.ascii	"_temp_2539\0"
	.align
_Label_2552:
	.byte	'?'
	.ascii	"_temp_2538\0"
	.align
_Label_2553:
	.byte	'?'
	.ascii	"_temp_2537\0"
	.align
_Label_2554:
	.byte	'?'
	.ascii	"_temp_2536\0"
	.align
_Label_2555:
	.byte	'?'
	.ascii	"_temp_2535\0"
	.align
_Label_2556:
	.byte	'?'
	.ascii	"_temp_2534\0"
	.align
_Label_2557:
	.byte	'?'
	.ascii	"_temp_2533\0"
	.align
_Label_2558:
	.byte	'?'
	.ascii	"_temp_2528\0"
	.align
_Label_2559:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2560:
	.byte	'I'
	.ascii	"bitIndex\0"
	.align
_Label_2561:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
! 
! ===============  CLASS AddrSpace  ===============
! 
! Dispatch Table:
! 
_P_Kernel_AddrSpace:
	.word	_Label_2562
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
_Label_2562:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2563
	.word	_sourceFileName
	.word	276		! line number
	.word	92		! size of instances, in bytes
	.word	_P_Kernel_AddrSpace
	.word	_P_System_Object
	.word	0
_Label_2563:
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
_Label_4013:
	push	r0
	sub	r1,1,r1
	bne	_Label_4013
	mov	1221,r13		! source line 1221
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1225,r13		! source line 1225
	mov	"\0\0AS",r10
!   numberOfPages = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	1226,r13		! source line 1226
	mov	"\0\0AS",r10
!   _temp_2564 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-108]
!   NEW ARRAY Constructor...
!   _temp_2566 = &_temp_2565
	add	r14,-104,r1
	store	r1,[r14+-20]
!   _temp_2566 = _temp_2566 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	20,r1
	store	r1,[r14+-16]
_Label_2568:
!   Data Move: *_temp_2566 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_2566 = _temp_2566 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_2567 = _temp_2567 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_2567) then goto _Label_2568
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_2568
!   Initialize the array size...
	mov	20,r1
	store	r1,[r14+-104]
!   _temp_2569 = &_temp_2565
	add	r14,-104,r1
	store	r1,[r14+-12]
!   make sure array has size 20
	load	[r14+-108],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,0
	be	_Label_4014
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4014:
!   make sure array has size 20
	load	[r14+-12],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2564 = *_temp_2569  (sizeInBytes=84)
	load	[r14+-12],r5
	load	[r14+-108],r4
	mov	21,r3
_Label_4015:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4015
! RETURN STATEMENT...
	mov	1226,r13		! source line 1226
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
	.word	_Label_2570
	.word	4		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_2571
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2572
	.word	-12
	.word	4
	.word	_Label_2573
	.word	-16
	.word	4
	.word	_Label_2574
	.word	-20
	.word	4
	.word	_Label_2575
	.word	-104
	.word	84
	.word	_Label_2576
	.word	-108
	.word	4
	.word	0
_Label_2570:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2571:
	.ascii	"Pself\0"
	.align
_Label_2572:
	.byte	'?'
	.ascii	"_temp_2569\0"
	.align
_Label_2573:
	.byte	'?'
	.ascii	"_temp_2567\0"
	.align
_Label_2574:
	.byte	'?'
	.ascii	"_temp_2566\0"
	.align
_Label_2575:
	.byte	'?'
	.ascii	"_temp_2565\0"
	.align
_Label_2576:
	.byte	'?'
	.ascii	"_temp_2564\0"
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
_Label_4016:
	push	r0
	sub	r1,1,r1
	bne	_Label_4016
	mov	1231,r13		! source line 1231
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2577 = _StringConst_107
	set	_StringConst_107,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_2577  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	1236,r13		! source line 1236
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2578 = _StringConst_108
	set	_StringConst_108,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_2578  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	1237,r13		! source line 1237
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1238,r13		! source line 1238
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2583 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-156]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2584 = numberOfPages - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2583  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+-168]
_Label_2579:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2584 then goto _Label_2582		
	load	[r14+-168],r1
	load	[r14+-152],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2582
_Label_2580:
	mov	1238,r13		! source line 1238
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2585 = _StringConst_109
	set	_StringConst_109,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_2585  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	1239,r13		! source line 1239
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2587 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-140]
!   Move address of _temp_2587 [i ] into _temp_2588
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
!   _temp_2586 = _temp_2588		(4 bytes)
	load	[r14+-136],r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_2586  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	1240,r13		! source line 1240
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2589 = _StringConst_110
	set	_StringConst_110,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2589  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	1241,r13		! source line 1241
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2591 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-124]
!   Move address of _temp_2591 [i ] into _temp_2592
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
!   Data Move: _temp_2590 = *_temp_2592  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_2590  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	1242,r13		! source line 1242
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2593 = _StringConst_111
	set	_StringConst_111,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_2593  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	1243,r13		! source line 1243
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2594 = i * 8192		(int)
	load	[r14+-168],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_2594  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	1244,r13		! source line 1244
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2595 = _StringConst_112
	set	_StringConst_112,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_2595  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	1245,r13		! source line 1245
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	mov	1246,r13		! source line 1246
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_2597) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2596  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_2596  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	1246,r13		! source line 1246
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2598 = _StringConst_113
	set	_StringConst_113,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_2598  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	1247,r13		! source line 1247
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1248,r13		! source line 1248
	mov	"\0\0IF",r10
	mov	1248,r13		! source line 1248
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-88]
!   if intIsZero (_temp_2602) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2601  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2601) then goto _Label_2600
	load	[r14+-92],r1
	cmp	r1,r0
	be	_Label_2600
!	jmp	_Label_2599
_Label_2599:
! THEN...
	mov	1249,r13		! source line 1249
	mov	"\0\0TN",r10
! CALL STATEMENT...
	mov	1249,r13		! source line 1249
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_2604) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2603  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_2603  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	1249,r13		! source line 1249
	mov	"\0\0CE",r10
	call	printHex
	jmp	_Label_2605
_Label_2600:
! ELSE...
	mov	1251,r13		! source line 1251
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2606 = _StringConst_114
	set	_StringConst_114,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_2606  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	1251,r13		! source line 1251
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2605:
! CALL STATEMENT...
!   _temp_2607 = _StringConst_115
	set	_StringConst_115,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_2607  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	1253,r13		! source line 1253
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1254,r13		! source line 1254
	mov	"\0\0IF",r10
	mov	1254,r13		! source line 1254
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_2610) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2608 else goto _Label_2609
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2609
	jmp	_Label_2608
_Label_2608:
! THEN...
	mov	1255,r13		! source line 1255
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2611 = _StringConst_116
	set	_StringConst_116,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_2611  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	1255,r13		! source line 1255
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2612
_Label_2609:
! ELSE...
	mov	1257,r13		! source line 1257
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2613 = _StringConst_117
	set	_StringConst_117,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_2613  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1257,r13		! source line 1257
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2612:
! CALL STATEMENT...
!   _temp_2614 = _StringConst_118
	set	_StringConst_118,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2614  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	1259,r13		! source line 1259
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1260,r13		! source line 1260
	mov	"\0\0IF",r10
	mov	1260,r13		! source line 1260
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_2617) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2615 else goto _Label_2616
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2616
	jmp	_Label_2615
_Label_2615:
! THEN...
	mov	1261,r13		! source line 1261
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2618 = _StringConst_119
	set	_StringConst_119,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2618  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1261,r13		! source line 1261
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2619
_Label_2616:
! ELSE...
	mov	1263,r13		! source line 1263
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2620 = _StringConst_120
	set	_StringConst_120,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_2620  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1263,r13		! source line 1263
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2619:
! CALL STATEMENT...
!   _temp_2621 = _StringConst_121
	set	_StringConst_121,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_2621  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1265,r13		! source line 1265
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1266,r13		! source line 1266
	mov	"\0\0IF",r10
	mov	1266,r13		! source line 1266
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_2624) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2622 else goto _Label_2623
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2623
	jmp	_Label_2622
_Label_2622:
! THEN...
	mov	1267,r13		! source line 1267
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2625 = _StringConst_122
	set	_StringConst_122,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2625  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1267,r13		! source line 1267
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2626
_Label_2623:
! ELSE...
	mov	1269,r13		! source line 1269
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2627 = _StringConst_123
	set	_StringConst_123,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2627  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1269,r13		! source line 1269
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2626:
! CALL STATEMENT...
!   _temp_2628 = _StringConst_124
	set	_StringConst_124,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2628  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1271,r13		! source line 1271
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1272,r13		! source line 1272
	mov	"\0\0IF",r10
	mov	1272,r13		! source line 1272
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_2631) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2629 else goto _Label_2630
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2630
	jmp	_Label_2629
_Label_2629:
! THEN...
	mov	1273,r13		! source line 1273
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2632 = _StringConst_125
	set	_StringConst_125,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2632  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1273,r13		! source line 1273
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2633
_Label_2630:
! ELSE...
	mov	1275,r13		! source line 1275
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2634 = _StringConst_126
	set	_StringConst_126,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2634  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1275,r13		! source line 1275
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2633:
! CALL STATEMENT...
!   Call the function
	mov	1277,r13		! source line 1277
	mov	"\0\0CA",r10
	call	_P_System_nl
!   Increment the FOR-LOOP index variable and jump back
_Label_2581:
!   i = i + 1
	load	[r14+-168],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-168]
	jmp	_Label_2579
! END FOR
_Label_2582:
! RETURN STATEMENT...
	mov	1238,r13		! source line 1238
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
	.word	_Label_2635
	.word	4		! total size of parameters
	.word	168		! frame size = 168
	.word	_Label_2636
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2637
	.word	-12
	.word	4
	.word	_Label_2638
	.word	-16
	.word	4
	.word	_Label_2639
	.word	-20
	.word	4
	.word	_Label_2640
	.word	-24
	.word	4
	.word	_Label_2641
	.word	-28
	.word	4
	.word	_Label_2642
	.word	-32
	.word	4
	.word	_Label_2643
	.word	-36
	.word	4
	.word	_Label_2644
	.word	-40
	.word	4
	.word	_Label_2645
	.word	-44
	.word	4
	.word	_Label_2646
	.word	-48
	.word	4
	.word	_Label_2647
	.word	-52
	.word	4
	.word	_Label_2648
	.word	-56
	.word	4
	.word	_Label_2649
	.word	-60
	.word	4
	.word	_Label_2650
	.word	-64
	.word	4
	.word	_Label_2651
	.word	-68
	.word	4
	.word	_Label_2652
	.word	-72
	.word	4
	.word	_Label_2653
	.word	-76
	.word	4
	.word	_Label_2654
	.word	-80
	.word	4
	.word	_Label_2655
	.word	-84
	.word	4
	.word	_Label_2656
	.word	-88
	.word	4
	.word	_Label_2657
	.word	-92
	.word	4
	.word	_Label_2658
	.word	-96
	.word	4
	.word	_Label_2659
	.word	-100
	.word	4
	.word	_Label_2660
	.word	-104
	.word	4
	.word	_Label_2661
	.word	-108
	.word	4
	.word	_Label_2662
	.word	-112
	.word	4
	.word	_Label_2663
	.word	-116
	.word	4
	.word	_Label_2664
	.word	-120
	.word	4
	.word	_Label_2665
	.word	-124
	.word	4
	.word	_Label_2666
	.word	-128
	.word	4
	.word	_Label_2667
	.word	-132
	.word	4
	.word	_Label_2668
	.word	-136
	.word	4
	.word	_Label_2669
	.word	-140
	.word	4
	.word	_Label_2670
	.word	-144
	.word	4
	.word	_Label_2671
	.word	-148
	.word	4
	.word	_Label_2672
	.word	-152
	.word	4
	.word	_Label_2673
	.word	-156
	.word	4
	.word	_Label_2674
	.word	-160
	.word	4
	.word	_Label_2675
	.word	-164
	.word	4
	.word	_Label_2676
	.word	-168
	.word	4
	.word	0
_Label_2635:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2636:
	.ascii	"Pself\0"
	.align
_Label_2637:
	.byte	'?'
	.ascii	"_temp_2634\0"
	.align
_Label_2638:
	.byte	'?'
	.ascii	"_temp_2632\0"
	.align
_Label_2639:
	.byte	'?'
	.ascii	"_temp_2631\0"
	.align
_Label_2640:
	.byte	'?'
	.ascii	"_temp_2628\0"
	.align
_Label_2641:
	.byte	'?'
	.ascii	"_temp_2627\0"
	.align
_Label_2642:
	.byte	'?'
	.ascii	"_temp_2625\0"
	.align
_Label_2643:
	.byte	'?'
	.ascii	"_temp_2624\0"
	.align
_Label_2644:
	.byte	'?'
	.ascii	"_temp_2621\0"
	.align
_Label_2645:
	.byte	'?'
	.ascii	"_temp_2620\0"
	.align
_Label_2646:
	.byte	'?'
	.ascii	"_temp_2618\0"
	.align
_Label_2647:
	.byte	'?'
	.ascii	"_temp_2617\0"
	.align
_Label_2648:
	.byte	'?'
	.ascii	"_temp_2614\0"
	.align
_Label_2649:
	.byte	'?'
	.ascii	"_temp_2613\0"
	.align
_Label_2650:
	.byte	'?'
	.ascii	"_temp_2611\0"
	.align
_Label_2651:
	.byte	'?'
	.ascii	"_temp_2610\0"
	.align
_Label_2652:
	.byte	'?'
	.ascii	"_temp_2607\0"
	.align
_Label_2653:
	.byte	'?'
	.ascii	"_temp_2606\0"
	.align
_Label_2654:
	.byte	'?'
	.ascii	"_temp_2604\0"
	.align
_Label_2655:
	.byte	'?'
	.ascii	"_temp_2603\0"
	.align
_Label_2656:
	.byte	'?'
	.ascii	"_temp_2602\0"
	.align
_Label_2657:
	.byte	'?'
	.ascii	"_temp_2601\0"
	.align
_Label_2658:
	.byte	'?'
	.ascii	"_temp_2598\0"
	.align
_Label_2659:
	.byte	'?'
	.ascii	"_temp_2597\0"
	.align
_Label_2660:
	.byte	'?'
	.ascii	"_temp_2596\0"
	.align
_Label_2661:
	.byte	'?'
	.ascii	"_temp_2595\0"
	.align
_Label_2662:
	.byte	'?'
	.ascii	"_temp_2594\0"
	.align
_Label_2663:
	.byte	'?'
	.ascii	"_temp_2593\0"
	.align
_Label_2664:
	.byte	'?'
	.ascii	"_temp_2592\0"
	.align
_Label_2665:
	.byte	'?'
	.ascii	"_temp_2591\0"
	.align
_Label_2666:
	.byte	'?'
	.ascii	"_temp_2590\0"
	.align
_Label_2667:
	.byte	'?'
	.ascii	"_temp_2589\0"
	.align
_Label_2668:
	.byte	'?'
	.ascii	"_temp_2588\0"
	.align
_Label_2669:
	.byte	'?'
	.ascii	"_temp_2587\0"
	.align
_Label_2670:
	.byte	'?'
	.ascii	"_temp_2586\0"
	.align
_Label_2671:
	.byte	'?'
	.ascii	"_temp_2585\0"
	.align
_Label_2672:
	.byte	'?'
	.ascii	"_temp_2584\0"
	.align
_Label_2673:
	.byte	'?'
	.ascii	"_temp_2583\0"
	.align
_Label_2674:
	.byte	'?'
	.ascii	"_temp_2578\0"
	.align
_Label_2675:
	.byte	'?'
	.ascii	"_temp_2577\0"
	.align
_Label_2676:
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
_Label_4017:
	push	r0
	sub	r1,1,r1
	bne	_Label_4017
	mov	1283,r13		! source line 1283
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1288,r13		! source line 1288
	mov	"\0\0RE",r10
!   _temp_2679 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2679 [entry ] into _temp_2680
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
!   Data Move: _temp_2678 = *_temp_2680  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2677 = _temp_2678 AND -8192		(int)
	load	[r14+-20],r1
	mov	-8192,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_2677  (sizeInBytes=4)
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
	.word	_Label_2681
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2682
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2683
	.word	12
	.word	4
	.word	_Label_2684
	.word	-12
	.word	4
	.word	_Label_2685
	.word	-16
	.word	4
	.word	_Label_2686
	.word	-20
	.word	4
	.word	_Label_2687
	.word	-24
	.word	4
	.word	0
_Label_2681:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractFrameAddr\0"
	.align
_Label_2682:
	.ascii	"Pself\0"
	.align
_Label_2683:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2684:
	.byte	'?'
	.ascii	"_temp_2680\0"
	.align
_Label_2685:
	.byte	'?'
	.ascii	"_temp_2679\0"
	.align
_Label_2686:
	.byte	'?'
	.ascii	"_temp_2678\0"
	.align
_Label_2687:
	.byte	'?'
	.ascii	"_temp_2677\0"
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
_Label_4018:
	push	r0
	sub	r1,1,r1
	bne	_Label_4018
	mov	1293,r13		! source line 1293
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1297,r13		! source line 1297
	mov	"\0\0RE",r10
!   _temp_2690 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2690 [entry ] into _temp_2691
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
!   Data Move: _temp_2689 = *_temp_2691  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2688 = _temp_2689 AND 8176		(int)
	load	[r14+-20],r1
	mov	8176,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_2688  (sizeInBytes=4)
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
	.word	_Label_2692
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2693
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2694
	.word	12
	.word	4
	.word	_Label_2695
	.word	-12
	.word	4
	.word	_Label_2696
	.word	-16
	.word	4
	.word	_Label_2697
	.word	-20
	.word	4
	.word	_Label_2698
	.word	-24
	.word	4
	.word	0
_Label_2692:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractUndefinedBits\0"
	.align
_Label_2693:
	.ascii	"Pself\0"
	.align
_Label_2694:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2695:
	.byte	'?'
	.ascii	"_temp_2691\0"
	.align
_Label_2696:
	.byte	'?'
	.ascii	"_temp_2690\0"
	.align
_Label_2697:
	.byte	'?'
	.ascii	"_temp_2689\0"
	.align
_Label_2698:
	.byte	'?'
	.ascii	"_temp_2688\0"
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
_Label_4019:
	push	r0
	sub	r1,1,r1
	bne	_Label_4019
	mov	1302,r13		! source line 1302
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1307,r13		! source line 1307
	mov	"\0\0AS",r10
!   _temp_2699 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-36]
!   Move address of _temp_2699 [entry ] into _temp_2700
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
!   _temp_2704 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2704 [entry ] into _temp_2705
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
!   Data Move: _temp_2703 = *_temp_2705  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2702 = _temp_2703 AND 8191		(int)
	load	[r14+-20],r1
	mov	8191,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   _temp_2701 = _temp_2702 OR frameAddr		(int)
	load	[r14+-24],r1
	load	[r14+16],r2
	or	r1,r2,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2700 = _temp_2701  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r14+-32],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1307,r13		! source line 1307
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
	.word	_Label_2706
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2707
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2708
	.word	12
	.word	4
	.word	_Label_2709
	.word	16
	.word	4
	.word	_Label_2710
	.word	-12
	.word	4
	.word	_Label_2711
	.word	-16
	.word	4
	.word	_Label_2712
	.word	-20
	.word	4
	.word	_Label_2713
	.word	-24
	.word	4
	.word	_Label_2714
	.word	-28
	.word	4
	.word	_Label_2715
	.word	-32
	.word	4
	.word	_Label_2716
	.word	-36
	.word	4
	.word	0
_Label_2706:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetFrameAddr\0"
	.align
_Label_2707:
	.ascii	"Pself\0"
	.align
_Label_2708:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2709:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_2710:
	.byte	'?'
	.ascii	"_temp_2705\0"
	.align
_Label_2711:
	.byte	'?'
	.ascii	"_temp_2704\0"
	.align
_Label_2712:
	.byte	'?'
	.ascii	"_temp_2703\0"
	.align
_Label_2713:
	.byte	'?'
	.ascii	"_temp_2702\0"
	.align
_Label_2714:
	.byte	'?'
	.ascii	"_temp_2701\0"
	.align
_Label_2715:
	.byte	'?'
	.ascii	"_temp_2700\0"
	.align
_Label_2716:
	.byte	'?'
	.ascii	"_temp_2699\0"
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
_Label_4020:
	push	r0
	sub	r1,1,r1
	bne	_Label_4020
	mov	1312,r13		! source line 1312
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1316,r13		! source line 1316
	mov	"\0\0RE",r10
!   _temp_2720 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2720 [entry ] into _temp_2721
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
!   Data Move: _temp_2719 = *_temp_2721  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2718 = _temp_2719 AND 8		(int)
	load	[r14+-24],r1
	mov	8,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2718) then goto _Label_2722
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2722
!   _temp_2717 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2723
_Label_2722:
!   _temp_2717 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2723:
!   ReturnResult: _temp_2717  (sizeInBytes=1)
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
	.word	_Label_2724
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2725
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2726
	.word	12
	.word	4
	.word	_Label_2727
	.word	-16
	.word	4
	.word	_Label_2728
	.word	-20
	.word	4
	.word	_Label_2729
	.word	-24
	.word	4
	.word	_Label_2730
	.word	-28
	.word	4
	.word	_Label_2731
	.word	-9
	.word	1
	.word	0
_Label_2724:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsDirty\0"
	.align
_Label_2725:
	.ascii	"Pself\0"
	.align
_Label_2726:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2727:
	.byte	'?'
	.ascii	"_temp_2721\0"
	.align
_Label_2728:
	.byte	'?'
	.ascii	"_temp_2720\0"
	.align
_Label_2729:
	.byte	'?'
	.ascii	"_temp_2719\0"
	.align
_Label_2730:
	.byte	'?'
	.ascii	"_temp_2718\0"
	.align
_Label_2731:
	.byte	'C'
	.ascii	"_temp_2717\0"
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
_Label_4021:
	push	r0
	sub	r1,1,r1
	bne	_Label_4021
	mov	1321,r13		! source line 1321
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1325,r13		! source line 1325
	mov	"\0\0RE",r10
!   _temp_2735 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2735 [entry ] into _temp_2736
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
!   Data Move: _temp_2734 = *_temp_2736  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2733 = _temp_2734 AND 4		(int)
	load	[r14+-24],r1
	mov	4,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2733) then goto _Label_2737
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2737
!   _temp_2732 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2738
_Label_2737:
!   _temp_2732 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2738:
!   ReturnResult: _temp_2732  (sizeInBytes=1)
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
	.word	_Label_2739
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2740
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2741
	.word	12
	.word	4
	.word	_Label_2742
	.word	-16
	.word	4
	.word	_Label_2743
	.word	-20
	.word	4
	.word	_Label_2744
	.word	-24
	.word	4
	.word	_Label_2745
	.word	-28
	.word	4
	.word	_Label_2746
	.word	-9
	.word	1
	.word	0
_Label_2739:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsReferenced\0"
	.align
_Label_2740:
	.ascii	"Pself\0"
	.align
_Label_2741:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2742:
	.byte	'?'
	.ascii	"_temp_2736\0"
	.align
_Label_2743:
	.byte	'?'
	.ascii	"_temp_2735\0"
	.align
_Label_2744:
	.byte	'?'
	.ascii	"_temp_2734\0"
	.align
_Label_2745:
	.byte	'?'
	.ascii	"_temp_2733\0"
	.align
_Label_2746:
	.byte	'C'
	.ascii	"_temp_2732\0"
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
_Label_4022:
	push	r0
	sub	r1,1,r1
	bne	_Label_4022
	mov	1330,r13		! source line 1330
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1334,r13		! source line 1334
	mov	"\0\0RE",r10
!   _temp_2750 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2750 [entry ] into _temp_2751
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
!   Data Move: _temp_2749 = *_temp_2751  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2748 = _temp_2749 AND 2		(int)
	load	[r14+-24],r1
	mov	2,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2748) then goto _Label_2752
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2752
!   _temp_2747 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2753
_Label_2752:
!   _temp_2747 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2753:
!   ReturnResult: _temp_2747  (sizeInBytes=1)
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
	.word	_Label_2754
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2755
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2756
	.word	12
	.word	4
	.word	_Label_2757
	.word	-16
	.word	4
	.word	_Label_2758
	.word	-20
	.word	4
	.word	_Label_2759
	.word	-24
	.word	4
	.word	_Label_2760
	.word	-28
	.word	4
	.word	_Label_2761
	.word	-9
	.word	1
	.word	0
_Label_2754:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsWritable\0"
	.align
_Label_2755:
	.ascii	"Pself\0"
	.align
_Label_2756:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2757:
	.byte	'?'
	.ascii	"_temp_2751\0"
	.align
_Label_2758:
	.byte	'?'
	.ascii	"_temp_2750\0"
	.align
_Label_2759:
	.byte	'?'
	.ascii	"_temp_2749\0"
	.align
_Label_2760:
	.byte	'?'
	.ascii	"_temp_2748\0"
	.align
_Label_2761:
	.byte	'C'
	.ascii	"_temp_2747\0"
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
_Label_4023:
	push	r0
	sub	r1,1,r1
	bne	_Label_4023
	mov	1339,r13		! source line 1339
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1343,r13		! source line 1343
	mov	"\0\0RE",r10
!   _temp_2765 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2765 [entry ] into _temp_2766
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
!   Data Move: _temp_2764 = *_temp_2766  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2763 = _temp_2764 AND 1		(int)
	load	[r14+-24],r1
	mov	1,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2763) then goto _Label_2767
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2767
!   _temp_2762 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2768
_Label_2767:
!   _temp_2762 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2768:
!   ReturnResult: _temp_2762  (sizeInBytes=1)
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
	.word	_Label_2769
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2770
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2771
	.word	12
	.word	4
	.word	_Label_2772
	.word	-16
	.word	4
	.word	_Label_2773
	.word	-20
	.word	4
	.word	_Label_2774
	.word	-24
	.word	4
	.word	_Label_2775
	.word	-28
	.word	4
	.word	_Label_2776
	.word	-9
	.word	1
	.word	0
_Label_2769:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsValid\0"
	.align
_Label_2770:
	.ascii	"Pself\0"
	.align
_Label_2771:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2772:
	.byte	'?'
	.ascii	"_temp_2766\0"
	.align
_Label_2773:
	.byte	'?'
	.ascii	"_temp_2765\0"
	.align
_Label_2774:
	.byte	'?'
	.ascii	"_temp_2764\0"
	.align
_Label_2775:
	.byte	'?'
	.ascii	"_temp_2763\0"
	.align
_Label_2776:
	.byte	'C'
	.ascii	"_temp_2762\0"
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
_Label_4024:
	push	r0
	sub	r1,1,r1
	bne	_Label_4024
	mov	1348,r13		! source line 1348
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1352,r13		! source line 1352
	mov	"\0\0AS",r10
!   _temp_2777 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2777 [entry ] into _temp_2778
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
!   _temp_2781 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2781 [entry ] into _temp_2782
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
!   Data Move: _temp_2780 = *_temp_2782  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2779 = _temp_2780 OR 8		(int)
	load	[r14+-20],r1
	mov	8,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2778 = _temp_2779  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1352,r13		! source line 1352
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
	.word	_Label_2783
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2784
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2785
	.word	12
	.word	4
	.word	_Label_2786
	.word	-12
	.word	4
	.word	_Label_2787
	.word	-16
	.word	4
	.word	_Label_2788
	.word	-20
	.word	4
	.word	_Label_2789
	.word	-24
	.word	4
	.word	_Label_2790
	.word	-28
	.word	4
	.word	_Label_2791
	.word	-32
	.word	4
	.word	0
_Label_2783:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetDirty\0"
	.align
_Label_2784:
	.ascii	"Pself\0"
	.align
_Label_2785:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2786:
	.byte	'?'
	.ascii	"_temp_2782\0"
	.align
_Label_2787:
	.byte	'?'
	.ascii	"_temp_2781\0"
	.align
_Label_2788:
	.byte	'?'
	.ascii	"_temp_2780\0"
	.align
_Label_2789:
	.byte	'?'
	.ascii	"_temp_2779\0"
	.align
_Label_2790:
	.byte	'?'
	.ascii	"_temp_2778\0"
	.align
_Label_2791:
	.byte	'?'
	.ascii	"_temp_2777\0"
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
_Label_4025:
	push	r0
	sub	r1,1,r1
	bne	_Label_4025
	mov	1357,r13		! source line 1357
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1361,r13		! source line 1361
	mov	"\0\0AS",r10
!   _temp_2792 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2792 [entry ] into _temp_2793
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
!   _temp_2796 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2796 [entry ] into _temp_2797
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
!   Data Move: _temp_2795 = *_temp_2797  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2794 = _temp_2795 OR 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2793 = _temp_2794  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1361,r13		! source line 1361
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
	.word	_Label_2798
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2799
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2800
	.word	12
	.word	4
	.word	_Label_2801
	.word	-12
	.word	4
	.word	_Label_2802
	.word	-16
	.word	4
	.word	_Label_2803
	.word	-20
	.word	4
	.word	_Label_2804
	.word	-24
	.word	4
	.word	_Label_2805
	.word	-28
	.word	4
	.word	_Label_2806
	.word	-32
	.word	4
	.word	0
_Label_2798:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetReferenced\0"
	.align
_Label_2799:
	.ascii	"Pself\0"
	.align
_Label_2800:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2801:
	.byte	'?'
	.ascii	"_temp_2797\0"
	.align
_Label_2802:
	.byte	'?'
	.ascii	"_temp_2796\0"
	.align
_Label_2803:
	.byte	'?'
	.ascii	"_temp_2795\0"
	.align
_Label_2804:
	.byte	'?'
	.ascii	"_temp_2794\0"
	.align
_Label_2805:
	.byte	'?'
	.ascii	"_temp_2793\0"
	.align
_Label_2806:
	.byte	'?'
	.ascii	"_temp_2792\0"
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
_Label_4026:
	push	r0
	sub	r1,1,r1
	bne	_Label_4026
	mov	1366,r13		! source line 1366
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1370,r13		! source line 1370
	mov	"\0\0AS",r10
!   _temp_2807 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2807 [entry ] into _temp_2808
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
!   _temp_2811 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2811 [entry ] into _temp_2812
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
!   Data Move: _temp_2810 = *_temp_2812  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2809 = _temp_2810 OR 2		(int)
	load	[r14+-20],r1
	mov	2,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2808 = _temp_2809  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1370,r13		! source line 1370
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
	.word	_Label_2813
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2814
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2815
	.word	12
	.word	4
	.word	_Label_2816
	.word	-12
	.word	4
	.word	_Label_2817
	.word	-16
	.word	4
	.word	_Label_2818
	.word	-20
	.word	4
	.word	_Label_2819
	.word	-24
	.word	4
	.word	_Label_2820
	.word	-28
	.word	4
	.word	_Label_2821
	.word	-32
	.word	4
	.word	0
_Label_2813:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetWritable\0"
	.align
_Label_2814:
	.ascii	"Pself\0"
	.align
_Label_2815:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2816:
	.byte	'?'
	.ascii	"_temp_2812\0"
	.align
_Label_2817:
	.byte	'?'
	.ascii	"_temp_2811\0"
	.align
_Label_2818:
	.byte	'?'
	.ascii	"_temp_2810\0"
	.align
_Label_2819:
	.byte	'?'
	.ascii	"_temp_2809\0"
	.align
_Label_2820:
	.byte	'?'
	.ascii	"_temp_2808\0"
	.align
_Label_2821:
	.byte	'?'
	.ascii	"_temp_2807\0"
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
_Label_4027:
	push	r0
	sub	r1,1,r1
	bne	_Label_4027
	mov	1375,r13		! source line 1375
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1379,r13		! source line 1379
	mov	"\0\0AS",r10
!   _temp_2822 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2822 [entry ] into _temp_2823
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
!   _temp_2826 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2826 [entry ] into _temp_2827
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
!   Data Move: _temp_2825 = *_temp_2827  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2824 = _temp_2825 OR 1		(int)
	load	[r14+-20],r1
	mov	1,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2823 = _temp_2824  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1379,r13		! source line 1379
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
	.word	_Label_2828
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2829
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2830
	.word	12
	.word	4
	.word	_Label_2831
	.word	-12
	.word	4
	.word	_Label_2832
	.word	-16
	.word	4
	.word	_Label_2833
	.word	-20
	.word	4
	.word	_Label_2834
	.word	-24
	.word	4
	.word	_Label_2835
	.word	-28
	.word	4
	.word	_Label_2836
	.word	-32
	.word	4
	.word	0
_Label_2828:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetValid\0"
	.align
_Label_2829:
	.ascii	"Pself\0"
	.align
_Label_2830:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2831:
	.byte	'?'
	.ascii	"_temp_2827\0"
	.align
_Label_2832:
	.byte	'?'
	.ascii	"_temp_2826\0"
	.align
_Label_2833:
	.byte	'?'
	.ascii	"_temp_2825\0"
	.align
_Label_2834:
	.byte	'?'
	.ascii	"_temp_2824\0"
	.align
_Label_2835:
	.byte	'?'
	.ascii	"_temp_2823\0"
	.align
_Label_2836:
	.byte	'?'
	.ascii	"_temp_2822\0"
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
_Label_4028:
	push	r0
	sub	r1,1,r1
	bne	_Label_4028
	mov	1384,r13		! source line 1384
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1388,r13		! source line 1388
	mov	"\0\0AS",r10
!   _temp_2837 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2837 [entry ] into _temp_2838
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
!   _temp_2841 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2841 [entry ] into _temp_2842
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
!   Data Move: _temp_2840 = *_temp_2842  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2839 = _temp_2840 AND -9		(int)
	load	[r14+-20],r1
	mov	-9,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2838 = _temp_2839  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1388,r13		! source line 1388
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
	.word	_Label_2843
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2844
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2845
	.word	12
	.word	4
	.word	_Label_2846
	.word	-12
	.word	4
	.word	_Label_2847
	.word	-16
	.word	4
	.word	_Label_2848
	.word	-20
	.word	4
	.word	_Label_2849
	.word	-24
	.word	4
	.word	_Label_2850
	.word	-28
	.word	4
	.word	_Label_2851
	.word	-32
	.word	4
	.word	0
_Label_2843:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearDirty\0"
	.align
_Label_2844:
	.ascii	"Pself\0"
	.align
_Label_2845:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2846:
	.byte	'?'
	.ascii	"_temp_2842\0"
	.align
_Label_2847:
	.byte	'?'
	.ascii	"_temp_2841\0"
	.align
_Label_2848:
	.byte	'?'
	.ascii	"_temp_2840\0"
	.align
_Label_2849:
	.byte	'?'
	.ascii	"_temp_2839\0"
	.align
_Label_2850:
	.byte	'?'
	.ascii	"_temp_2838\0"
	.align
_Label_2851:
	.byte	'?'
	.ascii	"_temp_2837\0"
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
_Label_4029:
	push	r0
	sub	r1,1,r1
	bne	_Label_4029
	mov	1393,r13		! source line 1393
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1397,r13		! source line 1397
	mov	"\0\0AS",r10
!   _temp_2852 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2852 [entry ] into _temp_2853
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
!   _temp_2856 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2856 [entry ] into _temp_2857
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
!   Data Move: _temp_2855 = *_temp_2857  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2854 = _temp_2855 AND -5		(int)
	load	[r14+-20],r1
	mov	-5,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2853 = _temp_2854  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1397,r13		! source line 1397
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
	.word	_Label_2858
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2859
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2860
	.word	12
	.word	4
	.word	_Label_2861
	.word	-12
	.word	4
	.word	_Label_2862
	.word	-16
	.word	4
	.word	_Label_2863
	.word	-20
	.word	4
	.word	_Label_2864
	.word	-24
	.word	4
	.word	_Label_2865
	.word	-28
	.word	4
	.word	_Label_2866
	.word	-32
	.word	4
	.word	0
_Label_2858:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearReferenced\0"
	.align
_Label_2859:
	.ascii	"Pself\0"
	.align
_Label_2860:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2861:
	.byte	'?'
	.ascii	"_temp_2857\0"
	.align
_Label_2862:
	.byte	'?'
	.ascii	"_temp_2856\0"
	.align
_Label_2863:
	.byte	'?'
	.ascii	"_temp_2855\0"
	.align
_Label_2864:
	.byte	'?'
	.ascii	"_temp_2854\0"
	.align
_Label_2865:
	.byte	'?'
	.ascii	"_temp_2853\0"
	.align
_Label_2866:
	.byte	'?'
	.ascii	"_temp_2852\0"
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
_Label_4030:
	push	r0
	sub	r1,1,r1
	bne	_Label_4030
	mov	1402,r13		! source line 1402
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1406,r13		! source line 1406
	mov	"\0\0AS",r10
!   _temp_2867 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2867 [entry ] into _temp_2868
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
!   _temp_2871 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2871 [entry ] into _temp_2872
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
!   Data Move: _temp_2870 = *_temp_2872  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2869 = _temp_2870 AND -3		(int)
	load	[r14+-20],r1
	mov	-3,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2868 = _temp_2869  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1406,r13		! source line 1406
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
	.word	_Label_2873
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2874
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2875
	.word	12
	.word	4
	.word	_Label_2876
	.word	-12
	.word	4
	.word	_Label_2877
	.word	-16
	.word	4
	.word	_Label_2878
	.word	-20
	.word	4
	.word	_Label_2879
	.word	-24
	.word	4
	.word	_Label_2880
	.word	-28
	.word	4
	.word	_Label_2881
	.word	-32
	.word	4
	.word	0
_Label_2873:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearWritable\0"
	.align
_Label_2874:
	.ascii	"Pself\0"
	.align
_Label_2875:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2876:
	.byte	'?'
	.ascii	"_temp_2872\0"
	.align
_Label_2877:
	.byte	'?'
	.ascii	"_temp_2871\0"
	.align
_Label_2878:
	.byte	'?'
	.ascii	"_temp_2870\0"
	.align
_Label_2879:
	.byte	'?'
	.ascii	"_temp_2869\0"
	.align
_Label_2880:
	.byte	'?'
	.ascii	"_temp_2868\0"
	.align
_Label_2881:
	.byte	'?'
	.ascii	"_temp_2867\0"
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
_Label_4031:
	push	r0
	sub	r1,1,r1
	bne	_Label_4031
	mov	1411,r13		! source line 1411
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1415,r13		! source line 1415
	mov	"\0\0AS",r10
!   _temp_2882 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2882 [entry ] into _temp_2883
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
!   _temp_2886 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2886 [entry ] into _temp_2887
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
!   Data Move: _temp_2885 = *_temp_2887  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2884 = _temp_2885 AND -2		(int)
	load	[r14+-20],r1
	mov	-2,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2883 = _temp_2884  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1415,r13		! source line 1415
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
	.word	_Label_2888
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2889
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2890
	.word	12
	.word	4
	.word	_Label_2891
	.word	-12
	.word	4
	.word	_Label_2892
	.word	-16
	.word	4
	.word	_Label_2893
	.word	-20
	.word	4
	.word	_Label_2894
	.word	-24
	.word	4
	.word	_Label_2895
	.word	-28
	.word	4
	.word	_Label_2896
	.word	-32
	.word	4
	.word	0
_Label_2888:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearValid\0"
	.align
_Label_2889:
	.ascii	"Pself\0"
	.align
_Label_2890:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2891:
	.byte	'?'
	.ascii	"_temp_2887\0"
	.align
_Label_2892:
	.byte	'?'
	.ascii	"_temp_2886\0"
	.align
_Label_2893:
	.byte	'?'
	.ascii	"_temp_2885\0"
	.align
_Label_2894:
	.byte	'?'
	.ascii	"_temp_2884\0"
	.align
_Label_2895:
	.byte	'?'
	.ascii	"_temp_2883\0"
	.align
_Label_2896:
	.byte	'?'
	.ascii	"_temp_2882\0"
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
_Label_4032:
	push	r0
	sub	r1,1,r1
	bne	_Label_4032
	mov	1420,r13		! source line 1420
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2898 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2898 [0 ] into _temp_2899
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
!   _temp_2897 = _temp_2899		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_2900 = numberOfPages * 4		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	4,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2897  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2900  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Call the function
	mov	1426,r13		! source line 1426
	mov	"\0\0CE",r10
	call	LoadPageTableRegs
! RETURN STATEMENT...
	mov	1426,r13		! source line 1426
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
	.word	_Label_2901
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2902
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2903
	.word	-12
	.word	4
	.word	_Label_2904
	.word	-16
	.word	4
	.word	_Label_2905
	.word	-20
	.word	4
	.word	_Label_2906
	.word	-24
	.word	4
	.word	0
_Label_2901:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetToThisPageTable\0"
	.align
_Label_2902:
	.ascii	"Pself\0"
	.align
_Label_2903:
	.byte	'?'
	.ascii	"_temp_2900\0"
	.align
_Label_2904:
	.byte	'?'
	.ascii	"_temp_2899\0"
	.align
_Label_2905:
	.byte	'?'
	.ascii	"_temp_2898\0"
	.align
_Label_2906:
	.byte	'?'
	.ascii	"_temp_2897\0"
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
_Label_4033:
	push	r0
	sub	r1,1,r1
	bne	_Label_4033
	mov	1431,r13		! source line 1431
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1446,r13		! source line 1446
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_2907
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_2907
	jmp	_Label_2908
_Label_2907:
! THEN...
	mov	1447,r13		! source line 1447
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1447,r13		! source line 1447
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_2909
_Label_2908:
! ELSE...
	mov	1448,r13		! source line 1448
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1448,r13		! source line 1448
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_2911		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2911
!	jmp	_Label_2910
_Label_2910:
! THEN...
	mov	1449,r13		! source line 1449
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1449,r13		! source line 1449
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2911:
! END IF...
_Label_2909:
! ASSIGNMENT STATEMENT...
	mov	1451,r13		! source line 1451
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
	mov	1452,r13		! source line 1452
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
	mov	1455,r13		! source line 1455
	mov	"\0\0WH",r10
_Label_2912:
!	jmp	_Label_2913
_Label_2913:
	mov	1455,r13		! source line 1455
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1456,r13		! source line 1456
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_2916		(int)
	load	[r14+-40],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2916
!	jmp	_Label_2915
_Label_2915:
! THEN...
	mov	1457,r13		! source line 1457
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2917 = _StringConst_127
	set	_StringConst_127,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2917  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1457,r13		! source line 1457
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1458,r13		! source line 1458
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2916:
! IF STATEMENT...
	mov	1460,r13		! source line 1460
	mov	"\0\0IF",r10
	mov	1460,r13		! source line 1460
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2921) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2920  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2920 then goto _Label_2919 else goto _Label_2918
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2918
	jmp	_Label_2919
_Label_2918:
! THEN...
	mov	1461,r13		! source line 1461
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2922 = _StringConst_128
	set	_StringConst_128,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2922  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1461,r13		! source line 1461
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1462,r13		! source line 1462
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2919:
! ASSIGNMENT STATEMENT...
	mov	1464,r13		! source line 1464
	mov	"\0\0AS",r10
	mov	1464,r13		! source line 1464
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2924) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2923  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   fromAddr = _temp_2923 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! WHILE STATEMENT...
	mov	1466,r13		! source line 1466
	mov	"\0\0WH",r10
_Label_2925:
!   if offset >= 8192 then goto _Label_2927		(int)
	load	[r14+-44],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2927
!	jmp	_Label_2926
_Label_2926:
	mov	1466,r13		! source line 1466
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1469,r13		! source line 1469
	mov	"\0\0AS",r10
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (fromAddr) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2928 = *fromAddr  (sizeInBytes=1)
	load	[r14+-48],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *kernelAddr = _temp_2928  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+12],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1470,r13		! source line 1470
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1471,r13		! source line 1471
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+12],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+12]
! ASSIGNMENT STATEMENT...
	mov	1472,r13		! source line 1472
	mov	"\0\0AS",r10
!   fromAddr = fromAddr + 1		(int)
	load	[r14+-48],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! ASSIGNMENT STATEMENT...
	mov	1473,r13		! source line 1473
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	1474,r13		! source line 1474
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_2930		(int)
	load	[r14+-36],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_2930
!	jmp	_Label_2929
_Label_2929:
! THEN...
	mov	1475,r13		! source line 1475
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1475,r13		! source line 1475
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2930:
! END WHILE...
	jmp	_Label_2925
_Label_2927:
! ASSIGNMENT STATEMENT...
	mov	1478,r13		! source line 1478
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1479,r13		! source line 1479
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
! END WHILE...
	jmp	_Label_2912
_Label_2914:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_19:
	.word	_sourceFileName
	.word	_Label_2931
	.word	16		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_2932
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2933
	.word	12
	.word	4
	.word	_Label_2934
	.word	16
	.word	4
	.word	_Label_2935
	.word	20
	.word	4
	.word	_Label_2936
	.word	-9
	.word	1
	.word	_Label_2937
	.word	-16
	.word	4
	.word	_Label_2938
	.word	-20
	.word	4
	.word	_Label_2939
	.word	-24
	.word	4
	.word	_Label_2940
	.word	-28
	.word	4
	.word	_Label_2941
	.word	-10
	.word	1
	.word	_Label_2942
	.word	-32
	.word	4
	.word	_Label_2943
	.word	-36
	.word	4
	.word	_Label_2944
	.word	-40
	.word	4
	.word	_Label_2945
	.word	-44
	.word	4
	.word	_Label_2946
	.word	-48
	.word	4
	.word	0
_Label_2931:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesFromVirtual\0"
	.align
_Label_2932:
	.ascii	"Pself\0"
	.align
_Label_2933:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_2934:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2935:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2936:
	.byte	'C'
	.ascii	"_temp_2928\0"
	.align
_Label_2937:
	.byte	'?'
	.ascii	"_temp_2924\0"
	.align
_Label_2938:
	.byte	'?'
	.ascii	"_temp_2923\0"
	.align
_Label_2939:
	.byte	'?'
	.ascii	"_temp_2922\0"
	.align
_Label_2940:
	.byte	'?'
	.ascii	"_temp_2921\0"
	.align
_Label_2941:
	.byte	'C'
	.ascii	"_temp_2920\0"
	.align
_Label_2942:
	.byte	'?'
	.ascii	"_temp_2917\0"
	.align
_Label_2943:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_2944:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_2945:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2946:
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
_Label_4034:
	push	r0
	sub	r1,1,r1
	bne	_Label_4034
	mov	1485,r13		! source line 1485
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1496,r13		! source line 1496
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_2947
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_2947
	jmp	_Label_2948
_Label_2947:
! THEN...
	mov	1497,r13		! source line 1497
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1497,r13		! source line 1497
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_2949
_Label_2948:
! ELSE...
	mov	1498,r13		! source line 1498
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1498,r13		! source line 1498
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_2951		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2951
!	jmp	_Label_2950
_Label_2950:
! THEN...
	mov	1499,r13		! source line 1499
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1499,r13		! source line 1499
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2951:
! END IF...
_Label_2949:
! ASSIGNMENT STATEMENT...
	mov	1501,r13		! source line 1501
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
	mov	1502,r13		! source line 1502
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
	mov	1503,r13		! source line 1503
	mov	"\0\0WH",r10
_Label_2952:
!	jmp	_Label_2953
_Label_2953:
	mov	1503,r13		! source line 1503
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1504,r13		! source line 1504
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_2958		(int)
	load	[r14+-36],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2958
	jmp	_Label_2955
_Label_2958:
	mov	1505,r13		! source line 1505
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2960) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2959  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_2959 then goto _Label_2957 else goto _Label_2955
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_2955
	jmp	_Label_2957
_Label_2957:
	mov	1506,r13		! source line 1506
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2962) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2961  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2961 then goto _Label_2956 else goto _Label_2955
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2955
	jmp	_Label_2956
_Label_2955:
! THEN...
	mov	1507,r13		! source line 1507
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1507,r13		! source line 1507
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2956:
! ASSIGNMENT STATEMENT...
	mov	1509,r13		! source line 1509
	mov	"\0\0AS",r10
	mov	1509,r13		! source line 1509
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2964) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2963  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   destAddr = _temp_2963 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-40],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1510,r13		! source line 1510
	mov	"\0\0WH",r10
_Label_2965:
!   if offset >= 8192 then goto _Label_2967		(int)
	load	[r14+-40],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2967
!	jmp	_Label_2966
_Label_2966:
	mov	1510,r13		! source line 1510
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1511,r13		! source line 1511
	mov	"\0\0AS",r10
!   if intIsZero (destAddr) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2968 = *kernelAddr  (sizeInBytes=1)
	load	[r14+16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *destAddr = _temp_2968  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1512,r13		! source line 1512
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1513,r13		! source line 1513
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+16],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	1514,r13		! source line 1514
	mov	"\0\0AS",r10
!   destAddr = destAddr + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1515,r13		! source line 1515
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-32],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	1516,r13		! source line 1516
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_2970		(int)
	load	[r14+-32],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_2970
!	jmp	_Label_2969
_Label_2969:
! THEN...
	mov	1517,r13		! source line 1517
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1517,r13		! source line 1517
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2970:
! END WHILE...
	jmp	_Label_2965
_Label_2967:
! ASSIGNMENT STATEMENT...
	mov	1520,r13		! source line 1520
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1521,r13		! source line 1521
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
! END WHILE...
	jmp	_Label_2952
_Label_2954:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_20:
	.word	_sourceFileName
	.word	_Label_2971
	.word	16		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_2972
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2973
	.word	12
	.word	4
	.word	_Label_2974
	.word	16
	.word	4
	.word	_Label_2975
	.word	20
	.word	4
	.word	_Label_2976
	.word	-9
	.word	1
	.word	_Label_2977
	.word	-16
	.word	4
	.word	_Label_2978
	.word	-20
	.word	4
	.word	_Label_2979
	.word	-24
	.word	4
	.word	_Label_2980
	.word	-10
	.word	1
	.word	_Label_2981
	.word	-28
	.word	4
	.word	_Label_2982
	.word	-11
	.word	1
	.word	_Label_2983
	.word	-32
	.word	4
	.word	_Label_2984
	.word	-36
	.word	4
	.word	_Label_2985
	.word	-40
	.word	4
	.word	_Label_2986
	.word	-44
	.word	4
	.word	0
_Label_2971:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesToVirtual\0"
	.align
_Label_2972:
	.ascii	"Pself\0"
	.align
_Label_2973:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2974:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_2975:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2976:
	.byte	'C'
	.ascii	"_temp_2968\0"
	.align
_Label_2977:
	.byte	'?'
	.ascii	"_temp_2964\0"
	.align
_Label_2978:
	.byte	'?'
	.ascii	"_temp_2963\0"
	.align
_Label_2979:
	.byte	'?'
	.ascii	"_temp_2962\0"
	.align
_Label_2980:
	.byte	'C'
	.ascii	"_temp_2961\0"
	.align
_Label_2981:
	.byte	'?'
	.ascii	"_temp_2960\0"
	.align
_Label_2982:
	.byte	'C'
	.ascii	"_temp_2959\0"
	.align
_Label_2983:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_2984:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_2985:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2986:
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
_Label_4035:
	push	r0
	sub	r1,1,r1
	bne	_Label_4035
	mov	1527,r13		! source line 1527
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1551,r13		! source line 1551
	mov	"\0\0IF",r10
	mov	1551,r13		! source line 1551
	mov	"\0\0SE",r10
!   _temp_2990 = &sourceSize
	add	r14,-44,r1
	store	r1,[r14+-36]
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_2991) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2990  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_2989  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   if _temp_2989 >= 4 then goto _Label_2988		(int)
	load	[r14+-40],r1
	mov	4,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2988
!	jmp	_Label_2987
_Label_2987:
! THEN...
	mov	1554,r13		! source line 1554
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1554,r13		! source line 1554
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2988:
! IF STATEMENT...
	mov	1558,r13		! source line 1558
	mov	"\0\0IF",r10
!   if sourceSize <= maxSize then goto _Label_2993		(int)
	load	[r14+-44],r1
	load	[r14+20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2993
!	jmp	_Label_2992
_Label_2992:
! THEN...
	mov	1559,r13		! source line 1559
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1559,r13		! source line 1559
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2993:
! ASSIGNMENT STATEMENT...
	mov	1562,r13		! source line 1562
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
	mov	1564,r13		! source line 1564
	mov	"\0\0RE",r10
	mov	1564,r13		! source line 1564
	mov	"\0\0SE",r10
!   _temp_2996 = kernelAddr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-20]
!   _temp_2995 = _temp_2996 + 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   _temp_2997 = virtAddr + 4		(int)
	load	[r14+16],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
	load	[r14+8],r1
	store	r1,[r14+-12]
!   if intIsZero (_temp_2998) then goto _runtimeErrorNullPointer
	load	[r14+-12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2995  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_2997  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_2994  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_2994  (sizeInBytes=4)
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
	.word	_Label_2999
	.word	16		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_3000
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3001
	.word	12
	.word	4
	.word	_Label_3002
	.word	16
	.word	4
	.word	_Label_3003
	.word	20
	.word	4
	.word	_Label_3004
	.word	-12
	.word	4
	.word	_Label_3005
	.word	-16
	.word	4
	.word	_Label_3006
	.word	-20
	.word	4
	.word	_Label_3007
	.word	-24
	.word	4
	.word	_Label_3008
	.word	-28
	.word	4
	.word	_Label_3009
	.word	-32
	.word	4
	.word	_Label_3010
	.word	-36
	.word	4
	.word	_Label_3011
	.word	-40
	.word	4
	.word	_Label_3012
	.word	-44
	.word	4
	.word	0
_Label_2999:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"GetStringFromVirtual\0"
	.align
_Label_3000:
	.ascii	"Pself\0"
	.align
_Label_3001:
	.byte	'P'
	.ascii	"kernelAddr\0"
	.align
_Label_3002:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_3003:
	.byte	'I'
	.ascii	"maxSize\0"
	.align
_Label_3004:
	.byte	'?'
	.ascii	"_temp_2998\0"
	.align
_Label_3005:
	.byte	'?'
	.ascii	"_temp_2997\0"
	.align
_Label_3006:
	.byte	'?'
	.ascii	"_temp_2996\0"
	.align
_Label_3007:
	.byte	'?'
	.ascii	"_temp_2995\0"
	.align
_Label_3008:
	.byte	'?'
	.ascii	"_temp_2994\0"
	.align
_Label_3009:
	.byte	'?'
	.ascii	"_temp_2991\0"
	.align
_Label_3010:
	.byte	'?'
	.ascii	"_temp_2990\0"
	.align
_Label_3011:
	.byte	'?'
	.ascii	"_temp_2989\0"
	.align
_Label_3012:
	.byte	'I'
	.ascii	"sourceSize\0"
	.align
! 
! ===============  CLASS DiskDriver  ===============
! 
! Dispatch Table:
! 
_P_Kernel_DiskDriver:
	.word	_Label_3013
	jmp	_Method_P_Kernel_DiskDriver_1	! 4:	Init
	jmp	_Method_P_Kernel_DiskDriver_2	! 8:	SynchReadSector
	jmp	_Method_P_Kernel_DiskDriver_3	! 12:	StartReadSector
	jmp	_Method_P_Kernel_DiskDriver_4	! 16:	SynchWriteSector
	jmp	_Method_P_Kernel_DiskDriver_5	! 20:	StartWriteSector
	.word	0
! 
! Class descriptor:
! 
_Label_3013:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3014
	.word	_sourceFileName
	.word	309		! line number
	.word	68		! size of instances, in bytes
	.word	_P_Kernel_DiskDriver
	.word	_P_System_Object
	.word	0
_Label_3014:
	.ascii	"DiskDriver\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_DiskDriver_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_1,r1
	push	r1
	mov	7,r1
_Label_4036:
	push	r0
	sub	r1,1,r1
	bne	_Label_4036
	mov	2236,r13		! source line 2236
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3015 = _StringConst_129
	set	_StringConst_129,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_3015  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2237,r13		! source line 2237
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2238,r13		! source line 2238
	mov	"\0\0AS",r10
!   DISK_STATUS_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	2239,r13		! source line 2239
	mov	"\0\0AS",r10
!   DISK_COMMAND_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! ASSIGNMENT STATEMENT...
	mov	2240,r13		! source line 2240
	mov	"\0\0AS",r10
!   DISK_MEMORY_ADDRESS_REGISTER = 16776972		(4 bytes)
	set	16776972,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	2241,r13		! source line 2241
	mov	"\0\0AS",r10
!   DISK_SECTOR_NUMBER_REGISTER = 16776976		(4 bytes)
	set	16776976,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2242,r13		! source line 2242
	mov	"\0\0AS",r10
!   DISK_SECTOR_COUNT_REGISTER = 16776980		(4 bytes)
	set	16776980,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	2243,r13		! source line 2243
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2244,r13		! source line 2244
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: semUsedInSynchMethods = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,28,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   semUsedInSynchMethods = _P_Kernel_Semaphore
	set	_P_Kernel_Semaphore,r1
	load	[r14+8],r2
	store	r1,[r2+28]
! SEND STATEMENT...
	mov	2245,r13		! source line 2245
	mov	"\0\0SE",r10
!   _temp_3017 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2246,r13		! source line 2246
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: diskBusy = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,48,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   diskBusy = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+48]
! SEND STATEMENT...
	mov	2247,r13		! source line 2247
	mov	"\0\0SE",r10
!   _temp_3019 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
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
	mov	2247,r13		! source line 2247
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_1:
	.word	_sourceFileName
	.word	_Label_3020
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_3021
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3022
	.word	-12
	.word	4
	.word	_Label_3023
	.word	-16
	.word	4
	.word	_Label_3024
	.word	-20
	.word	4
	.word	_Label_3025
	.word	-24
	.word	4
	.word	_Label_3026
	.word	-28
	.word	4
	.word	0
_Label_3020:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_3021:
	.ascii	"Pself\0"
	.align
_Label_3022:
	.byte	'?'
	.ascii	"_temp_3019\0"
	.align
_Label_3023:
	.byte	'?'
	.ascii	"_temp_3018\0"
	.align
_Label_3024:
	.byte	'?'
	.ascii	"_temp_3017\0"
	.align
_Label_3025:
	.byte	'?'
	.ascii	"_temp_3016\0"
	.align
_Label_3026:
	.byte	'?'
	.ascii	"_temp_3015\0"
	.align
! 
! ===============  METHOD SynchReadSector  ===============
! 
_Method_P_Kernel_DiskDriver_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_2,r1
	push	r1
	mov	16,r1
_Label_4037:
	push	r0
	sub	r1,1,r1
	bne	_Label_4037
	mov	2252,r13		! source line 2252
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2265,r13		! source line 2265
	mov	"\0\0SE",r10
!   _temp_3027 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-52]
!   Send message Lock
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	2266,r13		! source line 2266
	mov	"\0\0WH",r10
_Label_3028:
!	jmp	_Label_3029
_Label_3029:
	mov	2266,r13		! source line 2266
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2268,r13		! source line 2268
	mov	"\0\0SE",r10
!   _temp_3031 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_3032) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=sectorAddr  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=numberOfSectors  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=memoryAddr  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=_temp_3031  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+16]
!   Send message StartReadSector
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	2270,r13		! source line 2270
	mov	"\0\0SE",r10
!   _temp_3033 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-40]
!   Send message Down
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SWITCH STATEMENT (using series of tests)...
	mov	2273,r13		! source line 2273
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_3042 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_3036
	cmp	r1,2
	be	_Label_3037
	cmp	r1,3
	be	_Label_3038
	cmp	r1,4
	be	_Label_3039
	cmp	r1,5
	be	_Label_3040
	cmp	r1,6
	be	_Label_3041
	jmp	_Label_3034
! CASE 1...
_Label_3036:
! SEND STATEMENT...
	mov	2275,r13		! source line 2275
	mov	"\0\0SE",r10
!   _temp_3043 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-32]
!   Send message Unlock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2276,r13		! source line 2276
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_3037:
! CALL STATEMENT...
!   _temp_3044 = _StringConst_130
	set	_StringConst_130,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_3044  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2278,r13		! source line 2278
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_3038:
! CALL STATEMENT...
!   _temp_3045 = _StringConst_131
	set	_StringConst_131,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3045  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2280,r13		! source line 2280
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_3039:
! CALL STATEMENT...
!   _temp_3046 = _StringConst_132
	set	_StringConst_132,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3046  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2282,r13		! source line 2282
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_3040:
! BREAK STATEMENT...
	mov	2286,r13		! source line 2286
	mov	"\0\0BR",r10
	jmp	_Label_3035
! CASE 6...
_Label_3041:
! CALL STATEMENT...
!   _temp_3047 = _StringConst_133
	set	_StringConst_133,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3047  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2288,r13		! source line 2288
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_3034:
! CALL STATEMENT...
!   _temp_3048 = _StringConst_134
	set	_StringConst_134,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3048  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2290,r13		! source line 2290
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_3035:
! END WHILE...
	jmp	_Label_3028
_Label_3030:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_2:
	.word	_sourceFileName
	.word	_Label_3049
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_3050
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3051
	.word	12
	.word	4
	.word	_Label_3052
	.word	16
	.word	4
	.word	_Label_3053
	.word	20
	.word	4
	.word	_Label_3054
	.word	-12
	.word	4
	.word	_Label_3055
	.word	-16
	.word	4
	.word	_Label_3056
	.word	-20
	.word	4
	.word	_Label_3057
	.word	-24
	.word	4
	.word	_Label_3058
	.word	-28
	.word	4
	.word	_Label_3059
	.word	-32
	.word	4
	.word	_Label_3060
	.word	-36
	.word	4
	.word	_Label_3061
	.word	-40
	.word	4
	.word	_Label_3062
	.word	-44
	.word	4
	.word	_Label_3063
	.word	-48
	.word	4
	.word	_Label_3064
	.word	-52
	.word	4
	.word	0
_Label_3049:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchReadSector\0"
	.align
_Label_3050:
	.ascii	"Pself\0"
	.align
_Label_3051:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_3052:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_3053:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_3054:
	.byte	'?'
	.ascii	"_temp_3048\0"
	.align
_Label_3055:
	.byte	'?'
	.ascii	"_temp_3047\0"
	.align
_Label_3056:
	.byte	'?'
	.ascii	"_temp_3046\0"
	.align
_Label_3057:
	.byte	'?'
	.ascii	"_temp_3045\0"
	.align
_Label_3058:
	.byte	'?'
	.ascii	"_temp_3044\0"
	.align
_Label_3059:
	.byte	'?'
	.ascii	"_temp_3043\0"
	.align
_Label_3060:
	.byte	'?'
	.ascii	"_temp_3042\0"
	.align
_Label_3061:
	.byte	'?'
	.ascii	"_temp_3033\0"
	.align
_Label_3062:
	.byte	'?'
	.ascii	"_temp_3032\0"
	.align
_Label_3063:
	.byte	'?'
	.ascii	"_temp_3031\0"
	.align
_Label_3064:
	.byte	'?'
	.ascii	"_temp_3027\0"
	.align
! 
! ===============  METHOD StartReadSector  ===============
! 
_Method_P_Kernel_DiskDriver_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_3,r1
	push	r1
	mov	2299,r13		! source line 2299
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2314,r13		! source line 2314
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2317,r13		! source line 2317
	mov	"\0\0AS",r10
!   if intIsZero (DISK_MEMORY_ADDRESS_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_MEMORY_ADDRESS_REGISTER = memoryAddr  (sizeInBytes=4)
	load	[r14+20],r1
	load	[r14+8],r2
	load	[r2+12],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2318,r13		! source line 2318
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_NUMBER_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_NUMBER_REGISTER = sectorAddr  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r14+8],r2
	load	[r2+16],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2319,r13		! source line 2319
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_COUNT_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_COUNT_REGISTER = numberOfSectors  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+8],r2
	load	[r2+20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2320,r13		! source line 2320
	mov	"\0\0AS",r10
!   if intIsZero (DISK_COMMAND_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_COMMAND_WORD_ADDRESS = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+8],r2
	load	[r2+8],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2320,r13		! source line 2320
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_3:
	.word	_sourceFileName
	.word	_Label_3065
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_3066
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3067
	.word	12
	.word	4
	.word	_Label_3068
	.word	16
	.word	4
	.word	_Label_3069
	.word	20
	.word	4
	.word	_Label_3070
	.word	24
	.word	4
	.word	0
_Label_3065:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartReadSector\0"
	.align
_Label_3066:
	.ascii	"Pself\0"
	.align
_Label_3067:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_3068:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_3069:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_3070:
	.byte	'P'
	.ascii	"whoCares\0"
	.align
! 
! ===============  METHOD SynchWriteSector  ===============
! 
_Method_P_Kernel_DiskDriver_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_4,r1
	push	r1
	mov	16,r1
_Label_4038:
	push	r0
	sub	r1,1,r1
	bne	_Label_4038
	mov	2325,r13		! source line 2325
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2337,r13		! source line 2337
	mov	"\0\0SE",r10
!   _temp_3071 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-52]
!   Send message Lock
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	2338,r13		! source line 2338
	mov	"\0\0WH",r10
_Label_3072:
!	jmp	_Label_3073
_Label_3073:
	mov	2338,r13		! source line 2338
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2339,r13		! source line 2339
	mov	"\0\0SE",r10
!   _temp_3075 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_3076) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=sectorAddr  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=numberOfSectors  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=memoryAddr  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=_temp_3075  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+16]
!   Send message StartWriteSector
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	2341,r13		! source line 2341
	mov	"\0\0SE",r10
!   _temp_3077 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-40]
!   Send message Down
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SWITCH STATEMENT (using series of tests)...
	mov	2344,r13		! source line 2344
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_3086 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_3080
	cmp	r1,2
	be	_Label_3081
	cmp	r1,3
	be	_Label_3082
	cmp	r1,4
	be	_Label_3083
	cmp	r1,5
	be	_Label_3084
	cmp	r1,6
	be	_Label_3085
	jmp	_Label_3078
! CASE 1...
_Label_3080:
! SEND STATEMENT...
	mov	2346,r13		! source line 2346
	mov	"\0\0SE",r10
!   _temp_3087 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-32]
!   Send message Unlock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2347,r13		! source line 2347
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_3081:
! CALL STATEMENT...
!   _temp_3088 = _StringConst_135
	set	_StringConst_135,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_3088  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2349,r13		! source line 2349
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_3082:
! CALL STATEMENT...
!   _temp_3089 = _StringConst_136
	set	_StringConst_136,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3089  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2351,r13		! source line 2351
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_3083:
! CALL STATEMENT...
!   _temp_3090 = _StringConst_137
	set	_StringConst_137,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3090  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2353,r13		! source line 2353
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_3084:
! BREAK STATEMENT...
	mov	2357,r13		! source line 2357
	mov	"\0\0BR",r10
	jmp	_Label_3079
! CASE 6...
_Label_3085:
! CALL STATEMENT...
!   _temp_3091 = _StringConst_138
	set	_StringConst_138,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3091  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2359,r13		! source line 2359
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_3078:
! CALL STATEMENT...
!   _temp_3092 = _StringConst_139
	set	_StringConst_139,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3092  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2361,r13		! source line 2361
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_3079:
! END WHILE...
	jmp	_Label_3072
_Label_3074:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_4:
	.word	_sourceFileName
	.word	_Label_3093
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_3094
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3095
	.word	12
	.word	4
	.word	_Label_3096
	.word	16
	.word	4
	.word	_Label_3097
	.word	20
	.word	4
	.word	_Label_3098
	.word	-12
	.word	4
	.word	_Label_3099
	.word	-16
	.word	4
	.word	_Label_3100
	.word	-20
	.word	4
	.word	_Label_3101
	.word	-24
	.word	4
	.word	_Label_3102
	.word	-28
	.word	4
	.word	_Label_3103
	.word	-32
	.word	4
	.word	_Label_3104
	.word	-36
	.word	4
	.word	_Label_3105
	.word	-40
	.word	4
	.word	_Label_3106
	.word	-44
	.word	4
	.word	_Label_3107
	.word	-48
	.word	4
	.word	_Label_3108
	.word	-52
	.word	4
	.word	0
_Label_3093:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchWriteSector\0"
	.align
_Label_3094:
	.ascii	"Pself\0"
	.align
_Label_3095:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_3096:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_3097:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_3098:
	.byte	'?'
	.ascii	"_temp_3092\0"
	.align
_Label_3099:
	.byte	'?'
	.ascii	"_temp_3091\0"
	.align
_Label_3100:
	.byte	'?'
	.ascii	"_temp_3090\0"
	.align
_Label_3101:
	.byte	'?'
	.ascii	"_temp_3089\0"
	.align
_Label_3102:
	.byte	'?'
	.ascii	"_temp_3088\0"
	.align
_Label_3103:
	.byte	'?'
	.ascii	"_temp_3087\0"
	.align
_Label_3104:
	.byte	'?'
	.ascii	"_temp_3086\0"
	.align
_Label_3105:
	.byte	'?'
	.ascii	"_temp_3077\0"
	.align
_Label_3106:
	.byte	'?'
	.ascii	"_temp_3076\0"
	.align
_Label_3107:
	.byte	'?'
	.ascii	"_temp_3075\0"
	.align
_Label_3108:
	.byte	'?'
	.ascii	"_temp_3071\0"
	.align
! 
! ===============  METHOD StartWriteSector  ===============
! 
_Method_P_Kernel_DiskDriver_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_5,r1
	push	r1
	mov	2370,r13		! source line 2370
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2385,r13		! source line 2385
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2387,r13		! source line 2387
	mov	"\0\0AS",r10
!   if intIsZero (DISK_MEMORY_ADDRESS_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_MEMORY_ADDRESS_REGISTER = memoryAddr  (sizeInBytes=4)
	load	[r14+20],r1
	load	[r14+8],r2
	load	[r2+12],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2388,r13		! source line 2388
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_NUMBER_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_NUMBER_REGISTER = sectorAddr  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r14+8],r2
	load	[r2+16],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2389,r13		! source line 2389
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_COUNT_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_COUNT_REGISTER = numberOfSectors  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+8],r2
	load	[r2+20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2390,r13		! source line 2390
	mov	"\0\0AS",r10
!   if intIsZero (DISK_COMMAND_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_COMMAND_WORD_ADDRESS = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+8],r2
	load	[r2+8],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2390,r13		! source line 2390
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_5:
	.word	_sourceFileName
	.word	_Label_3109
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_3110
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3111
	.word	12
	.word	4
	.word	_Label_3112
	.word	16
	.word	4
	.word	_Label_3113
	.word	20
	.word	4
	.word	_Label_3114
	.word	24
	.word	4
	.word	0
_Label_3109:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartWriteSector\0"
	.align
_Label_3110:
	.ascii	"Pself\0"
	.align
_Label_3111:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_3112:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_3113:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_3114:
	.byte	'P'
	.ascii	"whoCares\0"
	.align
! 
! ===============  CLASS FileManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileManager:
	.word	_Label_3115
	jmp	_Method_P_Kernel_FileManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FileManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FileManager_4	! 12:	FindFCB
	jmp	_Method_P_Kernel_FileManager_3	! 16:	Open
	jmp	_Method_P_Kernel_FileManager_5	! 20:	Close
	jmp	_Method_P_Kernel_FileManager_6	! 24:	Flush
	jmp	_Method_P_Kernel_FileManager_7	! 28:	SynchRead
	jmp	_Method_P_Kernel_FileManager_8	! 32:	SynchWrite
	.word	0
! 
! Class descriptor:
! 
_Label_3115:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3116
	.word	_sourceFileName
	.word	332		! line number
	.word	800		! size of instances, in bytes
	.word	_P_Kernel_FileManager
	.word	_P_System_Object
	.word	0
_Label_3116:
	.ascii	"FileManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_FileManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_1,r1
	push	r1
	mov	238,r1
_Label_4039:
	push	r0
	sub	r1,1,r1
	bne	_Label_4039
	mov	2401,r13		! source line 2401
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3117 = _StringConst_140
	set	_StringConst_140,r1
	store	r1,[r14+-940]
!   Prepare Argument: offset=8  value=_temp_3117  sizeInBytes=4
	load	[r14+-940],r1
	store	r1,[r15+0]
!   Call the function
	mov	2408,r13		! source line 2408
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2409,r13		! source line 2409
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: fileManagerLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   fileManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! SEND STATEMENT...
	mov	2410,r13		! source line 2410
	mov	"\0\0SE",r10
!   _temp_3119 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-932]
!   Send message Init
	load	[r14+-932],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2413,r13		! source line 2413
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: fcbFreeList = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,444,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   fcbFreeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+444]
! ASSIGNMENT STATEMENT...
	mov	2414,r13		! source line 2414
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: anFCBBecameFree = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,428,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   anFCBBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+428]
! SEND STATEMENT...
	mov	2415,r13		! source line 2415
	mov	"\0\0SE",r10
!   _temp_3122 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-920]
!   Send message Init
	load	[r14+-920],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2416,r13		! source line 2416
	mov	"\0\0AS",r10
!   _temp_3123 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-916]
!   NEW ARRAY Constructor...
!   _temp_3125 = &_temp_3124
	add	r14,-912,r1
	store	r1,[r14+-508]
!   _temp_3125 = _temp_3125 + 4
	load	[r14+-508],r1
	add	r1,4,r1
	store	r1,[r14+-508]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_3127 = zeros  (sizeInBytes=40)
	add	r14,-500,r4
	mov	10,r3
_Label_4040:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4040
!   _temp_3127 = _P_Kernel_FileControlBlock
	set	_P_Kernel_FileControlBlock,r1
	store	r1,[r14+-500]
	mov	10,r1
	store	r1,[r14+-504]
_Label_3129:
!   Data Move: *_temp_3125 = _temp_3127  (sizeInBytes=40)
	add	r14,-500,r5
	load	[r14+-508],r4
	mov	10,r3
_Label_4041:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4041
!   _temp_3125 = _temp_3125 + 40
	load	[r14+-508],r1
	add	r1,40,r1
	store	r1,[r14+-508]
!   _temp_3126 = _temp_3126 + -1
	load	[r14+-504],r1
	add	r1,-1,r1
	store	r1,[r14+-504]
!   if intNotZero (_temp_3126) then goto _Label_3129
	load	[r14+-504],r1
	cmp	r1,r0
	bne	_Label_3129
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-912]
!   _temp_3130 = &_temp_3124
	add	r14,-912,r1
	store	r1,[r14+-456]
!   make sure array has size 10
	load	[r14+-916],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_4042
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4042:
!   make sure array has size 10
	load	[r14+-456],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_3123 = *_temp_3130  (sizeInBytes=404)
	load	[r14+-456],r5
	load	[r14+-916],r4
	mov	101,r3
_Label_4043:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4043
! FOR STATEMENT...
	mov	2418,r13		! source line 2418
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3135 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-452]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3136 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-448]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3135  (sizeInBytes=4)
	load	[r14+-452],r1
	store	r1,[r14+-944]
_Label_3131:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3136 then goto _Label_3134		
	load	[r14+-944],r1
	load	[r14+-448],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3134
_Label_3132:
	mov	2418,r13		! source line 2418
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2419,r13		! source line 2419
	mov	"\0\0AS",r10
!   _temp_3137 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-444]
!   Move address of _temp_3137 [i ] into _temp_3138
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-444],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-440]
!   _temp_3139 = _temp_3138 + 12
	load	[r14+-440],r1
	add	r1,12,r1
	store	r1,[r14+-436]
!   Data Move: *_temp_3139 = i  (sizeInBytes=4)
	load	[r14+-944],r1
	load	[r14+-436],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2420,r13		! source line 2420
	mov	"\0\0SE",r10
!   _temp_3140 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-432]
!   Move address of _temp_3140 [i ] into _temp_3141
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-432],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-428]
!   Send message Init
	load	[r14+-428],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	2421,r13		! source line 2421
	mov	"\0\0SE",r10
!   _temp_3143 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-420]
!   Move address of _temp_3143 [i ] into _temp_3144
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-420],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-416]
!   _temp_3142 = _temp_3144		(4 bytes)
	load	[r14+-416],r1
	store	r1,[r14+-424]
!   _temp_3145 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-412]
!   Prepare Argument: offset=12  value=_temp_3142  sizeInBytes=4
	load	[r14+-424],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-412],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_3133:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_3131
! END FOR
_Label_3134:
! ASSIGNMENT STATEMENT...
	mov	2425,r13		! source line 2425
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: openFileFreeList = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,756,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   openFileFreeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+756]
! ASSIGNMENT STATEMENT...
	mov	2426,r13		! source line 2426
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: anOpenFileBecameFree = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,740,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   anOpenFileBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+740]
! SEND STATEMENT...
	mov	2427,r13		! source line 2427
	mov	"\0\0SE",r10
!   _temp_3148 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-400]
!   Send message Init
	load	[r14+-400],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2428,r13		! source line 2428
	mov	"\0\0AS",r10
!   _temp_3149 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-396]
!   NEW ARRAY Constructor...
!   _temp_3151 = &_temp_3150
	add	r14,-392,r1
	store	r1,[r14+-108]
!   _temp_3151 = _temp_3151 + 4
	load	[r14+-108],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_3153 = zeros  (sizeInBytes=28)
	add	r14,-100,r4
	mov	7,r3
_Label_4044:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4044
!   _temp_3153 = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	store	r1,[r14+-100]
	mov	10,r1
	store	r1,[r14+-104]
_Label_3155:
!   Data Move: *_temp_3151 = _temp_3153  (sizeInBytes=28)
	add	r14,-100,r5
	load	[r14+-108],r4
	mov	7,r3
_Label_4045:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4045
!   _temp_3151 = _temp_3151 + 28
	load	[r14+-108],r1
	add	r1,28,r1
	store	r1,[r14+-108]
!   _temp_3152 = _temp_3152 + -1
	load	[r14+-104],r1
	add	r1,-1,r1
	store	r1,[r14+-104]
!   if intNotZero (_temp_3152) then goto _Label_3155
	load	[r14+-104],r1
	cmp	r1,r0
	bne	_Label_3155
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-392]
!   _temp_3156 = &_temp_3150
	add	r14,-392,r1
	store	r1,[r14+-68]
!   make sure array has size 10
	load	[r14+-396],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_4046
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4046:
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_3149 = *_temp_3156  (sizeInBytes=284)
	load	[r14+-68],r5
	load	[r14+-396],r4
	mov	71,r3
_Label_4047:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4047
! FOR STATEMENT...
	mov	2430,r13		! source line 2430
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3161 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3162 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3161  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-944]
_Label_3157:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3162 then goto _Label_3160		
	load	[r14+-944],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3160
_Label_3158:
	mov	2430,r13		! source line 2430
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2431,r13		! source line 2431
	mov	"\0\0AS",r10
!   _temp_3163 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-56]
!   Move address of _temp_3163 [i ] into _temp_3164
!     make sure index expr is >= 0
	load	[r14+-944],r2
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
	set	28,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-52]
!   _temp_3165 = _temp_3164 + 12
	load	[r14+-52],r1
	add	r1,12,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_3165 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2432,r13		! source line 2432
	mov	"\0\0SE",r10
!   _temp_3167 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-40]
!   Move address of _temp_3167 [i ] into _temp_3168
!     make sure index expr is >= 0
	load	[r14+-944],r2
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
	set	28,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-36]
!   _temp_3166 = _temp_3168		(4 bytes)
	load	[r14+-36],r1
	store	r1,[r14+-44]
!   _temp_3169 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_3166  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_3159:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_3157
! END FOR
_Label_3160:
! ASSIGNMENT STATEMENT...
	mov	2436,r13		! source line 2436
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: serialTerminalFile = zeros  (sizeInBytes=28)
	load	[r14+8],r4
	add	r4,772,r4
	mov	7,r3
_Label_4048:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4048
!   serialTerminalFile = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	load	[r14+8],r2
	store	r1,[r2+772]
! ASSIGNMENT STATEMENT...
	mov	2437,r13		! source line 2437
	mov	"\0\0AS",r10
!   _temp_3171 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-24]
!   _temp_3172 = _temp_3171 + 12
	load	[r14+-24],r1
	add	r1,12,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_3172 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2442,r13		! source line 2442
	mov	"\0\0AS",r10
	mov	2442,r13		! source line 2442
	mov	"\0\0SE",r10
!   _temp_3173 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-16]
!   Send message GetAFrame
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=directoryFrame  sizeInBytes=4
	load	[r15],r1
	load	[r14+8],r2
	store	r1,[r2+768]
! SEND STATEMENT...
	mov	2443,r13		! source line 2443
	mov	"\0\0SE",r10
!   _temp_3174 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=directoryFrame  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+768],r1
	store	r1,[r15+12]
!   Send message SynchReadSector
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	2443,r13		! source line 2443
	mov	"\0\0RE",r10
	add	r15,956,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_1:
	.word	_sourceFileName
	.word	_Label_3175
	.word	4		! total size of parameters
	.word	952		! frame size = 952
	.word	_Label_3176
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3177
	.word	-12
	.word	4
	.word	_Label_3178
	.word	-16
	.word	4
	.word	_Label_3179
	.word	-20
	.word	4
	.word	_Label_3180
	.word	-24
	.word	4
	.word	_Label_3181
	.word	-28
	.word	4
	.word	_Label_3182
	.word	-32
	.word	4
	.word	_Label_3183
	.word	-36
	.word	4
	.word	_Label_3184
	.word	-40
	.word	4
	.word	_Label_3185
	.word	-44
	.word	4
	.word	_Label_3186
	.word	-48
	.word	4
	.word	_Label_3187
	.word	-52
	.word	4
	.word	_Label_3188
	.word	-56
	.word	4
	.word	_Label_3189
	.word	-60
	.word	4
	.word	_Label_3190
	.word	-64
	.word	4
	.word	_Label_3191
	.word	-68
	.word	4
	.word	_Label_3192
	.word	-72
	.word	4
	.word	_Label_3193
	.word	-100
	.word	28
	.word	_Label_3194
	.word	-104
	.word	4
	.word	_Label_3195
	.word	-108
	.word	4
	.word	_Label_3196
	.word	-392
	.word	284
	.word	_Label_3197
	.word	-396
	.word	4
	.word	_Label_3198
	.word	-400
	.word	4
	.word	_Label_3199
	.word	-404
	.word	4
	.word	_Label_3200
	.word	-408
	.word	4
	.word	_Label_3201
	.word	-412
	.word	4
	.word	_Label_3202
	.word	-416
	.word	4
	.word	_Label_3203
	.word	-420
	.word	4
	.word	_Label_3204
	.word	-424
	.word	4
	.word	_Label_3205
	.word	-428
	.word	4
	.word	_Label_3206
	.word	-432
	.word	4
	.word	_Label_3207
	.word	-436
	.word	4
	.word	_Label_3208
	.word	-440
	.word	4
	.word	_Label_3209
	.word	-444
	.word	4
	.word	_Label_3210
	.word	-448
	.word	4
	.word	_Label_3211
	.word	-452
	.word	4
	.word	_Label_3212
	.word	-456
	.word	4
	.word	_Label_3213
	.word	-460
	.word	4
	.word	_Label_3214
	.word	-500
	.word	40
	.word	_Label_3215
	.word	-504
	.word	4
	.word	_Label_3216
	.word	-508
	.word	4
	.word	_Label_3217
	.word	-912
	.word	404
	.word	_Label_3218
	.word	-916
	.word	4
	.word	_Label_3219
	.word	-920
	.word	4
	.word	_Label_3220
	.word	-924
	.word	4
	.word	_Label_3221
	.word	-928
	.word	4
	.word	_Label_3222
	.word	-932
	.word	4
	.word	_Label_3223
	.word	-936
	.word	4
	.word	_Label_3224
	.word	-940
	.word	4
	.word	_Label_3225
	.word	-944
	.word	4
	.word	0
_Label_3175:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_3176:
	.ascii	"Pself\0"
	.align
_Label_3177:
	.byte	'?'
	.ascii	"_temp_3174\0"
	.align
_Label_3178:
	.byte	'?'
	.ascii	"_temp_3173\0"
	.align
_Label_3179:
	.byte	'?'
	.ascii	"_temp_3172\0"
	.align
_Label_3180:
	.byte	'?'
	.ascii	"_temp_3171\0"
	.align
_Label_3181:
	.byte	'?'
	.ascii	"_temp_3170\0"
	.align
_Label_3182:
	.byte	'?'
	.ascii	"_temp_3169\0"
	.align
_Label_3183:
	.byte	'?'
	.ascii	"_temp_3168\0"
	.align
_Label_3184:
	.byte	'?'
	.ascii	"_temp_3167\0"
	.align
_Label_3185:
	.byte	'?'
	.ascii	"_temp_3166\0"
	.align
_Label_3186:
	.byte	'?'
	.ascii	"_temp_3165\0"
	.align
_Label_3187:
	.byte	'?'
	.ascii	"_temp_3164\0"
	.align
_Label_3188:
	.byte	'?'
	.ascii	"_temp_3163\0"
	.align
_Label_3189:
	.byte	'?'
	.ascii	"_temp_3162\0"
	.align
_Label_3190:
	.byte	'?'
	.ascii	"_temp_3161\0"
	.align
_Label_3191:
	.byte	'?'
	.ascii	"_temp_3156\0"
	.align
_Label_3192:
	.byte	'?'
	.ascii	"_temp_3154\0"
	.align
_Label_3193:
	.byte	'?'
	.ascii	"_temp_3153\0"
	.align
_Label_3194:
	.byte	'?'
	.ascii	"_temp_3152\0"
	.align
_Label_3195:
	.byte	'?'
	.ascii	"_temp_3151\0"
	.align
_Label_3196:
	.byte	'?'
	.ascii	"_temp_3150\0"
	.align
_Label_3197:
	.byte	'?'
	.ascii	"_temp_3149\0"
	.align
_Label_3198:
	.byte	'?'
	.ascii	"_temp_3148\0"
	.align
_Label_3199:
	.byte	'?'
	.ascii	"_temp_3147\0"
	.align
_Label_3200:
	.byte	'?'
	.ascii	"_temp_3146\0"
	.align
_Label_3201:
	.byte	'?'
	.ascii	"_temp_3145\0"
	.align
_Label_3202:
	.byte	'?'
	.ascii	"_temp_3144\0"
	.align
_Label_3203:
	.byte	'?'
	.ascii	"_temp_3143\0"
	.align
_Label_3204:
	.byte	'?'
	.ascii	"_temp_3142\0"
	.align
_Label_3205:
	.byte	'?'
	.ascii	"_temp_3141\0"
	.align
_Label_3206:
	.byte	'?'
	.ascii	"_temp_3140\0"
	.align
_Label_3207:
	.byte	'?'
	.ascii	"_temp_3139\0"
	.align
_Label_3208:
	.byte	'?'
	.ascii	"_temp_3138\0"
	.align
_Label_3209:
	.byte	'?'
	.ascii	"_temp_3137\0"
	.align
_Label_3210:
	.byte	'?'
	.ascii	"_temp_3136\0"
	.align
_Label_3211:
	.byte	'?'
	.ascii	"_temp_3135\0"
	.align
_Label_3212:
	.byte	'?'
	.ascii	"_temp_3130\0"
	.align
_Label_3213:
	.byte	'?'
	.ascii	"_temp_3128\0"
	.align
_Label_3214:
	.byte	'?'
	.ascii	"_temp_3127\0"
	.align
_Label_3215:
	.byte	'?'
	.ascii	"_temp_3126\0"
	.align
_Label_3216:
	.byte	'?'
	.ascii	"_temp_3125\0"
	.align
_Label_3217:
	.byte	'?'
	.ascii	"_temp_3124\0"
	.align
_Label_3218:
	.byte	'?'
	.ascii	"_temp_3123\0"
	.align
_Label_3219:
	.byte	'?'
	.ascii	"_temp_3122\0"
	.align
_Label_3220:
	.byte	'?'
	.ascii	"_temp_3121\0"
	.align
_Label_3221:
	.byte	'?'
	.ascii	"_temp_3120\0"
	.align
_Label_3222:
	.byte	'?'
	.ascii	"_temp_3119\0"
	.align
_Label_3223:
	.byte	'?'
	.ascii	"_temp_3118\0"
	.align
_Label_3224:
	.byte	'?'
	.ascii	"_temp_3117\0"
	.align
_Label_3225:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_FileManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_2,r1
	push	r1
	mov	29,r1
_Label_4049:
	push	r0
	sub	r1,1,r1
	bne	_Label_4049
	mov	2450,r13		! source line 2450
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2452,r13		! source line 2452
	mov	"\0\0SE",r10
!   _temp_3226 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-112]
!   Send message Lock
	load	[r14+-112],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_3227 = _StringConst_141
	set	_StringConst_141,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_3227  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	2453,r13		! source line 2453
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2454,r13		! source line 2454
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3232 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-104]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3233 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-100]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3232  (sizeInBytes=4)
	load	[r14+-104],r1
	store	r1,[r14+-116]
_Label_3228:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3233 then goto _Label_3231		
	load	[r14+-116],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3231
_Label_3229:
	mov	2454,r13		! source line 2454
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_3234 = _StringConst_142
	set	_StringConst_142,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_3234  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	2455,r13		! source line 2455
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2456,r13		! source line 2456
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3235 = _StringConst_143
	set	_StringConst_143,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_3235  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2457,r13		! source line 2457
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2458,r13		! source line 2458
	mov	"\0\0SE",r10
!   _temp_3236 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-88]
!   Move address of _temp_3236 [i ] into _temp_3237
!     make sure index expr is >= 0
	load	[r14+-116],r2
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
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-84]
!   Send message Print
	load	[r14+-84],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_3230:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_3228
! END FOR
_Label_3231:
! CALL STATEMENT...
!   _temp_3238 = _StringConst_144
	set	_StringConst_144,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_3238  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	2460,r13		! source line 2460
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2461,r13		! source line 2461
	mov	"\0\0SE",r10
!   _temp_3239 = _function_183_printFCB
	set	_function_183_printFCB,r1
	store	r1,[r14+-76]
!   _temp_3240 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_3239  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	2462,r13		! source line 2462
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_3241 = _StringConst_145
	set	_StringConst_145,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_3241  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	2463,r13		! source line 2463
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2464,r13		! source line 2464
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3246 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3247 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3246  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-116]
_Label_3242:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3247 then goto _Label_3245		
	load	[r14+-116],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3245
_Label_3243:
	mov	2464,r13		! source line 2464
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_3248 = _StringConst_146
	set	_StringConst_146,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_3248  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	2465,r13		! source line 2465
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2466,r13		! source line 2466
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3249 = _StringConst_147
	set	_StringConst_147,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_3249  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	2467,r13		! source line 2467
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_3251 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-44]
!   Move address of _temp_3251 [i ] into _temp_3252
!     make sure index expr is >= 0
	load	[r14+-116],r2
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
	set	28,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-40]
!   _temp_3250 = _temp_3252		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_3250  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	2468,r13		! source line 2468
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_3253 = _StringConst_148
	set	_StringConst_148,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_3253  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2469,r13		! source line 2469
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2470,r13		! source line 2470
	mov	"\0\0SE",r10
!   _temp_3254 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-32]
!   Move address of _temp_3254 [i ] into _temp_3255
!     make sure index expr is >= 0
	load	[r14+-116],r2
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
	set	28,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   Send message Print
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_3244:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_3242
! END FOR
_Label_3245:
! CALL STATEMENT...
!   _temp_3256 = _StringConst_149
	set	_StringConst_149,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3256  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2472,r13		! source line 2472
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2473,r13		! source line 2473
	mov	"\0\0SE",r10
!   _temp_3257 = _function_182_printOpen
	set	_function_182_printOpen,r1
	store	r1,[r14+-20]
!   _temp_3258 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_3257  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	2474,r13		! source line 2474
	mov	"\0\0SE",r10
!   _temp_3259 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
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
	mov	2474,r13		! source line 2474
	mov	"\0\0RE",r10
	add	r15,120,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_2:
	.word	_sourceFileName
	.word	_Label_3260
	.word	4		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_3261
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3262
	.word	-12
	.word	4
	.word	_Label_3263
	.word	-16
	.word	4
	.word	_Label_3264
	.word	-20
	.word	4
	.word	_Label_3265
	.word	-24
	.word	4
	.word	_Label_3266
	.word	-28
	.word	4
	.word	_Label_3267
	.word	-32
	.word	4
	.word	_Label_3268
	.word	-36
	.word	4
	.word	_Label_3269
	.word	-40
	.word	4
	.word	_Label_3270
	.word	-44
	.word	4
	.word	_Label_3271
	.word	-48
	.word	4
	.word	_Label_3272
	.word	-52
	.word	4
	.word	_Label_3273
	.word	-56
	.word	4
	.word	_Label_3274
	.word	-60
	.word	4
	.word	_Label_3275
	.word	-64
	.word	4
	.word	_Label_3276
	.word	-68
	.word	4
	.word	_Label_3277
	.word	-72
	.word	4
	.word	_Label_3278
	.word	-76
	.word	4
	.word	_Label_3279
	.word	-80
	.word	4
	.word	_Label_3280
	.word	-84
	.word	4
	.word	_Label_3281
	.word	-88
	.word	4
	.word	_Label_3282
	.word	-92
	.word	4
	.word	_Label_3283
	.word	-96
	.word	4
	.word	_Label_3284
	.word	-100
	.word	4
	.word	_Label_3285
	.word	-104
	.word	4
	.word	_Label_3286
	.word	-108
	.word	4
	.word	_Label_3287
	.word	-112
	.word	4
	.word	_Label_3288
	.word	-116
	.word	4
	.word	0
_Label_3260:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_3261:
	.ascii	"Pself\0"
	.align
_Label_3262:
	.byte	'?'
	.ascii	"_temp_3259\0"
	.align
_Label_3263:
	.byte	'?'
	.ascii	"_temp_3258\0"
	.align
_Label_3264:
	.byte	'?'
	.ascii	"_temp_3257\0"
	.align
_Label_3265:
	.byte	'?'
	.ascii	"_temp_3256\0"
	.align
_Label_3266:
	.byte	'?'
	.ascii	"_temp_3255\0"
	.align
_Label_3267:
	.byte	'?'
	.ascii	"_temp_3254\0"
	.align
_Label_3268:
	.byte	'?'
	.ascii	"_temp_3253\0"
	.align
_Label_3269:
	.byte	'?'
	.ascii	"_temp_3252\0"
	.align
_Label_3270:
	.byte	'?'
	.ascii	"_temp_3251\0"
	.align
_Label_3271:
	.byte	'?'
	.ascii	"_temp_3250\0"
	.align
_Label_3272:
	.byte	'?'
	.ascii	"_temp_3249\0"
	.align
_Label_3273:
	.byte	'?'
	.ascii	"_temp_3248\0"
	.align
_Label_3274:
	.byte	'?'
	.ascii	"_temp_3247\0"
	.align
_Label_3275:
	.byte	'?'
	.ascii	"_temp_3246\0"
	.align
_Label_3276:
	.byte	'?'
	.ascii	"_temp_3241\0"
	.align
_Label_3277:
	.byte	'?'
	.ascii	"_temp_3240\0"
	.align
_Label_3278:
	.byte	'?'
	.ascii	"_temp_3239\0"
	.align
_Label_3279:
	.byte	'?'
	.ascii	"_temp_3238\0"
	.align
_Label_3280:
	.byte	'?'
	.ascii	"_temp_3237\0"
	.align
_Label_3281:
	.byte	'?'
	.ascii	"_temp_3236\0"
	.align
_Label_3282:
	.byte	'?'
	.ascii	"_temp_3235\0"
	.align
_Label_3283:
	.byte	'?'
	.ascii	"_temp_3234\0"
	.align
_Label_3284:
	.byte	'?'
	.ascii	"_temp_3233\0"
	.align
_Label_3285:
	.byte	'?'
	.ascii	"_temp_3232\0"
	.align
_Label_3286:
	.byte	'?'
	.ascii	"_temp_3227\0"
	.align
_Label_3287:
	.byte	'?'
	.ascii	"_temp_3226\0"
	.align
_Label_3288:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Open  ===============
! 
_Method_P_Kernel_FileManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_3,r1
	push	r1
	mov	14,r1
_Label_4050:
	push	r0
	sub	r1,1,r1
	bne	_Label_4050
	mov	2479,r13		! source line 2479
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2495,r13		! source line 2495
	mov	"\0\0AS",r10
	mov	2495,r13		! source line 2495
	mov	"\0\0SE",r10
!   _temp_3289 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=filename  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message FindFCB
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=fcb  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! IF STATEMENT...
	mov	2496,r13		! source line 2496
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _Label_3290
	load	[r14+-56],r1
	cmp	r1,r0
	be	_Label_3290
	jmp	_Label_3291
_Label_3290:
! THEN...
	mov	2497,r13		! source line 2497
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2497,r13		! source line 2497
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3291:
! SEND STATEMENT...
	mov	2501,r13		! source line 2501
	mov	"\0\0SE",r10
!   _temp_3292 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Send message Lock
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	2502,r13		! source line 2502
	mov	"\0\0WH",r10
_Label_3293:
	mov	2502,r13		! source line 2502
	mov	"\0\0SE",r10
!   _temp_3296 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-40]
!   Send message IsEmpty
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_3294 else goto _Label_3295
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_3295
	jmp	_Label_3294
_Label_3294:
	mov	2502,r13		! source line 2502
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2503,r13		! source line 2503
	mov	"\0\0SE",r10
!   _temp_3297 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   _temp_3298 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_3297  sizeInBytes=4
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
	jmp	_Label_3293
_Label_3295:
! ASSIGNMENT STATEMENT...
	mov	2505,r13		! source line 2505
	mov	"\0\0AS",r10
	mov	2505,r13		! source line 2505
	mov	"\0\0SE",r10
!   _temp_3299 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-28]
!   Send message Remove
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=open  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! ASSIGNMENT STATEMENT...
	mov	2508,r13		! source line 2508
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3300 = open + 20
	load	[r14+-52],r1
	add	r1,20,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3300 = fcb  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2509,r13		! source line 2509
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3301 = open + 24
	load	[r14+-52],r1
	add	r1,24,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_3301 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2512,r13		! source line 2512
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3302 = open + 16
	load	[r14+-52],r1
	add	r1,16,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_3302 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2514,r13		! source line 2514
	mov	"\0\0SE",r10
!   _temp_3303 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
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
	mov	2515,r13		! source line 2515
	mov	"\0\0RE",r10
!   ReturnResult: open  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_3:
	.word	_sourceFileName
	.word	_Label_3304
	.word	8		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_3305
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3306
	.word	12
	.word	4
	.word	_Label_3307
	.word	-12
	.word	4
	.word	_Label_3308
	.word	-16
	.word	4
	.word	_Label_3309
	.word	-20
	.word	4
	.word	_Label_3310
	.word	-24
	.word	4
	.word	_Label_3311
	.word	-28
	.word	4
	.word	_Label_3312
	.word	-32
	.word	4
	.word	_Label_3313
	.word	-36
	.word	4
	.word	_Label_3314
	.word	-40
	.word	4
	.word	_Label_3315
	.word	-44
	.word	4
	.word	_Label_3316
	.word	-48
	.word	4
	.word	_Label_3317
	.word	-52
	.word	4
	.word	_Label_3318
	.word	-56
	.word	4
	.word	0
_Label_3304:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Open\0"
	.align
_Label_3305:
	.ascii	"Pself\0"
	.align
_Label_3306:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_3307:
	.byte	'?'
	.ascii	"_temp_3303\0"
	.align
_Label_3308:
	.byte	'?'
	.ascii	"_temp_3302\0"
	.align
_Label_3309:
	.byte	'?'
	.ascii	"_temp_3301\0"
	.align
_Label_3310:
	.byte	'?'
	.ascii	"_temp_3300\0"
	.align
_Label_3311:
	.byte	'?'
	.ascii	"_temp_3299\0"
	.align
_Label_3312:
	.byte	'?'
	.ascii	"_temp_3298\0"
	.align
_Label_3313:
	.byte	'?'
	.ascii	"_temp_3297\0"
	.align
_Label_3314:
	.byte	'?'
	.ascii	"_temp_3296\0"
	.align
_Label_3315:
	.byte	'?'
	.ascii	"_temp_3292\0"
	.align
_Label_3316:
	.byte	'?'
	.ascii	"_temp_3289\0"
	.align
_Label_3317:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3318:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  METHOD FindFCB  ===============
! 
_Method_P_Kernel_FileManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_4,r1
	push	r1
	mov	41,r1
_Label_4051:
	push	r0
	sub	r1,1,r1
	bne	_Label_4051
	mov	2520,r13		! source line 2520
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2545,r13		! source line 2545
	mov	"\0\0AS",r10
!   p = directoryFrame		(4 bytes)
	load	[r14+8],r1
	load	[r1+768],r1
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2548,r13		! source line 2548
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: i = *p  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-136]
! ASSIGNMENT STATEMENT...
	mov	2549,r13		! source line 2549
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2550,r13		! source line 2550
	mov	"\0\0IF",r10
!   if i == 1937012066 then goto _Label_3320		(int)
	load	[r14+-136],r1
	set	1937012066,r2
	cmp	r1,r2
	be	_Label_3320
!	jmp	_Label_3319
_Label_3319:
! THEN...
	mov	2551,r13		! source line 2551
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3321 = _StringConst_150
	set	_StringConst_150,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_3321  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2551,r13		! source line 2551
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3320:
! ASSIGNMENT STATEMENT...
	mov	2555,r13		! source line 2555
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: numFiles = *p  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-144]
! ASSIGNMENT STATEMENT...
	mov	2556,r13		! source line 2556
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2557,r13		! source line 2557
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: i = *p  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-136]
! ASSIGNMENT STATEMENT...
	mov	2558,r13		! source line 2558
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! WHILE STATEMENT...
	mov	2561,r13		! source line 2561
	mov	"\0\0WH",r10
_Label_3322:
!   if numFiles <= 0 then goto _Label_3324		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3324
!	jmp	_Label_3323
_Label_3323:
	mov	2561,r13		! source line 2561
	mov	"\0\0WB",r10
! CALL STATEMENT...
!   _temp_3325 = &start
	add	r14,-140,r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_3325  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2562,r13		! source line 2562
	mov	"\0\0CA",r10
	call	_function_184_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2563,r13		! source line 2563
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_3326 = &fileLen
	add	r14,-148,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=_temp_3326  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2564,r13		! source line 2564
	mov	"\0\0CA",r10
	call	_function_184_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2565,r13		! source line 2565
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_3327 = &fileNameLen
	add	r14,-152,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_3327  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2566,r13		! source line 2566
	mov	"\0\0CA",r10
	call	_function_184_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2567,r13		! source line 2567
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2568,r13		! source line 2568
	mov	"\0\0IF",r10
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_3331 = *filename  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if fileNameLen != _temp_3331 then goto _Label_3329		(int)
	load	[r14+-152],r1
	load	[r14+-116],r2
	cmp	r1,r2
	bne	_Label_3329
!	jmp	_Label_3330
_Label_3330:
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of filename [0 ] into _temp_3333
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+12],r1
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
	store	r2,[r14+-108]
!   _temp_3332 = _temp_3333		(4 bytes)
	load	[r14+-108],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_3332  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=fileNameLen  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+8]
!   Call the function
	mov	2569,r13		! source line 2569
	mov	"\0\0CA",r10
	call	_P_System_MemoryEqual
!   if result==true then goto _Label_3328 else goto _Label_3329
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_3329
	jmp	_Label_3328
_Label_3328:
! THEN...
	mov	2570,r13		! source line 2570
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2570,r13		! source line 2570
	mov	"\0\0BR",r10
	jmp	_Label_3324
! END IF...
_Label_3329:
! ASSIGNMENT STATEMENT...
	mov	2572,r13		! source line 2572
	mov	"\0\0AS",r10
!   p = p + fileNameLen		(int)
	load	[r14+-160],r1
	load	[r14+-152],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2573,r13		! source line 2573
	mov	"\0\0AS",r10
!   numFiles = numFiles - 1		(int)
	load	[r14+-144],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
! END WHILE...
	jmp	_Label_3322
_Label_3324:
! IF STATEMENT...
	mov	2577,r13		! source line 2577
	mov	"\0\0IF",r10
!   if numFiles > 0 then goto _Label_3335		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3335
!	jmp	_Label_3334
_Label_3334:
! THEN...
	mov	2578,r13		! source line 2578
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2578,r13		! source line 2578
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3335:
! SEND STATEMENT...
	mov	2581,r13		! source line 2581
	mov	"\0\0SE",r10
!   _temp_3336 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-104]
!   Send message Lock
	load	[r14+-104],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! FOR STATEMENT...
	mov	2583,r13		! source line 2583
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3341 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-100]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3342 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-96]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3341  (sizeInBytes=4)
	load	[r14+-100],r1
	store	r1,[r14+-136]
_Label_3337:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3342 then goto _Label_3340		
	load	[r14+-136],r1
	load	[r14+-96],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3340
_Label_3338:
	mov	2583,r13		! source line 2583
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2584,r13		! source line 2584
	mov	"\0\0AS",r10
!   _temp_3343 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-92]
!   Move address of _temp_3343 [i ] into _temp_3344
!     make sure index expr is >= 0
	load	[r14+-136],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-92],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-88]
!   fcb = _temp_3344		(4 bytes)
	load	[r14+-88],r1
	store	r1,[r14+-156]
! IF STATEMENT...
	mov	2585,r13		! source line 2585
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3348 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-80]
!   Data Move: _temp_3347 = *_temp_3348  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if _temp_3347 != start then goto _Label_3346		(int)
	load	[r14+-84],r1
	load	[r14+-140],r2
	cmp	r1,r2
	bne	_Label_3346
!	jmp	_Label_3345
_Label_3345:
! THEN...
	mov	2586,r13		! source line 2586
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2586,r13		! source line 2586
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3349 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-76]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3352 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-64]
!   Data Move: _temp_3351 = *_temp_3352  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   _temp_3350 = _temp_3351 + 1		(int)
	load	[r14+-68],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
!   Data Move: *_temp_3349 = _temp_3350  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r14+-76],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2587,r13		! source line 2587
	mov	"\0\0SE",r10
!   _temp_3353 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-60]
!   Send message Unlock
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2588,r13		! source line 2588
	mov	"\0\0RE",r10
!   ReturnResult: fcb  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3346:
!   Increment the FOR-LOOP index variable and jump back
_Label_3339:
!   i = i + 1
	load	[r14+-136],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
	jmp	_Label_3337
! END FOR
_Label_3340:
! WHILE STATEMENT...
	mov	2593,r13		! source line 2593
	mov	"\0\0WH",r10
_Label_3354:
	mov	2593,r13		! source line 2593
	mov	"\0\0SE",r10
!   _temp_3357 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-56]
!   Send message IsEmpty
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_3355 else goto _Label_3356
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_3356
	jmp	_Label_3355
_Label_3355:
	mov	2593,r13		! source line 2593
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2594,r13		! source line 2594
	mov	"\0\0SE",r10
!   _temp_3358 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   _temp_3359 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_3358  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_3354
_Label_3356:
! ASSIGNMENT STATEMENT...
	mov	2596,r13		! source line 2596
	mov	"\0\0AS",r10
	mov	2596,r13		! source line 2596
	mov	"\0\0SE",r10
!   _temp_3360 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-44]
!   Send message Remove
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=fcb  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-156]
! SEND STATEMENT...
	mov	2599,r13		! source line 2599
	mov	"\0\0SE",r10
!   _temp_3361 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Send message Unlock
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2602,r13		! source line 2602
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3362 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_3362 = start  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2603,r13		! source line 2603
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3363 = fcb + 24
	load	[r14+-156],r1
	add	r1,24,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_3363 = fileLen  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2604,r13		! source line 2604
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3364 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_3364 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-28],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2605,r13		! source line 2605
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3369 = fcb + 32
	load	[r14+-156],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   Data Move: _temp_3368 = *_temp_3369  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_3368 < 0 then goto _Label_3367		(int)
	load	[r14+-24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_3367
	jmp	_Label_3365
_Label_3367:
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3370 = fcb + 36
	load	[r14+-156],r1
	add	r1,36,r1
	store	r1,[r14+-16]
!   if boolIsZero (_temp_3370 ) then goto _Label_3366		(int)
	load	[r14+-16],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_3366
!	jmp	_Label_3365
_Label_3365:
! THEN...
	mov	2606,r13		! source line 2606
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3371 = _StringConst_151
	set	_StringConst_151,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3371  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2606,r13		! source line 2606
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3366:
! RETURN STATEMENT...
	mov	2608,r13		! source line 2608
	mov	"\0\0RE",r10
!   ReturnResult: fcb  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_4:
	.word	_sourceFileName
	.word	_Label_3372
	.word	8		! total size of parameters
	.word	164		! frame size = 164
	.word	_Label_3373
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3374
	.word	12
	.word	4
	.word	_Label_3375
	.word	-12
	.word	4
	.word	_Label_3376
	.word	-16
	.word	4
	.word	_Label_3377
	.word	-20
	.word	4
	.word	_Label_3378
	.word	-24
	.word	4
	.word	_Label_3379
	.word	-28
	.word	4
	.word	_Label_3380
	.word	-32
	.word	4
	.word	_Label_3381
	.word	-36
	.word	4
	.word	_Label_3382
	.word	-40
	.word	4
	.word	_Label_3383
	.word	-44
	.word	4
	.word	_Label_3384
	.word	-48
	.word	4
	.word	_Label_3385
	.word	-52
	.word	4
	.word	_Label_3386
	.word	-56
	.word	4
	.word	_Label_3387
	.word	-60
	.word	4
	.word	_Label_3388
	.word	-64
	.word	4
	.word	_Label_3389
	.word	-68
	.word	4
	.word	_Label_3390
	.word	-72
	.word	4
	.word	_Label_3391
	.word	-76
	.word	4
	.word	_Label_3392
	.word	-80
	.word	4
	.word	_Label_3393
	.word	-84
	.word	4
	.word	_Label_3394
	.word	-88
	.word	4
	.word	_Label_3395
	.word	-92
	.word	4
	.word	_Label_3396
	.word	-96
	.word	4
	.word	_Label_3397
	.word	-100
	.word	4
	.word	_Label_3398
	.word	-104
	.word	4
	.word	_Label_3399
	.word	-108
	.word	4
	.word	_Label_3400
	.word	-112
	.word	4
	.word	_Label_3401
	.word	-116
	.word	4
	.word	_Label_3402
	.word	-120
	.word	4
	.word	_Label_3403
	.word	-124
	.word	4
	.word	_Label_3404
	.word	-128
	.word	4
	.word	_Label_3405
	.word	-132
	.word	4
	.word	_Label_3406
	.word	-136
	.word	4
	.word	_Label_3407
	.word	-140
	.word	4
	.word	_Label_3408
	.word	-144
	.word	4
	.word	_Label_3409
	.word	-148
	.word	4
	.word	_Label_3410
	.word	-152
	.word	4
	.word	_Label_3411
	.word	-156
	.word	4
	.word	_Label_3412
	.word	-160
	.word	4
	.word	0
_Label_3372:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"FindFCB\0"
	.align
_Label_3373:
	.ascii	"Pself\0"
	.align
_Label_3374:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_3375:
	.byte	'?'
	.ascii	"_temp_3371\0"
	.align
_Label_3376:
	.byte	'?'
	.ascii	"_temp_3370\0"
	.align
_Label_3377:
	.byte	'?'
	.ascii	"_temp_3369\0"
	.align
_Label_3378:
	.byte	'?'
	.ascii	"_temp_3368\0"
	.align
_Label_3379:
	.byte	'?'
	.ascii	"_temp_3364\0"
	.align
_Label_3380:
	.byte	'?'
	.ascii	"_temp_3363\0"
	.align
_Label_3381:
	.byte	'?'
	.ascii	"_temp_3362\0"
	.align
_Label_3382:
	.byte	'?'
	.ascii	"_temp_3361\0"
	.align
_Label_3383:
	.byte	'?'
	.ascii	"_temp_3360\0"
	.align
_Label_3384:
	.byte	'?'
	.ascii	"_temp_3359\0"
	.align
_Label_3385:
	.byte	'?'
	.ascii	"_temp_3358\0"
	.align
_Label_3386:
	.byte	'?'
	.ascii	"_temp_3357\0"
	.align
_Label_3387:
	.byte	'?'
	.ascii	"_temp_3353\0"
	.align
_Label_3388:
	.byte	'?'
	.ascii	"_temp_3352\0"
	.align
_Label_3389:
	.byte	'?'
	.ascii	"_temp_3351\0"
	.align
_Label_3390:
	.byte	'?'
	.ascii	"_temp_3350\0"
	.align
_Label_3391:
	.byte	'?'
	.ascii	"_temp_3349\0"
	.align
_Label_3392:
	.byte	'?'
	.ascii	"_temp_3348\0"
	.align
_Label_3393:
	.byte	'?'
	.ascii	"_temp_3347\0"
	.align
_Label_3394:
	.byte	'?'
	.ascii	"_temp_3344\0"
	.align
_Label_3395:
	.byte	'?'
	.ascii	"_temp_3343\0"
	.align
_Label_3396:
	.byte	'?'
	.ascii	"_temp_3342\0"
	.align
_Label_3397:
	.byte	'?'
	.ascii	"_temp_3341\0"
	.align
_Label_3398:
	.byte	'?'
	.ascii	"_temp_3336\0"
	.align
_Label_3399:
	.byte	'?'
	.ascii	"_temp_3333\0"
	.align
_Label_3400:
	.byte	'?'
	.ascii	"_temp_3332\0"
	.align
_Label_3401:
	.byte	'?'
	.ascii	"_temp_3331\0"
	.align
_Label_3402:
	.byte	'?'
	.ascii	"_temp_3327\0"
	.align
_Label_3403:
	.byte	'?'
	.ascii	"_temp_3326\0"
	.align
_Label_3404:
	.byte	'?'
	.ascii	"_temp_3325\0"
	.align
_Label_3405:
	.byte	'?'
	.ascii	"_temp_3321\0"
	.align
_Label_3406:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_3407:
	.byte	'I'
	.ascii	"start\0"
	.align
_Label_3408:
	.byte	'I'
	.ascii	"numFiles\0"
	.align
_Label_3409:
	.byte	'I'
	.ascii	"fileLen\0"
	.align
_Label_3410:
	.byte	'I'
	.ascii	"fileNameLen\0"
	.align
_Label_3411:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_3412:
	.byte	'P'
	.ascii	"p\0"
	.align
! 
! ===============  METHOD Close  ===============
! 
_Method_P_Kernel_FileManager_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_5,r1
	push	r1
	mov	26,r1
_Label_4052:
	push	r0
	sub	r1,1,r1
	bne	_Label_4052
	mov	2621,r13		! source line 2621
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2623,r13		! source line 2623
	mov	"\0\0IF",r10
!   _temp_3415 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-100]
!   if open != _temp_3415 then goto _Label_3414		(int)
	load	[r14+12],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bne	_Label_3414
!	jmp	_Label_3413
_Label_3413:
! THEN...
	mov	2624,r13		! source line 2624
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2624,r13		! source line 2624
	mov	"\0\0RE",r10
	add	r15,108,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3414:
! SEND STATEMENT...
	mov	2626,r13		! source line 2626
	mov	"\0\0SE",r10
!   _temp_3416 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-96]
!   Send message Lock
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	2627,r13		! source line 2627
	mov	"\0\0SE",r10
!   _temp_3417 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message Flush
	load	[r14+-92],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2628,r13		! source line 2628
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3418 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: fcb = *_temp_3418  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-104]
! ASSIGNMENT STATEMENT...
	mov	2629,r13		! source line 2629
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3419 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-84]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3422 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-72]
!   Data Move: _temp_3421 = *_temp_3422  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   _temp_3420 = _temp_3421 - 1		(int)
	load	[r14+-76],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
!   Data Move: *_temp_3419 = _temp_3420  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r14+-84],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2630,r13		! source line 2630
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3426 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-64]
!   Data Move: _temp_3425 = *_temp_3426  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if _temp_3425 > 0 then goto _Label_3424		(int)
	load	[r14+-68],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3424
!	jmp	_Label_3423
_Label_3423:
! THEN...
	mov	2631,r13		! source line 2631
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2631,r13		! source line 2631
	mov	"\0\0SE",r10
!   _temp_3427 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	2632,r13		! source line 2632
	mov	"\0\0SE",r10
!   _temp_3428 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   _temp_3429 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_3428  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2633,r13		! source line 2633
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3430 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3433 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-36]
!   Data Move: _temp_3432 = *_temp_3433  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   _temp_3431 = _temp_3432 - 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
!   Data Move: *_temp_3430 = _temp_3431  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+-48],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2634,r13		! source line 2634
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3437 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: _temp_3436 = *_temp_3437  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_3436 > 0 then goto _Label_3435		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3435
!	jmp	_Label_3434
_Label_3434:
! THEN...
	mov	2635,r13		! source line 2635
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2635,r13		! source line 2635
	mov	"\0\0SE",r10
!   _temp_3438 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=fcb  sizeInBytes=4
	load	[r14+-104],r1
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
	mov	2636,r13		! source line 2636
	mov	"\0\0SE",r10
!   _temp_3439 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_3440 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_3439  sizeInBytes=4
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
! END IF...
_Label_3435:
! END IF...
_Label_3424:
! SEND STATEMENT...
	mov	2639,r13		! source line 2639
	mov	"\0\0SE",r10
!   _temp_3441 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
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
	mov	2639,r13		! source line 2639
	mov	"\0\0RE",r10
	add	r15,108,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_5:
	.word	_sourceFileName
	.word	_Label_3442
	.word	8		! total size of parameters
	.word	104		! frame size = 104
	.word	_Label_3443
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3444
	.word	12
	.word	4
	.word	_Label_3445
	.word	-12
	.word	4
	.word	_Label_3446
	.word	-16
	.word	4
	.word	_Label_3447
	.word	-20
	.word	4
	.word	_Label_3448
	.word	-24
	.word	4
	.word	_Label_3449
	.word	-28
	.word	4
	.word	_Label_3450
	.word	-32
	.word	4
	.word	_Label_3451
	.word	-36
	.word	4
	.word	_Label_3452
	.word	-40
	.word	4
	.word	_Label_3453
	.word	-44
	.word	4
	.word	_Label_3454
	.word	-48
	.word	4
	.word	_Label_3455
	.word	-52
	.word	4
	.word	_Label_3456
	.word	-56
	.word	4
	.word	_Label_3457
	.word	-60
	.word	4
	.word	_Label_3458
	.word	-64
	.word	4
	.word	_Label_3459
	.word	-68
	.word	4
	.word	_Label_3460
	.word	-72
	.word	4
	.word	_Label_3461
	.word	-76
	.word	4
	.word	_Label_3462
	.word	-80
	.word	4
	.word	_Label_3463
	.word	-84
	.word	4
	.word	_Label_3464
	.word	-88
	.word	4
	.word	_Label_3465
	.word	-92
	.word	4
	.word	_Label_3466
	.word	-96
	.word	4
	.word	_Label_3467
	.word	-100
	.word	4
	.word	_Label_3468
	.word	-104
	.word	4
	.word	0
_Label_3442:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Close\0"
	.align
_Label_3443:
	.ascii	"Pself\0"
	.align
_Label_3444:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3445:
	.byte	'?'
	.ascii	"_temp_3441\0"
	.align
_Label_3446:
	.byte	'?'
	.ascii	"_temp_3440\0"
	.align
_Label_3447:
	.byte	'?'
	.ascii	"_temp_3439\0"
	.align
_Label_3448:
	.byte	'?'
	.ascii	"_temp_3438\0"
	.align
_Label_3449:
	.byte	'?'
	.ascii	"_temp_3437\0"
	.align
_Label_3450:
	.byte	'?'
	.ascii	"_temp_3436\0"
	.align
_Label_3451:
	.byte	'?'
	.ascii	"_temp_3433\0"
	.align
_Label_3452:
	.byte	'?'
	.ascii	"_temp_3432\0"
	.align
_Label_3453:
	.byte	'?'
	.ascii	"_temp_3431\0"
	.align
_Label_3454:
	.byte	'?'
	.ascii	"_temp_3430\0"
	.align
_Label_3455:
	.byte	'?'
	.ascii	"_temp_3429\0"
	.align
_Label_3456:
	.byte	'?'
	.ascii	"_temp_3428\0"
	.align
_Label_3457:
	.byte	'?'
	.ascii	"_temp_3427\0"
	.align
_Label_3458:
	.byte	'?'
	.ascii	"_temp_3426\0"
	.align
_Label_3459:
	.byte	'?'
	.ascii	"_temp_3425\0"
	.align
_Label_3460:
	.byte	'?'
	.ascii	"_temp_3422\0"
	.align
_Label_3461:
	.byte	'?'
	.ascii	"_temp_3421\0"
	.align
_Label_3462:
	.byte	'?'
	.ascii	"_temp_3420\0"
	.align
_Label_3463:
	.byte	'?'
	.ascii	"_temp_3419\0"
	.align
_Label_3464:
	.byte	'?'
	.ascii	"_temp_3418\0"
	.align
_Label_3465:
	.byte	'?'
	.ascii	"_temp_3417\0"
	.align
_Label_3466:
	.byte	'?'
	.ascii	"_temp_3416\0"
	.align
_Label_3467:
	.byte	'?'
	.ascii	"_temp_3415\0"
	.align
_Label_3468:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  METHOD Flush  ===============
! 
_Method_P_Kernel_FileManager_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_6,r1
	push	r1
	mov	30,r1
_Label_4053:
	push	r0
	sub	r1,1,r1
	bne	_Label_4053
	mov	2644,r13		! source line 2644
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2649,r13		! source line 2649
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _Label_3469
	load	[r14+12],r1
	cmp	r1,r0
	be	_Label_3469
	jmp	_Label_3470
_Label_3469:
! THEN...
	mov	2650,r13		! source line 2650
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3471 = _StringConst_152
	set	_StringConst_152,r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_3471  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	2650,r13		! source line 2650
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_3470:
! IF STATEMENT...
	mov	2652,r13		! source line 2652
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3475 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-104]
!   Data Move: _temp_3474 = *_temp_3475  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_3474) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3476 = _temp_3474 + 36
	load	[r14+-108],r1
	add	r1,36,r1
	store	r1,[r14+-100]
!   if boolIsZero (_temp_3476 ) then goto _Label_3473		(int)
	load	[r14+-100],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_3473
!	jmp	_Label_3472
_Label_3472:
! THEN...
	mov	2653,r13		! source line 2653
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	2653,r13		! source line 2653
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3481 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_3480 = *_temp_3481  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_3480) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3482 = _temp_3480 + 32
	load	[r14+-92],r1
	add	r1,32,r1
	store	r1,[r14+-84]
!   Data Move: _temp_3479 = *_temp_3482  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_3479 >= 0 then goto _Label_3478		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3478
!	jmp	_Label_3477
_Label_3477:
! THEN...
	mov	2654,r13		! source line 2654
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3483 = _StringConst_153
	set	_StringConst_153,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_3483  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2654,r13		! source line 2654
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3478:
! ASSIGNMENT STATEMENT...
	mov	2656,r13		! source line 2656
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3485 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-72]
!   Data Move: _temp_3484 = *_temp_3485  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_3484) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3486 = _temp_3484 + 36
	load	[r14+-76],r1
	add	r1,36,r1
	store	r1,[r14+-68]
!   Data Move: *_temp_3486 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-68],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	2657,r13		! source line 2657
	mov	"\0\0SE",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3490 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_3489 = *_temp_3490  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_3489) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3491 = _temp_3489 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   Data Move: _temp_3488 = *_temp_3491  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3494 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: _temp_3493 = *_temp_3494  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_3493) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3495 = _temp_3493 + 20
	load	[r14+-40],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: _temp_3492 = *_temp_3495  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_3487 = _temp_3488 + _temp_3492		(int)
	load	[r14+-60],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3498 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   Data Move: _temp_3497 = *_temp_3498  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_3497) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3499 = _temp_3497 + 28
	load	[r14+-24],r1
	add	r1,28,r1
	store	r1,[r14+-16]
!   Data Move: _temp_3496 = *_temp_3499  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   _temp_3500 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_3487  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_3496  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+12]
!   Send message SynchWriteSector
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END IF...
_Label_3473:
! RETURN STATEMENT...
	mov	2652,r13		! source line 2652
	mov	"\0\0RE",r10
	add	r15,124,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_6:
	.word	_sourceFileName
	.word	_Label_3501
	.word	8		! total size of parameters
	.word	120		! frame size = 120
	.word	_Label_3502
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3503
	.word	12
	.word	4
	.word	_Label_3504
	.word	-12
	.word	4
	.word	_Label_3505
	.word	-16
	.word	4
	.word	_Label_3506
	.word	-20
	.word	4
	.word	_Label_3507
	.word	-24
	.word	4
	.word	_Label_3508
	.word	-28
	.word	4
	.word	_Label_3509
	.word	-32
	.word	4
	.word	_Label_3510
	.word	-36
	.word	4
	.word	_Label_3511
	.word	-40
	.word	4
	.word	_Label_3512
	.word	-44
	.word	4
	.word	_Label_3513
	.word	-48
	.word	4
	.word	_Label_3514
	.word	-52
	.word	4
	.word	_Label_3515
	.word	-56
	.word	4
	.word	_Label_3516
	.word	-60
	.word	4
	.word	_Label_3517
	.word	-64
	.word	4
	.word	_Label_3518
	.word	-68
	.word	4
	.word	_Label_3519
	.word	-72
	.word	4
	.word	_Label_3520
	.word	-76
	.word	4
	.word	_Label_3521
	.word	-80
	.word	4
	.word	_Label_3522
	.word	-84
	.word	4
	.word	_Label_3523
	.word	-88
	.word	4
	.word	_Label_3524
	.word	-92
	.word	4
	.word	_Label_3525
	.word	-96
	.word	4
	.word	_Label_3526
	.word	-100
	.word	4
	.word	_Label_3527
	.word	-104
	.word	4
	.word	_Label_3528
	.word	-108
	.word	4
	.word	_Label_3529
	.word	-112
	.word	4
	.word	0
_Label_3501:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Flush\0"
	.align
_Label_3502:
	.ascii	"Pself\0"
	.align
_Label_3503:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3504:
	.byte	'?'
	.ascii	"_temp_3500\0"
	.align
_Label_3505:
	.byte	'?'
	.ascii	"_temp_3499\0"
	.align
_Label_3506:
	.byte	'?'
	.ascii	"_temp_3498\0"
	.align
_Label_3507:
	.byte	'?'
	.ascii	"_temp_3497\0"
	.align
_Label_3508:
	.byte	'?'
	.ascii	"_temp_3496\0"
	.align
_Label_3509:
	.byte	'?'
	.ascii	"_temp_3495\0"
	.align
_Label_3510:
	.byte	'?'
	.ascii	"_temp_3494\0"
	.align
_Label_3511:
	.byte	'?'
	.ascii	"_temp_3493\0"
	.align
_Label_3512:
	.byte	'?'
	.ascii	"_temp_3492\0"
	.align
_Label_3513:
	.byte	'?'
	.ascii	"_temp_3491\0"
	.align
_Label_3514:
	.byte	'?'
	.ascii	"_temp_3490\0"
	.align
_Label_3515:
	.byte	'?'
	.ascii	"_temp_3489\0"
	.align
_Label_3516:
	.byte	'?'
	.ascii	"_temp_3488\0"
	.align
_Label_3517:
	.byte	'?'
	.ascii	"_temp_3487\0"
	.align
_Label_3518:
	.byte	'?'
	.ascii	"_temp_3486\0"
	.align
_Label_3519:
	.byte	'?'
	.ascii	"_temp_3485\0"
	.align
_Label_3520:
	.byte	'?'
	.ascii	"_temp_3484\0"
	.align
_Label_3521:
	.byte	'?'
	.ascii	"_temp_3483\0"
	.align
_Label_3522:
	.byte	'?'
	.ascii	"_temp_3482\0"
	.align
_Label_3523:
	.byte	'?'
	.ascii	"_temp_3481\0"
	.align
_Label_3524:
	.byte	'?'
	.ascii	"_temp_3480\0"
	.align
_Label_3525:
	.byte	'?'
	.ascii	"_temp_3479\0"
	.align
_Label_3526:
	.byte	'?'
	.ascii	"_temp_3476\0"
	.align
_Label_3527:
	.byte	'?'
	.ascii	"_temp_3475\0"
	.align
_Label_3528:
	.byte	'?'
	.ascii	"_temp_3474\0"
	.align
_Label_3529:
	.byte	'?'
	.ascii	"_temp_3471\0"
	.align
! 
! ===============  METHOD SynchRead  ===============
! 
_Method_P_Kernel_FileManager_7:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_7,r1
	push	r1
	mov	34,r1
_Label_4054:
	push	r0
	sub	r1,1,r1
	bne	_Label_4054
	mov	2666,r13		! source line 2666
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2681,r13		! source line 2681
	mov	"\0\0SE",r10
!   _temp_3530 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Send message Lock
	load	[r14+-108],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	2682,r13		! source line 2682
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_3536		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3536
!   _temp_3535 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_3537
_Label_3536:
!   _temp_3535 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_3537:
!   if _temp_3535 then goto _Label_3534 else goto _Label_3531
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3531
	jmp	_Label_3534
_Label_3534:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3540 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-100]
!   Data Move: _temp_3539 = *_temp_3540  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_3539 == 0 then goto _Label_3541		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3541
!   _temp_3538 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_3542
_Label_3541:
!   _temp_3538 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_3542:
!   if _temp_3538 then goto _Label_3533 else goto _Label_3531
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3531
	jmp	_Label_3533
_Label_3533:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3545 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_3544 = *_temp_3545  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_3544) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3546 = _temp_3544 + 20
	load	[r14+-92],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: _temp_3543 = *_temp_3546  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_3543 >= 0 then goto _Label_3532		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3532
!	jmp	_Label_3531
_Label_3531:
! THEN...
	mov	2683,r13		! source line 2683
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3547 = _StringConst_154
	set	_StringConst_154,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_3547  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2683,r13		! source line 2683
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3532:
! ASSIGNMENT STATEMENT...
	mov	2685,r13		! source line 2685
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3548 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-76]
!   Data Move: fcb = *_temp_3548  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-128]
! WHILE STATEMENT...
	mov	2686,r13		! source line 2686
	mov	"\0\0WH",r10
_Label_3549:
!   if numBytes <= 0 then goto _Label_3551		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3551
!	jmp	_Label_3550
_Label_3550:
	mov	2686,r13		! source line 2686
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2695,r13		! source line 2695
	mov	"\0\0AS",r10
!   sector = bytePos div 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
! ASSIGNMENT STATEMENT...
	mov	2696,r13		! source line 2696
	mov	"\0\0AS",r10
!   offset = bytePos rem 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
! IF STATEMENT...
	mov	2700,r13		! source line 2700
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3555 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-68]
!   Data Move: _temp_3554 = *_temp_3555  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if _temp_3554 == sector then goto _Label_3553		(int)
	load	[r14+-72],r1
	load	[r14+-112],r2
	cmp	r1,r2
	be	_Label_3553
!	jmp	_Label_3552
_Label_3552:
! THEN...
	mov	2701,r13		! source line 2701
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2701,r13		! source line 2701
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_3556) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message Flush
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! SEND STATEMENT...
	mov	2703,r13		! source line 2703
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3559 = fcb + 20
	load	[r14+-128],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_3558 = *_temp_3559  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   _temp_3557 = sector + _temp_3558		(int)
	load	[r14+-112],r1
	load	[r14+-56],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3561 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-44]
!   Data Move: _temp_3560 = *_temp_3561  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_3562 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_3557  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_3560  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+12]
!   Send message SynchReadSector
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2706,r13		! source line 2706
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3563 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_3563 = sector  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2707,r13		! source line 2707
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3564 = fcb + 36
	load	[r14+-128],r1
	add	r1,36,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_3564 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-32],r2
	storeb	r1,[r2]
! END IF...
_Label_3553:
! ASSIGNMENT STATEMENT...
	mov	2709,r13		! source line 2709
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3566 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-24]
!   Data Move: _temp_3565 = *_temp_3566  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   posInBuffer = _temp_3565 + offset		(int)
	load	[r14+-28],r1
	load	[r14+-116],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
! ASSIGNMENT STATEMENT...
	mov	2710,r13		! source line 2710
	mov	"\0\0AS",r10
!   _temp_3567 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-116],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_3567  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Call the function
	mov	2710,r13		! source line 2710
	mov	"\0\0CA",r10
	call	_P_System_Min
!   Retrieve Result: targetName=bytesToMove  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-124]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=targetAddr  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=posInBuffer  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=bytesToMove  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+8]
!   Call the function
	mov	2714,r13		! source line 2714
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2715,r13		! source line 2715
	mov	"\0\0AS",r10
!   targetAddr = targetAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2716,r13		! source line 2716
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2717,r13		! source line 2717
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_3549
_Label_3551:
! SEND STATEMENT...
	mov	2724,r13		! source line 2724
	mov	"\0\0SE",r10
!   _temp_3568 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2725,r13		! source line 2725
	mov	"\0\0RE",r10
!   ReturnResult: 1  (sizeInBytes=1)
	mov	1,r1
	storeb	r1,[r14+8]
	add	r15,140,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_7:
	.word	_sourceFileName
	.word	_Label_3569
	.word	20		! total size of parameters
	.word	136		! frame size = 136
	.word	_Label_3570
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3571
	.word	12
	.word	4
	.word	_Label_3572
	.word	16
	.word	4
	.word	_Label_3573
	.word	20
	.word	4
	.word	_Label_3574
	.word	24
	.word	4
	.word	_Label_3575
	.word	-16
	.word	4
	.word	_Label_3576
	.word	-20
	.word	4
	.word	_Label_3577
	.word	-24
	.word	4
	.word	_Label_3578
	.word	-28
	.word	4
	.word	_Label_3579
	.word	-32
	.word	4
	.word	_Label_3580
	.word	-36
	.word	4
	.word	_Label_3581
	.word	-40
	.word	4
	.word	_Label_3582
	.word	-44
	.word	4
	.word	_Label_3583
	.word	-48
	.word	4
	.word	_Label_3584
	.word	-52
	.word	4
	.word	_Label_3585
	.word	-56
	.word	4
	.word	_Label_3586
	.word	-60
	.word	4
	.word	_Label_3587
	.word	-64
	.word	4
	.word	_Label_3588
	.word	-68
	.word	4
	.word	_Label_3589
	.word	-72
	.word	4
	.word	_Label_3590
	.word	-76
	.word	4
	.word	_Label_3591
	.word	-80
	.word	4
	.word	_Label_3592
	.word	-84
	.word	4
	.word	_Label_3593
	.word	-88
	.word	4
	.word	_Label_3594
	.word	-92
	.word	4
	.word	_Label_3595
	.word	-96
	.word	4
	.word	_Label_3596
	.word	-100
	.word	4
	.word	_Label_3597
	.word	-104
	.word	4
	.word	_Label_3598
	.word	-9
	.word	1
	.word	_Label_3599
	.word	-10
	.word	1
	.word	_Label_3600
	.word	-108
	.word	4
	.word	_Label_3601
	.word	-112
	.word	4
	.word	_Label_3602
	.word	-116
	.word	4
	.word	_Label_3603
	.word	-120
	.word	4
	.word	_Label_3604
	.word	-124
	.word	4
	.word	_Label_3605
	.word	-128
	.word	4
	.word	0
_Label_3569:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchRead\0"
	.align
_Label_3570:
	.ascii	"Pself\0"
	.align
_Label_3571:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3572:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_3573:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_3574:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3575:
	.byte	'?'
	.ascii	"_temp_3568\0"
	.align
_Label_3576:
	.byte	'?'
	.ascii	"_temp_3567\0"
	.align
_Label_3577:
	.byte	'?'
	.ascii	"_temp_3566\0"
	.align
_Label_3578:
	.byte	'?'
	.ascii	"_temp_3565\0"
	.align
_Label_3579:
	.byte	'?'
	.ascii	"_temp_3564\0"
	.align
_Label_3580:
	.byte	'?'
	.ascii	"_temp_3563\0"
	.align
_Label_3581:
	.byte	'?'
	.ascii	"_temp_3562\0"
	.align
_Label_3582:
	.byte	'?'
	.ascii	"_temp_3561\0"
	.align
_Label_3583:
	.byte	'?'
	.ascii	"_temp_3560\0"
	.align
_Label_3584:
	.byte	'?'
	.ascii	"_temp_3559\0"
	.align
_Label_3585:
	.byte	'?'
	.ascii	"_temp_3558\0"
	.align
_Label_3586:
	.byte	'?'
	.ascii	"_temp_3557\0"
	.align
_Label_3587:
	.byte	'?'
	.ascii	"_temp_3556\0"
	.align
_Label_3588:
	.byte	'?'
	.ascii	"_temp_3555\0"
	.align
_Label_3589:
	.byte	'?'
	.ascii	"_temp_3554\0"
	.align
_Label_3590:
	.byte	'?'
	.ascii	"_temp_3548\0"
	.align
_Label_3591:
	.byte	'?'
	.ascii	"_temp_3547\0"
	.align
_Label_3592:
	.byte	'?'
	.ascii	"_temp_3546\0"
	.align
_Label_3593:
	.byte	'?'
	.ascii	"_temp_3545\0"
	.align
_Label_3594:
	.byte	'?'
	.ascii	"_temp_3544\0"
	.align
_Label_3595:
	.byte	'?'
	.ascii	"_temp_3543\0"
	.align
_Label_3596:
	.byte	'?'
	.ascii	"_temp_3540\0"
	.align
_Label_3597:
	.byte	'?'
	.ascii	"_temp_3539\0"
	.align
_Label_3598:
	.byte	'C'
	.ascii	"_temp_3538\0"
	.align
_Label_3599:
	.byte	'C'
	.ascii	"_temp_3535\0"
	.align
_Label_3600:
	.byte	'?'
	.ascii	"_temp_3530\0"
	.align
_Label_3601:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_3602:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_3603:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_3604:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_3605:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  METHOD SynchWrite  ===============
! 
_Method_P_Kernel_FileManager_8:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_8,r1
	push	r1
	mov	36,r1
_Label_4055:
	push	r0
	sub	r1,1,r1
	bne	_Label_4055
	mov	2730,r13		! source line 2730
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2746,r13		! source line 2746
	mov	"\0\0SE",r10
!   _temp_3606 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-116]
!   Send message Lock
	load	[r14+-116],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	2747,r13		! source line 2747
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_3612		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3612
!   _temp_3611 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_3613
_Label_3612:
!   _temp_3611 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_3613:
!   if _temp_3611 then goto _Label_3610 else goto _Label_3607
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3607
	jmp	_Label_3610
_Label_3610:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3616 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-108]
!   Data Move: _temp_3615 = *_temp_3616  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if _temp_3615 == 0 then goto _Label_3617		(int)
	load	[r14+-112],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3617
!   _temp_3614 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_3618
_Label_3617:
!   _temp_3614 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_3618:
!   if _temp_3614 then goto _Label_3609 else goto _Label_3607
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3607
	jmp	_Label_3609
_Label_3609:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3621 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-96]
!   Data Move: _temp_3620 = *_temp_3621  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_3620) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3622 = _temp_3620 + 20
	load	[r14+-100],r1
	add	r1,20,r1
	store	r1,[r14+-92]
!   Data Move: _temp_3619 = *_temp_3622  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_3619 >= 0 then goto _Label_3608		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3608
!	jmp	_Label_3607
_Label_3607:
! THEN...
	mov	2748,r13		! source line 2748
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3623 = _StringConst_155
	set	_StringConst_155,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_3623  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2748,r13		! source line 2748
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3608:
! ASSIGNMENT STATEMENT...
	mov	2750,r13		! source line 2750
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3624 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: fcb = *_temp_3624  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-136]
! WHILE STATEMENT...
	mov	2751,r13		! source line 2751
	mov	"\0\0WH",r10
_Label_3625:
!   if numBytes <= 0 then goto _Label_3627		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3627
!	jmp	_Label_3626
_Label_3626:
	mov	2751,r13		! source line 2751
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2760,r13		! source line 2760
	mov	"\0\0AS",r10
!   sector = bytePos div 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
! ASSIGNMENT STATEMENT...
	mov	2761,r13		! source line 2761
	mov	"\0\0AS",r10
!   offset = bytePos rem 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
! IF STATEMENT...
	mov	2765,r13		! source line 2765
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3631 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-76]
!   Data Move: _temp_3630 = *_temp_3631  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_3630 == sector then goto _Label_3629		(int)
	load	[r14+-80],r1
	load	[r14+-120],r2
	cmp	r1,r2
	be	_Label_3629
!	jmp	_Label_3628
_Label_3628:
! THEN...
	mov	2767,r13		! source line 2767
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2767,r13		! source line 2767
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_3632) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message Flush
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! END IF...
_Label_3629:
! ASSIGNMENT STATEMENT...
	mov	2769,r13		! source line 2769
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3634 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-64]
!   Data Move: _temp_3633 = *_temp_3634  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   posInBuffer = _temp_3633 + offset		(int)
	load	[r14+-68],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
! ASSIGNMENT STATEMENT...
	mov	2770,r13		! source line 2770
	mov	"\0\0AS",r10
!   _temp_3635 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_3635  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Call the function
	mov	2770,r13		! source line 2770
	mov	"\0\0CA",r10
	call	_P_System_Min
!   Retrieve Result: targetName=bytesToMove  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-132]
! IF STATEMENT...
	mov	2771,r13		! source line 2771
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3639 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-52]
!   Data Move: _temp_3638 = *_temp_3639  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if _temp_3638 != sector then goto _Label_3637		(int)
	load	[r14+-56],r1
	load	[r14+-120],r2
	cmp	r1,r2
	bne	_Label_3637
!	jmp	_Label_3636
_Label_3636:
	jmp	_Label_3640
_Label_3637:
! ELSE...
	mov	2773,r13		! source line 2773
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	2773,r13		! source line 2773
	mov	"\0\0IF",r10
!   if intIsZero (offset) then goto _Label_3643
	load	[r14+-124],r1
	cmp	r1,r0
	be	_Label_3643
	jmp	_Label_3642
_Label_3643:
!   if bytesToMove != 8192 then goto _Label_3642		(int)
	load	[r14+-132],r1
	mov	8192,r2
	cmp	r1,r2
	bne	_Label_3642
!	jmp	_Label_3641
_Label_3641:
	jmp	_Label_3644
_Label_3642:
! ELSE...
	mov	2777,r13		! source line 2777
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	2777,r13		! source line 2777
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3647 = fcb + 20
	load	[r14+-136],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   Data Move: _temp_3646 = *_temp_3647  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_3645 = sector + _temp_3646		(int)
	load	[r14+-120],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3649 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-32]
!   Data Move: _temp_3648 = *_temp_3649  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   _temp_3650 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_3645  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_3648  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+12]
!   Send message SynchReadSector
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_3644:
! END IF...
_Label_3640:
! ASSIGNMENT STATEMENT...
	mov	2781,r13		! source line 2781
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3651 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3651 = sector  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2782,r13		! source line 2782
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3652 = fcb + 36
	load	[r14+-136],r1
	add	r1,36,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_3652 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=posInBuffer  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=sourceAddr  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=bytesToMove  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+8]
!   Call the function
	mov	2786,r13		! source line 2786
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2787,r13		! source line 2787
	mov	"\0\0AS",r10
!   sourceAddr = sourceAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2788,r13		! source line 2788
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2789,r13		! source line 2789
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-132],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_3625
_Label_3627:
! SEND STATEMENT...
	mov	2796,r13		! source line 2796
	mov	"\0\0SE",r10
!   _temp_3653 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2798,r13		! source line 2798
	mov	"\0\0RE",r10
!   ReturnResult: 1  (sizeInBytes=1)
	mov	1,r1
	storeb	r1,[r14+8]
	add	r15,148,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_8:
	.word	_sourceFileName
	.word	_Label_3654
	.word	20		! total size of parameters
	.word	144		! frame size = 144
	.word	_Label_3655
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3656
	.word	12
	.word	4
	.word	_Label_3657
	.word	16
	.word	4
	.word	_Label_3658
	.word	20
	.word	4
	.word	_Label_3659
	.word	24
	.word	4
	.word	_Label_3660
	.word	-16
	.word	4
	.word	_Label_3661
	.word	-20
	.word	4
	.word	_Label_3662
	.word	-24
	.word	4
	.word	_Label_3663
	.word	-28
	.word	4
	.word	_Label_3664
	.word	-32
	.word	4
	.word	_Label_3665
	.word	-36
	.word	4
	.word	_Label_3666
	.word	-40
	.word	4
	.word	_Label_3667
	.word	-44
	.word	4
	.word	_Label_3668
	.word	-48
	.word	4
	.word	_Label_3669
	.word	-52
	.word	4
	.word	_Label_3670
	.word	-56
	.word	4
	.word	_Label_3671
	.word	-60
	.word	4
	.word	_Label_3672
	.word	-64
	.word	4
	.word	_Label_3673
	.word	-68
	.word	4
	.word	_Label_3674
	.word	-72
	.word	4
	.word	_Label_3675
	.word	-76
	.word	4
	.word	_Label_3676
	.word	-80
	.word	4
	.word	_Label_3677
	.word	-84
	.word	4
	.word	_Label_3678
	.word	-88
	.word	4
	.word	_Label_3679
	.word	-92
	.word	4
	.word	_Label_3680
	.word	-96
	.word	4
	.word	_Label_3681
	.word	-100
	.word	4
	.word	_Label_3682
	.word	-104
	.word	4
	.word	_Label_3683
	.word	-108
	.word	4
	.word	_Label_3684
	.word	-112
	.word	4
	.word	_Label_3685
	.word	-9
	.word	1
	.word	_Label_3686
	.word	-10
	.word	1
	.word	_Label_3687
	.word	-116
	.word	4
	.word	_Label_3688
	.word	-120
	.word	4
	.word	_Label_3689
	.word	-124
	.word	4
	.word	_Label_3690
	.word	-128
	.word	4
	.word	_Label_3691
	.word	-132
	.word	4
	.word	_Label_3692
	.word	-136
	.word	4
	.word	0
_Label_3654:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchWrite\0"
	.align
_Label_3655:
	.ascii	"Pself\0"
	.align
_Label_3656:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3657:
	.byte	'I'
	.ascii	"sourceAddr\0"
	.align
_Label_3658:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_3659:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3660:
	.byte	'?'
	.ascii	"_temp_3653\0"
	.align
_Label_3661:
	.byte	'?'
	.ascii	"_temp_3652\0"
	.align
_Label_3662:
	.byte	'?'
	.ascii	"_temp_3651\0"
	.align
_Label_3663:
	.byte	'?'
	.ascii	"_temp_3650\0"
	.align
_Label_3664:
	.byte	'?'
	.ascii	"_temp_3649\0"
	.align
_Label_3665:
	.byte	'?'
	.ascii	"_temp_3648\0"
	.align
_Label_3666:
	.byte	'?'
	.ascii	"_temp_3647\0"
	.align
_Label_3667:
	.byte	'?'
	.ascii	"_temp_3646\0"
	.align
_Label_3668:
	.byte	'?'
	.ascii	"_temp_3645\0"
	.align
_Label_3669:
	.byte	'?'
	.ascii	"_temp_3639\0"
	.align
_Label_3670:
	.byte	'?'
	.ascii	"_temp_3638\0"
	.align
_Label_3671:
	.byte	'?'
	.ascii	"_temp_3635\0"
	.align
_Label_3672:
	.byte	'?'
	.ascii	"_temp_3634\0"
	.align
_Label_3673:
	.byte	'?'
	.ascii	"_temp_3633\0"
	.align
_Label_3674:
	.byte	'?'
	.ascii	"_temp_3632\0"
	.align
_Label_3675:
	.byte	'?'
	.ascii	"_temp_3631\0"
	.align
_Label_3676:
	.byte	'?'
	.ascii	"_temp_3630\0"
	.align
_Label_3677:
	.byte	'?'
	.ascii	"_temp_3624\0"
	.align
_Label_3678:
	.byte	'?'
	.ascii	"_temp_3623\0"
	.align
_Label_3679:
	.byte	'?'
	.ascii	"_temp_3622\0"
	.align
_Label_3680:
	.byte	'?'
	.ascii	"_temp_3621\0"
	.align
_Label_3681:
	.byte	'?'
	.ascii	"_temp_3620\0"
	.align
_Label_3682:
	.byte	'?'
	.ascii	"_temp_3619\0"
	.align
_Label_3683:
	.byte	'?'
	.ascii	"_temp_3616\0"
	.align
_Label_3684:
	.byte	'?'
	.ascii	"_temp_3615\0"
	.align
_Label_3685:
	.byte	'C'
	.ascii	"_temp_3614\0"
	.align
_Label_3686:
	.byte	'C'
	.ascii	"_temp_3611\0"
	.align
_Label_3687:
	.byte	'?'
	.ascii	"_temp_3606\0"
	.align
_Label_3688:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_3689:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_3690:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_3691:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_3692:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  CLASS FileControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileControlBlock:
	.word	_Label_3693
	jmp	_Method_P_Kernel_FileControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_FileControlBlock_2	! 8:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_3693:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3694
	.word	_sourceFileName
	.word	357		! line number
	.word	40		! size of instances, in bytes
	.word	_P_Kernel_FileControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_3694:
	.ascii	"FileControlBlock\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_FileControlBlock_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileControlBlock_1,r1
	push	r1
	mov	2,r1
_Label_4056:
	push	r0
	sub	r1,1,r1
	bne	_Label_4056
	mov	2834,r13		! source line 2834
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2835,r13		! source line 2835
	mov	"\0\0AS",r10
!   numberOfUsers = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2836,r13		! source line 2836
	mov	"\0\0AS",r10
	mov	2836,r13		! source line 2836
	mov	"\0\0SE",r10
!   _temp_3695 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-12]
!   Send message GetAFrame
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=bufferPtr  sizeInBytes=4
	load	[r15],r1
	load	[r14+8],r2
	store	r1,[r2+28]
! ASSIGNMENT STATEMENT...
	mov	2837,r13		! source line 2837
	mov	"\0\0AS",r10
!   relativeSectorInBuffer = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! ASSIGNMENT STATEMENT...
	mov	2838,r13		! source line 2838
	mov	"\0\0AS",r10
!   bufferIsDirty = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+36]
! ASSIGNMENT STATEMENT...
	mov	2839,r13		! source line 2839
	mov	"\0\0AS",r10
!   startingSectorOfFile = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! RETURN STATEMENT...
	mov	2839,r13		! source line 2839
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileControlBlock_1:
	.word	_sourceFileName
	.word	_Label_3696
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_3697
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3698
	.word	-12
	.word	4
	.word	0
_Label_3696:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_3697:
	.ascii	"Pself\0"
	.align
_Label_3698:
	.byte	'?'
	.ascii	"_temp_3695\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_FileControlBlock_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileControlBlock_2,r1
	push	r1
	mov	7,r1
_Label_4057:
	push	r0
	sub	r1,1,r1
	bne	_Label_4057
	mov	2844,r13		! source line 2844
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3699 = _StringConst_156
	set	_StringConst_156,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_3699  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2845,r13		! source line 2845
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fcbID  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2846,r13		! source line 2846
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3700 = _StringConst_157
	set	_StringConst_157,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_3700  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2847,r13		! source line 2847
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=numberOfUsers  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2848,r13		! source line 2848
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3701 = _StringConst_158
	set	_StringConst_158,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3701  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2849,r13		! source line 2849
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=startingSectorOfFile  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2850,r13		! source line 2850
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3702 = _StringConst_159
	set	_StringConst_159,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3702  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2851,r13		! source line 2851
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeOfFileInBytes  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2852,r13		! source line 2852
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3703 = _StringConst_160
	set	_StringConst_160,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3703  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2853,r13		! source line 2853
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=bufferPtr  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2854,r13		! source line 2854
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_3704 = _StringConst_161
	set	_StringConst_161,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3704  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2855,r13		! source line 2855
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=relativeSectorInBuffer  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2856,r13		! source line 2856
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2857,r13		! source line 2857
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2857,r13		! source line 2857
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileControlBlock_2:
	.word	_sourceFileName
	.word	_Label_3705
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_3706
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3707
	.word	-12
	.word	4
	.word	_Label_3708
	.word	-16
	.word	4
	.word	_Label_3709
	.word	-20
	.word	4
	.word	_Label_3710
	.word	-24
	.word	4
	.word	_Label_3711
	.word	-28
	.word	4
	.word	_Label_3712
	.word	-32
	.word	4
	.word	0
_Label_3705:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_3706:
	.ascii	"Pself\0"
	.align
_Label_3707:
	.byte	'?'
	.ascii	"_temp_3704\0"
	.align
_Label_3708:
	.byte	'?'
	.ascii	"_temp_3703\0"
	.align
_Label_3709:
	.byte	'?'
	.ascii	"_temp_3702\0"
	.align
_Label_3710:
	.byte	'?'
	.ascii	"_temp_3701\0"
	.align
_Label_3711:
	.byte	'?'
	.ascii	"_temp_3700\0"
	.align
_Label_3712:
	.byte	'?'
	.ascii	"_temp_3699\0"
	.align
! 
! ===============  CLASS OpenFile  ===============
! 
! Dispatch Table:
! 
_P_Kernel_OpenFile:
	.word	_Label_3713
	jmp	_Method_P_Kernel_OpenFile_1	! 4:	Print
	jmp	_Method_P_Kernel_OpenFile_2	! 8:	ReadBytes
	jmp	_Method_P_Kernel_OpenFile_3	! 12:	ReadInt
	jmp	_Method_P_Kernel_OpenFile_4	! 16:	LoadExecutable
	.word	0
! 
! Class descriptor:
! 
_Label_3713:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3714
	.word	_sourceFileName
	.word	374		! line number
	.word	28		! size of instances, in bytes
	.word	_P_Kernel_OpenFile
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_3714:
	.ascii	"OpenFile\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_OpenFile_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_OpenFile_1,r1
	push	r1
	mov	4,r1
_Label_4058:
	push	r0
	sub	r1,1,r1
	bne	_Label_4058
	mov	2868,r13		! source line 2868
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3715 = _StringConst_162
	set	_StringConst_162,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3715  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2869,r13		! source line 2869
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=currentPos  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2870,r13		! source line 2870
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3716 = _StringConst_163
	set	_StringConst_163,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3716  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2871,r13		! source line 2871
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	2872,r13		! source line 2872
	mov	"\0\0IF",r10
!   if fcb == 0 then goto _Label_3718		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3718
!	jmp	_Label_3717
_Label_3717:
! THEN...
	mov	2873,r13		! source line 2873
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2873,r13		! source line 2873
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	load	[r14+8],r1
	load	[r1+20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
	jmp	_Label_3719
_Label_3718:
! ELSE...
	mov	2875,r13		! source line 2875
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_3720 = _StringConst_164
	set	_StringConst_164,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3720  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2875,r13		! source line 2875
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_3719:
! RETURN STATEMENT...
	mov	2872,r13		! source line 2872
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_OpenFile_1:
	.word	_sourceFileName
	.word	_Label_3721
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_3722
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3723
	.word	-12
	.word	4
	.word	_Label_3724
	.word	-16
	.word	4
	.word	_Label_3725
	.word	-20
	.word	4
	.word	0
_Label_3721:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_3722:
	.ascii	"Pself\0"
	.align
_Label_3723:
	.byte	'?'
	.ascii	"_temp_3720\0"
	.align
_Label_3724:
	.byte	'?'
	.ascii	"_temp_3716\0"
	.align
_Label_3725:
	.byte	'?'
	.ascii	"_temp_3715\0"
	.align
! 
! ===============  METHOD ReadBytes  ===============
! 
_Method_P_Kernel_OpenFile_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_OpenFile_2,r1
	push	r1
	mov	13,r1
_Label_4059:
	push	r0
	sub	r1,1,r1
	bne	_Label_4059
	mov	2881,r13		! source line 2881
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2891,r13		! source line 2891
	mov	"\0\0SE",r10
!   _temp_3726 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-36]
!   _temp_3727 = _temp_3726 + 4
	load	[r14+-36],r1
	add	r1,4,r1
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
	mov	2892,r13		! source line 2892
	mov	"\0\0AS",r10
!   pos = currentPos		(4 bytes)
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2893,r13		! source line 2893
	mov	"\0\0AS",r10
!   currentPos = currentPos + numBytes		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! SEND STATEMENT...
	mov	2894,r13		! source line 2894
	mov	"\0\0SE",r10
!   _temp_3728 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   _temp_3729 = _temp_3728 + 4
	load	[r14+-28],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message Unlock
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2895,r13		! source line 2895
	mov	"\0\0RE",r10
	mov	2895,r13		! source line 2895
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   _temp_3732 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_3731  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=targetAddr  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=pos  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=numBytes  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+16]
!   Send message SynchRead
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
!   Retrieve Result: targetName=_temp_3730  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   ReturnResult: _temp_3730  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_OpenFile_2:
	.word	_sourceFileName
	.word	_Label_3733
	.word	12		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_3734
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3735
	.word	12
	.word	4
	.word	_Label_3736
	.word	16
	.word	4
	.word	_Label_3737
	.word	-16
	.word	4
	.word	_Label_3738
	.word	-20
	.word	4
	.word	_Label_3739
	.word	-9
	.word	1
	.word	_Label_3740
	.word	-24
	.word	4
	.word	_Label_3741
	.word	-28
	.word	4
	.word	_Label_3742
	.word	-32
	.word	4
	.word	_Label_3743
	.word	-36
	.word	4
	.word	_Label_3744
	.word	-40
	.word	4
	.word	0
_Label_3733:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadBytes\0"
	.align
_Label_3734:
	.ascii	"Pself\0"
	.align
_Label_3735:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_3736:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3737:
	.byte	'?'
	.ascii	"_temp_3732\0"
	.align
_Label_3738:
	.byte	'?'
	.ascii	"_temp_3731\0"
	.align
_Label_3739:
	.byte	'C'
	.ascii	"_temp_3730\0"
	.align
_Label_3740:
	.byte	'?'
	.ascii	"_temp_3729\0"
	.align
_Label_3741:
	.byte	'?'
	.ascii	"_temp_3728\0"
	.align
_Label_3742:
	.byte	'?'
	.ascii	"_temp_3727\0"
	.align
_Label_3743:
	.byte	'?'
	.ascii	"_temp_3726\0"
	.align
_Label_3744:
	.byte	'I'
	.ascii	"pos\0"
	.align
! 
! ===============  METHOD ReadInt  ===============
! 
_Method_P_Kernel_OpenFile_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_OpenFile_3,r1
	push	r1
	mov	8,r1
_Label_4060:
	push	r0
	sub	r1,1,r1
	bne	_Label_4060
	mov	2900,r13		! source line 2900
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2905,r13		! source line 2905
	mov	"\0\0IF",r10
	mov	2905,r13		! source line 2905
	mov	"\0\0SE",r10
!   _temp_3748 = &i
	add	r14,-28,r1
	store	r1,[r14+-24]
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_3749) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_3748  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+8]
!   Send message ReadBytes
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Retrieve Result: targetName=_temp_3747  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_3747 then goto _Label_3746 else goto _Label_3745
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3745
	jmp	_Label_3746
_Label_3745:
! THEN...
	mov	2906,r13		! source line 2906
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3750 = _StringConst_165
	set	_StringConst_165,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3750  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2906,r13		! source line 2906
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3746:
! RETURN STATEMENT...
	mov	2908,r13		! source line 2908
	mov	"\0\0RE",r10
!   ReturnResult: i  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_OpenFile_3:
	.word	_sourceFileName
	.word	_Label_3751
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_3752
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3753
	.word	-16
	.word	4
	.word	_Label_3754
	.word	-20
	.word	4
	.word	_Label_3755
	.word	-24
	.word	4
	.word	_Label_3756
	.word	-9
	.word	1
	.word	_Label_3757
	.word	-28
	.word	4
	.word	0
_Label_3751:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadInt\0"
	.align
_Label_3752:
	.ascii	"Pself\0"
	.align
_Label_3753:
	.byte	'?'
	.ascii	"_temp_3750\0"
	.align
_Label_3754:
	.byte	'?'
	.ascii	"_temp_3749\0"
	.align
_Label_3755:
	.byte	'?'
	.ascii	"_temp_3748\0"
	.align
_Label_3756:
	.byte	'C'
	.ascii	"_temp_3747\0"
	.align
_Label_3757:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD LoadExecutable  ===============
! 
_Method_P_Kernel_OpenFile_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_OpenFile_4,r1
	push	r1
	mov	68,r1
_Label_4061:
	push	r0
	sub	r1,1,r1
	bne	_Label_4061
	mov	2913,r13		! source line 2913
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2939,r13		! source line 2939
	mov	"\0\0IF",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3761 = addrSpace + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-216]
!   Data Move: _temp_3760 = *_temp_3761  (sizeInBytes=4)
	load	[r14+-216],r1
	load	[r1],r1
	store	r1,[r14+-220]
!   if intIsZero (_temp_3760) then goto _Label_3759
	load	[r14+-220],r1
	cmp	r1,r0
	be	_Label_3759
!	jmp	_Label_3758
_Label_3758:
! THEN...
	mov	2940,r13		! source line 2940
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3762 = _StringConst_166
	set	_StringConst_166,r1
	store	r1,[r14+-212]
!   Prepare Argument: offset=8  value=_temp_3762  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2940,r13		! source line 2940
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3759:
! IF STATEMENT...
	mov	2944,r13		! source line 2944
	mov	"\0\0IF",r10
	mov	2944,r13		! source line 2944
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-204]
!   if intIsZero (_temp_3766) then goto _runtimeErrorNullPointer
	load	[r14+-204],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-204],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_3765  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-208]
!   if _temp_3765 == 1112300152 then goto _Label_3764		(int)
	load	[r14+-208],r1
	set	1112300152,r2
	cmp	r1,r2
	be	_Label_3764
!	jmp	_Label_3763
_Label_3763:
! THEN...
	mov	2945,r13		! source line 2945
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3767 = _StringConst_167
	set	_StringConst_167,r1
	store	r1,[r14+-200]
!   Prepare Argument: offset=8  value=_temp_3767  sizeInBytes=4
	load	[r14+-200],r1
	store	r1,[r15+0]
!   Call the function
	mov	2945,r13		! source line 2945
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2946,r13		! source line 2946
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3764:
! ASSIGNMENT STATEMENT...
	mov	2950,r13		! source line 2950
	mov	"\0\0AS",r10
	mov	2950,r13		! source line 2950
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-196]
!   if intIsZero (_temp_3768) then goto _runtimeErrorNullPointer
	load	[r14+-196],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-196],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=textSize  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-232]
! ASSIGNMENT STATEMENT...
	mov	2951,r13		! source line 2951
	mov	"\0\0AS",r10
	mov	2951,r13		! source line 2951
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-192]
!   if intIsZero (_temp_3769) then goto _runtimeErrorNullPointer
	load	[r14+-192],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-192],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=dataSize  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-236]
! ASSIGNMENT STATEMENT...
	mov	2952,r13		! source line 2952
	mov	"\0\0AS",r10
	mov	2952,r13		! source line 2952
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_3770) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-188],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=bssSize  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-240]
! ASSIGNMENT STATEMENT...
	mov	2953,r13		! source line 2953
	mov	"\0\0AS",r10
	mov	2953,r13		! source line 2953
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-184]
!   if intIsZero (_temp_3771) then goto _runtimeErrorNullPointer
	load	[r14+-184],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-184],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=textStart  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-244]
! ASSIGNMENT STATEMENT...
	mov	2954,r13		! source line 2954
	mov	"\0\0AS",r10
	mov	2954,r13		! source line 2954
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-180]
!   if intIsZero (_temp_3772) then goto _runtimeErrorNullPointer
	load	[r14+-180],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-180],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=dataStart  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-248]
! ASSIGNMENT STATEMENT...
	mov	2955,r13		! source line 2955
	mov	"\0\0AS",r10
	mov	2955,r13		! source line 2955
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-176]
!   if intIsZero (_temp_3773) then goto _runtimeErrorNullPointer
	load	[r14+-176],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-176],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=bssStart  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-252]
! IF STATEMENT...
	mov	2958,r13		! source line 2958
	mov	"\0\0IF",r10
!   _temp_3776 = textSize rem 8192		(int)
	load	[r14+-232],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-172]
!   if intIsZero (_temp_3776) then goto _Label_3775
	load	[r14+-172],r1
	cmp	r1,r0
	be	_Label_3775
!	jmp	_Label_3774
_Label_3774:
! THEN...
	mov	2959,r13		! source line 2959
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3777 = _StringConst_168
	set	_StringConst_168,r1
	store	r1,[r14+-168]
!   Prepare Argument: offset=8  value=_temp_3777  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+0]
!   Call the function
	mov	2959,r13		! source line 2959
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2960,r13		! source line 2960
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3775:
! ASSIGNMENT STATEMENT...
	mov	2962,r13		! source line 2962
	mov	"\0\0AS",r10
!   textSizeInPages = textSize div 8192		(int)
	load	[r14+-232],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-260]
! IF STATEMENT...
	mov	2966,r13		! source line 2966
	mov	"\0\0IF",r10
!   if intIsZero (textStart) then goto _Label_3779
	load	[r14+-244],r1
	cmp	r1,r0
	be	_Label_3779
!	jmp	_Label_3778
_Label_3778:
! THEN...
	mov	2967,r13		! source line 2967
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3780 = _StringConst_169
	set	_StringConst_169,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_3780  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	2967,r13		! source line 2967
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2968,r13		! source line 2968
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3779:
! IF STATEMENT...
	mov	2972,r13		! source line 2972
	mov	"\0\0IF",r10
!   _temp_3783 = dataSize rem 8192		(int)
	load	[r14+-236],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
!   if intIsZero (_temp_3783) then goto _Label_3782
	load	[r14+-160],r1
	cmp	r1,r0
	be	_Label_3782
!	jmp	_Label_3781
_Label_3781:
! THEN...
	mov	2973,r13		! source line 2973
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3784 = _StringConst_170
	set	_StringConst_170,r1
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_3784  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	2973,r13		! source line 2973
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2974,r13		! source line 2974
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3782:
! IF STATEMENT...
	mov	2976,r13		! source line 2976
	mov	"\0\0IF",r10
!   _temp_3787 = textStart + textSize		(int)
	load	[r14+-244],r1
	load	[r14+-232],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   if dataStart == _temp_3787 then goto _Label_3786		(int)
	load	[r14+-248],r1
	load	[r14+-152],r2
	cmp	r1,r2
	be	_Label_3786
!	jmp	_Label_3785
_Label_3785:
! THEN...
	mov	2977,r13		! source line 2977
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3788 = _StringConst_171
	set	_StringConst_171,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_3788  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	2977,r13		! source line 2977
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2978,r13		! source line 2978
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3786:
! ASSIGNMENT STATEMENT...
	mov	2980,r13		! source line 2980
	mov	"\0\0AS",r10
!   dataSizeInPages = dataSize div 8192		(int)
	load	[r14+-236],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-264]
! IF STATEMENT...
	mov	2983,r13		! source line 2983
	mov	"\0\0IF",r10
!   _temp_3791 = bssSize rem 8192		(int)
	load	[r14+-240],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
!   if intIsZero (_temp_3791) then goto _Label_3790
	load	[r14+-144],r1
	cmp	r1,r0
	be	_Label_3790
!	jmp	_Label_3789
_Label_3789:
! THEN...
	mov	2984,r13		! source line 2984
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3792 = _StringConst_172
	set	_StringConst_172,r1
	store	r1,[r14+-140]
!   Prepare Argument: offset=8  value=_temp_3792  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+0]
!   Call the function
	mov	2984,r13		! source line 2984
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2985,r13		! source line 2985
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3790:
! IF STATEMENT...
	mov	2987,r13		! source line 2987
	mov	"\0\0IF",r10
!   _temp_3795 = dataStart + dataSize		(int)
	load	[r14+-248],r1
	load	[r14+-236],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
!   if bssStart == _temp_3795 then goto _Label_3794		(int)
	load	[r14+-252],r1
	load	[r14+-136],r2
	cmp	r1,r2
	be	_Label_3794
!	jmp	_Label_3793
_Label_3793:
! THEN...
	mov	2988,r13		! source line 2988
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3796 = _StringConst_173
	set	_StringConst_173,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_3796  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	2988,r13		! source line 2988
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2989,r13		! source line 2989
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3794:
! ASSIGNMENT STATEMENT...
	mov	2991,r13		! source line 2991
	mov	"\0\0AS",r10
!   bssSizeInPages = bssSize div 8192		(int)
	load	[r14+-240],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-268]
! ASSIGNMENT STATEMENT...
	mov	2994,r13		! source line 2994
	mov	"\0\0AS",r10
!   _temp_3799 = textSizeInPages + dataSizeInPages		(int)
	load	[r14+-260],r1
	load	[r14+-264],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
!   _temp_3798 = _temp_3799 + bssSizeInPages		(int)
	load	[r14+-120],r1
	load	[r14+-268],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
!   _temp_3797 = _temp_3798 + 1		(int)
	load	[r14+-124],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
!   i = _temp_3797 + 0		(int)
	load	[r14+-128],r1
	mov	0,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
! IF STATEMENT...
	mov	3009,r13		! source line 3009
	mov	"\0\0IF",r10
!   if i <= 20 then goto _Label_3801		(int)
	load	[r14+-256],r1
	mov	20,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3801
!	jmp	_Label_3800
_Label_3800:
! THEN...
	mov	3010,r13		! source line 3010
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3802 = _StringConst_174
	set	_StringConst_174,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_3802  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	3010,r13		! source line 3010
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_3803 = _StringConst_175
	set	_StringConst_175,r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_3803  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+4]
!   Call the function
	mov	3011,r13		! source line 3011
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_3804 = _StringConst_176
	set	_StringConst_176,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_3804  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+4]
!   Call the function
	mov	3012,r13		! source line 3012
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! RETURN STATEMENT...
	mov	3013,r13		! source line 3013
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3801:
! SEND STATEMENT...
	mov	3015,r13		! source line 3015
	mov	"\0\0SE",r10
!   _temp_3805 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=i  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+8]
!   Send message GetNewFrames
	load	[r14+-104],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! IF STATEMENT...
	mov	3021,r13		! source line 3021
	mov	"\0\0IF",r10
	mov	3021,r13		! source line 3021
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-96]
!   if intIsZero (_temp_3809) then goto _runtimeErrorNullPointer
	load	[r14+-96],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_3808  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-100]
!   if _temp_3808 == 707406378 then goto _Label_3807		(int)
	load	[r14+-100],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3807
!	jmp	_Label_3806
_Label_3806:
! THEN...
	mov	3022,r13		! source line 3022
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3810 = _StringConst_177
	set	_StringConst_177,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_3810  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	3022,r13		! source line 3022
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3023,r13		! source line 3023
	mov	"\0\0SE",r10
!   _temp_3811 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-88],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! RETURN STATEMENT...
	mov	3024,r13		! source line 3024
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3807:
! ASSIGNMENT STATEMENT...
	mov	3028,r13		! source line 3028
	mov	"\0\0AS",r10
!   nextVirtPage = textStart div 8192		(int)
	load	[r14+-244],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
! FOR STATEMENT...
	mov	3029,r13		! source line 3029
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3816 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-84]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3817 = textSizeInPages		(4 bytes)
	load	[r14+-260],r1
	store	r1,[r14+-80]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3816  (sizeInBytes=4)
	load	[r14+-84],r1
	store	r1,[r14+-256]
_Label_3812:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3817 then goto _Label_3815		
	load	[r14+-256],r1
	load	[r14+-80],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3815
_Label_3813:
	mov	3029,r13		! source line 3029
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	3030,r13		! source line 3030
	mov	"\0\0AS",r10
	mov	3030,r13		! source line 3030
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=nextVirtPage  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=addr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-228]
! IF STATEMENT...
	mov	3033,r13		! source line 3033
	mov	"\0\0IF",r10
	mov	3033,r13		! source line 3033
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_3821) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=addr  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=8192  sizeInBytes=4
	mov	8192,r1
	store	r1,[r15+8]
!   Send message ReadBytes
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Retrieve Result: targetName=_temp_3820  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_3820 then goto _Label_3819 else goto _Label_3818
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3818
	jmp	_Label_3819
_Label_3818:
! THEN...
	mov	3034,r13		! source line 3034
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3822 = _StringConst_178
	set	_StringConst_178,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_3822  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	3034,r13		! source line 3034
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3035,r13		! source line 3035
	mov	"\0\0SE",r10
!   _temp_3823 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! RETURN STATEMENT...
	mov	3036,r13		! source line 3036
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3819:
! SEND STATEMENT...
	mov	3038,r13		! source line 3038
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=nextVirtPage  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Send message ClearWritable
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,64,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	3039,r13		! source line 3039
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_3814:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_3812
! END FOR
_Label_3815:
! IF STATEMENT...
	mov	3043,r13		! source line 3043
	mov	"\0\0IF",r10
	mov	3043,r13		! source line 3043
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_3827) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_3826  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
!   if _temp_3826 == 707406378 then goto _Label_3825		(int)
	load	[r14+-64],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3825
!	jmp	_Label_3824
_Label_3824:
! THEN...
	mov	3044,r13		! source line 3044
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3828 = _StringConst_179
	set	_StringConst_179,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_3828  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	3044,r13		! source line 3044
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3045,r13		! source line 3045
	mov	"\0\0SE",r10
!   _temp_3829 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! RETURN STATEMENT...
	mov	3046,r13		! source line 3046
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3825:
! FOR STATEMENT...
	mov	3050,r13		! source line 3050
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3834 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3835 = dataSizeInPages		(4 bytes)
	load	[r14+-264],r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3834  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-256]
_Label_3830:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3835 then goto _Label_3833		
	load	[r14+-256],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3833
_Label_3831:
	mov	3050,r13		! source line 3050
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	3051,r13		! source line 3051
	mov	"\0\0AS",r10
	mov	3051,r13		! source line 3051
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=nextVirtPage  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=addr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-228]
! IF STATEMENT...
	mov	3054,r13		! source line 3054
	mov	"\0\0IF",r10
	mov	3054,r13		! source line 3054
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_3839) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=addr  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=8192  sizeInBytes=4
	mov	8192,r1
	store	r1,[r15+8]
!   Send message ReadBytes
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Retrieve Result: targetName=_temp_3838  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_3838 then goto _Label_3837 else goto _Label_3836
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3836
	jmp	_Label_3837
_Label_3836:
! THEN...
	mov	3055,r13		! source line 3055
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3840 = _StringConst_180
	set	_StringConst_180,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_3840  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	3055,r13		! source line 3055
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3056,r13		! source line 3056
	mov	"\0\0SE",r10
!   _temp_3841 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! RETURN STATEMENT...
	mov	3057,r13		! source line 3057
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3837:
! ASSIGNMENT STATEMENT...
	mov	3059,r13		! source line 3059
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_3832:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_3830
! END FOR
_Label_3833:
! IF STATEMENT...
	mov	3063,r13		! source line 3063
	mov	"\0\0IF",r10
	mov	3063,r13		! source line 3063
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_3845) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_3844  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   if _temp_3844 == 707406378 then goto _Label_3843		(int)
	load	[r14+-28],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3843
!	jmp	_Label_3842
_Label_3842:
! THEN...
	mov	3064,r13		! source line 3064
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3846 = _StringConst_181
	set	_StringConst_181,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3846  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	3064,r13		! source line 3064
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3065,r13		! source line 3065
	mov	"\0\0SE",r10
!   _temp_3847 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! RETURN STATEMENT...
	mov	3066,r13		! source line 3066
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3843:
! ASSIGNMENT STATEMENT...
	mov	3070,r13		! source line 3070
	mov	"\0\0AS",r10
	mov	3070,r13		! source line 3070
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=nextVirtPage  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=addr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-228]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=addr  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=bssSize  sizeInBytes=4
	load	[r14+-240],r1
	store	r1,[r15+4]
!   Call the function
	mov	3074,r13		! source line 3074
	mov	"\0\0CE",r10
	call	MemoryZero
! RETURN STATEMENT...
	mov	3077,r13		! source line 3077
	mov	"\0\0RE",r10
!   ReturnResult: textStart  (sizeInBytes=4)
	load	[r14+-244],r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_OpenFile_4:
	.word	_sourceFileName
	.word	_Label_3848
	.word	8		! total size of parameters
	.word	272		! frame size = 272
	.word	_Label_3849
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3850
	.word	12
	.word	4
	.word	_Label_3851
	.word	-16
	.word	4
	.word	_Label_3852
	.word	-20
	.word	4
	.word	_Label_3853
	.word	-24
	.word	4
	.word	_Label_3854
	.word	-28
	.word	4
	.word	_Label_3855
	.word	-32
	.word	4
	.word	_Label_3856
	.word	-36
	.word	4
	.word	_Label_3857
	.word	-40
	.word	4
	.word	_Label_3858
	.word	-9
	.word	1
	.word	_Label_3859
	.word	-44
	.word	4
	.word	_Label_3860
	.word	-48
	.word	4
	.word	_Label_3861
	.word	-52
	.word	4
	.word	_Label_3862
	.word	-56
	.word	4
	.word	_Label_3863
	.word	-60
	.word	4
	.word	_Label_3864
	.word	-64
	.word	4
	.word	_Label_3865
	.word	-68
	.word	4
	.word	_Label_3866
	.word	-72
	.word	4
	.word	_Label_3867
	.word	-76
	.word	4
	.word	_Label_3868
	.word	-10
	.word	1
	.word	_Label_3869
	.word	-80
	.word	4
	.word	_Label_3870
	.word	-84
	.word	4
	.word	_Label_3871
	.word	-88
	.word	4
	.word	_Label_3872
	.word	-92
	.word	4
	.word	_Label_3873
	.word	-96
	.word	4
	.word	_Label_3874
	.word	-100
	.word	4
	.word	_Label_3875
	.word	-104
	.word	4
	.word	_Label_3876
	.word	-108
	.word	4
	.word	_Label_3877
	.word	-112
	.word	4
	.word	_Label_3878
	.word	-116
	.word	4
	.word	_Label_3879
	.word	-120
	.word	4
	.word	_Label_3880
	.word	-124
	.word	4
	.word	_Label_3881
	.word	-128
	.word	4
	.word	_Label_3882
	.word	-132
	.word	4
	.word	_Label_3883
	.word	-136
	.word	4
	.word	_Label_3884
	.word	-140
	.word	4
	.word	_Label_3885
	.word	-144
	.word	4
	.word	_Label_3886
	.word	-148
	.word	4
	.word	_Label_3887
	.word	-152
	.word	4
	.word	_Label_3888
	.word	-156
	.word	4
	.word	_Label_3889
	.word	-160
	.word	4
	.word	_Label_3890
	.word	-164
	.word	4
	.word	_Label_3891
	.word	-168
	.word	4
	.word	_Label_3892
	.word	-172
	.word	4
	.word	_Label_3893
	.word	-176
	.word	4
	.word	_Label_3894
	.word	-180
	.word	4
	.word	_Label_3895
	.word	-184
	.word	4
	.word	_Label_3896
	.word	-188
	.word	4
	.word	_Label_3897
	.word	-192
	.word	4
	.word	_Label_3898
	.word	-196
	.word	4
	.word	_Label_3899
	.word	-200
	.word	4
	.word	_Label_3900
	.word	-204
	.word	4
	.word	_Label_3901
	.word	-208
	.word	4
	.word	_Label_3902
	.word	-212
	.word	4
	.word	_Label_3903
	.word	-216
	.word	4
	.word	_Label_3904
	.word	-220
	.word	4
	.word	_Label_3905
	.word	-224
	.word	4
	.word	_Label_3906
	.word	-228
	.word	4
	.word	_Label_3907
	.word	-232
	.word	4
	.word	_Label_3908
	.word	-236
	.word	4
	.word	_Label_3909
	.word	-240
	.word	4
	.word	_Label_3910
	.word	-244
	.word	4
	.word	_Label_3911
	.word	-248
	.word	4
	.word	_Label_3912
	.word	-252
	.word	4
	.word	_Label_3913
	.word	-256
	.word	4
	.word	_Label_3914
	.word	-260
	.word	4
	.word	_Label_3915
	.word	-264
	.word	4
	.word	_Label_3916
	.word	-268
	.word	4
	.word	0
_Label_3848:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"LoadExecutable\0"
	.align
_Label_3849:
	.ascii	"Pself\0"
	.align
_Label_3850:
	.byte	'P'
	.ascii	"addrSpace\0"
	.align
_Label_3851:
	.byte	'?'
	.ascii	"_temp_3847\0"
	.align
_Label_3852:
	.byte	'?'
	.ascii	"_temp_3846\0"
	.align
_Label_3853:
	.byte	'?'
	.ascii	"_temp_3845\0"
	.align
_Label_3854:
	.byte	'?'
	.ascii	"_temp_3844\0"
	.align
_Label_3855:
	.byte	'?'
	.ascii	"_temp_3841\0"
	.align
_Label_3856:
	.byte	'?'
	.ascii	"_temp_3840\0"
	.align
_Label_3857:
	.byte	'?'
	.ascii	"_temp_3839\0"
	.align
_Label_3858:
	.byte	'C'
	.ascii	"_temp_3838\0"
	.align
_Label_3859:
	.byte	'?'
	.ascii	"_temp_3835\0"
	.align
_Label_3860:
	.byte	'?'
	.ascii	"_temp_3834\0"
	.align
_Label_3861:
	.byte	'?'
	.ascii	"_temp_3829\0"
	.align
_Label_3862:
	.byte	'?'
	.ascii	"_temp_3828\0"
	.align
_Label_3863:
	.byte	'?'
	.ascii	"_temp_3827\0"
	.align
_Label_3864:
	.byte	'?'
	.ascii	"_temp_3826\0"
	.align
_Label_3865:
	.byte	'?'
	.ascii	"_temp_3823\0"
	.align
_Label_3866:
	.byte	'?'
	.ascii	"_temp_3822\0"
	.align
_Label_3867:
	.byte	'?'
	.ascii	"_temp_3821\0"
	.align
_Label_3868:
	.byte	'C'
	.ascii	"_temp_3820\0"
	.align
_Label_3869:
	.byte	'?'
	.ascii	"_temp_3817\0"
	.align
_Label_3870:
	.byte	'?'
	.ascii	"_temp_3816\0"
	.align
_Label_3871:
	.byte	'?'
	.ascii	"_temp_3811\0"
	.align
_Label_3872:
	.byte	'?'
	.ascii	"_temp_3810\0"
	.align
_Label_3873:
	.byte	'?'
	.ascii	"_temp_3809\0"
	.align
_Label_3874:
	.byte	'?'
	.ascii	"_temp_3808\0"
	.align
_Label_3875:
	.byte	'?'
	.ascii	"_temp_3805\0"
	.align
_Label_3876:
	.byte	'?'
	.ascii	"_temp_3804\0"
	.align
_Label_3877:
	.byte	'?'
	.ascii	"_temp_3803\0"
	.align
_Label_3878:
	.byte	'?'
	.ascii	"_temp_3802\0"
	.align
_Label_3879:
	.byte	'?'
	.ascii	"_temp_3799\0"
	.align
_Label_3880:
	.byte	'?'
	.ascii	"_temp_3798\0"
	.align
_Label_3881:
	.byte	'?'
	.ascii	"_temp_3797\0"
	.align
_Label_3882:
	.byte	'?'
	.ascii	"_temp_3796\0"
	.align
_Label_3883:
	.byte	'?'
	.ascii	"_temp_3795\0"
	.align
_Label_3884:
	.byte	'?'
	.ascii	"_temp_3792\0"
	.align
_Label_3885:
	.byte	'?'
	.ascii	"_temp_3791\0"
	.align
_Label_3886:
	.byte	'?'
	.ascii	"_temp_3788\0"
	.align
_Label_3887:
	.byte	'?'
	.ascii	"_temp_3787\0"
	.align
_Label_3888:
	.byte	'?'
	.ascii	"_temp_3784\0"
	.align
_Label_3889:
	.byte	'?'
	.ascii	"_temp_3783\0"
	.align
_Label_3890:
	.byte	'?'
	.ascii	"_temp_3780\0"
	.align
_Label_3891:
	.byte	'?'
	.ascii	"_temp_3777\0"
	.align
_Label_3892:
	.byte	'?'
	.ascii	"_temp_3776\0"
	.align
_Label_3893:
	.byte	'?'
	.ascii	"_temp_3773\0"
	.align
_Label_3894:
	.byte	'?'
	.ascii	"_temp_3772\0"
	.align
_Label_3895:
	.byte	'?'
	.ascii	"_temp_3771\0"
	.align
_Label_3896:
	.byte	'?'
	.ascii	"_temp_3770\0"
	.align
_Label_3897:
	.byte	'?'
	.ascii	"_temp_3769\0"
	.align
_Label_3898:
	.byte	'?'
	.ascii	"_temp_3768\0"
	.align
_Label_3899:
	.byte	'?'
	.ascii	"_temp_3767\0"
	.align
_Label_3900:
	.byte	'?'
	.ascii	"_temp_3766\0"
	.align
_Label_3901:
	.byte	'?'
	.ascii	"_temp_3765\0"
	.align
_Label_3902:
	.byte	'?'
	.ascii	"_temp_3762\0"
	.align
_Label_3903:
	.byte	'?'
	.ascii	"_temp_3761\0"
	.align
_Label_3904:
	.byte	'?'
	.ascii	"_temp_3760\0"
	.align
_Label_3905:
	.byte	'I'
	.ascii	"nextVirtPage\0"
	.align
_Label_3906:
	.byte	'I'
	.ascii	"addr\0"
	.align
_Label_3907:
	.byte	'I'
	.ascii	"textSize\0"
	.align
_Label_3908:
	.byte	'I'
	.ascii	"dataSize\0"
	.align
_Label_3909:
	.byte	'I'
	.ascii	"bssSize\0"
	.align
_Label_3910:
	.byte	'I'
	.ascii	"textStart\0"
	.align
_Label_3911:
	.byte	'I'
	.ascii	"dataStart\0"
	.align
_Label_3912:
	.byte	'I'
	.ascii	"bssStart\0"
	.align
_Label_3913:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_3914:
	.byte	'I'
	.ascii	"textSizeInPages\0"
	.align
_Label_3915:
	.byte	'I'
	.ascii	"dataSizeInPages\0"
	.align
_Label_3916:
	.byte	'I'
	.ascii	"bssSizeInPages\0"
	.align
