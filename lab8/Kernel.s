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
	.export	_P_Kernel_SerialDriver
	.export	_Method_P_Kernel_SerialDriver_1
	.export	_Method_P_Kernel_SerialDriver_2
	.export	_Method_P_Kernel_SerialDriver_3
	.export	_Method_P_Kernel_SerialDriver_4
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
	.export	_P_Kernel_serialDriver
	.export	_P_Kernel_serialHasBeenInitialized
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
_P_Kernel_serialDriver:
	.skip	4308
_P_Kernel_fileManager:
	.skip	800
_P_Kernel_serialHasBeenInitialized:
	.skip	1
	.align
! String constants
_StringConst_182:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (3)\n"
	.align
_StringConst_181:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_180:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (2)\n"
	.align
_StringConst_179:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_178:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (1)\n"
	.align
_StringConst_177:
	.word	40			! length
	.ascii	"LoadExecutable: MAX_PAGES_PER_VIRT_SPACE"
	.align
_StringConst_176:
	.word	53			! length
	.ascii	"LoadExecutable: Number of pages in this address space"
	.align
_StringConst_175:
	.word	61			! length
	.ascii	"LoadExecutable: This virtual address space exceeds the limit\n"
	.align
_StringConst_174:
	.word	49			! length
	.ascii	"LoadExecutable: bssStart != dataStart + dataSize\n"
	.align
_StringConst_173:
	.word	65			! length
	.ascii	"LoadExecutable: The bss segment size not a multiple of page size\n"
	.align
_StringConst_172:
	.word	50			! length
	.ascii	"LoadExecutable: dataStart != textStart + textSize\n"
	.align
_StringConst_171:
	.word	66			! length
	.ascii	"LoadExecutable: The data segment size not a multiple of page size\n"
	.align
_StringConst_170:
	.word	95			! length
	.ascii	"LoadExecutable: The environment size does not match the \'loadAddr\' info supplied to the linker\n"
	.align
_StringConst_169:
	.word	66			! length
	.ascii	"LoadExecutable: The text segment size not a multiple of page size\n"
	.align
_StringConst_168:
	.word	33			! length
	.ascii	"LoadExecutable: Bad magic number\n"
	.align
_StringConst_167:
	.word	55			! length
	.ascii	"LoadExecutable: This virtual address space is not empty"
	.align
_StringConst_166:
	.word	32			! length
	.ascii	"Within ReadInt: ReadBytes failed"
	.align
_StringConst_165:
	.word	5			! length
	.ascii	"null\n"
	.align
_StringConst_164:
	.word	6			! length
	.ascii	", fcb="
	.align
_StringConst_163:
	.word	28			! length
	.ascii	"    OPEN FILE:   currentPos="
	.align
_StringConst_162:
	.word	26			! length
	.ascii	",  relativeSectorInBuffer="
	.align
_StringConst_161:
	.word	13			! length
	.ascii	",  bufferPtr="
	.align
_StringConst_160:
	.word	21			! length
	.ascii	",  sizeOfFileInBytes="
	.align
_StringConst_159:
	.word	18			! length
	.ascii	",  startingSector="
	.align
_StringConst_158:
	.word	17			! length
	.ascii	",  numberOfUsers="
	.align
_StringConst_157:
	.word	6			! length
	.ascii	"fcbID="
	.align
_StringConst_156:
	.word	48			! length
	.ascii	"FileManager.SynchWrite: file not properly opened"
	.align
_StringConst_155:
	.word	47			! length
	.ascii	"FileManager.SynchRead: file not properly opened"
	.align
_StringConst_154:
	.word	67			! length
	.ascii	"FileManager.Flush: buffer is dirty but relativeSectorInBuffer =  -1"
	.align
_StringConst_153:
	.word	10			! length
	.ascii	"openisnull"
	.align
_StringConst_152:
	.word	72			! length
	.ascii	"In FileManager.Open: a free FCB appears not to have been closed properly"
	.align
_StringConst_151:
	.word	51			! length
	.ascii	"Magic number in sector 0 of stub file system is bad"
	.align
_StringConst_150:
	.word	36			! length
	.ascii	"Here is the FREE list of OpenFiles:\n"
	.align
_StringConst_149:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_148:
	.word	5			! length
	.ascii	":  0x"
	.align
_StringConst_147:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_146:
	.word	30			! length
	.ascii	"Here is the OpenFile table...\n"
	.align
_StringConst_145:
	.word	47			! length
	.ascii	"Here is the FREE list of FileControlBlocks:\n   "
	.align
_StringConst_144:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_143:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_142:
	.word	38			! length
	.ascii	"Here is the FileControlBlock table...\n"
	.align
_StringConst_141:
	.word	29			! length
	.ascii	"Initializing File Manager...\n"
	.align
_StringConst_140:
	.word	40			! length
	.ascii	"SynchWriteSector: Unexpected status code"
	.align
_StringConst_139:
	.word	52			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad command word"
	.align
_StringConst_138:
	.word	95			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_137:
	.word	76			! length
	.ascii	"Disk I/O error in SynchWriteSector: Attempt to access invalid memory address"
	.align
_StringConst_136:
	.word	99			! length
	.ascii	"Disk I/O error in SynchWriteSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_135:
	.word	39			! length
	.ascii	"SynchReadSector: Unexpected status code"
	.align
_StringConst_134:
	.word	51			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad command word"
	.align
_StringConst_133:
	.word	94			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_132:
	.word	75			! length
	.ascii	"Disk I/O error in SynchReadSector: Attempt to access invalid memory address"
	.align
_StringConst_131:
	.word	98			! length
	.ascii	"Disk I/O error in SynchReadSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_130:
	.word	28			! length
	.ascii	"Initializing Disk Driver...\n"
	.align
_StringConst_129:
	.word	38			! length
	.ascii	"  Virtual page is not marked VALID!!!\n"
	.align
_StringConst_128:
	.word	38			! length
	.ascii	"  Virtual page number is too large!!!\n"
	.align
_StringConst_127:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_126:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_125:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_124:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_123:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_122:
	.word	9			! length
	.ascii	"         "
	.align
_StringConst_121:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_120:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_119:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_118:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_117:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_116:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_115:
	.word	10			! length
	.ascii	"          "
	.align
_StringConst_114:
	.word	4			! length
	.ascii	"    "
	.align
_StringConst_113:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_112:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_111:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_110:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_109:
	.word	109			! length
	.ascii	"     ==========   ==========     ==========  ==========  ==============  =====  ==========  =========  =====\n"
	.align
_StringConst_108:
	.word	109			! length
	.ascii	"        addr        entry          Virtual    Physical   Undefined Bits  Dirty  Referenced  Writeable  Valid\n"
	.align
_StringConst_107:
	.word	35			! length
	.ascii	"  Here are the frames in use: \n    "
	.align
_StringConst_106:
	.word	18			! length
	.ascii	"  numberFreeFrames"
	.align
_StringConst_105:
	.word	15			! length
	.ascii	"FRAME MANAGER:\n"
	.align
_StringConst_104:
	.word	89			! length
	.ascii	"Kernel code size appears to have grown too large and is overflowing into the frame region"
	.align
_StringConst_103:
	.word	30			! length
	.ascii	"Initializing Frame Manager...\n"
	.align
_StringConst_102:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_101:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_100:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_99:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_98:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_97:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_96:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_95:
	.word	13			! length
	.ascii	", exitStatus="
	.align
_StringConst_94:
	.word	13			! length
	.ascii	", parentsPid="
	.align
_StringConst_93:
	.word	33			! length
	.ascii	"Bad status in ProcessControlBlock"
	.align
_StringConst_92:
	.word	4			! length
	.ascii	"FREE"
	.align
_StringConst_91:
	.word	6			! length
	.ascii	"ZOMBIE"
	.align
_StringConst_90:
	.word	6			! length
	.ascii	"ACTIVE"
	.align
_StringConst_89:
	.word	9			! length
	.ascii	", status="
	.align
_StringConst_88:
	.word	8			! length
	.ascii	")   pid="
	.align
_StringConst_87:
	.word	30			! length
	.ascii	"  ProcessControlBlock   (addr="
	.align
_StringConst_86:
	.word	15			! length
	.ascii	"    myThread = "
	.align
_StringConst_85:
	.word	37			! length
	.ascii	"Here is the FREE list of Threads:\n   "
	.align
_StringConst_84:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_83:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_82:
	.word	28			! length
	.ascii	"Here is the thread table...\n"
	.align
_StringConst_81:
	.word	14			! length
	.ascii	"ThreadNameHere"
	.align
_StringConst_80:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_79:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_78:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_77:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_76:
	.word	20			! length
	.ascii	"    user registers:\n"
	.align
_StringConst_75:
	.word	20			! length
	.ascii	"    is user thread: "
	.align
_StringConst_74:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_73:
	.word	20			! length
	.ascii	"    status = UNUSED\n"
	.align
_StringConst_72:
	.word	21			! length
	.ascii	"    status = BLOCKED\n"
	.align
_StringConst_71:
	.word	21			! length
	.ascii	"    status = RUNNING\n"
	.align
_StringConst_70:
	.word	19			! length
	.ascii	"    status = READY\n"
	.align
_StringConst_69:
	.word	26			! length
	.ascii	"    status = JUST_CREATED\n"
	.align
_StringConst_68:
	.word	23			! length
	.ascii	"    stack starting addr"
	.align
_StringConst_67:
	.word	12			! length
	.ascii	"    stackTop"
	.align
_StringConst_66:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_65:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_64:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_63:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_62:
	.word	19			! length
	.ascii	"    machine state:\n"
	.align
_StringConst_61:
	.word	2			! length
	.ascii	")\n"
	.align
_StringConst_60:
	.word	29			! length
	.ascii	"\"    (addr of Thread object: "
	.align
_StringConst_59:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_58:
	.word	32			! length
	.ascii	"System stack underflow detected!"
	.align
_StringConst_57:
	.word	31			! length
	.ascii	"System stack overflow detected!"
	.align
_StringConst_56:
	.word	48			! length
	.ascii	"Ready list should always contain the idle thread"
	.align
_StringConst_55:
	.word	31			! length
	.ascii	"In Sleep, self != currentThread"
	.align
_StringConst_54:
	.word	44			! length
	.ascii	"In Sleep, currentInterruptStatus != DISABLED"
	.align
_StringConst_53:
	.word	51			! length
	.ascii	"Status of current thread should be READY or RUNNING"
	.align
_StringConst_52:
	.word	31			! length
	.ascii	"In Yield, self != currentThread"
	.align
_StringConst_51:
	.word	54			! length
	.ascii	"Attempt to broadcast a condition when lock is not held"
	.align
_StringConst_50:
	.word	52			! length
	.ascii	"Attempt to signal a condition when mutex is not held"
	.align
_StringConst_49:
	.word	51			! length
	.ascii	"Attempt to wait on condition when mutex is not held"
	.align
_StringConst_48:
	.word	52			! length
	.ascii	"Attempt to unlock a mutex by a thread not holding it"
	.align
_StringConst_47:
	.word	54			! length
	.ascii	"Attempt to lock a mutex by a thread already holding it"
	.align
_StringConst_46:
	.word	51			! length
	.ascii	"Semaphore count underflowed during \'Down\' operation"
	.align
_StringConst_45:
	.word	48			! length
	.ascii	"Semaphore count overflowed during \'Up\' operation"
	.align
_StringConst_44:
	.word	39			! length
	.ascii	"Semaphore created with initialCount < 0"
	.align
_StringConst_43:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_42:
	.word	4			! length
	.ascii	"  0x"
	.align
_StringConst_41:
	.word	8			! length
	.ascii	"terminal"
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
	set	0xdd430e89,r4		! myHashVal = -582807927
	cmp	r3,r4
	be	_Label_192
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
_Label_192:
	mov	0,r1
! Make sure _P_System_ has hash value 0x9e9d23b6 (decimal -1633868874)
	set	_packageName,r2
	set	0x9e9d23b6,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_193
! Make sure _P_BitMap_ has hash value 0xa596b1b5 (decimal -1516850763)
	set	_packageName,r2
	set	0xa596b1b5,r3
	call	_CheckVersion_P_BitMap_
	.import	_CheckVersion_P_BitMap_
	cmp	r1,0
	bne	_Label_193
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_193
_Label_193:
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
_Label_4059:
	push	r0
	sub	r1,1,r1
	bne	_Label_4059
	mov	6,r13		! source line 6
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	9,r13		! source line 9
	mov	"\0\0AS",r10
	mov	9,r13		! source line 9
	mov	"\0\0SE",r10
!   _temp_194 = &_P_Kernel_threadManager
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
!   _temp_195 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-16]
!   if intIsZero (threadPtr) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_195  sizeInBytes=4
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
!   _temp_196 = _function_191_StartUserProcess
	set	_function_191_StartUserProcess,r1
	store	r1,[r14+-12]
!   if intIsZero (threadPtr) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_196  sizeInBytes=4
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
	.word	_Label_197
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_198
	.word	-12
	.word	4
	.word	_Label_199
	.word	-16
	.word	4
	.word	_Label_200
	.word	-20
	.word	4
	.word	_Label_201
	.word	-24
	.word	4
	.word	0
_Label_197:
	.ascii	"InitFirstProcess\0"
	.align
_Label_198:
	.byte	'?'
	.ascii	"_temp_196\0"
	.align
_Label_199:
	.byte	'?'
	.ascii	"_temp_195\0"
	.align
_Label_200:
	.byte	'?'
	.ascii	"_temp_194\0"
	.align
_Label_201:
	.byte	'P'
	.ascii	"threadPtr\0"
	.align
! 
! ===============  FUNCTION StartUserProcess  ===============
! 
_function_191_StartUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_191_StartUserProcess,r1
	push	r1
	mov	25,r1
_Label_4060:
	push	r0
	sub	r1,1,r1
	bne	_Label_4060
	mov	14,r13		! source line 14
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	24,r13		! source line 24
	mov	"\0\0AS",r10
	mov	24,r13		! source line 24
	mov	"\0\0SE",r10
!   _temp_202 = &_P_Kernel_processManager
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
!   _temp_203 = pcb + 24
	load	[r14+-76],r1
	add	r1,24,r1
	store	r1,[r14+-68]
!   Data Move: *_temp_203 = _P_Kernel_currentThread  (sizeInBytes=4)
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
!   _temp_204 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-64]
!   Data Move: *_temp_204 = pcb  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r14+-64],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	30,r13		! source line 30
	mov	"\0\0AS",r10
	mov	30,r13		! source line 30
	mov	"\0\0SE",r10
!   _temp_205 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-60]
!   _temp_206 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=12  value=_temp_205  sizeInBytes=4
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
!   _temp_208 = pcb + 32
	load	[r14+-76],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   _temp_207 = _temp_208		(4 bytes)
	load	[r14+-48],r1
	store	r1,[r14+-52]
!   if intIsZero (openFilePtr) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_207  sizeInBytes=4
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
!   _temp_209 = &_P_Kernel_fileManager
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
!   _temp_211 = pcb + 32
	load	[r14+-76],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   _temp_212 = _temp_211 + 4
	load	[r14+-36],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Data Move: _temp_210 = *_temp_212  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   initUserStackTop = _temp_210 * 8192		(int)
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
!   _temp_213 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-28]
!   Move address of _temp_213 [999 ] into _temp_214
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
!   initSystemStackTop = _temp_214		(4 bytes)
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
!   _temp_215 = pcb + 32
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
!   _temp_216 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_216 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-16],r2
	storeb	r1,[r2]
! CALL STATEMENT...
!   _temp_217 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_217  sizeInBytes=4
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
_RoutineDescriptor__function_191_StartUserProcess:
	.word	_sourceFileName
	.word	_Label_218
	.word	4		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_219
	.word	8
	.word	4
	.word	_Label_220
	.word	-12
	.word	4
	.word	_Label_221
	.word	-16
	.word	4
	.word	_Label_222
	.word	-20
	.word	4
	.word	_Label_223
	.word	-24
	.word	4
	.word	_Label_224
	.word	-28
	.word	4
	.word	_Label_225
	.word	-32
	.word	4
	.word	_Label_226
	.word	-36
	.word	4
	.word	_Label_227
	.word	-40
	.word	4
	.word	_Label_228
	.word	-44
	.word	4
	.word	_Label_229
	.word	-48
	.word	4
	.word	_Label_230
	.word	-52
	.word	4
	.word	_Label_231
	.word	-56
	.word	4
	.word	_Label_232
	.word	-60
	.word	4
	.word	_Label_233
	.word	-64
	.word	4
	.word	_Label_234
	.word	-68
	.word	4
	.word	_Label_235
	.word	-72
	.word	4
	.word	_Label_236
	.word	-76
	.word	4
	.word	_Label_237
	.word	-80
	.word	4
	.word	_Label_238
	.word	-84
	.word	4
	.word	_Label_239
	.word	-88
	.word	4
	.word	_Label_240
	.word	-92
	.word	4
	.word	_Label_241
	.word	-96
	.word	4
	.word	0
_Label_218:
	.ascii	"StartUserProcess\0"
	.align
_Label_219:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_220:
	.byte	'?'
	.ascii	"_temp_217\0"
	.align
_Label_221:
	.byte	'?'
	.ascii	"_temp_216\0"
	.align
_Label_222:
	.byte	'?'
	.ascii	"_temp_215\0"
	.align
_Label_223:
	.byte	'?'
	.ascii	"_temp_214\0"
	.align
_Label_224:
	.byte	'?'
	.ascii	"_temp_213\0"
	.align
_Label_225:
	.byte	'?'
	.ascii	"_temp_212\0"
	.align
_Label_226:
	.byte	'?'
	.ascii	"_temp_211\0"
	.align
_Label_227:
	.byte	'?'
	.ascii	"_temp_210\0"
	.align
_Label_228:
	.byte	'?'
	.ascii	"_temp_209\0"
	.align
_Label_229:
	.byte	'?'
	.ascii	"_temp_208\0"
	.align
_Label_230:
	.byte	'?'
	.ascii	"_temp_207\0"
	.align
_Label_231:
	.byte	'?'
	.ascii	"_temp_206\0"
	.align
_Label_232:
	.byte	'?'
	.ascii	"_temp_205\0"
	.align
_Label_233:
	.byte	'?'
	.ascii	"_temp_204\0"
	.align
_Label_234:
	.byte	'?'
	.ascii	"_temp_203\0"
	.align
_Label_235:
	.byte	'?'
	.ascii	"_temp_202\0"
	.align
_Label_236:
	.byte	'P'
	.ascii	"pcb\0"
	.align
_Label_237:
	.byte	'P'
	.ascii	"openFilePtr\0"
	.align
_Label_238:
	.byte	'I'
	.ascii	"entryPoint\0"
	.align
_Label_239:
	.byte	'I'
	.ascii	"initUserStackTop\0"
	.align
_Label_240:
	.byte	'I'
	.ascii	"initSystemStackTop\0"
	.align
_Label_241:
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
_Label_4061:
	push	r0
	sub	r1,1,r1
	bne	_Label_4061
	mov	56,r13		! source line 56
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	63,r13		! source line 63
	mov	"\0\0CE",r10
	call	Cleari
! CALL STATEMENT...
!   _temp_242 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_242  sizeInBytes=4
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
_Label_4062:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4062
!   _P_Kernel_mainThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_mainThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	68,r13		! source line 68
	mov	"\0\0SE",r10
!   _temp_246 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-44]
!   _temp_247 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_246  sizeInBytes=4
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
!   _temp_248 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-36]
!   _temp_249 = _temp_248 + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_249 = 3  (sizeInBytes=4)
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
_Label_4063:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4063
!   _P_Kernel_idleThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_idleThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	71,r13		! source line 71
	mov	"\0\0SE",r10
!   _temp_251 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-24]
!   _temp_252 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_251  sizeInBytes=4
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
!   _temp_253 = _function_190_IdleFunction
	set	_function_190_IdleFunction,r1
	store	r1,[r14+-16]
!   _temp_254 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_253  sizeInBytes=4
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
	.word	_Label_255
	.word	0		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_256
	.word	-12
	.word	4
	.word	_Label_257
	.word	-16
	.word	4
	.word	_Label_258
	.word	-20
	.word	4
	.word	_Label_259
	.word	-24
	.word	4
	.word	_Label_260
	.word	-28
	.word	4
	.word	_Label_261
	.word	-32
	.word	4
	.word	_Label_262
	.word	-36
	.word	4
	.word	_Label_263
	.word	-40
	.word	4
	.word	_Label_264
	.word	-44
	.word	4
	.word	_Label_265
	.word	-48
	.word	4
	.word	_Label_266
	.word	-52
	.word	4
	.word	_Label_267
	.word	-56
	.word	4
	.word	_Label_268
	.word	-60
	.word	4
	.word	0
_Label_255:
	.ascii	"InitializeScheduler\0"
	.align
_Label_256:
	.byte	'?'
	.ascii	"_temp_254\0"
	.align
_Label_257:
	.byte	'?'
	.ascii	"_temp_253\0"
	.align
_Label_258:
	.byte	'?'
	.ascii	"_temp_252\0"
	.align
_Label_259:
	.byte	'?'
	.ascii	"_temp_251\0"
	.align
_Label_260:
	.byte	'?'
	.ascii	"_temp_250\0"
	.align
_Label_261:
	.byte	'?'
	.ascii	"_temp_249\0"
	.align
_Label_262:
	.byte	'?'
	.ascii	"_temp_248\0"
	.align
_Label_263:
	.byte	'?'
	.ascii	"_temp_247\0"
	.align
_Label_264:
	.byte	'?'
	.ascii	"_temp_246\0"
	.align
_Label_265:
	.byte	'?'
	.ascii	"_temp_245\0"
	.align
_Label_266:
	.byte	'?'
	.ascii	"_temp_244\0"
	.align
_Label_267:
	.byte	'?'
	.ascii	"_temp_243\0"
	.align
_Label_268:
	.byte	'?'
	.ascii	"_temp_242\0"
	.align
! 
! ===============  FUNCTION IdleFunction  ===============
! 
_function_190_IdleFunction:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_190_IdleFunction,r1
	push	r1
	mov	3,r1
_Label_4064:
	push	r0
	sub	r1,1,r1
	bne	_Label_4064
	mov	81,r13		! source line 81
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	91,r13		! source line 91
	mov	"\0\0WH",r10
_Label_269:
!	jmp	_Label_270
_Label_270:
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
!   _temp_274 = &_P_Kernel_readyList
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
!   if result==true then goto _Label_272 else goto _Label_273
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_273
	jmp	_Label_272
_Label_272:
! THEN...
	mov	94,r13		! source line 94
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Call the function
	mov	94,r13		! source line 94
	mov	"\0\0CE",r10
	call	Wait
	jmp	_Label_275
_Label_273:
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
_Label_275:
! END WHILE...
	jmp	_Label_269
_Label_271:
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_190_IdleFunction:
	.word	_sourceFileName
	.word	_Label_276
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_277
	.word	8
	.word	4
	.word	_Label_278
	.word	-12
	.word	4
	.word	_Label_279
	.word	-16
	.word	4
	.word	0
_Label_276:
	.ascii	"IdleFunction\0"
	.align
_Label_277:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_278:
	.byte	'?'
	.ascii	"_temp_274\0"
	.align
_Label_279:
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
_Label_4065:
	push	r0
	sub	r1,1,r1
	bne	_Label_4065
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
!   _temp_282 = prevThread + 4092
	load	[r14+-76],r1
	add	r1,4092,r1
	store	r1,[r14+-72]
!   if boolIsZero (_temp_282 ) then goto _Label_281		(int)
	load	[r14+-72],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_281
!	jmp	_Label_280
_Label_280:
! THEN...
	mov	120,r13		! source line 120
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_284 = prevThread + 4096
	load	[r14+-76],r1
	add	r1,4096,r1
	store	r1,[r14+-64]
!   Move address of _temp_284 [0 ] into _temp_285
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
!   _temp_283 = _temp_285		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_283  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	120,r13		! source line 120
	mov	"\0\0CE",r10
	call	SaveUserRegs
! END IF...
_Label_281:
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
!   _temp_286 = nextThread + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-56]
!   Data Move: *_temp_286 = 3  (sizeInBytes=4)
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
_Label_287:
	mov	133,r13		! source line 133
	mov	"\0\0SE",r10
!   _temp_291 = &_P_Kernel_threadsToBeDestroyed
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
!   Retrieve Result: targetName=_temp_290  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_290 then goto _Label_289 else goto _Label_288
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_288
	jmp	_Label_289
_Label_288:
	mov	133,r13		! source line 133
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	134,r13		! source line 134
	mov	"\0\0AS",r10
	mov	134,r13		! source line 134
	mov	"\0\0SE",r10
!   _temp_292 = &_P_Kernel_threadsToBeDestroyed
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
!   _temp_293 = &_P_Kernel_threadManager
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
	jmp	_Label_287
_Label_289:
! IF STATEMENT...
	mov	138,r13		! source line 138
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_296 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-40]
!   if boolIsZero (_temp_296 ) then goto _Label_295		(int)
	load	[r14+-40],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_295
!	jmp	_Label_294
_Label_294:
! THEN...
	mov	139,r13		! source line 139
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_298 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-32]
!   Move address of _temp_298 [0 ] into _temp_299
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
!   _temp_297 = _temp_299		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_297  sizeInBytes=4
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
!   _temp_301 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_300 = *_temp_301  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_300) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_302 = _temp_300 + 32
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
_Label_295:
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
	.word	_Label_303
	.word	4		! total size of parameters
	.word	80		! frame size = 80
	.word	_Label_304
	.word	8
	.word	4
	.word	_Label_305
	.word	-16
	.word	4
	.word	_Label_306
	.word	-20
	.word	4
	.word	_Label_307
	.word	-24
	.word	4
	.word	_Label_308
	.word	-28
	.word	4
	.word	_Label_309
	.word	-32
	.word	4
	.word	_Label_310
	.word	-36
	.word	4
	.word	_Label_311
	.word	-40
	.word	4
	.word	_Label_312
	.word	-44
	.word	4
	.word	_Label_313
	.word	-48
	.word	4
	.word	_Label_314
	.word	-52
	.word	4
	.word	_Label_315
	.word	-9
	.word	1
	.word	_Label_316
	.word	-56
	.word	4
	.word	_Label_317
	.word	-60
	.word	4
	.word	_Label_318
	.word	-64
	.word	4
	.word	_Label_319
	.word	-68
	.word	4
	.word	_Label_320
	.word	-72
	.word	4
	.word	_Label_321
	.word	-76
	.word	4
	.word	_Label_322
	.word	-80
	.word	4
	.word	0
_Label_303:
	.ascii	"Run\0"
	.align
_Label_304:
	.byte	'P'
	.ascii	"nextThread\0"
	.align
_Label_305:
	.byte	'?'
	.ascii	"_temp_302\0"
	.align
_Label_306:
	.byte	'?'
	.ascii	"_temp_301\0"
	.align
_Label_307:
	.byte	'?'
	.ascii	"_temp_300\0"
	.align
_Label_308:
	.byte	'?'
	.ascii	"_temp_299\0"
	.align
_Label_309:
	.byte	'?'
	.ascii	"_temp_298\0"
	.align
_Label_310:
	.byte	'?'
	.ascii	"_temp_297\0"
	.align
_Label_311:
	.byte	'?'
	.ascii	"_temp_296\0"
	.align
_Label_312:
	.byte	'?'
	.ascii	"_temp_293\0"
	.align
_Label_313:
	.byte	'?'
	.ascii	"_temp_292\0"
	.align
_Label_314:
	.byte	'?'
	.ascii	"_temp_291\0"
	.align
_Label_315:
	.byte	'C'
	.ascii	"_temp_290\0"
	.align
_Label_316:
	.byte	'?'
	.ascii	"_temp_286\0"
	.align
_Label_317:
	.byte	'?'
	.ascii	"_temp_285\0"
	.align
_Label_318:
	.byte	'?'
	.ascii	"_temp_284\0"
	.align
_Label_319:
	.byte	'?'
	.ascii	"_temp_283\0"
	.align
_Label_320:
	.byte	'?'
	.ascii	"_temp_282\0"
	.align
_Label_321:
	.byte	'P'
	.ascii	"prevThread\0"
	.align
_Label_322:
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
_Label_4066:
	push	r0
	sub	r1,1,r1
	bne	_Label_4066
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
!   _temp_323 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_323  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	154,r13		! source line 154
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	155,r13		! source line 155
	mov	"\0\0SE",r10
!   _temp_324 = _function_189_ThreadPrintShort
	set	_function_189_ThreadPrintShort,r1
	store	r1,[r14+-16]
!   _temp_325 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_324  sizeInBytes=4
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
	.word	_Label_326
	.word	0		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_327
	.word	-12
	.word	4
	.word	_Label_328
	.word	-16
	.word	4
	.word	_Label_329
	.word	-20
	.word	4
	.word	_Label_330
	.word	-24
	.word	4
	.word	0
_Label_326:
	.ascii	"PrintReadyList\0"
	.align
_Label_327:
	.byte	'?'
	.ascii	"_temp_325\0"
	.align
_Label_328:
	.byte	'?'
	.ascii	"_temp_324\0"
	.align
_Label_329:
	.byte	'?'
	.ascii	"_temp_323\0"
	.align
_Label_330:
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
_Label_4067:
	push	r0
	sub	r1,1,r1
	bne	_Label_4067
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
!   _temp_331 = _P_Kernel_currentThread + 80
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,80,r1
	store	r1,[r14+-24]
!   Data Move: mainFun = *_temp_331  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_333 = _P_Kernel_currentThread + 84
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,84,r1
	store	r1,[r14+-16]
!   Data Move: _temp_332 = *_temp_333  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_332  sizeInBytes=4
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
!   _temp_334 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_334  sizeInBytes=4
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
	.word	_Label_335
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_336
	.word	-12
	.word	4
	.word	_Label_337
	.word	-16
	.word	4
	.word	_Label_338
	.word	-20
	.word	4
	.word	_Label_339
	.word	-24
	.word	4
	.word	_Label_340
	.word	-28
	.word	4
	.word	_Label_341
	.word	-32
	.word	4
	.word	0
_Label_335:
	.ascii	"ThreadStartMain\0"
	.align
_Label_336:
	.byte	'?'
	.ascii	"_temp_334\0"
	.align
_Label_337:
	.byte	'?'
	.ascii	"_temp_333\0"
	.align
_Label_338:
	.byte	'?'
	.ascii	"_temp_332\0"
	.align
_Label_339:
	.byte	'?'
	.ascii	"_temp_331\0"
	.align
_Label_340:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_341:
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
_Label_4068:
	push	r0
	sub	r1,1,r1
	bne	_Label_4068
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
!   _temp_342 = &_P_Kernel_threadsToBeDestroyed
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
!   _temp_343 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_343  sizeInBytes=4
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
	.word	_Label_344
	.word	0		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_345
	.word	-12
	.word	4
	.word	_Label_346
	.word	-16
	.word	4
	.word	_Label_347
	.word	-20
	.word	4
	.word	0
_Label_344:
	.ascii	"ThreadFinish\0"
	.align
_Label_345:
	.byte	'?'
	.ascii	"_temp_343\0"
	.align
_Label_346:
	.byte	'?'
	.ascii	"_temp_342\0"
	.align
_Label_347:
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
_Label_4069:
	push	r0
	sub	r1,1,r1
	bne	_Label_4069
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
!   _temp_348 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_348  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	214,r13		! source line 214
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	215,r13		! source line 215
	mov	"\0\0IF",r10
!   if _P_Kernel_currentThread == 0 then goto _Label_350		(int)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_350
!	jmp	_Label_349
_Label_349:
! THEN...
	mov	216,r13		! source line 216
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_351 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_351  sizeInBytes=4
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
!   _temp_353 = _P_Kernel_currentThread + 72
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-24]
!   Data Move: _temp_352 = *_temp_353  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_352  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	217,r13		! source line 217
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_350:
! CALL STATEMENT...
!   _temp_354 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_354  sizeInBytes=4
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
!   _temp_355 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_355  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	221,r13		! source line 221
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_356 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_356  sizeInBytes=4
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
	.word	_Label_357
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_358
	.word	8
	.word	4
	.word	_Label_359
	.word	-12
	.word	4
	.word	_Label_360
	.word	-16
	.word	4
	.word	_Label_361
	.word	-20
	.word	4
	.word	_Label_362
	.word	-24
	.word	4
	.word	_Label_363
	.word	-28
	.word	4
	.word	_Label_364
	.word	-32
	.word	4
	.word	_Label_365
	.word	-36
	.word	4
	.word	_Label_366
	.word	-40
	.word	4
	.word	0
_Label_357:
	.ascii	"FatalError_ThreadVersion\0"
	.align
_Label_358:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_359:
	.byte	'?'
	.ascii	"_temp_356\0"
	.align
_Label_360:
	.byte	'?'
	.ascii	"_temp_355\0"
	.align
_Label_361:
	.byte	'?'
	.ascii	"_temp_354\0"
	.align
_Label_362:
	.byte	'?'
	.ascii	"_temp_353\0"
	.align
_Label_363:
	.byte	'?'
	.ascii	"_temp_352\0"
	.align
_Label_364:
	.byte	'?'
	.ascii	"_temp_351\0"
	.align
_Label_365:
	.byte	'?'
	.ascii	"_temp_348\0"
	.align
_Label_366:
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
_Label_4070:
	push	r0
	sub	r1,1,r1
	bne	_Label_4070
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
!   if newStatus != 1 then goto _Label_368		(int)
	load	[r14+8],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_368
!	jmp	_Label_367
_Label_367:
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
	jmp	_Label_369
_Label_368:
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
_Label_369:
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
	.word	_Label_370
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_371
	.word	8
	.word	4
	.word	_Label_372
	.word	-12
	.word	4
	.word	0
_Label_370:
	.ascii	"SetInterruptsTo\0"
	.align
_Label_371:
	.byte	'I'
	.ascii	"newStatus\0"
	.align
_Label_372:
	.byte	'I'
	.ascii	"oldStat\0"
	.align
! 
! ===============  FUNCTION ThreadPrintShort  ===============
! 
_function_189_ThreadPrintShort:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_189_ThreadPrintShort,r1
	push	r1
	mov	19,r1
_Label_4071:
	push	r0
	sub	r1,1,r1
	bne	_Label_4071
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
!   if t == 0 then goto _Label_376		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_376
!   _temp_375 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_377
_Label_376:
!   _temp_375 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_377:
!   if _temp_375 then goto _Label_374 else goto _Label_373
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_373
	jmp	_Label_374
_Label_373:
! THEN...
	mov	698,r13		! source line 698
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_378 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_378  sizeInBytes=4
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
_Label_374:
! CALL STATEMENT...
!   _temp_379 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_379  sizeInBytes=4
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
!   _temp_381 = t + 72
	load	[r14+8],r1
	add	r1,72,r1
	store	r1,[r14+-64]
!   Data Move: _temp_380 = *_temp_381  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_380  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	702,r13		! source line 702
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_382 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_382  sizeInBytes=4
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
!   _temp_391 = t + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-52]
!   Data Move: _temp_390 = *_temp_391  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   Branch to the right case label
	load	[r14+-56],r1
	cmp	r1,1
	be	_Label_385
	cmp	r1,2
	be	_Label_386
	cmp	r1,3
	be	_Label_387
	cmp	r1,4
	be	_Label_388
	cmp	r1,5
	be	_Label_389
	jmp	_Label_383
! CASE 1...
_Label_385:
! CALL STATEMENT...
!   _temp_392 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_392  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	706,r13		! source line 706
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	707,r13		! source line 707
	mov	"\0\0BR",r10
	jmp	_Label_384
! CASE 2...
_Label_386:
! CALL STATEMENT...
!   _temp_393 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_393  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	709,r13		! source line 709
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	710,r13		! source line 710
	mov	"\0\0BR",r10
	jmp	_Label_384
! CASE 3...
_Label_387:
! CALL STATEMENT...
!   _temp_394 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_394  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	712,r13		! source line 712
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	713,r13		! source line 713
	mov	"\0\0BR",r10
	jmp	_Label_384
! CASE 4...
_Label_388:
! CALL STATEMENT...
!   _temp_395 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_395  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	715,r13		! source line 715
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	716,r13		! source line 716
	mov	"\0\0BR",r10
	jmp	_Label_384
! CASE 5...
_Label_389:
! CALL STATEMENT...
!   _temp_396 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_396  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	718,r13		! source line 718
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	719,r13		! source line 719
	mov	"\0\0BR",r10
	jmp	_Label_384
! DEFAULT CASE...
_Label_383:
! CALL STATEMENT...
!   _temp_397 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_397  sizeInBytes=4
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
_Label_384:
! CALL STATEMENT...
!   _temp_398 = _StringConst_24
	set	_StringConst_24,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_398  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	723,r13		! source line 723
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_399 = t		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_399  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	724,r13		! source line 724
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_400 = _StringConst_25
	set	_StringConst_25,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_400  sizeInBytes=4
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
_RoutineDescriptor__function_189_ThreadPrintShort:
	.word	_sourceFileName
	.word	_Label_401
	.word	4		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_402
	.word	8
	.word	4
	.word	_Label_403
	.word	-16
	.word	4
	.word	_Label_404
	.word	-20
	.word	4
	.word	_Label_405
	.word	-24
	.word	4
	.word	_Label_406
	.word	-28
	.word	4
	.word	_Label_407
	.word	-32
	.word	4
	.word	_Label_408
	.word	-36
	.word	4
	.word	_Label_409
	.word	-40
	.word	4
	.word	_Label_410
	.word	-44
	.word	4
	.word	_Label_411
	.word	-48
	.word	4
	.word	_Label_412
	.word	-52
	.word	4
	.word	_Label_413
	.word	-56
	.word	4
	.word	_Label_414
	.word	-60
	.word	4
	.word	_Label_415
	.word	-64
	.word	4
	.word	_Label_416
	.word	-68
	.word	4
	.word	_Label_417
	.word	-72
	.word	4
	.word	_Label_418
	.word	-76
	.word	4
	.word	_Label_419
	.word	-9
	.word	1
	.word	_Label_420
	.word	-80
	.word	4
	.word	0
_Label_401:
	.ascii	"ThreadPrintShort\0"
	.align
_Label_402:
	.byte	'P'
	.ascii	"t\0"
	.align
_Label_403:
	.byte	'?'
	.ascii	"_temp_400\0"
	.align
_Label_404:
	.byte	'?'
	.ascii	"_temp_399\0"
	.align
_Label_405:
	.byte	'?'
	.ascii	"_temp_398\0"
	.align
_Label_406:
	.byte	'?'
	.ascii	"_temp_397\0"
	.align
_Label_407:
	.byte	'?'
	.ascii	"_temp_396\0"
	.align
_Label_408:
	.byte	'?'
	.ascii	"_temp_395\0"
	.align
_Label_409:
	.byte	'?'
	.ascii	"_temp_394\0"
	.align
_Label_410:
	.byte	'?'
	.ascii	"_temp_393\0"
	.align
_Label_411:
	.byte	'?'
	.ascii	"_temp_392\0"
	.align
_Label_412:
	.byte	'?'
	.ascii	"_temp_391\0"
	.align
_Label_413:
	.byte	'?'
	.ascii	"_temp_390\0"
	.align
_Label_414:
	.byte	'?'
	.ascii	"_temp_382\0"
	.align
_Label_415:
	.byte	'?'
	.ascii	"_temp_381\0"
	.align
_Label_416:
	.byte	'?'
	.ascii	"_temp_380\0"
	.align
_Label_417:
	.byte	'?'
	.ascii	"_temp_379\0"
	.align
_Label_418:
	.byte	'?'
	.ascii	"_temp_378\0"
	.align
_Label_419:
	.byte	'C'
	.ascii	"_temp_375\0"
	.align
_Label_420:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION PrintObjectAddr  ===============
! 
_function_188_PrintObjectAddr:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_188_PrintObjectAddr,r1
	push	r1
	mov	2,r1
_Label_4072:
	push	r0
	sub	r1,1,r1
	bne	_Label_4072
	mov	1048,r13		! source line 1048
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_421 = p		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_421  sizeInBytes=4
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
_RoutineDescriptor__function_188_PrintObjectAddr:
	.word	_sourceFileName
	.word	_Label_422
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_423
	.word	8
	.word	4
	.word	_Label_424
	.word	-12
	.word	4
	.word	0
_Label_422:
	.ascii	"PrintObjectAddr\0"
	.align
_Label_423:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_424:
	.byte	'?'
	.ascii	"_temp_421\0"
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
_Label_4073:
	push	r0
	sub	r1,1,r1
	bne	_Label_4073
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
!   _temp_426 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-136]
!   Data Move: _temp_425 = *_temp_426  (sizeInBytes=4)
	load	[r14+-136],r1
	load	[r1],r1
	store	r1,[r14+-140]
!   if intIsZero (_temp_425) then goto _runtimeErrorNullPointer
	load	[r14+-140],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_427 = _temp_425 + 28
	load	[r14+-140],r1
	add	r1,28,r1
	store	r1,[r14+-132]
!   Data Move: *_temp_427 = exitStatus  (sizeInBytes=4)
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
!   _temp_428 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-128]
!   Data Move: *_temp_428 = 0  (sizeInBytes=1)
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
!   _temp_431 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-116]
!   Data Move: _temp_430 = *_temp_431  (sizeInBytes=4)
	load	[r14+-116],r1
	load	[r1],r1
	store	r1,[r14+-120]
!   if intIsZero (_temp_430) then goto _runtimeErrorNullPointer
	load	[r14+-120],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_432 = _temp_430 + 32
	load	[r14+-120],r1
	add	r1,32,r1
	store	r1,[r14+-112]
!   _temp_429 = _temp_432		(4 bytes)
	load	[r14+-112],r1
	store	r1,[r14+-124]
!   _temp_433 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=12  value=_temp_429  sizeInBytes=4
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
!   _temp_435 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-100]
!   Data Move: _temp_434 = *_temp_435  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   _temp_436 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=12  value=_temp_434  sizeInBytes=4
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
!   _temp_441 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-92]
!   Calculate and save the FOR-LOOP ending value
!   _temp_442 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-88]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_441  (sizeInBytes=4)
	load	[r14+-92],r1
	store	r1,[r14+-148]
_Label_437:
!   Perform the FOR-LOOP termination test
!   if i > _temp_442 then goto _Label_440		
	load	[r14+-148],r1
	load	[r14+-88],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_440
_Label_438:
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
!   _temp_447 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-76]
!   Data Move: _temp_446 = *_temp_447  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_446) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_448 = _temp_446 + 124
	load	[r14+-80],r1
	add	r1,124,r1
	store	r1,[r14+-72]
!   Move address of _temp_448 [i ] into _temp_449
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
!   Data Move: _temp_445 = *_temp_449  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if intIsZero (_temp_445) then goto _Label_444
	load	[r14+-84],r1
	cmp	r1,r0
	be	_Label_444
!	jmp	_Label_443
_Label_443:
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
!   _temp_452 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-56]
!   Data Move: _temp_451 = *_temp_452  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_451) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_453 = _temp_451 + 124
	load	[r14+-60],r1
	add	r1,124,r1
	store	r1,[r14+-52]
!   Move address of _temp_453 [i ] into _temp_454
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
!   Data Move: _temp_450 = *_temp_454  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   _temp_455 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=_temp_450  sizeInBytes=4
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
!   _temp_457 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-36]
!   Data Move: _temp_456 = *_temp_457  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_456) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_458 = _temp_456 + 124
	load	[r14+-40],r1
	add	r1,124,r1
	store	r1,[r14+-32]
!   Move address of _temp_458 [i ] into _temp_459
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
!   Data Move: *_temp_459 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-28],r2
	store	r1,[r2]
! END IF...
_Label_444:
!   Increment the FOR-LOOP index variable and jump back
_Label_439:
!   i = i + 1
	load	[r14+-148],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-148]
	jmp	_Label_437
! END FOR
_Label_440:
! ASSIGNMENT STATEMENT...
	mov	1079,r13		! source line 1079
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_461 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_460 = *_temp_461  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_460) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_462 = _temp_460 + 24
	load	[r14+-24],r1
	add	r1,24,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_462 = 0  (sizeInBytes=4)
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
!   _temp_463 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-12]
!   Data Move: *_temp_463 = 0  (sizeInBytes=4)
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
	.word	_Label_464
	.word	4		! total size of parameters
	.word	148		! frame size = 148
	.word	_Label_465
	.word	8
	.word	4
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
	.word	_Label_473
	.word	-40
	.word	4
	.word	_Label_474
	.word	-44
	.word	4
	.word	_Label_475
	.word	-48
	.word	4
	.word	_Label_476
	.word	-52
	.word	4
	.word	_Label_477
	.word	-56
	.word	4
	.word	_Label_478
	.word	-60
	.word	4
	.word	_Label_479
	.word	-64
	.word	4
	.word	_Label_480
	.word	-68
	.word	4
	.word	_Label_481
	.word	-72
	.word	4
	.word	_Label_482
	.word	-76
	.word	4
	.word	_Label_483
	.word	-80
	.word	4
	.word	_Label_484
	.word	-84
	.word	4
	.word	_Label_485
	.word	-88
	.word	4
	.word	_Label_486
	.word	-92
	.word	4
	.word	_Label_487
	.word	-96
	.word	4
	.word	_Label_488
	.word	-100
	.word	4
	.word	_Label_489
	.word	-104
	.word	4
	.word	_Label_490
	.word	-108
	.word	4
	.word	_Label_491
	.word	-112
	.word	4
	.word	_Label_492
	.word	-116
	.word	4
	.word	_Label_493
	.word	-120
	.word	4
	.word	_Label_494
	.word	-124
	.word	4
	.word	_Label_495
	.word	-128
	.word	4
	.word	_Label_496
	.word	-132
	.word	4
	.word	_Label_497
	.word	-136
	.word	4
	.word	_Label_498
	.word	-140
	.word	4
	.word	_Label_499
	.word	-144
	.word	4
	.word	_Label_500
	.word	-148
	.word	4
	.word	0
_Label_464:
	.ascii	"ProcessFinish\0"
	.align
_Label_465:
	.byte	'I'
	.ascii	"exitStatus\0"
	.align
_Label_466:
	.byte	'?'
	.ascii	"_temp_463\0"
	.align
_Label_467:
	.byte	'?'
	.ascii	"_temp_462\0"
	.align
_Label_468:
	.byte	'?'
	.ascii	"_temp_461\0"
	.align
_Label_469:
	.byte	'?'
	.ascii	"_temp_460\0"
	.align
_Label_470:
	.byte	'?'
	.ascii	"_temp_459\0"
	.align
_Label_471:
	.byte	'?'
	.ascii	"_temp_458\0"
	.align
_Label_472:
	.byte	'?'
	.ascii	"_temp_457\0"
	.align
_Label_473:
	.byte	'?'
	.ascii	"_temp_456\0"
	.align
_Label_474:
	.byte	'?'
	.ascii	"_temp_455\0"
	.align
_Label_475:
	.byte	'?'
	.ascii	"_temp_454\0"
	.align
_Label_476:
	.byte	'?'
	.ascii	"_temp_453\0"
	.align
_Label_477:
	.byte	'?'
	.ascii	"_temp_452\0"
	.align
_Label_478:
	.byte	'?'
	.ascii	"_temp_451\0"
	.align
_Label_479:
	.byte	'?'
	.ascii	"_temp_450\0"
	.align
_Label_480:
	.byte	'?'
	.ascii	"_temp_449\0"
	.align
_Label_481:
	.byte	'?'
	.ascii	"_temp_448\0"
	.align
_Label_482:
	.byte	'?'
	.ascii	"_temp_447\0"
	.align
_Label_483:
	.byte	'?'
	.ascii	"_temp_446\0"
	.align
_Label_484:
	.byte	'?'
	.ascii	"_temp_445\0"
	.align
_Label_485:
	.byte	'?'
	.ascii	"_temp_442\0"
	.align
_Label_486:
	.byte	'?'
	.ascii	"_temp_441\0"
	.align
_Label_487:
	.byte	'?'
	.ascii	"_temp_436\0"
	.align
_Label_488:
	.byte	'?'
	.ascii	"_temp_435\0"
	.align
_Label_489:
	.byte	'?'
	.ascii	"_temp_434\0"
	.align
_Label_490:
	.byte	'?'
	.ascii	"_temp_433\0"
	.align
_Label_491:
	.byte	'?'
	.ascii	"_temp_432\0"
	.align
_Label_492:
	.byte	'?'
	.ascii	"_temp_431\0"
	.align
_Label_493:
	.byte	'?'
	.ascii	"_temp_430\0"
	.align
_Label_494:
	.byte	'?'
	.ascii	"_temp_429\0"
	.align
_Label_495:
	.byte	'?'
	.ascii	"_temp_428\0"
	.align
_Label_496:
	.byte	'?'
	.ascii	"_temp_427\0"
	.align
_Label_497:
	.byte	'?'
	.ascii	"_temp_426\0"
	.align
_Label_498:
	.byte	'?'
	.ascii	"_temp_425\0"
	.align
_Label_499:
	.byte	'I'
	.ascii	"oldIntStatus\0"
	.align
_Label_500:
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
_Label_4074:
	push	r0
	sub	r1,1,r1
	bne	_Label_4074
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
	.word	_Label_501
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_501:
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
_Label_4075:
	push	r0
	sub	r1,1,r1
	bne	_Label_4075
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
!   _temp_505 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   _temp_506 = _temp_505 + 24
	load	[r14+-28],r1
	add	r1,24,r1
	store	r1,[r14+-24]
!   Data Move: _temp_504 = *_temp_506  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_504 == 0 then goto _Label_503		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_503
!	jmp	_Label_502
_Label_502:
! THEN...
	mov	1606,r13		! source line 1606
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1606,r13		! source line 1606
	mov	"\0\0SE",r10
!   _temp_508 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-16]
!   _temp_509 = _temp_508 + 24
	load	[r14+-16],r1
	add	r1,24,r1
	store	r1,[r14+-12]
!   Data Move: _temp_507 = *_temp_509  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_507) then goto _runtimeErrorNullPointer
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
_Label_503:
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
	.word	_Label_510
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_511
	.word	-12
	.word	4
	.word	_Label_512
	.word	-16
	.word	4
	.word	_Label_513
	.word	-20
	.word	4
	.word	_Label_514
	.word	-24
	.word	4
	.word	_Label_515
	.word	-28
	.word	4
	.word	_Label_516
	.word	-32
	.word	4
	.word	0
_Label_510:
	.ascii	"DiskInterruptHandler\0"
	.align
_Label_511:
	.byte	'?'
	.ascii	"_temp_509\0"
	.align
_Label_512:
	.byte	'?'
	.ascii	"_temp_508\0"
	.align
_Label_513:
	.byte	'?'
	.ascii	"_temp_507\0"
	.align
_Label_514:
	.byte	'?'
	.ascii	"_temp_506\0"
	.align
_Label_515:
	.byte	'?'
	.ascii	"_temp_505\0"
	.align
_Label_516:
	.byte	'?'
	.ascii	"_temp_504\0"
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
	.word	_Label_517
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_517:
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
_Label_4076:
	push	r0
	sub	r1,1,r1
	bne	_Label_4076
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
!   _temp_518 = _StringConst_26
	set	_StringConst_26,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_518  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1634,r13		! source line 1634
	mov	"\0\0CA",r10
	call	_function_187_ErrorInUserProcess
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
	.word	_Label_519
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_520
	.word	-12
	.word	4
	.word	0
_Label_519:
	.ascii	"IllegalInstructionHandler\0"
	.align
_Label_520:
	.byte	'?'
	.ascii	"_temp_518\0"
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
_Label_4077:
	push	r0
	sub	r1,1,r1
	bne	_Label_4077
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
!   _temp_521 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_521  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1646,r13		! source line 1646
	mov	"\0\0CA",r10
	call	_function_187_ErrorInUserProcess
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
	.word	_Label_522
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_523
	.word	-12
	.word	4
	.word	0
_Label_522:
	.ascii	"ArithmeticExceptionHandler\0"
	.align
_Label_523:
	.byte	'?'
	.ascii	"_temp_521\0"
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
_Label_4078:
	push	r0
	sub	r1,1,r1
	bne	_Label_4078
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
!   _temp_524 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_524  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1658,r13		! source line 1658
	mov	"\0\0CA",r10
	call	_function_187_ErrorInUserProcess
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
	.word	_Label_525
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_526
	.word	-12
	.word	4
	.word	0
_Label_525:
	.ascii	"AddressExceptionHandler\0"
	.align
_Label_526:
	.byte	'?'
	.ascii	"_temp_524\0"
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
_Label_4079:
	push	r0
	sub	r1,1,r1
	bne	_Label_4079
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
!   _temp_527 = _StringConst_29
	set	_StringConst_29,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_527  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1670,r13		! source line 1670
	mov	"\0\0CA",r10
	call	_function_187_ErrorInUserProcess
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
	.word	_Label_528
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_529
	.word	-12
	.word	4
	.word	0
_Label_528:
	.ascii	"PageInvalidExceptionHandler\0"
	.align
_Label_529:
	.byte	'?'
	.ascii	"_temp_527\0"
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
_Label_4080:
	push	r0
	sub	r1,1,r1
	bne	_Label_4080
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
!   _temp_530 = _StringConst_30
	set	_StringConst_30,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_530  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1682,r13		! source line 1682
	mov	"\0\0CA",r10
	call	_function_187_ErrorInUserProcess
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
	.word	_Label_531
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_532
	.word	-12
	.word	4
	.word	0
_Label_531:
	.ascii	"PageReadonlyExceptionHandler\0"
	.align
_Label_532:
	.byte	'?'
	.ascii	"_temp_530\0"
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
_Label_4081:
	push	r0
	sub	r1,1,r1
	bne	_Label_4081
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
!   _temp_533 = _StringConst_31
	set	_StringConst_31,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_533  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1694,r13		! source line 1694
	mov	"\0\0CA",r10
	call	_function_187_ErrorInUserProcess
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
	.word	_Label_534
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_535
	.word	-12
	.word	4
	.word	0
_Label_534:
	.ascii	"PrivilegedInstructionHandler\0"
	.align
_Label_535:
	.byte	'?'
	.ascii	"_temp_533\0"
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
_Label_4082:
	push	r0
	sub	r1,1,r1
	bne	_Label_4082
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
!   _temp_536 = _StringConst_32
	set	_StringConst_32,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_536  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1706,r13		! source line 1706
	mov	"\0\0CA",r10
	call	_function_187_ErrorInUserProcess
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
	.word	_Label_537
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_538
	.word	-12
	.word	4
	.word	0
_Label_537:
	.ascii	"AlignmentExceptionHandler\0"
	.align
_Label_538:
	.byte	'?'
	.ascii	"_temp_536\0"
	.align
! 
! ===============  FUNCTION ErrorInUserProcess  ===============
! 
_function_187_ErrorInUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_187_ErrorInUserProcess,r1
	push	r1
	mov	8,r1
_Label_4083:
	push	r0
	sub	r1,1,r1
	bne	_Label_4083
	mov	1711,r13		! source line 1711
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_539 = _StringConst_33
	set	_StringConst_33,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_539  sizeInBytes=4
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
!   _temp_540 = _StringConst_34
	set	_StringConst_34,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_540  sizeInBytes=4
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
!   _temp_544 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_543 = *_temp_544  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if _temp_543 == 0 then goto _Label_542		(int)
	load	[r14+-28],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_542
!	jmp	_Label_541
_Label_541:
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
!   _temp_546 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-16]
!   Data Move: _temp_545 = *_temp_546  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_545) then goto _runtimeErrorNullPointer
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
	jmp	_Label_547
_Label_542:
! ELSE...
	mov	1724,r13		! source line 1724
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_548 = _StringConst_35
	set	_StringConst_35,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_548  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1724,r13		! source line 1724
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_547:
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
_RoutineDescriptor__function_187_ErrorInUserProcess:
	.word	_sourceFileName
	.word	_Label_549
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_550
	.word	8
	.word	4
	.word	_Label_551
	.word	-12
	.word	4
	.word	_Label_552
	.word	-16
	.word	4
	.word	_Label_553
	.word	-20
	.word	4
	.word	_Label_554
	.word	-24
	.word	4
	.word	_Label_555
	.word	-28
	.word	4
	.word	_Label_556
	.word	-32
	.word	4
	.word	_Label_557
	.word	-36
	.word	4
	.word	0
_Label_549:
	.ascii	"ErrorInUserProcess\0"
	.align
_Label_550:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_551:
	.byte	'?'
	.ascii	"_temp_548\0"
	.align
_Label_552:
	.byte	'?'
	.ascii	"_temp_546\0"
	.align
_Label_553:
	.byte	'?'
	.ascii	"_temp_545\0"
	.align
_Label_554:
	.byte	'?'
	.ascii	"_temp_544\0"
	.align
_Label_555:
	.byte	'?'
	.ascii	"_temp_543\0"
	.align
_Label_556:
	.byte	'?'
	.ascii	"_temp_540\0"
	.align
_Label_557:
	.byte	'?'
	.ascii	"_temp_539\0"
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
_Label_4084:
	push	r0
	sub	r1,1,r1
	bne	_Label_4084
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
	be	_Label_4085
	set	0x1ffff,r3
	cmp	r2,r3
	bne	_Label_558
_Label_4085:
!   If syscallCodeNum is < 1 (==smallestCaseValue) goto default code
	cmp	r1,1
	bl	_Label_558
!   If syscallCodeNum is > 12 (==greatestCaseValue) goto default code
	cmp	r1,12
	bg	_Label_558
!   r1 = (r1-lowValue) * 4 + jumpTableAddr
	sub	r1,1,r1
	sll	r1,2,r1
	set	_Label_572,r2
	add	r1,r2,r1
!   Jump indirect through the jump table
	jmp	r1
!   Jump table
_Label_572:
	jmp	_Label_564	! 1:	
	jmp	_Label_571	! 2:	
	jmp	_Label_561	! 3:	
	jmp	_Label_560	! 4:	
	jmp	_Label_563	! 5:	
	jmp	_Label_562	! 6:	
	jmp	_Label_565	! 7:	
	jmp	_Label_566	! 8:	
	jmp	_Label_567	! 9:	
	jmp	_Label_568	! 10:	
	jmp	_Label_569	! 11:	
	jmp	_Label_570	! 12:	
! CASE 4...
_Label_560:
! RETURN STATEMENT...
	mov	1760,r13		! source line 1760
	mov	"\0\0RE",r10
!   Call the function
	mov	1760,r13		! source line 1760
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Fork
!   Retrieve Result: targetName=_temp_573  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
!   ReturnResult: _temp_573  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 3...
_Label_561:
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
_Label_562:
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
!   Retrieve Result: targetName=_temp_574  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
!   ReturnResult: _temp_574  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 5...
_Label_563:
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
!   Retrieve Result: targetName=_temp_575  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   ReturnResult: _temp_575  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 1...
_Label_564:
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
_Label_565:
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
!   Retrieve Result: targetName=_temp_576  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
!   ReturnResult: _temp_576  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 8...
_Label_566:
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
!   Retrieve Result: targetName=_temp_577  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
!   ReturnResult: _temp_577  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 9...
_Label_567:
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
!   Retrieve Result: targetName=_temp_578  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_578  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 10...
_Label_568:
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
!   Retrieve Result: targetName=_temp_579  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_579  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 11...
_Label_569:
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
!   Retrieve Result: targetName=_temp_580  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   ReturnResult: _temp_580  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 12...
_Label_570:
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
_Label_571:
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
_Label_558:
! CALL STATEMENT...
!   _temp_581 = _StringConst_36
	set	_StringConst_36,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_581  sizeInBytes=4
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
!   _temp_582 = _StringConst_37
	set	_StringConst_37,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_582  sizeInBytes=4
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
_Label_559:
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
	.word	_Label_583
	.word	20		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_584
	.word	8
	.word	4
	.word	_Label_585
	.word	12
	.word	4
	.word	_Label_586
	.word	16
	.word	4
	.word	_Label_587
	.word	20
	.word	4
	.word	_Label_588
	.word	24
	.word	4
	.word	_Label_589
	.word	-12
	.word	4
	.word	_Label_590
	.word	-16
	.word	4
	.word	_Label_591
	.word	-20
	.word	4
	.word	_Label_592
	.word	-24
	.word	4
	.word	_Label_593
	.word	-28
	.word	4
	.word	_Label_594
	.word	-32
	.word	4
	.word	_Label_595
	.word	-36
	.word	4
	.word	_Label_596
	.word	-40
	.word	4
	.word	_Label_597
	.word	-44
	.word	4
	.word	_Label_598
	.word	-48
	.word	4
	.word	0
_Label_583:
	.ascii	"SyscallTrapHandler\0"
	.align
_Label_584:
	.byte	'I'
	.ascii	"syscallCodeNum\0"
	.align
_Label_585:
	.byte	'I'
	.ascii	"arg1\0"
	.align
_Label_586:
	.byte	'I'
	.ascii	"arg2\0"
	.align
_Label_587:
	.byte	'I'
	.ascii	"arg3\0"
	.align
_Label_588:
	.byte	'I'
	.ascii	"arg4\0"
	.align
_Label_589:
	.byte	'?'
	.ascii	"_temp_582\0"
	.align
_Label_590:
	.byte	'?'
	.ascii	"_temp_581\0"
	.align
_Label_591:
	.byte	'?'
	.ascii	"_temp_580\0"
	.align
_Label_592:
	.byte	'?'
	.ascii	"_temp_579\0"
	.align
_Label_593:
	.byte	'?'
	.ascii	"_temp_578\0"
	.align
_Label_594:
	.byte	'?'
	.ascii	"_temp_577\0"
	.align
_Label_595:
	.byte	'?'
	.ascii	"_temp_576\0"
	.align
_Label_596:
	.byte	'?'
	.ascii	"_temp_575\0"
	.align
_Label_597:
	.byte	'?'
	.ascii	"_temp_574\0"
	.align
_Label_598:
	.byte	'?'
	.ascii	"_temp_573\0"
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
_Label_4086:
	push	r0
	sub	r1,1,r1
	bne	_Label_4086
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
	.word	_Label_599
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_600
	.word	8
	.word	4
	.word	0
_Label_599:
	.ascii	"Handle_Sys_Exit\0"
	.align
_Label_600:
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
	.word	_Label_601
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_601:
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
_Label_4087:
	push	r0
	sub	r1,1,r1
	bne	_Label_4087
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
	.word	_Label_602
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_602:
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
_Label_4088:
	push	r0
	sub	r1,1,r1
	bne	_Label_4088
	mov	1816,r13		! source line 1816
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1825,r13		! source line 1825
	mov	"\0\0AS",r10
	mov	1825,r13		! source line 1825
	mov	"\0\0SE",r10
!   _temp_603 = &_P_Kernel_threadManager
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
!   _temp_604 = &_P_Kernel_processManager
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
!   _temp_605 = newPCB + 24
	load	[r14+-324],r1
	add	r1,24,r1
	store	r1,[r14+-308]
!   Data Move: *_temp_605 = newThread  (sizeInBytes=4)
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
!   _temp_606 = newPCB + 16
	load	[r14+-324],r1
	add	r1,16,r1
	store	r1,[r14+-304]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_609 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-292]
!   Data Move: _temp_608 = *_temp_609  (sizeInBytes=4)
	load	[r14+-292],r1
	load	[r1],r1
	store	r1,[r14+-296]
!   if intIsZero (_temp_608) then goto _runtimeErrorNullPointer
	load	[r14+-296],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_610 = _temp_608 + 12
	load	[r14+-296],r1
	add	r1,12,r1
	store	r1,[r14+-288]
!   Data Move: _temp_607 = *_temp_610  (sizeInBytes=4)
	load	[r14+-288],r1
	load	[r1],r1
	store	r1,[r14+-300]
!   Data Move: *_temp_606 = _temp_607  (sizeInBytes=4)
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
!   _temp_611 = newThread + 76
	load	[r14+-320],r1
	add	r1,76,r1
	store	r1,[r14+-284]
!   Data Move: *_temp_611 = 2  (sizeInBytes=4)
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
!   _temp_612 = newThread + 4160
	load	[r14+-320],r1
	add	r1,4160,r1
	store	r1,[r14+-280]
!   Data Move: *_temp_612 = newPCB  (sizeInBytes=4)
	load	[r14+-324],r1
	load	[r14+-280],r2
	store	r1,[r2]
! CALL STATEMENT...
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-320],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_614 = newThread + 4096
	load	[r14+-320],r1
	add	r1,4096,r1
	store	r1,[r14+-272]
!   Move address of _temp_614 [0 ] into _temp_615
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
!   _temp_613 = _temp_615		(4 bytes)
	load	[r14+-268],r1
	store	r1,[r14+-276]
!   Prepare Argument: offset=8  value=_temp_613  sizeInBytes=4
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
!   _temp_620 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-264]
!   Calculate and save the FOR-LOOP ending value
!   _temp_621 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-260]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_620  (sizeInBytes=4)
	load	[r14+-264],r1
	store	r1,[r14+-332]
_Label_616:
!   Perform the FOR-LOOP termination test
!   if i > _temp_621 then goto _Label_619		
	load	[r14+-332],r1
	load	[r14+-260],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_619
_Label_617:
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
!   _temp_626 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-248]
!   Data Move: _temp_625 = *_temp_626  (sizeInBytes=4)
	load	[r14+-248],r1
	load	[r1],r1
	store	r1,[r14+-252]
!   if intIsZero (_temp_625) then goto _runtimeErrorNullPointer
	load	[r14+-252],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_627 = _temp_625 + 124
	load	[r14+-252],r1
	add	r1,124,r1
	store	r1,[r14+-244]
!   Move address of _temp_627 [i ] into _temp_628
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
!   Data Move: _temp_624 = *_temp_628  (sizeInBytes=4)
	load	[r14+-240],r1
	load	[r1],r1
	store	r1,[r14+-256]
!   if intIsZero (_temp_624) then goto _Label_623
	load	[r14+-256],r1
	cmp	r1,r0
	be	_Label_623
!	jmp	_Label_622
_Label_622:
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
!   _temp_631 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-228]
!   Data Move: _temp_630 = *_temp_631  (sizeInBytes=4)
	load	[r14+-228],r1
	load	[r1],r1
	store	r1,[r14+-232]
!   if intIsZero (_temp_630) then goto _runtimeErrorNullPointer
	load	[r14+-232],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_632 = _temp_630 + 124
	load	[r14+-232],r1
	add	r1,124,r1
	store	r1,[r14+-224]
!   Move address of _temp_632 [i ] into _temp_633
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
!   Data Move: _temp_629 = *_temp_633  (sizeInBytes=4)
	load	[r14+-220],r1
	load	[r1],r1
	store	r1,[r14+-236]
!   if intIsZero (_temp_629) then goto _runtimeErrorNullPointer
	load	[r14+-236],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_634 = _temp_629 + 24
	load	[r14+-236],r1
	add	r1,24,r1
	store	r1,[r14+-216]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_639 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-196]
!   Data Move: _temp_638 = *_temp_639  (sizeInBytes=4)
	load	[r14+-196],r1
	load	[r1],r1
	store	r1,[r14+-200]
!   if intIsZero (_temp_638) then goto _runtimeErrorNullPointer
	load	[r14+-200],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_640 = _temp_638 + 124
	load	[r14+-200],r1
	add	r1,124,r1
	store	r1,[r14+-192]
!   Move address of _temp_640 [i ] into _temp_641
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
!   Data Move: _temp_637 = *_temp_641  (sizeInBytes=4)
	load	[r14+-188],r1
	load	[r1],r1
	store	r1,[r14+-204]
!   if intIsZero (_temp_637) then goto _runtimeErrorNullPointer
	load	[r14+-204],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_642 = _temp_637 + 24
	load	[r14+-204],r1
	add	r1,24,r1
	store	r1,[r14+-184]
!   Data Move: _temp_636 = *_temp_642  (sizeInBytes=4)
	load	[r14+-184],r1
	load	[r1],r1
	store	r1,[r14+-208]
!   _temp_635 = _temp_636 + 1		(int)
	load	[r14+-208],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-212]
!   Data Move: *_temp_634 = _temp_635  (sizeInBytes=4)
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
!   _temp_644 = newThread + 4160
	load	[r14+-320],r1
	add	r1,4160,r1
	store	r1,[r14+-176]
!   Data Move: _temp_643 = *_temp_644  (sizeInBytes=4)
	load	[r14+-176],r1
	load	[r1],r1
	store	r1,[r14+-180]
!   if intIsZero (_temp_643) then goto _runtimeErrorNullPointer
	load	[r14+-180],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_645 = _temp_643 + 124
	load	[r14+-180],r1
	add	r1,124,r1
	store	r1,[r14+-172]
!   Move address of _temp_645 [i ] into _temp_646
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
!   _temp_649 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-156]
!   Data Move: _temp_648 = *_temp_649  (sizeInBytes=4)
	load	[r14+-156],r1
	load	[r1],r1
	store	r1,[r14+-160]
!   if intIsZero (_temp_648) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_650 = _temp_648 + 124
	load	[r14+-160],r1
	add	r1,124,r1
	store	r1,[r14+-152]
!   Move address of _temp_650 [i ] into _temp_651
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
!   Data Move: _temp_647 = *_temp_651  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r1],r1
	store	r1,[r14+-164]
!   Data Move: *_temp_646 = _temp_647  (sizeInBytes=4)
	load	[r14+-164],r1
	load	[r14+-168],r2
	store	r1,[r2]
! END IF...
_Label_623:
!   Increment the FOR-LOOP index variable and jump back
_Label_618:
!   i = i + 1
	load	[r14+-332],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-332]
	jmp	_Label_616
! END FOR
_Label_619:
! ASSIGNMENT STATEMENT...
	mov	1846,r13		! source line 1846
	mov	"\0\0AS",r10
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-320],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_652 = newThread + 68
	load	[r14+-320],r1
	add	r1,68,r1
	store	r1,[r14+-144]
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-320],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_654 = newThread + 88
	load	[r14+-320],r1
	add	r1,88,r1
	store	r1,[r14+-136]
!   Move address of _temp_654 [999 ] into _temp_655
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
!   _temp_653 = _temp_655		(4 bytes)
	load	[r14+-132],r1
	store	r1,[r14+-140]
!   Data Move: *_temp_652 = _temp_653  (sizeInBytes=4)
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
!   _temp_657 = newPCB + 32
	load	[r14+-324],r1
	add	r1,32,r1
	store	r1,[r14+-124]
!   _temp_656 = _temp_657		(4 bytes)
	load	[r14+-124],r1
	store	r1,[r14+-128]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_660 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-112]
!   Data Move: _temp_659 = *_temp_660  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if intIsZero (_temp_659) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_661 = _temp_659 + 32
	load	[r14+-116],r1
	add	r1,32,r1
	store	r1,[r14+-108]
!   _temp_662 = _temp_661 + 4
	load	[r14+-108],r1
	add	r1,4,r1
	store	r1,[r14+-104]
!   Data Move: _temp_658 = *_temp_662  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-120]
!   _temp_663 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-100]
!   Prepare Argument: offset=12  value=_temp_656  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_658  sizeInBytes=4
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
!   _temp_668 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-96]
!   Calculate and save the FOR-LOOP ending value
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_672 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-80]
!   Data Move: _temp_671 = *_temp_672  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if intIsZero (_temp_671) then goto _runtimeErrorNullPointer
	load	[r14+-84],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_673 = _temp_671 + 32
	load	[r14+-84],r1
	add	r1,32,r1
	store	r1,[r14+-76]
!   _temp_674 = _temp_673 + 4
	load	[r14+-76],r1
	add	r1,4,r1
	store	r1,[r14+-72]
!   Data Move: _temp_670 = *_temp_674  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-88]
!   _temp_669 = _temp_670 - 1		(int)
	load	[r14+-88],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-92]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_668  (sizeInBytes=4)
	load	[r14+-96],r1
	store	r1,[r14+-332]
_Label_664:
!   Perform the FOR-LOOP termination test
!   if i > _temp_669 then goto _Label_667		
	load	[r14+-332],r1
	load	[r14+-92],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_667
_Label_665:
	mov	1849,r13		! source line 1849
	mov	"\0\0FB",r10
! CALL STATEMENT...
	mov	1850,r13		! source line 1850
	mov	"\0\0SE",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-324],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_676 = newPCB + 32
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
!   Retrieve Result: targetName=_temp_675  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-68]
	mov	1850,r13		! source line 1850
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_679 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-52]
!   Data Move: _temp_678 = *_temp_679  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_678) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_680 = _temp_678 + 32
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
!   Retrieve Result: targetName=_temp_677  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_675  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_677  sizeInBytes=4
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
!   _temp_685 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-40]
!   Data Move: _temp_684 = *_temp_685  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_684) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_686 = _temp_684 + 32
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
!   Retrieve Result: targetName=_temp_683  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   _temp_687 = _temp_683 XOR 0		(bool)
	loadb	[r14+-10],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_687 then goto _Label_682 else goto _Label_681
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_681
	jmp	_Label_682
_Label_681:
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
!   _temp_688 = newPCB + 32
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
	jmp	_Label_689
_Label_682:
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
!   _temp_690 = newPCB + 32
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
_Label_689:
!   Increment the FOR-LOOP index variable and jump back
_Label_666:
!   i = i + 1
	load	[r14+-332],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-332]
	jmp	_Label_664
! END FOR
_Label_667:
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
!   _temp_691 = _function_186_ResumeChildAfterFork
	set	_function_186_ResumeChildAfterFork,r1
	store	r1,[r14+-24]
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-320],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_691  sizeInBytes=4
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
!   _temp_693 = newPCB + 12
	load	[r14+-324],r1
	add	r1,12,r1
	store	r1,[r14+-16]
!   Data Move: _temp_692 = *_temp_693  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   ReturnResult: _temp_692  (sizeInBytes=4)
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
	.word	_Label_694
	.word	0		! total size of parameters
	.word	340		! frame size = 340
	.word	_Label_695
	.word	-16
	.word	4
	.word	_Label_696
	.word	-20
	.word	4
	.word	_Label_697
	.word	-24
	.word	4
	.word	_Label_698
	.word	-28
	.word	4
	.word	_Label_699
	.word	-32
	.word	4
	.word	_Label_700
	.word	-9
	.word	1
	.word	_Label_701
	.word	-36
	.word	4
	.word	_Label_702
	.word	-40
	.word	4
	.word	_Label_703
	.word	-44
	.word	4
	.word	_Label_704
	.word	-10
	.word	1
	.word	_Label_705
	.word	-48
	.word	4
	.word	_Label_706
	.word	-52
	.word	4
	.word	_Label_707
	.word	-56
	.word	4
	.word	_Label_708
	.word	-60
	.word	4
	.word	_Label_709
	.word	-64
	.word	4
	.word	_Label_710
	.word	-68
	.word	4
	.word	_Label_711
	.word	-72
	.word	4
	.word	_Label_712
	.word	-76
	.word	4
	.word	_Label_713
	.word	-80
	.word	4
	.word	_Label_714
	.word	-84
	.word	4
	.word	_Label_715
	.word	-88
	.word	4
	.word	_Label_716
	.word	-92
	.word	4
	.word	_Label_717
	.word	-96
	.word	4
	.word	_Label_718
	.word	-100
	.word	4
	.word	_Label_719
	.word	-104
	.word	4
	.word	_Label_720
	.word	-108
	.word	4
	.word	_Label_721
	.word	-112
	.word	4
	.word	_Label_722
	.word	-116
	.word	4
	.word	_Label_723
	.word	-120
	.word	4
	.word	_Label_724
	.word	-124
	.word	4
	.word	_Label_725
	.word	-128
	.word	4
	.word	_Label_726
	.word	-132
	.word	4
	.word	_Label_727
	.word	-136
	.word	4
	.word	_Label_728
	.word	-140
	.word	4
	.word	_Label_729
	.word	-144
	.word	4
	.word	_Label_730
	.word	-148
	.word	4
	.word	_Label_731
	.word	-152
	.word	4
	.word	_Label_732
	.word	-156
	.word	4
	.word	_Label_733
	.word	-160
	.word	4
	.word	_Label_734
	.word	-164
	.word	4
	.word	_Label_735
	.word	-168
	.word	4
	.word	_Label_736
	.word	-172
	.word	4
	.word	_Label_737
	.word	-176
	.word	4
	.word	_Label_738
	.word	-180
	.word	4
	.word	_Label_739
	.word	-184
	.word	4
	.word	_Label_740
	.word	-188
	.word	4
	.word	_Label_741
	.word	-192
	.word	4
	.word	_Label_742
	.word	-196
	.word	4
	.word	_Label_743
	.word	-200
	.word	4
	.word	_Label_744
	.word	-204
	.word	4
	.word	_Label_745
	.word	-208
	.word	4
	.word	_Label_746
	.word	-212
	.word	4
	.word	_Label_747
	.word	-216
	.word	4
	.word	_Label_748
	.word	-220
	.word	4
	.word	_Label_749
	.word	-224
	.word	4
	.word	_Label_750
	.word	-228
	.word	4
	.word	_Label_751
	.word	-232
	.word	4
	.word	_Label_752
	.word	-236
	.word	4
	.word	_Label_753
	.word	-240
	.word	4
	.word	_Label_754
	.word	-244
	.word	4
	.word	_Label_755
	.word	-248
	.word	4
	.word	_Label_756
	.word	-252
	.word	4
	.word	_Label_757
	.word	-256
	.word	4
	.word	_Label_758
	.word	-260
	.word	4
	.word	_Label_759
	.word	-264
	.word	4
	.word	_Label_760
	.word	-268
	.word	4
	.word	_Label_761
	.word	-272
	.word	4
	.word	_Label_762
	.word	-276
	.word	4
	.word	_Label_763
	.word	-280
	.word	4
	.word	_Label_764
	.word	-284
	.word	4
	.word	_Label_765
	.word	-288
	.word	4
	.word	_Label_766
	.word	-292
	.word	4
	.word	_Label_767
	.word	-296
	.word	4
	.word	_Label_768
	.word	-300
	.word	4
	.word	_Label_769
	.word	-304
	.word	4
	.word	_Label_770
	.word	-308
	.word	4
	.word	_Label_771
	.word	-312
	.word	4
	.word	_Label_772
	.word	-316
	.word	4
	.word	_Label_773
	.word	-320
	.word	4
	.word	_Label_774
	.word	-324
	.word	4
	.word	_Label_775
	.word	-328
	.word	4
	.word	_Label_776
	.word	-332
	.word	4
	.word	_Label_777
	.word	-336
	.word	4
	.word	0
_Label_694:
	.ascii	"Handle_Sys_Fork\0"
	.align
_Label_695:
	.byte	'?'
	.ascii	"_temp_693\0"
	.align
_Label_696:
	.byte	'?'
	.ascii	"_temp_692\0"
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
	.ascii	"_temp_688\0"
	.align
_Label_700:
	.byte	'C'
	.ascii	"_temp_687\0"
	.align
_Label_701:
	.byte	'?'
	.ascii	"_temp_686\0"
	.align
_Label_702:
	.byte	'?'
	.ascii	"_temp_685\0"
	.align
_Label_703:
	.byte	'?'
	.ascii	"_temp_684\0"
	.align
_Label_704:
	.byte	'C'
	.ascii	"_temp_683\0"
	.align
_Label_705:
	.byte	'?'
	.ascii	"_temp_680\0"
	.align
_Label_706:
	.byte	'?'
	.ascii	"_temp_679\0"
	.align
_Label_707:
	.byte	'?'
	.ascii	"_temp_678\0"
	.align
_Label_708:
	.byte	'?'
	.ascii	"_temp_677\0"
	.align
_Label_709:
	.byte	'?'
	.ascii	"_temp_676\0"
	.align
_Label_710:
	.byte	'?'
	.ascii	"_temp_675\0"
	.align
_Label_711:
	.byte	'?'
	.ascii	"_temp_674\0"
	.align
_Label_712:
	.byte	'?'
	.ascii	"_temp_673\0"
	.align
_Label_713:
	.byte	'?'
	.ascii	"_temp_672\0"
	.align
_Label_714:
	.byte	'?'
	.ascii	"_temp_671\0"
	.align
_Label_715:
	.byte	'?'
	.ascii	"_temp_670\0"
	.align
_Label_716:
	.byte	'?'
	.ascii	"_temp_669\0"
	.align
_Label_717:
	.byte	'?'
	.ascii	"_temp_668\0"
	.align
_Label_718:
	.byte	'?'
	.ascii	"_temp_663\0"
	.align
_Label_719:
	.byte	'?'
	.ascii	"_temp_662\0"
	.align
_Label_720:
	.byte	'?'
	.ascii	"_temp_661\0"
	.align
_Label_721:
	.byte	'?'
	.ascii	"_temp_660\0"
	.align
_Label_722:
	.byte	'?'
	.ascii	"_temp_659\0"
	.align
_Label_723:
	.byte	'?'
	.ascii	"_temp_658\0"
	.align
_Label_724:
	.byte	'?'
	.ascii	"_temp_657\0"
	.align
_Label_725:
	.byte	'?'
	.ascii	"_temp_656\0"
	.align
_Label_726:
	.byte	'?'
	.ascii	"_temp_655\0"
	.align
_Label_727:
	.byte	'?'
	.ascii	"_temp_654\0"
	.align
_Label_728:
	.byte	'?'
	.ascii	"_temp_653\0"
	.align
_Label_729:
	.byte	'?'
	.ascii	"_temp_652\0"
	.align
_Label_730:
	.byte	'?'
	.ascii	"_temp_651\0"
	.align
_Label_731:
	.byte	'?'
	.ascii	"_temp_650\0"
	.align
_Label_732:
	.byte	'?'
	.ascii	"_temp_649\0"
	.align
_Label_733:
	.byte	'?'
	.ascii	"_temp_648\0"
	.align
_Label_734:
	.byte	'?'
	.ascii	"_temp_647\0"
	.align
_Label_735:
	.byte	'?'
	.ascii	"_temp_646\0"
	.align
_Label_736:
	.byte	'?'
	.ascii	"_temp_645\0"
	.align
_Label_737:
	.byte	'?'
	.ascii	"_temp_644\0"
	.align
_Label_738:
	.byte	'?'
	.ascii	"_temp_643\0"
	.align
_Label_739:
	.byte	'?'
	.ascii	"_temp_642\0"
	.align
_Label_740:
	.byte	'?'
	.ascii	"_temp_641\0"
	.align
_Label_741:
	.byte	'?'
	.ascii	"_temp_640\0"
	.align
_Label_742:
	.byte	'?'
	.ascii	"_temp_639\0"
	.align
_Label_743:
	.byte	'?'
	.ascii	"_temp_638\0"
	.align
_Label_744:
	.byte	'?'
	.ascii	"_temp_637\0"
	.align
_Label_745:
	.byte	'?'
	.ascii	"_temp_636\0"
	.align
_Label_746:
	.byte	'?'
	.ascii	"_temp_635\0"
	.align
_Label_747:
	.byte	'?'
	.ascii	"_temp_634\0"
	.align
_Label_748:
	.byte	'?'
	.ascii	"_temp_633\0"
	.align
_Label_749:
	.byte	'?'
	.ascii	"_temp_632\0"
	.align
_Label_750:
	.byte	'?'
	.ascii	"_temp_631\0"
	.align
_Label_751:
	.byte	'?'
	.ascii	"_temp_630\0"
	.align
_Label_752:
	.byte	'?'
	.ascii	"_temp_629\0"
	.align
_Label_753:
	.byte	'?'
	.ascii	"_temp_628\0"
	.align
_Label_754:
	.byte	'?'
	.ascii	"_temp_627\0"
	.align
_Label_755:
	.byte	'?'
	.ascii	"_temp_626\0"
	.align
_Label_756:
	.byte	'?'
	.ascii	"_temp_625\0"
	.align
_Label_757:
	.byte	'?'
	.ascii	"_temp_624\0"
	.align
_Label_758:
	.byte	'?'
	.ascii	"_temp_621\0"
	.align
_Label_759:
	.byte	'?'
	.ascii	"_temp_620\0"
	.align
_Label_760:
	.byte	'?'
	.ascii	"_temp_615\0"
	.align
_Label_761:
	.byte	'?'
	.ascii	"_temp_614\0"
	.align
_Label_762:
	.byte	'?'
	.ascii	"_temp_613\0"
	.align
_Label_763:
	.byte	'?'
	.ascii	"_temp_612\0"
	.align
_Label_764:
	.byte	'?'
	.ascii	"_temp_611\0"
	.align
_Label_765:
	.byte	'?'
	.ascii	"_temp_610\0"
	.align
_Label_766:
	.byte	'?'
	.ascii	"_temp_609\0"
	.align
_Label_767:
	.byte	'?'
	.ascii	"_temp_608\0"
	.align
_Label_768:
	.byte	'?'
	.ascii	"_temp_607\0"
	.align
_Label_769:
	.byte	'?'
	.ascii	"_temp_606\0"
	.align
_Label_770:
	.byte	'?'
	.ascii	"_temp_605\0"
	.align
_Label_771:
	.byte	'?'
	.ascii	"_temp_604\0"
	.align
_Label_772:
	.byte	'?'
	.ascii	"_temp_603\0"
	.align
_Label_773:
	.byte	'P'
	.ascii	"newThread\0"
	.align
_Label_774:
	.byte	'P'
	.ascii	"newPCB\0"
	.align
_Label_775:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_776:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_777:
	.byte	'I'
	.ascii	"oldUserPC\0"
	.align
! 
! ===============  FUNCTION ResumeChildAfterFork  ===============
! 
_function_186_ResumeChildAfterFork:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_186_ResumeChildAfterFork,r1
	push	r1
	mov	17,r1
_Label_4089:
	push	r0
	sub	r1,1,r1
	bne	_Label_4089
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
!   _temp_779 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-48]
!   Data Move: _temp_778 = *_temp_779  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_778) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_780 = _temp_778 + 32
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
!   _temp_782 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_782 [0 ] into _temp_783
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
!   _temp_781 = _temp_783		(4 bytes)
	load	[r14+-32],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_781  sizeInBytes=4
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
!   _temp_784 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_784 = 1  (sizeInBytes=1)
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
!   _temp_785 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-24]
!   Move address of _temp_785 [14 ] into _temp_786
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
!   Data Move: initUserStackTop = *_temp_786  (sizeInBytes=4)
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
!   _temp_787 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-16]
!   Move address of _temp_787 [999 ] into _temp_788
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
!   initSystemStackTop = _temp_788		(4 bytes)
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
_RoutineDescriptor__function_186_ResumeChildAfterFork:
	.word	_sourceFileName
	.word	_Label_789
	.word	4		! total size of parameters
	.word	68		! frame size = 68
	.word	_Label_790
	.word	8
	.word	4
	.word	_Label_791
	.word	-12
	.word	4
	.word	_Label_792
	.word	-16
	.word	4
	.word	_Label_793
	.word	-20
	.word	4
	.word	_Label_794
	.word	-24
	.word	4
	.word	_Label_795
	.word	-28
	.word	4
	.word	_Label_796
	.word	-32
	.word	4
	.word	_Label_797
	.word	-36
	.word	4
	.word	_Label_798
	.word	-40
	.word	4
	.word	_Label_799
	.word	-44
	.word	4
	.word	_Label_800
	.word	-48
	.word	4
	.word	_Label_801
	.word	-52
	.word	4
	.word	_Label_802
	.word	-56
	.word	4
	.word	_Label_803
	.word	-60
	.word	4
	.word	_Label_804
	.word	-64
	.word	4
	.word	0
_Label_789:
	.ascii	"ResumeChildAfterFork\0"
	.align
_Label_790:
	.byte	'I'
	.ascii	"startPC\0"
	.align
_Label_791:
	.byte	'?'
	.ascii	"_temp_788\0"
	.align
_Label_792:
	.byte	'?'
	.ascii	"_temp_787\0"
	.align
_Label_793:
	.byte	'?'
	.ascii	"_temp_786\0"
	.align
_Label_794:
	.byte	'?'
	.ascii	"_temp_785\0"
	.align
_Label_795:
	.byte	'?'
	.ascii	"_temp_784\0"
	.align
_Label_796:
	.byte	'?'
	.ascii	"_temp_783\0"
	.align
_Label_797:
	.byte	'?'
	.ascii	"_temp_782\0"
	.align
_Label_798:
	.byte	'?'
	.ascii	"_temp_781\0"
	.align
_Label_799:
	.byte	'?'
	.ascii	"_temp_780\0"
	.align
_Label_800:
	.byte	'?'
	.ascii	"_temp_779\0"
	.align
_Label_801:
	.byte	'?'
	.ascii	"_temp_778\0"
	.align
_Label_802:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_803:
	.byte	'I'
	.ascii	"initUserStackTop\0"
	.align
_Label_804:
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
_Label_4090:
	push	r0
	sub	r1,1,r1
	bne	_Label_4090
	mov	1883,r13		! source line 1883
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! FOR STATEMENT...
	mov	1887,r13		! source line 1887
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_809 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-112]
!   Calculate and save the FOR-LOOP ending value
!   _temp_810 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-108]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_809  (sizeInBytes=4)
	load	[r14+-112],r1
	store	r1,[r14+-116]
_Label_805:
!   Perform the FOR-LOOP termination test
!   if i > _temp_810 then goto _Label_808		
	load	[r14+-116],r1
	load	[r14+-108],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_808
_Label_806:
	mov	1887,r13		! source line 1887
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1888,r13		! source line 1888
	mov	"\0\0IF",r10
!   _temp_816 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-100]
!   _temp_817 = _temp_816 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-96]
!   Move address of _temp_817 [i ] into _temp_818
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
!   _temp_819 = _temp_818 + 12
	load	[r14+-92],r1
	add	r1,12,r1
	store	r1,[r14+-88]
!   Data Move: _temp_815 = *_temp_819  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_815 != processID then goto _Label_812		(int)
	load	[r14+-104],r1
	load	[r14+8],r2
	cmp	r1,r2
	bne	_Label_812
!	jmp	_Label_814
_Label_814:
!   _temp_821 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-80]
!   _temp_822 = _temp_821 + 4
	load	[r14+-80],r1
	add	r1,4,r1
	store	r1,[r14+-76]
!   Move address of _temp_822 [i ] into _temp_823
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
!   _temp_824 = _temp_823 + 16
	load	[r14+-72],r1
	add	r1,16,r1
	store	r1,[r14+-68]
!   Data Move: _temp_820 = *_temp_824  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_827 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-56]
!   Data Move: _temp_826 = *_temp_827  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_826) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_828 = _temp_826 + 12
	load	[r14+-60],r1
	add	r1,12,r1
	store	r1,[r14+-52]
!   Data Move: _temp_825 = *_temp_828  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   if _temp_820 != _temp_825 then goto _Label_812		(int)
	load	[r14+-84],r1
	load	[r14+-64],r2
	cmp	r1,r2
	bne	_Label_812
!	jmp	_Label_813
_Label_813:
!   _temp_830 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-44]
!   _temp_831 = _temp_830 + 4
	load	[r14+-44],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Move address of _temp_831 [i ] into _temp_832
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
!   _temp_833 = _temp_832 + 20
	load	[r14+-36],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: _temp_829 = *_temp_833  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   if _temp_829 == 3 then goto _Label_812		(int)
	load	[r14+-48],r1
	mov	3,r2
	cmp	r1,r2
	be	_Label_812
!	jmp	_Label_811
_Label_811:
! THEN...
	mov	1889,r13		! source line 1889
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1889,r13		! source line 1889
	mov	"\0\0AS",r10
	mov	1889,r13		! source line 1889
	mov	"\0\0SE",r10
!   _temp_835 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-24]
!   _temp_836 = _temp_835 + 4
	load	[r14+-24],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_836 [i ] into _temp_837
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
!   _temp_834 = _temp_837		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-28]
!   _temp_838 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_834  sizeInBytes=4
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
_Label_812:
!   Increment the FOR-LOOP index variable and jump back
_Label_807:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_805
! END FOR
_Label_808:
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
	.word	_Label_839
	.word	4		! total size of parameters
	.word	120		! frame size = 120
	.word	_Label_840
	.word	8
	.word	4
	.word	_Label_841
	.word	-12
	.word	4
	.word	_Label_842
	.word	-16
	.word	4
	.word	_Label_843
	.word	-20
	.word	4
	.word	_Label_844
	.word	-24
	.word	4
	.word	_Label_845
	.word	-28
	.word	4
	.word	_Label_846
	.word	-32
	.word	4
	.word	_Label_847
	.word	-36
	.word	4
	.word	_Label_848
	.word	-40
	.word	4
	.word	_Label_849
	.word	-44
	.word	4
	.word	_Label_850
	.word	-48
	.word	4
	.word	_Label_851
	.word	-52
	.word	4
	.word	_Label_852
	.word	-56
	.word	4
	.word	_Label_853
	.word	-60
	.word	4
	.word	_Label_854
	.word	-64
	.word	4
	.word	_Label_855
	.word	-68
	.word	4
	.word	_Label_856
	.word	-72
	.word	4
	.word	_Label_857
	.word	-76
	.word	4
	.word	_Label_858
	.word	-80
	.word	4
	.word	_Label_859
	.word	-84
	.word	4
	.word	_Label_860
	.word	-88
	.word	4
	.word	_Label_861
	.word	-92
	.word	4
	.word	_Label_862
	.word	-96
	.word	4
	.word	_Label_863
	.word	-100
	.word	4
	.word	_Label_864
	.word	-104
	.word	4
	.word	_Label_865
	.word	-108
	.word	4
	.word	_Label_866
	.word	-112
	.word	4
	.word	_Label_867
	.word	-116
	.word	4
	.word	_Label_868
	.word	-120
	.word	4
	.word	0
_Label_839:
	.ascii	"Handle_Sys_Join\0"
	.align
_Label_840:
	.byte	'I'
	.ascii	"processID\0"
	.align
_Label_841:
	.byte	'?'
	.ascii	"_temp_838\0"
	.align
_Label_842:
	.byte	'?'
	.ascii	"_temp_837\0"
	.align
_Label_843:
	.byte	'?'
	.ascii	"_temp_836\0"
	.align
_Label_844:
	.byte	'?'
	.ascii	"_temp_835\0"
	.align
_Label_845:
	.byte	'?'
	.ascii	"_temp_834\0"
	.align
_Label_846:
	.byte	'?'
	.ascii	"_temp_833\0"
	.align
_Label_847:
	.byte	'?'
	.ascii	"_temp_832\0"
	.align
_Label_848:
	.byte	'?'
	.ascii	"_temp_831\0"
	.align
_Label_849:
	.byte	'?'
	.ascii	"_temp_830\0"
	.align
_Label_850:
	.byte	'?'
	.ascii	"_temp_829\0"
	.align
_Label_851:
	.byte	'?'
	.ascii	"_temp_828\0"
	.align
_Label_852:
	.byte	'?'
	.ascii	"_temp_827\0"
	.align
_Label_853:
	.byte	'?'
	.ascii	"_temp_826\0"
	.align
_Label_854:
	.byte	'?'
	.ascii	"_temp_825\0"
	.align
_Label_855:
	.byte	'?'
	.ascii	"_temp_824\0"
	.align
_Label_856:
	.byte	'?'
	.ascii	"_temp_823\0"
	.align
_Label_857:
	.byte	'?'
	.ascii	"_temp_822\0"
	.align
_Label_858:
	.byte	'?'
	.ascii	"_temp_821\0"
	.align
_Label_859:
	.byte	'?'
	.ascii	"_temp_820\0"
	.align
_Label_860:
	.byte	'?'
	.ascii	"_temp_819\0"
	.align
_Label_861:
	.byte	'?'
	.ascii	"_temp_818\0"
	.align
_Label_862:
	.byte	'?'
	.ascii	"_temp_817\0"
	.align
_Label_863:
	.byte	'?'
	.ascii	"_temp_816\0"
	.align
_Label_864:
	.byte	'?'
	.ascii	"_temp_815\0"
	.align
_Label_865:
	.byte	'?'
	.ascii	"_temp_810\0"
	.align
_Label_866:
	.byte	'?'
	.ascii	"_temp_809\0"
	.align
_Label_867:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_868:
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
_Label_4091:
	push	r0
	sub	r1,1,r1
	bne	_Label_4091
	mov	1898,r13		! source line 1898
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! newAddrSpace
!   NEW CLASS Constructor...
!   ZeroMemory: newAddrSpace = zeros  (sizeInBytes=92)
	add	r14,-204,r4
	mov	23,r3
_Label_4092:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4092
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
!   _temp_870 = &kernalFileName
	add	r14,-228,r1
	store	r1,[r14+-108]
!   _temp_871 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-104]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_873 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-96]
!   Data Move: _temp_872 = *_temp_873  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_872) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_874 = _temp_872 + 32
	load	[r14+-100],r1
	add	r1,32,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=12  value=_temp_870  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_871  sizeInBytes=4
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
!   if temp >= 0 then goto _Label_876		(int)
	load	[r14+-248],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_876
!	jmp	_Label_875
_Label_875:
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
_Label_876:
! SEND STATEMENT...
	mov	1915,r13		! source line 1915
	mov	"\0\0SE",r10
!   _temp_877 = &newAddrSpace
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
!   _temp_878 = &kernalFileName
	add	r14,-228,r1
	store	r1,[r14+-84]
!   _temp_879 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=12  value=_temp_878  sizeInBytes=4
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
!   if intIsZero (openFilePtr) then goto _Label_880
	load	[r14+-244],r1
	cmp	r1,r0
	be	_Label_880
	jmp	_Label_881
_Label_880:
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
_Label_881:
! ASSIGNMENT STATEMENT...
	mov	1922,r13		! source line 1922
	mov	"\0\0AS",r10
	mov	1922,r13		! source line 1922
	mov	"\0\0SE",r10
!   _temp_882 = &newAddrSpace
	add	r14,-204,r1
	store	r1,[r14+-76]
!   if intIsZero (openFilePtr) then goto _runtimeErrorNullPointer
	load	[r14+-244],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_882  sizeInBytes=4
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
!   if entryPoint >= 0 then goto _Label_884		(int)
	load	[r14+-240],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_884
!	jmp	_Label_883
_Label_883:
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
_Label_884:
! SEND STATEMENT...
	mov	1927,r13		! source line 1927
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_887 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-64]
!   Data Move: _temp_886 = *_temp_887  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_886) then goto _runtimeErrorNullPointer
	load	[r14+-68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_888 = _temp_886 + 32
	load	[r14+-68],r1
	add	r1,32,r1
	store	r1,[r14+-60]
!   _temp_885 = _temp_888		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-72]
!   _temp_889 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=12  value=_temp_885  sizeInBytes=4
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
!   _temp_891 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-48]
!   Data Move: _temp_890 = *_temp_891  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_890) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_892 = _temp_890 + 32
	load	[r14+-52],r1
	add	r1,32,r1
	store	r1,[r14+-44]
!   Data Move: *_temp_892 = newAddrSpace  (sizeInBytes=92)
	add	r14,-204,r5
	load	[r14+-44],r4
	mov	23,r3
_Label_4093:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4093
! SEND STATEMENT...
	mov	1931,r13		! source line 1931
	mov	"\0\0SE",r10
!   _temp_893 = &_P_Kernel_fileManager
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
!   _temp_894 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_894 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-36],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1934,r13		! source line 1934
	mov	"\0\0AS",r10
!   _temp_896 = &newAddrSpace
	add	r14,-204,r1
	store	r1,[r14+-28]
!   _temp_897 = _temp_896 + 4
	load	[r14+-28],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Data Move: _temp_895 = *_temp_897  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   initUserStackTop = _temp_895 * 8192		(int)
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
!   _temp_898 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_898 [999 ] into _temp_899
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
!   initSystemStackTop = _temp_899		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-236]
! SEND STATEMENT...
	mov	1937,r13		! source line 1937
	mov	"\0\0SE",r10
!   _temp_900 = &newAddrSpace
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
	.word	_Label_901
	.word	4		! total size of parameters
	.word	256		! frame size = 256
	.word	_Label_902
	.word	8
	.word	4
	.word	_Label_903
	.word	-12
	.word	4
	.word	_Label_904
	.word	-16
	.word	4
	.word	_Label_905
	.word	-20
	.word	4
	.word	_Label_906
	.word	-24
	.word	4
	.word	_Label_907
	.word	-28
	.word	4
	.word	_Label_908
	.word	-32
	.word	4
	.word	_Label_909
	.word	-36
	.word	4
	.word	_Label_910
	.word	-40
	.word	4
	.word	_Label_911
	.word	-44
	.word	4
	.word	_Label_912
	.word	-48
	.word	4
	.word	_Label_913
	.word	-52
	.word	4
	.word	_Label_914
	.word	-56
	.word	4
	.word	_Label_915
	.word	-60
	.word	4
	.word	_Label_916
	.word	-64
	.word	4
	.word	_Label_917
	.word	-68
	.word	4
	.word	_Label_918
	.word	-72
	.word	4
	.word	_Label_919
	.word	-76
	.word	4
	.word	_Label_920
	.word	-80
	.word	4
	.word	_Label_921
	.word	-84
	.word	4
	.word	_Label_922
	.word	-88
	.word	4
	.word	_Label_923
	.word	-92
	.word	4
	.word	_Label_924
	.word	-96
	.word	4
	.word	_Label_925
	.word	-100
	.word	4
	.word	_Label_926
	.word	-104
	.word	4
	.word	_Label_927
	.word	-108
	.word	4
	.word	_Label_928
	.word	-112
	.word	4
	.word	_Label_929
	.word	-204
	.word	92
	.word	_Label_930
	.word	-228
	.word	24
	.word	_Label_931
	.word	-232
	.word	4
	.word	_Label_932
	.word	-236
	.word	4
	.word	_Label_933
	.word	-240
	.word	4
	.word	_Label_934
	.word	-244
	.word	4
	.word	_Label_935
	.word	-248
	.word	4
	.word	0
_Label_901:
	.ascii	"Handle_Sys_Exec\0"
	.align
_Label_902:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_903:
	.byte	'?'
	.ascii	"_temp_900\0"
	.align
_Label_904:
	.byte	'?'
	.ascii	"_temp_899\0"
	.align
_Label_905:
	.byte	'?'
	.ascii	"_temp_898\0"
	.align
_Label_906:
	.byte	'?'
	.ascii	"_temp_897\0"
	.align
_Label_907:
	.byte	'?'
	.ascii	"_temp_896\0"
	.align
_Label_908:
	.byte	'?'
	.ascii	"_temp_895\0"
	.align
_Label_909:
	.byte	'?'
	.ascii	"_temp_894\0"
	.align
_Label_910:
	.byte	'?'
	.ascii	"_temp_893\0"
	.align
_Label_911:
	.byte	'?'
	.ascii	"_temp_892\0"
	.align
_Label_912:
	.byte	'?'
	.ascii	"_temp_891\0"
	.align
_Label_913:
	.byte	'?'
	.ascii	"_temp_890\0"
	.align
_Label_914:
	.byte	'?'
	.ascii	"_temp_889\0"
	.align
_Label_915:
	.byte	'?'
	.ascii	"_temp_888\0"
	.align
_Label_916:
	.byte	'?'
	.ascii	"_temp_887\0"
	.align
_Label_917:
	.byte	'?'
	.ascii	"_temp_886\0"
	.align
_Label_918:
	.byte	'?'
	.ascii	"_temp_885\0"
	.align
_Label_919:
	.byte	'?'
	.ascii	"_temp_882\0"
	.align
_Label_920:
	.byte	'?'
	.ascii	"_temp_879\0"
	.align
_Label_921:
	.byte	'?'
	.ascii	"_temp_878\0"
	.align
_Label_922:
	.byte	'?'
	.ascii	"_temp_877\0"
	.align
_Label_923:
	.byte	'?'
	.ascii	"_temp_874\0"
	.align
_Label_924:
	.byte	'?'
	.ascii	"_temp_873\0"
	.align
_Label_925:
	.byte	'?'
	.ascii	"_temp_872\0"
	.align
_Label_926:
	.byte	'?'
	.ascii	"_temp_871\0"
	.align
_Label_927:
	.byte	'?'
	.ascii	"_temp_870\0"
	.align
_Label_928:
	.byte	'?'
	.ascii	"_temp_869\0"
	.align
_Label_929:
	.byte	'O'
	.ascii	"newAddrSpace\0"
	.align
_Label_930:
	.byte	'A'
	.ascii	"kernalFileName\0"
	.align
_Label_931:
	.byte	'I'
	.ascii	"initUserStackTop\0"
	.align
_Label_932:
	.byte	'I'
	.ascii	"initSystemStackTop\0"
	.align
_Label_933:
	.byte	'I'
	.ascii	"entryPoint\0"
	.align
_Label_934:
	.byte	'P'
	.ascii	"openFilePtr\0"
	.align
_Label_935:
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
_Label_4094:
	push	r0
	sub	r1,1,r1
	bne	_Label_4094
	mov	1944,r13		! source line 1944
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1949,r13		! source line 1949
	mov	"\0\0AS",r10
	mov	1949,r13		! source line 1949
	mov	"\0\0SE",r10
!   _temp_936 = &kernalFileName
	add	r14,-76,r1
	store	r1,[r14+-48]
!   _temp_937 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_939 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-36]
!   Data Move: _temp_938 = *_temp_939  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_938) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_940 = _temp_938 + 32
	load	[r14+-40],r1
	add	r1,32,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_936  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_937  sizeInBytes=4
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
!   _temp_941 = _StringConst_38
	set	_StringConst_38,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_941  sizeInBytes=4
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
!   _temp_942 = _StringConst_39
	set	_StringConst_39,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_942  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1952,r13		! source line 1952
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_943 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_943  sizeInBytes=4
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
!   _temp_944 = _StringConst_40
	set	_StringConst_40,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_944  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1955,r13		! source line 1955
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_945 = &kernalFileName
	add	r14,-76,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_945  sizeInBytes=4
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
	.word	_Label_946
	.word	4		! total size of parameters
	.word	84		! frame size = 84
	.word	_Label_947
	.word	8
	.word	4
	.word	_Label_948
	.word	-12
	.word	4
	.word	_Label_949
	.word	-16
	.word	4
	.word	_Label_950
	.word	-20
	.word	4
	.word	_Label_951
	.word	-24
	.word	4
	.word	_Label_952
	.word	-28
	.word	4
	.word	_Label_953
	.word	-32
	.word	4
	.word	_Label_954
	.word	-36
	.word	4
	.word	_Label_955
	.word	-40
	.word	4
	.word	_Label_956
	.word	-44
	.word	4
	.word	_Label_957
	.word	-48
	.word	4
	.word	_Label_958
	.word	-52
	.word	4
	.word	_Label_959
	.word	-76
	.word	24
	.word	0
_Label_946:
	.ascii	"Handle_Sys_Create\0"
	.align
_Label_947:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_948:
	.byte	'?'
	.ascii	"_temp_945\0"
	.align
_Label_949:
	.byte	'?'
	.ascii	"_temp_944\0"
	.align
_Label_950:
	.byte	'?'
	.ascii	"_temp_943\0"
	.align
_Label_951:
	.byte	'?'
	.ascii	"_temp_942\0"
	.align
_Label_952:
	.byte	'?'
	.ascii	"_temp_941\0"
	.align
_Label_953:
	.byte	'?'
	.ascii	"_temp_940\0"
	.align
_Label_954:
	.byte	'?'
	.ascii	"_temp_939\0"
	.align
_Label_955:
	.byte	'?'
	.ascii	"_temp_938\0"
	.align
_Label_956:
	.byte	'?'
	.ascii	"_temp_937\0"
	.align
_Label_957:
	.byte	'?'
	.ascii	"_temp_936\0"
	.align
_Label_958:
	.byte	'I'
	.ascii	"temp\0"
	.align
_Label_959:
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
	mov	36,r1
_Label_4095:
	push	r0
	sub	r1,1,r1
	bne	_Label_4095
	mov	1963,r13		! source line 1963
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1971,r13		! source line 1971
	mov	"\0\0AS",r10
	mov	1971,r13		! source line 1971
	mov	"\0\0SE",r10
!   _temp_960 = &kernalFileName
	add	r14,-132,r1
	store	r1,[r14+-96]
!   _temp_961 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-92]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_963 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-84]
!   Data Move: _temp_962 = *_temp_963  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-88]
!   if intIsZero (_temp_962) then goto _runtimeErrorNullPointer
	load	[r14+-88],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_964 = _temp_962 + 32
	load	[r14+-88],r1
	add	r1,32,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=12  value=_temp_960  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_961  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=temp  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-100]
! ASSIGNMENT STATEMENT...
	mov	1974,r13		! source line 1974
	mov	"\0\0AS",r10
!   fileDescriptorIndex = -1		(4 bytes)
	mov	-1,r1
	store	r1,[r14+-108]
! FOR STATEMENT...
	mov	1975,r13		! source line 1975
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_969 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-76]
!   Calculate and save the FOR-LOOP ending value
!   _temp_970 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-72]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_969  (sizeInBytes=4)
	load	[r14+-76],r1
	store	r1,[r14+-104]
_Label_965:
!   Perform the FOR-LOOP termination test
!   if i > _temp_970 then goto _Label_968		
	load	[r14+-104],r1
	load	[r14+-72],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_968
_Label_966:
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
!   _temp_975 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-60]
!   Data Move: _temp_974 = *_temp_975  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_974) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_976 = _temp_974 + 124
	load	[r14+-64],r1
	add	r1,124,r1
	store	r1,[r14+-56]
!   Move address of _temp_976 [i ] into _temp_977
!     make sure index expr is >= 0
	load	[r14+-104],r2
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
!   Data Move: _temp_973 = *_temp_977  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_973) then goto _Label_971
	load	[r14+-68],r1
	cmp	r1,r0
	be	_Label_971
	jmp	_Label_972
_Label_971:
! THEN...
	mov	1977,r13		! source line 1977
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1977,r13		! source line 1977
	mov	"\0\0AS",r10
!   fileDescriptorIndex = i		(4 bytes)
	load	[r14+-104],r1
	store	r1,[r14+-108]
! BREAK STATEMENT...
	mov	1978,r13		! source line 1978
	mov	"\0\0BR",r10
	jmp	_Label_968
! END IF...
_Label_972:
!   Increment the FOR-LOOP index variable and jump back
_Label_967:
!   i = i + 1
	load	[r14+-104],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-104]
	jmp	_Label_965
! END FOR
_Label_968:
! IF STATEMENT...
	mov	1981,r13		! source line 1981
	mov	"\0\0IF",r10
!   if fileDescriptorIndex != -1 then goto _Label_979		(int)
	load	[r14+-108],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_979
!	jmp	_Label_978
_Label_978:
! THEN...
	mov	1982,r13		! source line 1982
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1982,r13		! source line 1982
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,148,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_979:
! IF STATEMENT...
	mov	1985,r13		! source line 1985
	mov	"\0\0IF",r10
!   _temp_982 = &kernalFileName
	add	r14,-132,r1
	store	r1,[r14+-48]
!   _temp_983 = _StringConst_41
	set	_StringConst_41,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_982  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_983  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Call the function
	mov	1985,r13		! source line 1985
	mov	"\0\0CA",r10
	call	_P_System_StrEqual
!   if result==true then goto _Label_980 else goto _Label_981
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_981
	jmp	_Label_980
_Label_980:
! THEN...
	mov	1986,r13		! source line 1986
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1986,r13		! source line 1986
	mov	"\0\0AS",r10
!   _temp_984 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-40]
!   _temp_985 = _temp_984 + 772
	load	[r14+-40],r1
	add	r1,772,r1
	store	r1,[r14+-36]
!   openFile = _temp_985		(4 bytes)
	load	[r14+-36],r1
	store	r1,[r14+-136]
	jmp	_Label_986
_Label_981:
! ELSE...
	mov	1988,r13		! source line 1988
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	1988,r13		! source line 1988
	mov	"\0\0AS",r10
	mov	1988,r13		! source line 1988
	mov	"\0\0SE",r10
!   _temp_987 = &kernalFileName
	add	r14,-132,r1
	store	r1,[r14+-32]
!   _temp_988 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_987  sizeInBytes=4
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
	store	r1,[r14+-136]
! END IF...
_Label_986:
! IF STATEMENT...
	mov	1990,r13		! source line 1990
	mov	"\0\0IF",r10
!   if intIsZero (openFile) then goto _Label_989
	load	[r14+-136],r1
	cmp	r1,r0
	be	_Label_989
	jmp	_Label_990
_Label_989:
! THEN...
	mov	1991,r13		! source line 1991
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1991,r13		! source line 1991
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,148,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_990:
! ASSIGNMENT STATEMENT...
	mov	1993,r13		! source line 1993
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_992 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_991 = *_temp_992  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_991) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_993 = _temp_991 + 124
	load	[r14+-24],r1
	add	r1,124,r1
	store	r1,[r14+-16]
!   Move address of _temp_993 [fileDescriptorIndex ] into _temp_994
!     make sure index expr is >= 0
	load	[r14+-108],r2
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
!   Data Move: *_temp_994 = openFile  (sizeInBytes=4)
	load	[r14+-136],r1
	load	[r14+-12],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1994,r13		! source line 1994
	mov	"\0\0RE",r10
!   ReturnResult: fileDescriptorIndex  (sizeInBytes=4)
	load	[r14+-108],r1
	store	r1,[r14+8]
	add	r15,148,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Open:
	.word	_sourceFileName
	.word	_Label_995
	.word	4		! total size of parameters
	.word	144		! frame size = 144
	.word	_Label_996
	.word	8
	.word	4
	.word	_Label_997
	.word	-12
	.word	4
	.word	_Label_998
	.word	-16
	.word	4
	.word	_Label_999
	.word	-20
	.word	4
	.word	_Label_1000
	.word	-24
	.word	4
	.word	_Label_1001
	.word	-28
	.word	4
	.word	_Label_1002
	.word	-32
	.word	4
	.word	_Label_1003
	.word	-36
	.word	4
	.word	_Label_1004
	.word	-40
	.word	4
	.word	_Label_1005
	.word	-44
	.word	4
	.word	_Label_1006
	.word	-48
	.word	4
	.word	_Label_1007
	.word	-52
	.word	4
	.word	_Label_1008
	.word	-56
	.word	4
	.word	_Label_1009
	.word	-60
	.word	4
	.word	_Label_1010
	.word	-64
	.word	4
	.word	_Label_1011
	.word	-68
	.word	4
	.word	_Label_1012
	.word	-72
	.word	4
	.word	_Label_1013
	.word	-76
	.word	4
	.word	_Label_1014
	.word	-80
	.word	4
	.word	_Label_1015
	.word	-84
	.word	4
	.word	_Label_1016
	.word	-88
	.word	4
	.word	_Label_1017
	.word	-92
	.word	4
	.word	_Label_1018
	.word	-96
	.word	4
	.word	_Label_1019
	.word	-100
	.word	4
	.word	_Label_1020
	.word	-104
	.word	4
	.word	_Label_1021
	.word	-108
	.word	4
	.word	_Label_1022
	.word	-132
	.word	24
	.word	_Label_1023
	.word	-136
	.word	4
	.word	0
_Label_995:
	.ascii	"Handle_Sys_Open\0"
	.align
_Label_996:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_997:
	.byte	'?'
	.ascii	"_temp_994\0"
	.align
_Label_998:
	.byte	'?'
	.ascii	"_temp_993\0"
	.align
_Label_999:
	.byte	'?'
	.ascii	"_temp_992\0"
	.align
_Label_1000:
	.byte	'?'
	.ascii	"_temp_991\0"
	.align
_Label_1001:
	.byte	'?'
	.ascii	"_temp_988\0"
	.align
_Label_1002:
	.byte	'?'
	.ascii	"_temp_987\0"
	.align
_Label_1003:
	.byte	'?'
	.ascii	"_temp_985\0"
	.align
_Label_1004:
	.byte	'?'
	.ascii	"_temp_984\0"
	.align
_Label_1005:
	.byte	'?'
	.ascii	"_temp_983\0"
	.align
_Label_1006:
	.byte	'?'
	.ascii	"_temp_982\0"
	.align
_Label_1007:
	.byte	'?'
	.ascii	"_temp_977\0"
	.align
_Label_1008:
	.byte	'?'
	.ascii	"_temp_976\0"
	.align
_Label_1009:
	.byte	'?'
	.ascii	"_temp_975\0"
	.align
_Label_1010:
	.byte	'?'
	.ascii	"_temp_974\0"
	.align
_Label_1011:
	.byte	'?'
	.ascii	"_temp_973\0"
	.align
_Label_1012:
	.byte	'?'
	.ascii	"_temp_970\0"
	.align
_Label_1013:
	.byte	'?'
	.ascii	"_temp_969\0"
	.align
_Label_1014:
	.byte	'?'
	.ascii	"_temp_964\0"
	.align
_Label_1015:
	.byte	'?'
	.ascii	"_temp_963\0"
	.align
_Label_1016:
	.byte	'?'
	.ascii	"_temp_962\0"
	.align
_Label_1017:
	.byte	'?'
	.ascii	"_temp_961\0"
	.align
_Label_1018:
	.byte	'?'
	.ascii	"_temp_960\0"
	.align
_Label_1019:
	.byte	'I'
	.ascii	"temp\0"
	.align
_Label_1020:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1021:
	.byte	'I'
	.ascii	"fileDescriptorIndex\0"
	.align
_Label_1022:
	.byte	'A'
	.ascii	"kernalFileName\0"
	.align
_Label_1023:
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
	mov	106,r1
_Label_4096:
	push	r0
	sub	r1,1,r1
	bne	_Label_4096
	mov	1999,r13		! source line 1999
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2014,r13		! source line 2014
	mov	"\0\0IF",r10
!   if fileDesc >= 0 then goto _Label_1028		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1028
	jmp	_Label_1024
_Label_1028:
!   if fileDesc <= 9 then goto _Label_1027		(int)
	load	[r14+8],r1
	mov	9,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1027
	jmp	_Label_1024
_Label_1027:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1031 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-364]
!   Data Move: _temp_1030 = *_temp_1031  (sizeInBytes=4)
	load	[r14+-364],r1
	load	[r1],r1
	store	r1,[r14+-368]
!   if intIsZero (_temp_1030) then goto _runtimeErrorNullPointer
	load	[r14+-368],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1032 = _temp_1030 + 124
	load	[r14+-368],r1
	add	r1,124,r1
	store	r1,[r14+-360]
!   Move address of _temp_1032 [fileDesc ] into _temp_1033
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-360],r1
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
	store	r2,[r14+-356]
!   Data Move: _temp_1029 = *_temp_1033  (sizeInBytes=4)
	load	[r14+-356],r1
	load	[r1],r1
	store	r1,[r14+-372]
!   if intIsZero (_temp_1029) then goto _Label_1024
	load	[r14+-372],r1
	cmp	r1,r0
	be	_Label_1024
!	jmp	_Label_1026
_Label_1026:
!   if sizeInBytes >= 0 then goto _Label_1025		(int)
	load	[r14+16],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1025
!	jmp	_Label_1024
_Label_1024:
! THEN...
	mov	2015,r13		! source line 2015
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2015,r13		! source line 2015
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,428,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1025:
! IF STATEMENT...
	mov	2019,r13		! source line 2019
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1039 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-340]
!   Data Move: _temp_1038 = *_temp_1039  (sizeInBytes=4)
	load	[r14+-340],r1
	load	[r1],r1
	store	r1,[r14+-344]
!   if intIsZero (_temp_1038) then goto _runtimeErrorNullPointer
	load	[r14+-344],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1040 = _temp_1038 + 124
	load	[r14+-344],r1
	add	r1,124,r1
	store	r1,[r14+-336]
!   Move address of _temp_1040 [fileDesc ] into _temp_1041
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-336],r1
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
	store	r2,[r14+-332]
!   Data Move: _temp_1037 = *_temp_1041  (sizeInBytes=4)
	load	[r14+-332],r1
	load	[r1],r1
	store	r1,[r14+-348]
!   if intIsZero (_temp_1037) then goto _runtimeErrorNullPointer
	load	[r14+-348],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1042 = _temp_1037 + 12
	load	[r14+-348],r1
	add	r1,12,r1
	store	r1,[r14+-328]
!   Data Move: _temp_1036 = *_temp_1042  (sizeInBytes=4)
	load	[r14+-328],r1
	load	[r1],r1
	store	r1,[r14+-352]
!   if _temp_1036 != 2 then goto _Label_1035		(int)
	load	[r14+-352],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1035
!	jmp	_Label_1034
_Label_1034:
! THEN...
	mov	2020,r13		! source line 2020
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2020,r13		! source line 2020
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-388]
! FOR STATEMENT...
	mov	2021,r13		! source line 2021
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1047 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-324]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1048 = sizeInBytes - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-320]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1047  (sizeInBytes=4)
	load	[r14+-324],r1
	store	r1,[r14+-412]
_Label_1043:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1048 then goto _Label_1046		
	load	[r14+-412],r1
	load	[r14+-320],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1046
_Label_1044:
	mov	2021,r13		! source line 2021
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2022,r13		! source line 2022
	mov	"\0\0AS",r10
!   _temp_1049 = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-316]
!   virtPage = _temp_1049 div 8192		(int)
	load	[r14+-316],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-380]
! ASSIGNMENT STATEMENT...
	mov	2023,r13		! source line 2023
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-376]
! IF STATEMENT...
	mov	2024,r13		! source line 2024
	mov	"\0\0IF",r10
!   if virtPage >= 0 then goto _Label_1054		(int)
	load	[r14+-380],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1054
	jmp	_Label_1050
_Label_1054:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1058 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-300]
!   Data Move: _temp_1057 = *_temp_1058  (sizeInBytes=4)
	load	[r14+-300],r1
	load	[r1],r1
	store	r1,[r14+-304]
!   if intIsZero (_temp_1057) then goto _runtimeErrorNullPointer
	load	[r14+-304],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1059 = _temp_1057 + 32
	load	[r14+-304],r1
	add	r1,32,r1
	store	r1,[r14+-296]
!   _temp_1060 = _temp_1059 + 4
	load	[r14+-296],r1
	add	r1,4,r1
	store	r1,[r14+-292]
!   Data Move: _temp_1056 = *_temp_1060  (sizeInBytes=4)
	load	[r14+-292],r1
	load	[r1],r1
	store	r1,[r14+-308]
!   _temp_1055 = _temp_1056 - 1		(int)
	load	[r14+-308],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-312]
!   if virtPage <= _temp_1055 then goto _Label_1053		(int)
	load	[r14+-380],r1
	load	[r14+-312],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1053
	jmp	_Label_1050
_Label_1053:
	mov	2024,r13		! source line 2024
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1063 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-284]
!   Data Move: _temp_1062 = *_temp_1063  (sizeInBytes=4)
	load	[r14+-284],r1
	load	[r1],r1
	store	r1,[r14+-288]
!   if intIsZero (_temp_1062) then goto _runtimeErrorNullPointer
	load	[r14+-288],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1064 = _temp_1062 + 32
	load	[r14+-288],r1
	add	r1,32,r1
	store	r1,[r14+-280]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-380],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-280],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1061  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-21]
!   _temp_1065 = _temp_1061 XOR 0		(bool)
	loadb	[r14+-21],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-20]
!   if _temp_1065 then goto _Label_1052 else goto _Label_1050
	loadb	[r14+-20],r1
	cmp	r1,0
	be	_Label_1050
	jmp	_Label_1052
_Label_1052:
	mov	2024,r13		! source line 2024
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1067 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-272]
!   Data Move: _temp_1066 = *_temp_1067  (sizeInBytes=4)
	load	[r14+-272],r1
	load	[r1],r1
	store	r1,[r14+-276]
!   if intIsZero (_temp_1066) then goto _runtimeErrorNullPointer
	load	[r14+-276],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1068 = _temp_1066 + 32
	load	[r14+-276],r1
	add	r1,32,r1
	store	r1,[r14+-268]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-380],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-268],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   if result==true then goto _Label_1050 else goto _Label_1051
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1051
	jmp	_Label_1050
_Label_1050:
! THEN...
	mov	2025,r13		! source line 2025
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2025,r13		! source line 2025
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,428,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1051:
! ASSIGNMENT STATEMENT...
	mov	2027,r13		! source line 2027
	mov	"\0\0AS",r10
	mov	2027,r13		! source line 2027
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1070 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-260]
!   Data Move: _temp_1069 = *_temp_1070  (sizeInBytes=4)
	load	[r14+-260],r1
	load	[r1],r1
	store	r1,[r14+-264]
!   if intIsZero (_temp_1069) then goto _runtimeErrorNullPointer
	load	[r14+-264],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1071 = _temp_1069 + 32
	load	[r14+-264],r1
	add	r1,32,r1
	store	r1,[r14+-256]
!   Prepare Argument: offset=12  value=virtAddr  sizeInBytes=4
	load	[r14+-376],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-256],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=destAddr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-404]
! ASSIGNMENT STATEMENT...
	mov	2028,r13		! source line 2028
	mov	"\0\0AS",r10
!   if intIsZero (destAddr) then goto _runtimeErrorNullPointer
	load	[r14+-404],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
	mov	2028,r13		! source line 2028
	mov	"\0\0SE",r10
!   _temp_1073 = &_P_Kernel_serialDriver
	set	_P_Kernel_serialDriver,r1
	store	r1,[r14+-252]
!   Send message GetChar
	load	[r14+-252],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1072  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-19]
!   Data Move: *destAddr = _temp_1072  (sizeInBytes=1)
	loadb	[r14+-19],r1
	load	[r14+-404],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2029,r13		! source line 2029
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-388],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-388]
! IF STATEMENT...
	mov	2030,r13		! source line 2030
	mov	"\0\0IF",r10
!   if intIsZero (destAddr) then goto _runtimeErrorNullPointer
	load	[r14+-404],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1076 = *destAddr  (sizeInBytes=1)
	load	[r14+-404],r1
	loadb	[r1],r1
	storeb	r1,[r14+-18]
!   _temp_1077 = _temp_1076 XOR 10		(bool)
	loadb	[r14+-18],r1
	mov	10,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-17]
!   if _temp_1077 then goto _Label_1075 else goto _Label_1074
	loadb	[r14+-17],r1
	cmp	r1,0
	be	_Label_1074
	jmp	_Label_1075
_Label_1074:
! THEN...
	mov	2031,r13		! source line 2031
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2031,r13		! source line 2031
	mov	"\0\0BR",r10
	jmp	_Label_1046
! END IF...
_Label_1075:
! ASSIGNMENT STATEMENT...
	mov	2033,r13		! source line 2033
	mov	"\0\0AS",r10
!   buffer = buffer + 1		(int)
	load	[r14+12],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+12]
!   Increment the FOR-LOOP index variable and jump back
_Label_1045:
!   i = i + 1
	load	[r14+-412],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-412]
	jmp	_Label_1043
! END FOR
_Label_1046:
! RETURN STATEMENT...
	mov	2035,r13		! source line 2035
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-388],r1
	store	r1,[r14+8]
	add	r15,428,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_1078
_Label_1035:
! ELSE...
	mov	2038,r13		! source line 2038
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	2038,r13		! source line 2038
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1080 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-244]
!   Data Move: _temp_1079 = *_temp_1080  (sizeInBytes=4)
	load	[r14+-244],r1
	load	[r1],r1
	store	r1,[r14+-248]
!   if intIsZero (_temp_1079) then goto _runtimeErrorNullPointer
	load	[r14+-248],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1081 = _temp_1079 + 124
	load	[r14+-248],r1
	add	r1,124,r1
	store	r1,[r14+-240]
!   Move address of _temp_1081 [fileDesc ] into _temp_1082
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-240],r1
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
	store	r2,[r14+-236]
!   Data Move: openFile = *_temp_1082  (sizeInBytes=4)
	load	[r14+-236],r1
	load	[r1],r1
	store	r1,[r14+-408]
! ASSIGNMENT STATEMENT...
	mov	2039,r13		! source line 2039
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-376]
! ASSIGNMENT STATEMENT...
	mov	2040,r13		! source line 2040
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+-376],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-380]
! ASSIGNMENT STATEMENT...
	mov	2041,r13		! source line 2041
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+-376],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-384]
! ASSIGNMENT STATEMENT...
	mov	2042,r13		! source line 2042
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-388]
! ASSIGNMENT STATEMENT...
	mov	2043,r13		! source line 2043
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-408],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1083 = openFile + 16
	load	[r14+-408],r1
	add	r1,16,r1
	store	r1,[r14+-232]
!   Data Move: nextPosInFile = *_temp_1083  (sizeInBytes=4)
	load	[r14+-232],r1
	load	[r1],r1
	store	r1,[r14+-392]
! ASSIGNMENT STATEMENT...
	mov	2044,r13		! source line 2044
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-408],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1085 = openFile + 20
	load	[r14+-408],r1
	add	r1,20,r1
	store	r1,[r14+-224]
!   Data Move: _temp_1084 = *_temp_1085  (sizeInBytes=4)
	load	[r14+-224],r1
	load	[r1],r1
	store	r1,[r14+-228]
!   if intIsZero (_temp_1084) then goto _runtimeErrorNullPointer
	load	[r14+-228],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1086 = _temp_1084 + 24
	load	[r14+-228],r1
	add	r1,24,r1
	store	r1,[r14+-220]
!   Data Move: fileSize = *_temp_1086  (sizeInBytes=4)
	load	[r14+-220],r1
	load	[r1],r1
	store	r1,[r14+-400]
! WHILE STATEMENT...
	mov	2045,r13		! source line 2045
	mov	"\0\0WH",r10
_Label_1087:
!	jmp	_Label_1088
_Label_1088:
	mov	2045,r13		! source line 2045
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2046,r13		! source line 2046
	mov	"\0\0AS",r10
!   currentChunkSize = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-384],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-396]
! IF STATEMENT...
	mov	2047,r13		! source line 2047
	mov	"\0\0IF",r10
!   _temp_1092 = nextPosInFile + currentChunkSize		(int)
	load	[r14+-392],r1
	load	[r14+-396],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-216]
!   if _temp_1092 <= fileSize then goto _Label_1091		(int)
	load	[r14+-216],r1
	load	[r14+-400],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1091
!	jmp	_Label_1090
_Label_1090:
! THEN...
	mov	2048,r13		! source line 2048
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2048,r13		! source line 2048
	mov	"\0\0AS",r10
!   currentChunkSize = fileSize - nextPosInFile		(int)
	load	[r14+-400],r1
	load	[r14+-392],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-396]
! END IF...
_Label_1091:
! IF STATEMENT...
	mov	2050,r13		! source line 2050
	mov	"\0\0IF",r10
!   _temp_1095 = copiedSoFar + currentChunkSize		(int)
	load	[r14+-388],r1
	load	[r14+-396],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-212]
!   if _temp_1095 <= sizeInBytes then goto _Label_1094		(int)
	load	[r14+-212],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1094
!	jmp	_Label_1093
_Label_1093:
! THEN...
	mov	2051,r13		! source line 2051
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2051,r13		! source line 2051
	mov	"\0\0AS",r10
!   currentChunkSize = sizeInBytes - copiedSoFar		(int)
	load	[r14+16],r1
	load	[r14+-388],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-396]
! END IF...
_Label_1094:
! IF STATEMENT...
	mov	2053,r13		! source line 2053
	mov	"\0\0IF",r10
!   if currentChunkSize > 0 then goto _Label_1097		(int)
	load	[r14+-396],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1097
!	jmp	_Label_1096
_Label_1096:
! THEN...
	mov	2054,r13		! source line 2054
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2054,r13		! source line 2054
	mov	"\0\0BR",r10
	jmp	_Label_1089
! END IF...
_Label_1097:
! IF STATEMENT...
	mov	2056,r13		! source line 2056
	mov	"\0\0IF",r10
!   if virtPage >= 0 then goto _Label_1102		(int)
	load	[r14+-380],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1102
	jmp	_Label_1098
_Label_1102:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1106 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-196]
!   Data Move: _temp_1105 = *_temp_1106  (sizeInBytes=4)
	load	[r14+-196],r1
	load	[r1],r1
	store	r1,[r14+-200]
!   if intIsZero (_temp_1105) then goto _runtimeErrorNullPointer
	load	[r14+-200],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1107 = _temp_1105 + 32
	load	[r14+-200],r1
	add	r1,32,r1
	store	r1,[r14+-192]
!   _temp_1108 = _temp_1107 + 4
	load	[r14+-192],r1
	add	r1,4,r1
	store	r1,[r14+-188]
!   Data Move: _temp_1104 = *_temp_1108  (sizeInBytes=4)
	load	[r14+-188],r1
	load	[r1],r1
	store	r1,[r14+-204]
!   _temp_1103 = _temp_1104 - 1		(int)
	load	[r14+-204],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-208]
!   if virtPage <= _temp_1103 then goto _Label_1101		(int)
	load	[r14+-380],r1
	load	[r14+-208],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1101
	jmp	_Label_1098
_Label_1101:
	mov	2056,r13		! source line 2056
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1111 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-180]
!   Data Move: _temp_1110 = *_temp_1111  (sizeInBytes=4)
	load	[r14+-180],r1
	load	[r1],r1
	store	r1,[r14+-184]
!   if intIsZero (_temp_1110) then goto _runtimeErrorNullPointer
	load	[r14+-184],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1112 = _temp_1110 + 32
	load	[r14+-184],r1
	add	r1,32,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-380],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-176],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1109  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-16]
!   _temp_1113 = _temp_1109 XOR 0		(bool)
	loadb	[r14+-16],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-15]
!   if _temp_1113 then goto _Label_1100 else goto _Label_1098
	loadb	[r14+-15],r1
	cmp	r1,0
	be	_Label_1098
	jmp	_Label_1100
_Label_1100:
	mov	2056,r13		! source line 2056
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1116 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-168]
!   Data Move: _temp_1115 = *_temp_1116  (sizeInBytes=4)
	load	[r14+-168],r1
	load	[r1],r1
	store	r1,[r14+-172]
!   if intIsZero (_temp_1115) then goto _runtimeErrorNullPointer
	load	[r14+-172],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1117 = _temp_1115 + 32
	load	[r14+-172],r1
	add	r1,32,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-380],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-164],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_1114  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-14]
!   _temp_1118 = _temp_1114 XOR 0		(bool)
	loadb	[r14+-14],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-13]
!   if _temp_1118 then goto _Label_1099 else goto _Label_1098
	loadb	[r14+-13],r1
	cmp	r1,0
	be	_Label_1098
	jmp	_Label_1099
_Label_1098:
! THEN...
	mov	2057,r13		! source line 2057
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2057,r13		! source line 2057
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,428,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1099:
! ASSIGNMENT STATEMENT...
	mov	2059,r13		! source line 2059
	mov	"\0\0AS",r10
!   nextPosInFile = nextPosInFile + currentChunkSize		(int)
	load	[r14+-392],r1
	load	[r14+-396],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-392]
! ASSIGNMENT STATEMENT...
	mov	2060,r13		! source line 2060
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + currentChunkSize		(int)
	load	[r14+-388],r1
	load	[r14+-396],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-388]
! ASSIGNMENT STATEMENT...
	mov	2061,r13		! source line 2061
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-380],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-380]
! ASSIGNMENT STATEMENT...
	mov	2062,r13		! source line 2062
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-384]
! IF STATEMENT...
	mov	2063,r13		! source line 2063
	mov	"\0\0IF",r10
!   if copiedSoFar != sizeInBytes then goto _Label_1120		(int)
	load	[r14+-388],r1
	load	[r14+16],r2
	cmp	r1,r2
	bne	_Label_1120
!	jmp	_Label_1119
_Label_1119:
! THEN...
	mov	2064,r13		! source line 2064
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2064,r13		! source line 2064
	mov	"\0\0BR",r10
	jmp	_Label_1089
! END IF...
_Label_1120:
! END WHILE...
	jmp	_Label_1087
_Label_1089:
! ASSIGNMENT STATEMENT...
	mov	2069,r13		! source line 2069
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1122 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-156]
!   Data Move: _temp_1121 = *_temp_1122  (sizeInBytes=4)
	load	[r14+-156],r1
	load	[r1],r1
	store	r1,[r14+-160]
!   if intIsZero (_temp_1121) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1123 = _temp_1121 + 124
	load	[r14+-160],r1
	add	r1,124,r1
	store	r1,[r14+-152]
!   Move address of _temp_1123 [fileDesc ] into _temp_1124
!     make sure index expr is >= 0
	load	[r14+8],r2
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
!   Data Move: openFile = *_temp_1124  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r1],r1
	store	r1,[r14+-408]
! ASSIGNMENT STATEMENT...
	mov	2070,r13		! source line 2070
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-376]
! ASSIGNMENT STATEMENT...
	mov	2071,r13		! source line 2071
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+-376],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-380]
! ASSIGNMENT STATEMENT...
	mov	2072,r13		! source line 2072
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+-376],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-384]
! ASSIGNMENT STATEMENT...
	mov	2073,r13		! source line 2073
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-388]
! ASSIGNMENT STATEMENT...
	mov	2074,r13		! source line 2074
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-408],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1125 = openFile + 16
	load	[r14+-408],r1
	add	r1,16,r1
	store	r1,[r14+-144]
!   Data Move: nextPosInFile = *_temp_1125  (sizeInBytes=4)
	load	[r14+-144],r1
	load	[r1],r1
	store	r1,[r14+-392]
! ASSIGNMENT STATEMENT...
	mov	2075,r13		! source line 2075
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-408],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1127 = openFile + 20
	load	[r14+-408],r1
	add	r1,20,r1
	store	r1,[r14+-136]
!   Data Move: _temp_1126 = *_temp_1127  (sizeInBytes=4)
	load	[r14+-136],r1
	load	[r1],r1
	store	r1,[r14+-140]
!   if intIsZero (_temp_1126) then goto _runtimeErrorNullPointer
	load	[r14+-140],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1128 = _temp_1126 + 24
	load	[r14+-140],r1
	add	r1,24,r1
	store	r1,[r14+-132]
!   Data Move: fileSize = *_temp_1128  (sizeInBytes=4)
	load	[r14+-132],r1
	load	[r1],r1
	store	r1,[r14+-400]
! WHILE STATEMENT...
	mov	2076,r13		! source line 2076
	mov	"\0\0WH",r10
_Label_1129:
!	jmp	_Label_1130
_Label_1130:
	mov	2076,r13		! source line 2076
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2077,r13		! source line 2077
	mov	"\0\0AS",r10
!   currentChunkSize = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-384],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-396]
! IF STATEMENT...
	mov	2078,r13		! source line 2078
	mov	"\0\0IF",r10
!   _temp_1134 = nextPosInFile + currentChunkSize		(int)
	load	[r14+-392],r1
	load	[r14+-396],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
!   if _temp_1134 <= fileSize then goto _Label_1133		(int)
	load	[r14+-128],r1
	load	[r14+-400],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1133
!	jmp	_Label_1132
_Label_1132:
! THEN...
	mov	2079,r13		! source line 2079
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2079,r13		! source line 2079
	mov	"\0\0AS",r10
!   currentChunkSize = fileSize - nextPosInFile		(int)
	load	[r14+-400],r1
	load	[r14+-392],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-396]
! END IF...
_Label_1133:
! IF STATEMENT...
	mov	2081,r13		! source line 2081
	mov	"\0\0IF",r10
!   _temp_1137 = copiedSoFar + currentChunkSize		(int)
	load	[r14+-388],r1
	load	[r14+-396],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
!   if _temp_1137 <= sizeInBytes then goto _Label_1136		(int)
	load	[r14+-124],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1136
!	jmp	_Label_1135
_Label_1135:
! THEN...
	mov	2082,r13		! source line 2082
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2082,r13		! source line 2082
	mov	"\0\0AS",r10
!   currentChunkSize = sizeInBytes - copiedSoFar		(int)
	load	[r14+16],r1
	load	[r14+-388],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-396]
! END IF...
_Label_1136:
! IF STATEMENT...
	mov	2084,r13		! source line 2084
	mov	"\0\0IF",r10
!   if currentChunkSize > 0 then goto _Label_1139		(int)
	load	[r14+-396],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1139
!	jmp	_Label_1138
_Label_1138:
! THEN...
	mov	2085,r13		! source line 2085
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2085,r13		! source line 2085
	mov	"\0\0BR",r10
	jmp	_Label_1131
! END IF...
_Label_1139:
! IF STATEMENT...
	mov	2087,r13		! source line 2087
	mov	"\0\0IF",r10
!   if virtPage >= 0 then goto _Label_1144		(int)
	load	[r14+-380],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1144
	jmp	_Label_1140
_Label_1144:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1148 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-108]
!   Data Move: _temp_1147 = *_temp_1148  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if intIsZero (_temp_1147) then goto _runtimeErrorNullPointer
	load	[r14+-112],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1149 = _temp_1147 + 32
	load	[r14+-112],r1
	add	r1,32,r1
	store	r1,[r14+-104]
!   _temp_1150 = _temp_1149 + 4
	load	[r14+-104],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Data Move: _temp_1146 = *_temp_1150  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   _temp_1145 = _temp_1146 - 1		(int)
	load	[r14+-116],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
!   if virtPage <= _temp_1145 then goto _Label_1143		(int)
	load	[r14+-380],r1
	load	[r14+-120],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1143
	jmp	_Label_1140
_Label_1143:
	mov	2087,r13		! source line 2087
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1153 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-92]
!   Data Move: _temp_1152 = *_temp_1153  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if intIsZero (_temp_1152) then goto _runtimeErrorNullPointer
	load	[r14+-96],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1154 = _temp_1152 + 32
	load	[r14+-96],r1
	add	r1,32,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-380],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-88],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1151  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-12]
!   _temp_1155 = _temp_1151 XOR 0		(bool)
	loadb	[r14+-12],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-11]
!   if _temp_1155 then goto _Label_1142 else goto _Label_1140
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_1140
	jmp	_Label_1142
_Label_1142:
	mov	2087,r13		! source line 2087
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1158 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-80]
!   Data Move: _temp_1157 = *_temp_1158  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if intIsZero (_temp_1157) then goto _runtimeErrorNullPointer
	load	[r14+-84],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1159 = _temp_1157 + 32
	load	[r14+-84],r1
	add	r1,32,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-380],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_1156  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   _temp_1160 = _temp_1156 XOR 0		(bool)
	loadb	[r14+-10],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_1160 then goto _Label_1141 else goto _Label_1140
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1140
	jmp	_Label_1141
_Label_1140:
! THEN...
	mov	2088,r13		! source line 2088
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2088,r13		! source line 2088
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,428,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1141:
! SEND STATEMENT...
	mov	2090,r13		! source line 2090
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1162 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-68]
!   Data Move: _temp_1161 = *_temp_1162  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_1161) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1163 = _temp_1161 + 32
	load	[r14+-72],r1
	add	r1,32,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-380],r1
	store	r1,[r15+4]
!   Send message SetReferenced
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,44,r2
	call	r2
! SEND STATEMENT...
	mov	2091,r13		! source line 2091
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1165 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-56]
!   Data Move: _temp_1164 = *_temp_1165  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_1164) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1166 = _temp_1164 + 32
	load	[r14+-60],r1
	add	r1,32,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-380],r1
	store	r1,[r15+4]
!   Send message SetDirty
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,40,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2092,r13		! source line 2092
	mov	"\0\0AS",r10
	mov	2092,r13		! source line 2092
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1169 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-40]
!   Data Move: _temp_1168 = *_temp_1169  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_1168) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1170 = _temp_1168 + 32
	load	[r14+-44],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-380],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1167  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
!   destAddr = _temp_1167 + offset		(int)
	load	[r14+-48],r1
	load	[r14+-384],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-404]
! ASSIGNMENT STATEMENT...
	mov	2093,r13		! source line 2093
	mov	"\0\0AS",r10
	mov	2093,r13		! source line 2093
	mov	"\0\0SE",r10
!   _temp_1171 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=openFile  sizeInBytes=4
	load	[r14+-408],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=destAddr  sizeInBytes=4
	load	[r14+-404],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=nextPosInFile  sizeInBytes=4
	load	[r14+-392],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=currentChunkSize  sizeInBytes=4
	load	[r14+-396],r1
	store	r1,[r15+16]
!   Send message SynchRead
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
!   Retrieve Result: targetName=readSuccess  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-22]
! ASSIGNMENT STATEMENT...
	mov	2094,r13		! source line 2094
	mov	"\0\0AS",r10
!   nextPosInFile = nextPosInFile + currentChunkSize		(int)
	load	[r14+-392],r1
	load	[r14+-396],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-392]
! ASSIGNMENT STATEMENT...
	mov	2095,r13		! source line 2095
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + currentChunkSize		(int)
	load	[r14+-388],r1
	load	[r14+-396],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-388]
! ASSIGNMENT STATEMENT...
	mov	2096,r13		! source line 2096
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-380],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-380]
! ASSIGNMENT STATEMENT...
	mov	2097,r13		! source line 2097
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-384]
! IF STATEMENT...
	mov	2098,r13		! source line 2098
	mov	"\0\0IF",r10
!   if copiedSoFar != sizeInBytes then goto _Label_1173		(int)
	load	[r14+-388],r1
	load	[r14+16],r2
	cmp	r1,r2
	bne	_Label_1173
!	jmp	_Label_1172
_Label_1172:
! THEN...
	mov	2099,r13		! source line 2099
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2099,r13		! source line 2099
	mov	"\0\0BR",r10
	jmp	_Label_1131
! END IF...
_Label_1173:
! END WHILE...
	jmp	_Label_1129
_Label_1131:
! ASSIGNMENT STATEMENT...
	mov	2102,r13		! source line 2102
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-408],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1174 = openFile + 16
	load	[r14+-408],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1174 = nextPosInFile  (sizeInBytes=4)
	load	[r14+-392],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2103,r13		! source line 2103
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-388],r1
	store	r1,[r14+8]
	add	r15,428,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1078:
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Read:
	.word	_sourceFileName
	.word	_Label_1175
	.word	12		! total size of parameters
	.word	424		! frame size = 424
	.word	_Label_1176
	.word	8
	.word	4
	.word	_Label_1177
	.word	12
	.word	4
	.word	_Label_1178
	.word	16
	.word	4
	.word	_Label_1179
	.word	-28
	.word	4
	.word	_Label_1180
	.word	-32
	.word	4
	.word	_Label_1181
	.word	-36
	.word	4
	.word	_Label_1182
	.word	-40
	.word	4
	.word	_Label_1183
	.word	-44
	.word	4
	.word	_Label_1184
	.word	-48
	.word	4
	.word	_Label_1185
	.word	-52
	.word	4
	.word	_Label_1186
	.word	-56
	.word	4
	.word	_Label_1187
	.word	-60
	.word	4
	.word	_Label_1188
	.word	-64
	.word	4
	.word	_Label_1189
	.word	-68
	.word	4
	.word	_Label_1190
	.word	-72
	.word	4
	.word	_Label_1191
	.word	-9
	.word	1
	.word	_Label_1192
	.word	-76
	.word	4
	.word	_Label_1193
	.word	-80
	.word	4
	.word	_Label_1194
	.word	-84
	.word	4
	.word	_Label_1195
	.word	-10
	.word	1
	.word	_Label_1196
	.word	-11
	.word	1
	.word	_Label_1197
	.word	-88
	.word	4
	.word	_Label_1198
	.word	-92
	.word	4
	.word	_Label_1199
	.word	-96
	.word	4
	.word	_Label_1200
	.word	-12
	.word	1
	.word	_Label_1201
	.word	-100
	.word	4
	.word	_Label_1202
	.word	-104
	.word	4
	.word	_Label_1203
	.word	-108
	.word	4
	.word	_Label_1204
	.word	-112
	.word	4
	.word	_Label_1205
	.word	-116
	.word	4
	.word	_Label_1206
	.word	-120
	.word	4
	.word	_Label_1207
	.word	-124
	.word	4
	.word	_Label_1208
	.word	-128
	.word	4
	.word	_Label_1209
	.word	-132
	.word	4
	.word	_Label_1210
	.word	-136
	.word	4
	.word	_Label_1211
	.word	-140
	.word	4
	.word	_Label_1212
	.word	-144
	.word	4
	.word	_Label_1213
	.word	-148
	.word	4
	.word	_Label_1214
	.word	-152
	.word	4
	.word	_Label_1215
	.word	-156
	.word	4
	.word	_Label_1216
	.word	-160
	.word	4
	.word	_Label_1217
	.word	-13
	.word	1
	.word	_Label_1218
	.word	-164
	.word	4
	.word	_Label_1219
	.word	-168
	.word	4
	.word	_Label_1220
	.word	-172
	.word	4
	.word	_Label_1221
	.word	-14
	.word	1
	.word	_Label_1222
	.word	-15
	.word	1
	.word	_Label_1223
	.word	-176
	.word	4
	.word	_Label_1224
	.word	-180
	.word	4
	.word	_Label_1225
	.word	-184
	.word	4
	.word	_Label_1226
	.word	-16
	.word	1
	.word	_Label_1227
	.word	-188
	.word	4
	.word	_Label_1228
	.word	-192
	.word	4
	.word	_Label_1229
	.word	-196
	.word	4
	.word	_Label_1230
	.word	-200
	.word	4
	.word	_Label_1231
	.word	-204
	.word	4
	.word	_Label_1232
	.word	-208
	.word	4
	.word	_Label_1233
	.word	-212
	.word	4
	.word	_Label_1234
	.word	-216
	.word	4
	.word	_Label_1235
	.word	-220
	.word	4
	.word	_Label_1236
	.word	-224
	.word	4
	.word	_Label_1237
	.word	-228
	.word	4
	.word	_Label_1238
	.word	-232
	.word	4
	.word	_Label_1239
	.word	-236
	.word	4
	.word	_Label_1240
	.word	-240
	.word	4
	.word	_Label_1241
	.word	-244
	.word	4
	.word	_Label_1242
	.word	-248
	.word	4
	.word	_Label_1243
	.word	-17
	.word	1
	.word	_Label_1244
	.word	-18
	.word	1
	.word	_Label_1245
	.word	-252
	.word	4
	.word	_Label_1246
	.word	-19
	.word	1
	.word	_Label_1247
	.word	-256
	.word	4
	.word	_Label_1248
	.word	-260
	.word	4
	.word	_Label_1249
	.word	-264
	.word	4
	.word	_Label_1250
	.word	-268
	.word	4
	.word	_Label_1251
	.word	-272
	.word	4
	.word	_Label_1252
	.word	-276
	.word	4
	.word	_Label_1253
	.word	-20
	.word	1
	.word	_Label_1254
	.word	-280
	.word	4
	.word	_Label_1255
	.word	-284
	.word	4
	.word	_Label_1256
	.word	-288
	.word	4
	.word	_Label_1257
	.word	-21
	.word	1
	.word	_Label_1258
	.word	-292
	.word	4
	.word	_Label_1259
	.word	-296
	.word	4
	.word	_Label_1260
	.word	-300
	.word	4
	.word	_Label_1261
	.word	-304
	.word	4
	.word	_Label_1262
	.word	-308
	.word	4
	.word	_Label_1263
	.word	-312
	.word	4
	.word	_Label_1264
	.word	-316
	.word	4
	.word	_Label_1265
	.word	-320
	.word	4
	.word	_Label_1266
	.word	-324
	.word	4
	.word	_Label_1267
	.word	-328
	.word	4
	.word	_Label_1268
	.word	-332
	.word	4
	.word	_Label_1269
	.word	-336
	.word	4
	.word	_Label_1270
	.word	-340
	.word	4
	.word	_Label_1271
	.word	-344
	.word	4
	.word	_Label_1272
	.word	-348
	.word	4
	.word	_Label_1273
	.word	-352
	.word	4
	.word	_Label_1274
	.word	-356
	.word	4
	.word	_Label_1275
	.word	-360
	.word	4
	.word	_Label_1276
	.word	-364
	.word	4
	.word	_Label_1277
	.word	-368
	.word	4
	.word	_Label_1278
	.word	-372
	.word	4
	.word	_Label_1279
	.word	-376
	.word	4
	.word	_Label_1280
	.word	-380
	.word	4
	.word	_Label_1281
	.word	-384
	.word	4
	.word	_Label_1282
	.word	-388
	.word	4
	.word	_Label_1283
	.word	-392
	.word	4
	.word	_Label_1284
	.word	-396
	.word	4
	.word	_Label_1285
	.word	-400
	.word	4
	.word	_Label_1286
	.word	-404
	.word	4
	.word	_Label_1287
	.word	-408
	.word	4
	.word	_Label_1288
	.word	-22
	.word	1
	.word	_Label_1289
	.word	-412
	.word	4
	.word	0
_Label_1175:
	.ascii	"Handle_Sys_Read\0"
	.align
_Label_1176:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_1177:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_1178:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_1179:
	.byte	'?'
	.ascii	"_temp_1174\0"
	.align
_Label_1180:
	.byte	'?'
	.ascii	"_temp_1171\0"
	.align
_Label_1181:
	.byte	'?'
	.ascii	"_temp_1170\0"
	.align
_Label_1182:
	.byte	'?'
	.ascii	"_temp_1169\0"
	.align
_Label_1183:
	.byte	'?'
	.ascii	"_temp_1168\0"
	.align
_Label_1184:
	.byte	'?'
	.ascii	"_temp_1167\0"
	.align
_Label_1185:
	.byte	'?'
	.ascii	"_temp_1166\0"
	.align
_Label_1186:
	.byte	'?'
	.ascii	"_temp_1165\0"
	.align
_Label_1187:
	.byte	'?'
	.ascii	"_temp_1164\0"
	.align
_Label_1188:
	.byte	'?'
	.ascii	"_temp_1163\0"
	.align
_Label_1189:
	.byte	'?'
	.ascii	"_temp_1162\0"
	.align
_Label_1190:
	.byte	'?'
	.ascii	"_temp_1161\0"
	.align
_Label_1191:
	.byte	'C'
	.ascii	"_temp_1160\0"
	.align
_Label_1192:
	.byte	'?'
	.ascii	"_temp_1159\0"
	.align
_Label_1193:
	.byte	'?'
	.ascii	"_temp_1158\0"
	.align
_Label_1194:
	.byte	'?'
	.ascii	"_temp_1157\0"
	.align
_Label_1195:
	.byte	'C'
	.ascii	"_temp_1156\0"
	.align
_Label_1196:
	.byte	'C'
	.ascii	"_temp_1155\0"
	.align
_Label_1197:
	.byte	'?'
	.ascii	"_temp_1154\0"
	.align
_Label_1198:
	.byte	'?'
	.ascii	"_temp_1153\0"
	.align
_Label_1199:
	.byte	'?'
	.ascii	"_temp_1152\0"
	.align
_Label_1200:
	.byte	'C'
	.ascii	"_temp_1151\0"
	.align
_Label_1201:
	.byte	'?'
	.ascii	"_temp_1150\0"
	.align
_Label_1202:
	.byte	'?'
	.ascii	"_temp_1149\0"
	.align
_Label_1203:
	.byte	'?'
	.ascii	"_temp_1148\0"
	.align
_Label_1204:
	.byte	'?'
	.ascii	"_temp_1147\0"
	.align
_Label_1205:
	.byte	'?'
	.ascii	"_temp_1146\0"
	.align
_Label_1206:
	.byte	'?'
	.ascii	"_temp_1145\0"
	.align
_Label_1207:
	.byte	'?'
	.ascii	"_temp_1137\0"
	.align
_Label_1208:
	.byte	'?'
	.ascii	"_temp_1134\0"
	.align
_Label_1209:
	.byte	'?'
	.ascii	"_temp_1128\0"
	.align
_Label_1210:
	.byte	'?'
	.ascii	"_temp_1127\0"
	.align
_Label_1211:
	.byte	'?'
	.ascii	"_temp_1126\0"
	.align
_Label_1212:
	.byte	'?'
	.ascii	"_temp_1125\0"
	.align
_Label_1213:
	.byte	'?'
	.ascii	"_temp_1124\0"
	.align
_Label_1214:
	.byte	'?'
	.ascii	"_temp_1123\0"
	.align
_Label_1215:
	.byte	'?'
	.ascii	"_temp_1122\0"
	.align
_Label_1216:
	.byte	'?'
	.ascii	"_temp_1121\0"
	.align
_Label_1217:
	.byte	'C'
	.ascii	"_temp_1118\0"
	.align
_Label_1218:
	.byte	'?'
	.ascii	"_temp_1117\0"
	.align
_Label_1219:
	.byte	'?'
	.ascii	"_temp_1116\0"
	.align
_Label_1220:
	.byte	'?'
	.ascii	"_temp_1115\0"
	.align
_Label_1221:
	.byte	'C'
	.ascii	"_temp_1114\0"
	.align
_Label_1222:
	.byte	'C'
	.ascii	"_temp_1113\0"
	.align
_Label_1223:
	.byte	'?'
	.ascii	"_temp_1112\0"
	.align
_Label_1224:
	.byte	'?'
	.ascii	"_temp_1111\0"
	.align
_Label_1225:
	.byte	'?'
	.ascii	"_temp_1110\0"
	.align
_Label_1226:
	.byte	'C'
	.ascii	"_temp_1109\0"
	.align
_Label_1227:
	.byte	'?'
	.ascii	"_temp_1108\0"
	.align
_Label_1228:
	.byte	'?'
	.ascii	"_temp_1107\0"
	.align
_Label_1229:
	.byte	'?'
	.ascii	"_temp_1106\0"
	.align
_Label_1230:
	.byte	'?'
	.ascii	"_temp_1105\0"
	.align
_Label_1231:
	.byte	'?'
	.ascii	"_temp_1104\0"
	.align
_Label_1232:
	.byte	'?'
	.ascii	"_temp_1103\0"
	.align
_Label_1233:
	.byte	'?'
	.ascii	"_temp_1095\0"
	.align
_Label_1234:
	.byte	'?'
	.ascii	"_temp_1092\0"
	.align
_Label_1235:
	.byte	'?'
	.ascii	"_temp_1086\0"
	.align
_Label_1236:
	.byte	'?'
	.ascii	"_temp_1085\0"
	.align
_Label_1237:
	.byte	'?'
	.ascii	"_temp_1084\0"
	.align
_Label_1238:
	.byte	'?'
	.ascii	"_temp_1083\0"
	.align
_Label_1239:
	.byte	'?'
	.ascii	"_temp_1082\0"
	.align
_Label_1240:
	.byte	'?'
	.ascii	"_temp_1081\0"
	.align
_Label_1241:
	.byte	'?'
	.ascii	"_temp_1080\0"
	.align
_Label_1242:
	.byte	'?'
	.ascii	"_temp_1079\0"
	.align
_Label_1243:
	.byte	'C'
	.ascii	"_temp_1077\0"
	.align
_Label_1244:
	.byte	'C'
	.ascii	"_temp_1076\0"
	.align
_Label_1245:
	.byte	'?'
	.ascii	"_temp_1073\0"
	.align
_Label_1246:
	.byte	'C'
	.ascii	"_temp_1072\0"
	.align
_Label_1247:
	.byte	'?'
	.ascii	"_temp_1071\0"
	.align
_Label_1248:
	.byte	'?'
	.ascii	"_temp_1070\0"
	.align
_Label_1249:
	.byte	'?'
	.ascii	"_temp_1069\0"
	.align
_Label_1250:
	.byte	'?'
	.ascii	"_temp_1068\0"
	.align
_Label_1251:
	.byte	'?'
	.ascii	"_temp_1067\0"
	.align
_Label_1252:
	.byte	'?'
	.ascii	"_temp_1066\0"
	.align
_Label_1253:
	.byte	'C'
	.ascii	"_temp_1065\0"
	.align
_Label_1254:
	.byte	'?'
	.ascii	"_temp_1064\0"
	.align
_Label_1255:
	.byte	'?'
	.ascii	"_temp_1063\0"
	.align
_Label_1256:
	.byte	'?'
	.ascii	"_temp_1062\0"
	.align
_Label_1257:
	.byte	'C'
	.ascii	"_temp_1061\0"
	.align
_Label_1258:
	.byte	'?'
	.ascii	"_temp_1060\0"
	.align
_Label_1259:
	.byte	'?'
	.ascii	"_temp_1059\0"
	.align
_Label_1260:
	.byte	'?'
	.ascii	"_temp_1058\0"
	.align
_Label_1261:
	.byte	'?'
	.ascii	"_temp_1057\0"
	.align
_Label_1262:
	.byte	'?'
	.ascii	"_temp_1056\0"
	.align
_Label_1263:
	.byte	'?'
	.ascii	"_temp_1055\0"
	.align
_Label_1264:
	.byte	'?'
	.ascii	"_temp_1049\0"
	.align
_Label_1265:
	.byte	'?'
	.ascii	"_temp_1048\0"
	.align
_Label_1266:
	.byte	'?'
	.ascii	"_temp_1047\0"
	.align
_Label_1267:
	.byte	'?'
	.ascii	"_temp_1042\0"
	.align
_Label_1268:
	.byte	'?'
	.ascii	"_temp_1041\0"
	.align
_Label_1269:
	.byte	'?'
	.ascii	"_temp_1040\0"
	.align
_Label_1270:
	.byte	'?'
	.ascii	"_temp_1039\0"
	.align
_Label_1271:
	.byte	'?'
	.ascii	"_temp_1038\0"
	.align
_Label_1272:
	.byte	'?'
	.ascii	"_temp_1037\0"
	.align
_Label_1273:
	.byte	'?'
	.ascii	"_temp_1036\0"
	.align
_Label_1274:
	.byte	'?'
	.ascii	"_temp_1033\0"
	.align
_Label_1275:
	.byte	'?'
	.ascii	"_temp_1032\0"
	.align
_Label_1276:
	.byte	'?'
	.ascii	"_temp_1031\0"
	.align
_Label_1277:
	.byte	'?'
	.ascii	"_temp_1030\0"
	.align
_Label_1278:
	.byte	'?'
	.ascii	"_temp_1029\0"
	.align
_Label_1279:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1280:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_1281:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_1282:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_1283:
	.byte	'I'
	.ascii	"nextPosInFile\0"
	.align
_Label_1284:
	.byte	'I'
	.ascii	"currentChunkSize\0"
	.align
_Label_1285:
	.byte	'I'
	.ascii	"fileSize\0"
	.align
_Label_1286:
	.byte	'I'
	.ascii	"destAddr\0"
	.align
_Label_1287:
	.byte	'P'
	.ascii	"openFile\0"
	.align
_Label_1288:
	.byte	'B'
	.ascii	"readSuccess\0"
	.align
_Label_1289:
	.byte	'I'
	.ascii	"i\0"
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
	mov	75,r1
_Label_4097:
	push	r0
	sub	r1,1,r1
	bne	_Label_4097
	mov	2110,r13		! source line 2110
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2124,r13		! source line 2124
	mov	"\0\0IF",r10
!   if fileDesc >= 0 then goto _Label_1294		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1294
	jmp	_Label_1290
_Label_1294:
!   if fileDesc <= 9 then goto _Label_1293		(int)
	load	[r14+8],r1
	mov	9,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1293
	jmp	_Label_1290
_Label_1293:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1297 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-244]
!   Data Move: _temp_1296 = *_temp_1297  (sizeInBytes=4)
	load	[r14+-244],r1
	load	[r1],r1
	store	r1,[r14+-248]
!   if intIsZero (_temp_1296) then goto _runtimeErrorNullPointer
	load	[r14+-248],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1298 = _temp_1296 + 124
	load	[r14+-248],r1
	add	r1,124,r1
	store	r1,[r14+-240]
!   Move address of _temp_1298 [fileDesc ] into _temp_1299
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-240],r1
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
	store	r2,[r14+-236]
!   Data Move: _temp_1295 = *_temp_1299  (sizeInBytes=4)
	load	[r14+-236],r1
	load	[r1],r1
	store	r1,[r14+-252]
!   if intIsZero (_temp_1295) then goto _Label_1290
	load	[r14+-252],r1
	cmp	r1,r0
	be	_Label_1290
!	jmp	_Label_1292
_Label_1292:
!   if sizeInBytes >= 0 then goto _Label_1291		(int)
	load	[r14+16],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1291
!	jmp	_Label_1290
_Label_1290:
! THEN...
	mov	2125,r13		! source line 2125
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2125,r13		! source line 2125
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,304,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1291:
! ASSIGNMENT STATEMENT...
	mov	2129,r13		! source line 2129
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1301 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-228]
!   Data Move: _temp_1300 = *_temp_1301  (sizeInBytes=4)
	load	[r14+-228],r1
	load	[r1],r1
	store	r1,[r14+-232]
!   if intIsZero (_temp_1300) then goto _runtimeErrorNullPointer
	load	[r14+-232],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1302 = _temp_1300 + 124
	load	[r14+-232],r1
	add	r1,124,r1
	store	r1,[r14+-224]
!   Move address of _temp_1302 [fileDesc ] into _temp_1303
!     make sure index expr is >= 0
	load	[r14+8],r2
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
!   Data Move: openFile = *_temp_1303  (sizeInBytes=4)
	load	[r14+-220],r1
	load	[r1],r1
	store	r1,[r14+-288]
! ASSIGNMENT STATEMENT...
	mov	2130,r13		! source line 2130
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-256]
! ASSIGNMENT STATEMENT...
	mov	2131,r13		! source line 2131
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+-256],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-260]
! ASSIGNMENT STATEMENT...
	mov	2132,r13		! source line 2132
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+-256],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-264]
! ASSIGNMENT STATEMENT...
	mov	2133,r13		! source line 2133
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-268]
! ASSIGNMENT STATEMENT...
	mov	2134,r13		! source line 2134
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-288],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1304 = openFile + 16
	load	[r14+-288],r1
	add	r1,16,r1
	store	r1,[r14+-216]
!   Data Move: nextPosInFile = *_temp_1304  (sizeInBytes=4)
	load	[r14+-216],r1
	load	[r1],r1
	store	r1,[r14+-272]
! ASSIGNMENT STATEMENT...
	mov	2135,r13		! source line 2135
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-288],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1306 = openFile + 20
	load	[r14+-288],r1
	add	r1,20,r1
	store	r1,[r14+-208]
!   Data Move: _temp_1305 = *_temp_1306  (sizeInBytes=4)
	load	[r14+-208],r1
	load	[r1],r1
	store	r1,[r14+-212]
!   if intIsZero (_temp_1305) then goto _runtimeErrorNullPointer
	load	[r14+-212],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1307 = _temp_1305 + 24
	load	[r14+-212],r1
	add	r1,24,r1
	store	r1,[r14+-204]
!   Data Move: fileSize = *_temp_1307  (sizeInBytes=4)
	load	[r14+-204],r1
	load	[r1],r1
	store	r1,[r14+-280]
! WHILE STATEMENT...
	mov	2136,r13		! source line 2136
	mov	"\0\0WH",r10
_Label_1308:
!	jmp	_Label_1309
_Label_1309:
	mov	2136,r13		! source line 2136
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2137,r13		! source line 2137
	mov	"\0\0AS",r10
!   currentChunkSize = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-264],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-276]
! IF STATEMENT...
	mov	2138,r13		! source line 2138
	mov	"\0\0IF",r10
!   _temp_1313 = nextPosInFile + currentChunkSize		(int)
	load	[r14+-272],r1
	load	[r14+-276],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-200]
!   if _temp_1313 <= fileSize then goto _Label_1312		(int)
	load	[r14+-200],r1
	load	[r14+-280],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1312
!	jmp	_Label_1311
_Label_1311:
! THEN...
	mov	2139,r13		! source line 2139
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2139,r13		! source line 2139
	mov	"\0\0AS",r10
!   currentChunkSize = fileSize - nextPosInFile		(int)
	load	[r14+-280],r1
	load	[r14+-272],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-276]
! END IF...
_Label_1312:
! IF STATEMENT...
	mov	2141,r13		! source line 2141
	mov	"\0\0IF",r10
!   _temp_1316 = copiedSoFar + currentChunkSize		(int)
	load	[r14+-268],r1
	load	[r14+-276],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-196]
!   if _temp_1316 <= sizeInBytes then goto _Label_1315		(int)
	load	[r14+-196],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1315
!	jmp	_Label_1314
_Label_1314:
! THEN...
	mov	2142,r13		! source line 2142
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2142,r13		! source line 2142
	mov	"\0\0AS",r10
!   currentChunkSize = sizeInBytes - copiedSoFar		(int)
	load	[r14+16],r1
	load	[r14+-268],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-276]
! END IF...
_Label_1315:
! IF STATEMENT...
	mov	2144,r13		! source line 2144
	mov	"\0\0IF",r10
!   if currentChunkSize > 0 then goto _Label_1318		(int)
	load	[r14+-276],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1318
!	jmp	_Label_1317
_Label_1317:
! THEN...
	mov	2145,r13		! source line 2145
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2145,r13		! source line 2145
	mov	"\0\0BR",r10
	jmp	_Label_1310
! END IF...
_Label_1318:
! IF STATEMENT...
	mov	2147,r13		! source line 2147
	mov	"\0\0IF",r10
!   if virtPage >= 0 then goto _Label_1323		(int)
	load	[r14+-260],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1323
	jmp	_Label_1319
_Label_1323:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1327 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-180]
!   Data Move: _temp_1326 = *_temp_1327  (sizeInBytes=4)
	load	[r14+-180],r1
	load	[r1],r1
	store	r1,[r14+-184]
!   if intIsZero (_temp_1326) then goto _runtimeErrorNullPointer
	load	[r14+-184],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1328 = _temp_1326 + 32
	load	[r14+-184],r1
	add	r1,32,r1
	store	r1,[r14+-176]
!   _temp_1329 = _temp_1328 + 4
	load	[r14+-176],r1
	add	r1,4,r1
	store	r1,[r14+-172]
!   Data Move: _temp_1325 = *_temp_1329  (sizeInBytes=4)
	load	[r14+-172],r1
	load	[r1],r1
	store	r1,[r14+-188]
!   _temp_1324 = _temp_1325 - 1		(int)
	load	[r14+-188],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
!   if virtPage <= _temp_1324 then goto _Label_1322		(int)
	load	[r14+-260],r1
	load	[r14+-192],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1322
	jmp	_Label_1319
_Label_1322:
	mov	2147,r13		! source line 2147
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1332 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-164]
!   Data Move: _temp_1331 = *_temp_1332  (sizeInBytes=4)
	load	[r14+-164],r1
	load	[r1],r1
	store	r1,[r14+-168]
!   if intIsZero (_temp_1331) then goto _runtimeErrorNullPointer
	load	[r14+-168],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1333 = _temp_1331 + 32
	load	[r14+-168],r1
	add	r1,32,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-260],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-160],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1330  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-16]
!   _temp_1334 = _temp_1330 XOR 0		(bool)
	loadb	[r14+-16],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-15]
!   if _temp_1334 then goto _Label_1321 else goto _Label_1319
	loadb	[r14+-15],r1
	cmp	r1,0
	be	_Label_1319
	jmp	_Label_1321
_Label_1321:
	mov	2147,r13		! source line 2147
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1337 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-152]
!   Data Move: _temp_1336 = *_temp_1337  (sizeInBytes=4)
	load	[r14+-152],r1
	load	[r1],r1
	store	r1,[r14+-156]
!   if intIsZero (_temp_1336) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1338 = _temp_1336 + 32
	load	[r14+-156],r1
	add	r1,32,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-260],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-148],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_1335  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-14]
!   _temp_1339 = _temp_1335 XOR 0		(bool)
	loadb	[r14+-14],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-13]
!   if _temp_1339 then goto _Label_1320 else goto _Label_1319
	loadb	[r14+-13],r1
	cmp	r1,0
	be	_Label_1319
	jmp	_Label_1320
_Label_1319:
! THEN...
	mov	2148,r13		! source line 2148
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2148,r13		! source line 2148
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,304,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1320:
! ASSIGNMENT STATEMENT...
	mov	2150,r13		! source line 2150
	mov	"\0\0AS",r10
!   nextPosInFile = nextPosInFile + currentChunkSize		(int)
	load	[r14+-272],r1
	load	[r14+-276],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-272]
! ASSIGNMENT STATEMENT...
	mov	2151,r13		! source line 2151
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + currentChunkSize		(int)
	load	[r14+-268],r1
	load	[r14+-276],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-268]
! ASSIGNMENT STATEMENT...
	mov	2152,r13		! source line 2152
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-260],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-260]
! ASSIGNMENT STATEMENT...
	mov	2153,r13		! source line 2153
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-264]
! IF STATEMENT...
	mov	2154,r13		! source line 2154
	mov	"\0\0IF",r10
!   if copiedSoFar != sizeInBytes then goto _Label_1341		(int)
	load	[r14+-268],r1
	load	[r14+16],r2
	cmp	r1,r2
	bne	_Label_1341
!	jmp	_Label_1340
_Label_1340:
! THEN...
	mov	2155,r13		! source line 2155
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2155,r13		! source line 2155
	mov	"\0\0BR",r10
	jmp	_Label_1310
! END IF...
_Label_1341:
! END WHILE...
	jmp	_Label_1308
_Label_1310:
! ASSIGNMENT STATEMENT...
	mov	2160,r13		! source line 2160
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1343 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-140]
!   Data Move: _temp_1342 = *_temp_1343  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-144]
!   if intIsZero (_temp_1342) then goto _runtimeErrorNullPointer
	load	[r14+-144],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1344 = _temp_1342 + 124
	load	[r14+-144],r1
	add	r1,124,r1
	store	r1,[r14+-136]
!   Move address of _temp_1344 [fileDesc ] into _temp_1345
!     make sure index expr is >= 0
	load	[r14+8],r2
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
!   Data Move: openFile = *_temp_1345  (sizeInBytes=4)
	load	[r14+-132],r1
	load	[r1],r1
	store	r1,[r14+-288]
! ASSIGNMENT STATEMENT...
	mov	2161,r13		! source line 2161
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-256]
! ASSIGNMENT STATEMENT...
	mov	2162,r13		! source line 2162
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+-256],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-260]
! ASSIGNMENT STATEMENT...
	mov	2163,r13		! source line 2163
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+-256],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-264]
! ASSIGNMENT STATEMENT...
	mov	2164,r13		! source line 2164
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-268]
! ASSIGNMENT STATEMENT...
	mov	2165,r13		! source line 2165
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-288],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1346 = openFile + 16
	load	[r14+-288],r1
	add	r1,16,r1
	store	r1,[r14+-128]
!   Data Move: nextPosInFile = *_temp_1346  (sizeInBytes=4)
	load	[r14+-128],r1
	load	[r1],r1
	store	r1,[r14+-272]
! ASSIGNMENT STATEMENT...
	mov	2166,r13		! source line 2166
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-288],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1348 = openFile + 20
	load	[r14+-288],r1
	add	r1,20,r1
	store	r1,[r14+-120]
!   Data Move: _temp_1347 = *_temp_1348  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-124]
!   if intIsZero (_temp_1347) then goto _runtimeErrorNullPointer
	load	[r14+-124],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1349 = _temp_1347 + 24
	load	[r14+-124],r1
	add	r1,24,r1
	store	r1,[r14+-116]
!   Data Move: fileSize = *_temp_1349  (sizeInBytes=4)
	load	[r14+-116],r1
	load	[r1],r1
	store	r1,[r14+-280]
! WHILE STATEMENT...
	mov	2168,r13		! source line 2168
	mov	"\0\0WH",r10
_Label_1350:
!	jmp	_Label_1351
_Label_1351:
	mov	2168,r13		! source line 2168
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2169,r13		! source line 2169
	mov	"\0\0AS",r10
!   currentChunkSize = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-264],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-276]
! IF STATEMENT...
	mov	2170,r13		! source line 2170
	mov	"\0\0IF",r10
!   _temp_1355 = nextPosInFile + currentChunkSize		(int)
	load	[r14+-272],r1
	load	[r14+-276],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
!   if _temp_1355 <= fileSize then goto _Label_1354		(int)
	load	[r14+-112],r1
	load	[r14+-280],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1354
!	jmp	_Label_1353
_Label_1353:
! THEN...
	mov	2171,r13		! source line 2171
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2171,r13		! source line 2171
	mov	"\0\0AS",r10
!   currentChunkSize = fileSize - nextPosInFile		(int)
	load	[r14+-280],r1
	load	[r14+-272],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-276]
! END IF...
_Label_1354:
! IF STATEMENT...
	mov	2173,r13		! source line 2173
	mov	"\0\0IF",r10
!   _temp_1358 = copiedSoFar + currentChunkSize		(int)
	load	[r14+-268],r1
	load	[r14+-276],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-108]
!   if _temp_1358 <= sizeInBytes then goto _Label_1357		(int)
	load	[r14+-108],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1357
!	jmp	_Label_1356
_Label_1356:
! THEN...
	mov	2174,r13		! source line 2174
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2174,r13		! source line 2174
	mov	"\0\0AS",r10
!   currentChunkSize = sizeInBytes - copiedSoFar		(int)
	load	[r14+16],r1
	load	[r14+-268],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-276]
! END IF...
_Label_1357:
! IF STATEMENT...
	mov	2176,r13		! source line 2176
	mov	"\0\0IF",r10
!   if currentChunkSize > 0 then goto _Label_1360		(int)
	load	[r14+-276],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1360
!	jmp	_Label_1359
_Label_1359:
! THEN...
	mov	2177,r13		! source line 2177
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2177,r13		! source line 2177
	mov	"\0\0BR",r10
	jmp	_Label_1352
! END IF...
_Label_1360:
! IF STATEMENT...
	mov	2179,r13		! source line 2179
	mov	"\0\0IF",r10
!   if virtPage >= 0 then goto _Label_1365		(int)
	load	[r14+-260],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1365
	jmp	_Label_1361
_Label_1365:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1369 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-92]
!   Data Move: _temp_1368 = *_temp_1369  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if intIsZero (_temp_1368) then goto _runtimeErrorNullPointer
	load	[r14+-96],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1370 = _temp_1368 + 32
	load	[r14+-96],r1
	add	r1,32,r1
	store	r1,[r14+-88]
!   _temp_1371 = _temp_1370 + 4
	load	[r14+-88],r1
	add	r1,4,r1
	store	r1,[r14+-84]
!   Data Move: _temp_1367 = *_temp_1371  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   _temp_1366 = _temp_1367 - 1		(int)
	load	[r14+-100],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-104]
!   if virtPage <= _temp_1366 then goto _Label_1364		(int)
	load	[r14+-260],r1
	load	[r14+-104],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1364
	jmp	_Label_1361
_Label_1364:
	mov	2179,r13		! source line 2179
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1374 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-76]
!   Data Move: _temp_1373 = *_temp_1374  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_1373) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1375 = _temp_1373 + 32
	load	[r14+-80],r1
	add	r1,32,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-260],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1372  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-12]
!   _temp_1376 = _temp_1372 XOR 0		(bool)
	loadb	[r14+-12],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-11]
!   if _temp_1376 then goto _Label_1363 else goto _Label_1361
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_1361
	jmp	_Label_1363
_Label_1363:
	mov	2179,r13		! source line 2179
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1379 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-64]
!   Data Move: _temp_1378 = *_temp_1379  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_1378) then goto _runtimeErrorNullPointer
	load	[r14+-68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1380 = _temp_1378 + 32
	load	[r14+-68],r1
	add	r1,32,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-260],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_1377  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   _temp_1381 = _temp_1377 XOR 0		(bool)
	loadb	[r14+-10],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_1381 then goto _Label_1362 else goto _Label_1361
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1361
	jmp	_Label_1362
_Label_1361:
! THEN...
	mov	2180,r13		! source line 2180
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2180,r13		! source line 2180
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,304,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1362:
! SEND STATEMENT...
	mov	2182,r13		! source line 2182
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1383 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-52]
!   Data Move: _temp_1382 = *_temp_1383  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_1382) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1384 = _temp_1382 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-260],r1
	store	r1,[r15+4]
!   Send message SetReferenced
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,44,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2183,r13		! source line 2183
	mov	"\0\0AS",r10
	mov	2183,r13		! source line 2183
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1387 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-36]
!   Data Move: _temp_1386 = *_temp_1387  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_1386) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1388 = _temp_1386 + 32
	load	[r14+-40],r1
	add	r1,32,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-260],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1385  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
!   destAddr = _temp_1385 + offset		(int)
	load	[r14+-44],r1
	load	[r14+-264],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-284]
! ASSIGNMENT STATEMENT...
	mov	2184,r13		! source line 2184
	mov	"\0\0AS",r10
	mov	2184,r13		! source line 2184
	mov	"\0\0SE",r10
!   _temp_1389 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=openFile  sizeInBytes=4
	load	[r14+-288],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=destAddr  sizeInBytes=4
	load	[r14+-284],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=nextPosInFile  sizeInBytes=4
	load	[r14+-272],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=currentChunkSize  sizeInBytes=4
	load	[r14+-276],r1
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
	mov	2185,r13		! source line 2185
	mov	"\0\0AS",r10
!   nextPosInFile = nextPosInFile + currentChunkSize		(int)
	load	[r14+-272],r1
	load	[r14+-276],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-272]
! ASSIGNMENT STATEMENT...
	mov	2186,r13		! source line 2186
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + currentChunkSize		(int)
	load	[r14+-268],r1
	load	[r14+-276],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-268]
! ASSIGNMENT STATEMENT...
	mov	2187,r13		! source line 2187
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-260],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-260]
! ASSIGNMENT STATEMENT...
	mov	2188,r13		! source line 2188
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-264]
! IF STATEMENT...
	mov	2189,r13		! source line 2189
	mov	"\0\0IF",r10
!   if copiedSoFar != sizeInBytes then goto _Label_1391		(int)
	load	[r14+-268],r1
	load	[r14+16],r2
	cmp	r1,r2
	bne	_Label_1391
!	jmp	_Label_1390
_Label_1390:
! THEN...
	mov	2190,r13		! source line 2190
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2190,r13		! source line 2190
	mov	"\0\0BR",r10
	jmp	_Label_1352
! END IF...
_Label_1391:
! END WHILE...
	jmp	_Label_1350
_Label_1352:
! ASSIGNMENT STATEMENT...
	mov	2194,r13		! source line 2194
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-288],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1392 = openFile + 16
	load	[r14+-288],r1
	add	r1,16,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1392 = nextPosInFile  (sizeInBytes=4)
	load	[r14+-272],r1
	load	[r14+-24],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2196,r13		! source line 2196
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-268],r1
	store	r1,[r14+8]
	add	r15,304,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Write:
	.word	_sourceFileName
	.word	_Label_1393
	.word	12		! total size of parameters
	.word	300		! frame size = 300
	.word	_Label_1394
	.word	8
	.word	4
	.word	_Label_1395
	.word	12
	.word	4
	.word	_Label_1396
	.word	16
	.word	4
	.word	_Label_1397
	.word	-24
	.word	4
	.word	_Label_1398
	.word	-28
	.word	4
	.word	_Label_1399
	.word	-32
	.word	4
	.word	_Label_1400
	.word	-36
	.word	4
	.word	_Label_1401
	.word	-40
	.word	4
	.word	_Label_1402
	.word	-44
	.word	4
	.word	_Label_1403
	.word	-48
	.word	4
	.word	_Label_1404
	.word	-52
	.word	4
	.word	_Label_1405
	.word	-56
	.word	4
	.word	_Label_1406
	.word	-9
	.word	1
	.word	_Label_1407
	.word	-60
	.word	4
	.word	_Label_1408
	.word	-64
	.word	4
	.word	_Label_1409
	.word	-68
	.word	4
	.word	_Label_1410
	.word	-10
	.word	1
	.word	_Label_1411
	.word	-11
	.word	1
	.word	_Label_1412
	.word	-72
	.word	4
	.word	_Label_1413
	.word	-76
	.word	4
	.word	_Label_1414
	.word	-80
	.word	4
	.word	_Label_1415
	.word	-12
	.word	1
	.word	_Label_1416
	.word	-84
	.word	4
	.word	_Label_1417
	.word	-88
	.word	4
	.word	_Label_1418
	.word	-92
	.word	4
	.word	_Label_1419
	.word	-96
	.word	4
	.word	_Label_1420
	.word	-100
	.word	4
	.word	_Label_1421
	.word	-104
	.word	4
	.word	_Label_1422
	.word	-108
	.word	4
	.word	_Label_1423
	.word	-112
	.word	4
	.word	_Label_1424
	.word	-116
	.word	4
	.word	_Label_1425
	.word	-120
	.word	4
	.word	_Label_1426
	.word	-124
	.word	4
	.word	_Label_1427
	.word	-128
	.word	4
	.word	_Label_1428
	.word	-132
	.word	4
	.word	_Label_1429
	.word	-136
	.word	4
	.word	_Label_1430
	.word	-140
	.word	4
	.word	_Label_1431
	.word	-144
	.word	4
	.word	_Label_1432
	.word	-13
	.word	1
	.word	_Label_1433
	.word	-148
	.word	4
	.word	_Label_1434
	.word	-152
	.word	4
	.word	_Label_1435
	.word	-156
	.word	4
	.word	_Label_1436
	.word	-14
	.word	1
	.word	_Label_1437
	.word	-15
	.word	1
	.word	_Label_1438
	.word	-160
	.word	4
	.word	_Label_1439
	.word	-164
	.word	4
	.word	_Label_1440
	.word	-168
	.word	4
	.word	_Label_1441
	.word	-16
	.word	1
	.word	_Label_1442
	.word	-172
	.word	4
	.word	_Label_1443
	.word	-176
	.word	4
	.word	_Label_1444
	.word	-180
	.word	4
	.word	_Label_1445
	.word	-184
	.word	4
	.word	_Label_1446
	.word	-188
	.word	4
	.word	_Label_1447
	.word	-192
	.word	4
	.word	_Label_1448
	.word	-196
	.word	4
	.word	_Label_1449
	.word	-200
	.word	4
	.word	_Label_1450
	.word	-204
	.word	4
	.word	_Label_1451
	.word	-208
	.word	4
	.word	_Label_1452
	.word	-212
	.word	4
	.word	_Label_1453
	.word	-216
	.word	4
	.word	_Label_1454
	.word	-220
	.word	4
	.word	_Label_1455
	.word	-224
	.word	4
	.word	_Label_1456
	.word	-228
	.word	4
	.word	_Label_1457
	.word	-232
	.word	4
	.word	_Label_1458
	.word	-236
	.word	4
	.word	_Label_1459
	.word	-240
	.word	4
	.word	_Label_1460
	.word	-244
	.word	4
	.word	_Label_1461
	.word	-248
	.word	4
	.word	_Label_1462
	.word	-252
	.word	4
	.word	_Label_1463
	.word	-256
	.word	4
	.word	_Label_1464
	.word	-260
	.word	4
	.word	_Label_1465
	.word	-264
	.word	4
	.word	_Label_1466
	.word	-268
	.word	4
	.word	_Label_1467
	.word	-272
	.word	4
	.word	_Label_1468
	.word	-276
	.word	4
	.word	_Label_1469
	.word	-280
	.word	4
	.word	_Label_1470
	.word	-284
	.word	4
	.word	_Label_1471
	.word	-288
	.word	4
	.word	_Label_1472
	.word	-17
	.word	1
	.word	0
_Label_1393:
	.ascii	"Handle_Sys_Write\0"
	.align
_Label_1394:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_1395:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_1396:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_1397:
	.byte	'?'
	.ascii	"_temp_1392\0"
	.align
_Label_1398:
	.byte	'?'
	.ascii	"_temp_1389\0"
	.align
_Label_1399:
	.byte	'?'
	.ascii	"_temp_1388\0"
	.align
_Label_1400:
	.byte	'?'
	.ascii	"_temp_1387\0"
	.align
_Label_1401:
	.byte	'?'
	.ascii	"_temp_1386\0"
	.align
_Label_1402:
	.byte	'?'
	.ascii	"_temp_1385\0"
	.align
_Label_1403:
	.byte	'?'
	.ascii	"_temp_1384\0"
	.align
_Label_1404:
	.byte	'?'
	.ascii	"_temp_1383\0"
	.align
_Label_1405:
	.byte	'?'
	.ascii	"_temp_1382\0"
	.align
_Label_1406:
	.byte	'C'
	.ascii	"_temp_1381\0"
	.align
_Label_1407:
	.byte	'?'
	.ascii	"_temp_1380\0"
	.align
_Label_1408:
	.byte	'?'
	.ascii	"_temp_1379\0"
	.align
_Label_1409:
	.byte	'?'
	.ascii	"_temp_1378\0"
	.align
_Label_1410:
	.byte	'C'
	.ascii	"_temp_1377\0"
	.align
_Label_1411:
	.byte	'C'
	.ascii	"_temp_1376\0"
	.align
_Label_1412:
	.byte	'?'
	.ascii	"_temp_1375\0"
	.align
_Label_1413:
	.byte	'?'
	.ascii	"_temp_1374\0"
	.align
_Label_1414:
	.byte	'?'
	.ascii	"_temp_1373\0"
	.align
_Label_1415:
	.byte	'C'
	.ascii	"_temp_1372\0"
	.align
_Label_1416:
	.byte	'?'
	.ascii	"_temp_1371\0"
	.align
_Label_1417:
	.byte	'?'
	.ascii	"_temp_1370\0"
	.align
_Label_1418:
	.byte	'?'
	.ascii	"_temp_1369\0"
	.align
_Label_1419:
	.byte	'?'
	.ascii	"_temp_1368\0"
	.align
_Label_1420:
	.byte	'?'
	.ascii	"_temp_1367\0"
	.align
_Label_1421:
	.byte	'?'
	.ascii	"_temp_1366\0"
	.align
_Label_1422:
	.byte	'?'
	.ascii	"_temp_1358\0"
	.align
_Label_1423:
	.byte	'?'
	.ascii	"_temp_1355\0"
	.align
_Label_1424:
	.byte	'?'
	.ascii	"_temp_1349\0"
	.align
_Label_1425:
	.byte	'?'
	.ascii	"_temp_1348\0"
	.align
_Label_1426:
	.byte	'?'
	.ascii	"_temp_1347\0"
	.align
_Label_1427:
	.byte	'?'
	.ascii	"_temp_1346\0"
	.align
_Label_1428:
	.byte	'?'
	.ascii	"_temp_1345\0"
	.align
_Label_1429:
	.byte	'?'
	.ascii	"_temp_1344\0"
	.align
_Label_1430:
	.byte	'?'
	.ascii	"_temp_1343\0"
	.align
_Label_1431:
	.byte	'?'
	.ascii	"_temp_1342\0"
	.align
_Label_1432:
	.byte	'C'
	.ascii	"_temp_1339\0"
	.align
_Label_1433:
	.byte	'?'
	.ascii	"_temp_1338\0"
	.align
_Label_1434:
	.byte	'?'
	.ascii	"_temp_1337\0"
	.align
_Label_1435:
	.byte	'?'
	.ascii	"_temp_1336\0"
	.align
_Label_1436:
	.byte	'C'
	.ascii	"_temp_1335\0"
	.align
_Label_1437:
	.byte	'C'
	.ascii	"_temp_1334\0"
	.align
_Label_1438:
	.byte	'?'
	.ascii	"_temp_1333\0"
	.align
_Label_1439:
	.byte	'?'
	.ascii	"_temp_1332\0"
	.align
_Label_1440:
	.byte	'?'
	.ascii	"_temp_1331\0"
	.align
_Label_1441:
	.byte	'C'
	.ascii	"_temp_1330\0"
	.align
_Label_1442:
	.byte	'?'
	.ascii	"_temp_1329\0"
	.align
_Label_1443:
	.byte	'?'
	.ascii	"_temp_1328\0"
	.align
_Label_1444:
	.byte	'?'
	.ascii	"_temp_1327\0"
	.align
_Label_1445:
	.byte	'?'
	.ascii	"_temp_1326\0"
	.align
_Label_1446:
	.byte	'?'
	.ascii	"_temp_1325\0"
	.align
_Label_1447:
	.byte	'?'
	.ascii	"_temp_1324\0"
	.align
_Label_1448:
	.byte	'?'
	.ascii	"_temp_1316\0"
	.align
_Label_1449:
	.byte	'?'
	.ascii	"_temp_1313\0"
	.align
_Label_1450:
	.byte	'?'
	.ascii	"_temp_1307\0"
	.align
_Label_1451:
	.byte	'?'
	.ascii	"_temp_1306\0"
	.align
_Label_1452:
	.byte	'?'
	.ascii	"_temp_1305\0"
	.align
_Label_1453:
	.byte	'?'
	.ascii	"_temp_1304\0"
	.align
_Label_1454:
	.byte	'?'
	.ascii	"_temp_1303\0"
	.align
_Label_1455:
	.byte	'?'
	.ascii	"_temp_1302\0"
	.align
_Label_1456:
	.byte	'?'
	.ascii	"_temp_1301\0"
	.align
_Label_1457:
	.byte	'?'
	.ascii	"_temp_1300\0"
	.align
_Label_1458:
	.byte	'?'
	.ascii	"_temp_1299\0"
	.align
_Label_1459:
	.byte	'?'
	.ascii	"_temp_1298\0"
	.align
_Label_1460:
	.byte	'?'
	.ascii	"_temp_1297\0"
	.align
_Label_1461:
	.byte	'?'
	.ascii	"_temp_1296\0"
	.align
_Label_1462:
	.byte	'?'
	.ascii	"_temp_1295\0"
	.align
_Label_1463:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1464:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_1465:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_1466:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_1467:
	.byte	'I'
	.ascii	"nextPosInFile\0"
	.align
_Label_1468:
	.byte	'I'
	.ascii	"currentChunkSize\0"
	.align
_Label_1469:
	.byte	'I'
	.ascii	"fileSize\0"
	.align
_Label_1470:
	.byte	'I'
	.ascii	"destAddr\0"
	.align
_Label_1471:
	.byte	'P'
	.ascii	"openFile\0"
	.align
_Label_1472:
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
	mov	45,r1
_Label_4098:
	push	r0
	sub	r1,1,r1
	bne	_Label_4098
	mov	2201,r13		! source line 2201
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2205,r13		! source line 2205
	mov	"\0\0SE",r10
!   _temp_1473 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-180]
!   _temp_1474 = _temp_1473 + 4
	load	[r14+-180],r1
	add	r1,4,r1
	store	r1,[r14+-176]
!   Send message Lock
	load	[r14+-176],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	2207,r13		! source line 2207
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1485 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-160]
!   Data Move: _temp_1484 = *_temp_1485  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-164]
!   if intIsZero (_temp_1484) then goto _runtimeErrorNullPointer
	load	[r14+-164],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1486 = _temp_1484 + 124
	load	[r14+-164],r1
	add	r1,124,r1
	store	r1,[r14+-156]
!   Move address of _temp_1486 [fileDesc ] into _temp_1487
!     make sure index expr is >= 0
	load	[r14+8],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-152]
!   Data Move: _temp_1483 = *_temp_1487  (sizeInBytes=4)
	load	[r14+-152],r1
	load	[r1],r1
	store	r1,[r14+-168]
!   if intIsZero (_temp_1483) then goto _runtimeErrorNullPointer
	load	[r14+-168],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1488 = _temp_1483 + 12
	load	[r14+-168],r1
	add	r1,12,r1
	store	r1,[r14+-148]
!   Data Move: _temp_1482 = *_temp_1488  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r1],r1
	store	r1,[r14+-172]
!   if _temp_1482 != 2 then goto _Label_1481		(int)
	load	[r14+-172],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1481
	jmp	_Label_1475
_Label_1481:
!   if fileDesc >= 0 then goto _Label_1480		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1480
	jmp	_Label_1475
_Label_1480:
!   if fileDesc <= 9 then goto _Label_1479		(int)
	load	[r14+8],r1
	mov	9,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1479
	jmp	_Label_1475
_Label_1479:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1491 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-136]
!   Data Move: _temp_1490 = *_temp_1491  (sizeInBytes=4)
	load	[r14+-136],r1
	load	[r1],r1
	store	r1,[r14+-140]
!   if intIsZero (_temp_1490) then goto _runtimeErrorNullPointer
	load	[r14+-140],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1492 = _temp_1490 + 124
	load	[r14+-140],r1
	add	r1,124,r1
	store	r1,[r14+-132]
!   Move address of _temp_1492 [fileDesc ] into _temp_1493
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
!   Data Move: _temp_1489 = *_temp_1493  (sizeInBytes=4)
	load	[r14+-128],r1
	load	[r1],r1
	store	r1,[r14+-144]
!   if intIsZero (_temp_1489) then goto _Label_1475
	load	[r14+-144],r1
	cmp	r1,r0
	be	_Label_1475
!	jmp	_Label_1478
_Label_1478:
!   if newCurrentPos >= -1 then goto _Label_1477		(int)
	load	[r14+12],r1
	mov	-1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1477
	jmp	_Label_1475
_Label_1477:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1498 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-108]
!   Data Move: _temp_1497 = *_temp_1498  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if intIsZero (_temp_1497) then goto _runtimeErrorNullPointer
	load	[r14+-112],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1499 = _temp_1497 + 124
	load	[r14+-112],r1
	add	r1,124,r1
	store	r1,[r14+-104]
!   Move address of _temp_1499 [fileDesc ] into _temp_1500
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
!   Data Move: _temp_1496 = *_temp_1500  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if intIsZero (_temp_1496) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1501 = _temp_1496 + 20
	load	[r14+-116],r1
	add	r1,20,r1
	store	r1,[r14+-96]
!   Data Move: _temp_1495 = *_temp_1501  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-120]
!   if intIsZero (_temp_1495) then goto _runtimeErrorNullPointer
	load	[r14+-120],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1502 = _temp_1495 + 24
	load	[r14+-120],r1
	add	r1,24,r1
	store	r1,[r14+-92]
!   Data Move: _temp_1494 = *_temp_1502  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-124]
!   if newCurrentPos <= _temp_1494 then goto _Label_1476		(int)
	load	[r14+12],r1
	load	[r14+-124],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1476
!	jmp	_Label_1475
_Label_1475:
! THEN...
	mov	2208,r13		! source line 2208
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2208,r13		! source line 2208
	mov	"\0\0SE",r10
!   _temp_1503 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-88]
!   _temp_1504 = _temp_1503 + 4
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
	mov	2209,r13		! source line 2209
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,184,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1476:
! ASSIGNMENT STATEMENT...
	mov	2211,r13		! source line 2211
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1506 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-76]
!   Data Move: _temp_1505 = *_temp_1506  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_1505) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1507 = _temp_1505 + 124
	load	[r14+-80],r1
	add	r1,124,r1
	store	r1,[r14+-72]
!   Move address of _temp_1507 [fileDesc ] into _temp_1508
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
!   Data Move: openFile = *_temp_1508  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-184]
! IF STATEMENT...
	mov	2212,r13		! source line 2212
	mov	"\0\0IF",r10
!   if newCurrentPos != -1 then goto _Label_1510		(int)
	load	[r14+12],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_1510
!	jmp	_Label_1509
_Label_1509:
! THEN...
	mov	2213,r13		! source line 2213
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2213,r13		! source line 2213
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-184],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1511 = openFile + 16
	load	[r14+-184],r1
	add	r1,16,r1
	store	r1,[r14+-64]
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-184],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1514 = openFile + 20
	load	[r14+-184],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_1513 = *_temp_1514  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_1513) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1515 = _temp_1513 + 24
	load	[r14+-56],r1
	add	r1,24,r1
	store	r1,[r14+-48]
!   Data Move: _temp_1512 = *_temp_1515  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   Data Move: *_temp_1511 = _temp_1512  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r14+-64],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2214,r13		! source line 2214
	mov	"\0\0SE",r10
!   _temp_1516 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-44]
!   _temp_1517 = _temp_1516 + 4
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
	mov	2215,r13		! source line 2215
	mov	"\0\0RE",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-184],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1520 = openFile + 20
	load	[r14+-184],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: _temp_1519 = *_temp_1520  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_1519) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1521 = _temp_1519 + 24
	load	[r14+-32],r1
	add	r1,24,r1
	store	r1,[r14+-24]
!   Data Move: _temp_1518 = *_temp_1521  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   ReturnResult: _temp_1518  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,184,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1510:
! ASSIGNMENT STATEMENT...
	mov	2217,r13		! source line 2217
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-184],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1522 = openFile + 16
	load	[r14+-184],r1
	add	r1,16,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1522 = newCurrentPos  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2218,r13		! source line 2218
	mov	"\0\0SE",r10
!   _temp_1523 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-16]
!   _temp_1524 = _temp_1523 + 4
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
	mov	2219,r13		! source line 2219
	mov	"\0\0RE",r10
!   ReturnResult: newCurrentPos  (sizeInBytes=4)
	load	[r14+12],r1
	store	r1,[r14+8]
	add	r15,184,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Seek:
	.word	_sourceFileName
	.word	_Label_1525
	.word	8		! total size of parameters
	.word	180		! frame size = 180
	.word	_Label_1526
	.word	8
	.word	4
	.word	_Label_1527
	.word	12
	.word	4
	.word	_Label_1528
	.word	-12
	.word	4
	.word	_Label_1529
	.word	-16
	.word	4
	.word	_Label_1530
	.word	-20
	.word	4
	.word	_Label_1531
	.word	-24
	.word	4
	.word	_Label_1532
	.word	-28
	.word	4
	.word	_Label_1533
	.word	-32
	.word	4
	.word	_Label_1534
	.word	-36
	.word	4
	.word	_Label_1535
	.word	-40
	.word	4
	.word	_Label_1536
	.word	-44
	.word	4
	.word	_Label_1537
	.word	-48
	.word	4
	.word	_Label_1538
	.word	-52
	.word	4
	.word	_Label_1539
	.word	-56
	.word	4
	.word	_Label_1540
	.word	-60
	.word	4
	.word	_Label_1541
	.word	-64
	.word	4
	.word	_Label_1542
	.word	-68
	.word	4
	.word	_Label_1543
	.word	-72
	.word	4
	.word	_Label_1544
	.word	-76
	.word	4
	.word	_Label_1545
	.word	-80
	.word	4
	.word	_Label_1546
	.word	-84
	.word	4
	.word	_Label_1547
	.word	-88
	.word	4
	.word	_Label_1548
	.word	-92
	.word	4
	.word	_Label_1549
	.word	-96
	.word	4
	.word	_Label_1550
	.word	-100
	.word	4
	.word	_Label_1551
	.word	-104
	.word	4
	.word	_Label_1552
	.word	-108
	.word	4
	.word	_Label_1553
	.word	-112
	.word	4
	.word	_Label_1554
	.word	-116
	.word	4
	.word	_Label_1555
	.word	-120
	.word	4
	.word	_Label_1556
	.word	-124
	.word	4
	.word	_Label_1557
	.word	-128
	.word	4
	.word	_Label_1558
	.word	-132
	.word	4
	.word	_Label_1559
	.word	-136
	.word	4
	.word	_Label_1560
	.word	-140
	.word	4
	.word	_Label_1561
	.word	-144
	.word	4
	.word	_Label_1562
	.word	-148
	.word	4
	.word	_Label_1563
	.word	-152
	.word	4
	.word	_Label_1564
	.word	-156
	.word	4
	.word	_Label_1565
	.word	-160
	.word	4
	.word	_Label_1566
	.word	-164
	.word	4
	.word	_Label_1567
	.word	-168
	.word	4
	.word	_Label_1568
	.word	-172
	.word	4
	.word	_Label_1569
	.word	-176
	.word	4
	.word	_Label_1570
	.word	-180
	.word	4
	.word	_Label_1571
	.word	-184
	.word	4
	.word	0
_Label_1525:
	.ascii	"Handle_Sys_Seek\0"
	.align
_Label_1526:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_1527:
	.byte	'I'
	.ascii	"newCurrentPos\0"
	.align
_Label_1528:
	.byte	'?'
	.ascii	"_temp_1524\0"
	.align
_Label_1529:
	.byte	'?'
	.ascii	"_temp_1523\0"
	.align
_Label_1530:
	.byte	'?'
	.ascii	"_temp_1522\0"
	.align
_Label_1531:
	.byte	'?'
	.ascii	"_temp_1521\0"
	.align
_Label_1532:
	.byte	'?'
	.ascii	"_temp_1520\0"
	.align
_Label_1533:
	.byte	'?'
	.ascii	"_temp_1519\0"
	.align
_Label_1534:
	.byte	'?'
	.ascii	"_temp_1518\0"
	.align
_Label_1535:
	.byte	'?'
	.ascii	"_temp_1517\0"
	.align
_Label_1536:
	.byte	'?'
	.ascii	"_temp_1516\0"
	.align
_Label_1537:
	.byte	'?'
	.ascii	"_temp_1515\0"
	.align
_Label_1538:
	.byte	'?'
	.ascii	"_temp_1514\0"
	.align
_Label_1539:
	.byte	'?'
	.ascii	"_temp_1513\0"
	.align
_Label_1540:
	.byte	'?'
	.ascii	"_temp_1512\0"
	.align
_Label_1541:
	.byte	'?'
	.ascii	"_temp_1511\0"
	.align
_Label_1542:
	.byte	'?'
	.ascii	"_temp_1508\0"
	.align
_Label_1543:
	.byte	'?'
	.ascii	"_temp_1507\0"
	.align
_Label_1544:
	.byte	'?'
	.ascii	"_temp_1506\0"
	.align
_Label_1545:
	.byte	'?'
	.ascii	"_temp_1505\0"
	.align
_Label_1546:
	.byte	'?'
	.ascii	"_temp_1504\0"
	.align
_Label_1547:
	.byte	'?'
	.ascii	"_temp_1503\0"
	.align
_Label_1548:
	.byte	'?'
	.ascii	"_temp_1502\0"
	.align
_Label_1549:
	.byte	'?'
	.ascii	"_temp_1501\0"
	.align
_Label_1550:
	.byte	'?'
	.ascii	"_temp_1500\0"
	.align
_Label_1551:
	.byte	'?'
	.ascii	"_temp_1499\0"
	.align
_Label_1552:
	.byte	'?'
	.ascii	"_temp_1498\0"
	.align
_Label_1553:
	.byte	'?'
	.ascii	"_temp_1497\0"
	.align
_Label_1554:
	.byte	'?'
	.ascii	"_temp_1496\0"
	.align
_Label_1555:
	.byte	'?'
	.ascii	"_temp_1495\0"
	.align
_Label_1556:
	.byte	'?'
	.ascii	"_temp_1494\0"
	.align
_Label_1557:
	.byte	'?'
	.ascii	"_temp_1493\0"
	.align
_Label_1558:
	.byte	'?'
	.ascii	"_temp_1492\0"
	.align
_Label_1559:
	.byte	'?'
	.ascii	"_temp_1491\0"
	.align
_Label_1560:
	.byte	'?'
	.ascii	"_temp_1490\0"
	.align
_Label_1561:
	.byte	'?'
	.ascii	"_temp_1489\0"
	.align
_Label_1562:
	.byte	'?'
	.ascii	"_temp_1488\0"
	.align
_Label_1563:
	.byte	'?'
	.ascii	"_temp_1487\0"
	.align
_Label_1564:
	.byte	'?'
	.ascii	"_temp_1486\0"
	.align
_Label_1565:
	.byte	'?'
	.ascii	"_temp_1485\0"
	.align
_Label_1566:
	.byte	'?'
	.ascii	"_temp_1484\0"
	.align
_Label_1567:
	.byte	'?'
	.ascii	"_temp_1483\0"
	.align
_Label_1568:
	.byte	'?'
	.ascii	"_temp_1482\0"
	.align
_Label_1569:
	.byte	'?'
	.ascii	"_temp_1474\0"
	.align
_Label_1570:
	.byte	'?'
	.ascii	"_temp_1473\0"
	.align
_Label_1571:
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
	mov	28,r1
_Label_4099:
	push	r0
	sub	r1,1,r1
	bne	_Label_4099
	mov	2224,r13		! source line 2224
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2225,r13		! source line 2225
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1577 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-100]
!   Data Move: _temp_1576 = *_temp_1577  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if intIsZero (_temp_1576) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1578 = _temp_1576 + 124
	load	[r14+-104],r1
	add	r1,124,r1
	store	r1,[r14+-96]
!   Move address of _temp_1578 [fileDesc ] into _temp_1579
!     make sure index expr is >= 0
	load	[r14+8],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-92]
!   Data Move: _temp_1575 = *_temp_1579  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_1575) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1580 = _temp_1575 + 12
	load	[r14+-108],r1
	add	r1,12,r1
	store	r1,[r14+-88]
!   Data Move: _temp_1574 = *_temp_1580  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if _temp_1574 != 2 then goto _Label_1573		(int)
	load	[r14+-112],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1573
!	jmp	_Label_1572
_Label_1572:
! THEN...
	mov	2226,r13		! source line 2226
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2226,r13		! source line 2226
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1582 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-80]
!   Data Move: _temp_1581 = *_temp_1582  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if intIsZero (_temp_1581) then goto _runtimeErrorNullPointer
	load	[r14+-84],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1583 = _temp_1581 + 124
	load	[r14+-84],r1
	add	r1,124,r1
	store	r1,[r14+-76]
!   Move address of _temp_1583 [fileDesc ] into _temp_1584
!     make sure index expr is >= 0
	load	[r14+8],r2
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
!   Data Move: *_temp_1584 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-72],r2
	store	r1,[r2]
	jmp	_Label_1585
_Label_1573:
! ELSE...
	mov	2228,r13		! source line 2228
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	2228,r13		! source line 2228
	mov	"\0\0IF",r10
!   if fileDesc >= 0 then goto _Label_1589		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1589
	jmp	_Label_1586
_Label_1589:
!   if fileDesc <= 9 then goto _Label_1588		(int)
	load	[r14+8],r1
	mov	9,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1588
	jmp	_Label_1586
_Label_1588:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1592 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-60]
!   Data Move: _temp_1591 = *_temp_1592  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_1591) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1593 = _temp_1591 + 124
	load	[r14+-64],r1
	add	r1,124,r1
	store	r1,[r14+-56]
!   Move address of _temp_1593 [fileDesc ] into _temp_1594
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
!   Data Move: _temp_1590 = *_temp_1594  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_1590) then goto _Label_1586
	load	[r14+-68],r1
	cmp	r1,r0
	be	_Label_1586
	jmp	_Label_1587
_Label_1586:
	jmp	_Label_1595
_Label_1587:
! ELSE...
	mov	2231,r13		! source line 2231
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	2231,r13		! source line 2231
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1598 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-40]
!   Data Move: _temp_1597 = *_temp_1598  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_1597) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1599 = _temp_1597 + 124
	load	[r14+-44],r1
	add	r1,124,r1
	store	r1,[r14+-36]
!   Move address of _temp_1599 [fileDesc ] into _temp_1600
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
!   Data Move: _temp_1596 = *_temp_1600  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_1601 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_1596  sizeInBytes=4
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
	mov	2232,r13		! source line 2232
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1603 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_1602 = *_temp_1603  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_1602) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1604 = _temp_1602 + 124
	load	[r14+-24],r1
	add	r1,124,r1
	store	r1,[r14+-16]
!   Move address of _temp_1604 [fileDesc ] into _temp_1605
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
!   Data Move: *_temp_1605 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-12],r2
	store	r1,[r2]
! END IF...
_Label_1595:
! END IF...
_Label_1585:
! RETURN STATEMENT...
	mov	2225,r13		! source line 2225
	mov	"\0\0RE",r10
	add	r15,116,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Close:
	.word	_sourceFileName
	.word	_Label_1606
	.word	4		! total size of parameters
	.word	112		! frame size = 112
	.word	_Label_1607
	.word	8
	.word	4
	.word	_Label_1608
	.word	-12
	.word	4
	.word	_Label_1609
	.word	-16
	.word	4
	.word	_Label_1610
	.word	-20
	.word	4
	.word	_Label_1611
	.word	-24
	.word	4
	.word	_Label_1612
	.word	-28
	.word	4
	.word	_Label_1613
	.word	-32
	.word	4
	.word	_Label_1614
	.word	-36
	.word	4
	.word	_Label_1615
	.word	-40
	.word	4
	.word	_Label_1616
	.word	-44
	.word	4
	.word	_Label_1617
	.word	-48
	.word	4
	.word	_Label_1618
	.word	-52
	.word	4
	.word	_Label_1619
	.word	-56
	.word	4
	.word	_Label_1620
	.word	-60
	.word	4
	.word	_Label_1621
	.word	-64
	.word	4
	.word	_Label_1622
	.word	-68
	.word	4
	.word	_Label_1623
	.word	-72
	.word	4
	.word	_Label_1624
	.word	-76
	.word	4
	.word	_Label_1625
	.word	-80
	.word	4
	.word	_Label_1626
	.word	-84
	.word	4
	.word	_Label_1627
	.word	-88
	.word	4
	.word	_Label_1628
	.word	-92
	.word	4
	.word	_Label_1629
	.word	-96
	.word	4
	.word	_Label_1630
	.word	-100
	.word	4
	.word	_Label_1631
	.word	-104
	.word	4
	.word	_Label_1632
	.word	-108
	.word	4
	.word	_Label_1633
	.word	-112
	.word	4
	.word	0
_Label_1606:
	.ascii	"Handle_Sys_Close\0"
	.align
_Label_1607:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_1608:
	.byte	'?'
	.ascii	"_temp_1605\0"
	.align
_Label_1609:
	.byte	'?'
	.ascii	"_temp_1604\0"
	.align
_Label_1610:
	.byte	'?'
	.ascii	"_temp_1603\0"
	.align
_Label_1611:
	.byte	'?'
	.ascii	"_temp_1602\0"
	.align
_Label_1612:
	.byte	'?'
	.ascii	"_temp_1601\0"
	.align
_Label_1613:
	.byte	'?'
	.ascii	"_temp_1600\0"
	.align
_Label_1614:
	.byte	'?'
	.ascii	"_temp_1599\0"
	.align
_Label_1615:
	.byte	'?'
	.ascii	"_temp_1598\0"
	.align
_Label_1616:
	.byte	'?'
	.ascii	"_temp_1597\0"
	.align
_Label_1617:
	.byte	'?'
	.ascii	"_temp_1596\0"
	.align
_Label_1618:
	.byte	'?'
	.ascii	"_temp_1594\0"
	.align
_Label_1619:
	.byte	'?'
	.ascii	"_temp_1593\0"
	.align
_Label_1620:
	.byte	'?'
	.ascii	"_temp_1592\0"
	.align
_Label_1621:
	.byte	'?'
	.ascii	"_temp_1591\0"
	.align
_Label_1622:
	.byte	'?'
	.ascii	"_temp_1590\0"
	.align
_Label_1623:
	.byte	'?'
	.ascii	"_temp_1584\0"
	.align
_Label_1624:
	.byte	'?'
	.ascii	"_temp_1583\0"
	.align
_Label_1625:
	.byte	'?'
	.ascii	"_temp_1582\0"
	.align
_Label_1626:
	.byte	'?'
	.ascii	"_temp_1581\0"
	.align
_Label_1627:
	.byte	'?'
	.ascii	"_temp_1580\0"
	.align
_Label_1628:
	.byte	'?'
	.ascii	"_temp_1579\0"
	.align
_Label_1629:
	.byte	'?'
	.ascii	"_temp_1578\0"
	.align
_Label_1630:
	.byte	'?'
	.ascii	"_temp_1577\0"
	.align
_Label_1631:
	.byte	'?'
	.ascii	"_temp_1576\0"
	.align
_Label_1632:
	.byte	'?'
	.ascii	"_temp_1575\0"
	.align
_Label_1633:
	.byte	'?'
	.ascii	"_temp_1574\0"
	.align
! 
! ===============  FUNCTION copyUnalignedWord  ===============
! 
_function_185_copyUnalignedWord:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_185_copyUnalignedWord,r1
	push	r1
	mov	9,r1
_Label_4100:
	push	r0
	sub	r1,1,r1
	bne	_Label_4100
	mov	2828,r13		! source line 2828
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2830,r13		! source line 2830
	mov	"\0\0AS",r10
!   from = fromPtr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2831,r13		! source line 2831
	mov	"\0\0AS",r10
!   dest = destPtr		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	2832,r13		! source line 2832
	mov	"\0\0AS",r10
!   if intIsZero (dest) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (from) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1634 = *from  (sizeInBytes=1)
	load	[r14+-40],r1
	loadb	[r1],r1
	storeb	r1,[r14+-12]
!   Data Move: *dest = _temp_1634  (sizeInBytes=1)
	loadb	[r14+-12],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2833,r13		! source line 2833
	mov	"\0\0AS",r10
!   _temp_1635 = dest + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   if intIsZero (_temp_1635) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1637 = from + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   if intIsZero (_temp_1637) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1636 = *_temp_1637  (sizeInBytes=1)
	load	[r14+-32],r1
	loadb	[r1],r1
	storeb	r1,[r14+-11]
!   Data Move: *_temp_1635 = _temp_1636  (sizeInBytes=1)
	loadb	[r14+-11],r1
	load	[r14+-36],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2834,r13		! source line 2834
	mov	"\0\0AS",r10
!   _temp_1638 = dest + 2		(int)
	load	[r14+-44],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   if intIsZero (_temp_1638) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1640 = from + 2		(int)
	load	[r14+-40],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   if intIsZero (_temp_1640) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1639 = *_temp_1640  (sizeInBytes=1)
	load	[r14+-24],r1
	loadb	[r1],r1
	storeb	r1,[r14+-10]
!   Data Move: *_temp_1638 = _temp_1639  (sizeInBytes=1)
	loadb	[r14+-10],r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2835,r13		! source line 2835
	mov	"\0\0AS",r10
!   _temp_1641 = dest + 3		(int)
	load	[r14+-44],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   if intIsZero (_temp_1641) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1643 = from + 3		(int)
	load	[r14+-40],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
!   if intIsZero (_temp_1643) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1642 = *_temp_1643  (sizeInBytes=1)
	load	[r14+-16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *_temp_1641 = _temp_1642  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! RETURN STATEMENT...
	mov	2835,r13		! source line 2835
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_185_copyUnalignedWord:
	.word	_sourceFileName
	.word	_Label_1644
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1645
	.word	8
	.word	4
	.word	_Label_1646
	.word	12
	.word	4
	.word	_Label_1647
	.word	-16
	.word	4
	.word	_Label_1648
	.word	-9
	.word	1
	.word	_Label_1649
	.word	-20
	.word	4
	.word	_Label_1650
	.word	-24
	.word	4
	.word	_Label_1651
	.word	-10
	.word	1
	.word	_Label_1652
	.word	-28
	.word	4
	.word	_Label_1653
	.word	-32
	.word	4
	.word	_Label_1654
	.word	-11
	.word	1
	.word	_Label_1655
	.word	-36
	.word	4
	.word	_Label_1656
	.word	-12
	.word	1
	.word	_Label_1657
	.word	-40
	.word	4
	.word	_Label_1658
	.word	-44
	.word	4
	.word	0
_Label_1644:
	.ascii	"copyUnalignedWord\0"
	.align
_Label_1645:
	.byte	'P'
	.ascii	"destPtr\0"
	.align
_Label_1646:
	.byte	'P'
	.ascii	"fromPtr\0"
	.align
_Label_1647:
	.byte	'?'
	.ascii	"_temp_1643\0"
	.align
_Label_1648:
	.byte	'C'
	.ascii	"_temp_1642\0"
	.align
_Label_1649:
	.byte	'?'
	.ascii	"_temp_1641\0"
	.align
_Label_1650:
	.byte	'?'
	.ascii	"_temp_1640\0"
	.align
_Label_1651:
	.byte	'C'
	.ascii	"_temp_1639\0"
	.align
_Label_1652:
	.byte	'?'
	.ascii	"_temp_1638\0"
	.align
_Label_1653:
	.byte	'?'
	.ascii	"_temp_1637\0"
	.align
_Label_1654:
	.byte	'C'
	.ascii	"_temp_1636\0"
	.align
_Label_1655:
	.byte	'?'
	.ascii	"_temp_1635\0"
	.align
_Label_1656:
	.byte	'C'
	.ascii	"_temp_1634\0"
	.align
_Label_1657:
	.byte	'P'
	.ascii	"from\0"
	.align
_Label_1658:
	.byte	'P'
	.ascii	"dest\0"
	.align
! 
! ===============  FUNCTION printFCB  ===============
! 
_function_184_printFCB:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_184_printFCB,r1
	push	r1
	mov	3,r1
_Label_4101:
	push	r0
	sub	r1,1,r1
	bne	_Label_4101
	mov	2838,r13		! source line 2838
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1660 = fcb + 12
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-12]
!   Data Move: _temp_1659 = *_temp_1660  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1659  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2839,r13		! source line 2839
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	2840,r13		! source line 2840
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	2840,r13		! source line 2840
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_184_printFCB:
	.word	_sourceFileName
	.word	_Label_1661
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1662
	.word	8
	.word	4
	.word	_Label_1663
	.word	-12
	.word	4
	.word	_Label_1664
	.word	-16
	.word	4
	.word	0
_Label_1661:
	.ascii	"printFCB\0"
	.align
_Label_1662:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_1663:
	.byte	'?'
	.ascii	"_temp_1660\0"
	.align
_Label_1664:
	.byte	'?'
	.ascii	"_temp_1659\0"
	.align
! 
! ===============  FUNCTION printOpen  ===============
! 
_function_183_printOpen:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_183_printOpen,r1
	push	r1
	mov	4,r1
_Label_4102:
	push	r0
	sub	r1,1,r1
	bne	_Label_4102
	mov	2843,r13		! source line 2843
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1665 = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1665  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2844,r13		! source line 2844
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1666 = open		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1666  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2845,r13		! source line 2845
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1667 = _StringConst_43
	set	_StringConst_43,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1667  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2846,r13		! source line 2846
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2847,r13		! source line 2847
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
	mov	2847,r13		! source line 2847
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_183_printOpen:
	.word	_sourceFileName
	.word	_Label_1668
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1669
	.word	8
	.word	4
	.word	_Label_1670
	.word	-12
	.word	4
	.word	_Label_1671
	.word	-16
	.word	4
	.word	_Label_1672
	.word	-20
	.word	4
	.word	0
_Label_1668:
	.ascii	"printOpen\0"
	.align
_Label_1669:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_1670:
	.byte	'?'
	.ascii	"_temp_1667\0"
	.align
_Label_1671:
	.byte	'?'
	.ascii	"_temp_1666\0"
	.align
_Label_1672:
	.byte	'?'
	.ascii	"_temp_1665\0"
	.align
! 
! ===============  CLASS SerialDriver  ===============
! 
! Dispatch Table:
! 
_P_Kernel_SerialDriver:
	.word	_Label_1673
	jmp	_Method_P_Kernel_SerialDriver_1	! 4:	Init
	jmp	_Method_P_Kernel_SerialDriver_2	! 8:	PutChar
	jmp	_Method_P_Kernel_SerialDriver_3	! 12:	GetChar
	jmp	_Method_P_Kernel_SerialDriver_4	! 16:	SerialHandler
	.word	0
! 
! Class descriptor:
! 
_Label_1673:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1674
	.word	_sourceFileName
	.word	132		! line number
	.word	4308		! size of instances, in bytes
	.word	_P_Kernel_SerialDriver
	.word	_P_System_Object
	.word	0
_Label_1674:
	.ascii	"SerialDriver\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_SerialDriver_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_SerialDriver_1,r1
	push	r1
	mov	2891,r13		! source line 2891
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	2891,r13		! source line 2891
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_SerialDriver_1:
	.word	_sourceFileName
	.word	_Label_1675
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_1676
	.word	4		! size of self
	.word	8		! offset of self
	.word	0
_Label_1675:
	.ascii	"SerialDriver"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1676:
	.ascii	"Pself\0"
	.align
! 
! ===============  METHOD PutChar  ===============
! 
_Method_P_Kernel_SerialDriver_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_SerialDriver_2,r1
	push	r1
	mov	2894,r13		! source line 2894
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	2894,r13		! source line 2894
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_SerialDriver_2:
	.word	_sourceFileName
	.word	_Label_1677
	.word	8		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_1678
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1679
	.word	12
	.word	1
	.word	0
_Label_1677:
	.ascii	"SerialDriver"
	.ascii	"::"
	.ascii	"PutChar\0"
	.align
_Label_1678:
	.ascii	"Pself\0"
	.align
_Label_1679:
	.byte	'C'
	.ascii	"value\0"
	.align
! 
! ===============  METHOD GetChar  ===============
! 
_Method_P_Kernel_SerialDriver_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_SerialDriver_3,r1
	push	r1
	mov	2897,r13		! source line 2897
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	2898,r13		! source line 2898
	mov	"\0\0RE",r10
!   ReturnResult: 99  (sizeInBytes=1)
	mov	99,r1
	storeb	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_SerialDriver_3:
	.word	_sourceFileName
	.word	_Label_1680
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_1681
	.word	4		! size of self
	.word	8		! offset of self
	.word	0
_Label_1680:
	.ascii	"SerialDriver"
	.ascii	"::"
	.ascii	"GetChar\0"
	.align
_Label_1681:
	.ascii	"Pself\0"
	.align
! 
! ===============  METHOD SerialHandler  ===============
! 
_Method_P_Kernel_SerialDriver_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_SerialDriver_4,r1
	push	r1
	mov	2901,r13		! source line 2901
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	2901,r13		! source line 2901
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_SerialDriver_4:
	.word	_sourceFileName
	.word	_Label_1682
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_1683
	.word	4		! size of self
	.word	8		! offset of self
	.word	0
_Label_1682:
	.ascii	"SerialDriver"
	.ascii	"::"
	.ascii	"SerialHandler\0"
	.align
_Label_1683:
	.ascii	"Pself\0"
	.align
! 
! ===============  CLASS Semaphore  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Semaphore:
	.word	_Label_1684
	jmp	_Method_P_Kernel_Semaphore_1	! 4:	Init
	jmp	_Method_P_Kernel_Semaphore_3	! 8:	Down
	jmp	_Method_P_Kernel_Semaphore_2	! 12:	Up
	.word	0
! 
! Class descriptor:
! 
_Label_1684:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1685
	.word	_sourceFileName
	.word	159		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Semaphore
	.word	_P_System_Object
	.word	0
_Label_1685:
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
_Label_4103:
	push	r0
	sub	r1,1,r1
	bne	_Label_4103
	mov	279,r13		! source line 279
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	280,r13		! source line 280
	mov	"\0\0IF",r10
!   if initialCount >= 0 then goto _Label_1687		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1687
!	jmp	_Label_1686
_Label_1686:
! THEN...
	mov	281,r13		! source line 281
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1688 = _StringConst_44
	set	_StringConst_44,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1688  sizeInBytes=4
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
_Label_1687:
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
	.word	_Label_1690
	.word	8		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1691
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1692
	.word	12
	.word	4
	.word	_Label_1693
	.word	-12
	.word	4
	.word	_Label_1694
	.word	-16
	.word	4
	.word	0
_Label_1690:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1691:
	.ascii	"Pself\0"
	.align
_Label_1692:
	.byte	'I'
	.ascii	"initialCount\0"
	.align
_Label_1693:
	.byte	'?'
	.ascii	"_temp_1689\0"
	.align
_Label_1694:
	.byte	'?'
	.ascii	"_temp_1688\0"
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
_Label_4104:
	push	r0
	sub	r1,1,r1
	bne	_Label_4104
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
!   if count != 2147483647 then goto _Label_1696		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	2147483647,r2
	cmp	r1,r2
	bne	_Label_1696
!	jmp	_Label_1695
_Label_1695:
! THEN...
	mov	295,r13		! source line 295
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1697 = _StringConst_45
	set	_StringConst_45,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1697  sizeInBytes=4
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
_Label_1696:
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
!   if count > 0 then goto _Label_1699		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1699
!	jmp	_Label_1698
_Label_1698:
! THEN...
	mov	299,r13		! source line 299
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	299,r13		! source line 299
	mov	"\0\0AS",r10
	mov	299,r13		! source line 299
	mov	"\0\0SE",r10
!   _temp_1700 = &waitingThreads
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
!   _temp_1701 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1701 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	301,r13		! source line 301
	mov	"\0\0SE",r10
!   _temp_1702 = &_P_Kernel_readyList
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
_Label_1699:
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
	.word	_Label_1703
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1704
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1705
	.word	-12
	.word	4
	.word	_Label_1706
	.word	-16
	.word	4
	.word	_Label_1707
	.word	-20
	.word	4
	.word	_Label_1708
	.word	-24
	.word	4
	.word	_Label_1709
	.word	-28
	.word	4
	.word	_Label_1710
	.word	-32
	.word	4
	.word	0
_Label_1703:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Up\0"
	.align
_Label_1704:
	.ascii	"Pself\0"
	.align
_Label_1705:
	.byte	'?'
	.ascii	"_temp_1702\0"
	.align
_Label_1706:
	.byte	'?'
	.ascii	"_temp_1701\0"
	.align
_Label_1707:
	.byte	'?'
	.ascii	"_temp_1700\0"
	.align
_Label_1708:
	.byte	'?'
	.ascii	"_temp_1697\0"
	.align
_Label_1709:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1710:
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
_Label_4105:
	push	r0
	sub	r1,1,r1
	bne	_Label_4105
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
!   if count != -2147483648 then goto _Label_1712		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	0x80000000,r2
	cmp	r1,r2
	bne	_Label_1712
!	jmp	_Label_1711
_Label_1711:
! THEN...
	mov	313,r13		! source line 313
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1713 = _StringConst_46
	set	_StringConst_46,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1713  sizeInBytes=4
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
_Label_1712:
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
!   if count >= 0 then goto _Label_1715		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1715
!	jmp	_Label_1714
_Label_1714:
! THEN...
	mov	317,r13		! source line 317
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	317,r13		! source line 317
	mov	"\0\0SE",r10
!   _temp_1716 = &waitingThreads
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
_Label_1715:
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
	.word	_Label_1717
	.word	4		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1718
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1719
	.word	-12
	.word	4
	.word	_Label_1720
	.word	-16
	.word	4
	.word	_Label_1721
	.word	-20
	.word	4
	.word	0
_Label_1717:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Down\0"
	.align
_Label_1718:
	.ascii	"Pself\0"
	.align
_Label_1719:
	.byte	'?'
	.ascii	"_temp_1716\0"
	.align
_Label_1720:
	.byte	'?'
	.ascii	"_temp_1713\0"
	.align
_Label_1721:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Mutex  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Mutex:
	.word	_Label_1722
	jmp	_Method_P_Kernel_Mutex_1	! 4:	Init
	jmp	_Method_P_Kernel_Mutex_2	! 8:	Lock
	jmp	_Method_P_Kernel_Mutex_3	! 12:	Unlock
	jmp	_Method_P_Kernel_Mutex_4	! 16:	IsHeldByCurrentThread
	.word	0
! 
! Class descriptor:
! 
_Label_1722:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1723
	.word	_sourceFileName
	.word	172		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Mutex
	.word	_P_System_Object
	.word	0
_Label_1723:
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
_Label_4106:
	push	r0
	sub	r1,1,r1
	bne	_Label_4106
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
	.word	_Label_1725
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1726
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1727
	.word	-12
	.word	4
	.word	0
_Label_1725:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1726:
	.ascii	"Pself\0"
	.align
_Label_1727:
	.byte	'?'
	.ascii	"_temp_1724\0"
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
_Label_4107:
	push	r0
	sub	r1,1,r1
	bne	_Label_4107
	mov	349,r13		! source line 349
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	352,r13		! source line 352
	mov	"\0\0IF",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_1729		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_1729
!	jmp	_Label_1728
_Label_1728:
! THEN...
	mov	353,r13		! source line 353
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1730 = _StringConst_47
	set	_StringConst_47,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1730  sizeInBytes=4
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
_Label_1729:
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
!   if heldBy == 0 then goto _Label_1734		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1734
!   _temp_1733 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1735
_Label_1734:
!   _temp_1733 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1735:
!   if _temp_1733 then goto _Label_1732 else goto _Label_1731
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1731
	jmp	_Label_1732
_Label_1731:
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
	jmp	_Label_1736
_Label_1732:
! ELSE...
	mov	359,r13		! source line 359
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	359,r13		! source line 359
	mov	"\0\0SE",r10
!   _temp_1737 = &waitingThreads
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
_Label_1736:
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
	.word	_Label_1738
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1739
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1740
	.word	-16
	.word	4
	.word	_Label_1741
	.word	-9
	.word	1
	.word	_Label_1742
	.word	-20
	.word	4
	.word	_Label_1743
	.word	-24
	.word	4
	.word	0
_Label_1738:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_1739:
	.ascii	"Pself\0"
	.align
_Label_1740:
	.byte	'?'
	.ascii	"_temp_1737\0"
	.align
_Label_1741:
	.byte	'C'
	.ascii	"_temp_1733\0"
	.align
_Label_1742:
	.byte	'?'
	.ascii	"_temp_1730\0"
	.align
_Label_1743:
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
_Label_4108:
	push	r0
	sub	r1,1,r1
	bne	_Label_4108
	mov	367,r13		! source line 367
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	371,r13		! source line 371
	mov	"\0\0IF",r10
!   if heldBy == _P_Kernel_currentThread then goto _Label_1745		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1745
!	jmp	_Label_1744
_Label_1744:
! THEN...
	mov	372,r13		! source line 372
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1746 = _StringConst_48
	set	_StringConst_48,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1746  sizeInBytes=4
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
_Label_1745:
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
!   _temp_1747 = &waitingThreads
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
!   if t == 0 then goto _Label_1749		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1749
!	jmp	_Label_1748
_Label_1748:
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
!   _temp_1750 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1750 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	378,r13		! source line 378
	mov	"\0\0SE",r10
!   _temp_1751 = &_P_Kernel_readyList
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
	jmp	_Label_1752
_Label_1749:
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
_Label_1752:
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
	.word	_Label_1753
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1754
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1755
	.word	-12
	.word	4
	.word	_Label_1756
	.word	-16
	.word	4
	.word	_Label_1757
	.word	-20
	.word	4
	.word	_Label_1758
	.word	-24
	.word	4
	.word	_Label_1759
	.word	-28
	.word	4
	.word	_Label_1760
	.word	-32
	.word	4
	.word	0
_Label_1753:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_1754:
	.ascii	"Pself\0"
	.align
_Label_1755:
	.byte	'?'
	.ascii	"_temp_1751\0"
	.align
_Label_1756:
	.byte	'?'
	.ascii	"_temp_1750\0"
	.align
_Label_1757:
	.byte	'?'
	.ascii	"_temp_1747\0"
	.align
_Label_1758:
	.byte	'?'
	.ascii	"_temp_1746\0"
	.align
_Label_1759:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1760:
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
_Label_4109:
	push	r0
	sub	r1,1,r1
	bne	_Label_4109
	mov	388,r13		! source line 388
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	389,r13		! source line 389
	mov	"\0\0RE",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_1763		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_1763
!	jmp	_Label_1762
_Label_1762:
!   _temp_1761 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1764
_Label_1763:
!   _temp_1761 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1764:
!   ReturnResult: _temp_1761  (sizeInBytes=1)
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
	.word	_Label_1765
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1766
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1767
	.word	-9
	.word	1
	.word	0
_Label_1765:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_1766:
	.ascii	"Pself\0"
	.align
_Label_1767:
	.byte	'C'
	.ascii	"_temp_1761\0"
	.align
! 
! ===============  CLASS Condition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Condition:
	.word	_Label_1768
	jmp	_Method_P_Kernel_Condition_1	! 4:	Init
	jmp	_Method_P_Kernel_Condition_2	! 8:	Wait
	jmp	_Method_P_Kernel_Condition_3	! 12:	Signal
	jmp	_Method_P_Kernel_Condition_4	! 16:	Broadcast
	.word	0
! 
! Class descriptor:
! 
_Label_1768:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1769
	.word	_sourceFileName
	.word	186		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Kernel_Condition
	.word	_P_System_Object
	.word	0
_Label_1769:
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
_Label_4110:
	push	r0
	sub	r1,1,r1
	bne	_Label_4110
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
	.word	_Label_1771
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1772
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1773
	.word	-12
	.word	4
	.word	0
_Label_1771:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1772:
	.ascii	"Pself\0"
	.align
_Label_1773:
	.byte	'?'
	.ascii	"_temp_1770\0"
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
_Label_4111:
	push	r0
	sub	r1,1,r1
	bne	_Label_4111
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
!   Retrieve Result: targetName=_temp_1776  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1776 then goto _Label_1775 else goto _Label_1774
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1774
	jmp	_Label_1775
_Label_1774:
! THEN...
	mov	439,r13		! source line 439
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1777 = _StringConst_49
	set	_StringConst_49,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1777  sizeInBytes=4
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
_Label_1775:
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
!   _temp_1778 = &waitingThreads
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
	.word	_Label_1779
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1780
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1781
	.word	12
	.word	4
	.word	_Label_1782
	.word	-16
	.word	4
	.word	_Label_1783
	.word	-20
	.word	4
	.word	_Label_1784
	.word	-9
	.word	1
	.word	_Label_1785
	.word	-24
	.word	4
	.word	0
_Label_1779:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_1780:
	.ascii	"Pself\0"
	.align
_Label_1781:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1782:
	.byte	'?'
	.ascii	"_temp_1778\0"
	.align
_Label_1783:
	.byte	'?'
	.ascii	"_temp_1777\0"
	.align
_Label_1784:
	.byte	'C'
	.ascii	"_temp_1776\0"
	.align
_Label_1785:
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
_Label_4112:
	push	r0
	sub	r1,1,r1
	bne	_Label_4112
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
!   Retrieve Result: targetName=_temp_1788  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1788 then goto _Label_1787 else goto _Label_1786
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1786
	jmp	_Label_1787
_Label_1786:
! THEN...
	mov	456,r13		! source line 456
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1789 = _StringConst_50
	set	_StringConst_50,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1789  sizeInBytes=4
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
_Label_1787:
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
!   _temp_1790 = &waitingThreads
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
!   if t == 0 then goto _Label_1792		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1792
!	jmp	_Label_1791
_Label_1791:
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
!   _temp_1793 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1793 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	462,r13		! source line 462
	mov	"\0\0SE",r10
!   _temp_1794 = &_P_Kernel_readyList
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
_Label_1792:
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
	.word	_Label_1795
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1796
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1797
	.word	12
	.word	4
	.word	_Label_1798
	.word	-16
	.word	4
	.word	_Label_1799
	.word	-20
	.word	4
	.word	_Label_1800
	.word	-24
	.word	4
	.word	_Label_1801
	.word	-28
	.word	4
	.word	_Label_1802
	.word	-9
	.word	1
	.word	_Label_1803
	.word	-32
	.word	4
	.word	_Label_1804
	.word	-36
	.word	4
	.word	0
_Label_1795:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_1796:
	.ascii	"Pself\0"
	.align
_Label_1797:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1798:
	.byte	'?'
	.ascii	"_temp_1794\0"
	.align
_Label_1799:
	.byte	'?'
	.ascii	"_temp_1793\0"
	.align
_Label_1800:
	.byte	'?'
	.ascii	"_temp_1790\0"
	.align
_Label_1801:
	.byte	'?'
	.ascii	"_temp_1789\0"
	.align
_Label_1802:
	.byte	'C'
	.ascii	"_temp_1788\0"
	.align
_Label_1803:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1804:
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
_Label_4113:
	push	r0
	sub	r1,1,r1
	bne	_Label_4113
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
!   Retrieve Result: targetName=_temp_1807  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1807 then goto _Label_1806 else goto _Label_1805
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1805
	jmp	_Label_1806
_Label_1805:
! THEN...
	mov	474,r13		! source line 474
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1808 = _StringConst_51
	set	_StringConst_51,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1808  sizeInBytes=4
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
_Label_1806:
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
_Label_1809:
!	jmp	_Label_1810
_Label_1810:
	mov	477,r13		! source line 477
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	478,r13		! source line 478
	mov	"\0\0AS",r10
	mov	478,r13		! source line 478
	mov	"\0\0SE",r10
!   _temp_1812 = &waitingThreads
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
!   if intIsZero (t) then goto _Label_1813
	load	[r14+-36],r1
	cmp	r1,r0
	be	_Label_1813
	jmp	_Label_1814
_Label_1813:
! THEN...
	mov	480,r13		! source line 480
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	480,r13		! source line 480
	mov	"\0\0BR",r10
	jmp	_Label_1811
! END IF...
_Label_1814:
! ASSIGNMENT STATEMENT...
	mov	482,r13		! source line 482
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1815 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1815 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	483,r13		! source line 483
	mov	"\0\0SE",r10
!   _temp_1816 = &_P_Kernel_readyList
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
	jmp	_Label_1809
_Label_1811:
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
	.word	_Label_1817
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1818
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1819
	.word	12
	.word	4
	.word	_Label_1820
	.word	-16
	.word	4
	.word	_Label_1821
	.word	-20
	.word	4
	.word	_Label_1822
	.word	-24
	.word	4
	.word	_Label_1823
	.word	-28
	.word	4
	.word	_Label_1824
	.word	-9
	.word	1
	.word	_Label_1825
	.word	-32
	.word	4
	.word	_Label_1826
	.word	-36
	.word	4
	.word	0
_Label_1817:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Broadcast\0"
	.align
_Label_1818:
	.ascii	"Pself\0"
	.align
_Label_1819:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1820:
	.byte	'?'
	.ascii	"_temp_1816\0"
	.align
_Label_1821:
	.byte	'?'
	.ascii	"_temp_1815\0"
	.align
_Label_1822:
	.byte	'?'
	.ascii	"_temp_1812\0"
	.align
_Label_1823:
	.byte	'?'
	.ascii	"_temp_1808\0"
	.align
_Label_1824:
	.byte	'C'
	.ascii	"_temp_1807\0"
	.align
_Label_1825:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1826:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  CLASS Thread  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Thread:
	.word	_Label_1827
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
_Label_1827:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1828
	.word	_sourceFileName
	.word	199		! line number
	.word	4164		! size of instances, in bytes
	.word	_P_Kernel_Thread
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_1828:
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
_Label_4114:
	push	r0
	sub	r1,1,r1
	bne	_Label_4114
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
!   _temp_1829 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_1829) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_1829 = 1000  (sizeInBytes=4)
	mov	1000,r1
	load	[r14+-188],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	505,r13		! source line 505
	mov	"\0\0AS",r10
!   _temp_1830 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-184]
!   Move address of _temp_1830 [0 ] into _temp_1831
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
!   Data Move: *_temp_1831 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-180],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	506,r13		! source line 506
	mov	"\0\0AS",r10
!   _temp_1832 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-176]
!   Move address of _temp_1832 [999 ] into _temp_1833
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
!   Data Move: *_temp_1833 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-172],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	507,r13		! source line 507
	mov	"\0\0AS",r10
!   _temp_1834 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-168]
!   Move address of _temp_1834 [999 ] into _temp_1835
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
!   stackTop = _temp_1835		(4 bytes)
	load	[r14+-164],r1
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	508,r13		! source line 508
	mov	"\0\0AS",r10
!   _temp_1836 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-160]
!   NEW ARRAY Constructor...
!   _temp_1838 = &_temp_1837
	add	r14,-156,r1
	store	r1,[r14+-100]
!   _temp_1838 = _temp_1838 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Next value...
	mov	13,r1
	store	r1,[r14+-96]
_Label_1840:
!   Data Move: *_temp_1838 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-100],r2
	store	r1,[r2]
!   _temp_1838 = _temp_1838 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   _temp_1839 = _temp_1839 + -1
	load	[r14+-96],r1
	add	r1,-1,r1
	store	r1,[r14+-96]
!   if intNotZero (_temp_1839) then goto _Label_1840
	load	[r14+-96],r1
	cmp	r1,r0
	bne	_Label_1840
!   Initialize the array size...
	mov	13,r1
	store	r1,[r14+-156]
!   _temp_1841 = &_temp_1837
	add	r14,-156,r1
	store	r1,[r14+-92]
!   make sure array has size 13
	load	[r14+-160],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,0
	be	_Label_4115
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4115:
!   make sure array has size 13
	load	[r14+-92],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1836 = *_temp_1841  (sizeInBytes=56)
	load	[r14+-92],r5
	load	[r14+-160],r4
	mov	14,r3
_Label_4116:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4116
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
!   _temp_1842 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-88]
!   NEW ARRAY Constructor...
!   _temp_1844 = &_temp_1843
	add	r14,-84,r1
	store	r1,[r14+-20]
!   _temp_1844 = _temp_1844 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	15,r1
	store	r1,[r14+-16]
_Label_1846:
!   Data Move: *_temp_1844 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1844 = _temp_1844 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1845 = _temp_1845 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1845) then goto _Label_1846
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1846
!   Initialize the array size...
	mov	15,r1
	store	r1,[r14+-84]
!   _temp_1847 = &_temp_1843
	add	r14,-84,r1
	store	r1,[r14+-12]
!   make sure array has size 15
	load	[r14+-88],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,0
	be	_Label_4117
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4117:
!   make sure array has size 15
	load	[r14+-12],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1842 = *_temp_1847  (sizeInBytes=64)
	load	[r14+-12],r5
	load	[r14+-88],r4
	mov	16,r3
_Label_4118:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4118
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
	.word	_Label_1848
	.word	8		! total size of parameters
	.word	180		! frame size = 180
	.word	_Label_1849
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1850
	.word	12
	.word	4
	.word	_Label_1851
	.word	-12
	.word	4
	.word	_Label_1852
	.word	-16
	.word	4
	.word	_Label_1853
	.word	-20
	.word	4
	.word	_Label_1854
	.word	-84
	.word	64
	.word	_Label_1855
	.word	-88
	.word	4
	.word	_Label_1856
	.word	-92
	.word	4
	.word	_Label_1857
	.word	-96
	.word	4
	.word	_Label_1858
	.word	-100
	.word	4
	.word	_Label_1859
	.word	-156
	.word	56
	.word	_Label_1860
	.word	-160
	.word	4
	.word	_Label_1861
	.word	-164
	.word	4
	.word	_Label_1862
	.word	-168
	.word	4
	.word	_Label_1863
	.word	-172
	.word	4
	.word	_Label_1864
	.word	-176
	.word	4
	.word	_Label_1865
	.word	-180
	.word	4
	.word	_Label_1866
	.word	-184
	.word	4
	.word	_Label_1867
	.word	-188
	.word	4
	.word	0
_Label_1848:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1849:
	.ascii	"Pself\0"
	.align
_Label_1850:
	.byte	'P'
	.ascii	"n\0"
	.align
_Label_1851:
	.byte	'?'
	.ascii	"_temp_1847\0"
	.align
_Label_1852:
	.byte	'?'
	.ascii	"_temp_1845\0"
	.align
_Label_1853:
	.byte	'?'
	.ascii	"_temp_1844\0"
	.align
_Label_1854:
	.byte	'?'
	.ascii	"_temp_1843\0"
	.align
_Label_1855:
	.byte	'?'
	.ascii	"_temp_1842\0"
	.align
_Label_1856:
	.byte	'?'
	.ascii	"_temp_1841\0"
	.align
_Label_1857:
	.byte	'?'
	.ascii	"_temp_1839\0"
	.align
_Label_1858:
	.byte	'?'
	.ascii	"_temp_1838\0"
	.align
_Label_1859:
	.byte	'?'
	.ascii	"_temp_1837\0"
	.align
_Label_1860:
	.byte	'?'
	.ascii	"_temp_1836\0"
	.align
_Label_1861:
	.byte	'?'
	.ascii	"_temp_1835\0"
	.align
_Label_1862:
	.byte	'?'
	.ascii	"_temp_1834\0"
	.align
_Label_1863:
	.byte	'?'
	.ascii	"_temp_1833\0"
	.align
_Label_1864:
	.byte	'?'
	.ascii	"_temp_1832\0"
	.align
_Label_1865:
	.byte	'?'
	.ascii	"_temp_1831\0"
	.align
_Label_1866:
	.byte	'?'
	.ascii	"_temp_1830\0"
	.align
_Label_1867:
	.byte	'?'
	.ascii	"_temp_1829\0"
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
_Label_4119:
	push	r0
	sub	r1,1,r1
	bne	_Label_4119
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
!   _temp_1868 = ThreadStartUp
	set	ThreadStartUp,r1
	store	r1,[r14+-20]
!   Data Move: *stackTop = _temp_1868  (sizeInBytes=4)
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
!   _temp_1870 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1869  sizeInBytes=4
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
	.word	_Label_1871
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1872
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1873
	.word	12
	.word	4
	.word	_Label_1874
	.word	16
	.word	4
	.word	_Label_1875
	.word	-12
	.word	4
	.word	_Label_1876
	.word	-16
	.word	4
	.word	_Label_1877
	.word	-20
	.word	4
	.word	_Label_1878
	.word	-24
	.word	4
	.word	_Label_1879
	.word	-28
	.word	4
	.word	0
_Label_1871:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Fork\0"
	.align
_Label_1872:
	.ascii	"Pself\0"
	.align
_Label_1873:
	.byte	'P'
	.ascii	"fun\0"
	.align
_Label_1874:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_1875:
	.byte	'?'
	.ascii	"_temp_1870\0"
	.align
_Label_1876:
	.byte	'?'
	.ascii	"_temp_1869\0"
	.align
_Label_1877:
	.byte	'?'
	.ascii	"_temp_1868\0"
	.align
_Label_1878:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1879:
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
_Label_4120:
	push	r0
	sub	r1,1,r1
	bne	_Label_4120
	mov	539,r13		! source line 539
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	555,r13		! source line 555
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if _temp_1882 == _P_Kernel_currentThread then goto _Label_1881		(int)
	load	[r14+-32],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1881
!	jmp	_Label_1880
_Label_1880:
! THEN...
	mov	556,r13		! source line 556
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1883 = _StringConst_52
	set	_StringConst_52,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1883  sizeInBytes=4
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
_Label_1881:
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
!   _temp_1884 = &_P_Kernel_readyList
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
!   if nextTh == 0 then goto _Label_1886		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1886
!	jmp	_Label_1885
_Label_1885:
! THEN...
	mov	567,r13		! source line 567
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	567,r13		! source line 567
	mov	"\0\0IF",r10
!   if status != 4 then goto _Label_1888		(int)
	load	[r14+8],r1
	load	[r1+76],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_1888
!	jmp	_Label_1887
_Label_1887:
! THEN...
	mov	568,r13		! source line 568
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1889 = _StringConst_53
	set	_StringConst_53,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1889  sizeInBytes=4
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
_Label_1888:
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
!   _temp_1891 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1890  sizeInBytes=4
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
_Label_1886:
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
	.word	_Label_1892
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1893
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1894
	.word	-12
	.word	4
	.word	_Label_1895
	.word	-16
	.word	4
	.word	_Label_1896
	.word	-20
	.word	4
	.word	_Label_1897
	.word	-24
	.word	4
	.word	_Label_1898
	.word	-28
	.word	4
	.word	_Label_1899
	.word	-32
	.word	4
	.word	_Label_1900
	.word	-36
	.word	4
	.word	_Label_1901
	.word	-40
	.word	4
	.word	_Label_1902
	.word	-44
	.word	4
	.word	0
_Label_1892:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Yield\0"
	.align
_Label_1893:
	.ascii	"Pself\0"
	.align
_Label_1894:
	.byte	'?'
	.ascii	"_temp_1891\0"
	.align
_Label_1895:
	.byte	'?'
	.ascii	"_temp_1890\0"
	.align
_Label_1896:
	.byte	'?'
	.ascii	"_temp_1889\0"
	.align
_Label_1897:
	.byte	'?'
	.ascii	"_temp_1884\0"
	.align
_Label_1898:
	.byte	'?'
	.ascii	"_temp_1883\0"
	.align
_Label_1899:
	.byte	'?'
	.ascii	"_temp_1882\0"
	.align
_Label_1900:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
_Label_1901:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1902:
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
_Label_4121:
	push	r0
	sub	r1,1,r1
	bne	_Label_4121
	mov	579,r13		! source line 579
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	591,r13		! source line 591
	mov	"\0\0IF",r10
!   if _P_Kernel_currentInterruptStatus == 2 then goto _Label_1904		(int)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_1904
!	jmp	_Label_1903
_Label_1903:
! THEN...
	mov	592,r13		! source line 592
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1905 = _StringConst_54
	set	_StringConst_54,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1905  sizeInBytes=4
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
_Label_1904:
! IF STATEMENT...
	mov	595,r13		! source line 595
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if _temp_1908 == _P_Kernel_currentThread then goto _Label_1907		(int)
	load	[r14+-24],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1907
!	jmp	_Label_1906
_Label_1906:
! THEN...
	mov	596,r13		! source line 596
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1909 = _StringConst_55
	set	_StringConst_55,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1909  sizeInBytes=4
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
_Label_1907:
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
!   _temp_1910 = &_P_Kernel_readyList
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
!   if intIsZero (nextTh) then goto _Label_1911
	load	[r14+-32],r1
	cmp	r1,r0
	be	_Label_1911
	jmp	_Label_1912
_Label_1911:
! THEN...
	mov	604,r13		! source line 604
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1913 = _StringConst_56
	set	_StringConst_56,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1913  sizeInBytes=4
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
_Label_1912:
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
	.word	_Label_1914
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1915
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1916
	.word	-12
	.word	4
	.word	_Label_1917
	.word	-16
	.word	4
	.word	_Label_1918
	.word	-20
	.word	4
	.word	_Label_1919
	.word	-24
	.word	4
	.word	_Label_1920
	.word	-28
	.word	4
	.word	_Label_1921
	.word	-32
	.word	4
	.word	0
_Label_1914:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Sleep\0"
	.align
_Label_1915:
	.ascii	"Pself\0"
	.align
_Label_1916:
	.byte	'?'
	.ascii	"_temp_1913\0"
	.align
_Label_1917:
	.byte	'?'
	.ascii	"_temp_1910\0"
	.align
_Label_1918:
	.byte	'?'
	.ascii	"_temp_1909\0"
	.align
_Label_1919:
	.byte	'?'
	.ascii	"_temp_1908\0"
	.align
_Label_1920:
	.byte	'?'
	.ascii	"_temp_1905\0"
	.align
_Label_1921:
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
_Label_4122:
	push	r0
	sub	r1,1,r1
	bne	_Label_4122
	mov	611,r13		! source line 611
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	617,r13		! source line 617
	mov	"\0\0IF",r10
!   _temp_1925 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-36]
!   Move address of _temp_1925 [0 ] into _temp_1926
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
!   Data Move: _temp_1924 = *_temp_1926  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if _temp_1924 == 606348324 then goto _Label_1923		(int)
	load	[r14+-40],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1923
!	jmp	_Label_1922
_Label_1922:
! THEN...
	mov	618,r13		! source line 618
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1927 = _StringConst_57
	set	_StringConst_57,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1927  sizeInBytes=4
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
	jmp	_Label_1928
_Label_1923:
! ELSE...
	mov	619,r13		! source line 619
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	619,r13		! source line 619
	mov	"\0\0IF",r10
!   _temp_1932 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_1932 [999 ] into _temp_1933
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
!   Data Move: _temp_1931 = *_temp_1933  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_1931 == 606348324 then goto _Label_1930		(int)
	load	[r14+-24],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1930
!	jmp	_Label_1929
_Label_1929:
! THEN...
	mov	620,r13		! source line 620
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1934 = _StringConst_58
	set	_StringConst_58,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1934  sizeInBytes=4
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
_Label_1930:
! END IF...
_Label_1928:
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
	.word	_Label_1935
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1936
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1937
	.word	-12
	.word	4
	.word	_Label_1938
	.word	-16
	.word	4
	.word	_Label_1939
	.word	-20
	.word	4
	.word	_Label_1940
	.word	-24
	.word	4
	.word	_Label_1941
	.word	-28
	.word	4
	.word	_Label_1942
	.word	-32
	.word	4
	.word	_Label_1943
	.word	-36
	.word	4
	.word	_Label_1944
	.word	-40
	.word	4
	.word	0
_Label_1935:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"CheckOverflow\0"
	.align
_Label_1936:
	.ascii	"Pself\0"
	.align
_Label_1937:
	.byte	'?'
	.ascii	"_temp_1934\0"
	.align
_Label_1938:
	.byte	'?'
	.ascii	"_temp_1933\0"
	.align
_Label_1939:
	.byte	'?'
	.ascii	"_temp_1932\0"
	.align
_Label_1940:
	.byte	'?'
	.ascii	"_temp_1931\0"
	.align
_Label_1941:
	.byte	'?'
	.ascii	"_temp_1927\0"
	.align
_Label_1942:
	.byte	'?'
	.ascii	"_temp_1926\0"
	.align
_Label_1943:
	.byte	'?'
	.ascii	"_temp_1925\0"
	.align
_Label_1944:
	.byte	'?'
	.ascii	"_temp_1924\0"
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
_Label_4123:
	push	r0
	sub	r1,1,r1
	bne	_Label_4123
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
!   _temp_1945 = _StringConst_59
	set	_StringConst_59,r1
	store	r1,[r14+-188]
!   Prepare Argument: offset=8  value=_temp_1945  sizeInBytes=4
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
!   _temp_1946 = _StringConst_60
	set	_StringConst_60,r1
	store	r1,[r14+-184]
!   Prepare Argument: offset=8  value=_temp_1946  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Call the function
	mov	635,r13		! source line 635
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_1947  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Call the function
	mov	636,r13		! source line 636
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1948 = _StringConst_61
	set	_StringConst_61,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=8  value=_temp_1948  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Call the function
	mov	637,r13		! source line 637
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1949 = _StringConst_62
	set	_StringConst_62,r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=8  value=_temp_1949  sizeInBytes=4
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
!   _temp_1954 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-168]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1955 = 12		(4 bytes)
	mov	12,r1
	store	r1,[r14+-164]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1954  (sizeInBytes=4)
	load	[r14+-168],r1
	store	r1,[r14+-192]
_Label_1950:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1955 then goto _Label_1953		
	load	[r14+-192],r1
	load	[r14+-164],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1953
_Label_1951:
	mov	639,r13		! source line 639
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1956 = _StringConst_63
	set	_StringConst_63,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1956  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	640,r13		! source line 640
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1957 = i + 2		(int)
	load	[r14+-192],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_1957  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	641,r13		! source line 641
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1958 = _StringConst_64
	set	_StringConst_64,r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=8  value=_temp_1958  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Call the function
	mov	642,r13		! source line 642
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1960 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-144]
!   Move address of _temp_1960 [i ] into _temp_1961
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
!   Data Move: _temp_1959 = *_temp_1961  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1959  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	643,r13		! source line 643
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1962 = _StringConst_65
	set	_StringConst_65,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_1962  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	644,r13		! source line 644
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1964 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-128]
!   Move address of _temp_1964 [i ] into _temp_1965
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
!   Data Move: _temp_1963 = *_temp_1965  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1963  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	645,r13		! source line 645
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1966 = _StringConst_66
	set	_StringConst_66,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_1966  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	646,r13		! source line 646
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1952:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1950
! END FOR
_Label_1953:
! CALL STATEMENT...
!   _temp_1967 = _StringConst_67
	set	_StringConst_67,r1
	store	r1,[r14+-116]
!   _temp_1968 = stackTop		(4 bytes)
	load	[r14+8],r1
	load	[r1+68],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1967  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1968  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Call the function
	mov	648,r13		! source line 648
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_1969 = _StringConst_68
	set	_StringConst_68,r1
	store	r1,[r14+-108]
!   _temp_1971 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-100]
!   Move address of _temp_1971 [0 ] into _temp_1972
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
!   _temp_1970 = _temp_1972		(4 bytes)
	load	[r14+-96],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1969  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1970  sizeInBytes=4
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
	be	_Label_1975
	cmp	r1,2
	be	_Label_1976
	cmp	r1,3
	be	_Label_1977
	cmp	r1,4
	be	_Label_1978
	cmp	r1,5
	be	_Label_1979
	jmp	_Label_1973
! CASE 1...
_Label_1975:
! CALL STATEMENT...
!   _temp_1980 = _StringConst_69
	set	_StringConst_69,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_1980  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	652,r13		! source line 652
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	653,r13		! source line 653
	mov	"\0\0BR",r10
	jmp	_Label_1974
! CASE 2...
_Label_1976:
! CALL STATEMENT...
!   _temp_1981 = _StringConst_70
	set	_StringConst_70,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_1981  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	655,r13		! source line 655
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	656,r13		! source line 656
	mov	"\0\0BR",r10
	jmp	_Label_1974
! CASE 3...
_Label_1977:
! CALL STATEMENT...
!   _temp_1982 = _StringConst_71
	set	_StringConst_71,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1982  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	658,r13		! source line 658
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	659,r13		! source line 659
	mov	"\0\0BR",r10
	jmp	_Label_1974
! CASE 4...
_Label_1978:
! CALL STATEMENT...
!   _temp_1983 = _StringConst_72
	set	_StringConst_72,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_1983  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	661,r13		! source line 661
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	662,r13		! source line 662
	mov	"\0\0BR",r10
	jmp	_Label_1974
! CASE 5...
_Label_1979:
! CALL STATEMENT...
!   _temp_1984 = _StringConst_73
	set	_StringConst_73,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1984  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	664,r13		! source line 664
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	665,r13		! source line 665
	mov	"\0\0BR",r10
	jmp	_Label_1974
! DEFAULT CASE...
_Label_1973:
! CALL STATEMENT...
!   _temp_1985 = _StringConst_74
	set	_StringConst_74,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1985  sizeInBytes=4
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
_Label_1974:
! CALL STATEMENT...
!   _temp_1986 = _StringConst_75
	set	_StringConst_75,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_1986  sizeInBytes=4
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
!   _temp_1987 = _StringConst_76
	set	_StringConst_76,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1987  sizeInBytes=4
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
!   _temp_1992 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1993 = 14		(4 bytes)
	mov	14,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1992  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+-192]
_Label_1988:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1993 then goto _Label_1991		
	load	[r14+-192],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1991
_Label_1989:
	mov	673,r13		! source line 673
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1994 = _StringConst_77
	set	_StringConst_77,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1994  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	674,r13		! source line 674
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1995 = i + 1		(int)
	load	[r14+-192],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1995  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	675,r13		! source line 675
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1996 = _StringConst_78
	set	_StringConst_78,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1996  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	676,r13		! source line 676
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1998 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_1998 [i ] into _temp_1999
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
!   Data Move: _temp_1997 = *_temp_1999  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1997  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	677,r13		! source line 677
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2000 = _StringConst_79
	set	_StringConst_79,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2000  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	678,r13		! source line 678
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2002 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-20]
!   Move address of _temp_2002 [i ] into _temp_2003
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
!   Data Move: _temp_2001 = *_temp_2003  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2001  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	679,r13		! source line 679
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2004 = _StringConst_80
	set	_StringConst_80,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2004  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	680,r13		! source line 680
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1990:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1988
! END FOR
_Label_1991:
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
	.word	_Label_2005
	.word	4		! total size of parameters
	.word	196		! frame size = 196
	.word	_Label_2006
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2007
	.word	-12
	.word	4
	.word	_Label_2008
	.word	-16
	.word	4
	.word	_Label_2009
	.word	-20
	.word	4
	.word	_Label_2010
	.word	-24
	.word	4
	.word	_Label_2011
	.word	-28
	.word	4
	.word	_Label_2012
	.word	-32
	.word	4
	.word	_Label_2013
	.word	-36
	.word	4
	.word	_Label_2014
	.word	-40
	.word	4
	.word	_Label_2015
	.word	-44
	.word	4
	.word	_Label_2016
	.word	-48
	.word	4
	.word	_Label_2017
	.word	-52
	.word	4
	.word	_Label_2018
	.word	-56
	.word	4
	.word	_Label_2019
	.word	-60
	.word	4
	.word	_Label_2020
	.word	-64
	.word	4
	.word	_Label_2021
	.word	-68
	.word	4
	.word	_Label_2022
	.word	-72
	.word	4
	.word	_Label_2023
	.word	-76
	.word	4
	.word	_Label_2024
	.word	-80
	.word	4
	.word	_Label_2025
	.word	-84
	.word	4
	.word	_Label_2026
	.word	-88
	.word	4
	.word	_Label_2027
	.word	-92
	.word	4
	.word	_Label_2028
	.word	-96
	.word	4
	.word	_Label_2029
	.word	-100
	.word	4
	.word	_Label_2030
	.word	-104
	.word	4
	.word	_Label_2031
	.word	-108
	.word	4
	.word	_Label_2032
	.word	-112
	.word	4
	.word	_Label_2033
	.word	-116
	.word	4
	.word	_Label_2034
	.word	-120
	.word	4
	.word	_Label_2035
	.word	-124
	.word	4
	.word	_Label_2036
	.word	-128
	.word	4
	.word	_Label_2037
	.word	-132
	.word	4
	.word	_Label_2038
	.word	-136
	.word	4
	.word	_Label_2039
	.word	-140
	.word	4
	.word	_Label_2040
	.word	-144
	.word	4
	.word	_Label_2041
	.word	-148
	.word	4
	.word	_Label_2042
	.word	-152
	.word	4
	.word	_Label_2043
	.word	-156
	.word	4
	.word	_Label_2044
	.word	-160
	.word	4
	.word	_Label_2045
	.word	-164
	.word	4
	.word	_Label_2046
	.word	-168
	.word	4
	.word	_Label_2047
	.word	-172
	.word	4
	.word	_Label_2048
	.word	-176
	.word	4
	.word	_Label_2049
	.word	-180
	.word	4
	.word	_Label_2050
	.word	-184
	.word	4
	.word	_Label_2051
	.word	-188
	.word	4
	.word	_Label_2052
	.word	-192
	.word	4
	.word	_Label_2053
	.word	-196
	.word	4
	.word	0
_Label_2005:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2006:
	.ascii	"Pself\0"
	.align
_Label_2007:
	.byte	'?'
	.ascii	"_temp_2004\0"
	.align
_Label_2008:
	.byte	'?'
	.ascii	"_temp_2003\0"
	.align
_Label_2009:
	.byte	'?'
	.ascii	"_temp_2002\0"
	.align
_Label_2010:
	.byte	'?'
	.ascii	"_temp_2001\0"
	.align
_Label_2011:
	.byte	'?'
	.ascii	"_temp_2000\0"
	.align
_Label_2012:
	.byte	'?'
	.ascii	"_temp_1999\0"
	.align
_Label_2013:
	.byte	'?'
	.ascii	"_temp_1998\0"
	.align
_Label_2014:
	.byte	'?'
	.ascii	"_temp_1997\0"
	.align
_Label_2015:
	.byte	'?'
	.ascii	"_temp_1996\0"
	.align
_Label_2016:
	.byte	'?'
	.ascii	"_temp_1995\0"
	.align
_Label_2017:
	.byte	'?'
	.ascii	"_temp_1994\0"
	.align
_Label_2018:
	.byte	'?'
	.ascii	"_temp_1993\0"
	.align
_Label_2019:
	.byte	'?'
	.ascii	"_temp_1992\0"
	.align
_Label_2020:
	.byte	'?'
	.ascii	"_temp_1987\0"
	.align
_Label_2021:
	.byte	'?'
	.ascii	"_temp_1986\0"
	.align
_Label_2022:
	.byte	'?'
	.ascii	"_temp_1985\0"
	.align
_Label_2023:
	.byte	'?'
	.ascii	"_temp_1984\0"
	.align
_Label_2024:
	.byte	'?'
	.ascii	"_temp_1983\0"
	.align
_Label_2025:
	.byte	'?'
	.ascii	"_temp_1982\0"
	.align
_Label_2026:
	.byte	'?'
	.ascii	"_temp_1981\0"
	.align
_Label_2027:
	.byte	'?'
	.ascii	"_temp_1980\0"
	.align
_Label_2028:
	.byte	'?'
	.ascii	"_temp_1972\0"
	.align
_Label_2029:
	.byte	'?'
	.ascii	"_temp_1971\0"
	.align
_Label_2030:
	.byte	'?'
	.ascii	"_temp_1970\0"
	.align
_Label_2031:
	.byte	'?'
	.ascii	"_temp_1969\0"
	.align
_Label_2032:
	.byte	'?'
	.ascii	"_temp_1968\0"
	.align
_Label_2033:
	.byte	'?'
	.ascii	"_temp_1967\0"
	.align
_Label_2034:
	.byte	'?'
	.ascii	"_temp_1966\0"
	.align
_Label_2035:
	.byte	'?'
	.ascii	"_temp_1965\0"
	.align
_Label_2036:
	.byte	'?'
	.ascii	"_temp_1964\0"
	.align
_Label_2037:
	.byte	'?'
	.ascii	"_temp_1963\0"
	.align
_Label_2038:
	.byte	'?'
	.ascii	"_temp_1962\0"
	.align
_Label_2039:
	.byte	'?'
	.ascii	"_temp_1961\0"
	.align
_Label_2040:
	.byte	'?'
	.ascii	"_temp_1960\0"
	.align
_Label_2041:
	.byte	'?'
	.ascii	"_temp_1959\0"
	.align
_Label_2042:
	.byte	'?'
	.ascii	"_temp_1958\0"
	.align
_Label_2043:
	.byte	'?'
	.ascii	"_temp_1957\0"
	.align
_Label_2044:
	.byte	'?'
	.ascii	"_temp_1956\0"
	.align
_Label_2045:
	.byte	'?'
	.ascii	"_temp_1955\0"
	.align
_Label_2046:
	.byte	'?'
	.ascii	"_temp_1954\0"
	.align
_Label_2047:
	.byte	'?'
	.ascii	"_temp_1949\0"
	.align
_Label_2048:
	.byte	'?'
	.ascii	"_temp_1948\0"
	.align
_Label_2049:
	.byte	'?'
	.ascii	"_temp_1947\0"
	.align
_Label_2050:
	.byte	'?'
	.ascii	"_temp_1946\0"
	.align
_Label_2051:
	.byte	'?'
	.ascii	"_temp_1945\0"
	.align
_Label_2052:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2053:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  CLASS ThreadManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ThreadManager:
	.word	_Label_2054
	jmp	_Method_P_Kernel_ThreadManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ThreadManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ThreadManager_3	! 12:	GetANewThread
	jmp	_Method_P_Kernel_ThreadManager_4	! 16:	FreeThread
	.word	0
! 
! Class descriptor:
! 
_Label_2054:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2055
	.word	_sourceFileName
	.word	226		! line number
	.word	41696		! size of instances, in bytes
	.word	_P_Kernel_ThreadManager
	.word	_P_System_Object
	.word	0
_Label_2055:
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
_Label_4124:
	push	r0
	sub	r1,1,r1
	bne	_Label_4124
	mov	737,r13		! source line 737
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	743,r13		! source line 743
	mov	"\0\0AS",r10
!   _temp_2056 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	set	-45904,r2
	store	r1,[r14+r2]
!   NEW ARRAY Constructor...
!   _temp_2058 = &_temp_2057
	set	-45900,r1
	add	r14,r1,r1
	store	r1,[r14+-4256]
!   _temp_2058 = _temp_2058 + 4
	load	[r14+-4256],r1
	add	r1,4,r1
	store	r1,[r14+-4256]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2060 = zeros  (sizeInBytes=4164)
	add	r14,-4248,r4
	mov	1041,r3
_Label_4125:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4125
!   _temp_2060 = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	store	r1,[r14+-4248]
	mov	10,r1
	store	r1,[r14+-4252]
_Label_2062:
!   Data Move: *_temp_2058 = _temp_2060  (sizeInBytes=4164)
	add	r14,-4248,r5
	load	[r14+-4256],r4
	mov	1041,r3
_Label_4126:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4126
!   _temp_2058 = _temp_2058 + 4164
	load	[r14+-4256],r1
	add	r1,4164,r1
	store	r1,[r14+-4256]
!   _temp_2059 = _temp_2059 + -1
	load	[r14+-4252],r1
	add	r1,-1,r1
	store	r1,[r14+-4252]
!   if intNotZero (_temp_2059) then goto _Label_2062
	load	[r14+-4252],r1
	cmp	r1,r0
	bne	_Label_2062
!   Initialize the array size...
	mov	10,r1
	set	-45900,r2
	store	r1,[r14+r2]
!   _temp_2063 = &_temp_2057
	set	-45900,r1
	add	r14,r1,r1
	store	r1,[r14+-80]
!   make sure array has size 10
	set	-45904,r1
	load	[r14+r1],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_4127
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4127:
!   make sure array has size 10
	load	[r14+-80],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2056 = *_temp_2063  (sizeInBytes=41644)
	load	[r14+-80],r5
	set	-45904,r4
	load	[r14+r4],r4
	mov	10411,r3
_Label_4128:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4128
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
!   _temp_2071 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2072 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2071  (sizeInBytes=4)
	load	[r14+-64],r1
	set	-45908,r2
	store	r1,[r14+r2]
_Label_2067:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2072 then goto _Label_2070		
	set	-45908,r1
	load	[r14+r1],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2070
_Label_2068:
	mov	747,r13		! source line 747
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	748,r13		! source line 748
	mov	"\0\0SE",r10
!   _temp_2073 = _StringConst_81
	set	_StringConst_81,r1
	store	r1,[r14+-56]
!   _temp_2074 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   Move address of _temp_2074 [i ] into _temp_2075
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
!   Prepare Argument: offset=12  value=_temp_2073  sizeInBytes=4
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
!   _temp_2076 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_2076 [i ] into _temp_2077
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
!   _temp_2078 = _temp_2077 + 76
	load	[r14+-40],r1
	add	r1,76,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_2078 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-36],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	750,r13		! source line 750
	mov	"\0\0SE",r10
!   _temp_2080 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_2080 [i ] into _temp_2081
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
!   _temp_2079 = _temp_2081		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-32]
!   _temp_2082 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_2079  sizeInBytes=4
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
_Label_2069:
!   i = i + 1
	set	-45908,r1
	load	[r14+r1],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	set	-45908,r2
	store	r1,[r14+r2]
	jmp	_Label_2067
! END FOR
_Label_2070:
! SEND STATEMENT...
	mov	752,r13		! source line 752
	mov	"\0\0SE",r10
!   _temp_2083 = &threadManagerLock
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
!   _temp_2084 = &aThreadIsAvailable
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
	.word	_Label_2085
	.word	4		! total size of parameters
	.word	45908		! frame size = 45908
	.word	_Label_2086
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2087
	.word	-12
	.word	4
	.word	_Label_2088
	.word	-16
	.word	4
	.word	_Label_2089
	.word	-20
	.word	4
	.word	_Label_2090
	.word	-24
	.word	4
	.word	_Label_2091
	.word	-28
	.word	4
	.word	_Label_2092
	.word	-32
	.word	4
	.word	_Label_2093
	.word	-36
	.word	4
	.word	_Label_2094
	.word	-40
	.word	4
	.word	_Label_2095
	.word	-44
	.word	4
	.word	_Label_2096
	.word	-48
	.word	4
	.word	_Label_2097
	.word	-52
	.word	4
	.word	_Label_2098
	.word	-56
	.word	4
	.word	_Label_2099
	.word	-60
	.word	4
	.word	_Label_2100
	.word	-64
	.word	4
	.word	_Label_2101
	.word	-68
	.word	4
	.word	_Label_2102
	.word	-72
	.word	4
	.word	_Label_2103
	.word	-76
	.word	4
	.word	_Label_2104
	.word	-80
	.word	4
	.word	_Label_2105
	.word	-84
	.word	4
	.word	_Label_2106
	.word	-4248
	.word	4164
	.word	_Label_2107
	.word	-4252
	.word	4
	.word	_Label_2108
	.word	-4256
	.word	4
	.word	_Label_2109
	.word	-45900
	.word	41644
	.word	_Label_2110
	.word	-45904
	.word	4
	.word	_Label_2111
	.word	-45908
	.word	4
	.word	0
_Label_2085:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2086:
	.ascii	"Pself\0"
	.align
_Label_2087:
	.byte	'?'
	.ascii	"_temp_2084\0"
	.align
_Label_2088:
	.byte	'?'
	.ascii	"_temp_2083\0"
	.align
_Label_2089:
	.byte	'?'
	.ascii	"_temp_2082\0"
	.align
_Label_2090:
	.byte	'?'
	.ascii	"_temp_2081\0"
	.align
_Label_2091:
	.byte	'?'
	.ascii	"_temp_2080\0"
	.align
_Label_2092:
	.byte	'?'
	.ascii	"_temp_2079\0"
	.align
_Label_2093:
	.byte	'?'
	.ascii	"_temp_2078\0"
	.align
_Label_2094:
	.byte	'?'
	.ascii	"_temp_2077\0"
	.align
_Label_2095:
	.byte	'?'
	.ascii	"_temp_2076\0"
	.align
_Label_2096:
	.byte	'?'
	.ascii	"_temp_2075\0"
	.align
_Label_2097:
	.byte	'?'
	.ascii	"_temp_2074\0"
	.align
_Label_2098:
	.byte	'?'
	.ascii	"_temp_2073\0"
	.align
_Label_2099:
	.byte	'?'
	.ascii	"_temp_2072\0"
	.align
_Label_2100:
	.byte	'?'
	.ascii	"_temp_2071\0"
	.align
_Label_2101:
	.byte	'?'
	.ascii	"_temp_2066\0"
	.align
_Label_2102:
	.byte	'?'
	.ascii	"_temp_2065\0"
	.align
_Label_2103:
	.byte	'?'
	.ascii	"_temp_2064\0"
	.align
_Label_2104:
	.byte	'?'
	.ascii	"_temp_2063\0"
	.align
_Label_2105:
	.byte	'?'
	.ascii	"_temp_2061\0"
	.align
_Label_2106:
	.byte	'?'
	.ascii	"_temp_2060\0"
	.align
_Label_2107:
	.byte	'?'
	.ascii	"_temp_2059\0"
	.align
_Label_2108:
	.byte	'?'
	.ascii	"_temp_2058\0"
	.align
_Label_2109:
	.byte	'?'
	.ascii	"_temp_2057\0"
	.align
_Label_2110:
	.byte	'?'
	.ascii	"_temp_2056\0"
	.align
_Label_2111:
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
_Label_4129:
	push	r0
	sub	r1,1,r1
	bne	_Label_4129
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
!   _temp_2112 = _StringConst_82
	set	_StringConst_82,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_2112  sizeInBytes=4
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
!   _temp_2117 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2118 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2117  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-56]
_Label_2113:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2118 then goto _Label_2116		
	load	[r14+-56],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2116
_Label_2114:
	mov	767,r13		! source line 767
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2119 = _StringConst_83
	set	_StringConst_83,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_2119  sizeInBytes=4
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
!   _temp_2120 = _StringConst_84
	set	_StringConst_84,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2120  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	770,r13		! source line 770
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2122 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_2122 [i ] into _temp_2123
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
!   _temp_2121 = _temp_2123		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2121  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	771,r13		! source line 771
	mov	"\0\0CA",r10
	call	_function_189_ThreadPrintShort
!   Increment the FOR-LOOP index variable and jump back
_Label_2115:
!   i = i + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_2113
! END FOR
_Label_2116:
! CALL STATEMENT...
!   _temp_2124 = _StringConst_85
	set	_StringConst_85,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2124  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	773,r13		! source line 773
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	774,r13		! source line 774
	mov	"\0\0SE",r10
!   _temp_2125 = _function_188_PrintObjectAddr
	set	_function_188_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_2126 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2125  sizeInBytes=4
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
	.word	_Label_2127
	.word	4		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_2128
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2129
	.word	-12
	.word	4
	.word	_Label_2130
	.word	-16
	.word	4
	.word	_Label_2131
	.word	-20
	.word	4
	.word	_Label_2132
	.word	-24
	.word	4
	.word	_Label_2133
	.word	-28
	.word	4
	.word	_Label_2134
	.word	-32
	.word	4
	.word	_Label_2135
	.word	-36
	.word	4
	.word	_Label_2136
	.word	-40
	.word	4
	.word	_Label_2137
	.word	-44
	.word	4
	.word	_Label_2138
	.word	-48
	.word	4
	.word	_Label_2139
	.word	-52
	.word	4
	.word	_Label_2140
	.word	-56
	.word	4
	.word	_Label_2141
	.word	-60
	.word	4
	.word	0
_Label_2127:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2128:
	.ascii	"Pself\0"
	.align
_Label_2129:
	.byte	'?'
	.ascii	"_temp_2126\0"
	.align
_Label_2130:
	.byte	'?'
	.ascii	"_temp_2125\0"
	.align
_Label_2131:
	.byte	'?'
	.ascii	"_temp_2124\0"
	.align
_Label_2132:
	.byte	'?'
	.ascii	"_temp_2123\0"
	.align
_Label_2133:
	.byte	'?'
	.ascii	"_temp_2122\0"
	.align
_Label_2134:
	.byte	'?'
	.ascii	"_temp_2121\0"
	.align
_Label_2135:
	.byte	'?'
	.ascii	"_temp_2120\0"
	.align
_Label_2136:
	.byte	'?'
	.ascii	"_temp_2119\0"
	.align
_Label_2137:
	.byte	'?'
	.ascii	"_temp_2118\0"
	.align
_Label_2138:
	.byte	'?'
	.ascii	"_temp_2117\0"
	.align
_Label_2139:
	.byte	'?'
	.ascii	"_temp_2112\0"
	.align
_Label_2140:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2141:
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
_Label_4130:
	push	r0
	sub	r1,1,r1
	bne	_Label_4130
	mov	781,r13		! source line 781
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	787,r13		! source line 787
	mov	"\0\0SE",r10
!   _temp_2142 = &threadManagerLock
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
_Label_2143:
	mov	788,r13		! source line 788
	mov	"\0\0SE",r10
!   _temp_2146 = &freeList
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
!   if result==true then goto _Label_2144 else goto _Label_2145
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2145
	jmp	_Label_2144
_Label_2144:
	mov	788,r13		! source line 788
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	789,r13		! source line 789
	mov	"\0\0SE",r10
!   _temp_2147 = &threadManagerLock
	set	41676,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-28]
!   _temp_2148 = &aThreadIsAvailable
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_2147  sizeInBytes=4
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
	jmp	_Label_2143
_Label_2145:
! ASSIGNMENT STATEMENT...
	mov	791,r13		! source line 791
	mov	"\0\0AS",r10
	mov	791,r13		! source line 791
	mov	"\0\0SE",r10
!   _temp_2149 = &freeList
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
!   _temp_2150 = availableThreadPtr + 76
	load	[r14+-40],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2150 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	793,r13		! source line 793
	mov	"\0\0SE",r10
!   _temp_2151 = &threadManagerLock
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
	.word	_Label_2152
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_2153
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2154
	.word	-12
	.word	4
	.word	_Label_2155
	.word	-16
	.word	4
	.word	_Label_2156
	.word	-20
	.word	4
	.word	_Label_2157
	.word	-24
	.word	4
	.word	_Label_2158
	.word	-28
	.word	4
	.word	_Label_2159
	.word	-32
	.word	4
	.word	_Label_2160
	.word	-36
	.word	4
	.word	_Label_2161
	.word	-40
	.word	4
	.word	0
_Label_2152:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"GetANewThread\0"
	.align
_Label_2153:
	.ascii	"Pself\0"
	.align
_Label_2154:
	.byte	'?'
	.ascii	"_temp_2151\0"
	.align
_Label_2155:
	.byte	'?'
	.ascii	"_temp_2150\0"
	.align
_Label_2156:
	.byte	'?'
	.ascii	"_temp_2149\0"
	.align
_Label_2157:
	.byte	'?'
	.ascii	"_temp_2148\0"
	.align
_Label_2158:
	.byte	'?'
	.ascii	"_temp_2147\0"
	.align
_Label_2159:
	.byte	'?'
	.ascii	"_temp_2146\0"
	.align
_Label_2160:
	.byte	'?'
	.ascii	"_temp_2142\0"
	.align
_Label_2161:
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
_Label_4131:
	push	r0
	sub	r1,1,r1
	bne	_Label_4131
	mov	799,r13		! source line 799
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	803,r13		! source line 803
	mov	"\0\0SE",r10
!   _temp_2162 = &threadManagerLock
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
!   _temp_2163 = th + 76
	load	[r14+12],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2163 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	805,r13		! source line 805
	mov	"\0\0SE",r10
!   _temp_2164 = &freeList
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
!   _temp_2165 = &threadManagerLock
	set	41676,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-20]
!   _temp_2166 = &aThreadIsAvailable
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2165  sizeInBytes=4
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
!   _temp_2167 = &threadManagerLock
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
	.word	_Label_2168
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_2169
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2170
	.word	12
	.word	4
	.word	_Label_2171
	.word	-12
	.word	4
	.word	_Label_2172
	.word	-16
	.word	4
	.word	_Label_2173
	.word	-20
	.word	4
	.word	_Label_2174
	.word	-24
	.word	4
	.word	_Label_2175
	.word	-28
	.word	4
	.word	_Label_2176
	.word	-32
	.word	4
	.word	0
_Label_2168:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"FreeThread\0"
	.align
_Label_2169:
	.ascii	"Pself\0"
	.align
_Label_2170:
	.byte	'P'
	.ascii	"th\0"
	.align
_Label_2171:
	.byte	'?'
	.ascii	"_temp_2167\0"
	.align
_Label_2172:
	.byte	'?'
	.ascii	"_temp_2166\0"
	.align
_Label_2173:
	.byte	'?'
	.ascii	"_temp_2165\0"
	.align
_Label_2174:
	.byte	'?'
	.ascii	"_temp_2164\0"
	.align
_Label_2175:
	.byte	'?'
	.ascii	"_temp_2163\0"
	.align
_Label_2176:
	.byte	'?'
	.ascii	"_temp_2162\0"
	.align
! 
! ===============  CLASS ProcessControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessControlBlock:
	.word	_Label_2177
	jmp	_Method_P_Kernel_ProcessControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessControlBlock_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessControlBlock_3	! 12:	PrintShort
	.word	0
! 
! Class descriptor:
! 
_Label_2177:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2178
	.word	_sourceFileName
	.word	247		! line number
	.word	168		! size of instances, in bytes
	.word	_P_Kernel_ProcessControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_2178:
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
_Label_4132:
	push	r0
	sub	r1,1,r1
	bne	_Label_4132
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
_Label_4133:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4133
!   addrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! SEND STATEMENT...
	mov	824,r13		! source line 824
	mov	"\0\0SE",r10
!   _temp_2180 = &addrSpace
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
!   _temp_2181 = &fileDescriptor
	load	[r14+8],r1
	add	r1,124,r1
	store	r1,[r14+-68]
!   NEW ARRAY Constructor...
!   _temp_2183 = &_temp_2182
	add	r14,-64,r1
	store	r1,[r14+-20]
!   _temp_2183 = _temp_2183 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	10,r1
	store	r1,[r14+-16]
_Label_2185:
!   Data Move: *_temp_2183 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_2183 = _temp_2183 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_2184 = _temp_2184 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_2184) then goto _Label_2185
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_2185
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-64]
!   _temp_2186 = &_temp_2182
	add	r14,-64,r1
	store	r1,[r14+-12]
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_4134
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4134:
!   make sure array has size 10
	load	[r14+-12],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2181 = *_temp_2186  (sizeInBytes=44)
	load	[r14+-12],r5
	load	[r14+-68],r4
	mov	11,r3
_Label_4135:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4135
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
	.word	_Label_2187
	.word	4		! total size of parameters
	.word	72		! frame size = 72
	.word	_Label_2188
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2189
	.word	-12
	.word	4
	.word	_Label_2190
	.word	-16
	.word	4
	.word	_Label_2191
	.word	-20
	.word	4
	.word	_Label_2192
	.word	-64
	.word	44
	.word	_Label_2193
	.word	-68
	.word	4
	.word	_Label_2194
	.word	-72
	.word	4
	.word	_Label_2195
	.word	-76
	.word	4
	.word	0
_Label_2187:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2188:
	.ascii	"Pself\0"
	.align
_Label_2189:
	.byte	'?'
	.ascii	"_temp_2186\0"
	.align
_Label_2190:
	.byte	'?'
	.ascii	"_temp_2184\0"
	.align
_Label_2191:
	.byte	'?'
	.ascii	"_temp_2183\0"
	.align
_Label_2192:
	.byte	'?'
	.ascii	"_temp_2182\0"
	.align
_Label_2193:
	.byte	'?'
	.ascii	"_temp_2181\0"
	.align
_Label_2194:
	.byte	'?'
	.ascii	"_temp_2180\0"
	.align
_Label_2195:
	.byte	'?'
	.ascii	"_temp_2179\0"
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
_Label_4136:
	push	r0
	sub	r1,1,r1
	bne	_Label_4136
	mov	831,r13		! source line 831
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	836,r13		! source line 836
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2196) then goto _runtimeErrorNullPointer
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
!   _temp_2197 = _StringConst_86
	set	_StringConst_86,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2197  sizeInBytes=4
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
	call	_function_189_ThreadPrintShort
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
	.word	_Label_2198
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_2199
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2200
	.word	-12
	.word	4
	.word	_Label_2201
	.word	-16
	.word	4
	.word	0
_Label_2198:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2199:
	.ascii	"Pself\0"
	.align
_Label_2200:
	.byte	'?'
	.ascii	"_temp_2197\0"
	.align
_Label_2201:
	.byte	'?'
	.ascii	"_temp_2196\0"
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
_Label_4137:
	push	r0
	sub	r1,1,r1
	bne	_Label_4137
	mov	855,r13		! source line 855
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2202 = _StringConst_87
	set	_StringConst_87,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2202  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	859,r13		! source line 859
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_2203  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	860,r13		! source line 860
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2204 = _StringConst_88
	set	_StringConst_88,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_2204  sizeInBytes=4
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
!   _temp_2205 = _StringConst_89
	set	_StringConst_89,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2205  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	863,r13		! source line 863
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	864,r13		! source line 864
	mov	"\0\0IF",r10
!   if status != 1 then goto _Label_2207		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_2207
!	jmp	_Label_2206
_Label_2206:
! THEN...
	mov	865,r13		! source line 865
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2208 = _StringConst_90
	set	_StringConst_90,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2208  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	865,r13		! source line 865
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2209
_Label_2207:
! ELSE...
	mov	866,r13		! source line 866
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	866,r13		! source line 866
	mov	"\0\0IF",r10
!   if status != 2 then goto _Label_2211		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_2211
!	jmp	_Label_2210
_Label_2210:
! THEN...
	mov	867,r13		! source line 867
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2212 = _StringConst_91
	set	_StringConst_91,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2212  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	867,r13		! source line 867
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2213
_Label_2211:
! ELSE...
	mov	868,r13		! source line 868
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	868,r13		! source line 868
	mov	"\0\0IF",r10
!   if status != 3 then goto _Label_2215		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_2215
!	jmp	_Label_2214
_Label_2214:
! THEN...
	mov	869,r13		! source line 869
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2216 = _StringConst_92
	set	_StringConst_92,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2216  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	869,r13		! source line 869
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2217
_Label_2215:
! ELSE...
	mov	871,r13		! source line 871
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2218 = _StringConst_93
	set	_StringConst_93,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2218  sizeInBytes=4
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
_Label_2217:
! END IF...
_Label_2213:
! END IF...
_Label_2209:
! CALL STATEMENT...
!   _temp_2219 = _StringConst_94
	set	_StringConst_94,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2219  sizeInBytes=4
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
!   _temp_2220 = _StringConst_95
	set	_StringConst_95,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2220  sizeInBytes=4
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
	.word	_Label_2221
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_2222
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2223
	.word	-12
	.word	4
	.word	_Label_2224
	.word	-16
	.word	4
	.word	_Label_2225
	.word	-20
	.word	4
	.word	_Label_2226
	.word	-24
	.word	4
	.word	_Label_2227
	.word	-28
	.word	4
	.word	_Label_2228
	.word	-32
	.word	4
	.word	_Label_2229
	.word	-36
	.word	4
	.word	_Label_2230
	.word	-40
	.word	4
	.word	_Label_2231
	.word	-44
	.word	4
	.word	_Label_2232
	.word	-48
	.word	4
	.word	0
_Label_2221:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_2222:
	.ascii	"Pself\0"
	.align
_Label_2223:
	.byte	'?'
	.ascii	"_temp_2220\0"
	.align
_Label_2224:
	.byte	'?'
	.ascii	"_temp_2219\0"
	.align
_Label_2225:
	.byte	'?'
	.ascii	"_temp_2218\0"
	.align
_Label_2226:
	.byte	'?'
	.ascii	"_temp_2216\0"
	.align
_Label_2227:
	.byte	'?'
	.ascii	"_temp_2212\0"
	.align
_Label_2228:
	.byte	'?'
	.ascii	"_temp_2208\0"
	.align
_Label_2229:
	.byte	'?'
	.ascii	"_temp_2205\0"
	.align
_Label_2230:
	.byte	'?'
	.ascii	"_temp_2204\0"
	.align
_Label_2231:
	.byte	'?'
	.ascii	"_temp_2203\0"
	.align
_Label_2232:
	.byte	'?'
	.ascii	"_temp_2202\0"
	.align
! 
! ===============  CLASS ProcessManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessManager:
	.word	_Label_2233
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
_Label_2233:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2234
	.word	_sourceFileName
	.word	267		! line number
	.word	1756		! size of instances, in bytes
	.word	_P_Kernel_ProcessManager
	.word	_P_System_Object
	.word	0
_Label_2234:
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
_Label_4138:
	push	r0
	sub	r1,1,r1
	bne	_Label_4138
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
!   _temp_2236 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-1948]
!   NEW ARRAY Constructor...
!   _temp_2238 = &_temp_2237
	add	r14,-1944,r1
	store	r1,[r14+-260]
!   _temp_2238 = _temp_2238 + 4
	load	[r14+-260],r1
	add	r1,4,r1
	store	r1,[r14+-260]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2240 = zeros  (sizeInBytes=168)
	add	r14,-252,r4
	mov	42,r3
_Label_4139:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4139
!   _temp_2240 = _P_Kernel_ProcessControlBlock
	set	_P_Kernel_ProcessControlBlock,r1
	store	r1,[r14+-252]
	mov	10,r1
	store	r1,[r14+-256]
_Label_2242:
!   Data Move: *_temp_2238 = _temp_2240  (sizeInBytes=168)
	add	r14,-252,r5
	load	[r14+-260],r4
	mov	42,r3
_Label_4140:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4140
!   _temp_2238 = _temp_2238 + 168
	load	[r14+-260],r1
	add	r1,168,r1
	store	r1,[r14+-260]
!   _temp_2239 = _temp_2239 + -1
	load	[r14+-256],r1
	add	r1,-1,r1
	store	r1,[r14+-256]
!   if intNotZero (_temp_2239) then goto _Label_2242
	load	[r14+-256],r1
	cmp	r1,r0
	bne	_Label_2242
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-1944]
!   _temp_2243 = &_temp_2237
	add	r14,-1944,r1
	store	r1,[r14+-80]
!   make sure array has size 10
	load	[r14+-1948],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_4141
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4141:
!   make sure array has size 10
	load	[r14+-80],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2236 = *_temp_2243  (sizeInBytes=1684)
	load	[r14+-80],r5
	load	[r14+-1948],r4
	mov	421,r3
_Label_4142:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4142
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
!   _temp_2251 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2252 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2251  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-1956]
_Label_2247:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2252 then goto _Label_2250		
	load	[r14+-1956],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2250
_Label_2248:
	mov	899,r13		! source line 899
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	900,r13		! source line 900
	mov	"\0\0SE",r10
!   _temp_2253 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   Move address of _temp_2253 [i ] into _temp_2254
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
!   _temp_2256 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_2256 [i ] into _temp_2257
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
!   _temp_2255 = _temp_2257		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   _temp_2258 = &freeList
	load	[r14+8],r1
	add	r1,1724,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_2255  sizeInBytes=4
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
!   _temp_2259 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Move address of _temp_2259 [i ] into _temp_2260
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
!   _temp_2261 = _temp_2260 + 20
	load	[r14+-28],r1
	add	r1,20,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2261 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-24],r2
	store	r1,[r2]
!   Increment the FOR-LOOP index variable and jump back
_Label_2249:
!   i = i + 1
	load	[r14+-1956],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-1956]
	jmp	_Label_2247
! END FOR
_Label_2250:
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
!   _temp_2262 = &processManagerLock
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
!   _temp_2263 = &aProcessBecameFree
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
!   _temp_2264 = &aProcessDied
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
	.word	_Label_2265
	.word	4		! total size of parameters
	.word	1956		! frame size = 1956
	.word	_Label_2266
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2267
	.word	-12
	.word	4
	.word	_Label_2268
	.word	-16
	.word	4
	.word	_Label_2269
	.word	-20
	.word	4
	.word	_Label_2270
	.word	-24
	.word	4
	.word	_Label_2271
	.word	-28
	.word	4
	.word	_Label_2272
	.word	-32
	.word	4
	.word	_Label_2273
	.word	-36
	.word	4
	.word	_Label_2274
	.word	-40
	.word	4
	.word	_Label_2275
	.word	-44
	.word	4
	.word	_Label_2276
	.word	-48
	.word	4
	.word	_Label_2277
	.word	-52
	.word	4
	.word	_Label_2278
	.word	-56
	.word	4
	.word	_Label_2279
	.word	-60
	.word	4
	.word	_Label_2280
	.word	-64
	.word	4
	.word	_Label_2281
	.word	-68
	.word	4
	.word	_Label_2282
	.word	-72
	.word	4
	.word	_Label_2283
	.word	-76
	.word	4
	.word	_Label_2284
	.word	-80
	.word	4
	.word	_Label_2285
	.word	-84
	.word	4
	.word	_Label_2286
	.word	-252
	.word	168
	.word	_Label_2287
	.word	-256
	.word	4
	.word	_Label_2288
	.word	-260
	.word	4
	.word	_Label_2289
	.word	-1944
	.word	1684
	.word	_Label_2290
	.word	-1948
	.word	4
	.word	_Label_2291
	.word	-1952
	.word	4
	.word	_Label_2292
	.word	-1956
	.word	4
	.word	0
_Label_2265:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2266:
	.ascii	"Pself\0"
	.align
_Label_2267:
	.byte	'?'
	.ascii	"_temp_2264\0"
	.align
_Label_2268:
	.byte	'?'
	.ascii	"_temp_2263\0"
	.align
_Label_2269:
	.byte	'?'
	.ascii	"_temp_2262\0"
	.align
_Label_2270:
	.byte	'?'
	.ascii	"_temp_2261\0"
	.align
_Label_2271:
	.byte	'?'
	.ascii	"_temp_2260\0"
	.align
_Label_2272:
	.byte	'?'
	.ascii	"_temp_2259\0"
	.align
_Label_2273:
	.byte	'?'
	.ascii	"_temp_2258\0"
	.align
_Label_2274:
	.byte	'?'
	.ascii	"_temp_2257\0"
	.align
_Label_2275:
	.byte	'?'
	.ascii	"_temp_2256\0"
	.align
_Label_2276:
	.byte	'?'
	.ascii	"_temp_2255\0"
	.align
_Label_2277:
	.byte	'?'
	.ascii	"_temp_2254\0"
	.align
_Label_2278:
	.byte	'?'
	.ascii	"_temp_2253\0"
	.align
_Label_2279:
	.byte	'?'
	.ascii	"_temp_2252\0"
	.align
_Label_2280:
	.byte	'?'
	.ascii	"_temp_2251\0"
	.align
_Label_2281:
	.byte	'?'
	.ascii	"_temp_2246\0"
	.align
_Label_2282:
	.byte	'?'
	.ascii	"_temp_2245\0"
	.align
_Label_2283:
	.byte	'?'
	.ascii	"_temp_2244\0"
	.align
_Label_2284:
	.byte	'?'
	.ascii	"_temp_2243\0"
	.align
_Label_2285:
	.byte	'?'
	.ascii	"_temp_2241\0"
	.align
_Label_2286:
	.byte	'?'
	.ascii	"_temp_2240\0"
	.align
_Label_2287:
	.byte	'?'
	.ascii	"_temp_2239\0"
	.align
_Label_2288:
	.byte	'?'
	.ascii	"_temp_2238\0"
	.align
_Label_2289:
	.byte	'?'
	.ascii	"_temp_2237\0"
	.align
_Label_2290:
	.byte	'?'
	.ascii	"_temp_2236\0"
	.align
_Label_2291:
	.byte	'?'
	.ascii	"_temp_2235\0"
	.align
_Label_2292:
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
_Label_4143:
	push	r0
	sub	r1,1,r1
	bne	_Label_4143
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
!   _temp_2293 = _StringConst_96
	set	_StringConst_96,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2293  sizeInBytes=4
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
!   _temp_2298 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2299 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2298  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-52]
_Label_2294:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2299 then goto _Label_2297		
	load	[r14+-52],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2297
_Label_2295:
	mov	921,r13		! source line 921
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2300 = _StringConst_97
	set	_StringConst_97,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2300  sizeInBytes=4
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
!   _temp_2301 = _StringConst_98
	set	_StringConst_98,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2301  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	924,r13		! source line 924
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	925,r13		! source line 925
	mov	"\0\0SE",r10
!   _temp_2302 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_2302 [i ] into _temp_2303
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
_Label_2296:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_2294
! END FOR
_Label_2297:
! CALL STATEMENT...
!   _temp_2304 = _StringConst_99
	set	_StringConst_99,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2304  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	927,r13		! source line 927
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	928,r13		! source line 928
	mov	"\0\0SE",r10
!   _temp_2305 = _function_188_PrintObjectAddr
	set	_function_188_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_2306 = &freeList
	load	[r14+8],r1
	add	r1,1724,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2305  sizeInBytes=4
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
	.word	_Label_2307
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_2308
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2309
	.word	-12
	.word	4
	.word	_Label_2310
	.word	-16
	.word	4
	.word	_Label_2311
	.word	-20
	.word	4
	.word	_Label_2312
	.word	-24
	.word	4
	.word	_Label_2313
	.word	-28
	.word	4
	.word	_Label_2314
	.word	-32
	.word	4
	.word	_Label_2315
	.word	-36
	.word	4
	.word	_Label_2316
	.word	-40
	.word	4
	.word	_Label_2317
	.word	-44
	.word	4
	.word	_Label_2318
	.word	-48
	.word	4
	.word	_Label_2319
	.word	-52
	.word	4
	.word	_Label_2320
	.word	-56
	.word	4
	.word	0
_Label_2307:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2308:
	.ascii	"Pself\0"
	.align
_Label_2309:
	.byte	'?'
	.ascii	"_temp_2306\0"
	.align
_Label_2310:
	.byte	'?'
	.ascii	"_temp_2305\0"
	.align
_Label_2311:
	.byte	'?'
	.ascii	"_temp_2304\0"
	.align
_Label_2312:
	.byte	'?'
	.ascii	"_temp_2303\0"
	.align
_Label_2313:
	.byte	'?'
	.ascii	"_temp_2302\0"
	.align
_Label_2314:
	.byte	'?'
	.ascii	"_temp_2301\0"
	.align
_Label_2315:
	.byte	'?'
	.ascii	"_temp_2300\0"
	.align
_Label_2316:
	.byte	'?'
	.ascii	"_temp_2299\0"
	.align
_Label_2317:
	.byte	'?'
	.ascii	"_temp_2298\0"
	.align
_Label_2318:
	.byte	'?'
	.ascii	"_temp_2293\0"
	.align
_Label_2319:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2320:
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
_Label_4144:
	push	r0
	sub	r1,1,r1
	bne	_Label_4144
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
!   _temp_2321 = _StringConst_100
	set	_StringConst_100,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_2321  sizeInBytes=4
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
!   _temp_2326 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2327 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2326  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-48]
_Label_2322:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2327 then goto _Label_2325		
	load	[r14+-48],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2325
_Label_2323:
	mov	944,r13		! source line 944
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2328 = _StringConst_101
	set	_StringConst_101,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2328  sizeInBytes=4
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
!   _temp_2329 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_2329 [i ] into _temp_2330
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
_Label_2324:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_2322
! END FOR
_Label_2325:
! CALL STATEMENT...
!   _temp_2331 = _StringConst_102
	set	_StringConst_102,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2331  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	949,r13		! source line 949
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	950,r13		! source line 950
	mov	"\0\0SE",r10
!   _temp_2332 = _function_188_PrintObjectAddr
	set	_function_188_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_2333 = &freeList
	load	[r14+8],r1
	add	r1,1724,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2332  sizeInBytes=4
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
	.word	_Label_2334
	.word	4		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2335
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2336
	.word	-12
	.word	4
	.word	_Label_2337
	.word	-16
	.word	4
	.word	_Label_2338
	.word	-20
	.word	4
	.word	_Label_2339
	.word	-24
	.word	4
	.word	_Label_2340
	.word	-28
	.word	4
	.word	_Label_2341
	.word	-32
	.word	4
	.word	_Label_2342
	.word	-36
	.word	4
	.word	_Label_2343
	.word	-40
	.word	4
	.word	_Label_2344
	.word	-44
	.word	4
	.word	_Label_2345
	.word	-48
	.word	4
	.word	_Label_2346
	.word	-52
	.word	4
	.word	0
_Label_2334:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_2335:
	.ascii	"Pself\0"
	.align
_Label_2336:
	.byte	'?'
	.ascii	"_temp_2333\0"
	.align
_Label_2337:
	.byte	'?'
	.ascii	"_temp_2332\0"
	.align
_Label_2338:
	.byte	'?'
	.ascii	"_temp_2331\0"
	.align
_Label_2339:
	.byte	'?'
	.ascii	"_temp_2330\0"
	.align
_Label_2340:
	.byte	'?'
	.ascii	"_temp_2329\0"
	.align
_Label_2341:
	.byte	'?'
	.ascii	"_temp_2328\0"
	.align
_Label_2342:
	.byte	'?'
	.ascii	"_temp_2327\0"
	.align
_Label_2343:
	.byte	'?'
	.ascii	"_temp_2326\0"
	.align
_Label_2344:
	.byte	'?'
	.ascii	"_temp_2321\0"
	.align
_Label_2345:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2346:
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
_Label_4145:
	push	r0
	sub	r1,1,r1
	bne	_Label_4145
	mov	957,r13		! source line 957
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	964,r13		! source line 964
	mov	"\0\0SE",r10
!   _temp_2347 = &processManagerLock
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
_Label_2348:
	mov	965,r13		! source line 965
	mov	"\0\0SE",r10
!   _temp_2351 = &freeList
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
!   if result==true then goto _Label_2349 else goto _Label_2350
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2350
	jmp	_Label_2349
_Label_2349:
	mov	965,r13		! source line 965
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	966,r13		! source line 966
	mov	"\0\0SE",r10
!   _temp_2352 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-32]
!   _temp_2353 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1708,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_2352  sizeInBytes=4
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
	jmp	_Label_2348
_Label_2350:
! ASSIGNMENT STATEMENT...
	mov	968,r13		! source line 968
	mov	"\0\0AS",r10
	mov	968,r13		! source line 968
	mov	"\0\0SE",r10
!   _temp_2354 = &freeList
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
!   _temp_2355 = nextProcessPtr + 12
	load	[r14+-44],r1
	add	r1,12,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2355 = nextPid  (sizeInBytes=4)
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
!   _temp_2356 = nextProcessPtr + 20
	load	[r14+-44],r1
	add	r1,20,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2356 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	972,r13		! source line 972
	mov	"\0\0SE",r10
!   _temp_2357 = &processManagerLock
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
	.word	_Label_2358
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_2359
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2360
	.word	-12
	.word	4
	.word	_Label_2361
	.word	-16
	.word	4
	.word	_Label_2362
	.word	-20
	.word	4
	.word	_Label_2363
	.word	-24
	.word	4
	.word	_Label_2364
	.word	-28
	.word	4
	.word	_Label_2365
	.word	-32
	.word	4
	.word	_Label_2366
	.word	-36
	.word	4
	.word	_Label_2367
	.word	-40
	.word	4
	.word	_Label_2368
	.word	-44
	.word	4
	.word	0
_Label_2358:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"GetANewProcess\0"
	.align
_Label_2359:
	.ascii	"Pself\0"
	.align
_Label_2360:
	.byte	'?'
	.ascii	"_temp_2357\0"
	.align
_Label_2361:
	.byte	'?'
	.ascii	"_temp_2356\0"
	.align
_Label_2362:
	.byte	'?'
	.ascii	"_temp_2355\0"
	.align
_Label_2363:
	.byte	'?'
	.ascii	"_temp_2354\0"
	.align
_Label_2364:
	.byte	'?'
	.ascii	"_temp_2353\0"
	.align
_Label_2365:
	.byte	'?'
	.ascii	"_temp_2352\0"
	.align
_Label_2366:
	.byte	'?'
	.ascii	"_temp_2351\0"
	.align
_Label_2367:
	.byte	'?'
	.ascii	"_temp_2347\0"
	.align
_Label_2368:
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
_Label_4146:
	push	r0
	sub	r1,1,r1
	bne	_Label_4146
	mov	978,r13		! source line 978
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	982,r13		! source line 982
	mov	"\0\0SE",r10
!   _temp_2369 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-244]
!   _temp_2370 = _temp_2369 + 1688
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
!   _temp_2375 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-236]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2376 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-232]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2375  (sizeInBytes=4)
	load	[r14+-236],r1
	store	r1,[r14+-248]
_Label_2371:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2376 then goto _Label_2374		
	load	[r14+-248],r1
	load	[r14+-232],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2374
_Label_2372:
	mov	985,r13		! source line 985
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	986,r13		! source line 986
	mov	"\0\0IF",r10
!   _temp_2380 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-224]
!   _temp_2381 = _temp_2380 + 4
	load	[r14+-224],r1
	add	r1,4,r1
	store	r1,[r14+-220]
!   Move address of _temp_2381 [i ] into _temp_2382
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
!   _temp_2383 = _temp_2382 + 12
	load	[r14+-216],r1
	add	r1,12,r1
	store	r1,[r14+-212]
!   Data Move: _temp_2379 = *_temp_2383  (sizeInBytes=4)
	load	[r14+-212],r1
	load	[r1],r1
	store	r1,[r14+-228]
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2385 = p + 16
	load	[r14+12],r1
	add	r1,16,r1
	store	r1,[r14+-204]
!   Data Move: _temp_2384 = *_temp_2385  (sizeInBytes=4)
	load	[r14+-204],r1
	load	[r1],r1
	store	r1,[r14+-208]
!   if _temp_2379 != _temp_2384 then goto _Label_2378		(int)
	load	[r14+-228],r1
	load	[r14+-208],r2
	cmp	r1,r2
	bne	_Label_2378
!	jmp	_Label_2377
_Label_2377:
! THEN...
	mov	987,r13		! source line 987
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	987,r13		! source line 987
	mov	"\0\0AS",r10
!   _temp_2386 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-200]
!   _temp_2387 = _temp_2386 + 4
	load	[r14+-200],r1
	add	r1,4,r1
	store	r1,[r14+-196]
!   Move address of _temp_2387 [i ] into _temp_2388
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
!   parentPcb = _temp_2388		(4 bytes)
	load	[r14+-192],r1
	store	r1,[r14+-252]
! END IF...
_Label_2378:
! IF STATEMENT...
	mov	989,r13		! source line 989
	mov	"\0\0IF",r10
!   _temp_2393 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-184]
!   _temp_2394 = _temp_2393 + 4
	load	[r14+-184],r1
	add	r1,4,r1
	store	r1,[r14+-180]
!   Move address of _temp_2394 [i ] into _temp_2395
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
!   _temp_2396 = _temp_2395 + 20
	load	[r14+-176],r1
	add	r1,20,r1
	store	r1,[r14+-172]
!   Data Move: _temp_2392 = *_temp_2396  (sizeInBytes=4)
	load	[r14+-172],r1
	load	[r1],r1
	store	r1,[r14+-188]
!   if _temp_2392 != 2 then goto _Label_2390		(int)
	load	[r14+-188],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_2390
!	jmp	_Label_2391
_Label_2391:
!   _temp_2398 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-164]
!   _temp_2399 = _temp_2398 + 4
	load	[r14+-164],r1
	add	r1,4,r1
	store	r1,[r14+-160]
!   Move address of _temp_2399 [i ] into _temp_2400
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
!   _temp_2401 = _temp_2400 + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-152]
!   Data Move: _temp_2397 = *_temp_2401  (sizeInBytes=4)
	load	[r14+-152],r1
	load	[r1],r1
	store	r1,[r14+-168]
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2403 = p + 12
	load	[r14+12],r1
	add	r1,12,r1
	store	r1,[r14+-144]
!   Data Move: _temp_2402 = *_temp_2403  (sizeInBytes=4)
	load	[r14+-144],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   if _temp_2397 != _temp_2402 then goto _Label_2390		(int)
	load	[r14+-168],r1
	load	[r14+-148],r2
	cmp	r1,r2
	bne	_Label_2390
!	jmp	_Label_2389
_Label_2389:
! THEN...
	mov	990,r13		! source line 990
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	990,r13		! source line 990
	mov	"\0\0AS",r10
!   _temp_2404 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-140]
!   _temp_2405 = _temp_2404 + 4
	load	[r14+-140],r1
	add	r1,4,r1
	store	r1,[r14+-136]
!   Move address of _temp_2405 [i ] into _temp_2406
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
!   _temp_2407 = _temp_2406 + 20
	load	[r14+-132],r1
	add	r1,20,r1
	store	r1,[r14+-128]
!   Data Move: *_temp_2407 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-128],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	991,r13		! source line 991
	mov	"\0\0SE",r10
!   _temp_2409 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-120]
!   _temp_2410 = _temp_2409 + 4
	load	[r14+-120],r1
	add	r1,4,r1
	store	r1,[r14+-116]
!   Move address of _temp_2410 [i ] into _temp_2411
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
!   _temp_2408 = _temp_2411		(4 bytes)
	load	[r14+-112],r1
	store	r1,[r14+-124]
!   _temp_2412 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-108]
!   _temp_2413 = _temp_2412 + 1724
	load	[r14+-108],r1
	add	r1,1724,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=12  value=_temp_2408  sizeInBytes=4
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
!   _temp_2415 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-96]
!   _temp_2416 = _temp_2415 + 1688
	load	[r14+-96],r1
	add	r1,1688,r1
	store	r1,[r14+-92]
!   _temp_2414 = _temp_2416		(4 bytes)
	load	[r14+-92],r1
	store	r1,[r14+-100]
!   _temp_2417 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-88]
!   _temp_2418 = _temp_2417 + 1708
	load	[r14+-88],r1
	add	r1,1708,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=12  value=_temp_2414  sizeInBytes=4
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
_Label_2390:
!   Increment the FOR-LOOP index variable and jump back
_Label_2373:
!   i = i + 1
	load	[r14+-248],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-248]
	jmp	_Label_2371
! END FOR
_Label_2374:
! IF STATEMENT...
	mov	997,r13		! source line 997
	mov	"\0\0IF",r10
!   if intIsZero (parentPcb) then goto _Label_2420
	load	[r14+-252],r1
	cmp	r1,r0
	be	_Label_2420
!	jmp	_Label_2421
_Label_2421:
!   if intIsZero (parentPcb) then goto _runtimeErrorNullPointer
	load	[r14+-252],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2423 = parentPcb + 20
	load	[r14+-252],r1
	add	r1,20,r1
	store	r1,[r14+-76]
!   Data Move: _temp_2422 = *_temp_2423  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_2422 != 1 then goto _Label_2420		(int)
	load	[r14+-80],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_2420
!	jmp	_Label_2419
_Label_2419:
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
!   _temp_2424 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-72]
!   Data Move: *_temp_2424 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-72],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	999,r13		! source line 999
	mov	"\0\0SE",r10
!   _temp_2426 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-64]
!   _temp_2427 = _temp_2426 + 1688
	load	[r14+-64],r1
	add	r1,1688,r1
	store	r1,[r14+-60]
!   _temp_2425 = _temp_2427		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-68]
!   _temp_2428 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-56]
!   _temp_2429 = _temp_2428 + 1736
	load	[r14+-56],r1
	add	r1,1736,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_2425  sizeInBytes=4
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
	jmp	_Label_2430
_Label_2420:
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
!   _temp_2431 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_2431 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1002,r13		! source line 1002
	mov	"\0\0SE",r10
!   _temp_2432 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-44]
!   _temp_2433 = _temp_2432 + 1724
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
!   _temp_2435 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-32]
!   _temp_2436 = _temp_2435 + 1688
	load	[r14+-32],r1
	add	r1,1688,r1
	store	r1,[r14+-28]
!   _temp_2434 = _temp_2436		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   _temp_2437 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-24]
!   _temp_2438 = _temp_2437 + 1708
	load	[r14+-24],r1
	add	r1,1708,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_2434  sizeInBytes=4
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
_Label_2430:
! SEND STATEMENT...
	mov	1006,r13		! source line 1006
	mov	"\0\0SE",r10
!   _temp_2439 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-16]
!   _temp_2440 = _temp_2439 + 1688
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
	.word	_Label_2441
	.word	8		! total size of parameters
	.word	252		! frame size = 252
	.word	_Label_2442
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2443
	.word	12
	.word	4
	.word	_Label_2444
	.word	-12
	.word	4
	.word	_Label_2445
	.word	-16
	.word	4
	.word	_Label_2446
	.word	-20
	.word	4
	.word	_Label_2447
	.word	-24
	.word	4
	.word	_Label_2448
	.word	-28
	.word	4
	.word	_Label_2449
	.word	-32
	.word	4
	.word	_Label_2450
	.word	-36
	.word	4
	.word	_Label_2451
	.word	-40
	.word	4
	.word	_Label_2452
	.word	-44
	.word	4
	.word	_Label_2453
	.word	-48
	.word	4
	.word	_Label_2454
	.word	-52
	.word	4
	.word	_Label_2455
	.word	-56
	.word	4
	.word	_Label_2456
	.word	-60
	.word	4
	.word	_Label_2457
	.word	-64
	.word	4
	.word	_Label_2458
	.word	-68
	.word	4
	.word	_Label_2459
	.word	-72
	.word	4
	.word	_Label_2460
	.word	-76
	.word	4
	.word	_Label_2461
	.word	-80
	.word	4
	.word	_Label_2462
	.word	-84
	.word	4
	.word	_Label_2463
	.word	-88
	.word	4
	.word	_Label_2464
	.word	-92
	.word	4
	.word	_Label_2465
	.word	-96
	.word	4
	.word	_Label_2466
	.word	-100
	.word	4
	.word	_Label_2467
	.word	-104
	.word	4
	.word	_Label_2468
	.word	-108
	.word	4
	.word	_Label_2469
	.word	-112
	.word	4
	.word	_Label_2470
	.word	-116
	.word	4
	.word	_Label_2471
	.word	-120
	.word	4
	.word	_Label_2472
	.word	-124
	.word	4
	.word	_Label_2473
	.word	-128
	.word	4
	.word	_Label_2474
	.word	-132
	.word	4
	.word	_Label_2475
	.word	-136
	.word	4
	.word	_Label_2476
	.word	-140
	.word	4
	.word	_Label_2477
	.word	-144
	.word	4
	.word	_Label_2478
	.word	-148
	.word	4
	.word	_Label_2479
	.word	-152
	.word	4
	.word	_Label_2480
	.word	-156
	.word	4
	.word	_Label_2481
	.word	-160
	.word	4
	.word	_Label_2482
	.word	-164
	.word	4
	.word	_Label_2483
	.word	-168
	.word	4
	.word	_Label_2484
	.word	-172
	.word	4
	.word	_Label_2485
	.word	-176
	.word	4
	.word	_Label_2486
	.word	-180
	.word	4
	.word	_Label_2487
	.word	-184
	.word	4
	.word	_Label_2488
	.word	-188
	.word	4
	.word	_Label_2489
	.word	-192
	.word	4
	.word	_Label_2490
	.word	-196
	.word	4
	.word	_Label_2491
	.word	-200
	.word	4
	.word	_Label_2492
	.word	-204
	.word	4
	.word	_Label_2493
	.word	-208
	.word	4
	.word	_Label_2494
	.word	-212
	.word	4
	.word	_Label_2495
	.word	-216
	.word	4
	.word	_Label_2496
	.word	-220
	.word	4
	.word	_Label_2497
	.word	-224
	.word	4
	.word	_Label_2498
	.word	-228
	.word	4
	.word	_Label_2499
	.word	-232
	.word	4
	.word	_Label_2500
	.word	-236
	.word	4
	.word	_Label_2501
	.word	-240
	.word	4
	.word	_Label_2502
	.word	-244
	.word	4
	.word	_Label_2503
	.word	-248
	.word	4
	.word	_Label_2504
	.word	-252
	.word	4
	.word	0
_Label_2441:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"TurnIntoZombie\0"
	.align
_Label_2442:
	.ascii	"Pself\0"
	.align
_Label_2443:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_2444:
	.byte	'?'
	.ascii	"_temp_2440\0"
	.align
_Label_2445:
	.byte	'?'
	.ascii	"_temp_2439\0"
	.align
_Label_2446:
	.byte	'?'
	.ascii	"_temp_2438\0"
	.align
_Label_2447:
	.byte	'?'
	.ascii	"_temp_2437\0"
	.align
_Label_2448:
	.byte	'?'
	.ascii	"_temp_2436\0"
	.align
_Label_2449:
	.byte	'?'
	.ascii	"_temp_2435\0"
	.align
_Label_2450:
	.byte	'?'
	.ascii	"_temp_2434\0"
	.align
_Label_2451:
	.byte	'?'
	.ascii	"_temp_2433\0"
	.align
_Label_2452:
	.byte	'?'
	.ascii	"_temp_2432\0"
	.align
_Label_2453:
	.byte	'?'
	.ascii	"_temp_2431\0"
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
	.byte	'?'
	.ascii	"_temp_2426\0"
	.align
_Label_2458:
	.byte	'?'
	.ascii	"_temp_2425\0"
	.align
_Label_2459:
	.byte	'?'
	.ascii	"_temp_2424\0"
	.align
_Label_2460:
	.byte	'?'
	.ascii	"_temp_2423\0"
	.align
_Label_2461:
	.byte	'?'
	.ascii	"_temp_2422\0"
	.align
_Label_2462:
	.byte	'?'
	.ascii	"_temp_2418\0"
	.align
_Label_2463:
	.byte	'?'
	.ascii	"_temp_2417\0"
	.align
_Label_2464:
	.byte	'?'
	.ascii	"_temp_2416\0"
	.align
_Label_2465:
	.byte	'?'
	.ascii	"_temp_2415\0"
	.align
_Label_2466:
	.byte	'?'
	.ascii	"_temp_2414\0"
	.align
_Label_2467:
	.byte	'?'
	.ascii	"_temp_2413\0"
	.align
_Label_2468:
	.byte	'?'
	.ascii	"_temp_2412\0"
	.align
_Label_2469:
	.byte	'?'
	.ascii	"_temp_2411\0"
	.align
_Label_2470:
	.byte	'?'
	.ascii	"_temp_2410\0"
	.align
_Label_2471:
	.byte	'?'
	.ascii	"_temp_2409\0"
	.align
_Label_2472:
	.byte	'?'
	.ascii	"_temp_2408\0"
	.align
_Label_2473:
	.byte	'?'
	.ascii	"_temp_2407\0"
	.align
_Label_2474:
	.byte	'?'
	.ascii	"_temp_2406\0"
	.align
_Label_2475:
	.byte	'?'
	.ascii	"_temp_2405\0"
	.align
_Label_2476:
	.byte	'?'
	.ascii	"_temp_2404\0"
	.align
_Label_2477:
	.byte	'?'
	.ascii	"_temp_2403\0"
	.align
_Label_2478:
	.byte	'?'
	.ascii	"_temp_2402\0"
	.align
_Label_2479:
	.byte	'?'
	.ascii	"_temp_2401\0"
	.align
_Label_2480:
	.byte	'?'
	.ascii	"_temp_2400\0"
	.align
_Label_2481:
	.byte	'?'
	.ascii	"_temp_2399\0"
	.align
_Label_2482:
	.byte	'?'
	.ascii	"_temp_2398\0"
	.align
_Label_2483:
	.byte	'?'
	.ascii	"_temp_2397\0"
	.align
_Label_2484:
	.byte	'?'
	.ascii	"_temp_2396\0"
	.align
_Label_2485:
	.byte	'?'
	.ascii	"_temp_2395\0"
	.align
_Label_2486:
	.byte	'?'
	.ascii	"_temp_2394\0"
	.align
_Label_2487:
	.byte	'?'
	.ascii	"_temp_2393\0"
	.align
_Label_2488:
	.byte	'?'
	.ascii	"_temp_2392\0"
	.align
_Label_2489:
	.byte	'?'
	.ascii	"_temp_2388\0"
	.align
_Label_2490:
	.byte	'?'
	.ascii	"_temp_2387\0"
	.align
_Label_2491:
	.byte	'?'
	.ascii	"_temp_2386\0"
	.align
_Label_2492:
	.byte	'?'
	.ascii	"_temp_2385\0"
	.align
_Label_2493:
	.byte	'?'
	.ascii	"_temp_2384\0"
	.align
_Label_2494:
	.byte	'?'
	.ascii	"_temp_2383\0"
	.align
_Label_2495:
	.byte	'?'
	.ascii	"_temp_2382\0"
	.align
_Label_2496:
	.byte	'?'
	.ascii	"_temp_2381\0"
	.align
_Label_2497:
	.byte	'?'
	.ascii	"_temp_2380\0"
	.align
_Label_2498:
	.byte	'?'
	.ascii	"_temp_2379\0"
	.align
_Label_2499:
	.byte	'?'
	.ascii	"_temp_2376\0"
	.align
_Label_2500:
	.byte	'?'
	.ascii	"_temp_2375\0"
	.align
_Label_2501:
	.byte	'?'
	.ascii	"_temp_2370\0"
	.align
_Label_2502:
	.byte	'?'
	.ascii	"_temp_2369\0"
	.align
_Label_2503:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2504:
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
_Label_4147:
	push	r0
	sub	r1,1,r1
	bne	_Label_4147
	mov	1012,r13		! source line 1012
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1016,r13		! source line 1016
	mov	"\0\0SE",r10
!   _temp_2505 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-88]
!   _temp_2506 = _temp_2505 + 1688
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
_Label_2507:
!   if intIsZero (proc) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2511 = proc + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-76]
!   Data Move: _temp_2510 = *_temp_2511  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_2510 == 2 then goto _Label_2509		(int)
	load	[r14+-80],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_2509
!	jmp	_Label_2508
_Label_2508:
	mov	1018,r13		! source line 1018
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1019,r13		! source line 1019
	mov	"\0\0SE",r10
!   _temp_2513 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-68]
!   _temp_2514 = _temp_2513 + 1688
	load	[r14+-68],r1
	add	r1,1688,r1
	store	r1,[r14+-64]
!   _temp_2512 = _temp_2514		(4 bytes)
	load	[r14+-64],r1
	store	r1,[r14+-72]
!   _temp_2515 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-60]
!   _temp_2516 = _temp_2515 + 1736
	load	[r14+-60],r1
	add	r1,1736,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=12  value=_temp_2512  sizeInBytes=4
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
	jmp	_Label_2507
_Label_2509:
! ASSIGNMENT STATEMENT...
	mov	1022,r13		! source line 1022
	mov	"\0\0AS",r10
!   if intIsZero (proc) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2517 = proc + 28
	load	[r14+12],r1
	add	r1,28,r1
	store	r1,[r14+-52]
!   Data Move: procExitStatus = *_temp_2517  (sizeInBytes=4)
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
!   _temp_2518 = proc + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_2518 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1024,r13		! source line 1024
	mov	"\0\0SE",r10
!   _temp_2519 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-44]
!   _temp_2520 = _temp_2519 + 1724
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
!   _temp_2522 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-32]
!   _temp_2523 = _temp_2522 + 1688
	load	[r14+-32],r1
	add	r1,1688,r1
	store	r1,[r14+-28]
!   _temp_2521 = _temp_2523		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   _temp_2524 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-24]
!   _temp_2525 = _temp_2524 + 1708
	load	[r14+-24],r1
	add	r1,1708,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_2521  sizeInBytes=4
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
!   _temp_2526 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-16]
!   _temp_2527 = _temp_2526 + 1688
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
	.word	_Label_2528
	.word	8		! total size of parameters
	.word	92		! frame size = 92
	.word	_Label_2529
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2530
	.word	12
	.word	4
	.word	_Label_2531
	.word	-12
	.word	4
	.word	_Label_2532
	.word	-16
	.word	4
	.word	_Label_2533
	.word	-20
	.word	4
	.word	_Label_2534
	.word	-24
	.word	4
	.word	_Label_2535
	.word	-28
	.word	4
	.word	_Label_2536
	.word	-32
	.word	4
	.word	_Label_2537
	.word	-36
	.word	4
	.word	_Label_2538
	.word	-40
	.word	4
	.word	_Label_2539
	.word	-44
	.word	4
	.word	_Label_2540
	.word	-48
	.word	4
	.word	_Label_2541
	.word	-52
	.word	4
	.word	_Label_2542
	.word	-56
	.word	4
	.word	_Label_2543
	.word	-60
	.word	4
	.word	_Label_2544
	.word	-64
	.word	4
	.word	_Label_2545
	.word	-68
	.word	4
	.word	_Label_2546
	.word	-72
	.word	4
	.word	_Label_2547
	.word	-76
	.word	4
	.word	_Label_2548
	.word	-80
	.word	4
	.word	_Label_2549
	.word	-84
	.word	4
	.word	_Label_2550
	.word	-88
	.word	4
	.word	_Label_2551
	.word	-92
	.word	4
	.word	0
_Label_2528:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"WaitForZombie\0"
	.align
_Label_2529:
	.ascii	"Pself\0"
	.align
_Label_2530:
	.byte	'P'
	.ascii	"proc\0"
	.align
_Label_2531:
	.byte	'?'
	.ascii	"_temp_2527\0"
	.align
_Label_2532:
	.byte	'?'
	.ascii	"_temp_2526\0"
	.align
_Label_2533:
	.byte	'?'
	.ascii	"_temp_2525\0"
	.align
_Label_2534:
	.byte	'?'
	.ascii	"_temp_2524\0"
	.align
_Label_2535:
	.byte	'?'
	.ascii	"_temp_2523\0"
	.align
_Label_2536:
	.byte	'?'
	.ascii	"_temp_2522\0"
	.align
_Label_2537:
	.byte	'?'
	.ascii	"_temp_2521\0"
	.align
_Label_2538:
	.byte	'?'
	.ascii	"_temp_2520\0"
	.align
_Label_2539:
	.byte	'?'
	.ascii	"_temp_2519\0"
	.align
_Label_2540:
	.byte	'?'
	.ascii	"_temp_2518\0"
	.align
_Label_2541:
	.byte	'?'
	.ascii	"_temp_2517\0"
	.align
_Label_2542:
	.byte	'?'
	.ascii	"_temp_2516\0"
	.align
_Label_2543:
	.byte	'?'
	.ascii	"_temp_2515\0"
	.align
_Label_2544:
	.byte	'?'
	.ascii	"_temp_2514\0"
	.align
_Label_2545:
	.byte	'?'
	.ascii	"_temp_2513\0"
	.align
_Label_2546:
	.byte	'?'
	.ascii	"_temp_2512\0"
	.align
_Label_2547:
	.byte	'?'
	.ascii	"_temp_2511\0"
	.align
_Label_2548:
	.byte	'?'
	.ascii	"_temp_2510\0"
	.align
_Label_2549:
	.byte	'?'
	.ascii	"_temp_2506\0"
	.align
_Label_2550:
	.byte	'?'
	.ascii	"_temp_2505\0"
	.align
_Label_2551:
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
_Label_4148:
	push	r0
	sub	r1,1,r1
	bne	_Label_4148
	mov	1033,r13		! source line 1033
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1037,r13		! source line 1037
	mov	"\0\0SE",r10
!   _temp_2552 = &processManagerLock
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
!   _temp_2553 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2553 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1039,r13		! source line 1039
	mov	"\0\0SE",r10
!   _temp_2554 = &freeList
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
!   _temp_2555 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-20]
!   _temp_2556 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1708,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2555  sizeInBytes=4
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
!   _temp_2557 = &processManagerLock
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
	.word	_Label_2558
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_2559
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2560
	.word	12
	.word	4
	.word	_Label_2561
	.word	-12
	.word	4
	.word	_Label_2562
	.word	-16
	.word	4
	.word	_Label_2563
	.word	-20
	.word	4
	.word	_Label_2564
	.word	-24
	.word	4
	.word	_Label_2565
	.word	-28
	.word	4
	.word	_Label_2566
	.word	-32
	.word	4
	.word	0
_Label_2558:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"FreeProcess\0"
	.align
_Label_2559:
	.ascii	"Pself\0"
	.align
_Label_2560:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_2561:
	.byte	'?'
	.ascii	"_temp_2557\0"
	.align
_Label_2562:
	.byte	'?'
	.ascii	"_temp_2556\0"
	.align
_Label_2563:
	.byte	'?'
	.ascii	"_temp_2555\0"
	.align
_Label_2564:
	.byte	'?'
	.ascii	"_temp_2554\0"
	.align
_Label_2565:
	.byte	'?'
	.ascii	"_temp_2553\0"
	.align
_Label_2566:
	.byte	'?'
	.ascii	"_temp_2552\0"
	.align
! 
! ===============  CLASS FrameManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FrameManager:
	.word	_Label_2567
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
_Label_2567:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2568
	.word	_sourceFileName
	.word	290		! line number
	.word	56		! size of instances, in bytes
	.word	_P_Kernel_FrameManager
	.word	_P_System_Object
	.word	0
_Label_2568:
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
_Label_4149:
	push	r0
	sub	r1,1,r1
	bne	_Label_4149
	mov	1090,r13		! source line 1090
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2569 = _StringConst_103
	set	_StringConst_103,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_2569  sizeInBytes=4
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
!   _temp_2571 = &framesInUse
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
!   _temp_2573 = &frameManagerLock
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
!   _temp_2575 = &newFramesAvailable
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
!   _temp_2580 = 1048576		(4 bytes)
	set	1048576,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2581 = 1048876		(4 bytes)
	set	1048876,r1
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2580  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-56]
_Label_2576:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2581 then goto _Label_2579		
	load	[r14+-56],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2579
_Label_2577:
	mov	1109,r13		! source line 1109
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1112,r13		! source line 1112
	mov	"\0\0IF",r10
!   if intIsZero (i) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2584 = *i  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2584) then goto _Label_2583
	load	[r14+-16],r1
	cmp	r1,r0
	be	_Label_2583
!	jmp	_Label_2582
_Label_2582:
! THEN...
	mov	1113,r13		! source line 1113
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2585 = _StringConst_104
	set	_StringConst_104,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2585  sizeInBytes=4
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
_Label_2583:
!   Increment the FOR-LOOP index variable and jump back
_Label_2578:
!   i = i + 4
	load	[r14+-56],r1
	add	r1,4,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_2576
! END FOR
_Label_2579:
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
	.word	_Label_2586
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_2587
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2588
	.word	-12
	.word	4
	.word	_Label_2589
	.word	-16
	.word	4
	.word	_Label_2590
	.word	-20
	.word	4
	.word	_Label_2591
	.word	-24
	.word	4
	.word	_Label_2592
	.word	-28
	.word	4
	.word	_Label_2593
	.word	-32
	.word	4
	.word	_Label_2594
	.word	-36
	.word	4
	.word	_Label_2595
	.word	-40
	.word	4
	.word	_Label_2596
	.word	-44
	.word	4
	.word	_Label_2597
	.word	-48
	.word	4
	.word	_Label_2598
	.word	-52
	.word	4
	.word	_Label_2599
	.word	-56
	.word	4
	.word	0
_Label_2586:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2587:
	.ascii	"Pself\0"
	.align
_Label_2588:
	.byte	'?'
	.ascii	"_temp_2585\0"
	.align
_Label_2589:
	.byte	'?'
	.ascii	"_temp_2584\0"
	.align
_Label_2590:
	.byte	'?'
	.ascii	"_temp_2581\0"
	.align
_Label_2591:
	.byte	'?'
	.ascii	"_temp_2580\0"
	.align
_Label_2592:
	.byte	'?'
	.ascii	"_temp_2575\0"
	.align
_Label_2593:
	.byte	'?'
	.ascii	"_temp_2574\0"
	.align
_Label_2594:
	.byte	'?'
	.ascii	"_temp_2573\0"
	.align
_Label_2595:
	.byte	'?'
	.ascii	"_temp_2572\0"
	.align
_Label_2596:
	.byte	'?'
	.ascii	"_temp_2571\0"
	.align
_Label_2597:
	.byte	'?'
	.ascii	"_temp_2570\0"
	.align
_Label_2598:
	.byte	'?'
	.ascii	"_temp_2569\0"
	.align
_Label_2599:
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
_Label_4150:
	push	r0
	sub	r1,1,r1
	bne	_Label_4150
	mov	1120,r13		! source line 1120
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1124,r13		! source line 1124
	mov	"\0\0SE",r10
!   _temp_2600 = &frameManagerLock
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
!   _temp_2601 = _StringConst_105
	set	_StringConst_105,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2601  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1125,r13		! source line 1125
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2602 = _StringConst_106
	set	_StringConst_106,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2602  sizeInBytes=4
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
!   _temp_2603 = _StringConst_107
	set	_StringConst_107,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2603  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1127,r13		! source line 1127
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1128,r13		! source line 1128
	mov	"\0\0SE",r10
!   _temp_2604 = &framesInUse
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
!   _temp_2605 = &frameManagerLock
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
	.word	_Label_2606
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_2607
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2608
	.word	-12
	.word	4
	.word	_Label_2609
	.word	-16
	.word	4
	.word	_Label_2610
	.word	-20
	.word	4
	.word	_Label_2611
	.word	-24
	.word	4
	.word	_Label_2612
	.word	-28
	.word	4
	.word	_Label_2613
	.word	-32
	.word	4
	.word	0
_Label_2606:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2607:
	.ascii	"Pself\0"
	.align
_Label_2608:
	.byte	'?'
	.ascii	"_temp_2605\0"
	.align
_Label_2609:
	.byte	'?'
	.ascii	"_temp_2604\0"
	.align
_Label_2610:
	.byte	'?'
	.ascii	"_temp_2603\0"
	.align
_Label_2611:
	.byte	'?'
	.ascii	"_temp_2602\0"
	.align
_Label_2612:
	.byte	'?'
	.ascii	"_temp_2601\0"
	.align
_Label_2613:
	.byte	'?'
	.ascii	"_temp_2600\0"
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
_Label_4151:
	push	r0
	sub	r1,1,r1
	bne	_Label_4151
	mov	1134,r13		! source line 1134
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1141,r13		! source line 1141
	mov	"\0\0SE",r10
!   _temp_2614 = &frameManagerLock
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
_Label_2615:
!   if numberFreeFrames >= 1 then goto _Label_2617		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2617
!	jmp	_Label_2616
_Label_2616:
	mov	1144,r13		! source line 1144
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1145,r13		! source line 1145
	mov	"\0\0SE",r10
!   _temp_2618 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   _temp_2619 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_2618  sizeInBytes=4
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
	jmp	_Label_2615
_Label_2617:
! ASSIGNMENT STATEMENT...
	mov	1149,r13		! source line 1149
	mov	"\0\0AS",r10
	mov	1149,r13		! source line 1149
	mov	"\0\0SE",r10
!   _temp_2620 = &framesInUse
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
!   _temp_2621 = &frameManagerLock
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
!   _temp_2622 = f * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   frameAddr = 1048576 + _temp_2622		(int)
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
	.word	_Label_2623
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_2624
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2625
	.word	-12
	.word	4
	.word	_Label_2626
	.word	-16
	.word	4
	.word	_Label_2627
	.word	-20
	.word	4
	.word	_Label_2628
	.word	-24
	.word	4
	.word	_Label_2629
	.word	-28
	.word	4
	.word	_Label_2630
	.word	-32
	.word	4
	.word	_Label_2631
	.word	-36
	.word	4
	.word	_Label_2632
	.word	-40
	.word	4
	.word	0
_Label_2623:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetAFrame\0"
	.align
_Label_2624:
	.ascii	"Pself\0"
	.align
_Label_2625:
	.byte	'?'
	.ascii	"_temp_2622\0"
	.align
_Label_2626:
	.byte	'?'
	.ascii	"_temp_2621\0"
	.align
_Label_2627:
	.byte	'?'
	.ascii	"_temp_2620\0"
	.align
_Label_2628:
	.byte	'?'
	.ascii	"_temp_2619\0"
	.align
_Label_2629:
	.byte	'?'
	.ascii	"_temp_2618\0"
	.align
_Label_2630:
	.byte	'?'
	.ascii	"_temp_2614\0"
	.align
_Label_2631:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_2632:
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
_Label_4152:
	push	r0
	sub	r1,1,r1
	bne	_Label_4152
	mov	1161,r13		! source line 1161
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1168,r13		! source line 1168
	mov	"\0\0AS",r10
	mov	1168,r13		! source line 1168
	mov	"\0\0SE",r10
!   _temp_2633 = &framesInUse
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
!   _temp_2634 = f * 8192		(int)
	load	[r14+-20],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   frameAddr = 1048576 + _temp_2634		(int)
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
	.word	_Label_2635
	.word	4		! total size of parameters
	.word	20		! frame size = 20
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
	.word	0
_Label_2635:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetAFrame2\0"
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
	.ascii	"_temp_2633\0"
	.align
_Label_2639:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_2640:
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
_Label_4153:
	push	r0
	sub	r1,1,r1
	bne	_Label_4153
	mov	1178,r13		! source line 1178
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1182,r13		! source line 1182
	mov	"\0\0SE",r10
!   _temp_2641 = &frameManagerLock
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
_Label_2642:
!   if numberFreeFrames >= numFramesNeeded then goto _Label_2644		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2644
!	jmp	_Label_2643
_Label_2643:
	mov	1183,r13		! source line 1183
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1184,r13		! source line 1184
	mov	"\0\0SE",r10
!   _temp_2645 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   _temp_2646 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_2645  sizeInBytes=4
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
	jmp	_Label_2642
_Label_2644:
! FOR STATEMENT...
	mov	1186,r13		! source line 1186
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2651 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-28]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2652 = numFramesNeeded - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2651  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+-44]
_Label_2647:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2652 then goto _Label_2650		
	load	[r14+-44],r1
	load	[r14+-24],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2650
_Label_2648:
	mov	1186,r13		! source line 1186
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1187,r13		! source line 1187
	mov	"\0\0AS",r10
	mov	1187,r13		! source line 1187
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_2653) then goto _runtimeErrorNullPointer
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
_Label_2649:
!   i = i + 1
	load	[r14+-44],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
	jmp	_Label_2647
! END FOR
_Label_2650:
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
!   _temp_2654 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2654 = numFramesNeeded  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1192,r13		! source line 1192
	mov	"\0\0SE",r10
!   _temp_2655 = &frameManagerLock
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
	.word	_Label_2656
	.word	12		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2657
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2658
	.word	12
	.word	4
	.word	_Label_2659
	.word	16
	.word	4
	.word	_Label_2660
	.word	-12
	.word	4
	.word	_Label_2661
	.word	-16
	.word	4
	.word	_Label_2662
	.word	-20
	.word	4
	.word	_Label_2663
	.word	-24
	.word	4
	.word	_Label_2664
	.word	-28
	.word	4
	.word	_Label_2665
	.word	-32
	.word	4
	.word	_Label_2666
	.word	-36
	.word	4
	.word	_Label_2667
	.word	-40
	.word	4
	.word	_Label_2668
	.word	-44
	.word	4
	.word	_Label_2669
	.word	-48
	.word	4
	.word	0
_Label_2656:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetNewFrames\0"
	.align
_Label_2657:
	.ascii	"Pself\0"
	.align
_Label_2658:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_2659:
	.byte	'I'
	.ascii	"numFramesNeeded\0"
	.align
_Label_2660:
	.byte	'?'
	.ascii	"_temp_2655\0"
	.align
_Label_2661:
	.byte	'?'
	.ascii	"_temp_2654\0"
	.align
_Label_2662:
	.byte	'?'
	.ascii	"_temp_2653\0"
	.align
_Label_2663:
	.byte	'?'
	.ascii	"_temp_2652\0"
	.align
_Label_2664:
	.byte	'?'
	.ascii	"_temp_2651\0"
	.align
_Label_2665:
	.byte	'?'
	.ascii	"_temp_2646\0"
	.align
_Label_2666:
	.byte	'?'
	.ascii	"_temp_2645\0"
	.align
_Label_2667:
	.byte	'?'
	.ascii	"_temp_2641\0"
	.align
_Label_2668:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2669:
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
_Label_4154:
	push	r0
	sub	r1,1,r1
	bne	_Label_4154
	mov	1197,r13		! source line 1197
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1202,r13		! source line 1202
	mov	"\0\0SE",r10
!   _temp_2670 = &frameManagerLock
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
!   _temp_2675 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-52]
!   Calculate and save the FOR-LOOP ending value
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2678 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Data Move: _temp_2677 = *_temp_2678  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_2676 = _temp_2677 - 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2675  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+-60]
_Label_2671:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2676 then goto _Label_2674		
	load	[r14+-60],r1
	load	[r14+-48],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2674
_Label_2672:
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
!   _temp_2679 = frameAddr - 1048576		(int)
	load	[r14+-68],r1
	set	1048576,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   bitIndex = _temp_2679 div 8192		(int)
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
!   _temp_2680 = &framesInUse
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
_Label_2673:
!   i = i + 1
	load	[r14+-60],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
	jmp	_Label_2671
! END FOR
_Label_2674:
! ASSIGNMENT STATEMENT...
	mov	1208,r13		! source line 1208
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2682 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Data Move: _temp_2681 = *_temp_2682  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   numberFreeFrames = numberFreeFrames + _temp_2681		(int)
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
!   _temp_2683 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   _temp_2684 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2683  sizeInBytes=4
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
!   _temp_2685 = &frameManagerLock
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
	.word	_Label_2686
	.word	8		! total size of parameters
	.word	68		! frame size = 68
	.word	_Label_2687
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2688
	.word	12
	.word	4
	.word	_Label_2689
	.word	-12
	.word	4
	.word	_Label_2690
	.word	-16
	.word	4
	.word	_Label_2691
	.word	-20
	.word	4
	.word	_Label_2692
	.word	-24
	.word	4
	.word	_Label_2693
	.word	-28
	.word	4
	.word	_Label_2694
	.word	-32
	.word	4
	.word	_Label_2695
	.word	-36
	.word	4
	.word	_Label_2696
	.word	-40
	.word	4
	.word	_Label_2697
	.word	-44
	.word	4
	.word	_Label_2698
	.word	-48
	.word	4
	.word	_Label_2699
	.word	-52
	.word	4
	.word	_Label_2700
	.word	-56
	.word	4
	.word	_Label_2701
	.word	-60
	.word	4
	.word	_Label_2702
	.word	-64
	.word	4
	.word	_Label_2703
	.word	-68
	.word	4
	.word	0
_Label_2686:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"ReturnAllFrames\0"
	.align
_Label_2687:
	.ascii	"Pself\0"
	.align
_Label_2688:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_2689:
	.byte	'?'
	.ascii	"_temp_2685\0"
	.align
_Label_2690:
	.byte	'?'
	.ascii	"_temp_2684\0"
	.align
_Label_2691:
	.byte	'?'
	.ascii	"_temp_2683\0"
	.align
_Label_2692:
	.byte	'?'
	.ascii	"_temp_2682\0"
	.align
_Label_2693:
	.byte	'?'
	.ascii	"_temp_2681\0"
	.align
_Label_2694:
	.byte	'?'
	.ascii	"_temp_2680\0"
	.align
_Label_2695:
	.byte	'?'
	.ascii	"_temp_2679\0"
	.align
_Label_2696:
	.byte	'?'
	.ascii	"_temp_2678\0"
	.align
_Label_2697:
	.byte	'?'
	.ascii	"_temp_2677\0"
	.align
_Label_2698:
	.byte	'?'
	.ascii	"_temp_2676\0"
	.align
_Label_2699:
	.byte	'?'
	.ascii	"_temp_2675\0"
	.align
_Label_2700:
	.byte	'?'
	.ascii	"_temp_2670\0"
	.align
_Label_2701:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2702:
	.byte	'I'
	.ascii	"bitIndex\0"
	.align
_Label_2703:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
! 
! ===============  CLASS AddrSpace  ===============
! 
! Dispatch Table:
! 
_P_Kernel_AddrSpace:
	.word	_Label_2704
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
_Label_2704:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2705
	.word	_sourceFileName
	.word	310		! line number
	.word	92		! size of instances, in bytes
	.word	_P_Kernel_AddrSpace
	.word	_P_System_Object
	.word	0
_Label_2705:
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
_Label_4155:
	push	r0
	sub	r1,1,r1
	bne	_Label_4155
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
!   _temp_2706 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-108]
!   NEW ARRAY Constructor...
!   _temp_2708 = &_temp_2707
	add	r14,-104,r1
	store	r1,[r14+-20]
!   _temp_2708 = _temp_2708 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	20,r1
	store	r1,[r14+-16]
_Label_2710:
!   Data Move: *_temp_2708 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_2708 = _temp_2708 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_2709 = _temp_2709 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_2709) then goto _Label_2710
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_2710
!   Initialize the array size...
	mov	20,r1
	store	r1,[r14+-104]
!   _temp_2711 = &_temp_2707
	add	r14,-104,r1
	store	r1,[r14+-12]
!   make sure array has size 20
	load	[r14+-108],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,0
	be	_Label_4156
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4156:
!   make sure array has size 20
	load	[r14+-12],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2706 = *_temp_2711  (sizeInBytes=84)
	load	[r14+-12],r5
	load	[r14+-108],r4
	mov	21,r3
_Label_4157:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4157
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
	.word	_Label_2712
	.word	4		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_2713
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2714
	.word	-12
	.word	4
	.word	_Label_2715
	.word	-16
	.word	4
	.word	_Label_2716
	.word	-20
	.word	4
	.word	_Label_2717
	.word	-104
	.word	84
	.word	_Label_2718
	.word	-108
	.word	4
	.word	0
_Label_2712:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2713:
	.ascii	"Pself\0"
	.align
_Label_2714:
	.byte	'?'
	.ascii	"_temp_2711\0"
	.align
_Label_2715:
	.byte	'?'
	.ascii	"_temp_2709\0"
	.align
_Label_2716:
	.byte	'?'
	.ascii	"_temp_2708\0"
	.align
_Label_2717:
	.byte	'?'
	.ascii	"_temp_2707\0"
	.align
_Label_2718:
	.byte	'?'
	.ascii	"_temp_2706\0"
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
_Label_4158:
	push	r0
	sub	r1,1,r1
	bne	_Label_4158
	mov	1231,r13		! source line 1231
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2719 = _StringConst_108
	set	_StringConst_108,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_2719  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	1236,r13		! source line 1236
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2720 = _StringConst_109
	set	_StringConst_109,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_2720  sizeInBytes=4
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
!   _temp_2725 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-156]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2726 = numberOfPages - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2725  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+-168]
_Label_2721:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2726 then goto _Label_2724		
	load	[r14+-168],r1
	load	[r14+-152],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2724
_Label_2722:
	mov	1238,r13		! source line 1238
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2727 = _StringConst_110
	set	_StringConst_110,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_2727  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	1239,r13		! source line 1239
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2729 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-140]
!   Move address of _temp_2729 [i ] into _temp_2730
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
!   _temp_2728 = _temp_2730		(4 bytes)
	load	[r14+-136],r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_2728  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	1240,r13		! source line 1240
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2731 = _StringConst_111
	set	_StringConst_111,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2731  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	1241,r13		! source line 1241
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2733 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-124]
!   Move address of _temp_2733 [i ] into _temp_2734
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
!   Data Move: _temp_2732 = *_temp_2734  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_2732  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	1242,r13		! source line 1242
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2735 = _StringConst_112
	set	_StringConst_112,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_2735  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	1243,r13		! source line 1243
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2736 = i * 8192		(int)
	load	[r14+-168],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_2736  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	1244,r13		! source line 1244
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2737 = _StringConst_113
	set	_StringConst_113,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_2737  sizeInBytes=4
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
!   if intIsZero (_temp_2739) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2738  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_2738  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	1246,r13		! source line 1246
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2740 = _StringConst_114
	set	_StringConst_114,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_2740  sizeInBytes=4
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
!   if intIsZero (_temp_2744) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2743  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2743) then goto _Label_2742
	load	[r14+-92],r1
	cmp	r1,r0
	be	_Label_2742
!	jmp	_Label_2741
_Label_2741:
! THEN...
	mov	1249,r13		! source line 1249
	mov	"\0\0TN",r10
! CALL STATEMENT...
	mov	1249,r13		! source line 1249
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_2746) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2745  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_2745  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	1249,r13		! source line 1249
	mov	"\0\0CE",r10
	call	printHex
	jmp	_Label_2747
_Label_2742:
! ELSE...
	mov	1251,r13		! source line 1251
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2748 = _StringConst_115
	set	_StringConst_115,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_2748  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	1251,r13		! source line 1251
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2747:
! CALL STATEMENT...
!   _temp_2749 = _StringConst_116
	set	_StringConst_116,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_2749  sizeInBytes=4
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
!   if intIsZero (_temp_2752) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2750 else goto _Label_2751
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2751
	jmp	_Label_2750
_Label_2750:
! THEN...
	mov	1255,r13		! source line 1255
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2753 = _StringConst_117
	set	_StringConst_117,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_2753  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	1255,r13		! source line 1255
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2754
_Label_2751:
! ELSE...
	mov	1257,r13		! source line 1257
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2755 = _StringConst_118
	set	_StringConst_118,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_2755  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1257,r13		! source line 1257
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2754:
! CALL STATEMENT...
!   _temp_2756 = _StringConst_119
	set	_StringConst_119,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2756  sizeInBytes=4
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
!   if intIsZero (_temp_2759) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2757 else goto _Label_2758
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2758
	jmp	_Label_2757
_Label_2757:
! THEN...
	mov	1261,r13		! source line 1261
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2760 = _StringConst_120
	set	_StringConst_120,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2760  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1261,r13		! source line 1261
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2761
_Label_2758:
! ELSE...
	mov	1263,r13		! source line 1263
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2762 = _StringConst_121
	set	_StringConst_121,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_2762  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1263,r13		! source line 1263
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2761:
! CALL STATEMENT...
!   _temp_2763 = _StringConst_122
	set	_StringConst_122,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_2763  sizeInBytes=4
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
!   if intIsZero (_temp_2766) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2764 else goto _Label_2765
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2765
	jmp	_Label_2764
_Label_2764:
! THEN...
	mov	1267,r13		! source line 1267
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2767 = _StringConst_123
	set	_StringConst_123,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2767  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1267,r13		! source line 1267
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2768
_Label_2765:
! ELSE...
	mov	1269,r13		! source line 1269
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2769 = _StringConst_124
	set	_StringConst_124,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2769  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1269,r13		! source line 1269
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2768:
! CALL STATEMENT...
!   _temp_2770 = _StringConst_125
	set	_StringConst_125,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2770  sizeInBytes=4
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
!   if intIsZero (_temp_2773) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2771 else goto _Label_2772
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2772
	jmp	_Label_2771
_Label_2771:
! THEN...
	mov	1273,r13		! source line 1273
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2774 = _StringConst_126
	set	_StringConst_126,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2774  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1273,r13		! source line 1273
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2775
_Label_2772:
! ELSE...
	mov	1275,r13		! source line 1275
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2776 = _StringConst_127
	set	_StringConst_127,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2776  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1275,r13		! source line 1275
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2775:
! CALL STATEMENT...
!   Call the function
	mov	1277,r13		! source line 1277
	mov	"\0\0CA",r10
	call	_P_System_nl
!   Increment the FOR-LOOP index variable and jump back
_Label_2723:
!   i = i + 1
	load	[r14+-168],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-168]
	jmp	_Label_2721
! END FOR
_Label_2724:
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
	.word	_Label_2777
	.word	4		! total size of parameters
	.word	168		! frame size = 168
	.word	_Label_2778
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2779
	.word	-12
	.word	4
	.word	_Label_2780
	.word	-16
	.word	4
	.word	_Label_2781
	.word	-20
	.word	4
	.word	_Label_2782
	.word	-24
	.word	4
	.word	_Label_2783
	.word	-28
	.word	4
	.word	_Label_2784
	.word	-32
	.word	4
	.word	_Label_2785
	.word	-36
	.word	4
	.word	_Label_2786
	.word	-40
	.word	4
	.word	_Label_2787
	.word	-44
	.word	4
	.word	_Label_2788
	.word	-48
	.word	4
	.word	_Label_2789
	.word	-52
	.word	4
	.word	_Label_2790
	.word	-56
	.word	4
	.word	_Label_2791
	.word	-60
	.word	4
	.word	_Label_2792
	.word	-64
	.word	4
	.word	_Label_2793
	.word	-68
	.word	4
	.word	_Label_2794
	.word	-72
	.word	4
	.word	_Label_2795
	.word	-76
	.word	4
	.word	_Label_2796
	.word	-80
	.word	4
	.word	_Label_2797
	.word	-84
	.word	4
	.word	_Label_2798
	.word	-88
	.word	4
	.word	_Label_2799
	.word	-92
	.word	4
	.word	_Label_2800
	.word	-96
	.word	4
	.word	_Label_2801
	.word	-100
	.word	4
	.word	_Label_2802
	.word	-104
	.word	4
	.word	_Label_2803
	.word	-108
	.word	4
	.word	_Label_2804
	.word	-112
	.word	4
	.word	_Label_2805
	.word	-116
	.word	4
	.word	_Label_2806
	.word	-120
	.word	4
	.word	_Label_2807
	.word	-124
	.word	4
	.word	_Label_2808
	.word	-128
	.word	4
	.word	_Label_2809
	.word	-132
	.word	4
	.word	_Label_2810
	.word	-136
	.word	4
	.word	_Label_2811
	.word	-140
	.word	4
	.word	_Label_2812
	.word	-144
	.word	4
	.word	_Label_2813
	.word	-148
	.word	4
	.word	_Label_2814
	.word	-152
	.word	4
	.word	_Label_2815
	.word	-156
	.word	4
	.word	_Label_2816
	.word	-160
	.word	4
	.word	_Label_2817
	.word	-164
	.word	4
	.word	_Label_2818
	.word	-168
	.word	4
	.word	0
_Label_2777:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2778:
	.ascii	"Pself\0"
	.align
_Label_2779:
	.byte	'?'
	.ascii	"_temp_2776\0"
	.align
_Label_2780:
	.byte	'?'
	.ascii	"_temp_2774\0"
	.align
_Label_2781:
	.byte	'?'
	.ascii	"_temp_2773\0"
	.align
_Label_2782:
	.byte	'?'
	.ascii	"_temp_2770\0"
	.align
_Label_2783:
	.byte	'?'
	.ascii	"_temp_2769\0"
	.align
_Label_2784:
	.byte	'?'
	.ascii	"_temp_2767\0"
	.align
_Label_2785:
	.byte	'?'
	.ascii	"_temp_2766\0"
	.align
_Label_2786:
	.byte	'?'
	.ascii	"_temp_2763\0"
	.align
_Label_2787:
	.byte	'?'
	.ascii	"_temp_2762\0"
	.align
_Label_2788:
	.byte	'?'
	.ascii	"_temp_2760\0"
	.align
_Label_2789:
	.byte	'?'
	.ascii	"_temp_2759\0"
	.align
_Label_2790:
	.byte	'?'
	.ascii	"_temp_2756\0"
	.align
_Label_2791:
	.byte	'?'
	.ascii	"_temp_2755\0"
	.align
_Label_2792:
	.byte	'?'
	.ascii	"_temp_2753\0"
	.align
_Label_2793:
	.byte	'?'
	.ascii	"_temp_2752\0"
	.align
_Label_2794:
	.byte	'?'
	.ascii	"_temp_2749\0"
	.align
_Label_2795:
	.byte	'?'
	.ascii	"_temp_2748\0"
	.align
_Label_2796:
	.byte	'?'
	.ascii	"_temp_2746\0"
	.align
_Label_2797:
	.byte	'?'
	.ascii	"_temp_2745\0"
	.align
_Label_2798:
	.byte	'?'
	.ascii	"_temp_2744\0"
	.align
_Label_2799:
	.byte	'?'
	.ascii	"_temp_2743\0"
	.align
_Label_2800:
	.byte	'?'
	.ascii	"_temp_2740\0"
	.align
_Label_2801:
	.byte	'?'
	.ascii	"_temp_2739\0"
	.align
_Label_2802:
	.byte	'?'
	.ascii	"_temp_2738\0"
	.align
_Label_2803:
	.byte	'?'
	.ascii	"_temp_2737\0"
	.align
_Label_2804:
	.byte	'?'
	.ascii	"_temp_2736\0"
	.align
_Label_2805:
	.byte	'?'
	.ascii	"_temp_2735\0"
	.align
_Label_2806:
	.byte	'?'
	.ascii	"_temp_2734\0"
	.align
_Label_2807:
	.byte	'?'
	.ascii	"_temp_2733\0"
	.align
_Label_2808:
	.byte	'?'
	.ascii	"_temp_2732\0"
	.align
_Label_2809:
	.byte	'?'
	.ascii	"_temp_2731\0"
	.align
_Label_2810:
	.byte	'?'
	.ascii	"_temp_2730\0"
	.align
_Label_2811:
	.byte	'?'
	.ascii	"_temp_2729\0"
	.align
_Label_2812:
	.byte	'?'
	.ascii	"_temp_2728\0"
	.align
_Label_2813:
	.byte	'?'
	.ascii	"_temp_2727\0"
	.align
_Label_2814:
	.byte	'?'
	.ascii	"_temp_2726\0"
	.align
_Label_2815:
	.byte	'?'
	.ascii	"_temp_2725\0"
	.align
_Label_2816:
	.byte	'?'
	.ascii	"_temp_2720\0"
	.align
_Label_2817:
	.byte	'?'
	.ascii	"_temp_2719\0"
	.align
_Label_2818:
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
_Label_4159:
	push	r0
	sub	r1,1,r1
	bne	_Label_4159
	mov	1283,r13		! source line 1283
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1288,r13		! source line 1288
	mov	"\0\0RE",r10
!   _temp_2821 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2821 [entry ] into _temp_2822
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
!   Data Move: _temp_2820 = *_temp_2822  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2819 = _temp_2820 AND -8192		(int)
	load	[r14+-20],r1
	mov	-8192,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_2819  (sizeInBytes=4)
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
	.word	_Label_2823
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2824
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2825
	.word	12
	.word	4
	.word	_Label_2826
	.word	-12
	.word	4
	.word	_Label_2827
	.word	-16
	.word	4
	.word	_Label_2828
	.word	-20
	.word	4
	.word	_Label_2829
	.word	-24
	.word	4
	.word	0
_Label_2823:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractFrameAddr\0"
	.align
_Label_2824:
	.ascii	"Pself\0"
	.align
_Label_2825:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2826:
	.byte	'?'
	.ascii	"_temp_2822\0"
	.align
_Label_2827:
	.byte	'?'
	.ascii	"_temp_2821\0"
	.align
_Label_2828:
	.byte	'?'
	.ascii	"_temp_2820\0"
	.align
_Label_2829:
	.byte	'?'
	.ascii	"_temp_2819\0"
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
_Label_4160:
	push	r0
	sub	r1,1,r1
	bne	_Label_4160
	mov	1293,r13		! source line 1293
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1297,r13		! source line 1297
	mov	"\0\0RE",r10
!   _temp_2832 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2832 [entry ] into _temp_2833
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
!   Data Move: _temp_2831 = *_temp_2833  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2830 = _temp_2831 AND 8176		(int)
	load	[r14+-20],r1
	mov	8176,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_2830  (sizeInBytes=4)
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
	.word	_Label_2834
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2835
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2836
	.word	12
	.word	4
	.word	_Label_2837
	.word	-12
	.word	4
	.word	_Label_2838
	.word	-16
	.word	4
	.word	_Label_2839
	.word	-20
	.word	4
	.word	_Label_2840
	.word	-24
	.word	4
	.word	0
_Label_2834:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractUndefinedBits\0"
	.align
_Label_2835:
	.ascii	"Pself\0"
	.align
_Label_2836:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2837:
	.byte	'?'
	.ascii	"_temp_2833\0"
	.align
_Label_2838:
	.byte	'?'
	.ascii	"_temp_2832\0"
	.align
_Label_2839:
	.byte	'?'
	.ascii	"_temp_2831\0"
	.align
_Label_2840:
	.byte	'?'
	.ascii	"_temp_2830\0"
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
_Label_4161:
	push	r0
	sub	r1,1,r1
	bne	_Label_4161
	mov	1302,r13		! source line 1302
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1307,r13		! source line 1307
	mov	"\0\0AS",r10
!   _temp_2841 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-36]
!   Move address of _temp_2841 [entry ] into _temp_2842
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
!   _temp_2846 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2846 [entry ] into _temp_2847
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
!   Data Move: _temp_2845 = *_temp_2847  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2844 = _temp_2845 AND 8191		(int)
	load	[r14+-20],r1
	mov	8191,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   _temp_2843 = _temp_2844 OR frameAddr		(int)
	load	[r14+-24],r1
	load	[r14+16],r2
	or	r1,r2,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2842 = _temp_2843  (sizeInBytes=4)
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
	.word	_Label_2848
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2849
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2850
	.word	12
	.word	4
	.word	_Label_2851
	.word	16
	.word	4
	.word	_Label_2852
	.word	-12
	.word	4
	.word	_Label_2853
	.word	-16
	.word	4
	.word	_Label_2854
	.word	-20
	.word	4
	.word	_Label_2855
	.word	-24
	.word	4
	.word	_Label_2856
	.word	-28
	.word	4
	.word	_Label_2857
	.word	-32
	.word	4
	.word	_Label_2858
	.word	-36
	.word	4
	.word	0
_Label_2848:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetFrameAddr\0"
	.align
_Label_2849:
	.ascii	"Pself\0"
	.align
_Label_2850:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2851:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_2852:
	.byte	'?'
	.ascii	"_temp_2847\0"
	.align
_Label_2853:
	.byte	'?'
	.ascii	"_temp_2846\0"
	.align
_Label_2854:
	.byte	'?'
	.ascii	"_temp_2845\0"
	.align
_Label_2855:
	.byte	'?'
	.ascii	"_temp_2844\0"
	.align
_Label_2856:
	.byte	'?'
	.ascii	"_temp_2843\0"
	.align
_Label_2857:
	.byte	'?'
	.ascii	"_temp_2842\0"
	.align
_Label_2858:
	.byte	'?'
	.ascii	"_temp_2841\0"
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
_Label_4162:
	push	r0
	sub	r1,1,r1
	bne	_Label_4162
	mov	1312,r13		! source line 1312
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1316,r13		! source line 1316
	mov	"\0\0RE",r10
!   _temp_2862 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2862 [entry ] into _temp_2863
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
!   Data Move: _temp_2861 = *_temp_2863  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2860 = _temp_2861 AND 8		(int)
	load	[r14+-24],r1
	mov	8,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2860) then goto _Label_2864
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2864
!   _temp_2859 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2865
_Label_2864:
!   _temp_2859 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2865:
!   ReturnResult: _temp_2859  (sizeInBytes=1)
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
	.word	_Label_2866
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2867
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2868
	.word	12
	.word	4
	.word	_Label_2869
	.word	-16
	.word	4
	.word	_Label_2870
	.word	-20
	.word	4
	.word	_Label_2871
	.word	-24
	.word	4
	.word	_Label_2872
	.word	-28
	.word	4
	.word	_Label_2873
	.word	-9
	.word	1
	.word	0
_Label_2866:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsDirty\0"
	.align
_Label_2867:
	.ascii	"Pself\0"
	.align
_Label_2868:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2869:
	.byte	'?'
	.ascii	"_temp_2863\0"
	.align
_Label_2870:
	.byte	'?'
	.ascii	"_temp_2862\0"
	.align
_Label_2871:
	.byte	'?'
	.ascii	"_temp_2861\0"
	.align
_Label_2872:
	.byte	'?'
	.ascii	"_temp_2860\0"
	.align
_Label_2873:
	.byte	'C'
	.ascii	"_temp_2859\0"
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
_Label_4163:
	push	r0
	sub	r1,1,r1
	bne	_Label_4163
	mov	1321,r13		! source line 1321
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1325,r13		! source line 1325
	mov	"\0\0RE",r10
!   _temp_2877 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2877 [entry ] into _temp_2878
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
!   Data Move: _temp_2876 = *_temp_2878  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2875 = _temp_2876 AND 4		(int)
	load	[r14+-24],r1
	mov	4,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2875) then goto _Label_2879
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2879
!   _temp_2874 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2880
_Label_2879:
!   _temp_2874 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2880:
!   ReturnResult: _temp_2874  (sizeInBytes=1)
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
	.word	_Label_2881
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2882
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2883
	.word	12
	.word	4
	.word	_Label_2884
	.word	-16
	.word	4
	.word	_Label_2885
	.word	-20
	.word	4
	.word	_Label_2886
	.word	-24
	.word	4
	.word	_Label_2887
	.word	-28
	.word	4
	.word	_Label_2888
	.word	-9
	.word	1
	.word	0
_Label_2881:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsReferenced\0"
	.align
_Label_2882:
	.ascii	"Pself\0"
	.align
_Label_2883:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2884:
	.byte	'?'
	.ascii	"_temp_2878\0"
	.align
_Label_2885:
	.byte	'?'
	.ascii	"_temp_2877\0"
	.align
_Label_2886:
	.byte	'?'
	.ascii	"_temp_2876\0"
	.align
_Label_2887:
	.byte	'?'
	.ascii	"_temp_2875\0"
	.align
_Label_2888:
	.byte	'C'
	.ascii	"_temp_2874\0"
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
_Label_4164:
	push	r0
	sub	r1,1,r1
	bne	_Label_4164
	mov	1330,r13		! source line 1330
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1334,r13		! source line 1334
	mov	"\0\0RE",r10
!   _temp_2892 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2892 [entry ] into _temp_2893
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
!   Data Move: _temp_2891 = *_temp_2893  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2890 = _temp_2891 AND 2		(int)
	load	[r14+-24],r1
	mov	2,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2890) then goto _Label_2894
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2894
!   _temp_2889 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2895
_Label_2894:
!   _temp_2889 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2895:
!   ReturnResult: _temp_2889  (sizeInBytes=1)
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
	.word	_Label_2896
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2897
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2898
	.word	12
	.word	4
	.word	_Label_2899
	.word	-16
	.word	4
	.word	_Label_2900
	.word	-20
	.word	4
	.word	_Label_2901
	.word	-24
	.word	4
	.word	_Label_2902
	.word	-28
	.word	4
	.word	_Label_2903
	.word	-9
	.word	1
	.word	0
_Label_2896:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsWritable\0"
	.align
_Label_2897:
	.ascii	"Pself\0"
	.align
_Label_2898:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2899:
	.byte	'?'
	.ascii	"_temp_2893\0"
	.align
_Label_2900:
	.byte	'?'
	.ascii	"_temp_2892\0"
	.align
_Label_2901:
	.byte	'?'
	.ascii	"_temp_2891\0"
	.align
_Label_2902:
	.byte	'?'
	.ascii	"_temp_2890\0"
	.align
_Label_2903:
	.byte	'C'
	.ascii	"_temp_2889\0"
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
_Label_4165:
	push	r0
	sub	r1,1,r1
	bne	_Label_4165
	mov	1339,r13		! source line 1339
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1343,r13		! source line 1343
	mov	"\0\0RE",r10
!   _temp_2907 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2907 [entry ] into _temp_2908
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
!   Data Move: _temp_2906 = *_temp_2908  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2905 = _temp_2906 AND 1		(int)
	load	[r14+-24],r1
	mov	1,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2905) then goto _Label_2909
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2909
!   _temp_2904 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2910
_Label_2909:
!   _temp_2904 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2910:
!   ReturnResult: _temp_2904  (sizeInBytes=1)
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
	.word	_Label_2911
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2912
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2913
	.word	12
	.word	4
	.word	_Label_2914
	.word	-16
	.word	4
	.word	_Label_2915
	.word	-20
	.word	4
	.word	_Label_2916
	.word	-24
	.word	4
	.word	_Label_2917
	.word	-28
	.word	4
	.word	_Label_2918
	.word	-9
	.word	1
	.word	0
_Label_2911:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsValid\0"
	.align
_Label_2912:
	.ascii	"Pself\0"
	.align
_Label_2913:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2914:
	.byte	'?'
	.ascii	"_temp_2908\0"
	.align
_Label_2915:
	.byte	'?'
	.ascii	"_temp_2907\0"
	.align
_Label_2916:
	.byte	'?'
	.ascii	"_temp_2906\0"
	.align
_Label_2917:
	.byte	'?'
	.ascii	"_temp_2905\0"
	.align
_Label_2918:
	.byte	'C'
	.ascii	"_temp_2904\0"
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
_Label_4166:
	push	r0
	sub	r1,1,r1
	bne	_Label_4166
	mov	1348,r13		! source line 1348
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1352,r13		! source line 1352
	mov	"\0\0AS",r10
!   _temp_2919 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2919 [entry ] into _temp_2920
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
!   _temp_2923 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2923 [entry ] into _temp_2924
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
!   Data Move: _temp_2922 = *_temp_2924  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2921 = _temp_2922 OR 8		(int)
	load	[r14+-20],r1
	mov	8,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2920 = _temp_2921  (sizeInBytes=4)
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
	.word	_Label_2925
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2926
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2927
	.word	12
	.word	4
	.word	_Label_2928
	.word	-12
	.word	4
	.word	_Label_2929
	.word	-16
	.word	4
	.word	_Label_2930
	.word	-20
	.word	4
	.word	_Label_2931
	.word	-24
	.word	4
	.word	_Label_2932
	.word	-28
	.word	4
	.word	_Label_2933
	.word	-32
	.word	4
	.word	0
_Label_2925:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetDirty\0"
	.align
_Label_2926:
	.ascii	"Pself\0"
	.align
_Label_2927:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2928:
	.byte	'?'
	.ascii	"_temp_2924\0"
	.align
_Label_2929:
	.byte	'?'
	.ascii	"_temp_2923\0"
	.align
_Label_2930:
	.byte	'?'
	.ascii	"_temp_2922\0"
	.align
_Label_2931:
	.byte	'?'
	.ascii	"_temp_2921\0"
	.align
_Label_2932:
	.byte	'?'
	.ascii	"_temp_2920\0"
	.align
_Label_2933:
	.byte	'?'
	.ascii	"_temp_2919\0"
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
_Label_4167:
	push	r0
	sub	r1,1,r1
	bne	_Label_4167
	mov	1357,r13		! source line 1357
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1361,r13		! source line 1361
	mov	"\0\0AS",r10
!   _temp_2934 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2934 [entry ] into _temp_2935
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
!   _temp_2938 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2938 [entry ] into _temp_2939
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
!   Data Move: _temp_2937 = *_temp_2939  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2936 = _temp_2937 OR 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2935 = _temp_2936  (sizeInBytes=4)
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
	.word	_Label_2940
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2941
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2942
	.word	12
	.word	4
	.word	_Label_2943
	.word	-12
	.word	4
	.word	_Label_2944
	.word	-16
	.word	4
	.word	_Label_2945
	.word	-20
	.word	4
	.word	_Label_2946
	.word	-24
	.word	4
	.word	_Label_2947
	.word	-28
	.word	4
	.word	_Label_2948
	.word	-32
	.word	4
	.word	0
_Label_2940:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetReferenced\0"
	.align
_Label_2941:
	.ascii	"Pself\0"
	.align
_Label_2942:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2943:
	.byte	'?'
	.ascii	"_temp_2939\0"
	.align
_Label_2944:
	.byte	'?'
	.ascii	"_temp_2938\0"
	.align
_Label_2945:
	.byte	'?'
	.ascii	"_temp_2937\0"
	.align
_Label_2946:
	.byte	'?'
	.ascii	"_temp_2936\0"
	.align
_Label_2947:
	.byte	'?'
	.ascii	"_temp_2935\0"
	.align
_Label_2948:
	.byte	'?'
	.ascii	"_temp_2934\0"
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
_Label_4168:
	push	r0
	sub	r1,1,r1
	bne	_Label_4168
	mov	1366,r13		! source line 1366
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1370,r13		! source line 1370
	mov	"\0\0AS",r10
!   _temp_2949 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2949 [entry ] into _temp_2950
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
!   _temp_2953 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2953 [entry ] into _temp_2954
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
!   Data Move: _temp_2952 = *_temp_2954  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2951 = _temp_2952 OR 2		(int)
	load	[r14+-20],r1
	mov	2,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2950 = _temp_2951  (sizeInBytes=4)
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
	.word	_Label_2955
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2956
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2957
	.word	12
	.word	4
	.word	_Label_2958
	.word	-12
	.word	4
	.word	_Label_2959
	.word	-16
	.word	4
	.word	_Label_2960
	.word	-20
	.word	4
	.word	_Label_2961
	.word	-24
	.word	4
	.word	_Label_2962
	.word	-28
	.word	4
	.word	_Label_2963
	.word	-32
	.word	4
	.word	0
_Label_2955:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetWritable\0"
	.align
_Label_2956:
	.ascii	"Pself\0"
	.align
_Label_2957:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2958:
	.byte	'?'
	.ascii	"_temp_2954\0"
	.align
_Label_2959:
	.byte	'?'
	.ascii	"_temp_2953\0"
	.align
_Label_2960:
	.byte	'?'
	.ascii	"_temp_2952\0"
	.align
_Label_2961:
	.byte	'?'
	.ascii	"_temp_2951\0"
	.align
_Label_2962:
	.byte	'?'
	.ascii	"_temp_2950\0"
	.align
_Label_2963:
	.byte	'?'
	.ascii	"_temp_2949\0"
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
_Label_4169:
	push	r0
	sub	r1,1,r1
	bne	_Label_4169
	mov	1375,r13		! source line 1375
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1379,r13		! source line 1379
	mov	"\0\0AS",r10
!   _temp_2964 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2964 [entry ] into _temp_2965
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
!   _temp_2968 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2968 [entry ] into _temp_2969
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
!   Data Move: _temp_2967 = *_temp_2969  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2966 = _temp_2967 OR 1		(int)
	load	[r14+-20],r1
	mov	1,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2965 = _temp_2966  (sizeInBytes=4)
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
	.word	_Label_2970
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2971
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2972
	.word	12
	.word	4
	.word	_Label_2973
	.word	-12
	.word	4
	.word	_Label_2974
	.word	-16
	.word	4
	.word	_Label_2975
	.word	-20
	.word	4
	.word	_Label_2976
	.word	-24
	.word	4
	.word	_Label_2977
	.word	-28
	.word	4
	.word	_Label_2978
	.word	-32
	.word	4
	.word	0
_Label_2970:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetValid\0"
	.align
_Label_2971:
	.ascii	"Pself\0"
	.align
_Label_2972:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2973:
	.byte	'?'
	.ascii	"_temp_2969\0"
	.align
_Label_2974:
	.byte	'?'
	.ascii	"_temp_2968\0"
	.align
_Label_2975:
	.byte	'?'
	.ascii	"_temp_2967\0"
	.align
_Label_2976:
	.byte	'?'
	.ascii	"_temp_2966\0"
	.align
_Label_2977:
	.byte	'?'
	.ascii	"_temp_2965\0"
	.align
_Label_2978:
	.byte	'?'
	.ascii	"_temp_2964\0"
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
_Label_4170:
	push	r0
	sub	r1,1,r1
	bne	_Label_4170
	mov	1384,r13		! source line 1384
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1388,r13		! source line 1388
	mov	"\0\0AS",r10
!   _temp_2979 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2979 [entry ] into _temp_2980
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
!   _temp_2983 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2983 [entry ] into _temp_2984
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
!   Data Move: _temp_2982 = *_temp_2984  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2981 = _temp_2982 AND -9		(int)
	load	[r14+-20],r1
	mov	-9,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2980 = _temp_2981  (sizeInBytes=4)
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
	.word	_Label_2985
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2986
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2987
	.word	12
	.word	4
	.word	_Label_2988
	.word	-12
	.word	4
	.word	_Label_2989
	.word	-16
	.word	4
	.word	_Label_2990
	.word	-20
	.word	4
	.word	_Label_2991
	.word	-24
	.word	4
	.word	_Label_2992
	.word	-28
	.word	4
	.word	_Label_2993
	.word	-32
	.word	4
	.word	0
_Label_2985:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearDirty\0"
	.align
_Label_2986:
	.ascii	"Pself\0"
	.align
_Label_2987:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2988:
	.byte	'?'
	.ascii	"_temp_2984\0"
	.align
_Label_2989:
	.byte	'?'
	.ascii	"_temp_2983\0"
	.align
_Label_2990:
	.byte	'?'
	.ascii	"_temp_2982\0"
	.align
_Label_2991:
	.byte	'?'
	.ascii	"_temp_2981\0"
	.align
_Label_2992:
	.byte	'?'
	.ascii	"_temp_2980\0"
	.align
_Label_2993:
	.byte	'?'
	.ascii	"_temp_2979\0"
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
_Label_4171:
	push	r0
	sub	r1,1,r1
	bne	_Label_4171
	mov	1393,r13		! source line 1393
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1397,r13		! source line 1397
	mov	"\0\0AS",r10
!   _temp_2994 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2994 [entry ] into _temp_2995
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
!   _temp_2998 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2998 [entry ] into _temp_2999
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
!   Data Move: _temp_2997 = *_temp_2999  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2996 = _temp_2997 AND -5		(int)
	load	[r14+-20],r1
	mov	-5,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2995 = _temp_2996  (sizeInBytes=4)
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
	.word	_Label_3000
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_3001
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3002
	.word	12
	.word	4
	.word	_Label_3003
	.word	-12
	.word	4
	.word	_Label_3004
	.word	-16
	.word	4
	.word	_Label_3005
	.word	-20
	.word	4
	.word	_Label_3006
	.word	-24
	.word	4
	.word	_Label_3007
	.word	-28
	.word	4
	.word	_Label_3008
	.word	-32
	.word	4
	.word	0
_Label_3000:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearReferenced\0"
	.align
_Label_3001:
	.ascii	"Pself\0"
	.align
_Label_3002:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3003:
	.byte	'?'
	.ascii	"_temp_2999\0"
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
_Label_4172:
	push	r0
	sub	r1,1,r1
	bne	_Label_4172
	mov	1402,r13		! source line 1402
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1406,r13		! source line 1406
	mov	"\0\0AS",r10
!   _temp_3009 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_3009 [entry ] into _temp_3010
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
!   _temp_3013 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_3013 [entry ] into _temp_3014
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
!   Data Move: _temp_3012 = *_temp_3014  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_3011 = _temp_3012 AND -3		(int)
	load	[r14+-20],r1
	mov	-3,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3010 = _temp_3011  (sizeInBytes=4)
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
	.word	_Label_3015
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_3016
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3017
	.word	12
	.word	4
	.word	_Label_3018
	.word	-12
	.word	4
	.word	_Label_3019
	.word	-16
	.word	4
	.word	_Label_3020
	.word	-20
	.word	4
	.word	_Label_3021
	.word	-24
	.word	4
	.word	_Label_3022
	.word	-28
	.word	4
	.word	_Label_3023
	.word	-32
	.word	4
	.word	0
_Label_3015:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearWritable\0"
	.align
_Label_3016:
	.ascii	"Pself\0"
	.align
_Label_3017:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3018:
	.byte	'?'
	.ascii	"_temp_3014\0"
	.align
_Label_3019:
	.byte	'?'
	.ascii	"_temp_3013\0"
	.align
_Label_3020:
	.byte	'?'
	.ascii	"_temp_3012\0"
	.align
_Label_3021:
	.byte	'?'
	.ascii	"_temp_3011\0"
	.align
_Label_3022:
	.byte	'?'
	.ascii	"_temp_3010\0"
	.align
_Label_3023:
	.byte	'?'
	.ascii	"_temp_3009\0"
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
_Label_4173:
	push	r0
	sub	r1,1,r1
	bne	_Label_4173
	mov	1411,r13		! source line 1411
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1415,r13		! source line 1415
	mov	"\0\0AS",r10
!   _temp_3024 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_3024 [entry ] into _temp_3025
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
!   _temp_3028 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_3028 [entry ] into _temp_3029
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
!   Data Move: _temp_3027 = *_temp_3029  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_3026 = _temp_3027 AND -2		(int)
	load	[r14+-20],r1
	mov	-2,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3025 = _temp_3026  (sizeInBytes=4)
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
	.word	_Label_3030
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_3031
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3032
	.word	12
	.word	4
	.word	_Label_3033
	.word	-12
	.word	4
	.word	_Label_3034
	.word	-16
	.word	4
	.word	_Label_3035
	.word	-20
	.word	4
	.word	_Label_3036
	.word	-24
	.word	4
	.word	_Label_3037
	.word	-28
	.word	4
	.word	_Label_3038
	.word	-32
	.word	4
	.word	0
_Label_3030:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearValid\0"
	.align
_Label_3031:
	.ascii	"Pself\0"
	.align
_Label_3032:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3033:
	.byte	'?'
	.ascii	"_temp_3029\0"
	.align
_Label_3034:
	.byte	'?'
	.ascii	"_temp_3028\0"
	.align
_Label_3035:
	.byte	'?'
	.ascii	"_temp_3027\0"
	.align
_Label_3036:
	.byte	'?'
	.ascii	"_temp_3026\0"
	.align
_Label_3037:
	.byte	'?'
	.ascii	"_temp_3025\0"
	.align
_Label_3038:
	.byte	'?'
	.ascii	"_temp_3024\0"
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
_Label_4174:
	push	r0
	sub	r1,1,r1
	bne	_Label_4174
	mov	1420,r13		! source line 1420
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3040 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_3040 [0 ] into _temp_3041
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
!   _temp_3039 = _temp_3041		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_3042 = numberOfPages * 4		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	4,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3039  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_3042  sizeInBytes=4
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
	.word	_Label_3043
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_3044
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3045
	.word	-12
	.word	4
	.word	_Label_3046
	.word	-16
	.word	4
	.word	_Label_3047
	.word	-20
	.word	4
	.word	_Label_3048
	.word	-24
	.word	4
	.word	0
_Label_3043:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetToThisPageTable\0"
	.align
_Label_3044:
	.ascii	"Pself\0"
	.align
_Label_3045:
	.byte	'?'
	.ascii	"_temp_3042\0"
	.align
_Label_3046:
	.byte	'?'
	.ascii	"_temp_3041\0"
	.align
_Label_3047:
	.byte	'?'
	.ascii	"_temp_3040\0"
	.align
_Label_3048:
	.byte	'?'
	.ascii	"_temp_3039\0"
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
_Label_4175:
	push	r0
	sub	r1,1,r1
	bne	_Label_4175
	mov	1431,r13		! source line 1431
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1446,r13		! source line 1446
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_3049
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_3049
	jmp	_Label_3050
_Label_3049:
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
	jmp	_Label_3051
_Label_3050:
! ELSE...
	mov	1448,r13		! source line 1448
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1448,r13		! source line 1448
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_3053		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3053
!	jmp	_Label_3052
_Label_3052:
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
_Label_3053:
! END IF...
_Label_3051:
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
_Label_3054:
!	jmp	_Label_3055
_Label_3055:
	mov	1455,r13		! source line 1455
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1456,r13		! source line 1456
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_3058		(int)
	load	[r14+-40],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_3058
!	jmp	_Label_3057
_Label_3057:
! THEN...
	mov	1457,r13		! source line 1457
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3059 = _StringConst_128
	set	_StringConst_128,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_3059  sizeInBytes=4
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
_Label_3058:
! IF STATEMENT...
	mov	1460,r13		! source line 1460
	mov	"\0\0IF",r10
	mov	1460,r13		! source line 1460
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_3063) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3062  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_3062 then goto _Label_3061 else goto _Label_3060
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3060
	jmp	_Label_3061
_Label_3060:
! THEN...
	mov	1461,r13		! source line 1461
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3064 = _StringConst_129
	set	_StringConst_129,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3064  sizeInBytes=4
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
_Label_3061:
! ASSIGNMENT STATEMENT...
	mov	1464,r13		! source line 1464
	mov	"\0\0AS",r10
	mov	1464,r13		! source line 1464
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_3066) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3065  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   fromAddr = _temp_3065 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! WHILE STATEMENT...
	mov	1466,r13		! source line 1466
	mov	"\0\0WH",r10
_Label_3067:
!   if offset >= 8192 then goto _Label_3069		(int)
	load	[r14+-44],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3069
!	jmp	_Label_3068
_Label_3068:
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
!   Data Move: _temp_3070 = *fromAddr  (sizeInBytes=1)
	load	[r14+-48],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *kernelAddr = _temp_3070  (sizeInBytes=1)
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
!   if copiedSoFar != numBytes then goto _Label_3072		(int)
	load	[r14+-36],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_3072
!	jmp	_Label_3071
_Label_3071:
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
_Label_3072:
! END WHILE...
	jmp	_Label_3067
_Label_3069:
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
	jmp	_Label_3054
_Label_3056:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_19:
	.word	_sourceFileName
	.word	_Label_3073
	.word	16		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_3074
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3075
	.word	12
	.word	4
	.word	_Label_3076
	.word	16
	.word	4
	.word	_Label_3077
	.word	20
	.word	4
	.word	_Label_3078
	.word	-9
	.word	1
	.word	_Label_3079
	.word	-16
	.word	4
	.word	_Label_3080
	.word	-20
	.word	4
	.word	_Label_3081
	.word	-24
	.word	4
	.word	_Label_3082
	.word	-28
	.word	4
	.word	_Label_3083
	.word	-10
	.word	1
	.word	_Label_3084
	.word	-32
	.word	4
	.word	_Label_3085
	.word	-36
	.word	4
	.word	_Label_3086
	.word	-40
	.word	4
	.word	_Label_3087
	.word	-44
	.word	4
	.word	_Label_3088
	.word	-48
	.word	4
	.word	0
_Label_3073:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesFromVirtual\0"
	.align
_Label_3074:
	.ascii	"Pself\0"
	.align
_Label_3075:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_3076:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_3077:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3078:
	.byte	'C'
	.ascii	"_temp_3070\0"
	.align
_Label_3079:
	.byte	'?'
	.ascii	"_temp_3066\0"
	.align
_Label_3080:
	.byte	'?'
	.ascii	"_temp_3065\0"
	.align
_Label_3081:
	.byte	'?'
	.ascii	"_temp_3064\0"
	.align
_Label_3082:
	.byte	'?'
	.ascii	"_temp_3063\0"
	.align
_Label_3083:
	.byte	'C'
	.ascii	"_temp_3062\0"
	.align
_Label_3084:
	.byte	'?'
	.ascii	"_temp_3059\0"
	.align
_Label_3085:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_3086:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_3087:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_3088:
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
_Label_4176:
	push	r0
	sub	r1,1,r1
	bne	_Label_4176
	mov	1485,r13		! source line 1485
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1496,r13		! source line 1496
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_3089
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_3089
	jmp	_Label_3090
_Label_3089:
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
	jmp	_Label_3091
_Label_3090:
! ELSE...
	mov	1498,r13		! source line 1498
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1498,r13		! source line 1498
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_3093		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3093
!	jmp	_Label_3092
_Label_3092:
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
_Label_3093:
! END IF...
_Label_3091:
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
_Label_3094:
!	jmp	_Label_3095
_Label_3095:
	mov	1503,r13		! source line 1503
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1504,r13		! source line 1504
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_3100		(int)
	load	[r14+-36],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_3100
	jmp	_Label_3097
_Label_3100:
	mov	1505,r13		! source line 1505
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_3102) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3101  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_3101 then goto _Label_3099 else goto _Label_3097
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_3097
	jmp	_Label_3099
_Label_3099:
	mov	1506,r13		! source line 1506
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_3104) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3103  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_3103 then goto _Label_3098 else goto _Label_3097
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3097
	jmp	_Label_3098
_Label_3097:
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
_Label_3098:
! ASSIGNMENT STATEMENT...
	mov	1509,r13		! source line 1509
	mov	"\0\0AS",r10
	mov	1509,r13		! source line 1509
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_3106) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3105  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   destAddr = _temp_3105 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-40],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1510,r13		! source line 1510
	mov	"\0\0WH",r10
_Label_3107:
!   if offset >= 8192 then goto _Label_3109		(int)
	load	[r14+-40],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3109
!	jmp	_Label_3108
_Label_3108:
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
!   Data Move: _temp_3110 = *kernelAddr  (sizeInBytes=1)
	load	[r14+16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *destAddr = _temp_3110  (sizeInBytes=1)
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
!   if copiedSoFar != numBytes then goto _Label_3112		(int)
	load	[r14+-32],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_3112
!	jmp	_Label_3111
_Label_3111:
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
_Label_3112:
! END WHILE...
	jmp	_Label_3107
_Label_3109:
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
	jmp	_Label_3094
_Label_3096:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_20:
	.word	_sourceFileName
	.word	_Label_3113
	.word	16		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_3114
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3115
	.word	12
	.word	4
	.word	_Label_3116
	.word	16
	.word	4
	.word	_Label_3117
	.word	20
	.word	4
	.word	_Label_3118
	.word	-9
	.word	1
	.word	_Label_3119
	.word	-16
	.word	4
	.word	_Label_3120
	.word	-20
	.word	4
	.word	_Label_3121
	.word	-24
	.word	4
	.word	_Label_3122
	.word	-10
	.word	1
	.word	_Label_3123
	.word	-28
	.word	4
	.word	_Label_3124
	.word	-11
	.word	1
	.word	_Label_3125
	.word	-32
	.word	4
	.word	_Label_3126
	.word	-36
	.word	4
	.word	_Label_3127
	.word	-40
	.word	4
	.word	_Label_3128
	.word	-44
	.word	4
	.word	0
_Label_3113:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesToVirtual\0"
	.align
_Label_3114:
	.ascii	"Pself\0"
	.align
_Label_3115:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_3116:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_3117:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3118:
	.byte	'C'
	.ascii	"_temp_3110\0"
	.align
_Label_3119:
	.byte	'?'
	.ascii	"_temp_3106\0"
	.align
_Label_3120:
	.byte	'?'
	.ascii	"_temp_3105\0"
	.align
_Label_3121:
	.byte	'?'
	.ascii	"_temp_3104\0"
	.align
_Label_3122:
	.byte	'C'
	.ascii	"_temp_3103\0"
	.align
_Label_3123:
	.byte	'?'
	.ascii	"_temp_3102\0"
	.align
_Label_3124:
	.byte	'C'
	.ascii	"_temp_3101\0"
	.align
_Label_3125:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_3126:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_3127:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_3128:
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
_Label_4177:
	push	r0
	sub	r1,1,r1
	bne	_Label_4177
	mov	1527,r13		! source line 1527
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1551,r13		! source line 1551
	mov	"\0\0IF",r10
	mov	1551,r13		! source line 1551
	mov	"\0\0SE",r10
!   _temp_3132 = &sourceSize
	add	r14,-44,r1
	store	r1,[r14+-36]
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_3133) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_3132  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_3131  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   if _temp_3131 >= 4 then goto _Label_3130		(int)
	load	[r14+-40],r1
	mov	4,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3130
!	jmp	_Label_3129
_Label_3129:
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
_Label_3130:
! IF STATEMENT...
	mov	1558,r13		! source line 1558
	mov	"\0\0IF",r10
!   if sourceSize <= maxSize then goto _Label_3135		(int)
	load	[r14+-44],r1
	load	[r14+20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3135
!	jmp	_Label_3134
_Label_3134:
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
_Label_3135:
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
!   _temp_3138 = kernelAddr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-20]
!   _temp_3137 = _temp_3138 + 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   _temp_3139 = virtAddr + 4		(int)
	load	[r14+16],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
	load	[r14+8],r1
	store	r1,[r14+-12]
!   if intIsZero (_temp_3140) then goto _runtimeErrorNullPointer
	load	[r14+-12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_3137  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_3139  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_3136  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_3136  (sizeInBytes=4)
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
	.word	_Label_3141
	.word	16		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_3142
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3143
	.word	12
	.word	4
	.word	_Label_3144
	.word	16
	.word	4
	.word	_Label_3145
	.word	20
	.word	4
	.word	_Label_3146
	.word	-12
	.word	4
	.word	_Label_3147
	.word	-16
	.word	4
	.word	_Label_3148
	.word	-20
	.word	4
	.word	_Label_3149
	.word	-24
	.word	4
	.word	_Label_3150
	.word	-28
	.word	4
	.word	_Label_3151
	.word	-32
	.word	4
	.word	_Label_3152
	.word	-36
	.word	4
	.word	_Label_3153
	.word	-40
	.word	4
	.word	_Label_3154
	.word	-44
	.word	4
	.word	0
_Label_3141:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"GetStringFromVirtual\0"
	.align
_Label_3142:
	.ascii	"Pself\0"
	.align
_Label_3143:
	.byte	'P'
	.ascii	"kernelAddr\0"
	.align
_Label_3144:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_3145:
	.byte	'I'
	.ascii	"maxSize\0"
	.align
_Label_3146:
	.byte	'?'
	.ascii	"_temp_3140\0"
	.align
_Label_3147:
	.byte	'?'
	.ascii	"_temp_3139\0"
	.align
_Label_3148:
	.byte	'?'
	.ascii	"_temp_3138\0"
	.align
_Label_3149:
	.byte	'?'
	.ascii	"_temp_3137\0"
	.align
_Label_3150:
	.byte	'?'
	.ascii	"_temp_3136\0"
	.align
_Label_3151:
	.byte	'?'
	.ascii	"_temp_3133\0"
	.align
_Label_3152:
	.byte	'?'
	.ascii	"_temp_3132\0"
	.align
_Label_3153:
	.byte	'?'
	.ascii	"_temp_3131\0"
	.align
_Label_3154:
	.byte	'I'
	.ascii	"sourceSize\0"
	.align
! 
! ===============  CLASS DiskDriver  ===============
! 
! Dispatch Table:
! 
_P_Kernel_DiskDriver:
	.word	_Label_3155
	jmp	_Method_P_Kernel_DiskDriver_1	! 4:	Init
	jmp	_Method_P_Kernel_DiskDriver_2	! 8:	SynchReadSector
	jmp	_Method_P_Kernel_DiskDriver_3	! 12:	StartReadSector
	jmp	_Method_P_Kernel_DiskDriver_4	! 16:	SynchWriteSector
	jmp	_Method_P_Kernel_DiskDriver_5	! 20:	StartWriteSector
	.word	0
! 
! Class descriptor:
! 
_Label_3155:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3156
	.word	_sourceFileName
	.word	343		! line number
	.word	68		! size of instances, in bytes
	.word	_P_Kernel_DiskDriver
	.word	_P_System_Object
	.word	0
_Label_3156:
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
_Label_4178:
	push	r0
	sub	r1,1,r1
	bne	_Label_4178
	mov	2261,r13		! source line 2261
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3157 = _StringConst_130
	set	_StringConst_130,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_3157  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2262,r13		! source line 2262
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2263,r13		! source line 2263
	mov	"\0\0AS",r10
!   DISK_STATUS_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	2264,r13		! source line 2264
	mov	"\0\0AS",r10
!   DISK_COMMAND_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! ASSIGNMENT STATEMENT...
	mov	2265,r13		! source line 2265
	mov	"\0\0AS",r10
!   DISK_MEMORY_ADDRESS_REGISTER = 16776972		(4 bytes)
	set	16776972,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	2266,r13		! source line 2266
	mov	"\0\0AS",r10
!   DISK_SECTOR_NUMBER_REGISTER = 16776976		(4 bytes)
	set	16776976,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2267,r13		! source line 2267
	mov	"\0\0AS",r10
!   DISK_SECTOR_COUNT_REGISTER = 16776980		(4 bytes)
	set	16776980,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	2268,r13		! source line 2268
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2269,r13		! source line 2269
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
	mov	2270,r13		! source line 2270
	mov	"\0\0SE",r10
!   _temp_3159 = &semUsedInSynchMethods
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
	mov	2271,r13		! source line 2271
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
	mov	2272,r13		! source line 2272
	mov	"\0\0SE",r10
!   _temp_3161 = &diskBusy
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
	mov	2272,r13		! source line 2272
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
	.word	_Label_3162
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_3163
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3164
	.word	-12
	.word	4
	.word	_Label_3165
	.word	-16
	.word	4
	.word	_Label_3166
	.word	-20
	.word	4
	.word	_Label_3167
	.word	-24
	.word	4
	.word	_Label_3168
	.word	-28
	.word	4
	.word	0
_Label_3162:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_3163:
	.ascii	"Pself\0"
	.align
_Label_3164:
	.byte	'?'
	.ascii	"_temp_3161\0"
	.align
_Label_3165:
	.byte	'?'
	.ascii	"_temp_3160\0"
	.align
_Label_3166:
	.byte	'?'
	.ascii	"_temp_3159\0"
	.align
_Label_3167:
	.byte	'?'
	.ascii	"_temp_3158\0"
	.align
_Label_3168:
	.byte	'?'
	.ascii	"_temp_3157\0"
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
_Label_4179:
	push	r0
	sub	r1,1,r1
	bne	_Label_4179
	mov	2277,r13		! source line 2277
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2290,r13		! source line 2290
	mov	"\0\0SE",r10
!   _temp_3169 = &diskBusy
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
	mov	2291,r13		! source line 2291
	mov	"\0\0WH",r10
_Label_3170:
!	jmp	_Label_3171
_Label_3171:
	mov	2291,r13		! source line 2291
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2293,r13		! source line 2293
	mov	"\0\0SE",r10
!   _temp_3173 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_3174) then goto _runtimeErrorNullPointer
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
!   Prepare Argument: offset=24  value=_temp_3173  sizeInBytes=4
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
	mov	2295,r13		! source line 2295
	mov	"\0\0SE",r10
!   _temp_3175 = &semUsedInSynchMethods
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
	mov	2298,r13		! source line 2298
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_3184 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_3178
	cmp	r1,2
	be	_Label_3179
	cmp	r1,3
	be	_Label_3180
	cmp	r1,4
	be	_Label_3181
	cmp	r1,5
	be	_Label_3182
	cmp	r1,6
	be	_Label_3183
	jmp	_Label_3176
! CASE 1...
_Label_3178:
! SEND STATEMENT...
	mov	2300,r13		! source line 2300
	mov	"\0\0SE",r10
!   _temp_3185 = &diskBusy
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
	mov	2301,r13		! source line 2301
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_3179:
! CALL STATEMENT...
!   _temp_3186 = _StringConst_131
	set	_StringConst_131,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_3186  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2303,r13		! source line 2303
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_3180:
! CALL STATEMENT...
!   _temp_3187 = _StringConst_132
	set	_StringConst_132,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3187  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2305,r13		! source line 2305
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_3181:
! CALL STATEMENT...
!   _temp_3188 = _StringConst_133
	set	_StringConst_133,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3188  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2307,r13		! source line 2307
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_3182:
! BREAK STATEMENT...
	mov	2311,r13		! source line 2311
	mov	"\0\0BR",r10
	jmp	_Label_3177
! CASE 6...
_Label_3183:
! CALL STATEMENT...
!   _temp_3189 = _StringConst_134
	set	_StringConst_134,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3189  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2313,r13		! source line 2313
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_3176:
! CALL STATEMENT...
!   _temp_3190 = _StringConst_135
	set	_StringConst_135,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3190  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2315,r13		! source line 2315
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_3177:
! END WHILE...
	jmp	_Label_3170
_Label_3172:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_2:
	.word	_sourceFileName
	.word	_Label_3191
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_3192
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3193
	.word	12
	.word	4
	.word	_Label_3194
	.word	16
	.word	4
	.word	_Label_3195
	.word	20
	.word	4
	.word	_Label_3196
	.word	-12
	.word	4
	.word	_Label_3197
	.word	-16
	.word	4
	.word	_Label_3198
	.word	-20
	.word	4
	.word	_Label_3199
	.word	-24
	.word	4
	.word	_Label_3200
	.word	-28
	.word	4
	.word	_Label_3201
	.word	-32
	.word	4
	.word	_Label_3202
	.word	-36
	.word	4
	.word	_Label_3203
	.word	-40
	.word	4
	.word	_Label_3204
	.word	-44
	.word	4
	.word	_Label_3205
	.word	-48
	.word	4
	.word	_Label_3206
	.word	-52
	.word	4
	.word	0
_Label_3191:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchReadSector\0"
	.align
_Label_3192:
	.ascii	"Pself\0"
	.align
_Label_3193:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_3194:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_3195:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_3196:
	.byte	'?'
	.ascii	"_temp_3190\0"
	.align
_Label_3197:
	.byte	'?'
	.ascii	"_temp_3189\0"
	.align
_Label_3198:
	.byte	'?'
	.ascii	"_temp_3188\0"
	.align
_Label_3199:
	.byte	'?'
	.ascii	"_temp_3187\0"
	.align
_Label_3200:
	.byte	'?'
	.ascii	"_temp_3186\0"
	.align
_Label_3201:
	.byte	'?'
	.ascii	"_temp_3185\0"
	.align
_Label_3202:
	.byte	'?'
	.ascii	"_temp_3184\0"
	.align
_Label_3203:
	.byte	'?'
	.ascii	"_temp_3175\0"
	.align
_Label_3204:
	.byte	'?'
	.ascii	"_temp_3174\0"
	.align
_Label_3205:
	.byte	'?'
	.ascii	"_temp_3173\0"
	.align
_Label_3206:
	.byte	'?'
	.ascii	"_temp_3169\0"
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
	mov	2324,r13		! source line 2324
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2339,r13		! source line 2339
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2342,r13		! source line 2342
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
	mov	2343,r13		! source line 2343
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
	mov	2344,r13		! source line 2344
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
	mov	2345,r13		! source line 2345
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
	mov	2345,r13		! source line 2345
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
	.word	_Label_3207
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_3208
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3209
	.word	12
	.word	4
	.word	_Label_3210
	.word	16
	.word	4
	.word	_Label_3211
	.word	20
	.word	4
	.word	_Label_3212
	.word	24
	.word	4
	.word	0
_Label_3207:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartReadSector\0"
	.align
_Label_3208:
	.ascii	"Pself\0"
	.align
_Label_3209:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_3210:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_3211:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_3212:
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
_Label_4180:
	push	r0
	sub	r1,1,r1
	bne	_Label_4180
	mov	2350,r13		! source line 2350
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2362,r13		! source line 2362
	mov	"\0\0SE",r10
!   _temp_3213 = &diskBusy
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
	mov	2363,r13		! source line 2363
	mov	"\0\0WH",r10
_Label_3214:
!	jmp	_Label_3215
_Label_3215:
	mov	2363,r13		! source line 2363
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2364,r13		! source line 2364
	mov	"\0\0SE",r10
!   _temp_3217 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_3218) then goto _runtimeErrorNullPointer
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
!   Prepare Argument: offset=24  value=_temp_3217  sizeInBytes=4
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
	mov	2366,r13		! source line 2366
	mov	"\0\0SE",r10
!   _temp_3219 = &semUsedInSynchMethods
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
	mov	2369,r13		! source line 2369
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_3228 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_3222
	cmp	r1,2
	be	_Label_3223
	cmp	r1,3
	be	_Label_3224
	cmp	r1,4
	be	_Label_3225
	cmp	r1,5
	be	_Label_3226
	cmp	r1,6
	be	_Label_3227
	jmp	_Label_3220
! CASE 1...
_Label_3222:
! SEND STATEMENT...
	mov	2371,r13		! source line 2371
	mov	"\0\0SE",r10
!   _temp_3229 = &diskBusy
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
	mov	2372,r13		! source line 2372
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_3223:
! CALL STATEMENT...
!   _temp_3230 = _StringConst_136
	set	_StringConst_136,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_3230  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2374,r13		! source line 2374
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_3224:
! CALL STATEMENT...
!   _temp_3231 = _StringConst_137
	set	_StringConst_137,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3231  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2376,r13		! source line 2376
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_3225:
! CALL STATEMENT...
!   _temp_3232 = _StringConst_138
	set	_StringConst_138,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3232  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2378,r13		! source line 2378
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_3226:
! BREAK STATEMENT...
	mov	2382,r13		! source line 2382
	mov	"\0\0BR",r10
	jmp	_Label_3221
! CASE 6...
_Label_3227:
! CALL STATEMENT...
!   _temp_3233 = _StringConst_139
	set	_StringConst_139,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3233  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2384,r13		! source line 2384
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_3220:
! CALL STATEMENT...
!   _temp_3234 = _StringConst_140
	set	_StringConst_140,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3234  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2386,r13		! source line 2386
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_3221:
! END WHILE...
	jmp	_Label_3214
_Label_3216:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_4:
	.word	_sourceFileName
	.word	_Label_3235
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_3236
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3237
	.word	12
	.word	4
	.word	_Label_3238
	.word	16
	.word	4
	.word	_Label_3239
	.word	20
	.word	4
	.word	_Label_3240
	.word	-12
	.word	4
	.word	_Label_3241
	.word	-16
	.word	4
	.word	_Label_3242
	.word	-20
	.word	4
	.word	_Label_3243
	.word	-24
	.word	4
	.word	_Label_3244
	.word	-28
	.word	4
	.word	_Label_3245
	.word	-32
	.word	4
	.word	_Label_3246
	.word	-36
	.word	4
	.word	_Label_3247
	.word	-40
	.word	4
	.word	_Label_3248
	.word	-44
	.word	4
	.word	_Label_3249
	.word	-48
	.word	4
	.word	_Label_3250
	.word	-52
	.word	4
	.word	0
_Label_3235:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchWriteSector\0"
	.align
_Label_3236:
	.ascii	"Pself\0"
	.align
_Label_3237:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_3238:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_3239:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_3240:
	.byte	'?'
	.ascii	"_temp_3234\0"
	.align
_Label_3241:
	.byte	'?'
	.ascii	"_temp_3233\0"
	.align
_Label_3242:
	.byte	'?'
	.ascii	"_temp_3232\0"
	.align
_Label_3243:
	.byte	'?'
	.ascii	"_temp_3231\0"
	.align
_Label_3244:
	.byte	'?'
	.ascii	"_temp_3230\0"
	.align
_Label_3245:
	.byte	'?'
	.ascii	"_temp_3229\0"
	.align
_Label_3246:
	.byte	'?'
	.ascii	"_temp_3228\0"
	.align
_Label_3247:
	.byte	'?'
	.ascii	"_temp_3219\0"
	.align
_Label_3248:
	.byte	'?'
	.ascii	"_temp_3218\0"
	.align
_Label_3249:
	.byte	'?'
	.ascii	"_temp_3217\0"
	.align
_Label_3250:
	.byte	'?'
	.ascii	"_temp_3213\0"
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
	mov	2395,r13		! source line 2395
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2410,r13		! source line 2410
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2412,r13		! source line 2412
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
	mov	2413,r13		! source line 2413
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
	mov	2414,r13		! source line 2414
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
	mov	2415,r13		! source line 2415
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
	mov	2415,r13		! source line 2415
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
	.word	_Label_3251
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_3252
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3253
	.word	12
	.word	4
	.word	_Label_3254
	.word	16
	.word	4
	.word	_Label_3255
	.word	20
	.word	4
	.word	_Label_3256
	.word	24
	.word	4
	.word	0
_Label_3251:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartWriteSector\0"
	.align
_Label_3252:
	.ascii	"Pself\0"
	.align
_Label_3253:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_3254:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_3255:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_3256:
	.byte	'P'
	.ascii	"whoCares\0"
	.align
! 
! ===============  CLASS FileManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileManager:
	.word	_Label_3257
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
_Label_3257:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3258
	.word	_sourceFileName
	.word	366		! line number
	.word	800		! size of instances, in bytes
	.word	_P_Kernel_FileManager
	.word	_P_System_Object
	.word	0
_Label_3258:
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
_Label_4181:
	push	r0
	sub	r1,1,r1
	bne	_Label_4181
	mov	2426,r13		! source line 2426
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3259 = _StringConst_141
	set	_StringConst_141,r1
	store	r1,[r14+-940]
!   Prepare Argument: offset=8  value=_temp_3259  sizeInBytes=4
	load	[r14+-940],r1
	store	r1,[r15+0]
!   Call the function
	mov	2433,r13		! source line 2433
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2434,r13		! source line 2434
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
	mov	2435,r13		! source line 2435
	mov	"\0\0SE",r10
!   _temp_3261 = &fileManagerLock
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
	mov	2438,r13		! source line 2438
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
	mov	2439,r13		! source line 2439
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
	mov	2440,r13		! source line 2440
	mov	"\0\0SE",r10
!   _temp_3264 = &anFCBBecameFree
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
	mov	2441,r13		! source line 2441
	mov	"\0\0AS",r10
!   _temp_3265 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-916]
!   NEW ARRAY Constructor...
!   _temp_3267 = &_temp_3266
	add	r14,-912,r1
	store	r1,[r14+-508]
!   _temp_3267 = _temp_3267 + 4
	load	[r14+-508],r1
	add	r1,4,r1
	store	r1,[r14+-508]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_3269 = zeros  (sizeInBytes=40)
	add	r14,-500,r4
	mov	10,r3
_Label_4182:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4182
!   _temp_3269 = _P_Kernel_FileControlBlock
	set	_P_Kernel_FileControlBlock,r1
	store	r1,[r14+-500]
	mov	10,r1
	store	r1,[r14+-504]
_Label_3271:
!   Data Move: *_temp_3267 = _temp_3269  (sizeInBytes=40)
	add	r14,-500,r5
	load	[r14+-508],r4
	mov	10,r3
_Label_4183:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4183
!   _temp_3267 = _temp_3267 + 40
	load	[r14+-508],r1
	add	r1,40,r1
	store	r1,[r14+-508]
!   _temp_3268 = _temp_3268 + -1
	load	[r14+-504],r1
	add	r1,-1,r1
	store	r1,[r14+-504]
!   if intNotZero (_temp_3268) then goto _Label_3271
	load	[r14+-504],r1
	cmp	r1,r0
	bne	_Label_3271
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-912]
!   _temp_3272 = &_temp_3266
	add	r14,-912,r1
	store	r1,[r14+-456]
!   make sure array has size 10
	load	[r14+-916],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_4184
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4184:
!   make sure array has size 10
	load	[r14+-456],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_3265 = *_temp_3272  (sizeInBytes=404)
	load	[r14+-456],r5
	load	[r14+-916],r4
	mov	101,r3
_Label_4185:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4185
! FOR STATEMENT...
	mov	2443,r13		! source line 2443
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3277 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-452]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3278 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-448]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3277  (sizeInBytes=4)
	load	[r14+-452],r1
	store	r1,[r14+-944]
_Label_3273:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3278 then goto _Label_3276		
	load	[r14+-944],r1
	load	[r14+-448],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3276
_Label_3274:
	mov	2443,r13		! source line 2443
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2444,r13		! source line 2444
	mov	"\0\0AS",r10
!   _temp_3279 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-444]
!   Move address of _temp_3279 [i ] into _temp_3280
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
!   _temp_3281 = _temp_3280 + 12
	load	[r14+-440],r1
	add	r1,12,r1
	store	r1,[r14+-436]
!   Data Move: *_temp_3281 = i  (sizeInBytes=4)
	load	[r14+-944],r1
	load	[r14+-436],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2445,r13		! source line 2445
	mov	"\0\0SE",r10
!   _temp_3282 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-432]
!   Move address of _temp_3282 [i ] into _temp_3283
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
	mov	2446,r13		! source line 2446
	mov	"\0\0SE",r10
!   _temp_3285 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-420]
!   Move address of _temp_3285 [i ] into _temp_3286
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
!   _temp_3284 = _temp_3286		(4 bytes)
	load	[r14+-416],r1
	store	r1,[r14+-424]
!   _temp_3287 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-412]
!   Prepare Argument: offset=12  value=_temp_3284  sizeInBytes=4
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
_Label_3275:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_3273
! END FOR
_Label_3276:
! ASSIGNMENT STATEMENT...
	mov	2450,r13		! source line 2450
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
	mov	2451,r13		! source line 2451
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
	mov	2452,r13		! source line 2452
	mov	"\0\0SE",r10
!   _temp_3290 = &anOpenFileBecameFree
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
	mov	2453,r13		! source line 2453
	mov	"\0\0AS",r10
!   _temp_3291 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-396]
!   NEW ARRAY Constructor...
!   _temp_3293 = &_temp_3292
	add	r14,-392,r1
	store	r1,[r14+-108]
!   _temp_3293 = _temp_3293 + 4
	load	[r14+-108],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_3295 = zeros  (sizeInBytes=28)
	add	r14,-100,r4
	mov	7,r3
_Label_4186:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4186
!   _temp_3295 = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	store	r1,[r14+-100]
	mov	10,r1
	store	r1,[r14+-104]
_Label_3297:
!   Data Move: *_temp_3293 = _temp_3295  (sizeInBytes=28)
	add	r14,-100,r5
	load	[r14+-108],r4
	mov	7,r3
_Label_4187:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4187
!   _temp_3293 = _temp_3293 + 28
	load	[r14+-108],r1
	add	r1,28,r1
	store	r1,[r14+-108]
!   _temp_3294 = _temp_3294 + -1
	load	[r14+-104],r1
	add	r1,-1,r1
	store	r1,[r14+-104]
!   if intNotZero (_temp_3294) then goto _Label_3297
	load	[r14+-104],r1
	cmp	r1,r0
	bne	_Label_3297
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-392]
!   _temp_3298 = &_temp_3292
	add	r14,-392,r1
	store	r1,[r14+-68]
!   make sure array has size 10
	load	[r14+-396],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_4188
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4188:
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_3291 = *_temp_3298  (sizeInBytes=284)
	load	[r14+-68],r5
	load	[r14+-396],r4
	mov	71,r3
_Label_4189:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4189
! FOR STATEMENT...
	mov	2455,r13		! source line 2455
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3303 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3304 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3303  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-944]
_Label_3299:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3304 then goto _Label_3302		
	load	[r14+-944],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3302
_Label_3300:
	mov	2455,r13		! source line 2455
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2456,r13		! source line 2456
	mov	"\0\0AS",r10
!   _temp_3305 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-56]
!   Move address of _temp_3305 [i ] into _temp_3306
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
!   _temp_3307 = _temp_3306 + 12
	load	[r14+-52],r1
	add	r1,12,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_3307 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2457,r13		! source line 2457
	mov	"\0\0SE",r10
!   _temp_3309 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-40]
!   Move address of _temp_3309 [i ] into _temp_3310
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
!   _temp_3308 = _temp_3310		(4 bytes)
	load	[r14+-36],r1
	store	r1,[r14+-44]
!   _temp_3311 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_3308  sizeInBytes=4
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
_Label_3301:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_3299
! END FOR
_Label_3302:
! ASSIGNMENT STATEMENT...
	mov	2461,r13		! source line 2461
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: serialTerminalFile = zeros  (sizeInBytes=28)
	load	[r14+8],r4
	add	r4,772,r4
	mov	7,r3
_Label_4190:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4190
!   serialTerminalFile = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	load	[r14+8],r2
	store	r1,[r2+772]
! ASSIGNMENT STATEMENT...
	mov	2462,r13		! source line 2462
	mov	"\0\0AS",r10
!   _temp_3313 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-24]
!   _temp_3314 = _temp_3313 + 12
	load	[r14+-24],r1
	add	r1,12,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_3314 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2467,r13		! source line 2467
	mov	"\0\0AS",r10
	mov	2467,r13		! source line 2467
	mov	"\0\0SE",r10
!   _temp_3315 = &_P_Kernel_frameManager
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
	mov	2468,r13		! source line 2468
	mov	"\0\0SE",r10
!   _temp_3316 = &_P_Kernel_diskDriver
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
	mov	2468,r13		! source line 2468
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
	.word	_Label_3317
	.word	4		! total size of parameters
	.word	952		! frame size = 952
	.word	_Label_3318
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3319
	.word	-12
	.word	4
	.word	_Label_3320
	.word	-16
	.word	4
	.word	_Label_3321
	.word	-20
	.word	4
	.word	_Label_3322
	.word	-24
	.word	4
	.word	_Label_3323
	.word	-28
	.word	4
	.word	_Label_3324
	.word	-32
	.word	4
	.word	_Label_3325
	.word	-36
	.word	4
	.word	_Label_3326
	.word	-40
	.word	4
	.word	_Label_3327
	.word	-44
	.word	4
	.word	_Label_3328
	.word	-48
	.word	4
	.word	_Label_3329
	.word	-52
	.word	4
	.word	_Label_3330
	.word	-56
	.word	4
	.word	_Label_3331
	.word	-60
	.word	4
	.word	_Label_3332
	.word	-64
	.word	4
	.word	_Label_3333
	.word	-68
	.word	4
	.word	_Label_3334
	.word	-72
	.word	4
	.word	_Label_3335
	.word	-100
	.word	28
	.word	_Label_3336
	.word	-104
	.word	4
	.word	_Label_3337
	.word	-108
	.word	4
	.word	_Label_3338
	.word	-392
	.word	284
	.word	_Label_3339
	.word	-396
	.word	4
	.word	_Label_3340
	.word	-400
	.word	4
	.word	_Label_3341
	.word	-404
	.word	4
	.word	_Label_3342
	.word	-408
	.word	4
	.word	_Label_3343
	.word	-412
	.word	4
	.word	_Label_3344
	.word	-416
	.word	4
	.word	_Label_3345
	.word	-420
	.word	4
	.word	_Label_3346
	.word	-424
	.word	4
	.word	_Label_3347
	.word	-428
	.word	4
	.word	_Label_3348
	.word	-432
	.word	4
	.word	_Label_3349
	.word	-436
	.word	4
	.word	_Label_3350
	.word	-440
	.word	4
	.word	_Label_3351
	.word	-444
	.word	4
	.word	_Label_3352
	.word	-448
	.word	4
	.word	_Label_3353
	.word	-452
	.word	4
	.word	_Label_3354
	.word	-456
	.word	4
	.word	_Label_3355
	.word	-460
	.word	4
	.word	_Label_3356
	.word	-500
	.word	40
	.word	_Label_3357
	.word	-504
	.word	4
	.word	_Label_3358
	.word	-508
	.word	4
	.word	_Label_3359
	.word	-912
	.word	404
	.word	_Label_3360
	.word	-916
	.word	4
	.word	_Label_3361
	.word	-920
	.word	4
	.word	_Label_3362
	.word	-924
	.word	4
	.word	_Label_3363
	.word	-928
	.word	4
	.word	_Label_3364
	.word	-932
	.word	4
	.word	_Label_3365
	.word	-936
	.word	4
	.word	_Label_3366
	.word	-940
	.word	4
	.word	_Label_3367
	.word	-944
	.word	4
	.word	0
_Label_3317:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_3318:
	.ascii	"Pself\0"
	.align
_Label_3319:
	.byte	'?'
	.ascii	"_temp_3316\0"
	.align
_Label_3320:
	.byte	'?'
	.ascii	"_temp_3315\0"
	.align
_Label_3321:
	.byte	'?'
	.ascii	"_temp_3314\0"
	.align
_Label_3322:
	.byte	'?'
	.ascii	"_temp_3313\0"
	.align
_Label_3323:
	.byte	'?'
	.ascii	"_temp_3312\0"
	.align
_Label_3324:
	.byte	'?'
	.ascii	"_temp_3311\0"
	.align
_Label_3325:
	.byte	'?'
	.ascii	"_temp_3310\0"
	.align
_Label_3326:
	.byte	'?'
	.ascii	"_temp_3309\0"
	.align
_Label_3327:
	.byte	'?'
	.ascii	"_temp_3308\0"
	.align
_Label_3328:
	.byte	'?'
	.ascii	"_temp_3307\0"
	.align
_Label_3329:
	.byte	'?'
	.ascii	"_temp_3306\0"
	.align
_Label_3330:
	.byte	'?'
	.ascii	"_temp_3305\0"
	.align
_Label_3331:
	.byte	'?'
	.ascii	"_temp_3304\0"
	.align
_Label_3332:
	.byte	'?'
	.ascii	"_temp_3303\0"
	.align
_Label_3333:
	.byte	'?'
	.ascii	"_temp_3298\0"
	.align
_Label_3334:
	.byte	'?'
	.ascii	"_temp_3296\0"
	.align
_Label_3335:
	.byte	'?'
	.ascii	"_temp_3295\0"
	.align
_Label_3336:
	.byte	'?'
	.ascii	"_temp_3294\0"
	.align
_Label_3337:
	.byte	'?'
	.ascii	"_temp_3293\0"
	.align
_Label_3338:
	.byte	'?'
	.ascii	"_temp_3292\0"
	.align
_Label_3339:
	.byte	'?'
	.ascii	"_temp_3291\0"
	.align
_Label_3340:
	.byte	'?'
	.ascii	"_temp_3290\0"
	.align
_Label_3341:
	.byte	'?'
	.ascii	"_temp_3289\0"
	.align
_Label_3342:
	.byte	'?'
	.ascii	"_temp_3288\0"
	.align
_Label_3343:
	.byte	'?'
	.ascii	"_temp_3287\0"
	.align
_Label_3344:
	.byte	'?'
	.ascii	"_temp_3286\0"
	.align
_Label_3345:
	.byte	'?'
	.ascii	"_temp_3285\0"
	.align
_Label_3346:
	.byte	'?'
	.ascii	"_temp_3284\0"
	.align
_Label_3347:
	.byte	'?'
	.ascii	"_temp_3283\0"
	.align
_Label_3348:
	.byte	'?'
	.ascii	"_temp_3282\0"
	.align
_Label_3349:
	.byte	'?'
	.ascii	"_temp_3281\0"
	.align
_Label_3350:
	.byte	'?'
	.ascii	"_temp_3280\0"
	.align
_Label_3351:
	.byte	'?'
	.ascii	"_temp_3279\0"
	.align
_Label_3352:
	.byte	'?'
	.ascii	"_temp_3278\0"
	.align
_Label_3353:
	.byte	'?'
	.ascii	"_temp_3277\0"
	.align
_Label_3354:
	.byte	'?'
	.ascii	"_temp_3272\0"
	.align
_Label_3355:
	.byte	'?'
	.ascii	"_temp_3270\0"
	.align
_Label_3356:
	.byte	'?'
	.ascii	"_temp_3269\0"
	.align
_Label_3357:
	.byte	'?'
	.ascii	"_temp_3268\0"
	.align
_Label_3358:
	.byte	'?'
	.ascii	"_temp_3267\0"
	.align
_Label_3359:
	.byte	'?'
	.ascii	"_temp_3266\0"
	.align
_Label_3360:
	.byte	'?'
	.ascii	"_temp_3265\0"
	.align
_Label_3361:
	.byte	'?'
	.ascii	"_temp_3264\0"
	.align
_Label_3362:
	.byte	'?'
	.ascii	"_temp_3263\0"
	.align
_Label_3363:
	.byte	'?'
	.ascii	"_temp_3262\0"
	.align
_Label_3364:
	.byte	'?'
	.ascii	"_temp_3261\0"
	.align
_Label_3365:
	.byte	'?'
	.ascii	"_temp_3260\0"
	.align
_Label_3366:
	.byte	'?'
	.ascii	"_temp_3259\0"
	.align
_Label_3367:
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
_Label_4191:
	push	r0
	sub	r1,1,r1
	bne	_Label_4191
	mov	2475,r13		! source line 2475
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2477,r13		! source line 2477
	mov	"\0\0SE",r10
!   _temp_3368 = &fileManagerLock
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
!   _temp_3369 = _StringConst_142
	set	_StringConst_142,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_3369  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	2478,r13		! source line 2478
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2479,r13		! source line 2479
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3374 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-104]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3375 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-100]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3374  (sizeInBytes=4)
	load	[r14+-104],r1
	store	r1,[r14+-116]
_Label_3370:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3375 then goto _Label_3373		
	load	[r14+-116],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3373
_Label_3371:
	mov	2479,r13		! source line 2479
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_3376 = _StringConst_143
	set	_StringConst_143,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_3376  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	2480,r13		! source line 2480
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2481,r13		! source line 2481
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3377 = _StringConst_144
	set	_StringConst_144,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_3377  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2482,r13		! source line 2482
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2483,r13		! source line 2483
	mov	"\0\0SE",r10
!   _temp_3378 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-88]
!   Move address of _temp_3378 [i ] into _temp_3379
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
_Label_3372:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_3370
! END FOR
_Label_3373:
! CALL STATEMENT...
!   _temp_3380 = _StringConst_145
	set	_StringConst_145,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_3380  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	2485,r13		! source line 2485
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2486,r13		! source line 2486
	mov	"\0\0SE",r10
!   _temp_3381 = _function_184_printFCB
	set	_function_184_printFCB,r1
	store	r1,[r14+-76]
!   _temp_3382 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_3381  sizeInBytes=4
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
	mov	2487,r13		! source line 2487
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_3383 = _StringConst_146
	set	_StringConst_146,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_3383  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	2488,r13		! source line 2488
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2489,r13		! source line 2489
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3388 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3389 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3388  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-116]
_Label_3384:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3389 then goto _Label_3387		
	load	[r14+-116],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3387
_Label_3385:
	mov	2489,r13		! source line 2489
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_3390 = _StringConst_147
	set	_StringConst_147,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_3390  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	2490,r13		! source line 2490
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2491,r13		! source line 2491
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3391 = _StringConst_148
	set	_StringConst_148,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_3391  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	2492,r13		! source line 2492
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_3393 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-44]
!   Move address of _temp_3393 [i ] into _temp_3394
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
!   _temp_3392 = _temp_3394		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_3392  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	2493,r13		! source line 2493
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_3395 = _StringConst_149
	set	_StringConst_149,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_3395  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2494,r13		! source line 2494
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2495,r13		! source line 2495
	mov	"\0\0SE",r10
!   _temp_3396 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-32]
!   Move address of _temp_3396 [i ] into _temp_3397
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
_Label_3386:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_3384
! END FOR
_Label_3387:
! CALL STATEMENT...
!   _temp_3398 = _StringConst_150
	set	_StringConst_150,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3398  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2497,r13		! source line 2497
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2498,r13		! source line 2498
	mov	"\0\0SE",r10
!   _temp_3399 = _function_183_printOpen
	set	_function_183_printOpen,r1
	store	r1,[r14+-20]
!   _temp_3400 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_3399  sizeInBytes=4
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
	mov	2499,r13		! source line 2499
	mov	"\0\0SE",r10
!   _temp_3401 = &fileManagerLock
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
	mov	2499,r13		! source line 2499
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
	.word	_Label_3402
	.word	4		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_3403
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3404
	.word	-12
	.word	4
	.word	_Label_3405
	.word	-16
	.word	4
	.word	_Label_3406
	.word	-20
	.word	4
	.word	_Label_3407
	.word	-24
	.word	4
	.word	_Label_3408
	.word	-28
	.word	4
	.word	_Label_3409
	.word	-32
	.word	4
	.word	_Label_3410
	.word	-36
	.word	4
	.word	_Label_3411
	.word	-40
	.word	4
	.word	_Label_3412
	.word	-44
	.word	4
	.word	_Label_3413
	.word	-48
	.word	4
	.word	_Label_3414
	.word	-52
	.word	4
	.word	_Label_3415
	.word	-56
	.word	4
	.word	_Label_3416
	.word	-60
	.word	4
	.word	_Label_3417
	.word	-64
	.word	4
	.word	_Label_3418
	.word	-68
	.word	4
	.word	_Label_3419
	.word	-72
	.word	4
	.word	_Label_3420
	.word	-76
	.word	4
	.word	_Label_3421
	.word	-80
	.word	4
	.word	_Label_3422
	.word	-84
	.word	4
	.word	_Label_3423
	.word	-88
	.word	4
	.word	_Label_3424
	.word	-92
	.word	4
	.word	_Label_3425
	.word	-96
	.word	4
	.word	_Label_3426
	.word	-100
	.word	4
	.word	_Label_3427
	.word	-104
	.word	4
	.word	_Label_3428
	.word	-108
	.word	4
	.word	_Label_3429
	.word	-112
	.word	4
	.word	_Label_3430
	.word	-116
	.word	4
	.word	0
_Label_3402:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_3403:
	.ascii	"Pself\0"
	.align
_Label_3404:
	.byte	'?'
	.ascii	"_temp_3401\0"
	.align
_Label_3405:
	.byte	'?'
	.ascii	"_temp_3400\0"
	.align
_Label_3406:
	.byte	'?'
	.ascii	"_temp_3399\0"
	.align
_Label_3407:
	.byte	'?'
	.ascii	"_temp_3398\0"
	.align
_Label_3408:
	.byte	'?'
	.ascii	"_temp_3397\0"
	.align
_Label_3409:
	.byte	'?'
	.ascii	"_temp_3396\0"
	.align
_Label_3410:
	.byte	'?'
	.ascii	"_temp_3395\0"
	.align
_Label_3411:
	.byte	'?'
	.ascii	"_temp_3394\0"
	.align
_Label_3412:
	.byte	'?'
	.ascii	"_temp_3393\0"
	.align
_Label_3413:
	.byte	'?'
	.ascii	"_temp_3392\0"
	.align
_Label_3414:
	.byte	'?'
	.ascii	"_temp_3391\0"
	.align
_Label_3415:
	.byte	'?'
	.ascii	"_temp_3390\0"
	.align
_Label_3416:
	.byte	'?'
	.ascii	"_temp_3389\0"
	.align
_Label_3417:
	.byte	'?'
	.ascii	"_temp_3388\0"
	.align
_Label_3418:
	.byte	'?'
	.ascii	"_temp_3383\0"
	.align
_Label_3419:
	.byte	'?'
	.ascii	"_temp_3382\0"
	.align
_Label_3420:
	.byte	'?'
	.ascii	"_temp_3381\0"
	.align
_Label_3421:
	.byte	'?'
	.ascii	"_temp_3380\0"
	.align
_Label_3422:
	.byte	'?'
	.ascii	"_temp_3379\0"
	.align
_Label_3423:
	.byte	'?'
	.ascii	"_temp_3378\0"
	.align
_Label_3424:
	.byte	'?'
	.ascii	"_temp_3377\0"
	.align
_Label_3425:
	.byte	'?'
	.ascii	"_temp_3376\0"
	.align
_Label_3426:
	.byte	'?'
	.ascii	"_temp_3375\0"
	.align
_Label_3427:
	.byte	'?'
	.ascii	"_temp_3374\0"
	.align
_Label_3428:
	.byte	'?'
	.ascii	"_temp_3369\0"
	.align
_Label_3429:
	.byte	'?'
	.ascii	"_temp_3368\0"
	.align
_Label_3430:
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
_Label_4192:
	push	r0
	sub	r1,1,r1
	bne	_Label_4192
	mov	2504,r13		! source line 2504
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2520,r13		! source line 2520
	mov	"\0\0AS",r10
	mov	2520,r13		! source line 2520
	mov	"\0\0SE",r10
!   _temp_3431 = &_P_Kernel_fileManager
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
	mov	2521,r13		! source line 2521
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _Label_3432
	load	[r14+-56],r1
	cmp	r1,r0
	be	_Label_3432
	jmp	_Label_3433
_Label_3432:
! THEN...
	mov	2522,r13		! source line 2522
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2522,r13		! source line 2522
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3433:
! SEND STATEMENT...
	mov	2526,r13		! source line 2526
	mov	"\0\0SE",r10
!   _temp_3434 = &fileManagerLock
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
	mov	2527,r13		! source line 2527
	mov	"\0\0WH",r10
_Label_3435:
	mov	2527,r13		! source line 2527
	mov	"\0\0SE",r10
!   _temp_3438 = &openFileFreeList
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
!   if result==true then goto _Label_3436 else goto _Label_3437
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_3437
	jmp	_Label_3436
_Label_3436:
	mov	2527,r13		! source line 2527
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2528,r13		! source line 2528
	mov	"\0\0SE",r10
!   _temp_3439 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   _temp_3440 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_3439  sizeInBytes=4
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
	jmp	_Label_3435
_Label_3437:
! ASSIGNMENT STATEMENT...
	mov	2530,r13		! source line 2530
	mov	"\0\0AS",r10
	mov	2530,r13		! source line 2530
	mov	"\0\0SE",r10
!   _temp_3441 = &openFileFreeList
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
	mov	2533,r13		! source line 2533
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3442 = open + 20
	load	[r14+-52],r1
	add	r1,20,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3442 = fcb  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2534,r13		! source line 2534
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3443 = open + 24
	load	[r14+-52],r1
	add	r1,24,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_3443 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2537,r13		! source line 2537
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3444 = open + 16
	load	[r14+-52],r1
	add	r1,16,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_3444 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2539,r13		! source line 2539
	mov	"\0\0SE",r10
!   _temp_3445 = &fileManagerLock
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
	mov	2540,r13		! source line 2540
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
	.word	_Label_3446
	.word	8		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_3447
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3448
	.word	12
	.word	4
	.word	_Label_3449
	.word	-12
	.word	4
	.word	_Label_3450
	.word	-16
	.word	4
	.word	_Label_3451
	.word	-20
	.word	4
	.word	_Label_3452
	.word	-24
	.word	4
	.word	_Label_3453
	.word	-28
	.word	4
	.word	_Label_3454
	.word	-32
	.word	4
	.word	_Label_3455
	.word	-36
	.word	4
	.word	_Label_3456
	.word	-40
	.word	4
	.word	_Label_3457
	.word	-44
	.word	4
	.word	_Label_3458
	.word	-48
	.word	4
	.word	_Label_3459
	.word	-52
	.word	4
	.word	_Label_3460
	.word	-56
	.word	4
	.word	0
_Label_3446:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Open\0"
	.align
_Label_3447:
	.ascii	"Pself\0"
	.align
_Label_3448:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_3449:
	.byte	'?'
	.ascii	"_temp_3445\0"
	.align
_Label_3450:
	.byte	'?'
	.ascii	"_temp_3444\0"
	.align
_Label_3451:
	.byte	'?'
	.ascii	"_temp_3443\0"
	.align
_Label_3452:
	.byte	'?'
	.ascii	"_temp_3442\0"
	.align
_Label_3453:
	.byte	'?'
	.ascii	"_temp_3441\0"
	.align
_Label_3454:
	.byte	'?'
	.ascii	"_temp_3440\0"
	.align
_Label_3455:
	.byte	'?'
	.ascii	"_temp_3439\0"
	.align
_Label_3456:
	.byte	'?'
	.ascii	"_temp_3438\0"
	.align
_Label_3457:
	.byte	'?'
	.ascii	"_temp_3434\0"
	.align
_Label_3458:
	.byte	'?'
	.ascii	"_temp_3431\0"
	.align
_Label_3459:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3460:
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
_Label_4193:
	push	r0
	sub	r1,1,r1
	bne	_Label_4193
	mov	2545,r13		! source line 2545
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2570,r13		! source line 2570
	mov	"\0\0AS",r10
!   p = directoryFrame		(4 bytes)
	load	[r14+8],r1
	load	[r1+768],r1
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2573,r13		! source line 2573
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
	mov	2574,r13		! source line 2574
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2575,r13		! source line 2575
	mov	"\0\0IF",r10
!   if i == 1937012066 then goto _Label_3462		(int)
	load	[r14+-136],r1
	set	1937012066,r2
	cmp	r1,r2
	be	_Label_3462
!	jmp	_Label_3461
_Label_3461:
! THEN...
	mov	2576,r13		! source line 2576
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3463 = _StringConst_151
	set	_StringConst_151,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_3463  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2576,r13		! source line 2576
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3462:
! ASSIGNMENT STATEMENT...
	mov	2580,r13		! source line 2580
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
	mov	2581,r13		! source line 2581
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2582,r13		! source line 2582
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
	mov	2583,r13		! source line 2583
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! WHILE STATEMENT...
	mov	2586,r13		! source line 2586
	mov	"\0\0WH",r10
_Label_3464:
!   if numFiles <= 0 then goto _Label_3466		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3466
!	jmp	_Label_3465
_Label_3465:
	mov	2586,r13		! source line 2586
	mov	"\0\0WB",r10
! CALL STATEMENT...
!   _temp_3467 = &start
	add	r14,-140,r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_3467  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2587,r13		! source line 2587
	mov	"\0\0CA",r10
	call	_function_185_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2588,r13		! source line 2588
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_3468 = &fileLen
	add	r14,-148,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=_temp_3468  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2589,r13		! source line 2589
	mov	"\0\0CA",r10
	call	_function_185_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2590,r13		! source line 2590
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_3469 = &fileNameLen
	add	r14,-152,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_3469  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2591,r13		! source line 2591
	mov	"\0\0CA",r10
	call	_function_185_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2592,r13		! source line 2592
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2593,r13		! source line 2593
	mov	"\0\0IF",r10
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_3473 = *filename  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if fileNameLen != _temp_3473 then goto _Label_3471		(int)
	load	[r14+-152],r1
	load	[r14+-116],r2
	cmp	r1,r2
	bne	_Label_3471
!	jmp	_Label_3472
_Label_3472:
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of filename [0 ] into _temp_3475
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
!   _temp_3474 = _temp_3475		(4 bytes)
	load	[r14+-108],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_3474  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=fileNameLen  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+8]
!   Call the function
	mov	2594,r13		! source line 2594
	mov	"\0\0CA",r10
	call	_P_System_MemoryEqual
!   if result==true then goto _Label_3470 else goto _Label_3471
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_3471
	jmp	_Label_3470
_Label_3470:
! THEN...
	mov	2595,r13		! source line 2595
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2595,r13		! source line 2595
	mov	"\0\0BR",r10
	jmp	_Label_3466
! END IF...
_Label_3471:
! ASSIGNMENT STATEMENT...
	mov	2597,r13		! source line 2597
	mov	"\0\0AS",r10
!   p = p + fileNameLen		(int)
	load	[r14+-160],r1
	load	[r14+-152],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2598,r13		! source line 2598
	mov	"\0\0AS",r10
!   numFiles = numFiles - 1		(int)
	load	[r14+-144],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
! END WHILE...
	jmp	_Label_3464
_Label_3466:
! IF STATEMENT...
	mov	2602,r13		! source line 2602
	mov	"\0\0IF",r10
!   if numFiles > 0 then goto _Label_3477		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3477
!	jmp	_Label_3476
_Label_3476:
! THEN...
	mov	2603,r13		! source line 2603
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2603,r13		! source line 2603
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3477:
! SEND STATEMENT...
	mov	2606,r13		! source line 2606
	mov	"\0\0SE",r10
!   _temp_3478 = &fileManagerLock
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
	mov	2608,r13		! source line 2608
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3483 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-100]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3484 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-96]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3483  (sizeInBytes=4)
	load	[r14+-100],r1
	store	r1,[r14+-136]
_Label_3479:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3484 then goto _Label_3482		
	load	[r14+-136],r1
	load	[r14+-96],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3482
_Label_3480:
	mov	2608,r13		! source line 2608
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2609,r13		! source line 2609
	mov	"\0\0AS",r10
!   _temp_3485 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-92]
!   Move address of _temp_3485 [i ] into _temp_3486
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
!   fcb = _temp_3486		(4 bytes)
	load	[r14+-88],r1
	store	r1,[r14+-156]
! IF STATEMENT...
	mov	2610,r13		! source line 2610
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3490 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-80]
!   Data Move: _temp_3489 = *_temp_3490  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if _temp_3489 != start then goto _Label_3488		(int)
	load	[r14+-84],r1
	load	[r14+-140],r2
	cmp	r1,r2
	bne	_Label_3488
!	jmp	_Label_3487
_Label_3487:
! THEN...
	mov	2611,r13		! source line 2611
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2611,r13		! source line 2611
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3491 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-76]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3494 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-64]
!   Data Move: _temp_3493 = *_temp_3494  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   _temp_3492 = _temp_3493 + 1		(int)
	load	[r14+-68],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
!   Data Move: *_temp_3491 = _temp_3492  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r14+-76],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2612,r13		! source line 2612
	mov	"\0\0SE",r10
!   _temp_3495 = &fileManagerLock
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
	mov	2613,r13		! source line 2613
	mov	"\0\0RE",r10
!   ReturnResult: fcb  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3488:
!   Increment the FOR-LOOP index variable and jump back
_Label_3481:
!   i = i + 1
	load	[r14+-136],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
	jmp	_Label_3479
! END FOR
_Label_3482:
! WHILE STATEMENT...
	mov	2618,r13		! source line 2618
	mov	"\0\0WH",r10
_Label_3496:
	mov	2618,r13		! source line 2618
	mov	"\0\0SE",r10
!   _temp_3499 = &fcbFreeList
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
!   if result==true then goto _Label_3497 else goto _Label_3498
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_3498
	jmp	_Label_3497
_Label_3497:
	mov	2618,r13		! source line 2618
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2619,r13		! source line 2619
	mov	"\0\0SE",r10
!   _temp_3500 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   _temp_3501 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_3500  sizeInBytes=4
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
	jmp	_Label_3496
_Label_3498:
! ASSIGNMENT STATEMENT...
	mov	2621,r13		! source line 2621
	mov	"\0\0AS",r10
	mov	2621,r13		! source line 2621
	mov	"\0\0SE",r10
!   _temp_3502 = &fcbFreeList
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
	mov	2624,r13		! source line 2624
	mov	"\0\0SE",r10
!   _temp_3503 = &fileManagerLock
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
	mov	2627,r13		! source line 2627
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3504 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_3504 = start  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2628,r13		! source line 2628
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3505 = fcb + 24
	load	[r14+-156],r1
	add	r1,24,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_3505 = fileLen  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2629,r13		! source line 2629
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3506 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_3506 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-28],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2630,r13		! source line 2630
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3511 = fcb + 32
	load	[r14+-156],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   Data Move: _temp_3510 = *_temp_3511  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_3510 < 0 then goto _Label_3509		(int)
	load	[r14+-24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_3509
	jmp	_Label_3507
_Label_3509:
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3512 = fcb + 36
	load	[r14+-156],r1
	add	r1,36,r1
	store	r1,[r14+-16]
!   if boolIsZero (_temp_3512 ) then goto _Label_3508		(int)
	load	[r14+-16],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_3508
!	jmp	_Label_3507
_Label_3507:
! THEN...
	mov	2631,r13		! source line 2631
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3513 = _StringConst_152
	set	_StringConst_152,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3513  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2631,r13		! source line 2631
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3508:
! RETURN STATEMENT...
	mov	2633,r13		! source line 2633
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
	.word	_Label_3514
	.word	8		! total size of parameters
	.word	164		! frame size = 164
	.word	_Label_3515
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3516
	.word	12
	.word	4
	.word	_Label_3517
	.word	-12
	.word	4
	.word	_Label_3518
	.word	-16
	.word	4
	.word	_Label_3519
	.word	-20
	.word	4
	.word	_Label_3520
	.word	-24
	.word	4
	.word	_Label_3521
	.word	-28
	.word	4
	.word	_Label_3522
	.word	-32
	.word	4
	.word	_Label_3523
	.word	-36
	.word	4
	.word	_Label_3524
	.word	-40
	.word	4
	.word	_Label_3525
	.word	-44
	.word	4
	.word	_Label_3526
	.word	-48
	.word	4
	.word	_Label_3527
	.word	-52
	.word	4
	.word	_Label_3528
	.word	-56
	.word	4
	.word	_Label_3529
	.word	-60
	.word	4
	.word	_Label_3530
	.word	-64
	.word	4
	.word	_Label_3531
	.word	-68
	.word	4
	.word	_Label_3532
	.word	-72
	.word	4
	.word	_Label_3533
	.word	-76
	.word	4
	.word	_Label_3534
	.word	-80
	.word	4
	.word	_Label_3535
	.word	-84
	.word	4
	.word	_Label_3536
	.word	-88
	.word	4
	.word	_Label_3537
	.word	-92
	.word	4
	.word	_Label_3538
	.word	-96
	.word	4
	.word	_Label_3539
	.word	-100
	.word	4
	.word	_Label_3540
	.word	-104
	.word	4
	.word	_Label_3541
	.word	-108
	.word	4
	.word	_Label_3542
	.word	-112
	.word	4
	.word	_Label_3543
	.word	-116
	.word	4
	.word	_Label_3544
	.word	-120
	.word	4
	.word	_Label_3545
	.word	-124
	.word	4
	.word	_Label_3546
	.word	-128
	.word	4
	.word	_Label_3547
	.word	-132
	.word	4
	.word	_Label_3548
	.word	-136
	.word	4
	.word	_Label_3549
	.word	-140
	.word	4
	.word	_Label_3550
	.word	-144
	.word	4
	.word	_Label_3551
	.word	-148
	.word	4
	.word	_Label_3552
	.word	-152
	.word	4
	.word	_Label_3553
	.word	-156
	.word	4
	.word	_Label_3554
	.word	-160
	.word	4
	.word	0
_Label_3514:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"FindFCB\0"
	.align
_Label_3515:
	.ascii	"Pself\0"
	.align
_Label_3516:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_3517:
	.byte	'?'
	.ascii	"_temp_3513\0"
	.align
_Label_3518:
	.byte	'?'
	.ascii	"_temp_3512\0"
	.align
_Label_3519:
	.byte	'?'
	.ascii	"_temp_3511\0"
	.align
_Label_3520:
	.byte	'?'
	.ascii	"_temp_3510\0"
	.align
_Label_3521:
	.byte	'?'
	.ascii	"_temp_3506\0"
	.align
_Label_3522:
	.byte	'?'
	.ascii	"_temp_3505\0"
	.align
_Label_3523:
	.byte	'?'
	.ascii	"_temp_3504\0"
	.align
_Label_3524:
	.byte	'?'
	.ascii	"_temp_3503\0"
	.align
_Label_3525:
	.byte	'?'
	.ascii	"_temp_3502\0"
	.align
_Label_3526:
	.byte	'?'
	.ascii	"_temp_3501\0"
	.align
_Label_3527:
	.byte	'?'
	.ascii	"_temp_3500\0"
	.align
_Label_3528:
	.byte	'?'
	.ascii	"_temp_3499\0"
	.align
_Label_3529:
	.byte	'?'
	.ascii	"_temp_3495\0"
	.align
_Label_3530:
	.byte	'?'
	.ascii	"_temp_3494\0"
	.align
_Label_3531:
	.byte	'?'
	.ascii	"_temp_3493\0"
	.align
_Label_3532:
	.byte	'?'
	.ascii	"_temp_3492\0"
	.align
_Label_3533:
	.byte	'?'
	.ascii	"_temp_3491\0"
	.align
_Label_3534:
	.byte	'?'
	.ascii	"_temp_3490\0"
	.align
_Label_3535:
	.byte	'?'
	.ascii	"_temp_3489\0"
	.align
_Label_3536:
	.byte	'?'
	.ascii	"_temp_3486\0"
	.align
_Label_3537:
	.byte	'?'
	.ascii	"_temp_3485\0"
	.align
_Label_3538:
	.byte	'?'
	.ascii	"_temp_3484\0"
	.align
_Label_3539:
	.byte	'?'
	.ascii	"_temp_3483\0"
	.align
_Label_3540:
	.byte	'?'
	.ascii	"_temp_3478\0"
	.align
_Label_3541:
	.byte	'?'
	.ascii	"_temp_3475\0"
	.align
_Label_3542:
	.byte	'?'
	.ascii	"_temp_3474\0"
	.align
_Label_3543:
	.byte	'?'
	.ascii	"_temp_3473\0"
	.align
_Label_3544:
	.byte	'?'
	.ascii	"_temp_3469\0"
	.align
_Label_3545:
	.byte	'?'
	.ascii	"_temp_3468\0"
	.align
_Label_3546:
	.byte	'?'
	.ascii	"_temp_3467\0"
	.align
_Label_3547:
	.byte	'?'
	.ascii	"_temp_3463\0"
	.align
_Label_3548:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_3549:
	.byte	'I'
	.ascii	"start\0"
	.align
_Label_3550:
	.byte	'I'
	.ascii	"numFiles\0"
	.align
_Label_3551:
	.byte	'I'
	.ascii	"fileLen\0"
	.align
_Label_3552:
	.byte	'I'
	.ascii	"fileNameLen\0"
	.align
_Label_3553:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_3554:
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
_Label_4194:
	push	r0
	sub	r1,1,r1
	bne	_Label_4194
	mov	2646,r13		! source line 2646
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2648,r13		! source line 2648
	mov	"\0\0IF",r10
!   _temp_3557 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-100]
!   if open != _temp_3557 then goto _Label_3556		(int)
	load	[r14+12],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bne	_Label_3556
!	jmp	_Label_3555
_Label_3555:
! THEN...
	mov	2649,r13		! source line 2649
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2649,r13		! source line 2649
	mov	"\0\0RE",r10
	add	r15,108,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3556:
! SEND STATEMENT...
	mov	2651,r13		! source line 2651
	mov	"\0\0SE",r10
!   _temp_3558 = &fileManagerLock
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
	mov	2652,r13		! source line 2652
	mov	"\0\0SE",r10
!   _temp_3559 = &_P_Kernel_fileManager
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
	mov	2653,r13		! source line 2653
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3560 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: fcb = *_temp_3560  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-104]
! ASSIGNMENT STATEMENT...
	mov	2654,r13		! source line 2654
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3561 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-84]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3564 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-72]
!   Data Move: _temp_3563 = *_temp_3564  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   _temp_3562 = _temp_3563 - 1		(int)
	load	[r14+-76],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
!   Data Move: *_temp_3561 = _temp_3562  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r14+-84],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2655,r13		! source line 2655
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3568 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-64]
!   Data Move: _temp_3567 = *_temp_3568  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if _temp_3567 > 0 then goto _Label_3566		(int)
	load	[r14+-68],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3566
!	jmp	_Label_3565
_Label_3565:
! THEN...
	mov	2656,r13		! source line 2656
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2656,r13		! source line 2656
	mov	"\0\0SE",r10
!   _temp_3569 = &openFileFreeList
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
	mov	2657,r13		! source line 2657
	mov	"\0\0SE",r10
!   _temp_3570 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   _temp_3571 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_3570  sizeInBytes=4
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
	mov	2658,r13		! source line 2658
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3572 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3575 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-36]
!   Data Move: _temp_3574 = *_temp_3575  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   _temp_3573 = _temp_3574 - 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
!   Data Move: *_temp_3572 = _temp_3573  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+-48],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2659,r13		! source line 2659
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3579 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: _temp_3578 = *_temp_3579  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_3578 > 0 then goto _Label_3577		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3577
!	jmp	_Label_3576
_Label_3576:
! THEN...
	mov	2660,r13		! source line 2660
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2660,r13		! source line 2660
	mov	"\0\0SE",r10
!   _temp_3580 = &fcbFreeList
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
	mov	2661,r13		! source line 2661
	mov	"\0\0SE",r10
!   _temp_3581 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_3582 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_3581  sizeInBytes=4
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
_Label_3577:
! END IF...
_Label_3566:
! SEND STATEMENT...
	mov	2664,r13		! source line 2664
	mov	"\0\0SE",r10
!   _temp_3583 = &fileManagerLock
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
	mov	2664,r13		! source line 2664
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
	.word	_Label_3584
	.word	8		! total size of parameters
	.word	104		! frame size = 104
	.word	_Label_3585
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3586
	.word	12
	.word	4
	.word	_Label_3587
	.word	-12
	.word	4
	.word	_Label_3588
	.word	-16
	.word	4
	.word	_Label_3589
	.word	-20
	.word	4
	.word	_Label_3590
	.word	-24
	.word	4
	.word	_Label_3591
	.word	-28
	.word	4
	.word	_Label_3592
	.word	-32
	.word	4
	.word	_Label_3593
	.word	-36
	.word	4
	.word	_Label_3594
	.word	-40
	.word	4
	.word	_Label_3595
	.word	-44
	.word	4
	.word	_Label_3596
	.word	-48
	.word	4
	.word	_Label_3597
	.word	-52
	.word	4
	.word	_Label_3598
	.word	-56
	.word	4
	.word	_Label_3599
	.word	-60
	.word	4
	.word	_Label_3600
	.word	-64
	.word	4
	.word	_Label_3601
	.word	-68
	.word	4
	.word	_Label_3602
	.word	-72
	.word	4
	.word	_Label_3603
	.word	-76
	.word	4
	.word	_Label_3604
	.word	-80
	.word	4
	.word	_Label_3605
	.word	-84
	.word	4
	.word	_Label_3606
	.word	-88
	.word	4
	.word	_Label_3607
	.word	-92
	.word	4
	.word	_Label_3608
	.word	-96
	.word	4
	.word	_Label_3609
	.word	-100
	.word	4
	.word	_Label_3610
	.word	-104
	.word	4
	.word	0
_Label_3584:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Close\0"
	.align
_Label_3585:
	.ascii	"Pself\0"
	.align
_Label_3586:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3587:
	.byte	'?'
	.ascii	"_temp_3583\0"
	.align
_Label_3588:
	.byte	'?'
	.ascii	"_temp_3582\0"
	.align
_Label_3589:
	.byte	'?'
	.ascii	"_temp_3581\0"
	.align
_Label_3590:
	.byte	'?'
	.ascii	"_temp_3580\0"
	.align
_Label_3591:
	.byte	'?'
	.ascii	"_temp_3579\0"
	.align
_Label_3592:
	.byte	'?'
	.ascii	"_temp_3578\0"
	.align
_Label_3593:
	.byte	'?'
	.ascii	"_temp_3575\0"
	.align
_Label_3594:
	.byte	'?'
	.ascii	"_temp_3574\0"
	.align
_Label_3595:
	.byte	'?'
	.ascii	"_temp_3573\0"
	.align
_Label_3596:
	.byte	'?'
	.ascii	"_temp_3572\0"
	.align
_Label_3597:
	.byte	'?'
	.ascii	"_temp_3571\0"
	.align
_Label_3598:
	.byte	'?'
	.ascii	"_temp_3570\0"
	.align
_Label_3599:
	.byte	'?'
	.ascii	"_temp_3569\0"
	.align
_Label_3600:
	.byte	'?'
	.ascii	"_temp_3568\0"
	.align
_Label_3601:
	.byte	'?'
	.ascii	"_temp_3567\0"
	.align
_Label_3602:
	.byte	'?'
	.ascii	"_temp_3564\0"
	.align
_Label_3603:
	.byte	'?'
	.ascii	"_temp_3563\0"
	.align
_Label_3604:
	.byte	'?'
	.ascii	"_temp_3562\0"
	.align
_Label_3605:
	.byte	'?'
	.ascii	"_temp_3561\0"
	.align
_Label_3606:
	.byte	'?'
	.ascii	"_temp_3560\0"
	.align
_Label_3607:
	.byte	'?'
	.ascii	"_temp_3559\0"
	.align
_Label_3608:
	.byte	'?'
	.ascii	"_temp_3558\0"
	.align
_Label_3609:
	.byte	'?'
	.ascii	"_temp_3557\0"
	.align
_Label_3610:
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
_Label_4195:
	push	r0
	sub	r1,1,r1
	bne	_Label_4195
	mov	2669,r13		! source line 2669
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2674,r13		! source line 2674
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _Label_3611
	load	[r14+12],r1
	cmp	r1,r0
	be	_Label_3611
	jmp	_Label_3612
_Label_3611:
! THEN...
	mov	2675,r13		! source line 2675
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3613 = _StringConst_153
	set	_StringConst_153,r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_3613  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	2675,r13		! source line 2675
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_3612:
! IF STATEMENT...
	mov	2677,r13		! source line 2677
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3617 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-104]
!   Data Move: _temp_3616 = *_temp_3617  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_3616) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3618 = _temp_3616 + 36
	load	[r14+-108],r1
	add	r1,36,r1
	store	r1,[r14+-100]
!   if boolIsZero (_temp_3618 ) then goto _Label_3615		(int)
	load	[r14+-100],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_3615
!	jmp	_Label_3614
_Label_3614:
! THEN...
	mov	2678,r13		! source line 2678
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	2678,r13		! source line 2678
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3623 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_3622 = *_temp_3623  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_3622) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3624 = _temp_3622 + 32
	load	[r14+-92],r1
	add	r1,32,r1
	store	r1,[r14+-84]
!   Data Move: _temp_3621 = *_temp_3624  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_3621 >= 0 then goto _Label_3620		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3620
!	jmp	_Label_3619
_Label_3619:
! THEN...
	mov	2679,r13		! source line 2679
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3625 = _StringConst_154
	set	_StringConst_154,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_3625  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2679,r13		! source line 2679
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3620:
! ASSIGNMENT STATEMENT...
	mov	2681,r13		! source line 2681
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3627 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-72]
!   Data Move: _temp_3626 = *_temp_3627  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_3626) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3628 = _temp_3626 + 36
	load	[r14+-76],r1
	add	r1,36,r1
	store	r1,[r14+-68]
!   Data Move: *_temp_3628 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-68],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	2682,r13		! source line 2682
	mov	"\0\0SE",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3632 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_3631 = *_temp_3632  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_3631) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3633 = _temp_3631 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   Data Move: _temp_3630 = *_temp_3633  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3636 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: _temp_3635 = *_temp_3636  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_3635) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3637 = _temp_3635 + 20
	load	[r14+-40],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: _temp_3634 = *_temp_3637  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_3629 = _temp_3630 + _temp_3634		(int)
	load	[r14+-60],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3640 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   Data Move: _temp_3639 = *_temp_3640  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_3639) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3641 = _temp_3639 + 28
	load	[r14+-24],r1
	add	r1,28,r1
	store	r1,[r14+-16]
!   Data Move: _temp_3638 = *_temp_3641  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   _temp_3642 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_3629  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_3638  sizeInBytes=4
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
_Label_3615:
! RETURN STATEMENT...
	mov	2677,r13		! source line 2677
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
	.word	_Label_3643
	.word	8		! total size of parameters
	.word	120		! frame size = 120
	.word	_Label_3644
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3645
	.word	12
	.word	4
	.word	_Label_3646
	.word	-12
	.word	4
	.word	_Label_3647
	.word	-16
	.word	4
	.word	_Label_3648
	.word	-20
	.word	4
	.word	_Label_3649
	.word	-24
	.word	4
	.word	_Label_3650
	.word	-28
	.word	4
	.word	_Label_3651
	.word	-32
	.word	4
	.word	_Label_3652
	.word	-36
	.word	4
	.word	_Label_3653
	.word	-40
	.word	4
	.word	_Label_3654
	.word	-44
	.word	4
	.word	_Label_3655
	.word	-48
	.word	4
	.word	_Label_3656
	.word	-52
	.word	4
	.word	_Label_3657
	.word	-56
	.word	4
	.word	_Label_3658
	.word	-60
	.word	4
	.word	_Label_3659
	.word	-64
	.word	4
	.word	_Label_3660
	.word	-68
	.word	4
	.word	_Label_3661
	.word	-72
	.word	4
	.word	_Label_3662
	.word	-76
	.word	4
	.word	_Label_3663
	.word	-80
	.word	4
	.word	_Label_3664
	.word	-84
	.word	4
	.word	_Label_3665
	.word	-88
	.word	4
	.word	_Label_3666
	.word	-92
	.word	4
	.word	_Label_3667
	.word	-96
	.word	4
	.word	_Label_3668
	.word	-100
	.word	4
	.word	_Label_3669
	.word	-104
	.word	4
	.word	_Label_3670
	.word	-108
	.word	4
	.word	_Label_3671
	.word	-112
	.word	4
	.word	0
_Label_3643:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Flush\0"
	.align
_Label_3644:
	.ascii	"Pself\0"
	.align
_Label_3645:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3646:
	.byte	'?'
	.ascii	"_temp_3642\0"
	.align
_Label_3647:
	.byte	'?'
	.ascii	"_temp_3641\0"
	.align
_Label_3648:
	.byte	'?'
	.ascii	"_temp_3640\0"
	.align
_Label_3649:
	.byte	'?'
	.ascii	"_temp_3639\0"
	.align
_Label_3650:
	.byte	'?'
	.ascii	"_temp_3638\0"
	.align
_Label_3651:
	.byte	'?'
	.ascii	"_temp_3637\0"
	.align
_Label_3652:
	.byte	'?'
	.ascii	"_temp_3636\0"
	.align
_Label_3653:
	.byte	'?'
	.ascii	"_temp_3635\0"
	.align
_Label_3654:
	.byte	'?'
	.ascii	"_temp_3634\0"
	.align
_Label_3655:
	.byte	'?'
	.ascii	"_temp_3633\0"
	.align
_Label_3656:
	.byte	'?'
	.ascii	"_temp_3632\0"
	.align
_Label_3657:
	.byte	'?'
	.ascii	"_temp_3631\0"
	.align
_Label_3658:
	.byte	'?'
	.ascii	"_temp_3630\0"
	.align
_Label_3659:
	.byte	'?'
	.ascii	"_temp_3629\0"
	.align
_Label_3660:
	.byte	'?'
	.ascii	"_temp_3628\0"
	.align
_Label_3661:
	.byte	'?'
	.ascii	"_temp_3627\0"
	.align
_Label_3662:
	.byte	'?'
	.ascii	"_temp_3626\0"
	.align
_Label_3663:
	.byte	'?'
	.ascii	"_temp_3625\0"
	.align
_Label_3664:
	.byte	'?'
	.ascii	"_temp_3624\0"
	.align
_Label_3665:
	.byte	'?'
	.ascii	"_temp_3623\0"
	.align
_Label_3666:
	.byte	'?'
	.ascii	"_temp_3622\0"
	.align
_Label_3667:
	.byte	'?'
	.ascii	"_temp_3621\0"
	.align
_Label_3668:
	.byte	'?'
	.ascii	"_temp_3618\0"
	.align
_Label_3669:
	.byte	'?'
	.ascii	"_temp_3617\0"
	.align
_Label_3670:
	.byte	'?'
	.ascii	"_temp_3616\0"
	.align
_Label_3671:
	.byte	'?'
	.ascii	"_temp_3613\0"
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
_Label_4196:
	push	r0
	sub	r1,1,r1
	bne	_Label_4196
	mov	2691,r13		! source line 2691
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2706,r13		! source line 2706
	mov	"\0\0SE",r10
!   _temp_3672 = &fileManagerLock
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
	mov	2707,r13		! source line 2707
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_3678		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3678
!   _temp_3677 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_3679
_Label_3678:
!   _temp_3677 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_3679:
!   if _temp_3677 then goto _Label_3676 else goto _Label_3673
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3673
	jmp	_Label_3676
_Label_3676:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3682 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-100]
!   Data Move: _temp_3681 = *_temp_3682  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_3681 == 0 then goto _Label_3683		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3683
!   _temp_3680 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_3684
_Label_3683:
!   _temp_3680 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_3684:
!   if _temp_3680 then goto _Label_3675 else goto _Label_3673
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3673
	jmp	_Label_3675
_Label_3675:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3687 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_3686 = *_temp_3687  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_3686) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3688 = _temp_3686 + 20
	load	[r14+-92],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: _temp_3685 = *_temp_3688  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_3685 >= 0 then goto _Label_3674		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3674
!	jmp	_Label_3673
_Label_3673:
! THEN...
	mov	2708,r13		! source line 2708
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3689 = _StringConst_155
	set	_StringConst_155,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_3689  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2708,r13		! source line 2708
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3674:
! ASSIGNMENT STATEMENT...
	mov	2710,r13		! source line 2710
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3690 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-76]
!   Data Move: fcb = *_temp_3690  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-128]
! WHILE STATEMENT...
	mov	2711,r13		! source line 2711
	mov	"\0\0WH",r10
_Label_3691:
!   if numBytes <= 0 then goto _Label_3693		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3693
!	jmp	_Label_3692
_Label_3692:
	mov	2711,r13		! source line 2711
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2720,r13		! source line 2720
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
	mov	2721,r13		! source line 2721
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
	mov	2725,r13		! source line 2725
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3697 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-68]
!   Data Move: _temp_3696 = *_temp_3697  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if _temp_3696 == sector then goto _Label_3695		(int)
	load	[r14+-72],r1
	load	[r14+-112],r2
	cmp	r1,r2
	be	_Label_3695
!	jmp	_Label_3694
_Label_3694:
! THEN...
	mov	2726,r13		! source line 2726
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2726,r13		! source line 2726
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_3698) then goto _runtimeErrorNullPointer
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
	mov	2728,r13		! source line 2728
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3701 = fcb + 20
	load	[r14+-128],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_3700 = *_temp_3701  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   _temp_3699 = sector + _temp_3700		(int)
	load	[r14+-112],r1
	load	[r14+-56],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3703 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-44]
!   Data Move: _temp_3702 = *_temp_3703  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_3704 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_3699  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_3702  sizeInBytes=4
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
	mov	2731,r13		! source line 2731
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3705 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_3705 = sector  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2732,r13		! source line 2732
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3706 = fcb + 36
	load	[r14+-128],r1
	add	r1,36,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_3706 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-32],r2
	storeb	r1,[r2]
! END IF...
_Label_3695:
! ASSIGNMENT STATEMENT...
	mov	2734,r13		! source line 2734
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3708 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-24]
!   Data Move: _temp_3707 = *_temp_3708  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   posInBuffer = _temp_3707 + offset		(int)
	load	[r14+-28],r1
	load	[r14+-116],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
! ASSIGNMENT STATEMENT...
	mov	2735,r13		! source line 2735
	mov	"\0\0AS",r10
!   _temp_3709 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-116],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_3709  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Call the function
	mov	2735,r13		! source line 2735
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
	mov	2739,r13		! source line 2739
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2740,r13		! source line 2740
	mov	"\0\0AS",r10
!   targetAddr = targetAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2741,r13		! source line 2741
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2742,r13		! source line 2742
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_3691
_Label_3693:
! SEND STATEMENT...
	mov	2749,r13		! source line 2749
	mov	"\0\0SE",r10
!   _temp_3710 = &fileManagerLock
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
	mov	2750,r13		! source line 2750
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
	.word	_Label_3711
	.word	20		! total size of parameters
	.word	136		! frame size = 136
	.word	_Label_3712
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3713
	.word	12
	.word	4
	.word	_Label_3714
	.word	16
	.word	4
	.word	_Label_3715
	.word	20
	.word	4
	.word	_Label_3716
	.word	24
	.word	4
	.word	_Label_3717
	.word	-16
	.word	4
	.word	_Label_3718
	.word	-20
	.word	4
	.word	_Label_3719
	.word	-24
	.word	4
	.word	_Label_3720
	.word	-28
	.word	4
	.word	_Label_3721
	.word	-32
	.word	4
	.word	_Label_3722
	.word	-36
	.word	4
	.word	_Label_3723
	.word	-40
	.word	4
	.word	_Label_3724
	.word	-44
	.word	4
	.word	_Label_3725
	.word	-48
	.word	4
	.word	_Label_3726
	.word	-52
	.word	4
	.word	_Label_3727
	.word	-56
	.word	4
	.word	_Label_3728
	.word	-60
	.word	4
	.word	_Label_3729
	.word	-64
	.word	4
	.word	_Label_3730
	.word	-68
	.word	4
	.word	_Label_3731
	.word	-72
	.word	4
	.word	_Label_3732
	.word	-76
	.word	4
	.word	_Label_3733
	.word	-80
	.word	4
	.word	_Label_3734
	.word	-84
	.word	4
	.word	_Label_3735
	.word	-88
	.word	4
	.word	_Label_3736
	.word	-92
	.word	4
	.word	_Label_3737
	.word	-96
	.word	4
	.word	_Label_3738
	.word	-100
	.word	4
	.word	_Label_3739
	.word	-104
	.word	4
	.word	_Label_3740
	.word	-9
	.word	1
	.word	_Label_3741
	.word	-10
	.word	1
	.word	_Label_3742
	.word	-108
	.word	4
	.word	_Label_3743
	.word	-112
	.word	4
	.word	_Label_3744
	.word	-116
	.word	4
	.word	_Label_3745
	.word	-120
	.word	4
	.word	_Label_3746
	.word	-124
	.word	4
	.word	_Label_3747
	.word	-128
	.word	4
	.word	0
_Label_3711:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchRead\0"
	.align
_Label_3712:
	.ascii	"Pself\0"
	.align
_Label_3713:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3714:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_3715:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_3716:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3717:
	.byte	'?'
	.ascii	"_temp_3710\0"
	.align
_Label_3718:
	.byte	'?'
	.ascii	"_temp_3709\0"
	.align
_Label_3719:
	.byte	'?'
	.ascii	"_temp_3708\0"
	.align
_Label_3720:
	.byte	'?'
	.ascii	"_temp_3707\0"
	.align
_Label_3721:
	.byte	'?'
	.ascii	"_temp_3706\0"
	.align
_Label_3722:
	.byte	'?'
	.ascii	"_temp_3705\0"
	.align
_Label_3723:
	.byte	'?'
	.ascii	"_temp_3704\0"
	.align
_Label_3724:
	.byte	'?'
	.ascii	"_temp_3703\0"
	.align
_Label_3725:
	.byte	'?'
	.ascii	"_temp_3702\0"
	.align
_Label_3726:
	.byte	'?'
	.ascii	"_temp_3701\0"
	.align
_Label_3727:
	.byte	'?'
	.ascii	"_temp_3700\0"
	.align
_Label_3728:
	.byte	'?'
	.ascii	"_temp_3699\0"
	.align
_Label_3729:
	.byte	'?'
	.ascii	"_temp_3698\0"
	.align
_Label_3730:
	.byte	'?'
	.ascii	"_temp_3697\0"
	.align
_Label_3731:
	.byte	'?'
	.ascii	"_temp_3696\0"
	.align
_Label_3732:
	.byte	'?'
	.ascii	"_temp_3690\0"
	.align
_Label_3733:
	.byte	'?'
	.ascii	"_temp_3689\0"
	.align
_Label_3734:
	.byte	'?'
	.ascii	"_temp_3688\0"
	.align
_Label_3735:
	.byte	'?'
	.ascii	"_temp_3687\0"
	.align
_Label_3736:
	.byte	'?'
	.ascii	"_temp_3686\0"
	.align
_Label_3737:
	.byte	'?'
	.ascii	"_temp_3685\0"
	.align
_Label_3738:
	.byte	'?'
	.ascii	"_temp_3682\0"
	.align
_Label_3739:
	.byte	'?'
	.ascii	"_temp_3681\0"
	.align
_Label_3740:
	.byte	'C'
	.ascii	"_temp_3680\0"
	.align
_Label_3741:
	.byte	'C'
	.ascii	"_temp_3677\0"
	.align
_Label_3742:
	.byte	'?'
	.ascii	"_temp_3672\0"
	.align
_Label_3743:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_3744:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_3745:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_3746:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_3747:
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
_Label_4197:
	push	r0
	sub	r1,1,r1
	bne	_Label_4197
	mov	2755,r13		! source line 2755
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2771,r13		! source line 2771
	mov	"\0\0SE",r10
!   _temp_3748 = &fileManagerLock
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
	mov	2772,r13		! source line 2772
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_3754		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3754
!   _temp_3753 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_3755
_Label_3754:
!   _temp_3753 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_3755:
!   if _temp_3753 then goto _Label_3752 else goto _Label_3749
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3749
	jmp	_Label_3752
_Label_3752:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3758 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-108]
!   Data Move: _temp_3757 = *_temp_3758  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if _temp_3757 == 0 then goto _Label_3759		(int)
	load	[r14+-112],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3759
!   _temp_3756 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_3760
_Label_3759:
!   _temp_3756 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_3760:
!   if _temp_3756 then goto _Label_3751 else goto _Label_3749
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3749
	jmp	_Label_3751
_Label_3751:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3763 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-96]
!   Data Move: _temp_3762 = *_temp_3763  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_3762) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3764 = _temp_3762 + 20
	load	[r14+-100],r1
	add	r1,20,r1
	store	r1,[r14+-92]
!   Data Move: _temp_3761 = *_temp_3764  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_3761 >= 0 then goto _Label_3750		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3750
!	jmp	_Label_3749
_Label_3749:
! THEN...
	mov	2773,r13		! source line 2773
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3765 = _StringConst_156
	set	_StringConst_156,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_3765  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2773,r13		! source line 2773
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3750:
! ASSIGNMENT STATEMENT...
	mov	2775,r13		! source line 2775
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3766 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: fcb = *_temp_3766  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-136]
! WHILE STATEMENT...
	mov	2776,r13		! source line 2776
	mov	"\0\0WH",r10
_Label_3767:
!   if numBytes <= 0 then goto _Label_3769		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3769
!	jmp	_Label_3768
_Label_3768:
	mov	2776,r13		! source line 2776
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2785,r13		! source line 2785
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
	mov	2786,r13		! source line 2786
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
	mov	2790,r13		! source line 2790
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3773 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-76]
!   Data Move: _temp_3772 = *_temp_3773  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_3772 == sector then goto _Label_3771		(int)
	load	[r14+-80],r1
	load	[r14+-120],r2
	cmp	r1,r2
	be	_Label_3771
!	jmp	_Label_3770
_Label_3770:
! THEN...
	mov	2792,r13		! source line 2792
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2792,r13		! source line 2792
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_3774) then goto _runtimeErrorNullPointer
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
_Label_3771:
! ASSIGNMENT STATEMENT...
	mov	2794,r13		! source line 2794
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3776 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-64]
!   Data Move: _temp_3775 = *_temp_3776  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   posInBuffer = _temp_3775 + offset		(int)
	load	[r14+-68],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
! ASSIGNMENT STATEMENT...
	mov	2795,r13		! source line 2795
	mov	"\0\0AS",r10
!   _temp_3777 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_3777  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Call the function
	mov	2795,r13		! source line 2795
	mov	"\0\0CA",r10
	call	_P_System_Min
!   Retrieve Result: targetName=bytesToMove  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-132]
! IF STATEMENT...
	mov	2796,r13		! source line 2796
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3781 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-52]
!   Data Move: _temp_3780 = *_temp_3781  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if _temp_3780 != sector then goto _Label_3779		(int)
	load	[r14+-56],r1
	load	[r14+-120],r2
	cmp	r1,r2
	bne	_Label_3779
!	jmp	_Label_3778
_Label_3778:
	jmp	_Label_3782
_Label_3779:
! ELSE...
	mov	2798,r13		! source line 2798
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	2798,r13		! source line 2798
	mov	"\0\0IF",r10
!   if intIsZero (offset) then goto _Label_3785
	load	[r14+-124],r1
	cmp	r1,r0
	be	_Label_3785
	jmp	_Label_3784
_Label_3785:
!   if bytesToMove != 8192 then goto _Label_3784		(int)
	load	[r14+-132],r1
	mov	8192,r2
	cmp	r1,r2
	bne	_Label_3784
!	jmp	_Label_3783
_Label_3783:
	jmp	_Label_3786
_Label_3784:
! ELSE...
	mov	2802,r13		! source line 2802
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	2802,r13		! source line 2802
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3789 = fcb + 20
	load	[r14+-136],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   Data Move: _temp_3788 = *_temp_3789  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_3787 = sector + _temp_3788		(int)
	load	[r14+-120],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3791 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-32]
!   Data Move: _temp_3790 = *_temp_3791  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   _temp_3792 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_3787  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_3790  sizeInBytes=4
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
_Label_3786:
! END IF...
_Label_3782:
! ASSIGNMENT STATEMENT...
	mov	2806,r13		! source line 2806
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3793 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3793 = sector  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2807,r13		! source line 2807
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3794 = fcb + 36
	load	[r14+-136],r1
	add	r1,36,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_3794 = 1  (sizeInBytes=1)
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
	mov	2811,r13		! source line 2811
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2812,r13		! source line 2812
	mov	"\0\0AS",r10
!   sourceAddr = sourceAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2813,r13		! source line 2813
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2814,r13		! source line 2814
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-132],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_3767
_Label_3769:
! SEND STATEMENT...
	mov	2821,r13		! source line 2821
	mov	"\0\0SE",r10
!   _temp_3795 = &fileManagerLock
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
	mov	2823,r13		! source line 2823
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
	.word	_Label_3796
	.word	20		! total size of parameters
	.word	144		! frame size = 144
	.word	_Label_3797
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3798
	.word	12
	.word	4
	.word	_Label_3799
	.word	16
	.word	4
	.word	_Label_3800
	.word	20
	.word	4
	.word	_Label_3801
	.word	24
	.word	4
	.word	_Label_3802
	.word	-16
	.word	4
	.word	_Label_3803
	.word	-20
	.word	4
	.word	_Label_3804
	.word	-24
	.word	4
	.word	_Label_3805
	.word	-28
	.word	4
	.word	_Label_3806
	.word	-32
	.word	4
	.word	_Label_3807
	.word	-36
	.word	4
	.word	_Label_3808
	.word	-40
	.word	4
	.word	_Label_3809
	.word	-44
	.word	4
	.word	_Label_3810
	.word	-48
	.word	4
	.word	_Label_3811
	.word	-52
	.word	4
	.word	_Label_3812
	.word	-56
	.word	4
	.word	_Label_3813
	.word	-60
	.word	4
	.word	_Label_3814
	.word	-64
	.word	4
	.word	_Label_3815
	.word	-68
	.word	4
	.word	_Label_3816
	.word	-72
	.word	4
	.word	_Label_3817
	.word	-76
	.word	4
	.word	_Label_3818
	.word	-80
	.word	4
	.word	_Label_3819
	.word	-84
	.word	4
	.word	_Label_3820
	.word	-88
	.word	4
	.word	_Label_3821
	.word	-92
	.word	4
	.word	_Label_3822
	.word	-96
	.word	4
	.word	_Label_3823
	.word	-100
	.word	4
	.word	_Label_3824
	.word	-104
	.word	4
	.word	_Label_3825
	.word	-108
	.word	4
	.word	_Label_3826
	.word	-112
	.word	4
	.word	_Label_3827
	.word	-9
	.word	1
	.word	_Label_3828
	.word	-10
	.word	1
	.word	_Label_3829
	.word	-116
	.word	4
	.word	_Label_3830
	.word	-120
	.word	4
	.word	_Label_3831
	.word	-124
	.word	4
	.word	_Label_3832
	.word	-128
	.word	4
	.word	_Label_3833
	.word	-132
	.word	4
	.word	_Label_3834
	.word	-136
	.word	4
	.word	0
_Label_3796:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchWrite\0"
	.align
_Label_3797:
	.ascii	"Pself\0"
	.align
_Label_3798:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3799:
	.byte	'I'
	.ascii	"sourceAddr\0"
	.align
_Label_3800:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_3801:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3802:
	.byte	'?'
	.ascii	"_temp_3795\0"
	.align
_Label_3803:
	.byte	'?'
	.ascii	"_temp_3794\0"
	.align
_Label_3804:
	.byte	'?'
	.ascii	"_temp_3793\0"
	.align
_Label_3805:
	.byte	'?'
	.ascii	"_temp_3792\0"
	.align
_Label_3806:
	.byte	'?'
	.ascii	"_temp_3791\0"
	.align
_Label_3807:
	.byte	'?'
	.ascii	"_temp_3790\0"
	.align
_Label_3808:
	.byte	'?'
	.ascii	"_temp_3789\0"
	.align
_Label_3809:
	.byte	'?'
	.ascii	"_temp_3788\0"
	.align
_Label_3810:
	.byte	'?'
	.ascii	"_temp_3787\0"
	.align
_Label_3811:
	.byte	'?'
	.ascii	"_temp_3781\0"
	.align
_Label_3812:
	.byte	'?'
	.ascii	"_temp_3780\0"
	.align
_Label_3813:
	.byte	'?'
	.ascii	"_temp_3777\0"
	.align
_Label_3814:
	.byte	'?'
	.ascii	"_temp_3776\0"
	.align
_Label_3815:
	.byte	'?'
	.ascii	"_temp_3775\0"
	.align
_Label_3816:
	.byte	'?'
	.ascii	"_temp_3774\0"
	.align
_Label_3817:
	.byte	'?'
	.ascii	"_temp_3773\0"
	.align
_Label_3818:
	.byte	'?'
	.ascii	"_temp_3772\0"
	.align
_Label_3819:
	.byte	'?'
	.ascii	"_temp_3766\0"
	.align
_Label_3820:
	.byte	'?'
	.ascii	"_temp_3765\0"
	.align
_Label_3821:
	.byte	'?'
	.ascii	"_temp_3764\0"
	.align
_Label_3822:
	.byte	'?'
	.ascii	"_temp_3763\0"
	.align
_Label_3823:
	.byte	'?'
	.ascii	"_temp_3762\0"
	.align
_Label_3824:
	.byte	'?'
	.ascii	"_temp_3761\0"
	.align
_Label_3825:
	.byte	'?'
	.ascii	"_temp_3758\0"
	.align
_Label_3826:
	.byte	'?'
	.ascii	"_temp_3757\0"
	.align
_Label_3827:
	.byte	'C'
	.ascii	"_temp_3756\0"
	.align
_Label_3828:
	.byte	'C'
	.ascii	"_temp_3753\0"
	.align
_Label_3829:
	.byte	'?'
	.ascii	"_temp_3748\0"
	.align
_Label_3830:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_3831:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_3832:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_3833:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_3834:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  CLASS FileControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileControlBlock:
	.word	_Label_3835
	jmp	_Method_P_Kernel_FileControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_FileControlBlock_2	! 8:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_3835:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3836
	.word	_sourceFileName
	.word	391		! line number
	.word	40		! size of instances, in bytes
	.word	_P_Kernel_FileControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_3836:
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
_Label_4198:
	push	r0
	sub	r1,1,r1
	bne	_Label_4198
	mov	2859,r13		! source line 2859
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2860,r13		! source line 2860
	mov	"\0\0AS",r10
!   numberOfUsers = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2861,r13		! source line 2861
	mov	"\0\0AS",r10
	mov	2861,r13		! source line 2861
	mov	"\0\0SE",r10
!   _temp_3837 = &_P_Kernel_frameManager
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
	mov	2862,r13		! source line 2862
	mov	"\0\0AS",r10
!   relativeSectorInBuffer = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! ASSIGNMENT STATEMENT...
	mov	2863,r13		! source line 2863
	mov	"\0\0AS",r10
!   bufferIsDirty = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+36]
! ASSIGNMENT STATEMENT...
	mov	2864,r13		! source line 2864
	mov	"\0\0AS",r10
!   startingSectorOfFile = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! RETURN STATEMENT...
	mov	2864,r13		! source line 2864
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
	.word	_Label_3838
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_3839
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3840
	.word	-12
	.word	4
	.word	0
_Label_3838:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_3839:
	.ascii	"Pself\0"
	.align
_Label_3840:
	.byte	'?'
	.ascii	"_temp_3837\0"
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
_Label_4199:
	push	r0
	sub	r1,1,r1
	bne	_Label_4199
	mov	2869,r13		! source line 2869
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3841 = _StringConst_157
	set	_StringConst_157,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_3841  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2870,r13		! source line 2870
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fcbID  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2871,r13		! source line 2871
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3842 = _StringConst_158
	set	_StringConst_158,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_3842  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2872,r13		! source line 2872
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=numberOfUsers  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2873,r13		! source line 2873
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3843 = _StringConst_159
	set	_StringConst_159,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3843  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2874,r13		! source line 2874
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=startingSectorOfFile  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2875,r13		! source line 2875
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3844 = _StringConst_160
	set	_StringConst_160,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3844  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2876,r13		! source line 2876
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeOfFileInBytes  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2877,r13		! source line 2877
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3845 = _StringConst_161
	set	_StringConst_161,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3845  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2878,r13		! source line 2878
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=bufferPtr  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2879,r13		! source line 2879
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_3846 = _StringConst_162
	set	_StringConst_162,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3846  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2880,r13		! source line 2880
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=relativeSectorInBuffer  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2881,r13		! source line 2881
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2882,r13		! source line 2882
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2882,r13		! source line 2882
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
	.word	_Label_3847
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_3848
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3849
	.word	-12
	.word	4
	.word	_Label_3850
	.word	-16
	.word	4
	.word	_Label_3851
	.word	-20
	.word	4
	.word	_Label_3852
	.word	-24
	.word	4
	.word	_Label_3853
	.word	-28
	.word	4
	.word	_Label_3854
	.word	-32
	.word	4
	.word	0
_Label_3847:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_3848:
	.ascii	"Pself\0"
	.align
_Label_3849:
	.byte	'?'
	.ascii	"_temp_3846\0"
	.align
_Label_3850:
	.byte	'?'
	.ascii	"_temp_3845\0"
	.align
_Label_3851:
	.byte	'?'
	.ascii	"_temp_3844\0"
	.align
_Label_3852:
	.byte	'?'
	.ascii	"_temp_3843\0"
	.align
_Label_3853:
	.byte	'?'
	.ascii	"_temp_3842\0"
	.align
_Label_3854:
	.byte	'?'
	.ascii	"_temp_3841\0"
	.align
! 
! ===============  CLASS OpenFile  ===============
! 
! Dispatch Table:
! 
_P_Kernel_OpenFile:
	.word	_Label_3855
	jmp	_Method_P_Kernel_OpenFile_1	! 4:	Print
	jmp	_Method_P_Kernel_OpenFile_2	! 8:	ReadBytes
	jmp	_Method_P_Kernel_OpenFile_3	! 12:	ReadInt
	jmp	_Method_P_Kernel_OpenFile_4	! 16:	LoadExecutable
	.word	0
! 
! Class descriptor:
! 
_Label_3855:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3856
	.word	_sourceFileName
	.word	408		! line number
	.word	28		! size of instances, in bytes
	.word	_P_Kernel_OpenFile
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_3856:
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
_Label_4200:
	push	r0
	sub	r1,1,r1
	bne	_Label_4200
	mov	2911,r13		! source line 2911
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3857 = _StringConst_163
	set	_StringConst_163,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3857  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2912,r13		! source line 2912
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=currentPos  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2913,r13		! source line 2913
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3858 = _StringConst_164
	set	_StringConst_164,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3858  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2914,r13		! source line 2914
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	2915,r13		! source line 2915
	mov	"\0\0IF",r10
!   if fcb == 0 then goto _Label_3860		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3860
!	jmp	_Label_3859
_Label_3859:
! THEN...
	mov	2916,r13		! source line 2916
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2916,r13		! source line 2916
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
	jmp	_Label_3861
_Label_3860:
! ELSE...
	mov	2918,r13		! source line 2918
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_3862 = _StringConst_165
	set	_StringConst_165,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3862  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2918,r13		! source line 2918
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_3861:
! RETURN STATEMENT...
	mov	2915,r13		! source line 2915
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
	.word	_Label_3863
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_3864
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3865
	.word	-12
	.word	4
	.word	_Label_3866
	.word	-16
	.word	4
	.word	_Label_3867
	.word	-20
	.word	4
	.word	0
_Label_3863:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_3864:
	.ascii	"Pself\0"
	.align
_Label_3865:
	.byte	'?'
	.ascii	"_temp_3862\0"
	.align
_Label_3866:
	.byte	'?'
	.ascii	"_temp_3858\0"
	.align
_Label_3867:
	.byte	'?'
	.ascii	"_temp_3857\0"
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
_Label_4201:
	push	r0
	sub	r1,1,r1
	bne	_Label_4201
	mov	2924,r13		! source line 2924
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2934,r13		! source line 2934
	mov	"\0\0SE",r10
!   _temp_3868 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-36]
!   _temp_3869 = _temp_3868 + 4
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
	mov	2935,r13		! source line 2935
	mov	"\0\0AS",r10
!   pos = currentPos		(4 bytes)
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2936,r13		! source line 2936
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
	mov	2937,r13		! source line 2937
	mov	"\0\0SE",r10
!   _temp_3870 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   _temp_3871 = _temp_3870 + 4
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
	mov	2938,r13		! source line 2938
	mov	"\0\0RE",r10
	mov	2938,r13		! source line 2938
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   _temp_3874 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_3873  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_3872  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   ReturnResult: _temp_3872  (sizeInBytes=1)
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
	.word	_Label_3875
	.word	12		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_3876
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3877
	.word	12
	.word	4
	.word	_Label_3878
	.word	16
	.word	4
	.word	_Label_3879
	.word	-16
	.word	4
	.word	_Label_3880
	.word	-20
	.word	4
	.word	_Label_3881
	.word	-9
	.word	1
	.word	_Label_3882
	.word	-24
	.word	4
	.word	_Label_3883
	.word	-28
	.word	4
	.word	_Label_3884
	.word	-32
	.word	4
	.word	_Label_3885
	.word	-36
	.word	4
	.word	_Label_3886
	.word	-40
	.word	4
	.word	0
_Label_3875:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadBytes\0"
	.align
_Label_3876:
	.ascii	"Pself\0"
	.align
_Label_3877:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_3878:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3879:
	.byte	'?'
	.ascii	"_temp_3874\0"
	.align
_Label_3880:
	.byte	'?'
	.ascii	"_temp_3873\0"
	.align
_Label_3881:
	.byte	'C'
	.ascii	"_temp_3872\0"
	.align
_Label_3882:
	.byte	'?'
	.ascii	"_temp_3871\0"
	.align
_Label_3883:
	.byte	'?'
	.ascii	"_temp_3870\0"
	.align
_Label_3884:
	.byte	'?'
	.ascii	"_temp_3869\0"
	.align
_Label_3885:
	.byte	'?'
	.ascii	"_temp_3868\0"
	.align
_Label_3886:
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
_Label_4202:
	push	r0
	sub	r1,1,r1
	bne	_Label_4202
	mov	2943,r13		! source line 2943
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2948,r13		! source line 2948
	mov	"\0\0IF",r10
	mov	2948,r13		! source line 2948
	mov	"\0\0SE",r10
!   _temp_3890 = &i
	add	r14,-28,r1
	store	r1,[r14+-24]
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_3891) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_3890  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_3889  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_3889 then goto _Label_3888 else goto _Label_3887
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3887
	jmp	_Label_3888
_Label_3887:
! THEN...
	mov	2949,r13		! source line 2949
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3892 = _StringConst_166
	set	_StringConst_166,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3892  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2949,r13		! source line 2949
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3888:
! RETURN STATEMENT...
	mov	2951,r13		! source line 2951
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
	.word	_Label_3893
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_3894
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3895
	.word	-16
	.word	4
	.word	_Label_3896
	.word	-20
	.word	4
	.word	_Label_3897
	.word	-24
	.word	4
	.word	_Label_3898
	.word	-9
	.word	1
	.word	_Label_3899
	.word	-28
	.word	4
	.word	0
_Label_3893:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadInt\0"
	.align
_Label_3894:
	.ascii	"Pself\0"
	.align
_Label_3895:
	.byte	'?'
	.ascii	"_temp_3892\0"
	.align
_Label_3896:
	.byte	'?'
	.ascii	"_temp_3891\0"
	.align
_Label_3897:
	.byte	'?'
	.ascii	"_temp_3890\0"
	.align
_Label_3898:
	.byte	'C'
	.ascii	"_temp_3889\0"
	.align
_Label_3899:
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
_Label_4203:
	push	r0
	sub	r1,1,r1
	bne	_Label_4203
	mov	2956,r13		! source line 2956
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2982,r13		! source line 2982
	mov	"\0\0IF",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3903 = addrSpace + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-216]
!   Data Move: _temp_3902 = *_temp_3903  (sizeInBytes=4)
	load	[r14+-216],r1
	load	[r1],r1
	store	r1,[r14+-220]
!   if intIsZero (_temp_3902) then goto _Label_3901
	load	[r14+-220],r1
	cmp	r1,r0
	be	_Label_3901
!	jmp	_Label_3900
_Label_3900:
! THEN...
	mov	2983,r13		! source line 2983
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3904 = _StringConst_167
	set	_StringConst_167,r1
	store	r1,[r14+-212]
!   Prepare Argument: offset=8  value=_temp_3904  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2983,r13		! source line 2983
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3901:
! IF STATEMENT...
	mov	2987,r13		! source line 2987
	mov	"\0\0IF",r10
	mov	2987,r13		! source line 2987
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-204]
!   if intIsZero (_temp_3908) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3907  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-208]
!   if _temp_3907 == 1112300152 then goto _Label_3906		(int)
	load	[r14+-208],r1
	set	1112300152,r2
	cmp	r1,r2
	be	_Label_3906
!	jmp	_Label_3905
_Label_3905:
! THEN...
	mov	2988,r13		! source line 2988
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3909 = _StringConst_168
	set	_StringConst_168,r1
	store	r1,[r14+-200]
!   Prepare Argument: offset=8  value=_temp_3909  sizeInBytes=4
	load	[r14+-200],r1
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
_Label_3906:
! ASSIGNMENT STATEMENT...
	mov	2993,r13		! source line 2993
	mov	"\0\0AS",r10
	mov	2993,r13		! source line 2993
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-196]
!   if intIsZero (_temp_3910) then goto _runtimeErrorNullPointer
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
	mov	2994,r13		! source line 2994
	mov	"\0\0AS",r10
	mov	2994,r13		! source line 2994
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-192]
!   if intIsZero (_temp_3911) then goto _runtimeErrorNullPointer
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
	mov	2995,r13		! source line 2995
	mov	"\0\0AS",r10
	mov	2995,r13		! source line 2995
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_3912) then goto _runtimeErrorNullPointer
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
	mov	2996,r13		! source line 2996
	mov	"\0\0AS",r10
	mov	2996,r13		! source line 2996
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-184]
!   if intIsZero (_temp_3913) then goto _runtimeErrorNullPointer
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
	mov	2997,r13		! source line 2997
	mov	"\0\0AS",r10
	mov	2997,r13		! source line 2997
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-180]
!   if intIsZero (_temp_3914) then goto _runtimeErrorNullPointer
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
	mov	2998,r13		! source line 2998
	mov	"\0\0AS",r10
	mov	2998,r13		! source line 2998
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-176]
!   if intIsZero (_temp_3915) then goto _runtimeErrorNullPointer
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
	mov	3001,r13		! source line 3001
	mov	"\0\0IF",r10
!   _temp_3918 = textSize rem 8192		(int)
	load	[r14+-232],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-172]
!   if intIsZero (_temp_3918) then goto _Label_3917
	load	[r14+-172],r1
	cmp	r1,r0
	be	_Label_3917
!	jmp	_Label_3916
_Label_3916:
! THEN...
	mov	3002,r13		! source line 3002
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3919 = _StringConst_169
	set	_StringConst_169,r1
	store	r1,[r14+-168]
!   Prepare Argument: offset=8  value=_temp_3919  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+0]
!   Call the function
	mov	3002,r13		! source line 3002
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3003,r13		! source line 3003
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3917:
! ASSIGNMENT STATEMENT...
	mov	3005,r13		! source line 3005
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
	mov	3009,r13		! source line 3009
	mov	"\0\0IF",r10
!   if intIsZero (textStart) then goto _Label_3921
	load	[r14+-244],r1
	cmp	r1,r0
	be	_Label_3921
!	jmp	_Label_3920
_Label_3920:
! THEN...
	mov	3010,r13		! source line 3010
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3922 = _StringConst_170
	set	_StringConst_170,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_3922  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	3010,r13		! source line 3010
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3011,r13		! source line 3011
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3921:
! IF STATEMENT...
	mov	3015,r13		! source line 3015
	mov	"\0\0IF",r10
!   _temp_3925 = dataSize rem 8192		(int)
	load	[r14+-236],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
!   if intIsZero (_temp_3925) then goto _Label_3924
	load	[r14+-160],r1
	cmp	r1,r0
	be	_Label_3924
!	jmp	_Label_3923
_Label_3923:
! THEN...
	mov	3016,r13		! source line 3016
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3926 = _StringConst_171
	set	_StringConst_171,r1
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_3926  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	3016,r13		! source line 3016
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3017,r13		! source line 3017
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3924:
! IF STATEMENT...
	mov	3019,r13		! source line 3019
	mov	"\0\0IF",r10
!   _temp_3929 = textStart + textSize		(int)
	load	[r14+-244],r1
	load	[r14+-232],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   if dataStart == _temp_3929 then goto _Label_3928		(int)
	load	[r14+-248],r1
	load	[r14+-152],r2
	cmp	r1,r2
	be	_Label_3928
!	jmp	_Label_3927
_Label_3927:
! THEN...
	mov	3020,r13		! source line 3020
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3930 = _StringConst_172
	set	_StringConst_172,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_3930  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	3020,r13		! source line 3020
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3021,r13		! source line 3021
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3928:
! ASSIGNMENT STATEMENT...
	mov	3023,r13		! source line 3023
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
	mov	3026,r13		! source line 3026
	mov	"\0\0IF",r10
!   _temp_3933 = bssSize rem 8192		(int)
	load	[r14+-240],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
!   if intIsZero (_temp_3933) then goto _Label_3932
	load	[r14+-144],r1
	cmp	r1,r0
	be	_Label_3932
!	jmp	_Label_3931
_Label_3931:
! THEN...
	mov	3027,r13		! source line 3027
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3934 = _StringConst_173
	set	_StringConst_173,r1
	store	r1,[r14+-140]
!   Prepare Argument: offset=8  value=_temp_3934  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+0]
!   Call the function
	mov	3027,r13		! source line 3027
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3028,r13		! source line 3028
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3932:
! IF STATEMENT...
	mov	3030,r13		! source line 3030
	mov	"\0\0IF",r10
!   _temp_3937 = dataStart + dataSize		(int)
	load	[r14+-248],r1
	load	[r14+-236],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
!   if bssStart == _temp_3937 then goto _Label_3936		(int)
	load	[r14+-252],r1
	load	[r14+-136],r2
	cmp	r1,r2
	be	_Label_3936
!	jmp	_Label_3935
_Label_3935:
! THEN...
	mov	3031,r13		! source line 3031
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3938 = _StringConst_174
	set	_StringConst_174,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_3938  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	3031,r13		! source line 3031
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3032,r13		! source line 3032
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3936:
! ASSIGNMENT STATEMENT...
	mov	3034,r13		! source line 3034
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
	mov	3037,r13		! source line 3037
	mov	"\0\0AS",r10
!   _temp_3941 = textSizeInPages + dataSizeInPages		(int)
	load	[r14+-260],r1
	load	[r14+-264],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
!   _temp_3940 = _temp_3941 + bssSizeInPages		(int)
	load	[r14+-120],r1
	load	[r14+-268],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
!   _temp_3939 = _temp_3940 + 1		(int)
	load	[r14+-124],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
!   i = _temp_3939 + 0		(int)
	load	[r14+-128],r1
	mov	0,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
! IF STATEMENT...
	mov	3052,r13		! source line 3052
	mov	"\0\0IF",r10
!   if i <= 20 then goto _Label_3943		(int)
	load	[r14+-256],r1
	mov	20,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3943
!	jmp	_Label_3942
_Label_3942:
! THEN...
	mov	3053,r13		! source line 3053
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3944 = _StringConst_175
	set	_StringConst_175,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_3944  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	3053,r13		! source line 3053
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_3945 = _StringConst_176
	set	_StringConst_176,r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_3945  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+4]
!   Call the function
	mov	3054,r13		! source line 3054
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_3946 = _StringConst_177
	set	_StringConst_177,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_3946  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+4]
!   Call the function
	mov	3055,r13		! source line 3055
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! RETURN STATEMENT...
	mov	3056,r13		! source line 3056
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3943:
! SEND STATEMENT...
	mov	3058,r13		! source line 3058
	mov	"\0\0SE",r10
!   _temp_3947 = &_P_Kernel_frameManager
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
	mov	3064,r13		! source line 3064
	mov	"\0\0IF",r10
	mov	3064,r13		! source line 3064
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-96]
!   if intIsZero (_temp_3951) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3950  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-100]
!   if _temp_3950 == 707406378 then goto _Label_3949		(int)
	load	[r14+-100],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3949
!	jmp	_Label_3948
_Label_3948:
! THEN...
	mov	3065,r13		! source line 3065
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3952 = _StringConst_178
	set	_StringConst_178,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_3952  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	3065,r13		! source line 3065
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3066,r13		! source line 3066
	mov	"\0\0SE",r10
!   _temp_3953 = &_P_Kernel_frameManager
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
	mov	3067,r13		! source line 3067
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3949:
! ASSIGNMENT STATEMENT...
	mov	3071,r13		! source line 3071
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
	mov	3072,r13		! source line 3072
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3958 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-84]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3959 = textSizeInPages		(4 bytes)
	load	[r14+-260],r1
	store	r1,[r14+-80]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3958  (sizeInBytes=4)
	load	[r14+-84],r1
	store	r1,[r14+-256]
_Label_3954:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3959 then goto _Label_3957		
	load	[r14+-256],r1
	load	[r14+-80],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3957
_Label_3955:
	mov	3072,r13		! source line 3072
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	3073,r13		! source line 3073
	mov	"\0\0AS",r10
	mov	3073,r13		! source line 3073
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
	mov	3076,r13		! source line 3076
	mov	"\0\0IF",r10
	mov	3076,r13		! source line 3076
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_3963) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3962  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_3962 then goto _Label_3961 else goto _Label_3960
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3960
	jmp	_Label_3961
_Label_3960:
! THEN...
	mov	3077,r13		! source line 3077
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3964 = _StringConst_179
	set	_StringConst_179,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_3964  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	3077,r13		! source line 3077
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3078,r13		! source line 3078
	mov	"\0\0SE",r10
!   _temp_3965 = &_P_Kernel_frameManager
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
	mov	3079,r13		! source line 3079
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3961:
! SEND STATEMENT...
	mov	3081,r13		! source line 3081
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
	mov	3082,r13		! source line 3082
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_3956:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_3954
! END FOR
_Label_3957:
! IF STATEMENT...
	mov	3086,r13		! source line 3086
	mov	"\0\0IF",r10
	mov	3086,r13		! source line 3086
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_3969) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3968  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
!   if _temp_3968 == 707406378 then goto _Label_3967		(int)
	load	[r14+-64],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3967
!	jmp	_Label_3966
_Label_3966:
! THEN...
	mov	3087,r13		! source line 3087
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3970 = _StringConst_180
	set	_StringConst_180,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_3970  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	3087,r13		! source line 3087
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3088,r13		! source line 3088
	mov	"\0\0SE",r10
!   _temp_3971 = &_P_Kernel_frameManager
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
	mov	3089,r13		! source line 3089
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3967:
! FOR STATEMENT...
	mov	3093,r13		! source line 3093
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3976 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3977 = dataSizeInPages		(4 bytes)
	load	[r14+-264],r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3976  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-256]
_Label_3972:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3977 then goto _Label_3975		
	load	[r14+-256],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3975
_Label_3973:
	mov	3093,r13		! source line 3093
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	3094,r13		! source line 3094
	mov	"\0\0AS",r10
	mov	3094,r13		! source line 3094
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
	mov	3097,r13		! source line 3097
	mov	"\0\0IF",r10
	mov	3097,r13		! source line 3097
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_3981) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3980  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_3980 then goto _Label_3979 else goto _Label_3978
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3978
	jmp	_Label_3979
_Label_3978:
! THEN...
	mov	3098,r13		! source line 3098
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3982 = _StringConst_181
	set	_StringConst_181,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_3982  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	3098,r13		! source line 3098
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3099,r13		! source line 3099
	mov	"\0\0SE",r10
!   _temp_3983 = &_P_Kernel_frameManager
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
	mov	3100,r13		! source line 3100
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3979:
! ASSIGNMENT STATEMENT...
	mov	3102,r13		! source line 3102
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_3974:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_3972
! END FOR
_Label_3975:
! IF STATEMENT...
	mov	3106,r13		! source line 3106
	mov	"\0\0IF",r10
	mov	3106,r13		! source line 3106
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_3987) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3986  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   if _temp_3986 == 707406378 then goto _Label_3985		(int)
	load	[r14+-28],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3985
!	jmp	_Label_3984
_Label_3984:
! THEN...
	mov	3107,r13		! source line 3107
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3988 = _StringConst_182
	set	_StringConst_182,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3988  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	3107,r13		! source line 3107
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3108,r13		! source line 3108
	mov	"\0\0SE",r10
!   _temp_3989 = &_P_Kernel_frameManager
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
	mov	3109,r13		! source line 3109
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3985:
! ASSIGNMENT STATEMENT...
	mov	3113,r13		! source line 3113
	mov	"\0\0AS",r10
	mov	3113,r13		! source line 3113
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
	mov	3117,r13		! source line 3117
	mov	"\0\0CE",r10
	call	MemoryZero
! RETURN STATEMENT...
	mov	3120,r13		! source line 3120
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
	.word	_Label_3990
	.word	8		! total size of parameters
	.word	272		! frame size = 272
	.word	_Label_3991
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3992
	.word	12
	.word	4
	.word	_Label_3993
	.word	-16
	.word	4
	.word	_Label_3994
	.word	-20
	.word	4
	.word	_Label_3995
	.word	-24
	.word	4
	.word	_Label_3996
	.word	-28
	.word	4
	.word	_Label_3997
	.word	-32
	.word	4
	.word	_Label_3998
	.word	-36
	.word	4
	.word	_Label_3999
	.word	-40
	.word	4
	.word	_Label_4000
	.word	-9
	.word	1
	.word	_Label_4001
	.word	-44
	.word	4
	.word	_Label_4002
	.word	-48
	.word	4
	.word	_Label_4003
	.word	-52
	.word	4
	.word	_Label_4004
	.word	-56
	.word	4
	.word	_Label_4005
	.word	-60
	.word	4
	.word	_Label_4006
	.word	-64
	.word	4
	.word	_Label_4007
	.word	-68
	.word	4
	.word	_Label_4008
	.word	-72
	.word	4
	.word	_Label_4009
	.word	-76
	.word	4
	.word	_Label_4010
	.word	-10
	.word	1
	.word	_Label_4011
	.word	-80
	.word	4
	.word	_Label_4012
	.word	-84
	.word	4
	.word	_Label_4013
	.word	-88
	.word	4
	.word	_Label_4014
	.word	-92
	.word	4
	.word	_Label_4015
	.word	-96
	.word	4
	.word	_Label_4016
	.word	-100
	.word	4
	.word	_Label_4017
	.word	-104
	.word	4
	.word	_Label_4018
	.word	-108
	.word	4
	.word	_Label_4019
	.word	-112
	.word	4
	.word	_Label_4020
	.word	-116
	.word	4
	.word	_Label_4021
	.word	-120
	.word	4
	.word	_Label_4022
	.word	-124
	.word	4
	.word	_Label_4023
	.word	-128
	.word	4
	.word	_Label_4024
	.word	-132
	.word	4
	.word	_Label_4025
	.word	-136
	.word	4
	.word	_Label_4026
	.word	-140
	.word	4
	.word	_Label_4027
	.word	-144
	.word	4
	.word	_Label_4028
	.word	-148
	.word	4
	.word	_Label_4029
	.word	-152
	.word	4
	.word	_Label_4030
	.word	-156
	.word	4
	.word	_Label_4031
	.word	-160
	.word	4
	.word	_Label_4032
	.word	-164
	.word	4
	.word	_Label_4033
	.word	-168
	.word	4
	.word	_Label_4034
	.word	-172
	.word	4
	.word	_Label_4035
	.word	-176
	.word	4
	.word	_Label_4036
	.word	-180
	.word	4
	.word	_Label_4037
	.word	-184
	.word	4
	.word	_Label_4038
	.word	-188
	.word	4
	.word	_Label_4039
	.word	-192
	.word	4
	.word	_Label_4040
	.word	-196
	.word	4
	.word	_Label_4041
	.word	-200
	.word	4
	.word	_Label_4042
	.word	-204
	.word	4
	.word	_Label_4043
	.word	-208
	.word	4
	.word	_Label_4044
	.word	-212
	.word	4
	.word	_Label_4045
	.word	-216
	.word	4
	.word	_Label_4046
	.word	-220
	.word	4
	.word	_Label_4047
	.word	-224
	.word	4
	.word	_Label_4048
	.word	-228
	.word	4
	.word	_Label_4049
	.word	-232
	.word	4
	.word	_Label_4050
	.word	-236
	.word	4
	.word	_Label_4051
	.word	-240
	.word	4
	.word	_Label_4052
	.word	-244
	.word	4
	.word	_Label_4053
	.word	-248
	.word	4
	.word	_Label_4054
	.word	-252
	.word	4
	.word	_Label_4055
	.word	-256
	.word	4
	.word	_Label_4056
	.word	-260
	.word	4
	.word	_Label_4057
	.word	-264
	.word	4
	.word	_Label_4058
	.word	-268
	.word	4
	.word	0
_Label_3990:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"LoadExecutable\0"
	.align
_Label_3991:
	.ascii	"Pself\0"
	.align
_Label_3992:
	.byte	'P'
	.ascii	"addrSpace\0"
	.align
_Label_3993:
	.byte	'?'
	.ascii	"_temp_3989\0"
	.align
_Label_3994:
	.byte	'?'
	.ascii	"_temp_3988\0"
	.align
_Label_3995:
	.byte	'?'
	.ascii	"_temp_3987\0"
	.align
_Label_3996:
	.byte	'?'
	.ascii	"_temp_3986\0"
	.align
_Label_3997:
	.byte	'?'
	.ascii	"_temp_3983\0"
	.align
_Label_3998:
	.byte	'?'
	.ascii	"_temp_3982\0"
	.align
_Label_3999:
	.byte	'?'
	.ascii	"_temp_3981\0"
	.align
_Label_4000:
	.byte	'C'
	.ascii	"_temp_3980\0"
	.align
_Label_4001:
	.byte	'?'
	.ascii	"_temp_3977\0"
	.align
_Label_4002:
	.byte	'?'
	.ascii	"_temp_3976\0"
	.align
_Label_4003:
	.byte	'?'
	.ascii	"_temp_3971\0"
	.align
_Label_4004:
	.byte	'?'
	.ascii	"_temp_3970\0"
	.align
_Label_4005:
	.byte	'?'
	.ascii	"_temp_3969\0"
	.align
_Label_4006:
	.byte	'?'
	.ascii	"_temp_3968\0"
	.align
_Label_4007:
	.byte	'?'
	.ascii	"_temp_3965\0"
	.align
_Label_4008:
	.byte	'?'
	.ascii	"_temp_3964\0"
	.align
_Label_4009:
	.byte	'?'
	.ascii	"_temp_3963\0"
	.align
_Label_4010:
	.byte	'C'
	.ascii	"_temp_3962\0"
	.align
_Label_4011:
	.byte	'?'
	.ascii	"_temp_3959\0"
	.align
_Label_4012:
	.byte	'?'
	.ascii	"_temp_3958\0"
	.align
_Label_4013:
	.byte	'?'
	.ascii	"_temp_3953\0"
	.align
_Label_4014:
	.byte	'?'
	.ascii	"_temp_3952\0"
	.align
_Label_4015:
	.byte	'?'
	.ascii	"_temp_3951\0"
	.align
_Label_4016:
	.byte	'?'
	.ascii	"_temp_3950\0"
	.align
_Label_4017:
	.byte	'?'
	.ascii	"_temp_3947\0"
	.align
_Label_4018:
	.byte	'?'
	.ascii	"_temp_3946\0"
	.align
_Label_4019:
	.byte	'?'
	.ascii	"_temp_3945\0"
	.align
_Label_4020:
	.byte	'?'
	.ascii	"_temp_3944\0"
	.align
_Label_4021:
	.byte	'?'
	.ascii	"_temp_3941\0"
	.align
_Label_4022:
	.byte	'?'
	.ascii	"_temp_3940\0"
	.align
_Label_4023:
	.byte	'?'
	.ascii	"_temp_3939\0"
	.align
_Label_4024:
	.byte	'?'
	.ascii	"_temp_3938\0"
	.align
_Label_4025:
	.byte	'?'
	.ascii	"_temp_3937\0"
	.align
_Label_4026:
	.byte	'?'
	.ascii	"_temp_3934\0"
	.align
_Label_4027:
	.byte	'?'
	.ascii	"_temp_3933\0"
	.align
_Label_4028:
	.byte	'?'
	.ascii	"_temp_3930\0"
	.align
_Label_4029:
	.byte	'?'
	.ascii	"_temp_3929\0"
	.align
_Label_4030:
	.byte	'?'
	.ascii	"_temp_3926\0"
	.align
_Label_4031:
	.byte	'?'
	.ascii	"_temp_3925\0"
	.align
_Label_4032:
	.byte	'?'
	.ascii	"_temp_3922\0"
	.align
_Label_4033:
	.byte	'?'
	.ascii	"_temp_3919\0"
	.align
_Label_4034:
	.byte	'?'
	.ascii	"_temp_3918\0"
	.align
_Label_4035:
	.byte	'?'
	.ascii	"_temp_3915\0"
	.align
_Label_4036:
	.byte	'?'
	.ascii	"_temp_3914\0"
	.align
_Label_4037:
	.byte	'?'
	.ascii	"_temp_3913\0"
	.align
_Label_4038:
	.byte	'?'
	.ascii	"_temp_3912\0"
	.align
_Label_4039:
	.byte	'?'
	.ascii	"_temp_3911\0"
	.align
_Label_4040:
	.byte	'?'
	.ascii	"_temp_3910\0"
	.align
_Label_4041:
	.byte	'?'
	.ascii	"_temp_3909\0"
	.align
_Label_4042:
	.byte	'?'
	.ascii	"_temp_3908\0"
	.align
_Label_4043:
	.byte	'?'
	.ascii	"_temp_3907\0"
	.align
_Label_4044:
	.byte	'?'
	.ascii	"_temp_3904\0"
	.align
_Label_4045:
	.byte	'?'
	.ascii	"_temp_3903\0"
	.align
_Label_4046:
	.byte	'?'
	.ascii	"_temp_3902\0"
	.align
_Label_4047:
	.byte	'I'
	.ascii	"nextVirtPage\0"
	.align
_Label_4048:
	.byte	'I'
	.ascii	"addr\0"
	.align
_Label_4049:
	.byte	'I'
	.ascii	"textSize\0"
	.align
_Label_4050:
	.byte	'I'
	.ascii	"dataSize\0"
	.align
_Label_4051:
	.byte	'I'
	.ascii	"bssSize\0"
	.align
_Label_4052:
	.byte	'I'
	.ascii	"textStart\0"
	.align
_Label_4053:
	.byte	'I'
	.ascii	"dataStart\0"
	.align
_Label_4054:
	.byte	'I'
	.ascii	"bssStart\0"
	.align
_Label_4055:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_4056:
	.byte	'I'
	.ascii	"textSizeInPages\0"
	.align
_Label_4057:
	.byte	'I'
	.ascii	"dataSizeInPages\0"
	.align
_Label_4058:
	.byte	'I'
	.ascii	"bssSizeInPages\0"
	.align
