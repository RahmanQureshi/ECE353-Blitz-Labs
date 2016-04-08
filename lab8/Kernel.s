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
_StringConst_186:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (3)\n"
	.align
_StringConst_185:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_184:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (2)\n"
	.align
_StringConst_183:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_182:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (1)\n"
	.align
_StringConst_181:
	.word	40			! length
	.ascii	"LoadExecutable: MAX_PAGES_PER_VIRT_SPACE"
	.align
_StringConst_180:
	.word	53			! length
	.ascii	"LoadExecutable: Number of pages in this address space"
	.align
_StringConst_179:
	.word	61			! length
	.ascii	"LoadExecutable: This virtual address space exceeds the limit\n"
	.align
_StringConst_178:
	.word	49			! length
	.ascii	"LoadExecutable: bssStart != dataStart + dataSize\n"
	.align
_StringConst_177:
	.word	65			! length
	.ascii	"LoadExecutable: The bss segment size not a multiple of page size\n"
	.align
_StringConst_176:
	.word	50			! length
	.ascii	"LoadExecutable: dataStart != textStart + textSize\n"
	.align
_StringConst_175:
	.word	66			! length
	.ascii	"LoadExecutable: The data segment size not a multiple of page size\n"
	.align
_StringConst_174:
	.word	95			! length
	.ascii	"LoadExecutable: The environment size does not match the \'loadAddr\' info supplied to the linker\n"
	.align
_StringConst_173:
	.word	66			! length
	.ascii	"LoadExecutable: The text segment size not a multiple of page size\n"
	.align
_StringConst_172:
	.word	33			! length
	.ascii	"LoadExecutable: Bad magic number\n"
	.align
_StringConst_171:
	.word	55			! length
	.ascii	"LoadExecutable: This virtual address space is not empty"
	.align
_StringConst_170:
	.word	32			! length
	.ascii	"Within ReadInt: ReadBytes failed"
	.align
_StringConst_169:
	.word	5			! length
	.ascii	"null\n"
	.align
_StringConst_168:
	.word	6			! length
	.ascii	", fcb="
	.align
_StringConst_167:
	.word	28			! length
	.ascii	"    OPEN FILE:   currentPos="
	.align
_StringConst_166:
	.word	26			! length
	.ascii	",  relativeSectorInBuffer="
	.align
_StringConst_165:
	.word	13			! length
	.ascii	",  bufferPtr="
	.align
_StringConst_164:
	.word	21			! length
	.ascii	",  sizeOfFileInBytes="
	.align
_StringConst_163:
	.word	18			! length
	.ascii	",  startingSector="
	.align
_StringConst_162:
	.word	17			! length
	.ascii	",  numberOfUsers="
	.align
_StringConst_161:
	.word	6			! length
	.ascii	"fcbID="
	.align
_StringConst_160:
	.word	48			! length
	.ascii	"FileManager.SynchWrite: file not properly opened"
	.align
_StringConst_159:
	.word	47			! length
	.ascii	"FileManager.SynchRead: file not properly opened"
	.align
_StringConst_158:
	.word	67			! length
	.ascii	"FileManager.Flush: buffer is dirty but relativeSectorInBuffer =  -1"
	.align
_StringConst_157:
	.word	10			! length
	.ascii	"openisnull"
	.align
_StringConst_156:
	.word	72			! length
	.ascii	"In FileManager.Open: a free FCB appears not to have been closed properly"
	.align
_StringConst_155:
	.word	51			! length
	.ascii	"Magic number in sector 0 of stub file system is bad"
	.align
_StringConst_154:
	.word	36			! length
	.ascii	"Here is the FREE list of OpenFiles:\n"
	.align
_StringConst_153:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_152:
	.word	5			! length
	.ascii	":  0x"
	.align
_StringConst_151:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_150:
	.word	30			! length
	.ascii	"Here is the OpenFile table...\n"
	.align
_StringConst_149:
	.word	47			! length
	.ascii	"Here is the FREE list of FileControlBlocks:\n   "
	.align
_StringConst_148:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_147:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_146:
	.word	38			! length
	.ascii	"Here is the FileControlBlock table...\n"
	.align
_StringConst_145:
	.word	29			! length
	.ascii	"Initializing File Manager...\n"
	.align
_StringConst_144:
	.word	40			! length
	.ascii	"SynchWriteSector: Unexpected status code"
	.align
_StringConst_143:
	.word	52			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad command word"
	.align
_StringConst_142:
	.word	95			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_141:
	.word	76			! length
	.ascii	"Disk I/O error in SynchWriteSector: Attempt to access invalid memory address"
	.align
_StringConst_140:
	.word	99			! length
	.ascii	"Disk I/O error in SynchWriteSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_139:
	.word	39			! length
	.ascii	"SynchReadSector: Unexpected status code"
	.align
_StringConst_138:
	.word	51			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad command word"
	.align
_StringConst_137:
	.word	94			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_136:
	.word	75			! length
	.ascii	"Disk I/O error in SynchReadSector: Attempt to access invalid memory address"
	.align
_StringConst_135:
	.word	98			! length
	.ascii	"Disk I/O error in SynchReadSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_134:
	.word	28			! length
	.ascii	"Initializing Disk Driver...\n"
	.align
_StringConst_133:
	.word	38			! length
	.ascii	"  Virtual page is not marked VALID!!!\n"
	.align
_StringConst_132:
	.word	38			! length
	.ascii	"  Virtual page number is too large!!!\n"
	.align
_StringConst_131:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_130:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_129:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_128:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_127:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_126:
	.word	9			! length
	.ascii	"         "
	.align
_StringConst_125:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_124:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_123:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_122:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_121:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_120:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_119:
	.word	10			! length
	.ascii	"          "
	.align
_StringConst_118:
	.word	4			! length
	.ascii	"    "
	.align
_StringConst_117:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_116:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_115:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_114:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_113:
	.word	109			! length
	.ascii	"     ==========   ==========     ==========  ==========  ==============  =====  ==========  =========  =====\n"
	.align
_StringConst_112:
	.word	109			! length
	.ascii	"        addr        entry          Virtual    Physical   Undefined Bits  Dirty  Referenced  Writeable  Valid\n"
	.align
_StringConst_111:
	.word	35			! length
	.ascii	"  Here are the frames in use: \n    "
	.align
_StringConst_110:
	.word	18			! length
	.ascii	"  numberFreeFrames"
	.align
_StringConst_109:
	.word	15			! length
	.ascii	"FRAME MANAGER:\n"
	.align
_StringConst_108:
	.word	89			! length
	.ascii	"Kernel code size appears to have grown too large and is overflowing into the frame region"
	.align
_StringConst_107:
	.word	30			! length
	.ascii	"Initializing Frame Manager...\n"
	.align
_StringConst_106:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_105:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_104:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_103:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_102:
	.word	1			! length
	.ascii	":"
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
	.word	13			! length
	.ascii	", exitStatus="
	.align
_StringConst_98:
	.word	13			! length
	.ascii	", parentsPid="
	.align
_StringConst_97:
	.word	33			! length
	.ascii	"Bad status in ProcessControlBlock"
	.align
_StringConst_96:
	.word	4			! length
	.ascii	"FREE"
	.align
_StringConst_95:
	.word	6			! length
	.ascii	"ZOMBIE"
	.align
_StringConst_94:
	.word	6			! length
	.ascii	"ACTIVE"
	.align
_StringConst_93:
	.word	9			! length
	.ascii	", status="
	.align
_StringConst_92:
	.word	8			! length
	.ascii	")   pid="
	.align
_StringConst_91:
	.word	30			! length
	.ascii	"  ProcessControlBlock   (addr="
	.align
_StringConst_90:
	.word	15			! length
	.ascii	"    myThread = "
	.align
_StringConst_89:
	.word	37			! length
	.ascii	"Here is the FREE list of Threads:\n   "
	.align
_StringConst_88:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_87:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_86:
	.word	28			! length
	.ascii	"Here is the thread table...\n"
	.align
_StringConst_85:
	.word	14			! length
	.ascii	"ThreadNameHere"
	.align
_StringConst_84:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_83:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_82:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_81:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_80:
	.word	20			! length
	.ascii	"    user registers:\n"
	.align
_StringConst_79:
	.word	20			! length
	.ascii	"    is user thread: "
	.align
_StringConst_78:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_77:
	.word	20			! length
	.ascii	"    status = UNUSED\n"
	.align
_StringConst_76:
	.word	21			! length
	.ascii	"    status = BLOCKED\n"
	.align
_StringConst_75:
	.word	21			! length
	.ascii	"    status = RUNNING\n"
	.align
_StringConst_74:
	.word	19			! length
	.ascii	"    status = READY\n"
	.align
_StringConst_73:
	.word	26			! length
	.ascii	"    status = JUST_CREATED\n"
	.align
_StringConst_72:
	.word	23			! length
	.ascii	"    stack starting addr"
	.align
_StringConst_71:
	.word	12			! length
	.ascii	"    stackTop"
	.align
_StringConst_70:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_69:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_68:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_67:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_66:
	.word	19			! length
	.ascii	"    machine state:\n"
	.align
_StringConst_65:
	.word	2			! length
	.ascii	")\n"
	.align
_StringConst_64:
	.word	29			! length
	.ascii	"\"    (addr of Thread object: "
	.align
_StringConst_63:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_62:
	.word	32			! length
	.ascii	"System stack underflow detected!"
	.align
_StringConst_61:
	.word	31			! length
	.ascii	"System stack overflow detected!"
	.align
_StringConst_60:
	.word	48			! length
	.ascii	"Ready list should always contain the idle thread"
	.align
_StringConst_59:
	.word	31			! length
	.ascii	"In Sleep, self != currentThread"
	.align
_StringConst_58:
	.word	44			! length
	.ascii	"In Sleep, currentInterruptStatus != DISABLED"
	.align
_StringConst_57:
	.word	51			! length
	.ascii	"Status of current thread should be READY or RUNNING"
	.align
_StringConst_56:
	.word	31			! length
	.ascii	"In Yield, self != currentThread"
	.align
_StringConst_55:
	.word	54			! length
	.ascii	"Attempt to broadcast a condition when lock is not held"
	.align
_StringConst_54:
	.word	52			! length
	.ascii	"Attempt to signal a condition when mutex is not held"
	.align
_StringConst_53:
	.word	51			! length
	.ascii	"Attempt to wait on condition when mutex is not held"
	.align
_StringConst_52:
	.word	52			! length
	.ascii	"Attempt to unlock a mutex by a thread not holding it"
	.align
_StringConst_51:
	.word	54			! length
	.ascii	"Attempt to lock a mutex by a thread already holding it"
	.align
_StringConst_50:
	.word	51			! length
	.ascii	"Semaphore count underflowed during \'Down\' operation"
	.align
_StringConst_49:
	.word	48			! length
	.ascii	"Semaphore count overflowed during \'Up\' operation"
	.align
_StringConst_48:
	.word	39			! length
	.ascii	"Semaphore created with initialCount < 0"
	.align
_StringConst_47:
	.word	14			! length
	.ascii	"\' was ingored\n"
	.align
_StringConst_46:
	.word	42			! length
	.ascii	"\nSerial input buffer overrun - character \'"
	.align
_StringConst_45:
	.word	21			! length
	.ascii	"serial-handler-thread"
	.align
_StringConst_44:
	.word	29			! length
	.ascii	"Initializing Serial Driver..."
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
	.ascii	"TestProgram5"
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
	be	_Label_197
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
_Label_197:
	mov	0,r1
! Make sure _P_System_ has hash value 0x9e9d23b6 (decimal -1633868874)
	set	_packageName,r2
	set	0x9e9d23b6,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_198
! Make sure _P_BitMap_ has hash value 0xa596b1b5 (decimal -1516850763)
	set	_packageName,r2
	set	0xa596b1b5,r3
	call	_CheckVersion_P_BitMap_
	.import	_CheckVersion_P_BitMap_
	cmp	r1,0
	bne	_Label_198
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_198
_Label_198:
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
_Label_4405:
	push	r0
	sub	r1,1,r1
	bne	_Label_4405
	mov	6,r13		! source line 6
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	9,r13		! source line 9
	mov	"\0\0AS",r10
	mov	9,r13		! source line 9
	mov	"\0\0SE",r10
!   _temp_199 = &_P_Kernel_threadManager
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
!   _temp_200 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-16]
!   if intIsZero (threadPtr) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_200  sizeInBytes=4
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
!   _temp_201 = _function_196_StartUserProcess
	set	_function_196_StartUserProcess,r1
	store	r1,[r14+-12]
!   if intIsZero (threadPtr) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_201  sizeInBytes=4
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
	.word	_Label_202
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_203
	.word	-12
	.word	4
	.word	_Label_204
	.word	-16
	.word	4
	.word	_Label_205
	.word	-20
	.word	4
	.word	_Label_206
	.word	-24
	.word	4
	.word	0
_Label_202:
	.ascii	"InitFirstProcess\0"
	.align
_Label_203:
	.byte	'?'
	.ascii	"_temp_201\0"
	.align
_Label_204:
	.byte	'?'
	.ascii	"_temp_200\0"
	.align
_Label_205:
	.byte	'?'
	.ascii	"_temp_199\0"
	.align
_Label_206:
	.byte	'P'
	.ascii	"threadPtr\0"
	.align
! 
! ===============  FUNCTION StartUserProcess  ===============
! 
_function_196_StartUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_196_StartUserProcess,r1
	push	r1
	mov	25,r1
_Label_4406:
	push	r0
	sub	r1,1,r1
	bne	_Label_4406
	mov	14,r13		! source line 14
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	24,r13		! source line 24
	mov	"\0\0AS",r10
	mov	24,r13		! source line 24
	mov	"\0\0SE",r10
!   _temp_207 = &_P_Kernel_processManager
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
!   _temp_208 = pcb + 24
	load	[r14+-76],r1
	add	r1,24,r1
	store	r1,[r14+-68]
!   Data Move: *_temp_208 = _P_Kernel_currentThread  (sizeInBytes=4)
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
!   _temp_209 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-64]
!   Data Move: *_temp_209 = pcb  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r14+-64],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	30,r13		! source line 30
	mov	"\0\0AS",r10
	mov	30,r13		! source line 30
	mov	"\0\0SE",r10
!   _temp_210 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-60]
!   _temp_211 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=12  value=_temp_210  sizeInBytes=4
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
!   _temp_213 = pcb + 32
	load	[r14+-76],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   _temp_212 = _temp_213		(4 bytes)
	load	[r14+-48],r1
	store	r1,[r14+-52]
!   if intIsZero (openFilePtr) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_212  sizeInBytes=4
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
!   _temp_214 = &_P_Kernel_fileManager
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
!   _temp_216 = pcb + 32
	load	[r14+-76],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   _temp_217 = _temp_216 + 4
	load	[r14+-36],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Data Move: _temp_215 = *_temp_217  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   initUserStackTop = _temp_215 * 8192		(int)
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
!   _temp_218 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-28]
!   Move address of _temp_218 [999 ] into _temp_219
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
!   initSystemStackTop = _temp_219		(4 bytes)
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
!   _temp_220 = pcb + 32
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
!   _temp_221 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_221 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-16],r2
	storeb	r1,[r2]
! CALL STATEMENT...
!   _temp_222 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_222  sizeInBytes=4
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
_RoutineDescriptor__function_196_StartUserProcess:
	.word	_sourceFileName
	.word	_Label_223
	.word	4		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_224
	.word	8
	.word	4
	.word	_Label_225
	.word	-12
	.word	4
	.word	_Label_226
	.word	-16
	.word	4
	.word	_Label_227
	.word	-20
	.word	4
	.word	_Label_228
	.word	-24
	.word	4
	.word	_Label_229
	.word	-28
	.word	4
	.word	_Label_230
	.word	-32
	.word	4
	.word	_Label_231
	.word	-36
	.word	4
	.word	_Label_232
	.word	-40
	.word	4
	.word	_Label_233
	.word	-44
	.word	4
	.word	_Label_234
	.word	-48
	.word	4
	.word	_Label_235
	.word	-52
	.word	4
	.word	_Label_236
	.word	-56
	.word	4
	.word	_Label_237
	.word	-60
	.word	4
	.word	_Label_238
	.word	-64
	.word	4
	.word	_Label_239
	.word	-68
	.word	4
	.word	_Label_240
	.word	-72
	.word	4
	.word	_Label_241
	.word	-76
	.word	4
	.word	_Label_242
	.word	-80
	.word	4
	.word	_Label_243
	.word	-84
	.word	4
	.word	_Label_244
	.word	-88
	.word	4
	.word	_Label_245
	.word	-92
	.word	4
	.word	_Label_246
	.word	-96
	.word	4
	.word	0
_Label_223:
	.ascii	"StartUserProcess\0"
	.align
_Label_224:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_225:
	.byte	'?'
	.ascii	"_temp_222\0"
	.align
_Label_226:
	.byte	'?'
	.ascii	"_temp_221\0"
	.align
_Label_227:
	.byte	'?'
	.ascii	"_temp_220\0"
	.align
_Label_228:
	.byte	'?'
	.ascii	"_temp_219\0"
	.align
_Label_229:
	.byte	'?'
	.ascii	"_temp_218\0"
	.align
_Label_230:
	.byte	'?'
	.ascii	"_temp_217\0"
	.align
_Label_231:
	.byte	'?'
	.ascii	"_temp_216\0"
	.align
_Label_232:
	.byte	'?'
	.ascii	"_temp_215\0"
	.align
_Label_233:
	.byte	'?'
	.ascii	"_temp_214\0"
	.align
_Label_234:
	.byte	'?'
	.ascii	"_temp_213\0"
	.align
_Label_235:
	.byte	'?'
	.ascii	"_temp_212\0"
	.align
_Label_236:
	.byte	'?'
	.ascii	"_temp_211\0"
	.align
_Label_237:
	.byte	'?'
	.ascii	"_temp_210\0"
	.align
_Label_238:
	.byte	'?'
	.ascii	"_temp_209\0"
	.align
_Label_239:
	.byte	'?'
	.ascii	"_temp_208\0"
	.align
_Label_240:
	.byte	'?'
	.ascii	"_temp_207\0"
	.align
_Label_241:
	.byte	'P'
	.ascii	"pcb\0"
	.align
_Label_242:
	.byte	'P'
	.ascii	"openFilePtr\0"
	.align
_Label_243:
	.byte	'I'
	.ascii	"entryPoint\0"
	.align
_Label_244:
	.byte	'I'
	.ascii	"initUserStackTop\0"
	.align
_Label_245:
	.byte	'I'
	.ascii	"initSystemStackTop\0"
	.align
_Label_246:
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
_Label_4407:
	push	r0
	sub	r1,1,r1
	bne	_Label_4407
	mov	56,r13		! source line 56
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	63,r13		! source line 63
	mov	"\0\0CE",r10
	call	Cleari
! CALL STATEMENT...
!   _temp_247 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_247  sizeInBytes=4
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
_Label_4408:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4408
!   _P_Kernel_mainThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_mainThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	68,r13		! source line 68
	mov	"\0\0SE",r10
!   _temp_251 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-44]
!   _temp_252 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_251  sizeInBytes=4
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
!   _temp_253 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-36]
!   _temp_254 = _temp_253 + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_254 = 3  (sizeInBytes=4)
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
_Label_4409:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4409
!   _P_Kernel_idleThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_idleThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	71,r13		! source line 71
	mov	"\0\0SE",r10
!   _temp_256 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-24]
!   _temp_257 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_256  sizeInBytes=4
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
!   _temp_258 = _function_195_IdleFunction
	set	_function_195_IdleFunction,r1
	store	r1,[r14+-16]
!   _temp_259 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_258  sizeInBytes=4
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
	.word	_Label_260
	.word	0		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_261
	.word	-12
	.word	4
	.word	_Label_262
	.word	-16
	.word	4
	.word	_Label_263
	.word	-20
	.word	4
	.word	_Label_264
	.word	-24
	.word	4
	.word	_Label_265
	.word	-28
	.word	4
	.word	_Label_266
	.word	-32
	.word	4
	.word	_Label_267
	.word	-36
	.word	4
	.word	_Label_268
	.word	-40
	.word	4
	.word	_Label_269
	.word	-44
	.word	4
	.word	_Label_270
	.word	-48
	.word	4
	.word	_Label_271
	.word	-52
	.word	4
	.word	_Label_272
	.word	-56
	.word	4
	.word	_Label_273
	.word	-60
	.word	4
	.word	0
_Label_260:
	.ascii	"InitializeScheduler\0"
	.align
_Label_261:
	.byte	'?'
	.ascii	"_temp_259\0"
	.align
_Label_262:
	.byte	'?'
	.ascii	"_temp_258\0"
	.align
_Label_263:
	.byte	'?'
	.ascii	"_temp_257\0"
	.align
_Label_264:
	.byte	'?'
	.ascii	"_temp_256\0"
	.align
_Label_265:
	.byte	'?'
	.ascii	"_temp_255\0"
	.align
_Label_266:
	.byte	'?'
	.ascii	"_temp_254\0"
	.align
_Label_267:
	.byte	'?'
	.ascii	"_temp_253\0"
	.align
_Label_268:
	.byte	'?'
	.ascii	"_temp_252\0"
	.align
_Label_269:
	.byte	'?'
	.ascii	"_temp_251\0"
	.align
_Label_270:
	.byte	'?'
	.ascii	"_temp_250\0"
	.align
_Label_271:
	.byte	'?'
	.ascii	"_temp_249\0"
	.align
_Label_272:
	.byte	'?'
	.ascii	"_temp_248\0"
	.align
_Label_273:
	.byte	'?'
	.ascii	"_temp_247\0"
	.align
! 
! ===============  FUNCTION IdleFunction  ===============
! 
_function_195_IdleFunction:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_195_IdleFunction,r1
	push	r1
	mov	3,r1
_Label_4410:
	push	r0
	sub	r1,1,r1
	bne	_Label_4410
	mov	81,r13		! source line 81
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	91,r13		! source line 91
	mov	"\0\0WH",r10
_Label_274:
!	jmp	_Label_275
_Label_275:
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
!   _temp_279 = &_P_Kernel_readyList
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
!   if result==true then goto _Label_277 else goto _Label_278
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_278
	jmp	_Label_277
_Label_277:
! THEN...
	mov	94,r13		! source line 94
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Call the function
	mov	94,r13		! source line 94
	mov	"\0\0CE",r10
	call	Wait
	jmp	_Label_280
_Label_278:
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
_Label_280:
! END WHILE...
	jmp	_Label_274
_Label_276:
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_195_IdleFunction:
	.word	_sourceFileName
	.word	_Label_281
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_282
	.word	8
	.word	4
	.word	_Label_283
	.word	-12
	.word	4
	.word	_Label_284
	.word	-16
	.word	4
	.word	0
_Label_281:
	.ascii	"IdleFunction\0"
	.align
_Label_282:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_283:
	.byte	'?'
	.ascii	"_temp_279\0"
	.align
_Label_284:
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
_Label_4411:
	push	r0
	sub	r1,1,r1
	bne	_Label_4411
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
!   _temp_287 = prevThread + 4092
	load	[r14+-76],r1
	add	r1,4092,r1
	store	r1,[r14+-72]
!   if boolIsZero (_temp_287 ) then goto _Label_286		(int)
	load	[r14+-72],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_286
!	jmp	_Label_285
_Label_285:
! THEN...
	mov	120,r13		! source line 120
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_289 = prevThread + 4096
	load	[r14+-76],r1
	add	r1,4096,r1
	store	r1,[r14+-64]
!   Move address of _temp_289 [0 ] into _temp_290
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
!   _temp_288 = _temp_290		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_288  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	120,r13		! source line 120
	mov	"\0\0CE",r10
	call	SaveUserRegs
! END IF...
_Label_286:
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
!   _temp_291 = nextThread + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-56]
!   Data Move: *_temp_291 = 3  (sizeInBytes=4)
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
_Label_292:
	mov	133,r13		! source line 133
	mov	"\0\0SE",r10
!   _temp_296 = &_P_Kernel_threadsToBeDestroyed
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
!   Retrieve Result: targetName=_temp_295  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_295 then goto _Label_294 else goto _Label_293
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_293
	jmp	_Label_294
_Label_293:
	mov	133,r13		! source line 133
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	134,r13		! source line 134
	mov	"\0\0AS",r10
	mov	134,r13		! source line 134
	mov	"\0\0SE",r10
!   _temp_297 = &_P_Kernel_threadsToBeDestroyed
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
!   _temp_298 = &_P_Kernel_threadManager
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
	jmp	_Label_292
_Label_294:
! IF STATEMENT...
	mov	138,r13		! source line 138
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_301 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-40]
!   if boolIsZero (_temp_301 ) then goto _Label_300		(int)
	load	[r14+-40],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_300
!	jmp	_Label_299
_Label_299:
! THEN...
	mov	139,r13		! source line 139
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_303 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-32]
!   Move address of _temp_303 [0 ] into _temp_304
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
!   _temp_302 = _temp_304		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_302  sizeInBytes=4
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
!   _temp_306 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_305 = *_temp_306  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_305) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_307 = _temp_305 + 32
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
_Label_300:
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
	.word	_Label_308
	.word	4		! total size of parameters
	.word	80		! frame size = 80
	.word	_Label_309
	.word	8
	.word	4
	.word	_Label_310
	.word	-16
	.word	4
	.word	_Label_311
	.word	-20
	.word	4
	.word	_Label_312
	.word	-24
	.word	4
	.word	_Label_313
	.word	-28
	.word	4
	.word	_Label_314
	.word	-32
	.word	4
	.word	_Label_315
	.word	-36
	.word	4
	.word	_Label_316
	.word	-40
	.word	4
	.word	_Label_317
	.word	-44
	.word	4
	.word	_Label_318
	.word	-48
	.word	4
	.word	_Label_319
	.word	-52
	.word	4
	.word	_Label_320
	.word	-9
	.word	1
	.word	_Label_321
	.word	-56
	.word	4
	.word	_Label_322
	.word	-60
	.word	4
	.word	_Label_323
	.word	-64
	.word	4
	.word	_Label_324
	.word	-68
	.word	4
	.word	_Label_325
	.word	-72
	.word	4
	.word	_Label_326
	.word	-76
	.word	4
	.word	_Label_327
	.word	-80
	.word	4
	.word	0
_Label_308:
	.ascii	"Run\0"
	.align
_Label_309:
	.byte	'P'
	.ascii	"nextThread\0"
	.align
_Label_310:
	.byte	'?'
	.ascii	"_temp_307\0"
	.align
_Label_311:
	.byte	'?'
	.ascii	"_temp_306\0"
	.align
_Label_312:
	.byte	'?'
	.ascii	"_temp_305\0"
	.align
_Label_313:
	.byte	'?'
	.ascii	"_temp_304\0"
	.align
_Label_314:
	.byte	'?'
	.ascii	"_temp_303\0"
	.align
_Label_315:
	.byte	'?'
	.ascii	"_temp_302\0"
	.align
_Label_316:
	.byte	'?'
	.ascii	"_temp_301\0"
	.align
_Label_317:
	.byte	'?'
	.ascii	"_temp_298\0"
	.align
_Label_318:
	.byte	'?'
	.ascii	"_temp_297\0"
	.align
_Label_319:
	.byte	'?'
	.ascii	"_temp_296\0"
	.align
_Label_320:
	.byte	'C'
	.ascii	"_temp_295\0"
	.align
_Label_321:
	.byte	'?'
	.ascii	"_temp_291\0"
	.align
_Label_322:
	.byte	'?'
	.ascii	"_temp_290\0"
	.align
_Label_323:
	.byte	'?'
	.ascii	"_temp_289\0"
	.align
_Label_324:
	.byte	'?'
	.ascii	"_temp_288\0"
	.align
_Label_325:
	.byte	'?'
	.ascii	"_temp_287\0"
	.align
_Label_326:
	.byte	'P'
	.ascii	"prevThread\0"
	.align
_Label_327:
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
_Label_4412:
	push	r0
	sub	r1,1,r1
	bne	_Label_4412
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
!   _temp_328 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_328  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	154,r13		! source line 154
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	155,r13		! source line 155
	mov	"\0\0SE",r10
!   _temp_329 = _function_194_ThreadPrintShort
	set	_function_194_ThreadPrintShort,r1
	store	r1,[r14+-16]
!   _temp_330 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_329  sizeInBytes=4
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
	.word	_Label_331
	.word	0		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_332
	.word	-12
	.word	4
	.word	_Label_333
	.word	-16
	.word	4
	.word	_Label_334
	.word	-20
	.word	4
	.word	_Label_335
	.word	-24
	.word	4
	.word	0
_Label_331:
	.ascii	"PrintReadyList\0"
	.align
_Label_332:
	.byte	'?'
	.ascii	"_temp_330\0"
	.align
_Label_333:
	.byte	'?'
	.ascii	"_temp_329\0"
	.align
_Label_334:
	.byte	'?'
	.ascii	"_temp_328\0"
	.align
_Label_335:
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
_Label_4413:
	push	r0
	sub	r1,1,r1
	bne	_Label_4413
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
!   _temp_336 = _P_Kernel_currentThread + 80
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,80,r1
	store	r1,[r14+-24]
!   Data Move: mainFun = *_temp_336  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_338 = _P_Kernel_currentThread + 84
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,84,r1
	store	r1,[r14+-16]
!   Data Move: _temp_337 = *_temp_338  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_337  sizeInBytes=4
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
!   _temp_339 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_339  sizeInBytes=4
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
	.word	_Label_340
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_341
	.word	-12
	.word	4
	.word	_Label_342
	.word	-16
	.word	4
	.word	_Label_343
	.word	-20
	.word	4
	.word	_Label_344
	.word	-24
	.word	4
	.word	_Label_345
	.word	-28
	.word	4
	.word	_Label_346
	.word	-32
	.word	4
	.word	0
_Label_340:
	.ascii	"ThreadStartMain\0"
	.align
_Label_341:
	.byte	'?'
	.ascii	"_temp_339\0"
	.align
_Label_342:
	.byte	'?'
	.ascii	"_temp_338\0"
	.align
_Label_343:
	.byte	'?'
	.ascii	"_temp_337\0"
	.align
_Label_344:
	.byte	'?'
	.ascii	"_temp_336\0"
	.align
_Label_345:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_346:
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
_Label_4414:
	push	r0
	sub	r1,1,r1
	bne	_Label_4414
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
!   _temp_347 = &_P_Kernel_threadsToBeDestroyed
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
!   _temp_348 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_348  sizeInBytes=4
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
	.word	_Label_349
	.word	0		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_350
	.word	-12
	.word	4
	.word	_Label_351
	.word	-16
	.word	4
	.word	_Label_352
	.word	-20
	.word	4
	.word	0
_Label_349:
	.ascii	"ThreadFinish\0"
	.align
_Label_350:
	.byte	'?'
	.ascii	"_temp_348\0"
	.align
_Label_351:
	.byte	'?'
	.ascii	"_temp_347\0"
	.align
_Label_352:
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
_Label_4415:
	push	r0
	sub	r1,1,r1
	bne	_Label_4415
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
!   _temp_353 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_353  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	214,r13		! source line 214
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	215,r13		! source line 215
	mov	"\0\0IF",r10
!   if _P_Kernel_currentThread == 0 then goto _Label_355		(int)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_355
!	jmp	_Label_354
_Label_354:
! THEN...
	mov	216,r13		! source line 216
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_356 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_356  sizeInBytes=4
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
!   _temp_358 = _P_Kernel_currentThread + 72
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-24]
!   Data Move: _temp_357 = *_temp_358  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_357  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	217,r13		! source line 217
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_355:
! CALL STATEMENT...
!   _temp_359 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_359  sizeInBytes=4
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
!   _temp_360 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_360  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	221,r13		! source line 221
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_361 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_361  sizeInBytes=4
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
	.word	_Label_362
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_363
	.word	8
	.word	4
	.word	_Label_364
	.word	-12
	.word	4
	.word	_Label_365
	.word	-16
	.word	4
	.word	_Label_366
	.word	-20
	.word	4
	.word	_Label_367
	.word	-24
	.word	4
	.word	_Label_368
	.word	-28
	.word	4
	.word	_Label_369
	.word	-32
	.word	4
	.word	_Label_370
	.word	-36
	.word	4
	.word	_Label_371
	.word	-40
	.word	4
	.word	0
_Label_362:
	.ascii	"FatalError_ThreadVersion\0"
	.align
_Label_363:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_364:
	.byte	'?'
	.ascii	"_temp_361\0"
	.align
_Label_365:
	.byte	'?'
	.ascii	"_temp_360\0"
	.align
_Label_366:
	.byte	'?'
	.ascii	"_temp_359\0"
	.align
_Label_367:
	.byte	'?'
	.ascii	"_temp_358\0"
	.align
_Label_368:
	.byte	'?'
	.ascii	"_temp_357\0"
	.align
_Label_369:
	.byte	'?'
	.ascii	"_temp_356\0"
	.align
_Label_370:
	.byte	'?'
	.ascii	"_temp_353\0"
	.align
_Label_371:
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
_Label_4416:
	push	r0
	sub	r1,1,r1
	bne	_Label_4416
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
!   if newStatus != 1 then goto _Label_373		(int)
	load	[r14+8],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_373
!	jmp	_Label_372
_Label_372:
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
	jmp	_Label_374
_Label_373:
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
_Label_374:
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
	.word	_Label_375
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_376
	.word	8
	.word	4
	.word	_Label_377
	.word	-12
	.word	4
	.word	0
_Label_375:
	.ascii	"SetInterruptsTo\0"
	.align
_Label_376:
	.byte	'I'
	.ascii	"newStatus\0"
	.align
_Label_377:
	.byte	'I'
	.ascii	"oldStat\0"
	.align
! 
! ===============  FUNCTION ThreadPrintShort  ===============
! 
_function_194_ThreadPrintShort:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_194_ThreadPrintShort,r1
	push	r1
	mov	19,r1
_Label_4417:
	push	r0
	sub	r1,1,r1
	bne	_Label_4417
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
!   if t == 0 then goto _Label_381		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_381
!   _temp_380 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_382
_Label_381:
!   _temp_380 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_382:
!   if _temp_380 then goto _Label_379 else goto _Label_378
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_378
	jmp	_Label_379
_Label_378:
! THEN...
	mov	698,r13		! source line 698
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_383 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_383  sizeInBytes=4
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
_Label_379:
! CALL STATEMENT...
!   _temp_384 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_384  sizeInBytes=4
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
!   _temp_386 = t + 72
	load	[r14+8],r1
	add	r1,72,r1
	store	r1,[r14+-64]
!   Data Move: _temp_385 = *_temp_386  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_385  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	702,r13		! source line 702
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_387 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_387  sizeInBytes=4
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
!   _temp_396 = t + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-52]
!   Data Move: _temp_395 = *_temp_396  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   Branch to the right case label
	load	[r14+-56],r1
	cmp	r1,1
	be	_Label_390
	cmp	r1,2
	be	_Label_391
	cmp	r1,3
	be	_Label_392
	cmp	r1,4
	be	_Label_393
	cmp	r1,5
	be	_Label_394
	jmp	_Label_388
! CASE 1...
_Label_390:
! CALL STATEMENT...
!   _temp_397 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_397  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	706,r13		! source line 706
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	707,r13		! source line 707
	mov	"\0\0BR",r10
	jmp	_Label_389
! CASE 2...
_Label_391:
! CALL STATEMENT...
!   _temp_398 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_398  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	709,r13		! source line 709
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	710,r13		! source line 710
	mov	"\0\0BR",r10
	jmp	_Label_389
! CASE 3...
_Label_392:
! CALL STATEMENT...
!   _temp_399 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_399  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	712,r13		! source line 712
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	713,r13		! source line 713
	mov	"\0\0BR",r10
	jmp	_Label_389
! CASE 4...
_Label_393:
! CALL STATEMENT...
!   _temp_400 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_400  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	715,r13		! source line 715
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	716,r13		! source line 716
	mov	"\0\0BR",r10
	jmp	_Label_389
! CASE 5...
_Label_394:
! CALL STATEMENT...
!   _temp_401 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_401  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	718,r13		! source line 718
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	719,r13		! source line 719
	mov	"\0\0BR",r10
	jmp	_Label_389
! DEFAULT CASE...
_Label_388:
! CALL STATEMENT...
!   _temp_402 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_402  sizeInBytes=4
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
_Label_389:
! CALL STATEMENT...
!   _temp_403 = _StringConst_24
	set	_StringConst_24,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_403  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	723,r13		! source line 723
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_404 = t		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_404  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	724,r13		! source line 724
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_405 = _StringConst_25
	set	_StringConst_25,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_405  sizeInBytes=4
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
_RoutineDescriptor__function_194_ThreadPrintShort:
	.word	_sourceFileName
	.word	_Label_406
	.word	4		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_407
	.word	8
	.word	4
	.word	_Label_408
	.word	-16
	.word	4
	.word	_Label_409
	.word	-20
	.word	4
	.word	_Label_410
	.word	-24
	.word	4
	.word	_Label_411
	.word	-28
	.word	4
	.word	_Label_412
	.word	-32
	.word	4
	.word	_Label_413
	.word	-36
	.word	4
	.word	_Label_414
	.word	-40
	.word	4
	.word	_Label_415
	.word	-44
	.word	4
	.word	_Label_416
	.word	-48
	.word	4
	.word	_Label_417
	.word	-52
	.word	4
	.word	_Label_418
	.word	-56
	.word	4
	.word	_Label_419
	.word	-60
	.word	4
	.word	_Label_420
	.word	-64
	.word	4
	.word	_Label_421
	.word	-68
	.word	4
	.word	_Label_422
	.word	-72
	.word	4
	.word	_Label_423
	.word	-76
	.word	4
	.word	_Label_424
	.word	-9
	.word	1
	.word	_Label_425
	.word	-80
	.word	4
	.word	0
_Label_406:
	.ascii	"ThreadPrintShort\0"
	.align
_Label_407:
	.byte	'P'
	.ascii	"t\0"
	.align
_Label_408:
	.byte	'?'
	.ascii	"_temp_405\0"
	.align
_Label_409:
	.byte	'?'
	.ascii	"_temp_404\0"
	.align
_Label_410:
	.byte	'?'
	.ascii	"_temp_403\0"
	.align
_Label_411:
	.byte	'?'
	.ascii	"_temp_402\0"
	.align
_Label_412:
	.byte	'?'
	.ascii	"_temp_401\0"
	.align
_Label_413:
	.byte	'?'
	.ascii	"_temp_400\0"
	.align
_Label_414:
	.byte	'?'
	.ascii	"_temp_399\0"
	.align
_Label_415:
	.byte	'?'
	.ascii	"_temp_398\0"
	.align
_Label_416:
	.byte	'?'
	.ascii	"_temp_397\0"
	.align
_Label_417:
	.byte	'?'
	.ascii	"_temp_396\0"
	.align
_Label_418:
	.byte	'?'
	.ascii	"_temp_395\0"
	.align
_Label_419:
	.byte	'?'
	.ascii	"_temp_387\0"
	.align
_Label_420:
	.byte	'?'
	.ascii	"_temp_386\0"
	.align
_Label_421:
	.byte	'?'
	.ascii	"_temp_385\0"
	.align
_Label_422:
	.byte	'?'
	.ascii	"_temp_384\0"
	.align
_Label_423:
	.byte	'?'
	.ascii	"_temp_383\0"
	.align
_Label_424:
	.byte	'C'
	.ascii	"_temp_380\0"
	.align
_Label_425:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION PrintObjectAddr  ===============
! 
_function_193_PrintObjectAddr:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_193_PrintObjectAddr,r1
	push	r1
	mov	2,r1
_Label_4418:
	push	r0
	sub	r1,1,r1
	bne	_Label_4418
	mov	1048,r13		! source line 1048
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_426 = p		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_426  sizeInBytes=4
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
_RoutineDescriptor__function_193_PrintObjectAddr:
	.word	_sourceFileName
	.word	_Label_427
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_428
	.word	8
	.word	4
	.word	_Label_429
	.word	-12
	.word	4
	.word	0
_Label_427:
	.ascii	"PrintObjectAddr\0"
	.align
_Label_428:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_429:
	.byte	'?'
	.ascii	"_temp_426\0"
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
_Label_4419:
	push	r0
	sub	r1,1,r1
	bne	_Label_4419
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
!   _temp_431 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-136]
!   Data Move: _temp_430 = *_temp_431  (sizeInBytes=4)
	load	[r14+-136],r1
	load	[r1],r1
	store	r1,[r14+-140]
!   if intIsZero (_temp_430) then goto _runtimeErrorNullPointer
	load	[r14+-140],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_432 = _temp_430 + 28
	load	[r14+-140],r1
	add	r1,28,r1
	store	r1,[r14+-132]
!   Data Move: *_temp_432 = exitStatus  (sizeInBytes=4)
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
!   _temp_433 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-128]
!   Data Move: *_temp_433 = 0  (sizeInBytes=1)
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
!   _temp_436 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-116]
!   Data Move: _temp_435 = *_temp_436  (sizeInBytes=4)
	load	[r14+-116],r1
	load	[r1],r1
	store	r1,[r14+-120]
!   if intIsZero (_temp_435) then goto _runtimeErrorNullPointer
	load	[r14+-120],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_437 = _temp_435 + 32
	load	[r14+-120],r1
	add	r1,32,r1
	store	r1,[r14+-112]
!   _temp_434 = _temp_437		(4 bytes)
	load	[r14+-112],r1
	store	r1,[r14+-124]
!   _temp_438 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=12  value=_temp_434  sizeInBytes=4
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
!   _temp_440 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-100]
!   Data Move: _temp_439 = *_temp_440  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   _temp_441 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=12  value=_temp_439  sizeInBytes=4
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
!   _temp_446 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-92]
!   Calculate and save the FOR-LOOP ending value
!   _temp_447 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-88]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_446  (sizeInBytes=4)
	load	[r14+-92],r1
	store	r1,[r14+-148]
_Label_442:
!   Perform the FOR-LOOP termination test
!   if i > _temp_447 then goto _Label_445		
	load	[r14+-148],r1
	load	[r14+-88],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_445
_Label_443:
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
!   _temp_452 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-76]
!   Data Move: _temp_451 = *_temp_452  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_451) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_453 = _temp_451 + 124
	load	[r14+-80],r1
	add	r1,124,r1
	store	r1,[r14+-72]
!   Move address of _temp_453 [i ] into _temp_454
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
!   Data Move: _temp_450 = *_temp_454  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if intIsZero (_temp_450) then goto _Label_449
	load	[r14+-84],r1
	cmp	r1,r0
	be	_Label_449
!	jmp	_Label_448
_Label_448:
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
!   _temp_457 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-56]
!   Data Move: _temp_456 = *_temp_457  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_456) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_458 = _temp_456 + 124
	load	[r14+-60],r1
	add	r1,124,r1
	store	r1,[r14+-52]
!   Move address of _temp_458 [i ] into _temp_459
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
!   Data Move: _temp_455 = *_temp_459  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   _temp_460 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=_temp_455  sizeInBytes=4
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
!   _temp_462 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-36]
!   Data Move: _temp_461 = *_temp_462  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_461) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_463 = _temp_461 + 124
	load	[r14+-40],r1
	add	r1,124,r1
	store	r1,[r14+-32]
!   Move address of _temp_463 [i ] into _temp_464
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
!   Data Move: *_temp_464 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-28],r2
	store	r1,[r2]
! END IF...
_Label_449:
!   Increment the FOR-LOOP index variable and jump back
_Label_444:
!   i = i + 1
	load	[r14+-148],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-148]
	jmp	_Label_442
! END FOR
_Label_445:
! ASSIGNMENT STATEMENT...
	mov	1079,r13		! source line 1079
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_466 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_465 = *_temp_466  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_465) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_467 = _temp_465 + 24
	load	[r14+-24],r1
	add	r1,24,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_467 = 0  (sizeInBytes=4)
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
!   _temp_468 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-12]
!   Data Move: *_temp_468 = 0  (sizeInBytes=4)
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
	.word	_Label_469
	.word	4		! total size of parameters
	.word	148		! frame size = 148
	.word	_Label_470
	.word	8
	.word	4
	.word	_Label_471
	.word	-12
	.word	4
	.word	_Label_472
	.word	-16
	.word	4
	.word	_Label_473
	.word	-20
	.word	4
	.word	_Label_474
	.word	-24
	.word	4
	.word	_Label_475
	.word	-28
	.word	4
	.word	_Label_476
	.word	-32
	.word	4
	.word	_Label_477
	.word	-36
	.word	4
	.word	_Label_478
	.word	-40
	.word	4
	.word	_Label_479
	.word	-44
	.word	4
	.word	_Label_480
	.word	-48
	.word	4
	.word	_Label_481
	.word	-52
	.word	4
	.word	_Label_482
	.word	-56
	.word	4
	.word	_Label_483
	.word	-60
	.word	4
	.word	_Label_484
	.word	-64
	.word	4
	.word	_Label_485
	.word	-68
	.word	4
	.word	_Label_486
	.word	-72
	.word	4
	.word	_Label_487
	.word	-76
	.word	4
	.word	_Label_488
	.word	-80
	.word	4
	.word	_Label_489
	.word	-84
	.word	4
	.word	_Label_490
	.word	-88
	.word	4
	.word	_Label_491
	.word	-92
	.word	4
	.word	_Label_492
	.word	-96
	.word	4
	.word	_Label_493
	.word	-100
	.word	4
	.word	_Label_494
	.word	-104
	.word	4
	.word	_Label_495
	.word	-108
	.word	4
	.word	_Label_496
	.word	-112
	.word	4
	.word	_Label_497
	.word	-116
	.word	4
	.word	_Label_498
	.word	-120
	.word	4
	.word	_Label_499
	.word	-124
	.word	4
	.word	_Label_500
	.word	-128
	.word	4
	.word	_Label_501
	.word	-132
	.word	4
	.word	_Label_502
	.word	-136
	.word	4
	.word	_Label_503
	.word	-140
	.word	4
	.word	_Label_504
	.word	-144
	.word	4
	.word	_Label_505
	.word	-148
	.word	4
	.word	0
_Label_469:
	.ascii	"ProcessFinish\0"
	.align
_Label_470:
	.byte	'I'
	.ascii	"exitStatus\0"
	.align
_Label_471:
	.byte	'?'
	.ascii	"_temp_468\0"
	.align
_Label_472:
	.byte	'?'
	.ascii	"_temp_467\0"
	.align
_Label_473:
	.byte	'?'
	.ascii	"_temp_466\0"
	.align
_Label_474:
	.byte	'?'
	.ascii	"_temp_465\0"
	.align
_Label_475:
	.byte	'?'
	.ascii	"_temp_464\0"
	.align
_Label_476:
	.byte	'?'
	.ascii	"_temp_463\0"
	.align
_Label_477:
	.byte	'?'
	.ascii	"_temp_462\0"
	.align
_Label_478:
	.byte	'?'
	.ascii	"_temp_461\0"
	.align
_Label_479:
	.byte	'?'
	.ascii	"_temp_460\0"
	.align
_Label_480:
	.byte	'?'
	.ascii	"_temp_459\0"
	.align
_Label_481:
	.byte	'?'
	.ascii	"_temp_458\0"
	.align
_Label_482:
	.byte	'?'
	.ascii	"_temp_457\0"
	.align
_Label_483:
	.byte	'?'
	.ascii	"_temp_456\0"
	.align
_Label_484:
	.byte	'?'
	.ascii	"_temp_455\0"
	.align
_Label_485:
	.byte	'?'
	.ascii	"_temp_454\0"
	.align
_Label_486:
	.byte	'?'
	.ascii	"_temp_453\0"
	.align
_Label_487:
	.byte	'?'
	.ascii	"_temp_452\0"
	.align
_Label_488:
	.byte	'?'
	.ascii	"_temp_451\0"
	.align
_Label_489:
	.byte	'?'
	.ascii	"_temp_450\0"
	.align
_Label_490:
	.byte	'?'
	.ascii	"_temp_447\0"
	.align
_Label_491:
	.byte	'?'
	.ascii	"_temp_446\0"
	.align
_Label_492:
	.byte	'?'
	.ascii	"_temp_441\0"
	.align
_Label_493:
	.byte	'?'
	.ascii	"_temp_440\0"
	.align
_Label_494:
	.byte	'?'
	.ascii	"_temp_439\0"
	.align
_Label_495:
	.byte	'?'
	.ascii	"_temp_438\0"
	.align
_Label_496:
	.byte	'?'
	.ascii	"_temp_437\0"
	.align
_Label_497:
	.byte	'?'
	.ascii	"_temp_436\0"
	.align
_Label_498:
	.byte	'?'
	.ascii	"_temp_435\0"
	.align
_Label_499:
	.byte	'?'
	.ascii	"_temp_434\0"
	.align
_Label_500:
	.byte	'?'
	.ascii	"_temp_433\0"
	.align
_Label_501:
	.byte	'?'
	.ascii	"_temp_432\0"
	.align
_Label_502:
	.byte	'?'
	.ascii	"_temp_431\0"
	.align
_Label_503:
	.byte	'?'
	.ascii	"_temp_430\0"
	.align
_Label_504:
	.byte	'I'
	.ascii	"oldIntStatus\0"
	.align
_Label_505:
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
_Label_4420:
	push	r0
	sub	r1,1,r1
	bne	_Label_4420
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
	.word	_Label_506
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_506:
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
_Label_4421:
	push	r0
	sub	r1,1,r1
	bne	_Label_4421
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
!   _temp_510 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   _temp_511 = _temp_510 + 24
	load	[r14+-28],r1
	add	r1,24,r1
	store	r1,[r14+-24]
!   Data Move: _temp_509 = *_temp_511  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_509 == 0 then goto _Label_508		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_508
!	jmp	_Label_507
_Label_507:
! THEN...
	mov	1606,r13		! source line 1606
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1606,r13		! source line 1606
	mov	"\0\0SE",r10
!   _temp_513 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-16]
!   _temp_514 = _temp_513 + 24
	load	[r14+-16],r1
	add	r1,24,r1
	store	r1,[r14+-12]
!   Data Move: _temp_512 = *_temp_514  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_512) then goto _runtimeErrorNullPointer
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
_Label_508:
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
	.word	_Label_515
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_516
	.word	-12
	.word	4
	.word	_Label_517
	.word	-16
	.word	4
	.word	_Label_518
	.word	-20
	.word	4
	.word	_Label_519
	.word	-24
	.word	4
	.word	_Label_520
	.word	-28
	.word	4
	.word	_Label_521
	.word	-32
	.word	4
	.word	0
_Label_515:
	.ascii	"DiskInterruptHandler\0"
	.align
_Label_516:
	.byte	'?'
	.ascii	"_temp_514\0"
	.align
_Label_517:
	.byte	'?'
	.ascii	"_temp_513\0"
	.align
_Label_518:
	.byte	'?'
	.ascii	"_temp_512\0"
	.align
_Label_519:
	.byte	'?'
	.ascii	"_temp_511\0"
	.align
_Label_520:
	.byte	'?'
	.ascii	"_temp_510\0"
	.align
_Label_521:
	.byte	'?'
	.ascii	"_temp_509\0"
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
	mov	3,r1
_Label_4422:
	push	r0
	sub	r1,1,r1
	bne	_Label_4422
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
! IF STATEMENT...
	mov	1623,r13		! source line 1623
	mov	"\0\0IF",r10
!   if _P_Kernel_serialHasBeenInitialized then goto _Label_522 else goto _Label_523
	set	_P_Kernel_serialHasBeenInitialized,r1
	loadb	[r1],r1
	cmp	r1,0
	be	_Label_523
	jmp	_Label_522
_Label_522:
! THEN...
	mov	1624,r13		! source line 1624
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1624,r13		! source line 1624
	mov	"\0\0SE",r10
!   _temp_524 = &_P_Kernel_serialDriver
	set	_P_Kernel_serialDriver,r1
	store	r1,[r14+-16]
!   _temp_525 = _temp_524 + 124
	load	[r14+-16],r1
	add	r1,124,r1
	store	r1,[r14+-12]
!   Send message Up
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_523:
! RETURN STATEMENT...
	mov	1623,r13		! source line 1623
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_SerialInterruptHandler:
	.word	_sourceFileName
	.word	_Label_526
	.word	0		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_527
	.word	-12
	.word	4
	.word	_Label_528
	.word	-16
	.word	4
	.word	0
_Label_526:
	.ascii	"SerialInterruptHandler\0"
	.align
_Label_527:
	.byte	'?'
	.ascii	"_temp_525\0"
	.align
_Label_528:
	.byte	'?'
	.ascii	"_temp_524\0"
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
_Label_4423:
	push	r0
	sub	r1,1,r1
	bne	_Label_4423
	mov	1629,r13		! source line 1629
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1635,r13		! source line 1635
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_529 = _StringConst_26
	set	_StringConst_26,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_529  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1636,r13		! source line 1636
	mov	"\0\0CA",r10
	call	_function_192_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1636,r13		! source line 1636
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
	.word	_Label_530
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_531
	.word	-12
	.word	4
	.word	0
_Label_530:
	.ascii	"IllegalInstructionHandler\0"
	.align
_Label_531:
	.byte	'?'
	.ascii	"_temp_529\0"
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
_Label_4424:
	push	r0
	sub	r1,1,r1
	bne	_Label_4424
	mov	1641,r13		! source line 1641
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1647,r13		! source line 1647
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_532 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_532  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1648,r13		! source line 1648
	mov	"\0\0CA",r10
	call	_function_192_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1648,r13		! source line 1648
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
	.word	_Label_533
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_534
	.word	-12
	.word	4
	.word	0
_Label_533:
	.ascii	"ArithmeticExceptionHandler\0"
	.align
_Label_534:
	.byte	'?'
	.ascii	"_temp_532\0"
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
_Label_4425:
	push	r0
	sub	r1,1,r1
	bne	_Label_4425
	mov	1653,r13		! source line 1653
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1659,r13		! source line 1659
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_535 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_535  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1660,r13		! source line 1660
	mov	"\0\0CA",r10
	call	_function_192_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1660,r13		! source line 1660
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
	.word	_Label_536
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_537
	.word	-12
	.word	4
	.word	0
_Label_536:
	.ascii	"AddressExceptionHandler\0"
	.align
_Label_537:
	.byte	'?'
	.ascii	"_temp_535\0"
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
_Label_4426:
	push	r0
	sub	r1,1,r1
	bne	_Label_4426
	mov	1665,r13		! source line 1665
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1671,r13		! source line 1671
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_538 = _StringConst_29
	set	_StringConst_29,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_538  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1672,r13		! source line 1672
	mov	"\0\0CA",r10
	call	_function_192_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1672,r13		! source line 1672
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
	.word	_Label_539
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_540
	.word	-12
	.word	4
	.word	0
_Label_539:
	.ascii	"PageInvalidExceptionHandler\0"
	.align
_Label_540:
	.byte	'?'
	.ascii	"_temp_538\0"
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
_Label_4427:
	push	r0
	sub	r1,1,r1
	bne	_Label_4427
	mov	1677,r13		! source line 1677
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1683,r13		! source line 1683
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_541 = _StringConst_30
	set	_StringConst_30,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_541  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1684,r13		! source line 1684
	mov	"\0\0CA",r10
	call	_function_192_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1684,r13		! source line 1684
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
	.word	_Label_542
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_543
	.word	-12
	.word	4
	.word	0
_Label_542:
	.ascii	"PageReadonlyExceptionHandler\0"
	.align
_Label_543:
	.byte	'?'
	.ascii	"_temp_541\0"
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
_Label_4428:
	push	r0
	sub	r1,1,r1
	bne	_Label_4428
	mov	1689,r13		! source line 1689
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1695,r13		! source line 1695
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_544 = _StringConst_31
	set	_StringConst_31,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_544  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1696,r13		! source line 1696
	mov	"\0\0CA",r10
	call	_function_192_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1696,r13		! source line 1696
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
	.word	_Label_545
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_546
	.word	-12
	.word	4
	.word	0
_Label_545:
	.ascii	"PrivilegedInstructionHandler\0"
	.align
_Label_546:
	.byte	'?'
	.ascii	"_temp_544\0"
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
_Label_4429:
	push	r0
	sub	r1,1,r1
	bne	_Label_4429
	mov	1701,r13		! source line 1701
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1707,r13		! source line 1707
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_547 = _StringConst_32
	set	_StringConst_32,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_547  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1708,r13		! source line 1708
	mov	"\0\0CA",r10
	call	_function_192_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1708,r13		! source line 1708
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
	.word	_Label_548
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_549
	.word	-12
	.word	4
	.word	0
_Label_548:
	.ascii	"AlignmentExceptionHandler\0"
	.align
_Label_549:
	.byte	'?'
	.ascii	"_temp_547\0"
	.align
! 
! ===============  FUNCTION ErrorInUserProcess  ===============
! 
_function_192_ErrorInUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_192_ErrorInUserProcess,r1
	push	r1
	mov	8,r1
_Label_4430:
	push	r0
	sub	r1,1,r1
	bne	_Label_4430
	mov	1713,r13		! source line 1713
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_550 = _StringConst_33
	set	_StringConst_33,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_550  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1718,r13		! source line 1718
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1719,r13		! source line 1719
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_551 = _StringConst_34
	set	_StringConst_34,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_551  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1720,r13		! source line 1720
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1723,r13		! source line 1723
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_555 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_554 = *_temp_555  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if _temp_554 == 0 then goto _Label_553		(int)
	load	[r14+-28],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_553
!	jmp	_Label_552
_Label_552:
! THEN...
	mov	1724,r13		! source line 1724
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1724,r13		! source line 1724
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_557 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-16]
!   Data Move: _temp_556 = *_temp_557  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_556) then goto _runtimeErrorNullPointer
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
	jmp	_Label_558
_Label_553:
! ELSE...
	mov	1726,r13		! source line 1726
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_559 = _StringConst_35
	set	_StringConst_35,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_559  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1726,r13		! source line 1726
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_558:
! SEND STATEMENT...
	mov	1728,r13		! source line 1728
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
	mov	1734,r13		! source line 1734
	mov	"\0\0CA",r10
	call	_P_Kernel_ProcessFinish
! RETURN STATEMENT...
	mov	1734,r13		! source line 1734
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_192_ErrorInUserProcess:
	.word	_sourceFileName
	.word	_Label_560
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_561
	.word	8
	.word	4
	.word	_Label_562
	.word	-12
	.word	4
	.word	_Label_563
	.word	-16
	.word	4
	.word	_Label_564
	.word	-20
	.word	4
	.word	_Label_565
	.word	-24
	.word	4
	.word	_Label_566
	.word	-28
	.word	4
	.word	_Label_567
	.word	-32
	.word	4
	.word	_Label_568
	.word	-36
	.word	4
	.word	0
_Label_560:
	.ascii	"ErrorInUserProcess\0"
	.align
_Label_561:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_562:
	.byte	'?'
	.ascii	"_temp_559\0"
	.align
_Label_563:
	.byte	'?'
	.ascii	"_temp_557\0"
	.align
_Label_564:
	.byte	'?'
	.ascii	"_temp_556\0"
	.align
_Label_565:
	.byte	'?'
	.ascii	"_temp_555\0"
	.align
_Label_566:
	.byte	'?'
	.ascii	"_temp_554\0"
	.align
_Label_567:
	.byte	'?'
	.ascii	"_temp_551\0"
	.align
_Label_568:
	.byte	'?'
	.ascii	"_temp_550\0"
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
_Label_4431:
	push	r0
	sub	r1,1,r1
	bne	_Label_4431
	mov	1739,r13		! source line 1739
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1746,r13		! source line 1746
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SWITCH STATEMENT (using an indirect jump table)...
	mov	1760,r13		! source line 1760
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
	load	[r14+8],r1
!   If syscallCodeNum is not within 16-bits goto default code
	srl	r1,15,r2
	cmp	r2,0
	be	_Label_4432
	set	0x1ffff,r3
	cmp	r2,r3
	bne	_Label_569
_Label_4432:
!   If syscallCodeNum is < 1 (==smallestCaseValue) goto default code
	cmp	r1,1
	bl	_Label_569
!   If syscallCodeNum is > 12 (==greatestCaseValue) goto default code
	cmp	r1,12
	bg	_Label_569
!   r1 = (r1-lowValue) * 4 + jumpTableAddr
	sub	r1,1,r1
	sll	r1,2,r1
	set	_Label_583,r2
	add	r1,r2,r1
!   Jump indirect through the jump table
	jmp	r1
!   Jump table
_Label_583:
	jmp	_Label_575	! 1:	
	jmp	_Label_582	! 2:	
	jmp	_Label_572	! 3:	
	jmp	_Label_571	! 4:	
	jmp	_Label_574	! 5:	
	jmp	_Label_573	! 6:	
	jmp	_Label_576	! 7:	
	jmp	_Label_577	! 8:	
	jmp	_Label_578	! 9:	
	jmp	_Label_579	! 10:	
	jmp	_Label_580	! 11:	
	jmp	_Label_581	! 12:	
! CASE 4...
_Label_571:
! RETURN STATEMENT...
	mov	1762,r13		! source line 1762
	mov	"\0\0RE",r10
!   Call the function
	mov	1762,r13		! source line 1762
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Fork
!   Retrieve Result: targetName=_temp_584  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
!   ReturnResult: _temp_584  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 3...
_Label_572:
! CALL STATEMENT...
!   Call the function
	mov	1764,r13		! source line 1764
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Yield
! RETURN STATEMENT...
	mov	1765,r13		! source line 1765
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 6...
_Label_573:
! RETURN STATEMENT...
	mov	1767,r13		! source line 1767
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1767,r13		! source line 1767
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exec
!   Retrieve Result: targetName=_temp_585  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
!   ReturnResult: _temp_585  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 5...
_Label_574:
! RETURN STATEMENT...
	mov	1769,r13		! source line 1769
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1769,r13		! source line 1769
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Join
!   Retrieve Result: targetName=_temp_586  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   ReturnResult: _temp_586  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 1...
_Label_575:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1771,r13		! source line 1771
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exit
! RETURN STATEMENT...
	mov	1772,r13		! source line 1772
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 7...
_Label_576:
! RETURN STATEMENT...
	mov	1774,r13		! source line 1774
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1774,r13		! source line 1774
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Create
!   Retrieve Result: targetName=_temp_587  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
!   ReturnResult: _temp_587  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 8...
_Label_577:
! RETURN STATEMENT...
	mov	1776,r13		! source line 1776
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1776,r13		! source line 1776
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Open
!   Retrieve Result: targetName=_temp_588  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
!   ReturnResult: _temp_588  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 9...
_Label_578:
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
	call	_P_Kernel_Handle_Sys_Read
!   Retrieve Result: targetName=_temp_589  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_589  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 10...
_Label_579:
! RETURN STATEMENT...
	mov	1780,r13		! source line 1780
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
	mov	1780,r13		! source line 1780
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Write
!   Retrieve Result: targetName=_temp_590  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_590  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 11...
_Label_580:
! RETURN STATEMENT...
	mov	1782,r13		! source line 1782
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1782,r13		! source line 1782
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Seek
!   Retrieve Result: targetName=_temp_591  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   ReturnResult: _temp_591  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 12...
_Label_581:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1784,r13		! source line 1784
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Close
! RETURN STATEMENT...
	mov	1785,r13		! source line 1785
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_582:
! CALL STATEMENT...
!   Call the function
	mov	1787,r13		! source line 1787
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Shutdown
! RETURN STATEMENT...
	mov	1788,r13		! source line 1788
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! DEFAULT CASE...
_Label_569:
! CALL STATEMENT...
!   _temp_592 = _StringConst_36
	set	_StringConst_36,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_592  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1790,r13		! source line 1790
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=syscallCodeNum  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1791,r13		! source line 1791
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1792,r13		! source line 1792
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_593 = _StringConst_37
	set	_StringConst_37,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_593  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1793,r13		! source line 1793
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_570:
! RETURN STATEMENT...
	mov	1795,r13		! source line 1795
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
	.word	_Label_594
	.word	20		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_595
	.word	8
	.word	4
	.word	_Label_596
	.word	12
	.word	4
	.word	_Label_597
	.word	16
	.word	4
	.word	_Label_598
	.word	20
	.word	4
	.word	_Label_599
	.word	24
	.word	4
	.word	_Label_600
	.word	-12
	.word	4
	.word	_Label_601
	.word	-16
	.word	4
	.word	_Label_602
	.word	-20
	.word	4
	.word	_Label_603
	.word	-24
	.word	4
	.word	_Label_604
	.word	-28
	.word	4
	.word	_Label_605
	.word	-32
	.word	4
	.word	_Label_606
	.word	-36
	.word	4
	.word	_Label_607
	.word	-40
	.word	4
	.word	_Label_608
	.word	-44
	.word	4
	.word	_Label_609
	.word	-48
	.word	4
	.word	0
_Label_594:
	.ascii	"SyscallTrapHandler\0"
	.align
_Label_595:
	.byte	'I'
	.ascii	"syscallCodeNum\0"
	.align
_Label_596:
	.byte	'I'
	.ascii	"arg1\0"
	.align
_Label_597:
	.byte	'I'
	.ascii	"arg2\0"
	.align
_Label_598:
	.byte	'I'
	.ascii	"arg3\0"
	.align
_Label_599:
	.byte	'I'
	.ascii	"arg4\0"
	.align
_Label_600:
	.byte	'?'
	.ascii	"_temp_593\0"
	.align
_Label_601:
	.byte	'?'
	.ascii	"_temp_592\0"
	.align
_Label_602:
	.byte	'?'
	.ascii	"_temp_591\0"
	.align
_Label_603:
	.byte	'?'
	.ascii	"_temp_590\0"
	.align
_Label_604:
	.byte	'?'
	.ascii	"_temp_589\0"
	.align
_Label_605:
	.byte	'?'
	.ascii	"_temp_588\0"
	.align
_Label_606:
	.byte	'?'
	.ascii	"_temp_587\0"
	.align
_Label_607:
	.byte	'?'
	.ascii	"_temp_586\0"
	.align
_Label_608:
	.byte	'?'
	.ascii	"_temp_585\0"
	.align
_Label_609:
	.byte	'?'
	.ascii	"_temp_584\0"
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
_Label_4433:
	push	r0
	sub	r1,1,r1
	bne	_Label_4433
	mov	1800,r13		! source line 1800
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=returnStatus  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1801,r13		! source line 1801
	mov	"\0\0CA",r10
	call	_P_Kernel_ProcessFinish
! RETURN STATEMENT...
	mov	1801,r13		! source line 1801
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
	.word	_Label_610
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_611
	.word	8
	.word	4
	.word	0
_Label_610:
	.ascii	"Handle_Sys_Exit\0"
	.align
_Label_611:
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
	mov	1806,r13		! source line 1806
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1806,r13		! source line 1806
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
	.word	_Label_612
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_612:
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
_Label_4434:
	push	r0
	sub	r1,1,r1
	bne	_Label_4434
	mov	1812,r13		! source line 1812
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1813,r13		! source line 1813
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
	mov	1813,r13		! source line 1813
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
	.word	_Label_613
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_613:
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
_Label_4435:
	push	r0
	sub	r1,1,r1
	bne	_Label_4435
	mov	1818,r13		! source line 1818
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1827,r13		! source line 1827
	mov	"\0\0AS",r10
	mov	1827,r13		! source line 1827
	mov	"\0\0SE",r10
!   _temp_614 = &_P_Kernel_threadManager
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
	mov	1828,r13		! source line 1828
	mov	"\0\0AS",r10
	mov	1828,r13		! source line 1828
	mov	"\0\0SE",r10
!   _temp_615 = &_P_Kernel_processManager
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
	mov	1829,r13		! source line 1829
	mov	"\0\0AS",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-324],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_616 = newPCB + 24
	load	[r14+-324],r1
	add	r1,24,r1
	store	r1,[r14+-308]
!   Data Move: *_temp_616 = newThread  (sizeInBytes=4)
	load	[r14+-320],r1
	load	[r14+-308],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1830,r13		! source line 1830
	mov	"\0\0AS",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-324],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_617 = newPCB + 16
	load	[r14+-324],r1
	add	r1,16,r1
	store	r1,[r14+-304]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_620 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-292]
!   Data Move: _temp_619 = *_temp_620  (sizeInBytes=4)
	load	[r14+-292],r1
	load	[r1],r1
	store	r1,[r14+-296]
!   if intIsZero (_temp_619) then goto _runtimeErrorNullPointer
	load	[r14+-296],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_621 = _temp_619 + 12
	load	[r14+-296],r1
	add	r1,12,r1
	store	r1,[r14+-288]
!   Data Move: _temp_618 = *_temp_621  (sizeInBytes=4)
	load	[r14+-288],r1
	load	[r1],r1
	store	r1,[r14+-300]
!   Data Move: *_temp_617 = _temp_618  (sizeInBytes=4)
	load	[r14+-300],r1
	load	[r14+-304],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1831,r13		! source line 1831
	mov	"\0\0AS",r10
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-320],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_622 = newThread + 76
	load	[r14+-320],r1
	add	r1,76,r1
	store	r1,[r14+-284]
!   Data Move: *_temp_622 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-284],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1832,r13		! source line 1832
	mov	"\0\0AS",r10
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-320],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_623 = newThread + 4160
	load	[r14+-320],r1
	add	r1,4160,r1
	store	r1,[r14+-280]
!   Data Move: *_temp_623 = newPCB  (sizeInBytes=4)
	load	[r14+-324],r1
	load	[r14+-280],r2
	store	r1,[r2]
! CALL STATEMENT...
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-320],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_625 = newThread + 4096
	load	[r14+-320],r1
	add	r1,4096,r1
	store	r1,[r14+-272]
!   Move address of _temp_625 [0 ] into _temp_626
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
!   _temp_624 = _temp_626		(4 bytes)
	load	[r14+-268],r1
	store	r1,[r14+-276]
!   Prepare Argument: offset=8  value=_temp_624  sizeInBytes=4
	load	[r14+-276],r1
	store	r1,[r15+0]
!   Call the function
	mov	1835,r13		! source line 1835
	mov	"\0\0CE",r10
	call	SaveUserRegs
! ASSIGNMENT STATEMENT...
	mov	1837,r13		! source line 1837
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	1837,r13		! source line 1837
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-328]
! FOR STATEMENT...
	mov	1840,r13		! source line 1840
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_631 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-264]
!   Calculate and save the FOR-LOOP ending value
!   _temp_632 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-260]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_631  (sizeInBytes=4)
	load	[r14+-264],r1
	store	r1,[r14+-332]
_Label_627:
!   Perform the FOR-LOOP termination test
!   if i > _temp_632 then goto _Label_630		
	load	[r14+-332],r1
	load	[r14+-260],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_630
_Label_628:
	mov	1840,r13		! source line 1840
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1841,r13		! source line 1841
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_637 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-248]
!   Data Move: _temp_636 = *_temp_637  (sizeInBytes=4)
	load	[r14+-248],r1
	load	[r1],r1
	store	r1,[r14+-252]
!   if intIsZero (_temp_636) then goto _runtimeErrorNullPointer
	load	[r14+-252],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_638 = _temp_636 + 124
	load	[r14+-252],r1
	add	r1,124,r1
	store	r1,[r14+-244]
!   Move address of _temp_638 [i ] into _temp_639
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
!   Data Move: _temp_635 = *_temp_639  (sizeInBytes=4)
	load	[r14+-240],r1
	load	[r1],r1
	store	r1,[r14+-256]
!   if intIsZero (_temp_635) then goto _Label_634
	load	[r14+-256],r1
	cmp	r1,r0
	be	_Label_634
!	jmp	_Label_633
_Label_633:
! THEN...
	mov	1842,r13		! source line 1842
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1842,r13		! source line 1842
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_642 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-228]
!   Data Move: _temp_641 = *_temp_642  (sizeInBytes=4)
	load	[r14+-228],r1
	load	[r1],r1
	store	r1,[r14+-232]
!   if intIsZero (_temp_641) then goto _runtimeErrorNullPointer
	load	[r14+-232],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_643 = _temp_641 + 124
	load	[r14+-232],r1
	add	r1,124,r1
	store	r1,[r14+-224]
!   Move address of _temp_643 [i ] into _temp_644
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
!   Data Move: _temp_640 = *_temp_644  (sizeInBytes=4)
	load	[r14+-220],r1
	load	[r1],r1
	store	r1,[r14+-236]
!   if intIsZero (_temp_640) then goto _runtimeErrorNullPointer
	load	[r14+-236],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_645 = _temp_640 + 24
	load	[r14+-236],r1
	add	r1,24,r1
	store	r1,[r14+-216]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_650 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-196]
!   Data Move: _temp_649 = *_temp_650  (sizeInBytes=4)
	load	[r14+-196],r1
	load	[r1],r1
	store	r1,[r14+-200]
!   if intIsZero (_temp_649) then goto _runtimeErrorNullPointer
	load	[r14+-200],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_651 = _temp_649 + 124
	load	[r14+-200],r1
	add	r1,124,r1
	store	r1,[r14+-192]
!   Move address of _temp_651 [i ] into _temp_652
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
!   Data Move: _temp_648 = *_temp_652  (sizeInBytes=4)
	load	[r14+-188],r1
	load	[r1],r1
	store	r1,[r14+-204]
!   if intIsZero (_temp_648) then goto _runtimeErrorNullPointer
	load	[r14+-204],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_653 = _temp_648 + 24
	load	[r14+-204],r1
	add	r1,24,r1
	store	r1,[r14+-184]
!   Data Move: _temp_647 = *_temp_653  (sizeInBytes=4)
	load	[r14+-184],r1
	load	[r1],r1
	store	r1,[r14+-208]
!   _temp_646 = _temp_647 + 1		(int)
	load	[r14+-208],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-212]
!   Data Move: *_temp_645 = _temp_646  (sizeInBytes=4)
	load	[r14+-212],r1
	load	[r14+-216],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1843,r13		! source line 1843
	mov	"\0\0AS",r10
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-320],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_655 = newThread + 4160
	load	[r14+-320],r1
	add	r1,4160,r1
	store	r1,[r14+-176]
!   Data Move: _temp_654 = *_temp_655  (sizeInBytes=4)
	load	[r14+-176],r1
	load	[r1],r1
	store	r1,[r14+-180]
!   if intIsZero (_temp_654) then goto _runtimeErrorNullPointer
	load	[r14+-180],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_656 = _temp_654 + 124
	load	[r14+-180],r1
	add	r1,124,r1
	store	r1,[r14+-172]
!   Move address of _temp_656 [i ] into _temp_657
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
!   _temp_660 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-156]
!   Data Move: _temp_659 = *_temp_660  (sizeInBytes=4)
	load	[r14+-156],r1
	load	[r1],r1
	store	r1,[r14+-160]
!   if intIsZero (_temp_659) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_661 = _temp_659 + 124
	load	[r14+-160],r1
	add	r1,124,r1
	store	r1,[r14+-152]
!   Move address of _temp_661 [i ] into _temp_662
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
!   Data Move: _temp_658 = *_temp_662  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r1],r1
	store	r1,[r14+-164]
!   Data Move: *_temp_657 = _temp_658  (sizeInBytes=4)
	load	[r14+-164],r1
	load	[r14+-168],r2
	store	r1,[r2]
! END IF...
_Label_634:
!   Increment the FOR-LOOP index variable and jump back
_Label_629:
!   i = i + 1
	load	[r14+-332],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-332]
	jmp	_Label_627
! END FOR
_Label_630:
! ASSIGNMENT STATEMENT...
	mov	1848,r13		! source line 1848
	mov	"\0\0AS",r10
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-320],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_663 = newThread + 68
	load	[r14+-320],r1
	add	r1,68,r1
	store	r1,[r14+-144]
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-320],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_665 = newThread + 88
	load	[r14+-320],r1
	add	r1,88,r1
	store	r1,[r14+-136]
!   Move address of _temp_665 [999 ] into _temp_666
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
!   _temp_664 = _temp_666		(4 bytes)
	load	[r14+-132],r1
	store	r1,[r14+-140]
!   Data Move: *_temp_663 = _temp_664  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r14+-144],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1850,r13		! source line 1850
	mov	"\0\0SE",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-324],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_668 = newPCB + 32
	load	[r14+-324],r1
	add	r1,32,r1
	store	r1,[r14+-124]
!   _temp_667 = _temp_668		(4 bytes)
	load	[r14+-124],r1
	store	r1,[r14+-128]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_671 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-112]
!   Data Move: _temp_670 = *_temp_671  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if intIsZero (_temp_670) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_672 = _temp_670 + 32
	load	[r14+-116],r1
	add	r1,32,r1
	store	r1,[r14+-108]
!   _temp_673 = _temp_672 + 4
	load	[r14+-108],r1
	add	r1,4,r1
	store	r1,[r14+-104]
!   Data Move: _temp_669 = *_temp_673  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-120]
!   _temp_674 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-100]
!   Prepare Argument: offset=12  value=_temp_667  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_669  sizeInBytes=4
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
	mov	1851,r13		! source line 1851
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_679 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-96]
!   Calculate and save the FOR-LOOP ending value
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_683 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-80]
!   Data Move: _temp_682 = *_temp_683  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if intIsZero (_temp_682) then goto _runtimeErrorNullPointer
	load	[r14+-84],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_684 = _temp_682 + 32
	load	[r14+-84],r1
	add	r1,32,r1
	store	r1,[r14+-76]
!   _temp_685 = _temp_684 + 4
	load	[r14+-76],r1
	add	r1,4,r1
	store	r1,[r14+-72]
!   Data Move: _temp_681 = *_temp_685  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-88]
!   _temp_680 = _temp_681 - 1		(int)
	load	[r14+-88],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-92]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_679  (sizeInBytes=4)
	load	[r14+-96],r1
	store	r1,[r14+-332]
_Label_675:
!   Perform the FOR-LOOP termination test
!   if i > _temp_680 then goto _Label_678		
	load	[r14+-332],r1
	load	[r14+-92],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_678
_Label_676:
	mov	1851,r13		! source line 1851
	mov	"\0\0FB",r10
! CALL STATEMENT...
	mov	1852,r13		! source line 1852
	mov	"\0\0SE",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-324],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_687 = newPCB + 32
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
!   Retrieve Result: targetName=_temp_686  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-68]
	mov	1852,r13		! source line 1852
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_690 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-52]
!   Data Move: _temp_689 = *_temp_690  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_689) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_691 = _temp_689 + 32
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
!   Retrieve Result: targetName=_temp_688  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_686  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_688  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=8192  sizeInBytes=4
	mov	8192,r1
	store	r1,[r15+8]
!   Call the function
	mov	1852,r13		! source line 1852
	mov	"\0\0CE",r10
	call	MemoryCopy
! IF STATEMENT...
	mov	1853,r13		! source line 1853
	mov	"\0\0IF",r10
	mov	1853,r13		! source line 1853
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_696 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-40]
!   Data Move: _temp_695 = *_temp_696  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_695) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_697 = _temp_695 + 32
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
!   Retrieve Result: targetName=_temp_694  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   _temp_698 = _temp_694 XOR 0		(bool)
	loadb	[r14+-10],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_698 then goto _Label_693 else goto _Label_692
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_692
	jmp	_Label_693
_Label_692:
! THEN...
	mov	1854,r13		! source line 1854
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1854,r13		! source line 1854
	mov	"\0\0SE",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-324],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_699 = newPCB + 32
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
	jmp	_Label_700
_Label_693:
! ELSE...
	mov	1856,r13		! source line 1856
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	1856,r13		! source line 1856
	mov	"\0\0SE",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-324],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_701 = newPCB + 32
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
_Label_700:
!   Increment the FOR-LOOP index variable and jump back
_Label_677:
!   i = i + 1
	load	[r14+-332],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-332]
	jmp	_Label_675
! END FOR
_Label_678:
! ASSIGNMENT STATEMENT...
	mov	1861,r13		! source line 1861
	mov	"\0\0AS",r10
!   Call the function
	mov	1861,r13		! source line 1861
	mov	"\0\0CE",r10
	call	GetOldUserPCFromSystemStack
!   Retrieve Result: targetName=oldUserPC  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-336]
! SEND STATEMENT...
	mov	1862,r13		! source line 1862
	mov	"\0\0SE",r10
!   _temp_702 = _function_191_ResumeChildAfterFork
	set	_function_191_ResumeChildAfterFork,r1
	store	r1,[r14+-24]
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-320],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_702  sizeInBytes=4
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
	mov	1864,r13		! source line 1864
	mov	"\0\0RE",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-324],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_704 = newPCB + 12
	load	[r14+-324],r1
	add	r1,12,r1
	store	r1,[r14+-16]
!   Data Move: _temp_703 = *_temp_704  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   ReturnResult: _temp_703  (sizeInBytes=4)
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
	.word	_Label_705
	.word	0		! total size of parameters
	.word	340		! frame size = 340
	.word	_Label_706
	.word	-16
	.word	4
	.word	_Label_707
	.word	-20
	.word	4
	.word	_Label_708
	.word	-24
	.word	4
	.word	_Label_709
	.word	-28
	.word	4
	.word	_Label_710
	.word	-32
	.word	4
	.word	_Label_711
	.word	-9
	.word	1
	.word	_Label_712
	.word	-36
	.word	4
	.word	_Label_713
	.word	-40
	.word	4
	.word	_Label_714
	.word	-44
	.word	4
	.word	_Label_715
	.word	-10
	.word	1
	.word	_Label_716
	.word	-48
	.word	4
	.word	_Label_717
	.word	-52
	.word	4
	.word	_Label_718
	.word	-56
	.word	4
	.word	_Label_719
	.word	-60
	.word	4
	.word	_Label_720
	.word	-64
	.word	4
	.word	_Label_721
	.word	-68
	.word	4
	.word	_Label_722
	.word	-72
	.word	4
	.word	_Label_723
	.word	-76
	.word	4
	.word	_Label_724
	.word	-80
	.word	4
	.word	_Label_725
	.word	-84
	.word	4
	.word	_Label_726
	.word	-88
	.word	4
	.word	_Label_727
	.word	-92
	.word	4
	.word	_Label_728
	.word	-96
	.word	4
	.word	_Label_729
	.word	-100
	.word	4
	.word	_Label_730
	.word	-104
	.word	4
	.word	_Label_731
	.word	-108
	.word	4
	.word	_Label_732
	.word	-112
	.word	4
	.word	_Label_733
	.word	-116
	.word	4
	.word	_Label_734
	.word	-120
	.word	4
	.word	_Label_735
	.word	-124
	.word	4
	.word	_Label_736
	.word	-128
	.word	4
	.word	_Label_737
	.word	-132
	.word	4
	.word	_Label_738
	.word	-136
	.word	4
	.word	_Label_739
	.word	-140
	.word	4
	.word	_Label_740
	.word	-144
	.word	4
	.word	_Label_741
	.word	-148
	.word	4
	.word	_Label_742
	.word	-152
	.word	4
	.word	_Label_743
	.word	-156
	.word	4
	.word	_Label_744
	.word	-160
	.word	4
	.word	_Label_745
	.word	-164
	.word	4
	.word	_Label_746
	.word	-168
	.word	4
	.word	_Label_747
	.word	-172
	.word	4
	.word	_Label_748
	.word	-176
	.word	4
	.word	_Label_749
	.word	-180
	.word	4
	.word	_Label_750
	.word	-184
	.word	4
	.word	_Label_751
	.word	-188
	.word	4
	.word	_Label_752
	.word	-192
	.word	4
	.word	_Label_753
	.word	-196
	.word	4
	.word	_Label_754
	.word	-200
	.word	4
	.word	_Label_755
	.word	-204
	.word	4
	.word	_Label_756
	.word	-208
	.word	4
	.word	_Label_757
	.word	-212
	.word	4
	.word	_Label_758
	.word	-216
	.word	4
	.word	_Label_759
	.word	-220
	.word	4
	.word	_Label_760
	.word	-224
	.word	4
	.word	_Label_761
	.word	-228
	.word	4
	.word	_Label_762
	.word	-232
	.word	4
	.word	_Label_763
	.word	-236
	.word	4
	.word	_Label_764
	.word	-240
	.word	4
	.word	_Label_765
	.word	-244
	.word	4
	.word	_Label_766
	.word	-248
	.word	4
	.word	_Label_767
	.word	-252
	.word	4
	.word	_Label_768
	.word	-256
	.word	4
	.word	_Label_769
	.word	-260
	.word	4
	.word	_Label_770
	.word	-264
	.word	4
	.word	_Label_771
	.word	-268
	.word	4
	.word	_Label_772
	.word	-272
	.word	4
	.word	_Label_773
	.word	-276
	.word	4
	.word	_Label_774
	.word	-280
	.word	4
	.word	_Label_775
	.word	-284
	.word	4
	.word	_Label_776
	.word	-288
	.word	4
	.word	_Label_777
	.word	-292
	.word	4
	.word	_Label_778
	.word	-296
	.word	4
	.word	_Label_779
	.word	-300
	.word	4
	.word	_Label_780
	.word	-304
	.word	4
	.word	_Label_781
	.word	-308
	.word	4
	.word	_Label_782
	.word	-312
	.word	4
	.word	_Label_783
	.word	-316
	.word	4
	.word	_Label_784
	.word	-320
	.word	4
	.word	_Label_785
	.word	-324
	.word	4
	.word	_Label_786
	.word	-328
	.word	4
	.word	_Label_787
	.word	-332
	.word	4
	.word	_Label_788
	.word	-336
	.word	4
	.word	0
_Label_705:
	.ascii	"Handle_Sys_Fork\0"
	.align
_Label_706:
	.byte	'?'
	.ascii	"_temp_704\0"
	.align
_Label_707:
	.byte	'?'
	.ascii	"_temp_703\0"
	.align
_Label_708:
	.byte	'?'
	.ascii	"_temp_702\0"
	.align
_Label_709:
	.byte	'?'
	.ascii	"_temp_701\0"
	.align
_Label_710:
	.byte	'?'
	.ascii	"_temp_699\0"
	.align
_Label_711:
	.byte	'C'
	.ascii	"_temp_698\0"
	.align
_Label_712:
	.byte	'?'
	.ascii	"_temp_697\0"
	.align
_Label_713:
	.byte	'?'
	.ascii	"_temp_696\0"
	.align
_Label_714:
	.byte	'?'
	.ascii	"_temp_695\0"
	.align
_Label_715:
	.byte	'C'
	.ascii	"_temp_694\0"
	.align
_Label_716:
	.byte	'?'
	.ascii	"_temp_691\0"
	.align
_Label_717:
	.byte	'?'
	.ascii	"_temp_690\0"
	.align
_Label_718:
	.byte	'?'
	.ascii	"_temp_689\0"
	.align
_Label_719:
	.byte	'?'
	.ascii	"_temp_688\0"
	.align
_Label_720:
	.byte	'?'
	.ascii	"_temp_687\0"
	.align
_Label_721:
	.byte	'?'
	.ascii	"_temp_686\0"
	.align
_Label_722:
	.byte	'?'
	.ascii	"_temp_685\0"
	.align
_Label_723:
	.byte	'?'
	.ascii	"_temp_684\0"
	.align
_Label_724:
	.byte	'?'
	.ascii	"_temp_683\0"
	.align
_Label_725:
	.byte	'?'
	.ascii	"_temp_682\0"
	.align
_Label_726:
	.byte	'?'
	.ascii	"_temp_681\0"
	.align
_Label_727:
	.byte	'?'
	.ascii	"_temp_680\0"
	.align
_Label_728:
	.byte	'?'
	.ascii	"_temp_679\0"
	.align
_Label_729:
	.byte	'?'
	.ascii	"_temp_674\0"
	.align
_Label_730:
	.byte	'?'
	.ascii	"_temp_673\0"
	.align
_Label_731:
	.byte	'?'
	.ascii	"_temp_672\0"
	.align
_Label_732:
	.byte	'?'
	.ascii	"_temp_671\0"
	.align
_Label_733:
	.byte	'?'
	.ascii	"_temp_670\0"
	.align
_Label_734:
	.byte	'?'
	.ascii	"_temp_669\0"
	.align
_Label_735:
	.byte	'?'
	.ascii	"_temp_668\0"
	.align
_Label_736:
	.byte	'?'
	.ascii	"_temp_667\0"
	.align
_Label_737:
	.byte	'?'
	.ascii	"_temp_666\0"
	.align
_Label_738:
	.byte	'?'
	.ascii	"_temp_665\0"
	.align
_Label_739:
	.byte	'?'
	.ascii	"_temp_664\0"
	.align
_Label_740:
	.byte	'?'
	.ascii	"_temp_663\0"
	.align
_Label_741:
	.byte	'?'
	.ascii	"_temp_662\0"
	.align
_Label_742:
	.byte	'?'
	.ascii	"_temp_661\0"
	.align
_Label_743:
	.byte	'?'
	.ascii	"_temp_660\0"
	.align
_Label_744:
	.byte	'?'
	.ascii	"_temp_659\0"
	.align
_Label_745:
	.byte	'?'
	.ascii	"_temp_658\0"
	.align
_Label_746:
	.byte	'?'
	.ascii	"_temp_657\0"
	.align
_Label_747:
	.byte	'?'
	.ascii	"_temp_656\0"
	.align
_Label_748:
	.byte	'?'
	.ascii	"_temp_655\0"
	.align
_Label_749:
	.byte	'?'
	.ascii	"_temp_654\0"
	.align
_Label_750:
	.byte	'?'
	.ascii	"_temp_653\0"
	.align
_Label_751:
	.byte	'?'
	.ascii	"_temp_652\0"
	.align
_Label_752:
	.byte	'?'
	.ascii	"_temp_651\0"
	.align
_Label_753:
	.byte	'?'
	.ascii	"_temp_650\0"
	.align
_Label_754:
	.byte	'?'
	.ascii	"_temp_649\0"
	.align
_Label_755:
	.byte	'?'
	.ascii	"_temp_648\0"
	.align
_Label_756:
	.byte	'?'
	.ascii	"_temp_647\0"
	.align
_Label_757:
	.byte	'?'
	.ascii	"_temp_646\0"
	.align
_Label_758:
	.byte	'?'
	.ascii	"_temp_645\0"
	.align
_Label_759:
	.byte	'?'
	.ascii	"_temp_644\0"
	.align
_Label_760:
	.byte	'?'
	.ascii	"_temp_643\0"
	.align
_Label_761:
	.byte	'?'
	.ascii	"_temp_642\0"
	.align
_Label_762:
	.byte	'?'
	.ascii	"_temp_641\0"
	.align
_Label_763:
	.byte	'?'
	.ascii	"_temp_640\0"
	.align
_Label_764:
	.byte	'?'
	.ascii	"_temp_639\0"
	.align
_Label_765:
	.byte	'?'
	.ascii	"_temp_638\0"
	.align
_Label_766:
	.byte	'?'
	.ascii	"_temp_637\0"
	.align
_Label_767:
	.byte	'?'
	.ascii	"_temp_636\0"
	.align
_Label_768:
	.byte	'?'
	.ascii	"_temp_635\0"
	.align
_Label_769:
	.byte	'?'
	.ascii	"_temp_632\0"
	.align
_Label_770:
	.byte	'?'
	.ascii	"_temp_631\0"
	.align
_Label_771:
	.byte	'?'
	.ascii	"_temp_626\0"
	.align
_Label_772:
	.byte	'?'
	.ascii	"_temp_625\0"
	.align
_Label_773:
	.byte	'?'
	.ascii	"_temp_624\0"
	.align
_Label_774:
	.byte	'?'
	.ascii	"_temp_623\0"
	.align
_Label_775:
	.byte	'?'
	.ascii	"_temp_622\0"
	.align
_Label_776:
	.byte	'?'
	.ascii	"_temp_621\0"
	.align
_Label_777:
	.byte	'?'
	.ascii	"_temp_620\0"
	.align
_Label_778:
	.byte	'?'
	.ascii	"_temp_619\0"
	.align
_Label_779:
	.byte	'?'
	.ascii	"_temp_618\0"
	.align
_Label_780:
	.byte	'?'
	.ascii	"_temp_617\0"
	.align
_Label_781:
	.byte	'?'
	.ascii	"_temp_616\0"
	.align
_Label_782:
	.byte	'?'
	.ascii	"_temp_615\0"
	.align
_Label_783:
	.byte	'?'
	.ascii	"_temp_614\0"
	.align
_Label_784:
	.byte	'P'
	.ascii	"newThread\0"
	.align
_Label_785:
	.byte	'P'
	.ascii	"newPCB\0"
	.align
_Label_786:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_787:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_788:
	.byte	'I'
	.ascii	"oldUserPC\0"
	.align
! 
! ===============  FUNCTION ResumeChildAfterFork  ===============
! 
_function_191_ResumeChildAfterFork:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_191_ResumeChildAfterFork,r1
	push	r1
	mov	17,r1
_Label_4436:
	push	r0
	sub	r1,1,r1
	bne	_Label_4436
	mov	1868,r13		! source line 1868
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1874,r13		! source line 1874
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1874,r13		! source line 1874
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! SEND STATEMENT...
	mov	1875,r13		! source line 1875
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_790 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-48]
!   Data Move: _temp_789 = *_temp_790  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_789) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_791 = _temp_789 + 32
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
!   _temp_793 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_793 [0 ] into _temp_794
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
!   _temp_792 = _temp_794		(4 bytes)
	load	[r14+-32],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_792  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1876,r13		! source line 1876
	mov	"\0\0CE",r10
	call	RestoreUserRegs
! ASSIGNMENT STATEMENT...
	mov	1877,r13		! source line 1877
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_795 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_795 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1878,r13		! source line 1878
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_796 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-24]
!   Move address of _temp_796 [14 ] into _temp_797
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
!   Data Move: initUserStackTop = *_temp_797  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-60]
! ASSIGNMENT STATEMENT...
	mov	1879,r13		! source line 1879
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_798 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-16]
!   Move address of _temp_798 [999 ] into _temp_799
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
!   initSystemStackTop = _temp_799		(4 bytes)
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
	mov	1880,r13		! source line 1880
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	1880,r13		! source line 1880
	mov	"\0\0RE",r10
	add	r15,72,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_191_ResumeChildAfterFork:
	.word	_sourceFileName
	.word	_Label_800
	.word	4		! total size of parameters
	.word	68		! frame size = 68
	.word	_Label_801
	.word	8
	.word	4
	.word	_Label_802
	.word	-12
	.word	4
	.word	_Label_803
	.word	-16
	.word	4
	.word	_Label_804
	.word	-20
	.word	4
	.word	_Label_805
	.word	-24
	.word	4
	.word	_Label_806
	.word	-28
	.word	4
	.word	_Label_807
	.word	-32
	.word	4
	.word	_Label_808
	.word	-36
	.word	4
	.word	_Label_809
	.word	-40
	.word	4
	.word	_Label_810
	.word	-44
	.word	4
	.word	_Label_811
	.word	-48
	.word	4
	.word	_Label_812
	.word	-52
	.word	4
	.word	_Label_813
	.word	-56
	.word	4
	.word	_Label_814
	.word	-60
	.word	4
	.word	_Label_815
	.word	-64
	.word	4
	.word	0
_Label_800:
	.ascii	"ResumeChildAfterFork\0"
	.align
_Label_801:
	.byte	'I'
	.ascii	"startPC\0"
	.align
_Label_802:
	.byte	'?'
	.ascii	"_temp_799\0"
	.align
_Label_803:
	.byte	'?'
	.ascii	"_temp_798\0"
	.align
_Label_804:
	.byte	'?'
	.ascii	"_temp_797\0"
	.align
_Label_805:
	.byte	'?'
	.ascii	"_temp_796\0"
	.align
_Label_806:
	.byte	'?'
	.ascii	"_temp_795\0"
	.align
_Label_807:
	.byte	'?'
	.ascii	"_temp_794\0"
	.align
_Label_808:
	.byte	'?'
	.ascii	"_temp_793\0"
	.align
_Label_809:
	.byte	'?'
	.ascii	"_temp_792\0"
	.align
_Label_810:
	.byte	'?'
	.ascii	"_temp_791\0"
	.align
_Label_811:
	.byte	'?'
	.ascii	"_temp_790\0"
	.align
_Label_812:
	.byte	'?'
	.ascii	"_temp_789\0"
	.align
_Label_813:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_814:
	.byte	'I'
	.ascii	"initUserStackTop\0"
	.align
_Label_815:
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
_Label_4437:
	push	r0
	sub	r1,1,r1
	bne	_Label_4437
	mov	1885,r13		! source line 1885
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! FOR STATEMENT...
	mov	1889,r13		! source line 1889
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_820 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-112]
!   Calculate and save the FOR-LOOP ending value
!   _temp_821 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-108]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_820  (sizeInBytes=4)
	load	[r14+-112],r1
	store	r1,[r14+-116]
_Label_816:
!   Perform the FOR-LOOP termination test
!   if i > _temp_821 then goto _Label_819		
	load	[r14+-116],r1
	load	[r14+-108],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_819
_Label_817:
	mov	1889,r13		! source line 1889
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1890,r13		! source line 1890
	mov	"\0\0IF",r10
!   _temp_827 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-100]
!   _temp_828 = _temp_827 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-96]
!   Move address of _temp_828 [i ] into _temp_829
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
!   _temp_830 = _temp_829 + 12
	load	[r14+-92],r1
	add	r1,12,r1
	store	r1,[r14+-88]
!   Data Move: _temp_826 = *_temp_830  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_826 != processID then goto _Label_823		(int)
	load	[r14+-104],r1
	load	[r14+8],r2
	cmp	r1,r2
	bne	_Label_823
!	jmp	_Label_825
_Label_825:
!   _temp_832 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-80]
!   _temp_833 = _temp_832 + 4
	load	[r14+-80],r1
	add	r1,4,r1
	store	r1,[r14+-76]
!   Move address of _temp_833 [i ] into _temp_834
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
!   _temp_835 = _temp_834 + 16
	load	[r14+-72],r1
	add	r1,16,r1
	store	r1,[r14+-68]
!   Data Move: _temp_831 = *_temp_835  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_838 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-56]
!   Data Move: _temp_837 = *_temp_838  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_837) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_839 = _temp_837 + 12
	load	[r14+-60],r1
	add	r1,12,r1
	store	r1,[r14+-52]
!   Data Move: _temp_836 = *_temp_839  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   if _temp_831 != _temp_836 then goto _Label_823		(int)
	load	[r14+-84],r1
	load	[r14+-64],r2
	cmp	r1,r2
	bne	_Label_823
!	jmp	_Label_824
_Label_824:
!   _temp_841 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-44]
!   _temp_842 = _temp_841 + 4
	load	[r14+-44],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Move address of _temp_842 [i ] into _temp_843
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
!   _temp_844 = _temp_843 + 20
	load	[r14+-36],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: _temp_840 = *_temp_844  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   if _temp_840 == 3 then goto _Label_823		(int)
	load	[r14+-48],r1
	mov	3,r2
	cmp	r1,r2
	be	_Label_823
!	jmp	_Label_822
_Label_822:
! THEN...
	mov	1891,r13		! source line 1891
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1891,r13		! source line 1891
	mov	"\0\0AS",r10
	mov	1891,r13		! source line 1891
	mov	"\0\0SE",r10
!   _temp_846 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-24]
!   _temp_847 = _temp_846 + 4
	load	[r14+-24],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_847 [i ] into _temp_848
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
!   _temp_845 = _temp_848		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-28]
!   _temp_849 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_845  sizeInBytes=4
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
	mov	1892,r13		! source line 1892
	mov	"\0\0RE",r10
!   ReturnResult: childExitStatus  (sizeInBytes=4)
	load	[r14+-120],r1
	store	r1,[r14+8]
	add	r15,124,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_823:
!   Increment the FOR-LOOP index variable and jump back
_Label_818:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_816
! END FOR
_Label_819:
! RETURN STATEMENT...
	mov	1895,r13		! source line 1895
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
	.word	_Label_850
	.word	4		! total size of parameters
	.word	120		! frame size = 120
	.word	_Label_851
	.word	8
	.word	4
	.word	_Label_852
	.word	-12
	.word	4
	.word	_Label_853
	.word	-16
	.word	4
	.word	_Label_854
	.word	-20
	.word	4
	.word	_Label_855
	.word	-24
	.word	4
	.word	_Label_856
	.word	-28
	.word	4
	.word	_Label_857
	.word	-32
	.word	4
	.word	_Label_858
	.word	-36
	.word	4
	.word	_Label_859
	.word	-40
	.word	4
	.word	_Label_860
	.word	-44
	.word	4
	.word	_Label_861
	.word	-48
	.word	4
	.word	_Label_862
	.word	-52
	.word	4
	.word	_Label_863
	.word	-56
	.word	4
	.word	_Label_864
	.word	-60
	.word	4
	.word	_Label_865
	.word	-64
	.word	4
	.word	_Label_866
	.word	-68
	.word	4
	.word	_Label_867
	.word	-72
	.word	4
	.word	_Label_868
	.word	-76
	.word	4
	.word	_Label_869
	.word	-80
	.word	4
	.word	_Label_870
	.word	-84
	.word	4
	.word	_Label_871
	.word	-88
	.word	4
	.word	_Label_872
	.word	-92
	.word	4
	.word	_Label_873
	.word	-96
	.word	4
	.word	_Label_874
	.word	-100
	.word	4
	.word	_Label_875
	.word	-104
	.word	4
	.word	_Label_876
	.word	-108
	.word	4
	.word	_Label_877
	.word	-112
	.word	4
	.word	_Label_878
	.word	-116
	.word	4
	.word	_Label_879
	.word	-120
	.word	4
	.word	0
_Label_850:
	.ascii	"Handle_Sys_Join\0"
	.align
_Label_851:
	.byte	'I'
	.ascii	"processID\0"
	.align
_Label_852:
	.byte	'?'
	.ascii	"_temp_849\0"
	.align
_Label_853:
	.byte	'?'
	.ascii	"_temp_848\0"
	.align
_Label_854:
	.byte	'?'
	.ascii	"_temp_847\0"
	.align
_Label_855:
	.byte	'?'
	.ascii	"_temp_846\0"
	.align
_Label_856:
	.byte	'?'
	.ascii	"_temp_845\0"
	.align
_Label_857:
	.byte	'?'
	.ascii	"_temp_844\0"
	.align
_Label_858:
	.byte	'?'
	.ascii	"_temp_843\0"
	.align
_Label_859:
	.byte	'?'
	.ascii	"_temp_842\0"
	.align
_Label_860:
	.byte	'?'
	.ascii	"_temp_841\0"
	.align
_Label_861:
	.byte	'?'
	.ascii	"_temp_840\0"
	.align
_Label_862:
	.byte	'?'
	.ascii	"_temp_839\0"
	.align
_Label_863:
	.byte	'?'
	.ascii	"_temp_838\0"
	.align
_Label_864:
	.byte	'?'
	.ascii	"_temp_837\0"
	.align
_Label_865:
	.byte	'?'
	.ascii	"_temp_836\0"
	.align
_Label_866:
	.byte	'?'
	.ascii	"_temp_835\0"
	.align
_Label_867:
	.byte	'?'
	.ascii	"_temp_834\0"
	.align
_Label_868:
	.byte	'?'
	.ascii	"_temp_833\0"
	.align
_Label_869:
	.byte	'?'
	.ascii	"_temp_832\0"
	.align
_Label_870:
	.byte	'?'
	.ascii	"_temp_831\0"
	.align
_Label_871:
	.byte	'?'
	.ascii	"_temp_830\0"
	.align
_Label_872:
	.byte	'?'
	.ascii	"_temp_829\0"
	.align
_Label_873:
	.byte	'?'
	.ascii	"_temp_828\0"
	.align
_Label_874:
	.byte	'?'
	.ascii	"_temp_827\0"
	.align
_Label_875:
	.byte	'?'
	.ascii	"_temp_826\0"
	.align
_Label_876:
	.byte	'?'
	.ascii	"_temp_821\0"
	.align
_Label_877:
	.byte	'?'
	.ascii	"_temp_820\0"
	.align
_Label_878:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_879:
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
_Label_4438:
	push	r0
	sub	r1,1,r1
	bne	_Label_4438
	mov	1900,r13		! source line 1900
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! newAddrSpace
!   NEW CLASS Constructor...
!   ZeroMemory: newAddrSpace = zeros  (sizeInBytes=92)
	add	r14,-204,r4
	mov	23,r3
_Label_4439:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4439
!   newAddrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	store	r1,[r14+-204]
! ASSIGNMENT STATEMENT...
	mov	1910,r13		! source line 1910
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1910,r13		! source line 1910
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=temp  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-248]
! ASSIGNMENT STATEMENT...
	mov	1912,r13		! source line 1912
	mov	"\0\0AS",r10
	mov	1912,r13		! source line 1912
	mov	"\0\0SE",r10
!   _temp_881 = &kernalFileName
	add	r14,-228,r1
	store	r1,[r14+-108]
!   _temp_882 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-104]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_884 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-96]
!   Data Move: _temp_883 = *_temp_884  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_883) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_885 = _temp_883 + 32
	load	[r14+-100],r1
	add	r1,32,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=12  value=_temp_881  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_882  sizeInBytes=4
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
	mov	1913,r13		! source line 1913
	mov	"\0\0IF",r10
!   if temp >= 0 then goto _Label_887		(int)
	load	[r14+-248],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_887
!	jmp	_Label_886
_Label_886:
! THEN...
	mov	1914,r13		! source line 1914
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1914,r13		! source line 1914
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,260,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_887:
! SEND STATEMENT...
	mov	1917,r13		! source line 1917
	mov	"\0\0SE",r10
!   _temp_888 = &newAddrSpace
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
	mov	1919,r13		! source line 1919
	mov	"\0\0AS",r10
	mov	1919,r13		! source line 1919
	mov	"\0\0SE",r10
!   _temp_889 = &kernalFileName
	add	r14,-228,r1
	store	r1,[r14+-84]
!   _temp_890 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=12  value=_temp_889  sizeInBytes=4
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
	mov	1920,r13		! source line 1920
	mov	"\0\0IF",r10
!   if intIsZero (openFilePtr) then goto _Label_891
	load	[r14+-244],r1
	cmp	r1,r0
	be	_Label_891
	jmp	_Label_892
_Label_891:
! THEN...
	mov	1921,r13		! source line 1921
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1921,r13		! source line 1921
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,260,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_892:
! ASSIGNMENT STATEMENT...
	mov	1924,r13		! source line 1924
	mov	"\0\0AS",r10
	mov	1924,r13		! source line 1924
	mov	"\0\0SE",r10
!   _temp_893 = &newAddrSpace
	add	r14,-204,r1
	store	r1,[r14+-76]
!   if intIsZero (openFilePtr) then goto _runtimeErrorNullPointer
	load	[r14+-244],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_893  sizeInBytes=4
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
	mov	1925,r13		! source line 1925
	mov	"\0\0IF",r10
!   if entryPoint >= 0 then goto _Label_895		(int)
	load	[r14+-240],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_895
!	jmp	_Label_894
_Label_894:
! THEN...
	mov	1926,r13		! source line 1926
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1926,r13		! source line 1926
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,260,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_895:
! SEND STATEMENT...
	mov	1929,r13		! source line 1929
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_898 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-64]
!   Data Move: _temp_897 = *_temp_898  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_897) then goto _runtimeErrorNullPointer
	load	[r14+-68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_899 = _temp_897 + 32
	load	[r14+-68],r1
	add	r1,32,r1
	store	r1,[r14+-60]
!   _temp_896 = _temp_899		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-72]
!   _temp_900 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=12  value=_temp_896  sizeInBytes=4
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
	mov	1931,r13		! source line 1931
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_902 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-48]
!   Data Move: _temp_901 = *_temp_902  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_901) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_903 = _temp_901 + 32
	load	[r14+-52],r1
	add	r1,32,r1
	store	r1,[r14+-44]
!   Data Move: *_temp_903 = newAddrSpace  (sizeInBytes=92)
	add	r14,-204,r5
	load	[r14+-44],r4
	mov	23,r3
_Label_4440:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4440
! SEND STATEMENT...
	mov	1933,r13		! source line 1933
	mov	"\0\0SE",r10
!   _temp_904 = &_P_Kernel_fileManager
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
	mov	1934,r13		! source line 1934
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_905 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_905 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-36],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1936,r13		! source line 1936
	mov	"\0\0AS",r10
!   _temp_907 = &newAddrSpace
	add	r14,-204,r1
	store	r1,[r14+-28]
!   _temp_908 = _temp_907 + 4
	load	[r14+-28],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Data Move: _temp_906 = *_temp_908  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   initUserStackTop = _temp_906 * 8192		(int)
	load	[r14+-32],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-232]
! ASSIGNMENT STATEMENT...
	mov	1937,r13		! source line 1937
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_909 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_909 [999 ] into _temp_910
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
!   initSystemStackTop = _temp_910		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-236]
! SEND STATEMENT...
	mov	1939,r13		! source line 1939
	mov	"\0\0SE",r10
!   _temp_911 = &newAddrSpace
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
	mov	1940,r13		! source line 1940
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	1941,r13		! source line 1941
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
	.word	_Label_912
	.word	4		! total size of parameters
	.word	256		! frame size = 256
	.word	_Label_913
	.word	8
	.word	4
	.word	_Label_914
	.word	-12
	.word	4
	.word	_Label_915
	.word	-16
	.word	4
	.word	_Label_916
	.word	-20
	.word	4
	.word	_Label_917
	.word	-24
	.word	4
	.word	_Label_918
	.word	-28
	.word	4
	.word	_Label_919
	.word	-32
	.word	4
	.word	_Label_920
	.word	-36
	.word	4
	.word	_Label_921
	.word	-40
	.word	4
	.word	_Label_922
	.word	-44
	.word	4
	.word	_Label_923
	.word	-48
	.word	4
	.word	_Label_924
	.word	-52
	.word	4
	.word	_Label_925
	.word	-56
	.word	4
	.word	_Label_926
	.word	-60
	.word	4
	.word	_Label_927
	.word	-64
	.word	4
	.word	_Label_928
	.word	-68
	.word	4
	.word	_Label_929
	.word	-72
	.word	4
	.word	_Label_930
	.word	-76
	.word	4
	.word	_Label_931
	.word	-80
	.word	4
	.word	_Label_932
	.word	-84
	.word	4
	.word	_Label_933
	.word	-88
	.word	4
	.word	_Label_934
	.word	-92
	.word	4
	.word	_Label_935
	.word	-96
	.word	4
	.word	_Label_936
	.word	-100
	.word	4
	.word	_Label_937
	.word	-104
	.word	4
	.word	_Label_938
	.word	-108
	.word	4
	.word	_Label_939
	.word	-112
	.word	4
	.word	_Label_940
	.word	-204
	.word	92
	.word	_Label_941
	.word	-228
	.word	24
	.word	_Label_942
	.word	-232
	.word	4
	.word	_Label_943
	.word	-236
	.word	4
	.word	_Label_944
	.word	-240
	.word	4
	.word	_Label_945
	.word	-244
	.word	4
	.word	_Label_946
	.word	-248
	.word	4
	.word	0
_Label_912:
	.ascii	"Handle_Sys_Exec\0"
	.align
_Label_913:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_914:
	.byte	'?'
	.ascii	"_temp_911\0"
	.align
_Label_915:
	.byte	'?'
	.ascii	"_temp_910\0"
	.align
_Label_916:
	.byte	'?'
	.ascii	"_temp_909\0"
	.align
_Label_917:
	.byte	'?'
	.ascii	"_temp_908\0"
	.align
_Label_918:
	.byte	'?'
	.ascii	"_temp_907\0"
	.align
_Label_919:
	.byte	'?'
	.ascii	"_temp_906\0"
	.align
_Label_920:
	.byte	'?'
	.ascii	"_temp_905\0"
	.align
_Label_921:
	.byte	'?'
	.ascii	"_temp_904\0"
	.align
_Label_922:
	.byte	'?'
	.ascii	"_temp_903\0"
	.align
_Label_923:
	.byte	'?'
	.ascii	"_temp_902\0"
	.align
_Label_924:
	.byte	'?'
	.ascii	"_temp_901\0"
	.align
_Label_925:
	.byte	'?'
	.ascii	"_temp_900\0"
	.align
_Label_926:
	.byte	'?'
	.ascii	"_temp_899\0"
	.align
_Label_927:
	.byte	'?'
	.ascii	"_temp_898\0"
	.align
_Label_928:
	.byte	'?'
	.ascii	"_temp_897\0"
	.align
_Label_929:
	.byte	'?'
	.ascii	"_temp_896\0"
	.align
_Label_930:
	.byte	'?'
	.ascii	"_temp_893\0"
	.align
_Label_931:
	.byte	'?'
	.ascii	"_temp_890\0"
	.align
_Label_932:
	.byte	'?'
	.ascii	"_temp_889\0"
	.align
_Label_933:
	.byte	'?'
	.ascii	"_temp_888\0"
	.align
_Label_934:
	.byte	'?'
	.ascii	"_temp_885\0"
	.align
_Label_935:
	.byte	'?'
	.ascii	"_temp_884\0"
	.align
_Label_936:
	.byte	'?'
	.ascii	"_temp_883\0"
	.align
_Label_937:
	.byte	'?'
	.ascii	"_temp_882\0"
	.align
_Label_938:
	.byte	'?'
	.ascii	"_temp_881\0"
	.align
_Label_939:
	.byte	'?'
	.ascii	"_temp_880\0"
	.align
_Label_940:
	.byte	'O'
	.ascii	"newAddrSpace\0"
	.align
_Label_941:
	.byte	'A'
	.ascii	"kernalFileName\0"
	.align
_Label_942:
	.byte	'I'
	.ascii	"initUserStackTop\0"
	.align
_Label_943:
	.byte	'I'
	.ascii	"initSystemStackTop\0"
	.align
_Label_944:
	.byte	'I'
	.ascii	"entryPoint\0"
	.align
_Label_945:
	.byte	'P'
	.ascii	"openFilePtr\0"
	.align
_Label_946:
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
_Label_4441:
	push	r0
	sub	r1,1,r1
	bne	_Label_4441
	mov	1946,r13		! source line 1946
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1951,r13		! source line 1951
	mov	"\0\0AS",r10
	mov	1951,r13		! source line 1951
	mov	"\0\0SE",r10
!   _temp_947 = &kernalFileName
	add	r14,-76,r1
	store	r1,[r14+-48]
!   _temp_948 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_950 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-36]
!   Data Move: _temp_949 = *_temp_950  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_949) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_951 = _temp_949 + 32
	load	[r14+-40],r1
	add	r1,32,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_947  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_948  sizeInBytes=4
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
!   _temp_952 = _StringConst_38
	set	_StringConst_38,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_952  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1952,r13		! source line 1952
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1953,r13		! source line 1953
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_953 = _StringConst_39
	set	_StringConst_39,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_953  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1954,r13		! source line 1954
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_954 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_954  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1955,r13		! source line 1955
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Call the function
	mov	1956,r13		! source line 1956
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_955 = _StringConst_40
	set	_StringConst_40,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_955  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1957,r13		! source line 1957
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_956 = &kernalFileName
	add	r14,-76,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_956  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1958,r13		! source line 1958
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1959,r13		! source line 1959
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1960,r13		! source line 1960
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
	.word	_Label_957
	.word	4		! total size of parameters
	.word	84		! frame size = 84
	.word	_Label_958
	.word	8
	.word	4
	.word	_Label_959
	.word	-12
	.word	4
	.word	_Label_960
	.word	-16
	.word	4
	.word	_Label_961
	.word	-20
	.word	4
	.word	_Label_962
	.word	-24
	.word	4
	.word	_Label_963
	.word	-28
	.word	4
	.word	_Label_964
	.word	-32
	.word	4
	.word	_Label_965
	.word	-36
	.word	4
	.word	_Label_966
	.word	-40
	.word	4
	.word	_Label_967
	.word	-44
	.word	4
	.word	_Label_968
	.word	-48
	.word	4
	.word	_Label_969
	.word	-52
	.word	4
	.word	_Label_970
	.word	-76
	.word	24
	.word	0
_Label_957:
	.ascii	"Handle_Sys_Create\0"
	.align
_Label_958:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_959:
	.byte	'?'
	.ascii	"_temp_956\0"
	.align
_Label_960:
	.byte	'?'
	.ascii	"_temp_955\0"
	.align
_Label_961:
	.byte	'?'
	.ascii	"_temp_954\0"
	.align
_Label_962:
	.byte	'?'
	.ascii	"_temp_953\0"
	.align
_Label_963:
	.byte	'?'
	.ascii	"_temp_952\0"
	.align
_Label_964:
	.byte	'?'
	.ascii	"_temp_951\0"
	.align
_Label_965:
	.byte	'?'
	.ascii	"_temp_950\0"
	.align
_Label_966:
	.byte	'?'
	.ascii	"_temp_949\0"
	.align
_Label_967:
	.byte	'?'
	.ascii	"_temp_948\0"
	.align
_Label_968:
	.byte	'?'
	.ascii	"_temp_947\0"
	.align
_Label_969:
	.byte	'I'
	.ascii	"temp\0"
	.align
_Label_970:
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
_Label_4442:
	push	r0
	sub	r1,1,r1
	bne	_Label_4442
	mov	1965,r13		! source line 1965
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1973,r13		! source line 1973
	mov	"\0\0AS",r10
	mov	1973,r13		! source line 1973
	mov	"\0\0SE",r10
!   _temp_971 = &kernalFileName
	add	r14,-132,r1
	store	r1,[r14+-96]
!   _temp_972 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-92]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_974 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-84]
!   Data Move: _temp_973 = *_temp_974  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-88]
!   if intIsZero (_temp_973) then goto _runtimeErrorNullPointer
	load	[r14+-88],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_975 = _temp_973 + 32
	load	[r14+-88],r1
	add	r1,32,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=12  value=_temp_971  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_972  sizeInBytes=4
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
	mov	1976,r13		! source line 1976
	mov	"\0\0AS",r10
!   fileDescriptorIndex = -1		(4 bytes)
	mov	-1,r1
	store	r1,[r14+-108]
! FOR STATEMENT...
	mov	1977,r13		! source line 1977
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_980 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-76]
!   Calculate and save the FOR-LOOP ending value
!   _temp_981 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-72]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_980  (sizeInBytes=4)
	load	[r14+-76],r1
	store	r1,[r14+-104]
_Label_976:
!   Perform the FOR-LOOP termination test
!   if i > _temp_981 then goto _Label_979		
	load	[r14+-104],r1
	load	[r14+-72],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_979
_Label_977:
	mov	1977,r13		! source line 1977
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1978,r13		! source line 1978
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_986 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-60]
!   Data Move: _temp_985 = *_temp_986  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_985) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_987 = _temp_985 + 124
	load	[r14+-64],r1
	add	r1,124,r1
	store	r1,[r14+-56]
!   Move address of _temp_987 [i ] into _temp_988
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
!   Data Move: _temp_984 = *_temp_988  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_984) then goto _Label_982
	load	[r14+-68],r1
	cmp	r1,r0
	be	_Label_982
	jmp	_Label_983
_Label_982:
! THEN...
	mov	1979,r13		! source line 1979
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1979,r13		! source line 1979
	mov	"\0\0AS",r10
!   fileDescriptorIndex = i		(4 bytes)
	load	[r14+-104],r1
	store	r1,[r14+-108]
! BREAK STATEMENT...
	mov	1980,r13		! source line 1980
	mov	"\0\0BR",r10
	jmp	_Label_979
! END IF...
_Label_983:
!   Increment the FOR-LOOP index variable and jump back
_Label_978:
!   i = i + 1
	load	[r14+-104],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-104]
	jmp	_Label_976
! END FOR
_Label_979:
! IF STATEMENT...
	mov	1983,r13		! source line 1983
	mov	"\0\0IF",r10
!   if fileDescriptorIndex != -1 then goto _Label_990		(int)
	load	[r14+-108],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_990
!	jmp	_Label_989
_Label_989:
! THEN...
	mov	1984,r13		! source line 1984
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1984,r13		! source line 1984
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
! IF STATEMENT...
	mov	1987,r13		! source line 1987
	mov	"\0\0IF",r10
!   _temp_993 = &kernalFileName
	add	r14,-132,r1
	store	r1,[r14+-48]
!   _temp_994 = _StringConst_41
	set	_StringConst_41,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_993  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_994  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Call the function
	mov	1987,r13		! source line 1987
	mov	"\0\0CA",r10
	call	_P_System_StrEqual
!   if result==true then goto _Label_991 else goto _Label_992
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_992
	jmp	_Label_991
_Label_991:
! THEN...
	mov	1988,r13		! source line 1988
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1988,r13		! source line 1988
	mov	"\0\0AS",r10
!   _temp_995 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-40]
!   _temp_996 = _temp_995 + 772
	load	[r14+-40],r1
	add	r1,772,r1
	store	r1,[r14+-36]
!   openFile = _temp_996		(4 bytes)
	load	[r14+-36],r1
	store	r1,[r14+-136]
	jmp	_Label_997
_Label_992:
! ELSE...
	mov	1990,r13		! source line 1990
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	1990,r13		! source line 1990
	mov	"\0\0AS",r10
	mov	1990,r13		! source line 1990
	mov	"\0\0SE",r10
!   _temp_998 = &kernalFileName
	add	r14,-132,r1
	store	r1,[r14+-32]
!   _temp_999 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_998  sizeInBytes=4
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
_Label_997:
! IF STATEMENT...
	mov	1992,r13		! source line 1992
	mov	"\0\0IF",r10
!   if intIsZero (openFile) then goto _Label_1000
	load	[r14+-136],r1
	cmp	r1,r0
	be	_Label_1000
	jmp	_Label_1001
_Label_1000:
! THEN...
	mov	1993,r13		! source line 1993
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1993,r13		! source line 1993
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,148,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1001:
! ASSIGNMENT STATEMENT...
	mov	1995,r13		! source line 1995
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1003 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_1002 = *_temp_1003  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_1002) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1004 = _temp_1002 + 124
	load	[r14+-24],r1
	add	r1,124,r1
	store	r1,[r14+-16]
!   Move address of _temp_1004 [fileDescriptorIndex ] into _temp_1005
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
!   Data Move: *_temp_1005 = openFile  (sizeInBytes=4)
	load	[r14+-136],r1
	load	[r14+-12],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1996,r13		! source line 1996
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
	.word	_Label_1006
	.word	4		! total size of parameters
	.word	144		! frame size = 144
	.word	_Label_1007
	.word	8
	.word	4
	.word	_Label_1008
	.word	-12
	.word	4
	.word	_Label_1009
	.word	-16
	.word	4
	.word	_Label_1010
	.word	-20
	.word	4
	.word	_Label_1011
	.word	-24
	.word	4
	.word	_Label_1012
	.word	-28
	.word	4
	.word	_Label_1013
	.word	-32
	.word	4
	.word	_Label_1014
	.word	-36
	.word	4
	.word	_Label_1015
	.word	-40
	.word	4
	.word	_Label_1016
	.word	-44
	.word	4
	.word	_Label_1017
	.word	-48
	.word	4
	.word	_Label_1018
	.word	-52
	.word	4
	.word	_Label_1019
	.word	-56
	.word	4
	.word	_Label_1020
	.word	-60
	.word	4
	.word	_Label_1021
	.word	-64
	.word	4
	.word	_Label_1022
	.word	-68
	.word	4
	.word	_Label_1023
	.word	-72
	.word	4
	.word	_Label_1024
	.word	-76
	.word	4
	.word	_Label_1025
	.word	-80
	.word	4
	.word	_Label_1026
	.word	-84
	.word	4
	.word	_Label_1027
	.word	-88
	.word	4
	.word	_Label_1028
	.word	-92
	.word	4
	.word	_Label_1029
	.word	-96
	.word	4
	.word	_Label_1030
	.word	-100
	.word	4
	.word	_Label_1031
	.word	-104
	.word	4
	.word	_Label_1032
	.word	-108
	.word	4
	.word	_Label_1033
	.word	-132
	.word	24
	.word	_Label_1034
	.word	-136
	.word	4
	.word	0
_Label_1006:
	.ascii	"Handle_Sys_Open\0"
	.align
_Label_1007:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_1008:
	.byte	'?'
	.ascii	"_temp_1005\0"
	.align
_Label_1009:
	.byte	'?'
	.ascii	"_temp_1004\0"
	.align
_Label_1010:
	.byte	'?'
	.ascii	"_temp_1003\0"
	.align
_Label_1011:
	.byte	'?'
	.ascii	"_temp_1002\0"
	.align
_Label_1012:
	.byte	'?'
	.ascii	"_temp_999\0"
	.align
_Label_1013:
	.byte	'?'
	.ascii	"_temp_998\0"
	.align
_Label_1014:
	.byte	'?'
	.ascii	"_temp_996\0"
	.align
_Label_1015:
	.byte	'?'
	.ascii	"_temp_995\0"
	.align
_Label_1016:
	.byte	'?'
	.ascii	"_temp_994\0"
	.align
_Label_1017:
	.byte	'?'
	.ascii	"_temp_993\0"
	.align
_Label_1018:
	.byte	'?'
	.ascii	"_temp_988\0"
	.align
_Label_1019:
	.byte	'?'
	.ascii	"_temp_987\0"
	.align
_Label_1020:
	.byte	'?'
	.ascii	"_temp_986\0"
	.align
_Label_1021:
	.byte	'?'
	.ascii	"_temp_985\0"
	.align
_Label_1022:
	.byte	'?'
	.ascii	"_temp_984\0"
	.align
_Label_1023:
	.byte	'?'
	.ascii	"_temp_981\0"
	.align
_Label_1024:
	.byte	'?'
	.ascii	"_temp_980\0"
	.align
_Label_1025:
	.byte	'?'
	.ascii	"_temp_975\0"
	.align
_Label_1026:
	.byte	'?'
	.ascii	"_temp_974\0"
	.align
_Label_1027:
	.byte	'?'
	.ascii	"_temp_973\0"
	.align
_Label_1028:
	.byte	'?'
	.ascii	"_temp_972\0"
	.align
_Label_1029:
	.byte	'?'
	.ascii	"_temp_971\0"
	.align
_Label_1030:
	.byte	'I'
	.ascii	"temp\0"
	.align
_Label_1031:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1032:
	.byte	'I'
	.ascii	"fileDescriptorIndex\0"
	.align
_Label_1033:
	.byte	'A'
	.ascii	"kernalFileName\0"
	.align
_Label_1034:
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
	mov	126,r1
_Label_4443:
	push	r0
	sub	r1,1,r1
	bne	_Label_4443
	mov	2001,r13		! source line 2001
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2018,r13		! source line 2018
	mov	"\0\0IF",r10
!   if fileDesc >= 0 then goto _Label_1039		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1039
	jmp	_Label_1035
_Label_1039:
!   if fileDesc <= 9 then goto _Label_1038		(int)
	load	[r14+8],r1
	mov	9,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1038
	jmp	_Label_1035
_Label_1038:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1042 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-440]
!   Data Move: _temp_1041 = *_temp_1042  (sizeInBytes=4)
	load	[r14+-440],r1
	load	[r1],r1
	store	r1,[r14+-444]
!   if intIsZero (_temp_1041) then goto _runtimeErrorNullPointer
	load	[r14+-444],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1043 = _temp_1041 + 124
	load	[r14+-444],r1
	add	r1,124,r1
	store	r1,[r14+-436]
!   Move address of _temp_1043 [fileDesc ] into _temp_1044
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-436],r1
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
	store	r2,[r14+-432]
!   Data Move: _temp_1040 = *_temp_1044  (sizeInBytes=4)
	load	[r14+-432],r1
	load	[r1],r1
	store	r1,[r14+-448]
!   if intIsZero (_temp_1040) then goto _Label_1035
	load	[r14+-448],r1
	cmp	r1,r0
	be	_Label_1035
!	jmp	_Label_1037
_Label_1037:
!   if sizeInBytes >= 0 then goto _Label_1036		(int)
	load	[r14+16],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1036
!	jmp	_Label_1035
_Label_1035:
! THEN...
	mov	2019,r13		! source line 2019
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2019,r13		! source line 2019
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,508,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1036:
! IF STATEMENT...
	mov	2023,r13		! source line 2023
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1050 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-416]
!   Data Move: _temp_1049 = *_temp_1050  (sizeInBytes=4)
	load	[r14+-416],r1
	load	[r1],r1
	store	r1,[r14+-420]
!   if intIsZero (_temp_1049) then goto _runtimeErrorNullPointer
	load	[r14+-420],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1051 = _temp_1049 + 124
	load	[r14+-420],r1
	add	r1,124,r1
	store	r1,[r14+-412]
!   Move address of _temp_1051 [fileDesc ] into _temp_1052
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-412],r1
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
	store	r2,[r14+-408]
!   Data Move: _temp_1048 = *_temp_1052  (sizeInBytes=4)
	load	[r14+-408],r1
	load	[r1],r1
	store	r1,[r14+-424]
!   if intIsZero (_temp_1048) then goto _runtimeErrorNullPointer
	load	[r14+-424],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1053 = _temp_1048 + 12
	load	[r14+-424],r1
	add	r1,12,r1
	store	r1,[r14+-404]
!   Data Move: _temp_1047 = *_temp_1053  (sizeInBytes=4)
	load	[r14+-404],r1
	load	[r1],r1
	store	r1,[r14+-428]
!   if _temp_1047 != 2 then goto _Label_1046		(int)
	load	[r14+-428],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1046
!	jmp	_Label_1045
_Label_1045:
! THEN...
	mov	2025,r13		! source line 2025
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2025,r13		! source line 2025
	mov	"\0\0AS",r10
!   tempBuffer = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-492]
! FOR STATEMENT...
	mov	2026,r13		! source line 2026
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1058 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-400]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1059 = sizeInBytes - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-396]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1058  (sizeInBytes=4)
	load	[r14+-400],r1
	store	r1,[r14+-488]
_Label_1054:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1059 then goto _Label_1057		
	load	[r14+-488],r1
	load	[r14+-396],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1057
_Label_1055:
	mov	2026,r13		! source line 2026
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2027,r13		! source line 2027
	mov	"\0\0AS",r10
!   _temp_1060 = tempBuffer		(4 bytes)
	load	[r14+-492],r1
	store	r1,[r14+-392]
!   virtPage = _temp_1060 div 8192		(int)
	load	[r14+-392],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-456]
! ASSIGNMENT STATEMENT...
	mov	2028,r13		! source line 2028
	mov	"\0\0AS",r10
!   virtAddr = tempBuffer		(4 bytes)
	load	[r14+-492],r1
	store	r1,[r14+-452]
! IF STATEMENT...
	mov	2029,r13		! source line 2029
	mov	"\0\0IF",r10
!   if virtPage >= 0 then goto _Label_1065		(int)
	load	[r14+-456],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1065
	jmp	_Label_1061
_Label_1065:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1069 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-376]
!   Data Move: _temp_1068 = *_temp_1069  (sizeInBytes=4)
	load	[r14+-376],r1
	load	[r1],r1
	store	r1,[r14+-380]
!   if intIsZero (_temp_1068) then goto _runtimeErrorNullPointer
	load	[r14+-380],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1070 = _temp_1068 + 32
	load	[r14+-380],r1
	add	r1,32,r1
	store	r1,[r14+-372]
!   _temp_1071 = _temp_1070 + 4
	load	[r14+-372],r1
	add	r1,4,r1
	store	r1,[r14+-368]
!   Data Move: _temp_1067 = *_temp_1071  (sizeInBytes=4)
	load	[r14+-368],r1
	load	[r1],r1
	store	r1,[r14+-384]
!   _temp_1066 = _temp_1067 - 1		(int)
	load	[r14+-384],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-388]
!   if virtPage <= _temp_1066 then goto _Label_1064		(int)
	load	[r14+-456],r1
	load	[r14+-388],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1064
	jmp	_Label_1061
_Label_1064:
	mov	2029,r13		! source line 2029
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1074 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-360]
!   Data Move: _temp_1073 = *_temp_1074  (sizeInBytes=4)
	load	[r14+-360],r1
	load	[r1],r1
	store	r1,[r14+-364]
!   if intIsZero (_temp_1073) then goto _runtimeErrorNullPointer
	load	[r14+-364],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1075 = _temp_1073 + 32
	load	[r14+-364],r1
	add	r1,32,r1
	store	r1,[r14+-356]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-456],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-356],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1072  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-27]
!   _temp_1076 = _temp_1072 XOR 0		(bool)
	loadb	[r14+-27],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-26]
!   if _temp_1076 then goto _Label_1063 else goto _Label_1061
	loadb	[r14+-26],r1
	cmp	r1,0
	be	_Label_1061
	jmp	_Label_1063
_Label_1063:
	mov	2029,r13		! source line 2029
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1079 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-348]
!   Data Move: _temp_1078 = *_temp_1079  (sizeInBytes=4)
	load	[r14+-348],r1
	load	[r1],r1
	store	r1,[r14+-352]
!   if intIsZero (_temp_1078) then goto _runtimeErrorNullPointer
	load	[r14+-352],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1080 = _temp_1078 + 32
	load	[r14+-352],r1
	add	r1,32,r1
	store	r1,[r14+-344]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-456],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-344],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_1077  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-25]
!   _temp_1081 = _temp_1077 XOR 0		(bool)
	loadb	[r14+-25],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-24]
!   if _temp_1081 then goto _Label_1062 else goto _Label_1061
	loadb	[r14+-24],r1
	cmp	r1,0
	be	_Label_1061
	jmp	_Label_1062
_Label_1061:
! THEN...
	mov	2030,r13		! source line 2030
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2030,r13		! source line 2030
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,508,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1062:
! ASSIGNMENT STATEMENT...
	mov	2032,r13		! source line 2032
	mov	"\0\0AS",r10
!   tempBuffer = tempBuffer + 1		(int)
	load	[r14+-492],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-492]
!   Increment the FOR-LOOP index variable and jump back
_Label_1056:
!   i = i + 1
	load	[r14+-488],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-488]
	jmp	_Label_1054
! END FOR
_Label_1057:
! ASSIGNMENT STATEMENT...
	mov	2034,r13		! source line 2034
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-464]
! FOR STATEMENT...
	mov	2035,r13		! source line 2035
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1086 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-340]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1087 = sizeInBytes - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-336]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1086  (sizeInBytes=4)
	load	[r14+-340],r1
	store	r1,[r14+-488]
_Label_1082:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1087 then goto _Label_1085		
	load	[r14+-488],r1
	load	[r14+-336],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1085
_Label_1083:
	mov	2035,r13		! source line 2035
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2036,r13		! source line 2036
	mov	"\0\0AS",r10
!   _temp_1088 = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-332]
!   virtPage = _temp_1088 div 8192		(int)
	load	[r14+-332],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-456]
! ASSIGNMENT STATEMENT...
	mov	2037,r13		! source line 2037
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-452]
! IF STATEMENT...
	mov	2038,r13		! source line 2038
	mov	"\0\0IF",r10
!   if virtPage >= 0 then goto _Label_1093		(int)
	load	[r14+-456],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1093
	jmp	_Label_1089
_Label_1093:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1097 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-316]
!   Data Move: _temp_1096 = *_temp_1097  (sizeInBytes=4)
	load	[r14+-316],r1
	load	[r1],r1
	store	r1,[r14+-320]
!   if intIsZero (_temp_1096) then goto _runtimeErrorNullPointer
	load	[r14+-320],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1098 = _temp_1096 + 32
	load	[r14+-320],r1
	add	r1,32,r1
	store	r1,[r14+-312]
!   _temp_1099 = _temp_1098 + 4
	load	[r14+-312],r1
	add	r1,4,r1
	store	r1,[r14+-308]
!   Data Move: _temp_1095 = *_temp_1099  (sizeInBytes=4)
	load	[r14+-308],r1
	load	[r1],r1
	store	r1,[r14+-324]
!   _temp_1094 = _temp_1095 - 1		(int)
	load	[r14+-324],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-328]
!   if virtPage <= _temp_1094 then goto _Label_1092		(int)
	load	[r14+-456],r1
	load	[r14+-328],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1092
	jmp	_Label_1089
_Label_1092:
	mov	2038,r13		! source line 2038
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1102 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-300]
!   Data Move: _temp_1101 = *_temp_1102  (sizeInBytes=4)
	load	[r14+-300],r1
	load	[r1],r1
	store	r1,[r14+-304]
!   if intIsZero (_temp_1101) then goto _runtimeErrorNullPointer
	load	[r14+-304],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1103 = _temp_1101 + 32
	load	[r14+-304],r1
	add	r1,32,r1
	store	r1,[r14+-296]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-456],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-296],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1100  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-23]
!   _temp_1104 = _temp_1100 XOR 0		(bool)
	loadb	[r14+-23],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-22]
!   if _temp_1104 then goto _Label_1091 else goto _Label_1089
	loadb	[r14+-22],r1
	cmp	r1,0
	be	_Label_1089
	jmp	_Label_1091
_Label_1091:
	mov	2038,r13		! source line 2038
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1107 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-288]
!   Data Move: _temp_1106 = *_temp_1107  (sizeInBytes=4)
	load	[r14+-288],r1
	load	[r1],r1
	store	r1,[r14+-292]
!   if intIsZero (_temp_1106) then goto _runtimeErrorNullPointer
	load	[r14+-292],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1108 = _temp_1106 + 32
	load	[r14+-292],r1
	add	r1,32,r1
	store	r1,[r14+-284]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-456],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-284],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_1105  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-21]
!   _temp_1109 = _temp_1105 XOR 0		(bool)
	loadb	[r14+-21],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-20]
!   if _temp_1109 then goto _Label_1090 else goto _Label_1089
	loadb	[r14+-20],r1
	cmp	r1,0
	be	_Label_1089
	jmp	_Label_1090
_Label_1089:
! THEN...
	mov	2039,r13		! source line 2039
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2039,r13		! source line 2039
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,508,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1090:
! ASSIGNMENT STATEMENT...
	mov	2041,r13		! source line 2041
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+-452],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-460]
! ASSIGNMENT STATEMENT...
	mov	2042,r13		! source line 2042
	mov	"\0\0AS",r10
	mov	2042,r13		! source line 2042
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1112 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-272]
!   Data Move: _temp_1111 = *_temp_1112  (sizeInBytes=4)
	load	[r14+-272],r1
	load	[r1],r1
	store	r1,[r14+-276]
!   if intIsZero (_temp_1111) then goto _runtimeErrorNullPointer
	load	[r14+-276],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1113 = _temp_1111 + 32
	load	[r14+-276],r1
	add	r1,32,r1
	store	r1,[r14+-268]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-456],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-268],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1110  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-280]
!   destAddr = _temp_1110 + offset		(int)
	load	[r14+-280],r1
	load	[r14+-460],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-480]
! ASSIGNMENT STATEMENT...
	mov	2043,r13		! source line 2043
	mov	"\0\0AS",r10
	mov	2043,r13		! source line 2043
	mov	"\0\0SE",r10
!   _temp_1114 = &_P_Kernel_serialDriver
	set	_P_Kernel_serialDriver,r1
	store	r1,[r14+-264]
!   Send message GetChar
	load	[r14+-264],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=c  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-29]
! IF STATEMENT...
	mov	2044,r13		! source line 2044
	mov	"\0\0IF",r10
!   _temp_1117 = c XOR 13		(bool)
	loadb	[r14+-29],r1
	mov	13,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-19]
!   if _temp_1117 then goto _Label_1116 else goto _Label_1115
	loadb	[r14+-19],r1
	cmp	r1,0
	be	_Label_1115
	jmp	_Label_1116
_Label_1115:
! THEN...
	mov	2045,r13		! source line 2045
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2045,r13		! source line 2045
	mov	"\0\0AS",r10
!   c = 10		(1 byte)
	mov	10,r1
	storeb	r1,[r14+-29]
! END IF...
_Label_1116:
! IF STATEMENT...
	mov	2047,r13		! source line 2047
	mov	"\0\0IF",r10
!   _temp_1120 = charToInt (c)
	loadb	[r14+-29],r1
	sll	r1,24,r1
	sra	r1,24,r1
	store	r1,[r14+-260]
!   if _temp_1120 != 4 then goto _Label_1119		(int)
	load	[r14+-260],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_1119
!	jmp	_Label_1118
_Label_1118:
! THEN...
	mov	2048,r13		! source line 2048
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2048,r13		! source line 2048
	mov	"\0\0BR",r10
	jmp	_Label_1085
! END IF...
_Label_1119:
! ASSIGNMENT STATEMENT...
	mov	2050,r13		! source line 2050
	mov	"\0\0AS",r10
!   if intIsZero (destAddr) then goto _runtimeErrorNullPointer
	load	[r14+-480],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *destAddr = c  (sizeInBytes=1)
	loadb	[r14+-29],r1
	load	[r14+-480],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2051,r13		! source line 2051
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-464],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-464]
! IF STATEMENT...
	mov	2052,r13		! source line 2052
	mov	"\0\0IF",r10
!   if intIsZero (destAddr) then goto _runtimeErrorNullPointer
	load	[r14+-480],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1123 = *destAddr  (sizeInBytes=1)
	load	[r14+-480],r1
	loadb	[r1],r1
	storeb	r1,[r14+-18]
!   _temp_1124 = _temp_1123 XOR 10		(bool)
	loadb	[r14+-18],r1
	mov	10,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-17]
!   if _temp_1124 then goto _Label_1122 else goto _Label_1121
	loadb	[r14+-17],r1
	cmp	r1,0
	be	_Label_1121
	jmp	_Label_1122
_Label_1121:
! THEN...
	mov	2053,r13		! source line 2053
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2053,r13		! source line 2053
	mov	"\0\0BR",r10
	jmp	_Label_1085
! END IF...
_Label_1122:
! ASSIGNMENT STATEMENT...
	mov	2055,r13		! source line 2055
	mov	"\0\0AS",r10
!   buffer = buffer + 1		(int)
	load	[r14+12],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+12]
!   Increment the FOR-LOOP index variable and jump back
_Label_1084:
!   i = i + 1
	load	[r14+-488],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-488]
	jmp	_Label_1082
! END FOR
_Label_1085:
! RETURN STATEMENT...
	mov	2057,r13		! source line 2057
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-464],r1
	store	r1,[r14+8]
	add	r15,508,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_1125
_Label_1046:
! ELSE...
	mov	2060,r13		! source line 2060
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	2060,r13		! source line 2060
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1127 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-252]
!   Data Move: _temp_1126 = *_temp_1127  (sizeInBytes=4)
	load	[r14+-252],r1
	load	[r1],r1
	store	r1,[r14+-256]
!   if intIsZero (_temp_1126) then goto _runtimeErrorNullPointer
	load	[r14+-256],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1128 = _temp_1126 + 124
	load	[r14+-256],r1
	add	r1,124,r1
	store	r1,[r14+-248]
!   Move address of _temp_1128 [fileDesc ] into _temp_1129
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-248],r1
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
	store	r2,[r14+-244]
!   Data Move: openFile = *_temp_1129  (sizeInBytes=4)
	load	[r14+-244],r1
	load	[r1],r1
	store	r1,[r14+-484]
! ASSIGNMENT STATEMENT...
	mov	2061,r13		! source line 2061
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-452]
! ASSIGNMENT STATEMENT...
	mov	2062,r13		! source line 2062
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+-452],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-456]
! ASSIGNMENT STATEMENT...
	mov	2063,r13		! source line 2063
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+-452],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-460]
! ASSIGNMENT STATEMENT...
	mov	2064,r13		! source line 2064
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-464]
! ASSIGNMENT STATEMENT...
	mov	2065,r13		! source line 2065
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-484],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1130 = openFile + 16
	load	[r14+-484],r1
	add	r1,16,r1
	store	r1,[r14+-240]
!   Data Move: nextPosInFile = *_temp_1130  (sizeInBytes=4)
	load	[r14+-240],r1
	load	[r1],r1
	store	r1,[r14+-468]
! ASSIGNMENT STATEMENT...
	mov	2066,r13		! source line 2066
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-484],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1132 = openFile + 20
	load	[r14+-484],r1
	add	r1,20,r1
	store	r1,[r14+-232]
!   Data Move: _temp_1131 = *_temp_1132  (sizeInBytes=4)
	load	[r14+-232],r1
	load	[r1],r1
	store	r1,[r14+-236]
!   if intIsZero (_temp_1131) then goto _runtimeErrorNullPointer
	load	[r14+-236],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1133 = _temp_1131 + 24
	load	[r14+-236],r1
	add	r1,24,r1
	store	r1,[r14+-228]
!   Data Move: fileSize = *_temp_1133  (sizeInBytes=4)
	load	[r14+-228],r1
	load	[r1],r1
	store	r1,[r14+-476]
! WHILE STATEMENT...
	mov	2067,r13		! source line 2067
	mov	"\0\0WH",r10
_Label_1134:
!	jmp	_Label_1135
_Label_1135:
	mov	2067,r13		! source line 2067
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2068,r13		! source line 2068
	mov	"\0\0AS",r10
!   currentChunkSize = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-460],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-472]
! IF STATEMENT...
	mov	2069,r13		! source line 2069
	mov	"\0\0IF",r10
!   _temp_1139 = nextPosInFile + currentChunkSize		(int)
	load	[r14+-468],r1
	load	[r14+-472],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   if _temp_1139 <= fileSize then goto _Label_1138		(int)
	load	[r14+-224],r1
	load	[r14+-476],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1138
!	jmp	_Label_1137
_Label_1137:
! THEN...
	mov	2070,r13		! source line 2070
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2070,r13		! source line 2070
	mov	"\0\0AS",r10
!   currentChunkSize = fileSize - nextPosInFile		(int)
	load	[r14+-476],r1
	load	[r14+-468],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-472]
! END IF...
_Label_1138:
! IF STATEMENT...
	mov	2072,r13		! source line 2072
	mov	"\0\0IF",r10
!   _temp_1142 = copiedSoFar + currentChunkSize		(int)
	load	[r14+-464],r1
	load	[r14+-472],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-220]
!   if _temp_1142 <= sizeInBytes then goto _Label_1141		(int)
	load	[r14+-220],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1141
!	jmp	_Label_1140
_Label_1140:
! THEN...
	mov	2073,r13		! source line 2073
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2073,r13		! source line 2073
	mov	"\0\0AS",r10
!   currentChunkSize = sizeInBytes - copiedSoFar		(int)
	load	[r14+16],r1
	load	[r14+-464],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-472]
! END IF...
_Label_1141:
! IF STATEMENT...
	mov	2075,r13		! source line 2075
	mov	"\0\0IF",r10
!   if currentChunkSize > 0 then goto _Label_1144		(int)
	load	[r14+-472],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1144
!	jmp	_Label_1143
_Label_1143:
! THEN...
	mov	2076,r13		! source line 2076
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2076,r13		! source line 2076
	mov	"\0\0BR",r10
	jmp	_Label_1136
! END IF...
_Label_1144:
! IF STATEMENT...
	mov	2078,r13		! source line 2078
	mov	"\0\0IF",r10
!   if virtPage >= 0 then goto _Label_1149		(int)
	load	[r14+-456],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1149
	jmp	_Label_1145
_Label_1149:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1153 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-204]
!   Data Move: _temp_1152 = *_temp_1153  (sizeInBytes=4)
	load	[r14+-204],r1
	load	[r1],r1
	store	r1,[r14+-208]
!   if intIsZero (_temp_1152) then goto _runtimeErrorNullPointer
	load	[r14+-208],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1154 = _temp_1152 + 32
	load	[r14+-208],r1
	add	r1,32,r1
	store	r1,[r14+-200]
!   _temp_1155 = _temp_1154 + 4
	load	[r14+-200],r1
	add	r1,4,r1
	store	r1,[r14+-196]
!   Data Move: _temp_1151 = *_temp_1155  (sizeInBytes=4)
	load	[r14+-196],r1
	load	[r1],r1
	store	r1,[r14+-212]
!   _temp_1150 = _temp_1151 - 1		(int)
	load	[r14+-212],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-216]
!   if virtPage <= _temp_1150 then goto _Label_1148		(int)
	load	[r14+-456],r1
	load	[r14+-216],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1148
	jmp	_Label_1145
_Label_1148:
	mov	2078,r13		! source line 2078
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
	store	r1,[r14+-188]
!   Data Move: _temp_1157 = *_temp_1158  (sizeInBytes=4)
	load	[r14+-188],r1
	load	[r1],r1
	store	r1,[r14+-192]
!   if intIsZero (_temp_1157) then goto _runtimeErrorNullPointer
	load	[r14+-192],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1159 = _temp_1157 + 32
	load	[r14+-192],r1
	add	r1,32,r1
	store	r1,[r14+-184]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-456],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-184],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1156  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-16]
!   _temp_1160 = _temp_1156 XOR 0		(bool)
	loadb	[r14+-16],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-15]
!   if _temp_1160 then goto _Label_1147 else goto _Label_1145
	loadb	[r14+-15],r1
	cmp	r1,0
	be	_Label_1145
	jmp	_Label_1147
_Label_1147:
	mov	2078,r13		! source line 2078
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1163 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-176]
!   Data Move: _temp_1162 = *_temp_1163  (sizeInBytes=4)
	load	[r14+-176],r1
	load	[r1],r1
	store	r1,[r14+-180]
!   if intIsZero (_temp_1162) then goto _runtimeErrorNullPointer
	load	[r14+-180],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1164 = _temp_1162 + 32
	load	[r14+-180],r1
	add	r1,32,r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-456],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-172],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_1161  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-14]
!   _temp_1165 = _temp_1161 XOR 0		(bool)
	loadb	[r14+-14],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-13]
!   if _temp_1165 then goto _Label_1146 else goto _Label_1145
	loadb	[r14+-13],r1
	cmp	r1,0
	be	_Label_1145
	jmp	_Label_1146
_Label_1145:
! THEN...
	mov	2079,r13		! source line 2079
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2079,r13		! source line 2079
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,508,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1146:
! ASSIGNMENT STATEMENT...
	mov	2081,r13		! source line 2081
	mov	"\0\0AS",r10
!   nextPosInFile = nextPosInFile + currentChunkSize		(int)
	load	[r14+-468],r1
	load	[r14+-472],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-468]
! ASSIGNMENT STATEMENT...
	mov	2082,r13		! source line 2082
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + currentChunkSize		(int)
	load	[r14+-464],r1
	load	[r14+-472],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-464]
! ASSIGNMENT STATEMENT...
	mov	2083,r13		! source line 2083
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-456],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-456]
! ASSIGNMENT STATEMENT...
	mov	2084,r13		! source line 2084
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-460]
! IF STATEMENT...
	mov	2085,r13		! source line 2085
	mov	"\0\0IF",r10
!   if copiedSoFar != sizeInBytes then goto _Label_1167		(int)
	load	[r14+-464],r1
	load	[r14+16],r2
	cmp	r1,r2
	bne	_Label_1167
!	jmp	_Label_1166
_Label_1166:
! THEN...
	mov	2086,r13		! source line 2086
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2086,r13		! source line 2086
	mov	"\0\0BR",r10
	jmp	_Label_1136
! END IF...
_Label_1167:
! END WHILE...
	jmp	_Label_1134
_Label_1136:
! ASSIGNMENT STATEMENT...
	mov	2091,r13		! source line 2091
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1169 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-164]
!   Data Move: _temp_1168 = *_temp_1169  (sizeInBytes=4)
	load	[r14+-164],r1
	load	[r1],r1
	store	r1,[r14+-168]
!   if intIsZero (_temp_1168) then goto _runtimeErrorNullPointer
	load	[r14+-168],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1170 = _temp_1168 + 124
	load	[r14+-168],r1
	add	r1,124,r1
	store	r1,[r14+-160]
!   Move address of _temp_1170 [fileDesc ] into _temp_1171
!     make sure index expr is >= 0
	load	[r14+8],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-156]
!   Data Move: openFile = *_temp_1171  (sizeInBytes=4)
	load	[r14+-156],r1
	load	[r1],r1
	store	r1,[r14+-484]
! ASSIGNMENT STATEMENT...
	mov	2092,r13		! source line 2092
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-452]
! ASSIGNMENT STATEMENT...
	mov	2093,r13		! source line 2093
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+-452],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-456]
! ASSIGNMENT STATEMENT...
	mov	2094,r13		! source line 2094
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+-452],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-460]
! ASSIGNMENT STATEMENT...
	mov	2095,r13		! source line 2095
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-464]
! ASSIGNMENT STATEMENT...
	mov	2096,r13		! source line 2096
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-484],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1172 = openFile + 16
	load	[r14+-484],r1
	add	r1,16,r1
	store	r1,[r14+-152]
!   Data Move: nextPosInFile = *_temp_1172  (sizeInBytes=4)
	load	[r14+-152],r1
	load	[r1],r1
	store	r1,[r14+-468]
! ASSIGNMENT STATEMENT...
	mov	2097,r13		! source line 2097
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-484],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1174 = openFile + 20
	load	[r14+-484],r1
	add	r1,20,r1
	store	r1,[r14+-144]
!   Data Move: _temp_1173 = *_temp_1174  (sizeInBytes=4)
	load	[r14+-144],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   if intIsZero (_temp_1173) then goto _runtimeErrorNullPointer
	load	[r14+-148],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1175 = _temp_1173 + 24
	load	[r14+-148],r1
	add	r1,24,r1
	store	r1,[r14+-140]
!   Data Move: fileSize = *_temp_1175  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-476]
! WHILE STATEMENT...
	mov	2098,r13		! source line 2098
	mov	"\0\0WH",r10
_Label_1176:
!	jmp	_Label_1177
_Label_1177:
	mov	2098,r13		! source line 2098
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2099,r13		! source line 2099
	mov	"\0\0AS",r10
!   currentChunkSize = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-460],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-472]
! IF STATEMENT...
	mov	2100,r13		! source line 2100
	mov	"\0\0IF",r10
!   _temp_1181 = nextPosInFile + currentChunkSize		(int)
	load	[r14+-468],r1
	load	[r14+-472],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
!   if _temp_1181 <= fileSize then goto _Label_1180		(int)
	load	[r14+-136],r1
	load	[r14+-476],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1180
!	jmp	_Label_1179
_Label_1179:
! THEN...
	mov	2101,r13		! source line 2101
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2101,r13		! source line 2101
	mov	"\0\0AS",r10
!   currentChunkSize = fileSize - nextPosInFile		(int)
	load	[r14+-476],r1
	load	[r14+-468],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-472]
! END IF...
_Label_1180:
! IF STATEMENT...
	mov	2103,r13		! source line 2103
	mov	"\0\0IF",r10
!   _temp_1184 = copiedSoFar + currentChunkSize		(int)
	load	[r14+-464],r1
	load	[r14+-472],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-132]
!   if _temp_1184 <= sizeInBytes then goto _Label_1183		(int)
	load	[r14+-132],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1183
!	jmp	_Label_1182
_Label_1182:
! THEN...
	mov	2104,r13		! source line 2104
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2104,r13		! source line 2104
	mov	"\0\0AS",r10
!   currentChunkSize = sizeInBytes - copiedSoFar		(int)
	load	[r14+16],r1
	load	[r14+-464],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-472]
! END IF...
_Label_1183:
! IF STATEMENT...
	mov	2106,r13		! source line 2106
	mov	"\0\0IF",r10
!   if currentChunkSize > 0 then goto _Label_1186		(int)
	load	[r14+-472],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1186
!	jmp	_Label_1185
_Label_1185:
! THEN...
	mov	2107,r13		! source line 2107
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2107,r13		! source line 2107
	mov	"\0\0BR",r10
	jmp	_Label_1178
! END IF...
_Label_1186:
! IF STATEMENT...
	mov	2109,r13		! source line 2109
	mov	"\0\0IF",r10
!   if virtPage >= 0 then goto _Label_1191		(int)
	load	[r14+-456],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1191
	jmp	_Label_1187
_Label_1191:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1195 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-116]
!   Data Move: _temp_1194 = *_temp_1195  (sizeInBytes=4)
	load	[r14+-116],r1
	load	[r1],r1
	store	r1,[r14+-120]
!   if intIsZero (_temp_1194) then goto _runtimeErrorNullPointer
	load	[r14+-120],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1196 = _temp_1194 + 32
	load	[r14+-120],r1
	add	r1,32,r1
	store	r1,[r14+-112]
!   _temp_1197 = _temp_1196 + 4
	load	[r14+-112],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Data Move: _temp_1193 = *_temp_1197  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-124]
!   _temp_1192 = _temp_1193 - 1		(int)
	load	[r14+-124],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
!   if virtPage <= _temp_1192 then goto _Label_1190		(int)
	load	[r14+-456],r1
	load	[r14+-128],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1190
	jmp	_Label_1187
_Label_1190:
	mov	2109,r13		! source line 2109
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1200 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-100]
!   Data Move: _temp_1199 = *_temp_1200  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if intIsZero (_temp_1199) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1201 = _temp_1199 + 32
	load	[r14+-104],r1
	add	r1,32,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-456],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1198  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-12]
!   _temp_1202 = _temp_1198 XOR 0		(bool)
	loadb	[r14+-12],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-11]
!   if _temp_1202 then goto _Label_1189 else goto _Label_1187
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_1187
	jmp	_Label_1189
_Label_1189:
	mov	2109,r13		! source line 2109
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1205 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-88]
!   Data Move: _temp_1204 = *_temp_1205  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_1204) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1206 = _temp_1204 + 32
	load	[r14+-92],r1
	add	r1,32,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-456],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-84],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_1203  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   _temp_1207 = _temp_1203 XOR 0		(bool)
	loadb	[r14+-10],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_1207 then goto _Label_1188 else goto _Label_1187
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1187
	jmp	_Label_1188
_Label_1187:
! THEN...
	mov	2110,r13		! source line 2110
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2110,r13		! source line 2110
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,508,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1188:
! SEND STATEMENT...
	mov	2112,r13		! source line 2112
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1209 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-76]
!   Data Move: _temp_1208 = *_temp_1209  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_1208) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1210 = _temp_1208 + 32
	load	[r14+-80],r1
	add	r1,32,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-456],r1
	store	r1,[r15+4]
!   Send message SetReferenced
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,44,r2
	call	r2
! SEND STATEMENT...
	mov	2113,r13		! source line 2113
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1212 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-64]
!   Data Move: _temp_1211 = *_temp_1212  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_1211) then goto _runtimeErrorNullPointer
	load	[r14+-68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1213 = _temp_1211 + 32
	load	[r14+-68],r1
	add	r1,32,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-456],r1
	store	r1,[r15+4]
!   Send message SetDirty
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,40,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2114,r13		! source line 2114
	mov	"\0\0AS",r10
	mov	2114,r13		! source line 2114
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1216 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-48]
!   Data Move: _temp_1215 = *_temp_1216  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_1215) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1217 = _temp_1215 + 32
	load	[r14+-52],r1
	add	r1,32,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-456],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1214  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
!   destAddr = _temp_1214 + offset		(int)
	load	[r14+-56],r1
	load	[r14+-460],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-480]
! ASSIGNMENT STATEMENT...
	mov	2115,r13		! source line 2115
	mov	"\0\0AS",r10
	mov	2115,r13		! source line 2115
	mov	"\0\0SE",r10
!   _temp_1218 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=openFile  sizeInBytes=4
	load	[r14+-484],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=destAddr  sizeInBytes=4
	load	[r14+-480],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=nextPosInFile  sizeInBytes=4
	load	[r14+-468],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=currentChunkSize  sizeInBytes=4
	load	[r14+-472],r1
	store	r1,[r15+16]
!   Send message SynchRead
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
!   Retrieve Result: targetName=readSuccess  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-28]
! ASSIGNMENT STATEMENT...
	mov	2116,r13		! source line 2116
	mov	"\0\0AS",r10
!   nextPosInFile = nextPosInFile + currentChunkSize		(int)
	load	[r14+-468],r1
	load	[r14+-472],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-468]
! ASSIGNMENT STATEMENT...
	mov	2117,r13		! source line 2117
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + currentChunkSize		(int)
	load	[r14+-464],r1
	load	[r14+-472],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-464]
! ASSIGNMENT STATEMENT...
	mov	2118,r13		! source line 2118
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-456],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-456]
! ASSIGNMENT STATEMENT...
	mov	2119,r13		! source line 2119
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-460]
! IF STATEMENT...
	mov	2120,r13		! source line 2120
	mov	"\0\0IF",r10
!   if copiedSoFar != sizeInBytes then goto _Label_1220		(int)
	load	[r14+-464],r1
	load	[r14+16],r2
	cmp	r1,r2
	bne	_Label_1220
!	jmp	_Label_1219
_Label_1219:
! THEN...
	mov	2121,r13		! source line 2121
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2121,r13		! source line 2121
	mov	"\0\0BR",r10
	jmp	_Label_1178
! END IF...
_Label_1220:
! END WHILE...
	jmp	_Label_1176
_Label_1178:
! ASSIGNMENT STATEMENT...
	mov	2124,r13		! source line 2124
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-484],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1221 = openFile + 16
	load	[r14+-484],r1
	add	r1,16,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_1221 = nextPosInFile  (sizeInBytes=4)
	load	[r14+-468],r1
	load	[r14+-36],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2125,r13		! source line 2125
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-464],r1
	store	r1,[r14+8]
	add	r15,508,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1125:
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Read:
	.word	_sourceFileName
	.word	_Label_1222
	.word	12		! total size of parameters
	.word	504		! frame size = 504
	.word	_Label_1223
	.word	8
	.word	4
	.word	_Label_1224
	.word	12
	.word	4
	.word	_Label_1225
	.word	16
	.word	4
	.word	_Label_1226
	.word	-36
	.word	4
	.word	_Label_1227
	.word	-40
	.word	4
	.word	_Label_1228
	.word	-44
	.word	4
	.word	_Label_1229
	.word	-48
	.word	4
	.word	_Label_1230
	.word	-52
	.word	4
	.word	_Label_1231
	.word	-56
	.word	4
	.word	_Label_1232
	.word	-60
	.word	4
	.word	_Label_1233
	.word	-64
	.word	4
	.word	_Label_1234
	.word	-68
	.word	4
	.word	_Label_1235
	.word	-72
	.word	4
	.word	_Label_1236
	.word	-76
	.word	4
	.word	_Label_1237
	.word	-80
	.word	4
	.word	_Label_1238
	.word	-9
	.word	1
	.word	_Label_1239
	.word	-84
	.word	4
	.word	_Label_1240
	.word	-88
	.word	4
	.word	_Label_1241
	.word	-92
	.word	4
	.word	_Label_1242
	.word	-10
	.word	1
	.word	_Label_1243
	.word	-11
	.word	1
	.word	_Label_1244
	.word	-96
	.word	4
	.word	_Label_1245
	.word	-100
	.word	4
	.word	_Label_1246
	.word	-104
	.word	4
	.word	_Label_1247
	.word	-12
	.word	1
	.word	_Label_1248
	.word	-108
	.word	4
	.word	_Label_1249
	.word	-112
	.word	4
	.word	_Label_1250
	.word	-116
	.word	4
	.word	_Label_1251
	.word	-120
	.word	4
	.word	_Label_1252
	.word	-124
	.word	4
	.word	_Label_1253
	.word	-128
	.word	4
	.word	_Label_1254
	.word	-132
	.word	4
	.word	_Label_1255
	.word	-136
	.word	4
	.word	_Label_1256
	.word	-140
	.word	4
	.word	_Label_1257
	.word	-144
	.word	4
	.word	_Label_1258
	.word	-148
	.word	4
	.word	_Label_1259
	.word	-152
	.word	4
	.word	_Label_1260
	.word	-156
	.word	4
	.word	_Label_1261
	.word	-160
	.word	4
	.word	_Label_1262
	.word	-164
	.word	4
	.word	_Label_1263
	.word	-168
	.word	4
	.word	_Label_1264
	.word	-13
	.word	1
	.word	_Label_1265
	.word	-172
	.word	4
	.word	_Label_1266
	.word	-176
	.word	4
	.word	_Label_1267
	.word	-180
	.word	4
	.word	_Label_1268
	.word	-14
	.word	1
	.word	_Label_1269
	.word	-15
	.word	1
	.word	_Label_1270
	.word	-184
	.word	4
	.word	_Label_1271
	.word	-188
	.word	4
	.word	_Label_1272
	.word	-192
	.word	4
	.word	_Label_1273
	.word	-16
	.word	1
	.word	_Label_1274
	.word	-196
	.word	4
	.word	_Label_1275
	.word	-200
	.word	4
	.word	_Label_1276
	.word	-204
	.word	4
	.word	_Label_1277
	.word	-208
	.word	4
	.word	_Label_1278
	.word	-212
	.word	4
	.word	_Label_1279
	.word	-216
	.word	4
	.word	_Label_1280
	.word	-220
	.word	4
	.word	_Label_1281
	.word	-224
	.word	4
	.word	_Label_1282
	.word	-228
	.word	4
	.word	_Label_1283
	.word	-232
	.word	4
	.word	_Label_1284
	.word	-236
	.word	4
	.word	_Label_1285
	.word	-240
	.word	4
	.word	_Label_1286
	.word	-244
	.word	4
	.word	_Label_1287
	.word	-248
	.word	4
	.word	_Label_1288
	.word	-252
	.word	4
	.word	_Label_1289
	.word	-256
	.word	4
	.word	_Label_1290
	.word	-17
	.word	1
	.word	_Label_1291
	.word	-18
	.word	1
	.word	_Label_1292
	.word	-260
	.word	4
	.word	_Label_1293
	.word	-19
	.word	1
	.word	_Label_1294
	.word	-264
	.word	4
	.word	_Label_1295
	.word	-268
	.word	4
	.word	_Label_1296
	.word	-272
	.word	4
	.word	_Label_1297
	.word	-276
	.word	4
	.word	_Label_1298
	.word	-280
	.word	4
	.word	_Label_1299
	.word	-20
	.word	1
	.word	_Label_1300
	.word	-284
	.word	4
	.word	_Label_1301
	.word	-288
	.word	4
	.word	_Label_1302
	.word	-292
	.word	4
	.word	_Label_1303
	.word	-21
	.word	1
	.word	_Label_1304
	.word	-22
	.word	1
	.word	_Label_1305
	.word	-296
	.word	4
	.word	_Label_1306
	.word	-300
	.word	4
	.word	_Label_1307
	.word	-304
	.word	4
	.word	_Label_1308
	.word	-23
	.word	1
	.word	_Label_1309
	.word	-308
	.word	4
	.word	_Label_1310
	.word	-312
	.word	4
	.word	_Label_1311
	.word	-316
	.word	4
	.word	_Label_1312
	.word	-320
	.word	4
	.word	_Label_1313
	.word	-324
	.word	4
	.word	_Label_1314
	.word	-328
	.word	4
	.word	_Label_1315
	.word	-332
	.word	4
	.word	_Label_1316
	.word	-336
	.word	4
	.word	_Label_1317
	.word	-340
	.word	4
	.word	_Label_1318
	.word	-24
	.word	1
	.word	_Label_1319
	.word	-344
	.word	4
	.word	_Label_1320
	.word	-348
	.word	4
	.word	_Label_1321
	.word	-352
	.word	4
	.word	_Label_1322
	.word	-25
	.word	1
	.word	_Label_1323
	.word	-26
	.word	1
	.word	_Label_1324
	.word	-356
	.word	4
	.word	_Label_1325
	.word	-360
	.word	4
	.word	_Label_1326
	.word	-364
	.word	4
	.word	_Label_1327
	.word	-27
	.word	1
	.word	_Label_1328
	.word	-368
	.word	4
	.word	_Label_1329
	.word	-372
	.word	4
	.word	_Label_1330
	.word	-376
	.word	4
	.word	_Label_1331
	.word	-380
	.word	4
	.word	_Label_1332
	.word	-384
	.word	4
	.word	_Label_1333
	.word	-388
	.word	4
	.word	_Label_1334
	.word	-392
	.word	4
	.word	_Label_1335
	.word	-396
	.word	4
	.word	_Label_1336
	.word	-400
	.word	4
	.word	_Label_1337
	.word	-404
	.word	4
	.word	_Label_1338
	.word	-408
	.word	4
	.word	_Label_1339
	.word	-412
	.word	4
	.word	_Label_1340
	.word	-416
	.word	4
	.word	_Label_1341
	.word	-420
	.word	4
	.word	_Label_1342
	.word	-424
	.word	4
	.word	_Label_1343
	.word	-428
	.word	4
	.word	_Label_1344
	.word	-432
	.word	4
	.word	_Label_1345
	.word	-436
	.word	4
	.word	_Label_1346
	.word	-440
	.word	4
	.word	_Label_1347
	.word	-444
	.word	4
	.word	_Label_1348
	.word	-448
	.word	4
	.word	_Label_1349
	.word	-452
	.word	4
	.word	_Label_1350
	.word	-456
	.word	4
	.word	_Label_1351
	.word	-460
	.word	4
	.word	_Label_1352
	.word	-464
	.word	4
	.word	_Label_1353
	.word	-468
	.word	4
	.word	_Label_1354
	.word	-472
	.word	4
	.word	_Label_1355
	.word	-476
	.word	4
	.word	_Label_1356
	.word	-480
	.word	4
	.word	_Label_1357
	.word	-484
	.word	4
	.word	_Label_1358
	.word	-28
	.word	1
	.word	_Label_1359
	.word	-488
	.word	4
	.word	_Label_1360
	.word	-29
	.word	1
	.word	_Label_1361
	.word	-492
	.word	4
	.word	0
_Label_1222:
	.ascii	"Handle_Sys_Read\0"
	.align
_Label_1223:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_1224:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_1225:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_1226:
	.byte	'?'
	.ascii	"_temp_1221\0"
	.align
_Label_1227:
	.byte	'?'
	.ascii	"_temp_1218\0"
	.align
_Label_1228:
	.byte	'?'
	.ascii	"_temp_1217\0"
	.align
_Label_1229:
	.byte	'?'
	.ascii	"_temp_1216\0"
	.align
_Label_1230:
	.byte	'?'
	.ascii	"_temp_1215\0"
	.align
_Label_1231:
	.byte	'?'
	.ascii	"_temp_1214\0"
	.align
_Label_1232:
	.byte	'?'
	.ascii	"_temp_1213\0"
	.align
_Label_1233:
	.byte	'?'
	.ascii	"_temp_1212\0"
	.align
_Label_1234:
	.byte	'?'
	.ascii	"_temp_1211\0"
	.align
_Label_1235:
	.byte	'?'
	.ascii	"_temp_1210\0"
	.align
_Label_1236:
	.byte	'?'
	.ascii	"_temp_1209\0"
	.align
_Label_1237:
	.byte	'?'
	.ascii	"_temp_1208\0"
	.align
_Label_1238:
	.byte	'C'
	.ascii	"_temp_1207\0"
	.align
_Label_1239:
	.byte	'?'
	.ascii	"_temp_1206\0"
	.align
_Label_1240:
	.byte	'?'
	.ascii	"_temp_1205\0"
	.align
_Label_1241:
	.byte	'?'
	.ascii	"_temp_1204\0"
	.align
_Label_1242:
	.byte	'C'
	.ascii	"_temp_1203\0"
	.align
_Label_1243:
	.byte	'C'
	.ascii	"_temp_1202\0"
	.align
_Label_1244:
	.byte	'?'
	.ascii	"_temp_1201\0"
	.align
_Label_1245:
	.byte	'?'
	.ascii	"_temp_1200\0"
	.align
_Label_1246:
	.byte	'?'
	.ascii	"_temp_1199\0"
	.align
_Label_1247:
	.byte	'C'
	.ascii	"_temp_1198\0"
	.align
_Label_1248:
	.byte	'?'
	.ascii	"_temp_1197\0"
	.align
_Label_1249:
	.byte	'?'
	.ascii	"_temp_1196\0"
	.align
_Label_1250:
	.byte	'?'
	.ascii	"_temp_1195\0"
	.align
_Label_1251:
	.byte	'?'
	.ascii	"_temp_1194\0"
	.align
_Label_1252:
	.byte	'?'
	.ascii	"_temp_1193\0"
	.align
_Label_1253:
	.byte	'?'
	.ascii	"_temp_1192\0"
	.align
_Label_1254:
	.byte	'?'
	.ascii	"_temp_1184\0"
	.align
_Label_1255:
	.byte	'?'
	.ascii	"_temp_1181\0"
	.align
_Label_1256:
	.byte	'?'
	.ascii	"_temp_1175\0"
	.align
_Label_1257:
	.byte	'?'
	.ascii	"_temp_1174\0"
	.align
_Label_1258:
	.byte	'?'
	.ascii	"_temp_1173\0"
	.align
_Label_1259:
	.byte	'?'
	.ascii	"_temp_1172\0"
	.align
_Label_1260:
	.byte	'?'
	.ascii	"_temp_1171\0"
	.align
_Label_1261:
	.byte	'?'
	.ascii	"_temp_1170\0"
	.align
_Label_1262:
	.byte	'?'
	.ascii	"_temp_1169\0"
	.align
_Label_1263:
	.byte	'?'
	.ascii	"_temp_1168\0"
	.align
_Label_1264:
	.byte	'C'
	.ascii	"_temp_1165\0"
	.align
_Label_1265:
	.byte	'?'
	.ascii	"_temp_1164\0"
	.align
_Label_1266:
	.byte	'?'
	.ascii	"_temp_1163\0"
	.align
_Label_1267:
	.byte	'?'
	.ascii	"_temp_1162\0"
	.align
_Label_1268:
	.byte	'C'
	.ascii	"_temp_1161\0"
	.align
_Label_1269:
	.byte	'C'
	.ascii	"_temp_1160\0"
	.align
_Label_1270:
	.byte	'?'
	.ascii	"_temp_1159\0"
	.align
_Label_1271:
	.byte	'?'
	.ascii	"_temp_1158\0"
	.align
_Label_1272:
	.byte	'?'
	.ascii	"_temp_1157\0"
	.align
_Label_1273:
	.byte	'C'
	.ascii	"_temp_1156\0"
	.align
_Label_1274:
	.byte	'?'
	.ascii	"_temp_1155\0"
	.align
_Label_1275:
	.byte	'?'
	.ascii	"_temp_1154\0"
	.align
_Label_1276:
	.byte	'?'
	.ascii	"_temp_1153\0"
	.align
_Label_1277:
	.byte	'?'
	.ascii	"_temp_1152\0"
	.align
_Label_1278:
	.byte	'?'
	.ascii	"_temp_1151\0"
	.align
_Label_1279:
	.byte	'?'
	.ascii	"_temp_1150\0"
	.align
_Label_1280:
	.byte	'?'
	.ascii	"_temp_1142\0"
	.align
_Label_1281:
	.byte	'?'
	.ascii	"_temp_1139\0"
	.align
_Label_1282:
	.byte	'?'
	.ascii	"_temp_1133\0"
	.align
_Label_1283:
	.byte	'?'
	.ascii	"_temp_1132\0"
	.align
_Label_1284:
	.byte	'?'
	.ascii	"_temp_1131\0"
	.align
_Label_1285:
	.byte	'?'
	.ascii	"_temp_1130\0"
	.align
_Label_1286:
	.byte	'?'
	.ascii	"_temp_1129\0"
	.align
_Label_1287:
	.byte	'?'
	.ascii	"_temp_1128\0"
	.align
_Label_1288:
	.byte	'?'
	.ascii	"_temp_1127\0"
	.align
_Label_1289:
	.byte	'?'
	.ascii	"_temp_1126\0"
	.align
_Label_1290:
	.byte	'C'
	.ascii	"_temp_1124\0"
	.align
_Label_1291:
	.byte	'C'
	.ascii	"_temp_1123\0"
	.align
_Label_1292:
	.byte	'?'
	.ascii	"_temp_1120\0"
	.align
_Label_1293:
	.byte	'C'
	.ascii	"_temp_1117\0"
	.align
_Label_1294:
	.byte	'?'
	.ascii	"_temp_1114\0"
	.align
_Label_1295:
	.byte	'?'
	.ascii	"_temp_1113\0"
	.align
_Label_1296:
	.byte	'?'
	.ascii	"_temp_1112\0"
	.align
_Label_1297:
	.byte	'?'
	.ascii	"_temp_1111\0"
	.align
_Label_1298:
	.byte	'?'
	.ascii	"_temp_1110\0"
	.align
_Label_1299:
	.byte	'C'
	.ascii	"_temp_1109\0"
	.align
_Label_1300:
	.byte	'?'
	.ascii	"_temp_1108\0"
	.align
_Label_1301:
	.byte	'?'
	.ascii	"_temp_1107\0"
	.align
_Label_1302:
	.byte	'?'
	.ascii	"_temp_1106\0"
	.align
_Label_1303:
	.byte	'C'
	.ascii	"_temp_1105\0"
	.align
_Label_1304:
	.byte	'C'
	.ascii	"_temp_1104\0"
	.align
_Label_1305:
	.byte	'?'
	.ascii	"_temp_1103\0"
	.align
_Label_1306:
	.byte	'?'
	.ascii	"_temp_1102\0"
	.align
_Label_1307:
	.byte	'?'
	.ascii	"_temp_1101\0"
	.align
_Label_1308:
	.byte	'C'
	.ascii	"_temp_1100\0"
	.align
_Label_1309:
	.byte	'?'
	.ascii	"_temp_1099\0"
	.align
_Label_1310:
	.byte	'?'
	.ascii	"_temp_1098\0"
	.align
_Label_1311:
	.byte	'?'
	.ascii	"_temp_1097\0"
	.align
_Label_1312:
	.byte	'?'
	.ascii	"_temp_1096\0"
	.align
_Label_1313:
	.byte	'?'
	.ascii	"_temp_1095\0"
	.align
_Label_1314:
	.byte	'?'
	.ascii	"_temp_1094\0"
	.align
_Label_1315:
	.byte	'?'
	.ascii	"_temp_1088\0"
	.align
_Label_1316:
	.byte	'?'
	.ascii	"_temp_1087\0"
	.align
_Label_1317:
	.byte	'?'
	.ascii	"_temp_1086\0"
	.align
_Label_1318:
	.byte	'C'
	.ascii	"_temp_1081\0"
	.align
_Label_1319:
	.byte	'?'
	.ascii	"_temp_1080\0"
	.align
_Label_1320:
	.byte	'?'
	.ascii	"_temp_1079\0"
	.align
_Label_1321:
	.byte	'?'
	.ascii	"_temp_1078\0"
	.align
_Label_1322:
	.byte	'C'
	.ascii	"_temp_1077\0"
	.align
_Label_1323:
	.byte	'C'
	.ascii	"_temp_1076\0"
	.align
_Label_1324:
	.byte	'?'
	.ascii	"_temp_1075\0"
	.align
_Label_1325:
	.byte	'?'
	.ascii	"_temp_1074\0"
	.align
_Label_1326:
	.byte	'?'
	.ascii	"_temp_1073\0"
	.align
_Label_1327:
	.byte	'C'
	.ascii	"_temp_1072\0"
	.align
_Label_1328:
	.byte	'?'
	.ascii	"_temp_1071\0"
	.align
_Label_1329:
	.byte	'?'
	.ascii	"_temp_1070\0"
	.align
_Label_1330:
	.byte	'?'
	.ascii	"_temp_1069\0"
	.align
_Label_1331:
	.byte	'?'
	.ascii	"_temp_1068\0"
	.align
_Label_1332:
	.byte	'?'
	.ascii	"_temp_1067\0"
	.align
_Label_1333:
	.byte	'?'
	.ascii	"_temp_1066\0"
	.align
_Label_1334:
	.byte	'?'
	.ascii	"_temp_1060\0"
	.align
_Label_1335:
	.byte	'?'
	.ascii	"_temp_1059\0"
	.align
_Label_1336:
	.byte	'?'
	.ascii	"_temp_1058\0"
	.align
_Label_1337:
	.byte	'?'
	.ascii	"_temp_1053\0"
	.align
_Label_1338:
	.byte	'?'
	.ascii	"_temp_1052\0"
	.align
_Label_1339:
	.byte	'?'
	.ascii	"_temp_1051\0"
	.align
_Label_1340:
	.byte	'?'
	.ascii	"_temp_1050\0"
	.align
_Label_1341:
	.byte	'?'
	.ascii	"_temp_1049\0"
	.align
_Label_1342:
	.byte	'?'
	.ascii	"_temp_1048\0"
	.align
_Label_1343:
	.byte	'?'
	.ascii	"_temp_1047\0"
	.align
_Label_1344:
	.byte	'?'
	.ascii	"_temp_1044\0"
	.align
_Label_1345:
	.byte	'?'
	.ascii	"_temp_1043\0"
	.align
_Label_1346:
	.byte	'?'
	.ascii	"_temp_1042\0"
	.align
_Label_1347:
	.byte	'?'
	.ascii	"_temp_1041\0"
	.align
_Label_1348:
	.byte	'?'
	.ascii	"_temp_1040\0"
	.align
_Label_1349:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1350:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_1351:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_1352:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_1353:
	.byte	'I'
	.ascii	"nextPosInFile\0"
	.align
_Label_1354:
	.byte	'I'
	.ascii	"currentChunkSize\0"
	.align
_Label_1355:
	.byte	'I'
	.ascii	"fileSize\0"
	.align
_Label_1356:
	.byte	'I'
	.ascii	"destAddr\0"
	.align
_Label_1357:
	.byte	'P'
	.ascii	"openFile\0"
	.align
_Label_1358:
	.byte	'B'
	.ascii	"readSuccess\0"
	.align
_Label_1359:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1360:
	.byte	'C'
	.ascii	"c\0"
	.align
_Label_1361:
	.byte	'P'
	.ascii	"tempBuffer\0"
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
	mov	122,r1
_Label_4444:
	push	r0
	sub	r1,1,r1
	bne	_Label_4444
	mov	2132,r13		! source line 2132
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2149,r13		! source line 2149
	mov	"\0\0IF",r10
!   if fileDesc >= 0 then goto _Label_1366		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1366
	jmp	_Label_1362
_Label_1366:
!   if fileDesc <= 9 then goto _Label_1365		(int)
	load	[r14+8],r1
	mov	9,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1365
	jmp	_Label_1362
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
	store	r1,[r14+-424]
!   Data Move: _temp_1368 = *_temp_1369  (sizeInBytes=4)
	load	[r14+-424],r1
	load	[r1],r1
	store	r1,[r14+-428]
!   if intIsZero (_temp_1368) then goto _runtimeErrorNullPointer
	load	[r14+-428],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1370 = _temp_1368 + 124
	load	[r14+-428],r1
	add	r1,124,r1
	store	r1,[r14+-420]
!   Move address of _temp_1370 [fileDesc ] into _temp_1371
!     make sure index expr is >= 0
	load	[r14+8],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-416]
!   Data Move: _temp_1367 = *_temp_1371  (sizeInBytes=4)
	load	[r14+-416],r1
	load	[r1],r1
	store	r1,[r14+-432]
!   if intIsZero (_temp_1367) then goto _Label_1362
	load	[r14+-432],r1
	cmp	r1,r0
	be	_Label_1362
!	jmp	_Label_1364
_Label_1364:
!   if sizeInBytes >= 0 then goto _Label_1363		(int)
	load	[r14+16],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1363
!	jmp	_Label_1362
_Label_1362:
! THEN...
	mov	2150,r13		! source line 2150
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2150,r13		! source line 2150
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,492,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1363:
! IF STATEMENT...
	mov	2153,r13		! source line 2153
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1377 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-400]
!   Data Move: _temp_1376 = *_temp_1377  (sizeInBytes=4)
	load	[r14+-400],r1
	load	[r1],r1
	store	r1,[r14+-404]
!   if intIsZero (_temp_1376) then goto _runtimeErrorNullPointer
	load	[r14+-404],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1378 = _temp_1376 + 124
	load	[r14+-404],r1
	add	r1,124,r1
	store	r1,[r14+-396]
!   Move address of _temp_1378 [fileDesc ] into _temp_1379
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-396],r1
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
	store	r2,[r14+-392]
!   Data Move: _temp_1375 = *_temp_1379  (sizeInBytes=4)
	load	[r14+-392],r1
	load	[r1],r1
	store	r1,[r14+-408]
!   if intIsZero (_temp_1375) then goto _runtimeErrorNullPointer
	load	[r14+-408],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1380 = _temp_1375 + 12
	load	[r14+-408],r1
	add	r1,12,r1
	store	r1,[r14+-388]
!   Data Move: _temp_1374 = *_temp_1380  (sizeInBytes=4)
	load	[r14+-388],r1
	load	[r1],r1
	store	r1,[r14+-412]
!   if _temp_1374 != 2 then goto _Label_1373		(int)
	load	[r14+-412],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1373
!	jmp	_Label_1372
_Label_1372:
! THEN...
	mov	2155,r13		! source line 2155
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2155,r13		! source line 2155
	mov	"\0\0AS",r10
!   tempBuffer = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-476]
! FOR STATEMENT...
	mov	2156,r13		! source line 2156
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1385 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-384]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1386 = sizeInBytes - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-380]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1385  (sizeInBytes=4)
	load	[r14+-384],r1
	store	r1,[r14+-472]
_Label_1381:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1386 then goto _Label_1384		
	load	[r14+-472],r1
	load	[r14+-380],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1384
_Label_1382:
	mov	2156,r13		! source line 2156
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2157,r13		! source line 2157
	mov	"\0\0AS",r10
!   _temp_1387 = tempBuffer		(4 bytes)
	load	[r14+-476],r1
	store	r1,[r14+-376]
!   virtPage = _temp_1387 div 8192		(int)
	load	[r14+-376],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-440]
! ASSIGNMENT STATEMENT...
	mov	2158,r13		! source line 2158
	mov	"\0\0AS",r10
!   virtAddr = tempBuffer		(4 bytes)
	load	[r14+-476],r1
	store	r1,[r14+-436]
! IF STATEMENT...
	mov	2159,r13		! source line 2159
	mov	"\0\0IF",r10
!   if virtPage >= 0 then goto _Label_1392		(int)
	load	[r14+-440],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1392
	jmp	_Label_1388
_Label_1392:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1396 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-360]
!   Data Move: _temp_1395 = *_temp_1396  (sizeInBytes=4)
	load	[r14+-360],r1
	load	[r1],r1
	store	r1,[r14+-364]
!   if intIsZero (_temp_1395) then goto _runtimeErrorNullPointer
	load	[r14+-364],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1397 = _temp_1395 + 32
	load	[r14+-364],r1
	add	r1,32,r1
	store	r1,[r14+-356]
!   _temp_1398 = _temp_1397 + 4
	load	[r14+-356],r1
	add	r1,4,r1
	store	r1,[r14+-352]
!   Data Move: _temp_1394 = *_temp_1398  (sizeInBytes=4)
	load	[r14+-352],r1
	load	[r1],r1
	store	r1,[r14+-368]
!   _temp_1393 = _temp_1394 - 1		(int)
	load	[r14+-368],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-372]
!   if virtPage <= _temp_1393 then goto _Label_1391		(int)
	load	[r14+-440],r1
	load	[r14+-372],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1391
	jmp	_Label_1388
_Label_1391:
	mov	2159,r13		! source line 2159
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1401 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-344]
!   Data Move: _temp_1400 = *_temp_1401  (sizeInBytes=4)
	load	[r14+-344],r1
	load	[r1],r1
	store	r1,[r14+-348]
!   if intIsZero (_temp_1400) then goto _runtimeErrorNullPointer
	load	[r14+-348],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1402 = _temp_1400 + 32
	load	[r14+-348],r1
	add	r1,32,r1
	store	r1,[r14+-340]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-440],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-340],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1399  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-25]
!   _temp_1403 = _temp_1399 XOR 0		(bool)
	loadb	[r14+-25],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-24]
!   if _temp_1403 then goto _Label_1390 else goto _Label_1388
	loadb	[r14+-24],r1
	cmp	r1,0
	be	_Label_1388
	jmp	_Label_1390
_Label_1390:
	mov	2159,r13		! source line 2159
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1406 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-332]
!   Data Move: _temp_1405 = *_temp_1406  (sizeInBytes=4)
	load	[r14+-332],r1
	load	[r1],r1
	store	r1,[r14+-336]
!   if intIsZero (_temp_1405) then goto _runtimeErrorNullPointer
	load	[r14+-336],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1407 = _temp_1405 + 32
	load	[r14+-336],r1
	add	r1,32,r1
	store	r1,[r14+-328]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-440],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-328],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_1404  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-23]
!   _temp_1408 = _temp_1404 XOR 0		(bool)
	loadb	[r14+-23],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-22]
!   if _temp_1408 then goto _Label_1389 else goto _Label_1388
	loadb	[r14+-22],r1
	cmp	r1,0
	be	_Label_1388
	jmp	_Label_1389
_Label_1388:
! THEN...
	mov	2160,r13		! source line 2160
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2160,r13		! source line 2160
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,492,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1389:
! ASSIGNMENT STATEMENT...
	mov	2162,r13		! source line 2162
	mov	"\0\0AS",r10
!   tempBuffer = tempBuffer + 1		(int)
	load	[r14+-476],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-476]
!   Increment the FOR-LOOP index variable and jump back
_Label_1383:
!   i = i + 1
	load	[r14+-472],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-472]
	jmp	_Label_1381
! END FOR
_Label_1384:
! ASSIGNMENT STATEMENT...
	mov	2164,r13		! source line 2164
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-448]
! FOR STATEMENT...
	mov	2165,r13		! source line 2165
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1413 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-324]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1414 = sizeInBytes - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-320]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1413  (sizeInBytes=4)
	load	[r14+-324],r1
	store	r1,[r14+-472]
_Label_1409:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1414 then goto _Label_1412		
	load	[r14+-472],r1
	load	[r14+-320],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1412
_Label_1410:
	mov	2165,r13		! source line 2165
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2166,r13		! source line 2166
	mov	"\0\0AS",r10
!   _temp_1415 = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-316]
!   virtPage = _temp_1415 div 8192		(int)
	load	[r14+-316],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-440]
! ASSIGNMENT STATEMENT...
	mov	2167,r13		! source line 2167
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-436]
! IF STATEMENT...
	mov	2168,r13		! source line 2168
	mov	"\0\0IF",r10
!   if virtPage >= 0 then goto _Label_1420		(int)
	load	[r14+-440],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1420
	jmp	_Label_1416
_Label_1420:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1424 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-300]
!   Data Move: _temp_1423 = *_temp_1424  (sizeInBytes=4)
	load	[r14+-300],r1
	load	[r1],r1
	store	r1,[r14+-304]
!   if intIsZero (_temp_1423) then goto _runtimeErrorNullPointer
	load	[r14+-304],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1425 = _temp_1423 + 32
	load	[r14+-304],r1
	add	r1,32,r1
	store	r1,[r14+-296]
!   _temp_1426 = _temp_1425 + 4
	load	[r14+-296],r1
	add	r1,4,r1
	store	r1,[r14+-292]
!   Data Move: _temp_1422 = *_temp_1426  (sizeInBytes=4)
	load	[r14+-292],r1
	load	[r1],r1
	store	r1,[r14+-308]
!   _temp_1421 = _temp_1422 - 1		(int)
	load	[r14+-308],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-312]
!   if virtPage <= _temp_1421 then goto _Label_1419		(int)
	load	[r14+-440],r1
	load	[r14+-312],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1419
	jmp	_Label_1416
_Label_1419:
	mov	2168,r13		! source line 2168
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1429 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-284]
!   Data Move: _temp_1428 = *_temp_1429  (sizeInBytes=4)
	load	[r14+-284],r1
	load	[r1],r1
	store	r1,[r14+-288]
!   if intIsZero (_temp_1428) then goto _runtimeErrorNullPointer
	load	[r14+-288],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1430 = _temp_1428 + 32
	load	[r14+-288],r1
	add	r1,32,r1
	store	r1,[r14+-280]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-440],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-280],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1427  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-21]
!   _temp_1431 = _temp_1427 XOR 0		(bool)
	loadb	[r14+-21],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-20]
!   if _temp_1431 then goto _Label_1418 else goto _Label_1416
	loadb	[r14+-20],r1
	cmp	r1,0
	be	_Label_1416
	jmp	_Label_1418
_Label_1418:
	mov	2168,r13		! source line 2168
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1434 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-272]
!   Data Move: _temp_1433 = *_temp_1434  (sizeInBytes=4)
	load	[r14+-272],r1
	load	[r1],r1
	store	r1,[r14+-276]
!   if intIsZero (_temp_1433) then goto _runtimeErrorNullPointer
	load	[r14+-276],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1435 = _temp_1433 + 32
	load	[r14+-276],r1
	add	r1,32,r1
	store	r1,[r14+-268]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-440],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-268],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_1432  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-19]
!   _temp_1436 = _temp_1432 XOR 0		(bool)
	loadb	[r14+-19],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-18]
!   if _temp_1436 then goto _Label_1417 else goto _Label_1416
	loadb	[r14+-18],r1
	cmp	r1,0
	be	_Label_1416
	jmp	_Label_1417
_Label_1416:
! THEN...
	mov	2169,r13		! source line 2169
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2169,r13		! source line 2169
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,492,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1417:
! ASSIGNMENT STATEMENT...
	mov	2171,r13		! source line 2171
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+-436],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-444]
! ASSIGNMENT STATEMENT...
	mov	2172,r13		! source line 2172
	mov	"\0\0AS",r10
	mov	2172,r13		! source line 2172
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1439 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-256]
!   Data Move: _temp_1438 = *_temp_1439  (sizeInBytes=4)
	load	[r14+-256],r1
	load	[r1],r1
	store	r1,[r14+-260]
!   if intIsZero (_temp_1438) then goto _runtimeErrorNullPointer
	load	[r14+-260],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1440 = _temp_1438 + 32
	load	[r14+-260],r1
	add	r1,32,r1
	store	r1,[r14+-252]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-440],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-252],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1437  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-264]
!   destAddr = _temp_1437 + offset		(int)
	load	[r14+-264],r1
	load	[r14+-444],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-464]
! ASSIGNMENT STATEMENT...
	mov	2173,r13		! source line 2173
	mov	"\0\0AS",r10
!   if intIsZero (destAddr) then goto _runtimeErrorNullPointer
	load	[r14+-464],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: c = *destAddr  (sizeInBytes=1)
	load	[r14+-464],r1
	loadb	[r1],r1
	storeb	r1,[r14+-27]
! IF STATEMENT...
	mov	2174,r13		! source line 2174
	mov	"\0\0IF",r10
!   _temp_1443 = c XOR 10		(bool)
	loadb	[r14+-27],r1
	mov	10,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-17]
!   if _temp_1443 then goto _Label_1442 else goto _Label_1441
	loadb	[r14+-17],r1
	cmp	r1,0
	be	_Label_1441
	jmp	_Label_1442
_Label_1441:
! THEN...
	mov	2175,r13		! source line 2175
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2175,r13		! source line 2175
	mov	"\0\0SE",r10
!   _temp_1444 = &_P_Kernel_serialDriver
	set	_P_Kernel_serialDriver,r1
	store	r1,[r14+-248]
!   Prepare Argument: offset=12  value=13  sizeInBytes=1
	mov	13,r1
	storeb	r1,[r15+4]
!   Send message PutChar
	load	[r14+-248],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_1442:
! SEND STATEMENT...
	mov	2177,r13		! source line 2177
	mov	"\0\0SE",r10
!   _temp_1445 = &_P_Kernel_serialDriver
	set	_P_Kernel_serialDriver,r1
	store	r1,[r14+-244]
!   Prepare Argument: offset=12  value=c  sizeInBytes=1
	loadb	[r14+-27],r1
	storeb	r1,[r15+4]
!   Send message PutChar
	load	[r14+-244],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2178,r13		! source line 2178
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-448],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-448]
! ASSIGNMENT STATEMENT...
	mov	2179,r13		! source line 2179
	mov	"\0\0AS",r10
!   buffer = buffer + 1		(int)
	load	[r14+12],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+12]
!   Increment the FOR-LOOP index variable and jump back
_Label_1411:
!   i = i + 1
	load	[r14+-472],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-472]
	jmp	_Label_1409
! END FOR
_Label_1412:
! RETURN STATEMENT...
	mov	2181,r13		! source line 2181
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-448],r1
	store	r1,[r14+8]
	add	r15,492,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_1446
_Label_1373:
! ELSE...
	mov	2184,r13		! source line 2184
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	2184,r13		! source line 2184
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1448 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-236]
!   Data Move: _temp_1447 = *_temp_1448  (sizeInBytes=4)
	load	[r14+-236],r1
	load	[r1],r1
	store	r1,[r14+-240]
!   if intIsZero (_temp_1447) then goto _runtimeErrorNullPointer
	load	[r14+-240],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1449 = _temp_1447 + 124
	load	[r14+-240],r1
	add	r1,124,r1
	store	r1,[r14+-232]
!   Move address of _temp_1449 [fileDesc ] into _temp_1450
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-232],r1
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
	store	r2,[r14+-228]
!   Data Move: openFile = *_temp_1450  (sizeInBytes=4)
	load	[r14+-228],r1
	load	[r1],r1
	store	r1,[r14+-468]
! ASSIGNMENT STATEMENT...
	mov	2185,r13		! source line 2185
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-436]
! ASSIGNMENT STATEMENT...
	mov	2186,r13		! source line 2186
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+-436],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-440]
! ASSIGNMENT STATEMENT...
	mov	2187,r13		! source line 2187
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+-436],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-444]
! ASSIGNMENT STATEMENT...
	mov	2188,r13		! source line 2188
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-448]
! ASSIGNMENT STATEMENT...
	mov	2189,r13		! source line 2189
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-468],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1451 = openFile + 16
	load	[r14+-468],r1
	add	r1,16,r1
	store	r1,[r14+-224]
!   Data Move: nextPosInFile = *_temp_1451  (sizeInBytes=4)
	load	[r14+-224],r1
	load	[r1],r1
	store	r1,[r14+-452]
! ASSIGNMENT STATEMENT...
	mov	2190,r13		! source line 2190
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-468],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1453 = openFile + 20
	load	[r14+-468],r1
	add	r1,20,r1
	store	r1,[r14+-216]
!   Data Move: _temp_1452 = *_temp_1453  (sizeInBytes=4)
	load	[r14+-216],r1
	load	[r1],r1
	store	r1,[r14+-220]
!   if intIsZero (_temp_1452) then goto _runtimeErrorNullPointer
	load	[r14+-220],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1454 = _temp_1452 + 24
	load	[r14+-220],r1
	add	r1,24,r1
	store	r1,[r14+-212]
!   Data Move: fileSize = *_temp_1454  (sizeInBytes=4)
	load	[r14+-212],r1
	load	[r1],r1
	store	r1,[r14+-460]
! WHILE STATEMENT...
	mov	2191,r13		! source line 2191
	mov	"\0\0WH",r10
_Label_1455:
!	jmp	_Label_1456
_Label_1456:
	mov	2191,r13		! source line 2191
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2192,r13		! source line 2192
	mov	"\0\0AS",r10
!   currentChunkSize = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-444],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-456]
! IF STATEMENT...
	mov	2193,r13		! source line 2193
	mov	"\0\0IF",r10
!   _temp_1460 = nextPosInFile + currentChunkSize		(int)
	load	[r14+-452],r1
	load	[r14+-456],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-208]
!   if _temp_1460 <= fileSize then goto _Label_1459		(int)
	load	[r14+-208],r1
	load	[r14+-460],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1459
!	jmp	_Label_1458
_Label_1458:
! THEN...
	mov	2194,r13		! source line 2194
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2194,r13		! source line 2194
	mov	"\0\0AS",r10
!   currentChunkSize = fileSize - nextPosInFile		(int)
	load	[r14+-460],r1
	load	[r14+-452],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-456]
! END IF...
_Label_1459:
! IF STATEMENT...
	mov	2196,r13		! source line 2196
	mov	"\0\0IF",r10
!   _temp_1463 = copiedSoFar + currentChunkSize		(int)
	load	[r14+-448],r1
	load	[r14+-456],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-204]
!   if _temp_1463 <= sizeInBytes then goto _Label_1462		(int)
	load	[r14+-204],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1462
!	jmp	_Label_1461
_Label_1461:
! THEN...
	mov	2197,r13		! source line 2197
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2197,r13		! source line 2197
	mov	"\0\0AS",r10
!   currentChunkSize = sizeInBytes - copiedSoFar		(int)
	load	[r14+16],r1
	load	[r14+-448],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-456]
! END IF...
_Label_1462:
! IF STATEMENT...
	mov	2199,r13		! source line 2199
	mov	"\0\0IF",r10
!   if currentChunkSize > 0 then goto _Label_1465		(int)
	load	[r14+-456],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1465
!	jmp	_Label_1464
_Label_1464:
! THEN...
	mov	2200,r13		! source line 2200
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2200,r13		! source line 2200
	mov	"\0\0BR",r10
	jmp	_Label_1457
! END IF...
_Label_1465:
! IF STATEMENT...
	mov	2202,r13		! source line 2202
	mov	"\0\0IF",r10
!   if virtPage >= 0 then goto _Label_1470		(int)
	load	[r14+-440],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1470
	jmp	_Label_1466
_Label_1470:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1474 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-188]
!   Data Move: _temp_1473 = *_temp_1474  (sizeInBytes=4)
	load	[r14+-188],r1
	load	[r1],r1
	store	r1,[r14+-192]
!   if intIsZero (_temp_1473) then goto _runtimeErrorNullPointer
	load	[r14+-192],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1475 = _temp_1473 + 32
	load	[r14+-192],r1
	add	r1,32,r1
	store	r1,[r14+-184]
!   _temp_1476 = _temp_1475 + 4
	load	[r14+-184],r1
	add	r1,4,r1
	store	r1,[r14+-180]
!   Data Move: _temp_1472 = *_temp_1476  (sizeInBytes=4)
	load	[r14+-180],r1
	load	[r1],r1
	store	r1,[r14+-196]
!   _temp_1471 = _temp_1472 - 1		(int)
	load	[r14+-196],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-200]
!   if virtPage <= _temp_1471 then goto _Label_1469		(int)
	load	[r14+-440],r1
	load	[r14+-200],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1469
	jmp	_Label_1466
_Label_1469:
	mov	2202,r13		! source line 2202
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1479 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-172]
!   Data Move: _temp_1478 = *_temp_1479  (sizeInBytes=4)
	load	[r14+-172],r1
	load	[r1],r1
	store	r1,[r14+-176]
!   if intIsZero (_temp_1478) then goto _runtimeErrorNullPointer
	load	[r14+-176],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1480 = _temp_1478 + 32
	load	[r14+-176],r1
	add	r1,32,r1
	store	r1,[r14+-168]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-440],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-168],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1477  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-16]
!   _temp_1481 = _temp_1477 XOR 0		(bool)
	loadb	[r14+-16],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-15]
!   if _temp_1481 then goto _Label_1468 else goto _Label_1466
	loadb	[r14+-15],r1
	cmp	r1,0
	be	_Label_1466
	jmp	_Label_1468
_Label_1468:
	mov	2202,r13		! source line 2202
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1484 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-160]
!   Data Move: _temp_1483 = *_temp_1484  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-164]
!   if intIsZero (_temp_1483) then goto _runtimeErrorNullPointer
	load	[r14+-164],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1485 = _temp_1483 + 32
	load	[r14+-164],r1
	add	r1,32,r1
	store	r1,[r14+-156]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-440],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-156],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_1482  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-14]
!   _temp_1486 = _temp_1482 XOR 0		(bool)
	loadb	[r14+-14],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-13]
!   if _temp_1486 then goto _Label_1467 else goto _Label_1466
	loadb	[r14+-13],r1
	cmp	r1,0
	be	_Label_1466
	jmp	_Label_1467
_Label_1466:
! THEN...
	mov	2203,r13		! source line 2203
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2203,r13		! source line 2203
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,492,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1467:
! ASSIGNMENT STATEMENT...
	mov	2205,r13		! source line 2205
	mov	"\0\0AS",r10
!   nextPosInFile = nextPosInFile + currentChunkSize		(int)
	load	[r14+-452],r1
	load	[r14+-456],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-452]
! ASSIGNMENT STATEMENT...
	mov	2206,r13		! source line 2206
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + currentChunkSize		(int)
	load	[r14+-448],r1
	load	[r14+-456],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-448]
! ASSIGNMENT STATEMENT...
	mov	2207,r13		! source line 2207
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-440],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-440]
! ASSIGNMENT STATEMENT...
	mov	2208,r13		! source line 2208
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-444]
! IF STATEMENT...
	mov	2209,r13		! source line 2209
	mov	"\0\0IF",r10
!   if copiedSoFar != sizeInBytes then goto _Label_1488		(int)
	load	[r14+-448],r1
	load	[r14+16],r2
	cmp	r1,r2
	bne	_Label_1488
!	jmp	_Label_1487
_Label_1487:
! THEN...
	mov	2210,r13		! source line 2210
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2210,r13		! source line 2210
	mov	"\0\0BR",r10
	jmp	_Label_1457
! END IF...
_Label_1488:
! END WHILE...
	jmp	_Label_1455
_Label_1457:
! ASSIGNMENT STATEMENT...
	mov	2215,r13		! source line 2215
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1490 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-148]
!   Data Move: _temp_1489 = *_temp_1490  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r1],r1
	store	r1,[r14+-152]
!   if intIsZero (_temp_1489) then goto _runtimeErrorNullPointer
	load	[r14+-152],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1491 = _temp_1489 + 124
	load	[r14+-152],r1
	add	r1,124,r1
	store	r1,[r14+-144]
!   Move address of _temp_1491 [fileDesc ] into _temp_1492
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
!   Data Move: openFile = *_temp_1492  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-468]
! ASSIGNMENT STATEMENT...
	mov	2216,r13		! source line 2216
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-436]
! ASSIGNMENT STATEMENT...
	mov	2217,r13		! source line 2217
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+-436],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-440]
! ASSIGNMENT STATEMENT...
	mov	2218,r13		! source line 2218
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+-436],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-444]
! ASSIGNMENT STATEMENT...
	mov	2219,r13		! source line 2219
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-448]
! ASSIGNMENT STATEMENT...
	mov	2220,r13		! source line 2220
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-468],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1493 = openFile + 16
	load	[r14+-468],r1
	add	r1,16,r1
	store	r1,[r14+-136]
!   Data Move: nextPosInFile = *_temp_1493  (sizeInBytes=4)
	load	[r14+-136],r1
	load	[r1],r1
	store	r1,[r14+-452]
! ASSIGNMENT STATEMENT...
	mov	2221,r13		! source line 2221
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-468],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1495 = openFile + 20
	load	[r14+-468],r1
	add	r1,20,r1
	store	r1,[r14+-128]
!   Data Move: _temp_1494 = *_temp_1495  (sizeInBytes=4)
	load	[r14+-128],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   if intIsZero (_temp_1494) then goto _runtimeErrorNullPointer
	load	[r14+-132],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1496 = _temp_1494 + 24
	load	[r14+-132],r1
	add	r1,24,r1
	store	r1,[r14+-124]
!   Data Move: fileSize = *_temp_1496  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-460]
! WHILE STATEMENT...
	mov	2223,r13		! source line 2223
	mov	"\0\0WH",r10
_Label_1497:
!	jmp	_Label_1498
_Label_1498:
	mov	2223,r13		! source line 2223
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2224,r13		! source line 2224
	mov	"\0\0AS",r10
!   currentChunkSize = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-444],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-456]
! IF STATEMENT...
	mov	2225,r13		! source line 2225
	mov	"\0\0IF",r10
!   _temp_1502 = nextPosInFile + currentChunkSize		(int)
	load	[r14+-452],r1
	load	[r14+-456],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
!   if _temp_1502 <= fileSize then goto _Label_1501		(int)
	load	[r14+-120],r1
	load	[r14+-460],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1501
!	jmp	_Label_1500
_Label_1500:
! THEN...
	mov	2226,r13		! source line 2226
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2226,r13		! source line 2226
	mov	"\0\0AS",r10
!   currentChunkSize = fileSize - nextPosInFile		(int)
	load	[r14+-460],r1
	load	[r14+-452],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-456]
! END IF...
_Label_1501:
! IF STATEMENT...
	mov	2228,r13		! source line 2228
	mov	"\0\0IF",r10
!   _temp_1505 = copiedSoFar + currentChunkSize		(int)
	load	[r14+-448],r1
	load	[r14+-456],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
!   if _temp_1505 <= sizeInBytes then goto _Label_1504		(int)
	load	[r14+-116],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1504
!	jmp	_Label_1503
_Label_1503:
! THEN...
	mov	2229,r13		! source line 2229
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2229,r13		! source line 2229
	mov	"\0\0AS",r10
!   currentChunkSize = sizeInBytes - copiedSoFar		(int)
	load	[r14+16],r1
	load	[r14+-448],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-456]
! END IF...
_Label_1504:
! IF STATEMENT...
	mov	2231,r13		! source line 2231
	mov	"\0\0IF",r10
!   if currentChunkSize > 0 then goto _Label_1507		(int)
	load	[r14+-456],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1507
!	jmp	_Label_1506
_Label_1506:
! THEN...
	mov	2232,r13		! source line 2232
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2232,r13		! source line 2232
	mov	"\0\0BR",r10
	jmp	_Label_1499
! END IF...
_Label_1507:
! IF STATEMENT...
	mov	2234,r13		! source line 2234
	mov	"\0\0IF",r10
!   if virtPage >= 0 then goto _Label_1512		(int)
	load	[r14+-440],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1512
	jmp	_Label_1508
_Label_1512:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1516 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-100]
!   Data Move: _temp_1515 = *_temp_1516  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if intIsZero (_temp_1515) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1517 = _temp_1515 + 32
	load	[r14+-104],r1
	add	r1,32,r1
	store	r1,[r14+-96]
!   _temp_1518 = _temp_1517 + 4
	load	[r14+-96],r1
	add	r1,4,r1
	store	r1,[r14+-92]
!   Data Move: _temp_1514 = *_temp_1518  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   _temp_1513 = _temp_1514 - 1		(int)
	load	[r14+-108],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
!   if virtPage <= _temp_1513 then goto _Label_1511		(int)
	load	[r14+-440],r1
	load	[r14+-112],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1511
	jmp	_Label_1508
_Label_1511:
	mov	2234,r13		! source line 2234
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1521 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-84]
!   Data Move: _temp_1520 = *_temp_1521  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-88]
!   if intIsZero (_temp_1520) then goto _runtimeErrorNullPointer
	load	[r14+-88],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1522 = _temp_1520 + 32
	load	[r14+-88],r1
	add	r1,32,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-440],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1519  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-12]
!   _temp_1523 = _temp_1519 XOR 0		(bool)
	loadb	[r14+-12],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-11]
!   if _temp_1523 then goto _Label_1510 else goto _Label_1508
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_1508
	jmp	_Label_1510
_Label_1510:
	mov	2234,r13		! source line 2234
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1526 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-72]
!   Data Move: _temp_1525 = *_temp_1526  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_1525) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1527 = _temp_1525 + 32
	load	[r14+-76],r1
	add	r1,32,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-440],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_1524  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   _temp_1528 = _temp_1524 XOR 0		(bool)
	loadb	[r14+-10],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_1528 then goto _Label_1509 else goto _Label_1508
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1508
	jmp	_Label_1509
_Label_1508:
! THEN...
	mov	2235,r13		! source line 2235
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2235,r13		! source line 2235
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,492,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1509:
! SEND STATEMENT...
	mov	2237,r13		! source line 2237
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1530 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-60]
!   Data Move: _temp_1529 = *_temp_1530  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_1529) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1531 = _temp_1529 + 32
	load	[r14+-64],r1
	add	r1,32,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-440],r1
	store	r1,[r15+4]
!   Send message SetReferenced
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,44,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2238,r13		! source line 2238
	mov	"\0\0AS",r10
	mov	2238,r13		! source line 2238
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1534 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-44]
!   Data Move: _temp_1533 = *_temp_1534  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   if intIsZero (_temp_1533) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1535 = _temp_1533 + 32
	load	[r14+-48],r1
	add	r1,32,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-440],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1532  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
!   destAddr = _temp_1532 + offset		(int)
	load	[r14+-52],r1
	load	[r14+-444],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-464]
! ASSIGNMENT STATEMENT...
	mov	2239,r13		! source line 2239
	mov	"\0\0AS",r10
	mov	2239,r13		! source line 2239
	mov	"\0\0SE",r10
!   _temp_1536 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=openFile  sizeInBytes=4
	load	[r14+-468],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=destAddr  sizeInBytes=4
	load	[r14+-464],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=nextPosInFile  sizeInBytes=4
	load	[r14+-452],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=currentChunkSize  sizeInBytes=4
	load	[r14+-456],r1
	store	r1,[r15+16]
!   Send message SynchWrite
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=readSuccess  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-26]
! ASSIGNMENT STATEMENT...
	mov	2240,r13		! source line 2240
	mov	"\0\0AS",r10
!   nextPosInFile = nextPosInFile + currentChunkSize		(int)
	load	[r14+-452],r1
	load	[r14+-456],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-452]
! ASSIGNMENT STATEMENT...
	mov	2241,r13		! source line 2241
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + currentChunkSize		(int)
	load	[r14+-448],r1
	load	[r14+-456],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-448]
! ASSIGNMENT STATEMENT...
	mov	2242,r13		! source line 2242
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-440],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-440]
! ASSIGNMENT STATEMENT...
	mov	2243,r13		! source line 2243
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-444]
! IF STATEMENT...
	mov	2244,r13		! source line 2244
	mov	"\0\0IF",r10
!   if copiedSoFar != sizeInBytes then goto _Label_1538		(int)
	load	[r14+-448],r1
	load	[r14+16],r2
	cmp	r1,r2
	bne	_Label_1538
!	jmp	_Label_1537
_Label_1537:
! THEN...
	mov	2245,r13		! source line 2245
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2245,r13		! source line 2245
	mov	"\0\0BR",r10
	jmp	_Label_1499
! END IF...
_Label_1538:
! END WHILE...
	jmp	_Label_1497
_Label_1499:
! ASSIGNMENT STATEMENT...
	mov	2249,r13		! source line 2249
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-468],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1539 = openFile + 16
	load	[r14+-468],r1
	add	r1,16,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_1539 = nextPosInFile  (sizeInBytes=4)
	load	[r14+-452],r1
	load	[r14+-32],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2250,r13		! source line 2250
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-448],r1
	store	r1,[r14+8]
	add	r15,492,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1446:
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Write:
	.word	_sourceFileName
	.word	_Label_1540
	.word	12		! total size of parameters
	.word	488		! frame size = 488
	.word	_Label_1541
	.word	8
	.word	4
	.word	_Label_1542
	.word	12
	.word	4
	.word	_Label_1543
	.word	16
	.word	4
	.word	_Label_1544
	.word	-32
	.word	4
	.word	_Label_1545
	.word	-36
	.word	4
	.word	_Label_1546
	.word	-40
	.word	4
	.word	_Label_1547
	.word	-44
	.word	4
	.word	_Label_1548
	.word	-48
	.word	4
	.word	_Label_1549
	.word	-52
	.word	4
	.word	_Label_1550
	.word	-56
	.word	4
	.word	_Label_1551
	.word	-60
	.word	4
	.word	_Label_1552
	.word	-64
	.word	4
	.word	_Label_1553
	.word	-9
	.word	1
	.word	_Label_1554
	.word	-68
	.word	4
	.word	_Label_1555
	.word	-72
	.word	4
	.word	_Label_1556
	.word	-76
	.word	4
	.word	_Label_1557
	.word	-10
	.word	1
	.word	_Label_1558
	.word	-11
	.word	1
	.word	_Label_1559
	.word	-80
	.word	4
	.word	_Label_1560
	.word	-84
	.word	4
	.word	_Label_1561
	.word	-88
	.word	4
	.word	_Label_1562
	.word	-12
	.word	1
	.word	_Label_1563
	.word	-92
	.word	4
	.word	_Label_1564
	.word	-96
	.word	4
	.word	_Label_1565
	.word	-100
	.word	4
	.word	_Label_1566
	.word	-104
	.word	4
	.word	_Label_1567
	.word	-108
	.word	4
	.word	_Label_1568
	.word	-112
	.word	4
	.word	_Label_1569
	.word	-116
	.word	4
	.word	_Label_1570
	.word	-120
	.word	4
	.word	_Label_1571
	.word	-124
	.word	4
	.word	_Label_1572
	.word	-128
	.word	4
	.word	_Label_1573
	.word	-132
	.word	4
	.word	_Label_1574
	.word	-136
	.word	4
	.word	_Label_1575
	.word	-140
	.word	4
	.word	_Label_1576
	.word	-144
	.word	4
	.word	_Label_1577
	.word	-148
	.word	4
	.word	_Label_1578
	.word	-152
	.word	4
	.word	_Label_1579
	.word	-13
	.word	1
	.word	_Label_1580
	.word	-156
	.word	4
	.word	_Label_1581
	.word	-160
	.word	4
	.word	_Label_1582
	.word	-164
	.word	4
	.word	_Label_1583
	.word	-14
	.word	1
	.word	_Label_1584
	.word	-15
	.word	1
	.word	_Label_1585
	.word	-168
	.word	4
	.word	_Label_1586
	.word	-172
	.word	4
	.word	_Label_1587
	.word	-176
	.word	4
	.word	_Label_1588
	.word	-16
	.word	1
	.word	_Label_1589
	.word	-180
	.word	4
	.word	_Label_1590
	.word	-184
	.word	4
	.word	_Label_1591
	.word	-188
	.word	4
	.word	_Label_1592
	.word	-192
	.word	4
	.word	_Label_1593
	.word	-196
	.word	4
	.word	_Label_1594
	.word	-200
	.word	4
	.word	_Label_1595
	.word	-204
	.word	4
	.word	_Label_1596
	.word	-208
	.word	4
	.word	_Label_1597
	.word	-212
	.word	4
	.word	_Label_1598
	.word	-216
	.word	4
	.word	_Label_1599
	.word	-220
	.word	4
	.word	_Label_1600
	.word	-224
	.word	4
	.word	_Label_1601
	.word	-228
	.word	4
	.word	_Label_1602
	.word	-232
	.word	4
	.word	_Label_1603
	.word	-236
	.word	4
	.word	_Label_1604
	.word	-240
	.word	4
	.word	_Label_1605
	.word	-244
	.word	4
	.word	_Label_1606
	.word	-248
	.word	4
	.word	_Label_1607
	.word	-17
	.word	1
	.word	_Label_1608
	.word	-252
	.word	4
	.word	_Label_1609
	.word	-256
	.word	4
	.word	_Label_1610
	.word	-260
	.word	4
	.word	_Label_1611
	.word	-264
	.word	4
	.word	_Label_1612
	.word	-18
	.word	1
	.word	_Label_1613
	.word	-268
	.word	4
	.word	_Label_1614
	.word	-272
	.word	4
	.word	_Label_1615
	.word	-276
	.word	4
	.word	_Label_1616
	.word	-19
	.word	1
	.word	_Label_1617
	.word	-20
	.word	1
	.word	_Label_1618
	.word	-280
	.word	4
	.word	_Label_1619
	.word	-284
	.word	4
	.word	_Label_1620
	.word	-288
	.word	4
	.word	_Label_1621
	.word	-21
	.word	1
	.word	_Label_1622
	.word	-292
	.word	4
	.word	_Label_1623
	.word	-296
	.word	4
	.word	_Label_1624
	.word	-300
	.word	4
	.word	_Label_1625
	.word	-304
	.word	4
	.word	_Label_1626
	.word	-308
	.word	4
	.word	_Label_1627
	.word	-312
	.word	4
	.word	_Label_1628
	.word	-316
	.word	4
	.word	_Label_1629
	.word	-320
	.word	4
	.word	_Label_1630
	.word	-324
	.word	4
	.word	_Label_1631
	.word	-22
	.word	1
	.word	_Label_1632
	.word	-328
	.word	4
	.word	_Label_1633
	.word	-332
	.word	4
	.word	_Label_1634
	.word	-336
	.word	4
	.word	_Label_1635
	.word	-23
	.word	1
	.word	_Label_1636
	.word	-24
	.word	1
	.word	_Label_1637
	.word	-340
	.word	4
	.word	_Label_1638
	.word	-344
	.word	4
	.word	_Label_1639
	.word	-348
	.word	4
	.word	_Label_1640
	.word	-25
	.word	1
	.word	_Label_1641
	.word	-352
	.word	4
	.word	_Label_1642
	.word	-356
	.word	4
	.word	_Label_1643
	.word	-360
	.word	4
	.word	_Label_1644
	.word	-364
	.word	4
	.word	_Label_1645
	.word	-368
	.word	4
	.word	_Label_1646
	.word	-372
	.word	4
	.word	_Label_1647
	.word	-376
	.word	4
	.word	_Label_1648
	.word	-380
	.word	4
	.word	_Label_1649
	.word	-384
	.word	4
	.word	_Label_1650
	.word	-388
	.word	4
	.word	_Label_1651
	.word	-392
	.word	4
	.word	_Label_1652
	.word	-396
	.word	4
	.word	_Label_1653
	.word	-400
	.word	4
	.word	_Label_1654
	.word	-404
	.word	4
	.word	_Label_1655
	.word	-408
	.word	4
	.word	_Label_1656
	.word	-412
	.word	4
	.word	_Label_1657
	.word	-416
	.word	4
	.word	_Label_1658
	.word	-420
	.word	4
	.word	_Label_1659
	.word	-424
	.word	4
	.word	_Label_1660
	.word	-428
	.word	4
	.word	_Label_1661
	.word	-432
	.word	4
	.word	_Label_1662
	.word	-436
	.word	4
	.word	_Label_1663
	.word	-440
	.word	4
	.word	_Label_1664
	.word	-444
	.word	4
	.word	_Label_1665
	.word	-448
	.word	4
	.word	_Label_1666
	.word	-452
	.word	4
	.word	_Label_1667
	.word	-456
	.word	4
	.word	_Label_1668
	.word	-460
	.word	4
	.word	_Label_1669
	.word	-464
	.word	4
	.word	_Label_1670
	.word	-468
	.word	4
	.word	_Label_1671
	.word	-26
	.word	1
	.word	_Label_1672
	.word	-472
	.word	4
	.word	_Label_1673
	.word	-27
	.word	1
	.word	_Label_1674
	.word	-476
	.word	4
	.word	0
_Label_1540:
	.ascii	"Handle_Sys_Write\0"
	.align
_Label_1541:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_1542:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_1543:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_1544:
	.byte	'?'
	.ascii	"_temp_1539\0"
	.align
_Label_1545:
	.byte	'?'
	.ascii	"_temp_1536\0"
	.align
_Label_1546:
	.byte	'?'
	.ascii	"_temp_1535\0"
	.align
_Label_1547:
	.byte	'?'
	.ascii	"_temp_1534\0"
	.align
_Label_1548:
	.byte	'?'
	.ascii	"_temp_1533\0"
	.align
_Label_1549:
	.byte	'?'
	.ascii	"_temp_1532\0"
	.align
_Label_1550:
	.byte	'?'
	.ascii	"_temp_1531\0"
	.align
_Label_1551:
	.byte	'?'
	.ascii	"_temp_1530\0"
	.align
_Label_1552:
	.byte	'?'
	.ascii	"_temp_1529\0"
	.align
_Label_1553:
	.byte	'C'
	.ascii	"_temp_1528\0"
	.align
_Label_1554:
	.byte	'?'
	.ascii	"_temp_1527\0"
	.align
_Label_1555:
	.byte	'?'
	.ascii	"_temp_1526\0"
	.align
_Label_1556:
	.byte	'?'
	.ascii	"_temp_1525\0"
	.align
_Label_1557:
	.byte	'C'
	.ascii	"_temp_1524\0"
	.align
_Label_1558:
	.byte	'C'
	.ascii	"_temp_1523\0"
	.align
_Label_1559:
	.byte	'?'
	.ascii	"_temp_1522\0"
	.align
_Label_1560:
	.byte	'?'
	.ascii	"_temp_1521\0"
	.align
_Label_1561:
	.byte	'?'
	.ascii	"_temp_1520\0"
	.align
_Label_1562:
	.byte	'C'
	.ascii	"_temp_1519\0"
	.align
_Label_1563:
	.byte	'?'
	.ascii	"_temp_1518\0"
	.align
_Label_1564:
	.byte	'?'
	.ascii	"_temp_1517\0"
	.align
_Label_1565:
	.byte	'?'
	.ascii	"_temp_1516\0"
	.align
_Label_1566:
	.byte	'?'
	.ascii	"_temp_1515\0"
	.align
_Label_1567:
	.byte	'?'
	.ascii	"_temp_1514\0"
	.align
_Label_1568:
	.byte	'?'
	.ascii	"_temp_1513\0"
	.align
_Label_1569:
	.byte	'?'
	.ascii	"_temp_1505\0"
	.align
_Label_1570:
	.byte	'?'
	.ascii	"_temp_1502\0"
	.align
_Label_1571:
	.byte	'?'
	.ascii	"_temp_1496\0"
	.align
_Label_1572:
	.byte	'?'
	.ascii	"_temp_1495\0"
	.align
_Label_1573:
	.byte	'?'
	.ascii	"_temp_1494\0"
	.align
_Label_1574:
	.byte	'?'
	.ascii	"_temp_1493\0"
	.align
_Label_1575:
	.byte	'?'
	.ascii	"_temp_1492\0"
	.align
_Label_1576:
	.byte	'?'
	.ascii	"_temp_1491\0"
	.align
_Label_1577:
	.byte	'?'
	.ascii	"_temp_1490\0"
	.align
_Label_1578:
	.byte	'?'
	.ascii	"_temp_1489\0"
	.align
_Label_1579:
	.byte	'C'
	.ascii	"_temp_1486\0"
	.align
_Label_1580:
	.byte	'?'
	.ascii	"_temp_1485\0"
	.align
_Label_1581:
	.byte	'?'
	.ascii	"_temp_1484\0"
	.align
_Label_1582:
	.byte	'?'
	.ascii	"_temp_1483\0"
	.align
_Label_1583:
	.byte	'C'
	.ascii	"_temp_1482\0"
	.align
_Label_1584:
	.byte	'C'
	.ascii	"_temp_1481\0"
	.align
_Label_1585:
	.byte	'?'
	.ascii	"_temp_1480\0"
	.align
_Label_1586:
	.byte	'?'
	.ascii	"_temp_1479\0"
	.align
_Label_1587:
	.byte	'?'
	.ascii	"_temp_1478\0"
	.align
_Label_1588:
	.byte	'C'
	.ascii	"_temp_1477\0"
	.align
_Label_1589:
	.byte	'?'
	.ascii	"_temp_1476\0"
	.align
_Label_1590:
	.byte	'?'
	.ascii	"_temp_1475\0"
	.align
_Label_1591:
	.byte	'?'
	.ascii	"_temp_1474\0"
	.align
_Label_1592:
	.byte	'?'
	.ascii	"_temp_1473\0"
	.align
_Label_1593:
	.byte	'?'
	.ascii	"_temp_1472\0"
	.align
_Label_1594:
	.byte	'?'
	.ascii	"_temp_1471\0"
	.align
_Label_1595:
	.byte	'?'
	.ascii	"_temp_1463\0"
	.align
_Label_1596:
	.byte	'?'
	.ascii	"_temp_1460\0"
	.align
_Label_1597:
	.byte	'?'
	.ascii	"_temp_1454\0"
	.align
_Label_1598:
	.byte	'?'
	.ascii	"_temp_1453\0"
	.align
_Label_1599:
	.byte	'?'
	.ascii	"_temp_1452\0"
	.align
_Label_1600:
	.byte	'?'
	.ascii	"_temp_1451\0"
	.align
_Label_1601:
	.byte	'?'
	.ascii	"_temp_1450\0"
	.align
_Label_1602:
	.byte	'?'
	.ascii	"_temp_1449\0"
	.align
_Label_1603:
	.byte	'?'
	.ascii	"_temp_1448\0"
	.align
_Label_1604:
	.byte	'?'
	.ascii	"_temp_1447\0"
	.align
_Label_1605:
	.byte	'?'
	.ascii	"_temp_1445\0"
	.align
_Label_1606:
	.byte	'?'
	.ascii	"_temp_1444\0"
	.align
_Label_1607:
	.byte	'C'
	.ascii	"_temp_1443\0"
	.align
_Label_1608:
	.byte	'?'
	.ascii	"_temp_1440\0"
	.align
_Label_1609:
	.byte	'?'
	.ascii	"_temp_1439\0"
	.align
_Label_1610:
	.byte	'?'
	.ascii	"_temp_1438\0"
	.align
_Label_1611:
	.byte	'?'
	.ascii	"_temp_1437\0"
	.align
_Label_1612:
	.byte	'C'
	.ascii	"_temp_1436\0"
	.align
_Label_1613:
	.byte	'?'
	.ascii	"_temp_1435\0"
	.align
_Label_1614:
	.byte	'?'
	.ascii	"_temp_1434\0"
	.align
_Label_1615:
	.byte	'?'
	.ascii	"_temp_1433\0"
	.align
_Label_1616:
	.byte	'C'
	.ascii	"_temp_1432\0"
	.align
_Label_1617:
	.byte	'C'
	.ascii	"_temp_1431\0"
	.align
_Label_1618:
	.byte	'?'
	.ascii	"_temp_1430\0"
	.align
_Label_1619:
	.byte	'?'
	.ascii	"_temp_1429\0"
	.align
_Label_1620:
	.byte	'?'
	.ascii	"_temp_1428\0"
	.align
_Label_1621:
	.byte	'C'
	.ascii	"_temp_1427\0"
	.align
_Label_1622:
	.byte	'?'
	.ascii	"_temp_1426\0"
	.align
_Label_1623:
	.byte	'?'
	.ascii	"_temp_1425\0"
	.align
_Label_1624:
	.byte	'?'
	.ascii	"_temp_1424\0"
	.align
_Label_1625:
	.byte	'?'
	.ascii	"_temp_1423\0"
	.align
_Label_1626:
	.byte	'?'
	.ascii	"_temp_1422\0"
	.align
_Label_1627:
	.byte	'?'
	.ascii	"_temp_1421\0"
	.align
_Label_1628:
	.byte	'?'
	.ascii	"_temp_1415\0"
	.align
_Label_1629:
	.byte	'?'
	.ascii	"_temp_1414\0"
	.align
_Label_1630:
	.byte	'?'
	.ascii	"_temp_1413\0"
	.align
_Label_1631:
	.byte	'C'
	.ascii	"_temp_1408\0"
	.align
_Label_1632:
	.byte	'?'
	.ascii	"_temp_1407\0"
	.align
_Label_1633:
	.byte	'?'
	.ascii	"_temp_1406\0"
	.align
_Label_1634:
	.byte	'?'
	.ascii	"_temp_1405\0"
	.align
_Label_1635:
	.byte	'C'
	.ascii	"_temp_1404\0"
	.align
_Label_1636:
	.byte	'C'
	.ascii	"_temp_1403\0"
	.align
_Label_1637:
	.byte	'?'
	.ascii	"_temp_1402\0"
	.align
_Label_1638:
	.byte	'?'
	.ascii	"_temp_1401\0"
	.align
_Label_1639:
	.byte	'?'
	.ascii	"_temp_1400\0"
	.align
_Label_1640:
	.byte	'C'
	.ascii	"_temp_1399\0"
	.align
_Label_1641:
	.byte	'?'
	.ascii	"_temp_1398\0"
	.align
_Label_1642:
	.byte	'?'
	.ascii	"_temp_1397\0"
	.align
_Label_1643:
	.byte	'?'
	.ascii	"_temp_1396\0"
	.align
_Label_1644:
	.byte	'?'
	.ascii	"_temp_1395\0"
	.align
_Label_1645:
	.byte	'?'
	.ascii	"_temp_1394\0"
	.align
_Label_1646:
	.byte	'?'
	.ascii	"_temp_1393\0"
	.align
_Label_1647:
	.byte	'?'
	.ascii	"_temp_1387\0"
	.align
_Label_1648:
	.byte	'?'
	.ascii	"_temp_1386\0"
	.align
_Label_1649:
	.byte	'?'
	.ascii	"_temp_1385\0"
	.align
_Label_1650:
	.byte	'?'
	.ascii	"_temp_1380\0"
	.align
_Label_1651:
	.byte	'?'
	.ascii	"_temp_1379\0"
	.align
_Label_1652:
	.byte	'?'
	.ascii	"_temp_1378\0"
	.align
_Label_1653:
	.byte	'?'
	.ascii	"_temp_1377\0"
	.align
_Label_1654:
	.byte	'?'
	.ascii	"_temp_1376\0"
	.align
_Label_1655:
	.byte	'?'
	.ascii	"_temp_1375\0"
	.align
_Label_1656:
	.byte	'?'
	.ascii	"_temp_1374\0"
	.align
_Label_1657:
	.byte	'?'
	.ascii	"_temp_1371\0"
	.align
_Label_1658:
	.byte	'?'
	.ascii	"_temp_1370\0"
	.align
_Label_1659:
	.byte	'?'
	.ascii	"_temp_1369\0"
	.align
_Label_1660:
	.byte	'?'
	.ascii	"_temp_1368\0"
	.align
_Label_1661:
	.byte	'?'
	.ascii	"_temp_1367\0"
	.align
_Label_1662:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1663:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_1664:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_1665:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_1666:
	.byte	'I'
	.ascii	"nextPosInFile\0"
	.align
_Label_1667:
	.byte	'I'
	.ascii	"currentChunkSize\0"
	.align
_Label_1668:
	.byte	'I'
	.ascii	"fileSize\0"
	.align
_Label_1669:
	.byte	'I'
	.ascii	"destAddr\0"
	.align
_Label_1670:
	.byte	'P'
	.ascii	"openFile\0"
	.align
_Label_1671:
	.byte	'B'
	.ascii	"readSuccess\0"
	.align
_Label_1672:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1673:
	.byte	'C'
	.ascii	"c\0"
	.align
_Label_1674:
	.byte	'P'
	.ascii	"tempBuffer\0"
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
_Label_4445:
	push	r0
	sub	r1,1,r1
	bne	_Label_4445
	mov	2256,r13		! source line 2256
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2260,r13		! source line 2260
	mov	"\0\0SE",r10
!   _temp_1675 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-180]
!   _temp_1676 = _temp_1675 + 4
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
	mov	2262,r13		! source line 2262
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1687 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-160]
!   Data Move: _temp_1686 = *_temp_1687  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-164]
!   if intIsZero (_temp_1686) then goto _runtimeErrorNullPointer
	load	[r14+-164],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1688 = _temp_1686 + 124
	load	[r14+-164],r1
	add	r1,124,r1
	store	r1,[r14+-156]
!   Move address of _temp_1688 [fileDesc ] into _temp_1689
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
!   Data Move: _temp_1685 = *_temp_1689  (sizeInBytes=4)
	load	[r14+-152],r1
	load	[r1],r1
	store	r1,[r14+-168]
!   if intIsZero (_temp_1685) then goto _runtimeErrorNullPointer
	load	[r14+-168],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1690 = _temp_1685 + 12
	load	[r14+-168],r1
	add	r1,12,r1
	store	r1,[r14+-148]
!   Data Move: _temp_1684 = *_temp_1690  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r1],r1
	store	r1,[r14+-172]
!   if _temp_1684 != 2 then goto _Label_1683		(int)
	load	[r14+-172],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1683
	jmp	_Label_1677
_Label_1683:
!   if fileDesc >= 0 then goto _Label_1682		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1682
	jmp	_Label_1677
_Label_1682:
!   if fileDesc <= 9 then goto _Label_1681		(int)
	load	[r14+8],r1
	mov	9,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1681
	jmp	_Label_1677
_Label_1681:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1693 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-136]
!   Data Move: _temp_1692 = *_temp_1693  (sizeInBytes=4)
	load	[r14+-136],r1
	load	[r1],r1
	store	r1,[r14+-140]
!   if intIsZero (_temp_1692) then goto _runtimeErrorNullPointer
	load	[r14+-140],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1694 = _temp_1692 + 124
	load	[r14+-140],r1
	add	r1,124,r1
	store	r1,[r14+-132]
!   Move address of _temp_1694 [fileDesc ] into _temp_1695
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
!   Data Move: _temp_1691 = *_temp_1695  (sizeInBytes=4)
	load	[r14+-128],r1
	load	[r1],r1
	store	r1,[r14+-144]
!   if intIsZero (_temp_1691) then goto _Label_1677
	load	[r14+-144],r1
	cmp	r1,r0
	be	_Label_1677
!	jmp	_Label_1680
_Label_1680:
!   if newCurrentPos >= -1 then goto _Label_1679		(int)
	load	[r14+12],r1
	mov	-1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1679
	jmp	_Label_1677
_Label_1679:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1700 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-108]
!   Data Move: _temp_1699 = *_temp_1700  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if intIsZero (_temp_1699) then goto _runtimeErrorNullPointer
	load	[r14+-112],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1701 = _temp_1699 + 124
	load	[r14+-112],r1
	add	r1,124,r1
	store	r1,[r14+-104]
!   Move address of _temp_1701 [fileDesc ] into _temp_1702
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
!   Data Move: _temp_1698 = *_temp_1702  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if intIsZero (_temp_1698) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1703 = _temp_1698 + 20
	load	[r14+-116],r1
	add	r1,20,r1
	store	r1,[r14+-96]
!   Data Move: _temp_1697 = *_temp_1703  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-120]
!   if intIsZero (_temp_1697) then goto _runtimeErrorNullPointer
	load	[r14+-120],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1704 = _temp_1697 + 24
	load	[r14+-120],r1
	add	r1,24,r1
	store	r1,[r14+-92]
!   Data Move: _temp_1696 = *_temp_1704  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-124]
!   if newCurrentPos <= _temp_1696 then goto _Label_1678		(int)
	load	[r14+12],r1
	load	[r14+-124],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1678
!	jmp	_Label_1677
_Label_1677:
! THEN...
	mov	2263,r13		! source line 2263
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2263,r13		! source line 2263
	mov	"\0\0SE",r10
!   _temp_1705 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-88]
!   _temp_1706 = _temp_1705 + 4
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
	mov	2264,r13		! source line 2264
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,184,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1678:
! ASSIGNMENT STATEMENT...
	mov	2266,r13		! source line 2266
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1708 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-76]
!   Data Move: _temp_1707 = *_temp_1708  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_1707) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1709 = _temp_1707 + 124
	load	[r14+-80],r1
	add	r1,124,r1
	store	r1,[r14+-72]
!   Move address of _temp_1709 [fileDesc ] into _temp_1710
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
!   Data Move: openFile = *_temp_1710  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-184]
! IF STATEMENT...
	mov	2267,r13		! source line 2267
	mov	"\0\0IF",r10
!   if newCurrentPos != -1 then goto _Label_1712		(int)
	load	[r14+12],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_1712
!	jmp	_Label_1711
_Label_1711:
! THEN...
	mov	2268,r13		! source line 2268
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2268,r13		! source line 2268
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-184],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1713 = openFile + 16
	load	[r14+-184],r1
	add	r1,16,r1
	store	r1,[r14+-64]
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-184],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1716 = openFile + 20
	load	[r14+-184],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_1715 = *_temp_1716  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_1715) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1717 = _temp_1715 + 24
	load	[r14+-56],r1
	add	r1,24,r1
	store	r1,[r14+-48]
!   Data Move: _temp_1714 = *_temp_1717  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   Data Move: *_temp_1713 = _temp_1714  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r14+-64],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2269,r13		! source line 2269
	mov	"\0\0SE",r10
!   _temp_1718 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-44]
!   _temp_1719 = _temp_1718 + 4
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
	mov	2270,r13		! source line 2270
	mov	"\0\0RE",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-184],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1722 = openFile + 20
	load	[r14+-184],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: _temp_1721 = *_temp_1722  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_1721) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1723 = _temp_1721 + 24
	load	[r14+-32],r1
	add	r1,24,r1
	store	r1,[r14+-24]
!   Data Move: _temp_1720 = *_temp_1723  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   ReturnResult: _temp_1720  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,184,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1712:
! ASSIGNMENT STATEMENT...
	mov	2272,r13		! source line 2272
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-184],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1724 = openFile + 16
	load	[r14+-184],r1
	add	r1,16,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1724 = newCurrentPos  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2273,r13		! source line 2273
	mov	"\0\0SE",r10
!   _temp_1725 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-16]
!   _temp_1726 = _temp_1725 + 4
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
	mov	2274,r13		! source line 2274
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
	.word	_Label_1727
	.word	8		! total size of parameters
	.word	180		! frame size = 180
	.word	_Label_1728
	.word	8
	.word	4
	.word	_Label_1729
	.word	12
	.word	4
	.word	_Label_1730
	.word	-12
	.word	4
	.word	_Label_1731
	.word	-16
	.word	4
	.word	_Label_1732
	.word	-20
	.word	4
	.word	_Label_1733
	.word	-24
	.word	4
	.word	_Label_1734
	.word	-28
	.word	4
	.word	_Label_1735
	.word	-32
	.word	4
	.word	_Label_1736
	.word	-36
	.word	4
	.word	_Label_1737
	.word	-40
	.word	4
	.word	_Label_1738
	.word	-44
	.word	4
	.word	_Label_1739
	.word	-48
	.word	4
	.word	_Label_1740
	.word	-52
	.word	4
	.word	_Label_1741
	.word	-56
	.word	4
	.word	_Label_1742
	.word	-60
	.word	4
	.word	_Label_1743
	.word	-64
	.word	4
	.word	_Label_1744
	.word	-68
	.word	4
	.word	_Label_1745
	.word	-72
	.word	4
	.word	_Label_1746
	.word	-76
	.word	4
	.word	_Label_1747
	.word	-80
	.word	4
	.word	_Label_1748
	.word	-84
	.word	4
	.word	_Label_1749
	.word	-88
	.word	4
	.word	_Label_1750
	.word	-92
	.word	4
	.word	_Label_1751
	.word	-96
	.word	4
	.word	_Label_1752
	.word	-100
	.word	4
	.word	_Label_1753
	.word	-104
	.word	4
	.word	_Label_1754
	.word	-108
	.word	4
	.word	_Label_1755
	.word	-112
	.word	4
	.word	_Label_1756
	.word	-116
	.word	4
	.word	_Label_1757
	.word	-120
	.word	4
	.word	_Label_1758
	.word	-124
	.word	4
	.word	_Label_1759
	.word	-128
	.word	4
	.word	_Label_1760
	.word	-132
	.word	4
	.word	_Label_1761
	.word	-136
	.word	4
	.word	_Label_1762
	.word	-140
	.word	4
	.word	_Label_1763
	.word	-144
	.word	4
	.word	_Label_1764
	.word	-148
	.word	4
	.word	_Label_1765
	.word	-152
	.word	4
	.word	_Label_1766
	.word	-156
	.word	4
	.word	_Label_1767
	.word	-160
	.word	4
	.word	_Label_1768
	.word	-164
	.word	4
	.word	_Label_1769
	.word	-168
	.word	4
	.word	_Label_1770
	.word	-172
	.word	4
	.word	_Label_1771
	.word	-176
	.word	4
	.word	_Label_1772
	.word	-180
	.word	4
	.word	_Label_1773
	.word	-184
	.word	4
	.word	0
_Label_1727:
	.ascii	"Handle_Sys_Seek\0"
	.align
_Label_1728:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_1729:
	.byte	'I'
	.ascii	"newCurrentPos\0"
	.align
_Label_1730:
	.byte	'?'
	.ascii	"_temp_1726\0"
	.align
_Label_1731:
	.byte	'?'
	.ascii	"_temp_1725\0"
	.align
_Label_1732:
	.byte	'?'
	.ascii	"_temp_1724\0"
	.align
_Label_1733:
	.byte	'?'
	.ascii	"_temp_1723\0"
	.align
_Label_1734:
	.byte	'?'
	.ascii	"_temp_1722\0"
	.align
_Label_1735:
	.byte	'?'
	.ascii	"_temp_1721\0"
	.align
_Label_1736:
	.byte	'?'
	.ascii	"_temp_1720\0"
	.align
_Label_1737:
	.byte	'?'
	.ascii	"_temp_1719\0"
	.align
_Label_1738:
	.byte	'?'
	.ascii	"_temp_1718\0"
	.align
_Label_1739:
	.byte	'?'
	.ascii	"_temp_1717\0"
	.align
_Label_1740:
	.byte	'?'
	.ascii	"_temp_1716\0"
	.align
_Label_1741:
	.byte	'?'
	.ascii	"_temp_1715\0"
	.align
_Label_1742:
	.byte	'?'
	.ascii	"_temp_1714\0"
	.align
_Label_1743:
	.byte	'?'
	.ascii	"_temp_1713\0"
	.align
_Label_1744:
	.byte	'?'
	.ascii	"_temp_1710\0"
	.align
_Label_1745:
	.byte	'?'
	.ascii	"_temp_1709\0"
	.align
_Label_1746:
	.byte	'?'
	.ascii	"_temp_1708\0"
	.align
_Label_1747:
	.byte	'?'
	.ascii	"_temp_1707\0"
	.align
_Label_1748:
	.byte	'?'
	.ascii	"_temp_1706\0"
	.align
_Label_1749:
	.byte	'?'
	.ascii	"_temp_1705\0"
	.align
_Label_1750:
	.byte	'?'
	.ascii	"_temp_1704\0"
	.align
_Label_1751:
	.byte	'?'
	.ascii	"_temp_1703\0"
	.align
_Label_1752:
	.byte	'?'
	.ascii	"_temp_1702\0"
	.align
_Label_1753:
	.byte	'?'
	.ascii	"_temp_1701\0"
	.align
_Label_1754:
	.byte	'?'
	.ascii	"_temp_1700\0"
	.align
_Label_1755:
	.byte	'?'
	.ascii	"_temp_1699\0"
	.align
_Label_1756:
	.byte	'?'
	.ascii	"_temp_1698\0"
	.align
_Label_1757:
	.byte	'?'
	.ascii	"_temp_1697\0"
	.align
_Label_1758:
	.byte	'?'
	.ascii	"_temp_1696\0"
	.align
_Label_1759:
	.byte	'?'
	.ascii	"_temp_1695\0"
	.align
_Label_1760:
	.byte	'?'
	.ascii	"_temp_1694\0"
	.align
_Label_1761:
	.byte	'?'
	.ascii	"_temp_1693\0"
	.align
_Label_1762:
	.byte	'?'
	.ascii	"_temp_1692\0"
	.align
_Label_1763:
	.byte	'?'
	.ascii	"_temp_1691\0"
	.align
_Label_1764:
	.byte	'?'
	.ascii	"_temp_1690\0"
	.align
_Label_1765:
	.byte	'?'
	.ascii	"_temp_1689\0"
	.align
_Label_1766:
	.byte	'?'
	.ascii	"_temp_1688\0"
	.align
_Label_1767:
	.byte	'?'
	.ascii	"_temp_1687\0"
	.align
_Label_1768:
	.byte	'?'
	.ascii	"_temp_1686\0"
	.align
_Label_1769:
	.byte	'?'
	.ascii	"_temp_1685\0"
	.align
_Label_1770:
	.byte	'?'
	.ascii	"_temp_1684\0"
	.align
_Label_1771:
	.byte	'?'
	.ascii	"_temp_1676\0"
	.align
_Label_1772:
	.byte	'?'
	.ascii	"_temp_1675\0"
	.align
_Label_1773:
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
_Label_4446:
	push	r0
	sub	r1,1,r1
	bne	_Label_4446
	mov	2279,r13		! source line 2279
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2280,r13		! source line 2280
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1779 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-100]
!   Data Move: _temp_1778 = *_temp_1779  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if intIsZero (_temp_1778) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1780 = _temp_1778 + 124
	load	[r14+-104],r1
	add	r1,124,r1
	store	r1,[r14+-96]
!   Move address of _temp_1780 [fileDesc ] into _temp_1781
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
!   Data Move: _temp_1777 = *_temp_1781  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_1777) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1782 = _temp_1777 + 12
	load	[r14+-108],r1
	add	r1,12,r1
	store	r1,[r14+-88]
!   Data Move: _temp_1776 = *_temp_1782  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if _temp_1776 != 2 then goto _Label_1775		(int)
	load	[r14+-112],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1775
!	jmp	_Label_1774
_Label_1774:
! THEN...
	mov	2281,r13		! source line 2281
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2281,r13		! source line 2281
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1784 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-80]
!   Data Move: _temp_1783 = *_temp_1784  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if intIsZero (_temp_1783) then goto _runtimeErrorNullPointer
	load	[r14+-84],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1785 = _temp_1783 + 124
	load	[r14+-84],r1
	add	r1,124,r1
	store	r1,[r14+-76]
!   Move address of _temp_1785 [fileDesc ] into _temp_1786
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
!   Data Move: *_temp_1786 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-72],r2
	store	r1,[r2]
	jmp	_Label_1787
_Label_1775:
! ELSE...
	mov	2283,r13		! source line 2283
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	2283,r13		! source line 2283
	mov	"\0\0IF",r10
!   if fileDesc >= 0 then goto _Label_1791		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1791
	jmp	_Label_1788
_Label_1791:
!   if fileDesc <= 9 then goto _Label_1790		(int)
	load	[r14+8],r1
	mov	9,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1790
	jmp	_Label_1788
_Label_1790:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1794 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-60]
!   Data Move: _temp_1793 = *_temp_1794  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_1793) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1795 = _temp_1793 + 124
	load	[r14+-64],r1
	add	r1,124,r1
	store	r1,[r14+-56]
!   Move address of _temp_1795 [fileDesc ] into _temp_1796
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
!   Data Move: _temp_1792 = *_temp_1796  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_1792) then goto _Label_1788
	load	[r14+-68],r1
	cmp	r1,r0
	be	_Label_1788
	jmp	_Label_1789
_Label_1788:
	jmp	_Label_1797
_Label_1789:
! ELSE...
	mov	2286,r13		! source line 2286
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	2286,r13		! source line 2286
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1800 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-40]
!   Data Move: _temp_1799 = *_temp_1800  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_1799) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1801 = _temp_1799 + 124
	load	[r14+-44],r1
	add	r1,124,r1
	store	r1,[r14+-36]
!   Move address of _temp_1801 [fileDesc ] into _temp_1802
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
!   Data Move: _temp_1798 = *_temp_1802  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_1803 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_1798  sizeInBytes=4
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
	mov	2287,r13		! source line 2287
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1805 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_1804 = *_temp_1805  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_1804) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1806 = _temp_1804 + 124
	load	[r14+-24],r1
	add	r1,124,r1
	store	r1,[r14+-16]
!   Move address of _temp_1806 [fileDesc ] into _temp_1807
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
!   Data Move: *_temp_1807 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-12],r2
	store	r1,[r2]
! END IF...
_Label_1797:
! END IF...
_Label_1787:
! RETURN STATEMENT...
	mov	2280,r13		! source line 2280
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
	.word	_Label_1808
	.word	4		! total size of parameters
	.word	112		! frame size = 112
	.word	_Label_1809
	.word	8
	.word	4
	.word	_Label_1810
	.word	-12
	.word	4
	.word	_Label_1811
	.word	-16
	.word	4
	.word	_Label_1812
	.word	-20
	.word	4
	.word	_Label_1813
	.word	-24
	.word	4
	.word	_Label_1814
	.word	-28
	.word	4
	.word	_Label_1815
	.word	-32
	.word	4
	.word	_Label_1816
	.word	-36
	.word	4
	.word	_Label_1817
	.word	-40
	.word	4
	.word	_Label_1818
	.word	-44
	.word	4
	.word	_Label_1819
	.word	-48
	.word	4
	.word	_Label_1820
	.word	-52
	.word	4
	.word	_Label_1821
	.word	-56
	.word	4
	.word	_Label_1822
	.word	-60
	.word	4
	.word	_Label_1823
	.word	-64
	.word	4
	.word	_Label_1824
	.word	-68
	.word	4
	.word	_Label_1825
	.word	-72
	.word	4
	.word	_Label_1826
	.word	-76
	.word	4
	.word	_Label_1827
	.word	-80
	.word	4
	.word	_Label_1828
	.word	-84
	.word	4
	.word	_Label_1829
	.word	-88
	.word	4
	.word	_Label_1830
	.word	-92
	.word	4
	.word	_Label_1831
	.word	-96
	.word	4
	.word	_Label_1832
	.word	-100
	.word	4
	.word	_Label_1833
	.word	-104
	.word	4
	.word	_Label_1834
	.word	-108
	.word	4
	.word	_Label_1835
	.word	-112
	.word	4
	.word	0
_Label_1808:
	.ascii	"Handle_Sys_Close\0"
	.align
_Label_1809:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_1810:
	.byte	'?'
	.ascii	"_temp_1807\0"
	.align
_Label_1811:
	.byte	'?'
	.ascii	"_temp_1806\0"
	.align
_Label_1812:
	.byte	'?'
	.ascii	"_temp_1805\0"
	.align
_Label_1813:
	.byte	'?'
	.ascii	"_temp_1804\0"
	.align
_Label_1814:
	.byte	'?'
	.ascii	"_temp_1803\0"
	.align
_Label_1815:
	.byte	'?'
	.ascii	"_temp_1802\0"
	.align
_Label_1816:
	.byte	'?'
	.ascii	"_temp_1801\0"
	.align
_Label_1817:
	.byte	'?'
	.ascii	"_temp_1800\0"
	.align
_Label_1818:
	.byte	'?'
	.ascii	"_temp_1799\0"
	.align
_Label_1819:
	.byte	'?'
	.ascii	"_temp_1798\0"
	.align
_Label_1820:
	.byte	'?'
	.ascii	"_temp_1796\0"
	.align
_Label_1821:
	.byte	'?'
	.ascii	"_temp_1795\0"
	.align
_Label_1822:
	.byte	'?'
	.ascii	"_temp_1794\0"
	.align
_Label_1823:
	.byte	'?'
	.ascii	"_temp_1793\0"
	.align
_Label_1824:
	.byte	'?'
	.ascii	"_temp_1792\0"
	.align
_Label_1825:
	.byte	'?'
	.ascii	"_temp_1786\0"
	.align
_Label_1826:
	.byte	'?'
	.ascii	"_temp_1785\0"
	.align
_Label_1827:
	.byte	'?'
	.ascii	"_temp_1784\0"
	.align
_Label_1828:
	.byte	'?'
	.ascii	"_temp_1783\0"
	.align
_Label_1829:
	.byte	'?'
	.ascii	"_temp_1782\0"
	.align
_Label_1830:
	.byte	'?'
	.ascii	"_temp_1781\0"
	.align
_Label_1831:
	.byte	'?'
	.ascii	"_temp_1780\0"
	.align
_Label_1832:
	.byte	'?'
	.ascii	"_temp_1779\0"
	.align
_Label_1833:
	.byte	'?'
	.ascii	"_temp_1778\0"
	.align
_Label_1834:
	.byte	'?'
	.ascii	"_temp_1777\0"
	.align
_Label_1835:
	.byte	'?'
	.ascii	"_temp_1776\0"
	.align
! 
! ===============  FUNCTION copyUnalignedWord  ===============
! 
_function_190_copyUnalignedWord:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_190_copyUnalignedWord,r1
	push	r1
	mov	9,r1
_Label_4447:
	push	r0
	sub	r1,1,r1
	bne	_Label_4447
	mov	2883,r13		! source line 2883
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2885,r13		! source line 2885
	mov	"\0\0AS",r10
!   from = fromPtr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2886,r13		! source line 2886
	mov	"\0\0AS",r10
!   dest = destPtr		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	2887,r13		! source line 2887
	mov	"\0\0AS",r10
!   if intIsZero (dest) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (from) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1836 = *from  (sizeInBytes=1)
	load	[r14+-40],r1
	loadb	[r1],r1
	storeb	r1,[r14+-12]
!   Data Move: *dest = _temp_1836  (sizeInBytes=1)
	loadb	[r14+-12],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2888,r13		! source line 2888
	mov	"\0\0AS",r10
!   _temp_1837 = dest + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   if intIsZero (_temp_1837) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1839 = from + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   if intIsZero (_temp_1839) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1838 = *_temp_1839  (sizeInBytes=1)
	load	[r14+-32],r1
	loadb	[r1],r1
	storeb	r1,[r14+-11]
!   Data Move: *_temp_1837 = _temp_1838  (sizeInBytes=1)
	loadb	[r14+-11],r1
	load	[r14+-36],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2889,r13		! source line 2889
	mov	"\0\0AS",r10
!   _temp_1840 = dest + 2		(int)
	load	[r14+-44],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   if intIsZero (_temp_1840) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1842 = from + 2		(int)
	load	[r14+-40],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   if intIsZero (_temp_1842) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1841 = *_temp_1842  (sizeInBytes=1)
	load	[r14+-24],r1
	loadb	[r1],r1
	storeb	r1,[r14+-10]
!   Data Move: *_temp_1840 = _temp_1841  (sizeInBytes=1)
	loadb	[r14+-10],r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2890,r13		! source line 2890
	mov	"\0\0AS",r10
!   _temp_1843 = dest + 3		(int)
	load	[r14+-44],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   if intIsZero (_temp_1843) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1845 = from + 3		(int)
	load	[r14+-40],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
!   if intIsZero (_temp_1845) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1844 = *_temp_1845  (sizeInBytes=1)
	load	[r14+-16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *_temp_1843 = _temp_1844  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! RETURN STATEMENT...
	mov	2890,r13		! source line 2890
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_190_copyUnalignedWord:
	.word	_sourceFileName
	.word	_Label_1846
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1847
	.word	8
	.word	4
	.word	_Label_1848
	.word	12
	.word	4
	.word	_Label_1849
	.word	-16
	.word	4
	.word	_Label_1850
	.word	-9
	.word	1
	.word	_Label_1851
	.word	-20
	.word	4
	.word	_Label_1852
	.word	-24
	.word	4
	.word	_Label_1853
	.word	-10
	.word	1
	.word	_Label_1854
	.word	-28
	.word	4
	.word	_Label_1855
	.word	-32
	.word	4
	.word	_Label_1856
	.word	-11
	.word	1
	.word	_Label_1857
	.word	-36
	.word	4
	.word	_Label_1858
	.word	-12
	.word	1
	.word	_Label_1859
	.word	-40
	.word	4
	.word	_Label_1860
	.word	-44
	.word	4
	.word	0
_Label_1846:
	.ascii	"copyUnalignedWord\0"
	.align
_Label_1847:
	.byte	'P'
	.ascii	"destPtr\0"
	.align
_Label_1848:
	.byte	'P'
	.ascii	"fromPtr\0"
	.align
_Label_1849:
	.byte	'?'
	.ascii	"_temp_1845\0"
	.align
_Label_1850:
	.byte	'C'
	.ascii	"_temp_1844\0"
	.align
_Label_1851:
	.byte	'?'
	.ascii	"_temp_1843\0"
	.align
_Label_1852:
	.byte	'?'
	.ascii	"_temp_1842\0"
	.align
_Label_1853:
	.byte	'C'
	.ascii	"_temp_1841\0"
	.align
_Label_1854:
	.byte	'?'
	.ascii	"_temp_1840\0"
	.align
_Label_1855:
	.byte	'?'
	.ascii	"_temp_1839\0"
	.align
_Label_1856:
	.byte	'C'
	.ascii	"_temp_1838\0"
	.align
_Label_1857:
	.byte	'?'
	.ascii	"_temp_1837\0"
	.align
_Label_1858:
	.byte	'C'
	.ascii	"_temp_1836\0"
	.align
_Label_1859:
	.byte	'P'
	.ascii	"from\0"
	.align
_Label_1860:
	.byte	'P'
	.ascii	"dest\0"
	.align
! 
! ===============  FUNCTION printFCB  ===============
! 
_function_189_printFCB:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_189_printFCB,r1
	push	r1
	mov	3,r1
_Label_4448:
	push	r0
	sub	r1,1,r1
	bne	_Label_4448
	mov	2893,r13		! source line 2893
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1862 = fcb + 12
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-12]
!   Data Move: _temp_1861 = *_temp_1862  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1861  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2894,r13		! source line 2894
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	2895,r13		! source line 2895
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	2895,r13		! source line 2895
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_189_printFCB:
	.word	_sourceFileName
	.word	_Label_1863
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1864
	.word	8
	.word	4
	.word	_Label_1865
	.word	-12
	.word	4
	.word	_Label_1866
	.word	-16
	.word	4
	.word	0
_Label_1863:
	.ascii	"printFCB\0"
	.align
_Label_1864:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_1865:
	.byte	'?'
	.ascii	"_temp_1862\0"
	.align
_Label_1866:
	.byte	'?'
	.ascii	"_temp_1861\0"
	.align
! 
! ===============  FUNCTION printOpen  ===============
! 
_function_188_printOpen:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_188_printOpen,r1
	push	r1
	mov	4,r1
_Label_4449:
	push	r0
	sub	r1,1,r1
	bne	_Label_4449
	mov	2898,r13		! source line 2898
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1867 = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1867  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2899,r13		! source line 2899
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1868 = open		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1868  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2900,r13		! source line 2900
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1869 = _StringConst_43
	set	_StringConst_43,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1869  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2901,r13		! source line 2901
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2902,r13		! source line 2902
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
	mov	2902,r13		! source line 2902
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_188_printOpen:
	.word	_sourceFileName
	.word	_Label_1870
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1871
	.word	8
	.word	4
	.word	_Label_1872
	.word	-12
	.word	4
	.word	_Label_1873
	.word	-16
	.word	4
	.word	_Label_1874
	.word	-20
	.word	4
	.word	0
_Label_1870:
	.ascii	"printOpen\0"
	.align
_Label_1871:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_1872:
	.byte	'?'
	.ascii	"_temp_1869\0"
	.align
_Label_1873:
	.byte	'?'
	.ascii	"_temp_1868\0"
	.align
_Label_1874:
	.byte	'?'
	.ascii	"_temp_1867\0"
	.align
! 
! ===============  FUNCTION SerialHandlerFunction  ===============
! 
_function_187_SerialHandlerFunction:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_187_SerialHandlerFunction,r1
	push	r1
	mov	2,r1
_Label_4450:
	push	r0
	sub	r1,1,r1
	bne	_Label_4450
	mov	2945,r13		! source line 2945
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2946,r13		! source line 2946
	mov	"\0\0SE",r10
!   _temp_1875 = &_P_Kernel_serialDriver
	set	_P_Kernel_serialDriver,r1
	store	r1,[r14+-12]
!   Send message SerialHandler
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! RETURN STATEMENT...
	mov	2946,r13		! source line 2946
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_187_SerialHandlerFunction:
	.word	_sourceFileName
	.word	_Label_1876
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_1877
	.word	8
	.word	4
	.word	_Label_1878
	.word	-12
	.word	4
	.word	0
_Label_1876:
	.ascii	"SerialHandlerFunction\0"
	.align
_Label_1877:
	.byte	'I'
	.ascii	"ignore\0"
	.align
_Label_1878:
	.byte	'?'
	.ascii	"_temp_1875\0"
	.align
! 
! ===============  CLASS SerialDriver  ===============
! 
! Dispatch Table:
! 
_P_Kernel_SerialDriver:
	.word	_Label_1879
	jmp	_Method_P_Kernel_SerialDriver_1	! 4:	Init
	jmp	_Method_P_Kernel_SerialDriver_2	! 8:	PutChar
	jmp	_Method_P_Kernel_SerialDriver_3	! 12:	GetChar
	jmp	_Method_P_Kernel_SerialDriver_4	! 16:	SerialHandler
	.word	0
! 
! Class descriptor:
! 
_Label_1879:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1880
	.word	_sourceFileName
	.word	132		! line number
	.word	4308		! size of instances, in bytes
	.word	_P_Kernel_SerialDriver
	.word	_P_System_Object
	.word	0
_Label_1880:
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
	mov	33,r1
_Label_4451:
	push	r0
	sub	r1,1,r1
	bne	_Label_4451
	mov	2953,r13		! source line 2953
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1881 = _StringConst_44
	set	_StringConst_44,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=_temp_1881  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+0]
!   Call the function
	mov	2956,r13		! source line 2956
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2957,r13		! source line 2957
	mov	"\0\0AS",r10
!   serial_status_word_address = 16776960		(4 bytes)
	set	16776960,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	2958,r13		! source line 2958
	mov	"\0\0AS",r10
!   serial_data_word_address = 16776964		(4 bytes)
	set	16776964,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! ASSIGNMENT STATEMENT...
	mov	2959,r13		! source line 2959
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: serialLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,12,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   serialLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! SEND STATEMENT...
	mov	2960,r13		! source line 2960
	mov	"\0\0SE",r10
!   _temp_1883 = &serialLock
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-116]
!   Send message Init
	load	[r14+-116],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2961,r13		! source line 2961
	mov	"\0\0AS",r10
!   _temp_1884 = &getBuffer
	load	[r14+8],r1
	add	r1,32,r1
	store	r1,[r14+-112]
!   NEW ARRAY Constructor...
!   _temp_1886 = &_temp_1885
	add	r14,-108,r1
	store	r1,[r14+-92]
!   _temp_1886 = _temp_1886 + 4
	load	[r14+-92],r1
	add	r1,4,r1
	store	r1,[r14+-92]
!   Next value...
	mov	10,r1
	store	r1,[r14+-88]
_Label_1888:
!   Data Move: *_temp_1886 = 97  (sizeInBytes=1)
	mov	97,r1
	load	[r14+-92],r2
	storeb	r1,[r2]
!   _temp_1886 = _temp_1886 + 1
	load	[r14+-92],r1
	add	r1,1,r1
	store	r1,[r14+-92]
!   _temp_1887 = _temp_1887 + -1
	load	[r14+-88],r1
	add	r1,-1,r1
	store	r1,[r14+-88]
!   if intNotZero (_temp_1887) then goto _Label_1888
	load	[r14+-88],r1
	cmp	r1,r0
	bne	_Label_1888
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-108]
!   _temp_1889 = &_temp_1885
	add	r14,-108,r1
	store	r1,[r14+-84]
!   make sure array has size 10
	load	[r14+-112],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_4452
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4452:
!   make sure array has size 10
	load	[r14+-84],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1884 = *_temp_1889  (sizeInBytes=16)
	load	[r14+-84],r5
	load	[r14+-112],r4
	load	[r5],r1
	store	r1,[r4]
	load	[r5+4],r1
	store	r1,[r4+4]
	load	[r5+8],r1
	store	r1,[r4+8]
	load	[r5+12],r1
	store	r1,[r4+12]
! ASSIGNMENT STATEMENT...
	mov	2962,r13		! source line 2962
	mov	"\0\0AS",r10
!   getBufferSize = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+48]
! ASSIGNMENT STATEMENT...
	mov	2963,r13		! source line 2963
	mov	"\0\0AS",r10
!   putBufferSize = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+92]
! ASSIGNMENT STATEMENT...
	mov	2964,r13		! source line 2964
	mov	"\0\0AS",r10
!   getBufferNextIn = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+52]
! ASSIGNMENT STATEMENT...
	mov	2965,r13		! source line 2965
	mov	"\0\0AS",r10
!   getBufferNextOut = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+56]
! ASSIGNMENT STATEMENT...
	mov	2966,r13		! source line 2966
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: getCharacterAvail = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,60,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   getCharacterAvail = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+60]
! SEND STATEMENT...
	mov	2967,r13		! source line 2967
	mov	"\0\0SE",r10
!   _temp_1891 = &getCharacterAvail
	load	[r14+8],r1
	add	r1,60,r1
	store	r1,[r14+-76]
!   Send message Init
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2968,r13		! source line 2968
	mov	"\0\0AS",r10
!   _temp_1892 = &putBuffer
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-72]
!   NEW ARRAY Constructor...
!   _temp_1894 = &_temp_1893
	add	r14,-68,r1
	store	r1,[r14+-52]
!   _temp_1894 = _temp_1894 + 4
	load	[r14+-52],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   Next value...
	mov	10,r1
	store	r1,[r14+-48]
_Label_1896:
!   Data Move: *_temp_1894 = 97  (sizeInBytes=1)
	mov	97,r1
	load	[r14+-52],r2
	storeb	r1,[r2]
!   _temp_1894 = _temp_1894 + 1
	load	[r14+-52],r1
	add	r1,1,r1
	store	r1,[r14+-52]
!   _temp_1895 = _temp_1895 + -1
	load	[r14+-48],r1
	add	r1,-1,r1
	store	r1,[r14+-48]
!   if intNotZero (_temp_1895) then goto _Label_1896
	load	[r14+-48],r1
	cmp	r1,r0
	bne	_Label_1896
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-68]
!   _temp_1897 = &_temp_1893
	add	r14,-68,r1
	store	r1,[r14+-44]
!   make sure array has size 10
	load	[r14+-72],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_4453
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4453:
!   make sure array has size 10
	load	[r14+-44],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1892 = *_temp_1897  (sizeInBytes=16)
	load	[r14+-44],r5
	load	[r14+-72],r4
	load	[r5],r1
	store	r1,[r4]
	load	[r5+4],r1
	store	r1,[r4+4]
	load	[r5+8],r1
	store	r1,[r4+8]
	load	[r5+12],r1
	store	r1,[r4+12]
! ASSIGNMENT STATEMENT...
	mov	2969,r13		! source line 2969
	mov	"\0\0AS",r10
!   putBufferNextIn = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+96]
! ASSIGNMENT STATEMENT...
	mov	2970,r13		! source line 2970
	mov	"\0\0AS",r10
!   putBufferNextOut = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+100]
! ASSIGNMENT STATEMENT...
	mov	2971,r13		! source line 2971
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: putBufferSem = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,104,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   putBufferSem = _P_Kernel_Semaphore
	set	_P_Kernel_Semaphore,r1
	load	[r14+8],r2
	store	r1,[r2+104]
! SEND STATEMENT...
	mov	2972,r13		! source line 2972
	mov	"\0\0SE",r10
!   _temp_1899 = &putBufferSem
	load	[r14+8],r1
	add	r1,104,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=10  sizeInBytes=4
	mov	10,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2973,r13		! source line 2973
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: serialNeedsAttention = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,124,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   serialNeedsAttention = _P_Kernel_Semaphore
	set	_P_Kernel_Semaphore,r1
	load	[r14+8],r2
	store	r1,[r2+124]
! SEND STATEMENT...
	mov	2974,r13		! source line 2974
	mov	"\0\0SE",r10
!   _temp_1901 = &serialNeedsAttention
	load	[r14+8],r1
	add	r1,124,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2976,r13		! source line 2976
	mov	"\0\0AS",r10
	mov	2976,r13		! source line 2976
	mov	"\0\0SE",r10
!   _temp_1902 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-24]
!   Send message GetANewThread
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=newThread  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-128]
! SEND STATEMENT...
	mov	2977,r13		! source line 2977
	mov	"\0\0SE",r10
!   _temp_1903 = _StringConst_45
	set	_StringConst_45,r1
	store	r1,[r14+-20]
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_1903  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-128],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2978,r13		! source line 2978
	mov	"\0\0AS",r10
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1904 = newThread + 76
	load	[r14+-128],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1904 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2979,r13		! source line 2979
	mov	"\0\0SE",r10
!   _temp_1905 = _function_187_SerialHandlerFunction
	set	_function_187_SerialHandlerFunction,r1
	store	r1,[r14+-12]
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_1905  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-128],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2981,r13		! source line 2981
	mov	"\0\0AS",r10
!   _P_Kernel_serialHasBeenInitialized = 1		(1 byte)
	mov	1,r1
	set	_P_Kernel_serialHasBeenInitialized,r2
	storeb	r1,[r2]
! RETURN STATEMENT...
	mov	2981,r13		! source line 2981
	mov	"\0\0RE",r10
	add	r15,136,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_SerialDriver_1:
	.word	_sourceFileName
	.word	_Label_1906
	.word	4		! total size of parameters
	.word	132		! frame size = 132
	.word	_Label_1907
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1908
	.word	-12
	.word	4
	.word	_Label_1909
	.word	-16
	.word	4
	.word	_Label_1910
	.word	-20
	.word	4
	.word	_Label_1911
	.word	-24
	.word	4
	.word	_Label_1912
	.word	-28
	.word	4
	.word	_Label_1913
	.word	-32
	.word	4
	.word	_Label_1914
	.word	-36
	.word	4
	.word	_Label_1915
	.word	-40
	.word	4
	.word	_Label_1916
	.word	-44
	.word	4
	.word	_Label_1917
	.word	-48
	.word	4
	.word	_Label_1918
	.word	-52
	.word	4
	.word	_Label_1919
	.word	-68
	.word	16
	.word	_Label_1920
	.word	-72
	.word	4
	.word	_Label_1921
	.word	-76
	.word	4
	.word	_Label_1922
	.word	-80
	.word	4
	.word	_Label_1923
	.word	-84
	.word	4
	.word	_Label_1924
	.word	-88
	.word	4
	.word	_Label_1925
	.word	-92
	.word	4
	.word	_Label_1926
	.word	-108
	.word	16
	.word	_Label_1927
	.word	-112
	.word	4
	.word	_Label_1928
	.word	-116
	.word	4
	.word	_Label_1929
	.word	-120
	.word	4
	.word	_Label_1930
	.word	-124
	.word	4
	.word	_Label_1931
	.word	-128
	.word	4
	.word	0
_Label_1906:
	.ascii	"SerialDriver"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1907:
	.ascii	"Pself\0"
	.align
_Label_1908:
	.byte	'?'
	.ascii	"_temp_1905\0"
	.align
_Label_1909:
	.byte	'?'
	.ascii	"_temp_1904\0"
	.align
_Label_1910:
	.byte	'?'
	.ascii	"_temp_1903\0"
	.align
_Label_1911:
	.byte	'?'
	.ascii	"_temp_1902\0"
	.align
_Label_1912:
	.byte	'?'
	.ascii	"_temp_1901\0"
	.align
_Label_1913:
	.byte	'?'
	.ascii	"_temp_1900\0"
	.align
_Label_1914:
	.byte	'?'
	.ascii	"_temp_1899\0"
	.align
_Label_1915:
	.byte	'?'
	.ascii	"_temp_1898\0"
	.align
_Label_1916:
	.byte	'?'
	.ascii	"_temp_1897\0"
	.align
_Label_1917:
	.byte	'?'
	.ascii	"_temp_1895\0"
	.align
_Label_1918:
	.byte	'?'
	.ascii	"_temp_1894\0"
	.align
_Label_1919:
	.byte	'?'
	.ascii	"_temp_1893\0"
	.align
_Label_1920:
	.byte	'?'
	.ascii	"_temp_1892\0"
	.align
_Label_1921:
	.byte	'?'
	.ascii	"_temp_1891\0"
	.align
_Label_1922:
	.byte	'?'
	.ascii	"_temp_1890\0"
	.align
_Label_1923:
	.byte	'?'
	.ascii	"_temp_1889\0"
	.align
_Label_1924:
	.byte	'?'
	.ascii	"_temp_1887\0"
	.align
_Label_1925:
	.byte	'?'
	.ascii	"_temp_1886\0"
	.align
_Label_1926:
	.byte	'?'
	.ascii	"_temp_1885\0"
	.align
_Label_1927:
	.byte	'?'
	.ascii	"_temp_1884\0"
	.align
_Label_1928:
	.byte	'?'
	.ascii	"_temp_1883\0"
	.align
_Label_1929:
	.byte	'?'
	.ascii	"_temp_1882\0"
	.align
_Label_1930:
	.byte	'?'
	.ascii	"_temp_1881\0"
	.align
_Label_1931:
	.byte	'P'
	.ascii	"newThread\0"
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
	mov	8,r1
_Label_4454:
	push	r0
	sub	r1,1,r1
	bne	_Label_4454
	mov	2984,r13		! source line 2984
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2985,r13		! source line 2985
	mov	"\0\0SE",r10
!   _temp_1932 = &putBufferSem
	load	[r14+8],r1
	add	r1,104,r1
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
	mov	2986,r13		! source line 2986
	mov	"\0\0SE",r10
!   _temp_1933 = &serialLock
	load	[r14+8],r1
	add	r1,12,r1
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
	mov	2987,r13		! source line 2987
	mov	"\0\0AS",r10
!   _temp_1934 = &putBuffer
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Move address of _temp_1934 [putBufferNextIn ] into _temp_1935
!     make sure index expr is >= 0
	load	[r14+8],r2
	load	[r2+96],r2
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
!   Data Move: *_temp_1935 = value  (sizeInBytes=1)
	loadb	[r14+12],r1
	load	[r14+-24],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2988,r13		! source line 2988
	mov	"\0\0AS",r10
!   _temp_1936 = putBufferNextIn + 1		(int)
	load	[r14+8],r1
	load	[r1+96],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   putBufferNextIn = _temp_1936 rem 10		(int)
	load	[r14+-20],r1
	mov	10,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+96]
! ASSIGNMENT STATEMENT...
	mov	2989,r13		! source line 2989
	mov	"\0\0AS",r10
!   putBufferSize = putBufferSize + 1		(int)
	load	[r14+8],r1
	load	[r1+92],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+92]
! SEND STATEMENT...
	mov	2990,r13		! source line 2990
	mov	"\0\0SE",r10
!   _temp_1937 = &serialLock
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	2991,r13		! source line 2991
	mov	"\0\0SE",r10
!   _temp_1938 = &serialNeedsAttention
	load	[r14+8],r1
	add	r1,124,r1
	store	r1,[r14+-12]
!   Send message Up
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2991,r13		! source line 2991
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_SerialDriver_2:
	.word	_sourceFileName
	.word	_Label_1939
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1940
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1941
	.word	12
	.word	1
	.word	_Label_1942
	.word	-12
	.word	4
	.word	_Label_1943
	.word	-16
	.word	4
	.word	_Label_1944
	.word	-20
	.word	4
	.word	_Label_1945
	.word	-24
	.word	4
	.word	_Label_1946
	.word	-28
	.word	4
	.word	_Label_1947
	.word	-32
	.word	4
	.word	_Label_1948
	.word	-36
	.word	4
	.word	0
_Label_1939:
	.ascii	"SerialDriver"
	.ascii	"::"
	.ascii	"PutChar\0"
	.align
_Label_1940:
	.ascii	"Pself\0"
	.align
_Label_1941:
	.byte	'C'
	.ascii	"value\0"
	.align
_Label_1942:
	.byte	'?'
	.ascii	"_temp_1938\0"
	.align
_Label_1943:
	.byte	'?'
	.ascii	"_temp_1937\0"
	.align
_Label_1944:
	.byte	'?'
	.ascii	"_temp_1936\0"
	.align
_Label_1945:
	.byte	'?'
	.ascii	"_temp_1935\0"
	.align
_Label_1946:
	.byte	'?'
	.ascii	"_temp_1934\0"
	.align
_Label_1947:
	.byte	'?'
	.ascii	"_temp_1933\0"
	.align
_Label_1948:
	.byte	'?'
	.ascii	"_temp_1932\0"
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
	mov	10,r1
_Label_4455:
	push	r0
	sub	r1,1,r1
	bne	_Label_4455
	mov	2994,r13		! source line 2994
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2997,r13		! source line 2997
	mov	"\0\0SE",r10
!   _temp_1949 = &serialLock
	load	[r14+8],r1
	add	r1,12,r1
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
	mov	2998,r13		! source line 2998
	mov	"\0\0WH",r10
_Label_1950:
!   if intIsZero (getBufferSize) then goto _Label_1951
	load	[r14+8],r1
	load	[r1+48],r1
	cmp	r1,r0
	be	_Label_1951
	jmp	_Label_1952
_Label_1951:
	mov	2998,r13		! source line 2998
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2999,r13		! source line 2999
	mov	"\0\0SE",r10
!   _temp_1953 = &serialLock
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-36]
!   _temp_1954 = &getCharacterAvail
	load	[r14+8],r1
	add	r1,60,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_1953  sizeInBytes=4
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
	jmp	_Label_1950
_Label_1952:
! ASSIGNMENT STATEMENT...
	mov	3001,r13		! source line 3001
	mov	"\0\0AS",r10
!   _temp_1955 = &getBuffer
	load	[r14+8],r1
	add	r1,32,r1
	store	r1,[r14+-28]
!   Move address of _temp_1955 [getBufferNextOut ] into _temp_1956
!     make sure index expr is >= 0
	load	[r14+8],r2
	load	[r2+56],r2
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
!   Data Move: c = *_temp_1956  (sizeInBytes=1)
	load	[r14+-24],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
! ASSIGNMENT STATEMENT...
	mov	3002,r13		! source line 3002
	mov	"\0\0AS",r10
!   getBufferSize = getBufferSize - 1		(int)
	load	[r14+8],r1
	load	[r1+48],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+48]
! ASSIGNMENT STATEMENT...
	mov	3003,r13		! source line 3003
	mov	"\0\0AS",r10
!   _temp_1957 = getBufferNextOut + 1		(int)
	load	[r14+8],r1
	load	[r1+56],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   getBufferNextOut = _temp_1957 rem 10		(int)
	load	[r14+-20],r1
	mov	10,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+56]
! SEND STATEMENT...
	mov	3004,r13		! source line 3004
	mov	"\0\0SE",r10
!   _temp_1958 = &serialLock
	load	[r14+8],r1
	add	r1,12,r1
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
	mov	3005,r13		! source line 3005
	mov	"\0\0RE",r10
!   ReturnResult: c  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,44,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_SerialDriver_3:
	.word	_sourceFileName
	.word	_Label_1959
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_1960
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1961
	.word	-16
	.word	4
	.word	_Label_1962
	.word	-20
	.word	4
	.word	_Label_1963
	.word	-24
	.word	4
	.word	_Label_1964
	.word	-28
	.word	4
	.word	_Label_1965
	.word	-32
	.word	4
	.word	_Label_1966
	.word	-36
	.word	4
	.word	_Label_1967
	.word	-40
	.word	4
	.word	_Label_1968
	.word	-9
	.word	1
	.word	0
_Label_1959:
	.ascii	"SerialDriver"
	.ascii	"::"
	.ascii	"GetChar\0"
	.align
_Label_1960:
	.ascii	"Pself\0"
	.align
_Label_1961:
	.byte	'?'
	.ascii	"_temp_1958\0"
	.align
_Label_1962:
	.byte	'?'
	.ascii	"_temp_1957\0"
	.align
_Label_1963:
	.byte	'?'
	.ascii	"_temp_1956\0"
	.align
_Label_1964:
	.byte	'?'
	.ascii	"_temp_1955\0"
	.align
_Label_1965:
	.byte	'?'
	.ascii	"_temp_1954\0"
	.align
_Label_1966:
	.byte	'?'
	.ascii	"_temp_1953\0"
	.align
_Label_1967:
	.byte	'?'
	.ascii	"_temp_1949\0"
	.align
_Label_1968:
	.byte	'C'
	.ascii	"c\0"
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
	mov	24,r1
_Label_4456:
	push	r0
	sub	r1,1,r1
	bne	_Label_4456
	mov	3008,r13		! source line 3008
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	3012,r13		! source line 3012
	mov	"\0\0WH",r10
_Label_1969:
!   _temp_1972 = _P_Kernel_serialHasBeenInitialized XOR 0		(bool)
	set	_P_Kernel_serialHasBeenInitialized,r1
	loadb	[r1],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_1972 then goto _Label_1971 else goto _Label_1970
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1970
	jmp	_Label_1971
_Label_1970:
	mov	3012,r13		! source line 3012
	mov	"\0\0WB",r10
! END WHILE...
	jmp	_Label_1969
_Label_1971:
! WHILE STATEMENT...
	mov	3014,r13		! source line 3014
	mov	"\0\0WH",r10
_Label_1973:
!	jmp	_Label_1974
_Label_1974:
	mov	3014,r13		! source line 3014
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	3015,r13		! source line 3015
	mov	"\0\0SE",r10
!   _temp_1976 = &serialNeedsAttention
	load	[r14+8],r1
	add	r1,124,r1
	store	r1,[r14+-92]
!   Send message Down
	load	[r14+-92],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	3016,r13		! source line 3016
	mov	"\0\0AS",r10
!   if intIsZero (serial_status_word_address) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: statusReg = *serial_status_word_address  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-96]
! IF STATEMENT...
	mov	3018,r13		! source line 3018
	mov	"\0\0IF",r10
!   _temp_1979 = statusReg AND 1		(int)
	load	[r14+-96],r1
	mov	1,r2
	and	r1,r2,r1
	store	r1,[r14+-88]
!   if _temp_1979 <= 0 then goto _Label_1978		(int)
	load	[r14+-88],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1978
!	jmp	_Label_1977
_Label_1977:
! THEN...
	mov	3019,r13		! source line 3019
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	3019,r13		! source line 3019
	mov	"\0\0AS",r10
!   if intIsZero (serial_data_word_address) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1980 = *serial_data_word_address  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+8],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   c = intToChar (_temp_1980)
	load	[r14+-84],r1
	storeb	r1,[r14+-10]
! IF STATEMENT...
	mov	3020,r13		! source line 3020
	mov	"\0\0IF",r10
!   if getBufferSize != 10 then goto _Label_1982		(int)
	load	[r14+8],r1
	load	[r1+48],r1
	mov	10,r2
	cmp	r1,r2
	bne	_Label_1982
!	jmp	_Label_1981
_Label_1981:
! THEN...
	mov	3021,r13		! source line 3021
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1983 = _StringConst_46
	set	_StringConst_46,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_1983  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	3021,r13		! source line 3021
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=c  sizeInBytes=1
	loadb	[r14+-10],r1
	storeb	r1,[r15+0]
!   Call the function
	mov	3022,r13		! source line 3022
	mov	"\0\0CE",r10
	call	printChar
! CALL STATEMENT...
!   _temp_1984 = _StringConst_47
	set	_StringConst_47,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1984  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	3023,r13		! source line 3023
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1985
_Label_1982:
! ELSE...
	mov	3025,r13		! source line 3025
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	3025,r13		! source line 3025
	mov	"\0\0SE",r10
!   _temp_1986 = &serialLock
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-72]
!   Send message Lock
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	3026,r13		! source line 3026
	mov	"\0\0AS",r10
!   _temp_1987 = &getBuffer
	load	[r14+8],r1
	add	r1,32,r1
	store	r1,[r14+-68]
!   Move address of _temp_1987 [getBufferNextIn ] into _temp_1988
!     make sure index expr is >= 0
	load	[r14+8],r2
	load	[r2+52],r2
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
	store	r2,[r14+-64]
!   Data Move: *_temp_1988 = c  (sizeInBytes=1)
	loadb	[r14+-10],r1
	load	[r14+-64],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3027,r13		! source line 3027
	mov	"\0\0AS",r10
!   _temp_1989 = getBufferNextIn + 1		(int)
	load	[r14+8],r1
	load	[r1+52],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   getBufferNextIn = _temp_1989 rem 10		(int)
	load	[r14+-60],r1
	mov	10,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+52]
! ASSIGNMENT STATEMENT...
	mov	3028,r13		! source line 3028
	mov	"\0\0AS",r10
!   getBufferSize = getBufferSize + 1		(int)
	load	[r14+8],r1
	load	[r1+48],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+48]
! SEND STATEMENT...
	mov	3029,r13		! source line 3029
	mov	"\0\0SE",r10
!   _temp_1990 = &serialLock
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-56]
!   _temp_1991 = &getCharacterAvail
	load	[r14+8],r1
	add	r1,60,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_1990  sizeInBytes=4
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
! SEND STATEMENT...
	mov	3030,r13		! source line 3030
	mov	"\0\0SE",r10
!   _temp_1992 = &serialLock
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-48]
!   Send message Unlock
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_1985:
! END IF...
_Label_1978:
! IF STATEMENT...
	mov	3034,r13		! source line 3034
	mov	"\0\0IF",r10
!   _temp_1995 = statusReg AND 2		(int)
	load	[r14+-96],r1
	mov	2,r2
	and	r1,r2,r1
	store	r1,[r14+-44]
!   if _temp_1995 <= 0 then goto _Label_1994		(int)
	load	[r14+-44],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1994
!	jmp	_Label_1993
_Label_1993:
! THEN...
	mov	3035,r13		! source line 3035
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	3035,r13		! source line 3035
	mov	"\0\0SE",r10
!   _temp_1996 = &serialLock
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-40]
!   Send message Lock
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	3036,r13		! source line 3036
	mov	"\0\0IF",r10
!   if putBufferSize <= 0 then goto _Label_1998		(int)
	load	[r14+8],r1
	load	[r1+92],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1998
!	jmp	_Label_1997
_Label_1997:
! THEN...
	mov	3037,r13		! source line 3037
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	3037,r13		! source line 3037
	mov	"\0\0AS",r10
!   _temp_1999 = &putBuffer
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-36]
!   Move address of _temp_1999 [putBufferNextOut ] into _temp_2000
!     make sure index expr is >= 0
	load	[r14+8],r2
	load	[r2+100],r2
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
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   Data Move: c = *_temp_2000  (sizeInBytes=1)
	load	[r14+-32],r1
	loadb	[r1],r1
	storeb	r1,[r14+-10]
! ASSIGNMENT STATEMENT...
	mov	3038,r13		! source line 3038
	mov	"\0\0AS",r10
!   _temp_2001 = putBufferNextOut + 1		(int)
	load	[r14+8],r1
	load	[r1+100],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   putBufferNextOut = _temp_2001 rem 10		(int)
	load	[r14+-28],r1
	mov	10,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+100]
! ASSIGNMENT STATEMENT...
	mov	3039,r13		! source line 3039
	mov	"\0\0AS",r10
!   putBufferSize = putBufferSize - 1		(int)
	load	[r14+8],r1
	load	[r1+92],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+92]
! ASSIGNMENT STATEMENT...
	mov	3040,r13		! source line 3040
	mov	"\0\0AS",r10
!   if intIsZero (serial_data_word_address) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2002 = charToInt (c)
	loadb	[r14+-10],r1
	sll	r1,24,r1
	sra	r1,24,r1
	store	r1,[r14+-24]
!   Data Move: *serial_data_word_address = _temp_2002  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+8],r2
	load	[r2+8],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	3041,r13		! source line 3041
	mov	"\0\0SE",r10
!   _temp_2003 = &putBufferSem
	load	[r14+8],r1
	add	r1,104,r1
	store	r1,[r14+-20]
!   Send message Up
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_1998:
! SEND STATEMENT...
	mov	3043,r13		! source line 3043
	mov	"\0\0SE",r10
!   _temp_2004 = &serialLock
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_1994:
! END WHILE...
	jmp	_Label_1973
_Label_1975:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_SerialDriver_4:
	.word	_sourceFileName
	.word	_Label_2005
	.word	4		! total size of parameters
	.word	96		! frame size = 96
	.word	_Label_2006
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2007
	.word	-16
	.word	4
	.word	_Label_2008
	.word	-20
	.word	4
	.word	_Label_2009
	.word	-24
	.word	4
	.word	_Label_2010
	.word	-28
	.word	4
	.word	_Label_2011
	.word	-32
	.word	4
	.word	_Label_2012
	.word	-36
	.word	4
	.word	_Label_2013
	.word	-40
	.word	4
	.word	_Label_2014
	.word	-44
	.word	4
	.word	_Label_2015
	.word	-48
	.word	4
	.word	_Label_2016
	.word	-52
	.word	4
	.word	_Label_2017
	.word	-56
	.word	4
	.word	_Label_2018
	.word	-60
	.word	4
	.word	_Label_2019
	.word	-64
	.word	4
	.word	_Label_2020
	.word	-68
	.word	4
	.word	_Label_2021
	.word	-72
	.word	4
	.word	_Label_2022
	.word	-76
	.word	4
	.word	_Label_2023
	.word	-80
	.word	4
	.word	_Label_2024
	.word	-84
	.word	4
	.word	_Label_2025
	.word	-88
	.word	4
	.word	_Label_2026
	.word	-92
	.word	4
	.word	_Label_2027
	.word	-9
	.word	1
	.word	_Label_2028
	.word	-10
	.word	1
	.word	_Label_2029
	.word	-96
	.word	4
	.word	0
_Label_2005:
	.ascii	"SerialDriver"
	.ascii	"::"
	.ascii	"SerialHandler\0"
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
	.ascii	"_temp_1996\0"
	.align
_Label_2014:
	.byte	'?'
	.ascii	"_temp_1995\0"
	.align
_Label_2015:
	.byte	'?'
	.ascii	"_temp_1992\0"
	.align
_Label_2016:
	.byte	'?'
	.ascii	"_temp_1991\0"
	.align
_Label_2017:
	.byte	'?'
	.ascii	"_temp_1990\0"
	.align
_Label_2018:
	.byte	'?'
	.ascii	"_temp_1989\0"
	.align
_Label_2019:
	.byte	'?'
	.ascii	"_temp_1988\0"
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
	.ascii	"_temp_1984\0"
	.align
_Label_2023:
	.byte	'?'
	.ascii	"_temp_1983\0"
	.align
_Label_2024:
	.byte	'?'
	.ascii	"_temp_1980\0"
	.align
_Label_2025:
	.byte	'?'
	.ascii	"_temp_1979\0"
	.align
_Label_2026:
	.byte	'?'
	.ascii	"_temp_1976\0"
	.align
_Label_2027:
	.byte	'C'
	.ascii	"_temp_1972\0"
	.align
_Label_2028:
	.byte	'C'
	.ascii	"c\0"
	.align
_Label_2029:
	.byte	'I'
	.ascii	"statusReg\0"
	.align
! 
! ===============  CLASS Semaphore  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Semaphore:
	.word	_Label_2030
	jmp	_Method_P_Kernel_Semaphore_1	! 4:	Init
	jmp	_Method_P_Kernel_Semaphore_3	! 8:	Down
	jmp	_Method_P_Kernel_Semaphore_2	! 12:	Up
	.word	0
! 
! Class descriptor:
! 
_Label_2030:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2031
	.word	_sourceFileName
	.word	159		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Semaphore
	.word	_P_System_Object
	.word	0
_Label_2031:
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
_Label_4457:
	push	r0
	sub	r1,1,r1
	bne	_Label_4457
	mov	279,r13		! source line 279
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	280,r13		! source line 280
	mov	"\0\0IF",r10
!   if initialCount >= 0 then goto _Label_2033		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2033
!	jmp	_Label_2032
_Label_2032:
! THEN...
	mov	281,r13		! source line 281
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2034 = _StringConst_48
	set	_StringConst_48,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2034  sizeInBytes=4
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
_Label_2033:
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
	.word	_Label_2036
	.word	8		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_2037
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2038
	.word	12
	.word	4
	.word	_Label_2039
	.word	-12
	.word	4
	.word	_Label_2040
	.word	-16
	.word	4
	.word	0
_Label_2036:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2037:
	.ascii	"Pself\0"
	.align
_Label_2038:
	.byte	'I'
	.ascii	"initialCount\0"
	.align
_Label_2039:
	.byte	'?'
	.ascii	"_temp_2035\0"
	.align
_Label_2040:
	.byte	'?'
	.ascii	"_temp_2034\0"
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
_Label_4458:
	push	r0
	sub	r1,1,r1
	bne	_Label_4458
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
!   if count != 2147483647 then goto _Label_2042		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	2147483647,r2
	cmp	r1,r2
	bne	_Label_2042
!	jmp	_Label_2041
_Label_2041:
! THEN...
	mov	295,r13		! source line 295
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2043 = _StringConst_49
	set	_StringConst_49,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2043  sizeInBytes=4
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
_Label_2042:
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
!   if count > 0 then goto _Label_2045		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2045
!	jmp	_Label_2044
_Label_2044:
! THEN...
	mov	299,r13		! source line 299
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	299,r13		! source line 299
	mov	"\0\0AS",r10
	mov	299,r13		! source line 299
	mov	"\0\0SE",r10
!   _temp_2046 = &waitingThreads
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
!   _temp_2047 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2047 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	301,r13		! source line 301
	mov	"\0\0SE",r10
!   _temp_2048 = &_P_Kernel_readyList
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
_Label_2045:
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
	.word	_Label_2049
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_2050
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2051
	.word	-12
	.word	4
	.word	_Label_2052
	.word	-16
	.word	4
	.word	_Label_2053
	.word	-20
	.word	4
	.word	_Label_2054
	.word	-24
	.word	4
	.word	_Label_2055
	.word	-28
	.word	4
	.word	_Label_2056
	.word	-32
	.word	4
	.word	0
_Label_2049:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Up\0"
	.align
_Label_2050:
	.ascii	"Pself\0"
	.align
_Label_2051:
	.byte	'?'
	.ascii	"_temp_2048\0"
	.align
_Label_2052:
	.byte	'?'
	.ascii	"_temp_2047\0"
	.align
_Label_2053:
	.byte	'?'
	.ascii	"_temp_2046\0"
	.align
_Label_2054:
	.byte	'?'
	.ascii	"_temp_2043\0"
	.align
_Label_2055:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_2056:
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
_Label_4459:
	push	r0
	sub	r1,1,r1
	bne	_Label_4459
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
!   if count != -2147483648 then goto _Label_2058		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	0x80000000,r2
	cmp	r1,r2
	bne	_Label_2058
!	jmp	_Label_2057
_Label_2057:
! THEN...
	mov	313,r13		! source line 313
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2059 = _StringConst_50
	set	_StringConst_50,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2059  sizeInBytes=4
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
_Label_2058:
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
!   if count >= 0 then goto _Label_2061		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2061
!	jmp	_Label_2060
_Label_2060:
! THEN...
	mov	317,r13		! source line 317
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	317,r13		! source line 317
	mov	"\0\0SE",r10
!   _temp_2062 = &waitingThreads
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
_Label_2061:
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
	.word	_Label_2063
	.word	4		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2064
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2065
	.word	-12
	.word	4
	.word	_Label_2066
	.word	-16
	.word	4
	.word	_Label_2067
	.word	-20
	.word	4
	.word	0
_Label_2063:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Down\0"
	.align
_Label_2064:
	.ascii	"Pself\0"
	.align
_Label_2065:
	.byte	'?'
	.ascii	"_temp_2062\0"
	.align
_Label_2066:
	.byte	'?'
	.ascii	"_temp_2059\0"
	.align
_Label_2067:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Mutex  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Mutex:
	.word	_Label_2068
	jmp	_Method_P_Kernel_Mutex_1	! 4:	Init
	jmp	_Method_P_Kernel_Mutex_2	! 8:	Lock
	jmp	_Method_P_Kernel_Mutex_3	! 12:	Unlock
	jmp	_Method_P_Kernel_Mutex_4	! 16:	IsHeldByCurrentThread
	.word	0
! 
! Class descriptor:
! 
_Label_2068:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2069
	.word	_sourceFileName
	.word	172		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Mutex
	.word	_P_System_Object
	.word	0
_Label_2069:
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
_Label_4460:
	push	r0
	sub	r1,1,r1
	bne	_Label_4460
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
	.word	_Label_2071
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_2072
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2073
	.word	-12
	.word	4
	.word	0
_Label_2071:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2072:
	.ascii	"Pself\0"
	.align
_Label_2073:
	.byte	'?'
	.ascii	"_temp_2070\0"
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
_Label_4461:
	push	r0
	sub	r1,1,r1
	bne	_Label_4461
	mov	349,r13		! source line 349
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	352,r13		! source line 352
	mov	"\0\0IF",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_2075		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_2075
!	jmp	_Label_2074
_Label_2074:
! THEN...
	mov	353,r13		! source line 353
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2076 = _StringConst_51
	set	_StringConst_51,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2076  sizeInBytes=4
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
_Label_2075:
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
!   if heldBy == 0 then goto _Label_2080		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2080
!   _temp_2079 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2081
_Label_2080:
!   _temp_2079 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2081:
!   if _temp_2079 then goto _Label_2078 else goto _Label_2077
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2077
	jmp	_Label_2078
_Label_2077:
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
	jmp	_Label_2082
_Label_2078:
! ELSE...
	mov	359,r13		! source line 359
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	359,r13		! source line 359
	mov	"\0\0SE",r10
!   _temp_2083 = &waitingThreads
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
_Label_2082:
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
	.word	_Label_2084
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2085
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2086
	.word	-16
	.word	4
	.word	_Label_2087
	.word	-9
	.word	1
	.word	_Label_2088
	.word	-20
	.word	4
	.word	_Label_2089
	.word	-24
	.word	4
	.word	0
_Label_2084:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_2085:
	.ascii	"Pself\0"
	.align
_Label_2086:
	.byte	'?'
	.ascii	"_temp_2083\0"
	.align
_Label_2087:
	.byte	'C'
	.ascii	"_temp_2079\0"
	.align
_Label_2088:
	.byte	'?'
	.ascii	"_temp_2076\0"
	.align
_Label_2089:
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
_Label_4462:
	push	r0
	sub	r1,1,r1
	bne	_Label_4462
	mov	367,r13		! source line 367
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	371,r13		! source line 371
	mov	"\0\0IF",r10
!   if heldBy == _P_Kernel_currentThread then goto _Label_2091		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_2091
!	jmp	_Label_2090
_Label_2090:
! THEN...
	mov	372,r13		! source line 372
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2092 = _StringConst_52
	set	_StringConst_52,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2092  sizeInBytes=4
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
_Label_2091:
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
!   _temp_2093 = &waitingThreads
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
!   if t == 0 then goto _Label_2095		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2095
!	jmp	_Label_2094
_Label_2094:
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
!   _temp_2096 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2096 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	378,r13		! source line 378
	mov	"\0\0SE",r10
!   _temp_2097 = &_P_Kernel_readyList
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
	jmp	_Label_2098
_Label_2095:
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
_Label_2098:
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
	.word	_Label_2099
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_2100
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2101
	.word	-12
	.word	4
	.word	_Label_2102
	.word	-16
	.word	4
	.word	_Label_2103
	.word	-20
	.word	4
	.word	_Label_2104
	.word	-24
	.word	4
	.word	_Label_2105
	.word	-28
	.word	4
	.word	_Label_2106
	.word	-32
	.word	4
	.word	0
_Label_2099:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_2100:
	.ascii	"Pself\0"
	.align
_Label_2101:
	.byte	'?'
	.ascii	"_temp_2097\0"
	.align
_Label_2102:
	.byte	'?'
	.ascii	"_temp_2096\0"
	.align
_Label_2103:
	.byte	'?'
	.ascii	"_temp_2093\0"
	.align
_Label_2104:
	.byte	'?'
	.ascii	"_temp_2092\0"
	.align
_Label_2105:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_2106:
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
_Label_4463:
	push	r0
	sub	r1,1,r1
	bne	_Label_4463
	mov	388,r13		! source line 388
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	389,r13		! source line 389
	mov	"\0\0RE",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_2109		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_2109
!	jmp	_Label_2108
_Label_2108:
!   _temp_2107 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2110
_Label_2109:
!   _temp_2107 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2110:
!   ReturnResult: _temp_2107  (sizeInBytes=1)
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
	.word	_Label_2111
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_2112
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2113
	.word	-9
	.word	1
	.word	0
_Label_2111:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_2112:
	.ascii	"Pself\0"
	.align
_Label_2113:
	.byte	'C'
	.ascii	"_temp_2107\0"
	.align
! 
! ===============  CLASS Condition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Condition:
	.word	_Label_2114
	jmp	_Method_P_Kernel_Condition_1	! 4:	Init
	jmp	_Method_P_Kernel_Condition_2	! 8:	Wait
	jmp	_Method_P_Kernel_Condition_3	! 12:	Signal
	jmp	_Method_P_Kernel_Condition_4	! 16:	Broadcast
	.word	0
! 
! Class descriptor:
! 
_Label_2114:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2115
	.word	_sourceFileName
	.word	186		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Kernel_Condition
	.word	_P_System_Object
	.word	0
_Label_2115:
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
_Label_4464:
	push	r0
	sub	r1,1,r1
	bne	_Label_4464
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
	.word	_Label_2117
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_2118
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2119
	.word	-12
	.word	4
	.word	0
_Label_2117:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2118:
	.ascii	"Pself\0"
	.align
_Label_2119:
	.byte	'?'
	.ascii	"_temp_2116\0"
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
_Label_4465:
	push	r0
	sub	r1,1,r1
	bne	_Label_4465
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
!   Retrieve Result: targetName=_temp_2122  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_2122 then goto _Label_2121 else goto _Label_2120
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2120
	jmp	_Label_2121
_Label_2120:
! THEN...
	mov	439,r13		! source line 439
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2123 = _StringConst_53
	set	_StringConst_53,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2123  sizeInBytes=4
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
_Label_2121:
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
!   _temp_2124 = &waitingThreads
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
	.word	_Label_2125
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2126
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2127
	.word	12
	.word	4
	.word	_Label_2128
	.word	-16
	.word	4
	.word	_Label_2129
	.word	-20
	.word	4
	.word	_Label_2130
	.word	-9
	.word	1
	.word	_Label_2131
	.word	-24
	.word	4
	.word	0
_Label_2125:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_2126:
	.ascii	"Pself\0"
	.align
_Label_2127:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_2128:
	.byte	'?'
	.ascii	"_temp_2124\0"
	.align
_Label_2129:
	.byte	'?'
	.ascii	"_temp_2123\0"
	.align
_Label_2130:
	.byte	'C'
	.ascii	"_temp_2122\0"
	.align
_Label_2131:
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
_Label_4466:
	push	r0
	sub	r1,1,r1
	bne	_Label_4466
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
!   Retrieve Result: targetName=_temp_2134  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_2134 then goto _Label_2133 else goto _Label_2132
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2132
	jmp	_Label_2133
_Label_2132:
! THEN...
	mov	456,r13		! source line 456
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2135 = _StringConst_54
	set	_StringConst_54,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2135  sizeInBytes=4
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
_Label_2133:
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
!   _temp_2136 = &waitingThreads
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
!   if t == 0 then goto _Label_2138		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2138
!	jmp	_Label_2137
_Label_2137:
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
!   _temp_2139 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2139 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	462,r13		! source line 462
	mov	"\0\0SE",r10
!   _temp_2140 = &_P_Kernel_readyList
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
_Label_2138:
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
	.word	_Label_2141
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_2142
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2143
	.word	12
	.word	4
	.word	_Label_2144
	.word	-16
	.word	4
	.word	_Label_2145
	.word	-20
	.word	4
	.word	_Label_2146
	.word	-24
	.word	4
	.word	_Label_2147
	.word	-28
	.word	4
	.word	_Label_2148
	.word	-9
	.word	1
	.word	_Label_2149
	.word	-32
	.word	4
	.word	_Label_2150
	.word	-36
	.word	4
	.word	0
_Label_2141:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_2142:
	.ascii	"Pself\0"
	.align
_Label_2143:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_2144:
	.byte	'?'
	.ascii	"_temp_2140\0"
	.align
_Label_2145:
	.byte	'?'
	.ascii	"_temp_2139\0"
	.align
_Label_2146:
	.byte	'?'
	.ascii	"_temp_2136\0"
	.align
_Label_2147:
	.byte	'?'
	.ascii	"_temp_2135\0"
	.align
_Label_2148:
	.byte	'C'
	.ascii	"_temp_2134\0"
	.align
_Label_2149:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_2150:
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
_Label_4467:
	push	r0
	sub	r1,1,r1
	bne	_Label_4467
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
!   Retrieve Result: targetName=_temp_2153  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_2153 then goto _Label_2152 else goto _Label_2151
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2151
	jmp	_Label_2152
_Label_2151:
! THEN...
	mov	474,r13		! source line 474
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2154 = _StringConst_55
	set	_StringConst_55,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2154  sizeInBytes=4
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
_Label_2152:
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
_Label_2155:
!	jmp	_Label_2156
_Label_2156:
	mov	477,r13		! source line 477
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	478,r13		! source line 478
	mov	"\0\0AS",r10
	mov	478,r13		! source line 478
	mov	"\0\0SE",r10
!   _temp_2158 = &waitingThreads
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
!   if intIsZero (t) then goto _Label_2159
	load	[r14+-36],r1
	cmp	r1,r0
	be	_Label_2159
	jmp	_Label_2160
_Label_2159:
! THEN...
	mov	480,r13		! source line 480
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	480,r13		! source line 480
	mov	"\0\0BR",r10
	jmp	_Label_2157
! END IF...
_Label_2160:
! ASSIGNMENT STATEMENT...
	mov	482,r13		! source line 482
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2161 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2161 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	483,r13		! source line 483
	mov	"\0\0SE",r10
!   _temp_2162 = &_P_Kernel_readyList
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
	jmp	_Label_2155
_Label_2157:
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
	.word	_Label_2163
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_2164
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2165
	.word	12
	.word	4
	.word	_Label_2166
	.word	-16
	.word	4
	.word	_Label_2167
	.word	-20
	.word	4
	.word	_Label_2168
	.word	-24
	.word	4
	.word	_Label_2169
	.word	-28
	.word	4
	.word	_Label_2170
	.word	-9
	.word	1
	.word	_Label_2171
	.word	-32
	.word	4
	.word	_Label_2172
	.word	-36
	.word	4
	.word	0
_Label_2163:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Broadcast\0"
	.align
_Label_2164:
	.ascii	"Pself\0"
	.align
_Label_2165:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_2166:
	.byte	'?'
	.ascii	"_temp_2162\0"
	.align
_Label_2167:
	.byte	'?'
	.ascii	"_temp_2161\0"
	.align
_Label_2168:
	.byte	'?'
	.ascii	"_temp_2158\0"
	.align
_Label_2169:
	.byte	'?'
	.ascii	"_temp_2154\0"
	.align
_Label_2170:
	.byte	'C'
	.ascii	"_temp_2153\0"
	.align
_Label_2171:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_2172:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  CLASS Thread  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Thread:
	.word	_Label_2173
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
_Label_2173:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2174
	.word	_sourceFileName
	.word	199		! line number
	.word	4164		! size of instances, in bytes
	.word	_P_Kernel_Thread
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_2174:
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
_Label_4468:
	push	r0
	sub	r1,1,r1
	bne	_Label_4468
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
!   _temp_2175 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_2175) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_2175 = 1000  (sizeInBytes=4)
	mov	1000,r1
	load	[r14+-188],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	505,r13		! source line 505
	mov	"\0\0AS",r10
!   _temp_2176 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-184]
!   Move address of _temp_2176 [0 ] into _temp_2177
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
!   Data Move: *_temp_2177 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-180],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	506,r13		! source line 506
	mov	"\0\0AS",r10
!   _temp_2178 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-176]
!   Move address of _temp_2178 [999 ] into _temp_2179
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
!   Data Move: *_temp_2179 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-172],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	507,r13		! source line 507
	mov	"\0\0AS",r10
!   _temp_2180 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-168]
!   Move address of _temp_2180 [999 ] into _temp_2181
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
!   stackTop = _temp_2181		(4 bytes)
	load	[r14+-164],r1
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	508,r13		! source line 508
	mov	"\0\0AS",r10
!   _temp_2182 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-160]
!   NEW ARRAY Constructor...
!   _temp_2184 = &_temp_2183
	add	r14,-156,r1
	store	r1,[r14+-100]
!   _temp_2184 = _temp_2184 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Next value...
	mov	13,r1
	store	r1,[r14+-96]
_Label_2186:
!   Data Move: *_temp_2184 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-100],r2
	store	r1,[r2]
!   _temp_2184 = _temp_2184 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   _temp_2185 = _temp_2185 + -1
	load	[r14+-96],r1
	add	r1,-1,r1
	store	r1,[r14+-96]
!   if intNotZero (_temp_2185) then goto _Label_2186
	load	[r14+-96],r1
	cmp	r1,r0
	bne	_Label_2186
!   Initialize the array size...
	mov	13,r1
	store	r1,[r14+-156]
!   _temp_2187 = &_temp_2183
	add	r14,-156,r1
	store	r1,[r14+-92]
!   make sure array has size 13
	load	[r14+-160],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,0
	be	_Label_4469
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4469:
!   make sure array has size 13
	load	[r14+-92],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2182 = *_temp_2187  (sizeInBytes=56)
	load	[r14+-92],r5
	load	[r14+-160],r4
	mov	14,r3
_Label_4470:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4470
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
!   _temp_2188 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-88]
!   NEW ARRAY Constructor...
!   _temp_2190 = &_temp_2189
	add	r14,-84,r1
	store	r1,[r14+-20]
!   _temp_2190 = _temp_2190 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	15,r1
	store	r1,[r14+-16]
_Label_2192:
!   Data Move: *_temp_2190 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_2190 = _temp_2190 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_2191 = _temp_2191 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_2191) then goto _Label_2192
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_2192
!   Initialize the array size...
	mov	15,r1
	store	r1,[r14+-84]
!   _temp_2193 = &_temp_2189
	add	r14,-84,r1
	store	r1,[r14+-12]
!   make sure array has size 15
	load	[r14+-88],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,0
	be	_Label_4471
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4471:
!   make sure array has size 15
	load	[r14+-12],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2188 = *_temp_2193  (sizeInBytes=64)
	load	[r14+-12],r5
	load	[r14+-88],r4
	mov	16,r3
_Label_4472:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4472
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
	.word	_Label_2194
	.word	8		! total size of parameters
	.word	180		! frame size = 180
	.word	_Label_2195
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2196
	.word	12
	.word	4
	.word	_Label_2197
	.word	-12
	.word	4
	.word	_Label_2198
	.word	-16
	.word	4
	.word	_Label_2199
	.word	-20
	.word	4
	.word	_Label_2200
	.word	-84
	.word	64
	.word	_Label_2201
	.word	-88
	.word	4
	.word	_Label_2202
	.word	-92
	.word	4
	.word	_Label_2203
	.word	-96
	.word	4
	.word	_Label_2204
	.word	-100
	.word	4
	.word	_Label_2205
	.word	-156
	.word	56
	.word	_Label_2206
	.word	-160
	.word	4
	.word	_Label_2207
	.word	-164
	.word	4
	.word	_Label_2208
	.word	-168
	.word	4
	.word	_Label_2209
	.word	-172
	.word	4
	.word	_Label_2210
	.word	-176
	.word	4
	.word	_Label_2211
	.word	-180
	.word	4
	.word	_Label_2212
	.word	-184
	.word	4
	.word	_Label_2213
	.word	-188
	.word	4
	.word	0
_Label_2194:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2195:
	.ascii	"Pself\0"
	.align
_Label_2196:
	.byte	'P'
	.ascii	"n\0"
	.align
_Label_2197:
	.byte	'?'
	.ascii	"_temp_2193\0"
	.align
_Label_2198:
	.byte	'?'
	.ascii	"_temp_2191\0"
	.align
_Label_2199:
	.byte	'?'
	.ascii	"_temp_2190\0"
	.align
_Label_2200:
	.byte	'?'
	.ascii	"_temp_2189\0"
	.align
_Label_2201:
	.byte	'?'
	.ascii	"_temp_2188\0"
	.align
_Label_2202:
	.byte	'?'
	.ascii	"_temp_2187\0"
	.align
_Label_2203:
	.byte	'?'
	.ascii	"_temp_2185\0"
	.align
_Label_2204:
	.byte	'?'
	.ascii	"_temp_2184\0"
	.align
_Label_2205:
	.byte	'?'
	.ascii	"_temp_2183\0"
	.align
_Label_2206:
	.byte	'?'
	.ascii	"_temp_2182\0"
	.align
_Label_2207:
	.byte	'?'
	.ascii	"_temp_2181\0"
	.align
_Label_2208:
	.byte	'?'
	.ascii	"_temp_2180\0"
	.align
_Label_2209:
	.byte	'?'
	.ascii	"_temp_2179\0"
	.align
_Label_2210:
	.byte	'?'
	.ascii	"_temp_2178\0"
	.align
_Label_2211:
	.byte	'?'
	.ascii	"_temp_2177\0"
	.align
_Label_2212:
	.byte	'?'
	.ascii	"_temp_2176\0"
	.align
_Label_2213:
	.byte	'?'
	.ascii	"_temp_2175\0"
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
_Label_4473:
	push	r0
	sub	r1,1,r1
	bne	_Label_4473
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
!   _temp_2214 = ThreadStartUp
	set	ThreadStartUp,r1
	store	r1,[r14+-20]
!   Data Move: *stackTop = _temp_2214  (sizeInBytes=4)
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
!   _temp_2216 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2215  sizeInBytes=4
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
	.word	_Label_2217
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2218
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2219
	.word	12
	.word	4
	.word	_Label_2220
	.word	16
	.word	4
	.word	_Label_2221
	.word	-12
	.word	4
	.word	_Label_2222
	.word	-16
	.word	4
	.word	_Label_2223
	.word	-20
	.word	4
	.word	_Label_2224
	.word	-24
	.word	4
	.word	_Label_2225
	.word	-28
	.word	4
	.word	0
_Label_2217:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Fork\0"
	.align
_Label_2218:
	.ascii	"Pself\0"
	.align
_Label_2219:
	.byte	'P'
	.ascii	"fun\0"
	.align
_Label_2220:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_2221:
	.byte	'?'
	.ascii	"_temp_2216\0"
	.align
_Label_2222:
	.byte	'?'
	.ascii	"_temp_2215\0"
	.align
_Label_2223:
	.byte	'?'
	.ascii	"_temp_2214\0"
	.align
_Label_2224:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_2225:
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
_Label_4474:
	push	r0
	sub	r1,1,r1
	bne	_Label_4474
	mov	539,r13		! source line 539
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	555,r13		! source line 555
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if _temp_2228 == _P_Kernel_currentThread then goto _Label_2227		(int)
	load	[r14+-32],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_2227
!	jmp	_Label_2226
_Label_2226:
! THEN...
	mov	556,r13		! source line 556
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2229 = _StringConst_56
	set	_StringConst_56,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2229  sizeInBytes=4
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
_Label_2227:
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
!   _temp_2230 = &_P_Kernel_readyList
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
!   if nextTh == 0 then goto _Label_2232		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2232
!	jmp	_Label_2231
_Label_2231:
! THEN...
	mov	567,r13		! source line 567
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	567,r13		! source line 567
	mov	"\0\0IF",r10
!   if status != 4 then goto _Label_2234		(int)
	load	[r14+8],r1
	load	[r1+76],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_2234
!	jmp	_Label_2233
_Label_2233:
! THEN...
	mov	568,r13		! source line 568
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2235 = _StringConst_57
	set	_StringConst_57,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2235  sizeInBytes=4
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
_Label_2234:
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
!   _temp_2237 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2236  sizeInBytes=4
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
_Label_2232:
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
	.word	_Label_2238
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_2239
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2240
	.word	-12
	.word	4
	.word	_Label_2241
	.word	-16
	.word	4
	.word	_Label_2242
	.word	-20
	.word	4
	.word	_Label_2243
	.word	-24
	.word	4
	.word	_Label_2244
	.word	-28
	.word	4
	.word	_Label_2245
	.word	-32
	.word	4
	.word	_Label_2246
	.word	-36
	.word	4
	.word	_Label_2247
	.word	-40
	.word	4
	.word	_Label_2248
	.word	-44
	.word	4
	.word	0
_Label_2238:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Yield\0"
	.align
_Label_2239:
	.ascii	"Pself\0"
	.align
_Label_2240:
	.byte	'?'
	.ascii	"_temp_2237\0"
	.align
_Label_2241:
	.byte	'?'
	.ascii	"_temp_2236\0"
	.align
_Label_2242:
	.byte	'?'
	.ascii	"_temp_2235\0"
	.align
_Label_2243:
	.byte	'?'
	.ascii	"_temp_2230\0"
	.align
_Label_2244:
	.byte	'?'
	.ascii	"_temp_2229\0"
	.align
_Label_2245:
	.byte	'?'
	.ascii	"_temp_2228\0"
	.align
_Label_2246:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
_Label_2247:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_2248:
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
_Label_4475:
	push	r0
	sub	r1,1,r1
	bne	_Label_4475
	mov	579,r13		! source line 579
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	591,r13		! source line 591
	mov	"\0\0IF",r10
!   if _P_Kernel_currentInterruptStatus == 2 then goto _Label_2250		(int)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_2250
!	jmp	_Label_2249
_Label_2249:
! THEN...
	mov	592,r13		! source line 592
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2251 = _StringConst_58
	set	_StringConst_58,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2251  sizeInBytes=4
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
_Label_2250:
! IF STATEMENT...
	mov	595,r13		! source line 595
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if _temp_2254 == _P_Kernel_currentThread then goto _Label_2253		(int)
	load	[r14+-24],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_2253
!	jmp	_Label_2252
_Label_2252:
! THEN...
	mov	596,r13		! source line 596
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2255 = _StringConst_59
	set	_StringConst_59,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2255  sizeInBytes=4
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
_Label_2253:
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
!   _temp_2256 = &_P_Kernel_readyList
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
!   if intIsZero (nextTh) then goto _Label_2257
	load	[r14+-32],r1
	cmp	r1,r0
	be	_Label_2257
	jmp	_Label_2258
_Label_2257:
! THEN...
	mov	604,r13		! source line 604
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2259 = _StringConst_60
	set	_StringConst_60,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2259  sizeInBytes=4
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
_Label_2258:
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
	.word	_Label_2260
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2261
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2262
	.word	-12
	.word	4
	.word	_Label_2263
	.word	-16
	.word	4
	.word	_Label_2264
	.word	-20
	.word	4
	.word	_Label_2265
	.word	-24
	.word	4
	.word	_Label_2266
	.word	-28
	.word	4
	.word	_Label_2267
	.word	-32
	.word	4
	.word	0
_Label_2260:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Sleep\0"
	.align
_Label_2261:
	.ascii	"Pself\0"
	.align
_Label_2262:
	.byte	'?'
	.ascii	"_temp_2259\0"
	.align
_Label_2263:
	.byte	'?'
	.ascii	"_temp_2256\0"
	.align
_Label_2264:
	.byte	'?'
	.ascii	"_temp_2255\0"
	.align
_Label_2265:
	.byte	'?'
	.ascii	"_temp_2254\0"
	.align
_Label_2266:
	.byte	'?'
	.ascii	"_temp_2251\0"
	.align
_Label_2267:
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
_Label_4476:
	push	r0
	sub	r1,1,r1
	bne	_Label_4476
	mov	611,r13		! source line 611
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	617,r13		! source line 617
	mov	"\0\0IF",r10
!   _temp_2271 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-36]
!   Move address of _temp_2271 [0 ] into _temp_2272
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
!   Data Move: _temp_2270 = *_temp_2272  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if _temp_2270 == 606348324 then goto _Label_2269		(int)
	load	[r14+-40],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_2269
!	jmp	_Label_2268
_Label_2268:
! THEN...
	mov	618,r13		! source line 618
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2273 = _StringConst_61
	set	_StringConst_61,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2273  sizeInBytes=4
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
	jmp	_Label_2274
_Label_2269:
! ELSE...
	mov	619,r13		! source line 619
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	619,r13		! source line 619
	mov	"\0\0IF",r10
!   _temp_2278 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_2278 [999 ] into _temp_2279
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
!   Data Move: _temp_2277 = *_temp_2279  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_2277 == 606348324 then goto _Label_2276		(int)
	load	[r14+-24],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_2276
!	jmp	_Label_2275
_Label_2275:
! THEN...
	mov	620,r13		! source line 620
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2280 = _StringConst_62
	set	_StringConst_62,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2280  sizeInBytes=4
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
_Label_2276:
! END IF...
_Label_2274:
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
	.word	_Label_2281
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_2282
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2283
	.word	-12
	.word	4
	.word	_Label_2284
	.word	-16
	.word	4
	.word	_Label_2285
	.word	-20
	.word	4
	.word	_Label_2286
	.word	-24
	.word	4
	.word	_Label_2287
	.word	-28
	.word	4
	.word	_Label_2288
	.word	-32
	.word	4
	.word	_Label_2289
	.word	-36
	.word	4
	.word	_Label_2290
	.word	-40
	.word	4
	.word	0
_Label_2281:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"CheckOverflow\0"
	.align
_Label_2282:
	.ascii	"Pself\0"
	.align
_Label_2283:
	.byte	'?'
	.ascii	"_temp_2280\0"
	.align
_Label_2284:
	.byte	'?'
	.ascii	"_temp_2279\0"
	.align
_Label_2285:
	.byte	'?'
	.ascii	"_temp_2278\0"
	.align
_Label_2286:
	.byte	'?'
	.ascii	"_temp_2277\0"
	.align
_Label_2287:
	.byte	'?'
	.ascii	"_temp_2273\0"
	.align
_Label_2288:
	.byte	'?'
	.ascii	"_temp_2272\0"
	.align
_Label_2289:
	.byte	'?'
	.ascii	"_temp_2271\0"
	.align
_Label_2290:
	.byte	'?'
	.ascii	"_temp_2270\0"
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
_Label_4477:
	push	r0
	sub	r1,1,r1
	bne	_Label_4477
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
!   _temp_2291 = _StringConst_63
	set	_StringConst_63,r1
	store	r1,[r14+-188]
!   Prepare Argument: offset=8  value=_temp_2291  sizeInBytes=4
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
!   _temp_2292 = _StringConst_64
	set	_StringConst_64,r1
	store	r1,[r14+-184]
!   Prepare Argument: offset=8  value=_temp_2292  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Call the function
	mov	635,r13		! source line 635
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_2293  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Call the function
	mov	636,r13		! source line 636
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2294 = _StringConst_65
	set	_StringConst_65,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=8  value=_temp_2294  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Call the function
	mov	637,r13		! source line 637
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2295 = _StringConst_66
	set	_StringConst_66,r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=8  value=_temp_2295  sizeInBytes=4
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
!   _temp_2300 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-168]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2301 = 12		(4 bytes)
	mov	12,r1
	store	r1,[r14+-164]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2300  (sizeInBytes=4)
	load	[r14+-168],r1
	store	r1,[r14+-192]
_Label_2296:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2301 then goto _Label_2299		
	load	[r14+-192],r1
	load	[r14+-164],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2299
_Label_2297:
	mov	639,r13		! source line 639
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2302 = _StringConst_67
	set	_StringConst_67,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_2302  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	640,r13		! source line 640
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2303 = i + 2		(int)
	load	[r14+-192],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_2303  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	641,r13		! source line 641
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2304 = _StringConst_68
	set	_StringConst_68,r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=8  value=_temp_2304  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Call the function
	mov	642,r13		! source line 642
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2306 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-144]
!   Move address of _temp_2306 [i ] into _temp_2307
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
!   Data Move: _temp_2305 = *_temp_2307  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_2305  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	643,r13		! source line 643
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2308 = _StringConst_69
	set	_StringConst_69,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_2308  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	644,r13		! source line 644
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2310 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-128]
!   Move address of _temp_2310 [i ] into _temp_2311
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
!   Data Move: _temp_2309 = *_temp_2311  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2309  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	645,r13		! source line 645
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2312 = _StringConst_70
	set	_StringConst_70,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_2312  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	646,r13		! source line 646
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_2298:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_2296
! END FOR
_Label_2299:
! CALL STATEMENT...
!   _temp_2313 = _StringConst_71
	set	_StringConst_71,r1
	store	r1,[r14+-116]
!   _temp_2314 = stackTop		(4 bytes)
	load	[r14+8],r1
	load	[r1+68],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_2313  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2314  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Call the function
	mov	648,r13		! source line 648
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_2315 = _StringConst_72
	set	_StringConst_72,r1
	store	r1,[r14+-108]
!   _temp_2317 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-100]
!   Move address of _temp_2317 [0 ] into _temp_2318
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
!   _temp_2316 = _temp_2318		(4 bytes)
	load	[r14+-96],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_2315  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2316  sizeInBytes=4
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
	be	_Label_2321
	cmp	r1,2
	be	_Label_2322
	cmp	r1,3
	be	_Label_2323
	cmp	r1,4
	be	_Label_2324
	cmp	r1,5
	be	_Label_2325
	jmp	_Label_2319
! CASE 1...
_Label_2321:
! CALL STATEMENT...
!   _temp_2326 = _StringConst_73
	set	_StringConst_73,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_2326  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	652,r13		! source line 652
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	653,r13		! source line 653
	mov	"\0\0BR",r10
	jmp	_Label_2320
! CASE 2...
_Label_2322:
! CALL STATEMENT...
!   _temp_2327 = _StringConst_74
	set	_StringConst_74,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_2327  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	655,r13		! source line 655
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	656,r13		! source line 656
	mov	"\0\0BR",r10
	jmp	_Label_2320
! CASE 3...
_Label_2323:
! CALL STATEMENT...
!   _temp_2328 = _StringConst_75
	set	_StringConst_75,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_2328  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	658,r13		! source line 658
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	659,r13		! source line 659
	mov	"\0\0BR",r10
	jmp	_Label_2320
! CASE 4...
_Label_2324:
! CALL STATEMENT...
!   _temp_2329 = _StringConst_76
	set	_StringConst_76,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2329  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	661,r13		! source line 661
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	662,r13		! source line 662
	mov	"\0\0BR",r10
	jmp	_Label_2320
! CASE 5...
_Label_2325:
! CALL STATEMENT...
!   _temp_2330 = _StringConst_77
	set	_StringConst_77,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_2330  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	664,r13		! source line 664
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	665,r13		! source line 665
	mov	"\0\0BR",r10
	jmp	_Label_2320
! DEFAULT CASE...
_Label_2319:
! CALL STATEMENT...
!   _temp_2331 = _StringConst_78
	set	_StringConst_78,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_2331  sizeInBytes=4
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
_Label_2320:
! CALL STATEMENT...
!   _temp_2332 = _StringConst_79
	set	_StringConst_79,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_2332  sizeInBytes=4
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
!   _temp_2333 = _StringConst_80
	set	_StringConst_80,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_2333  sizeInBytes=4
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
!   _temp_2338 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2339 = 14		(4 bytes)
	mov	14,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2338  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+-192]
_Label_2334:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2339 then goto _Label_2337		
	load	[r14+-192],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2337
_Label_2335:
	mov	673,r13		! source line 673
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2340 = _StringConst_81
	set	_StringConst_81,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_2340  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	674,r13		! source line 674
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2341 = i + 1		(int)
	load	[r14+-192],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2341  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	675,r13		! source line 675
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2342 = _StringConst_82
	set	_StringConst_82,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_2342  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	676,r13		! source line 676
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2344 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_2344 [i ] into _temp_2345
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
!   Data Move: _temp_2343 = *_temp_2345  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_2343  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	677,r13		! source line 677
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2346 = _StringConst_83
	set	_StringConst_83,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2346  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	678,r13		! source line 678
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2348 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-20]
!   Move address of _temp_2348 [i ] into _temp_2349
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
!   Data Move: _temp_2347 = *_temp_2349  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2347  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	679,r13		! source line 679
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2350 = _StringConst_84
	set	_StringConst_84,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2350  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	680,r13		! source line 680
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_2336:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_2334
! END FOR
_Label_2337:
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
	.word	_Label_2351
	.word	4		! total size of parameters
	.word	196		! frame size = 196
	.word	_Label_2352
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2353
	.word	-12
	.word	4
	.word	_Label_2354
	.word	-16
	.word	4
	.word	_Label_2355
	.word	-20
	.word	4
	.word	_Label_2356
	.word	-24
	.word	4
	.word	_Label_2357
	.word	-28
	.word	4
	.word	_Label_2358
	.word	-32
	.word	4
	.word	_Label_2359
	.word	-36
	.word	4
	.word	_Label_2360
	.word	-40
	.word	4
	.word	_Label_2361
	.word	-44
	.word	4
	.word	_Label_2362
	.word	-48
	.word	4
	.word	_Label_2363
	.word	-52
	.word	4
	.word	_Label_2364
	.word	-56
	.word	4
	.word	_Label_2365
	.word	-60
	.word	4
	.word	_Label_2366
	.word	-64
	.word	4
	.word	_Label_2367
	.word	-68
	.word	4
	.word	_Label_2368
	.word	-72
	.word	4
	.word	_Label_2369
	.word	-76
	.word	4
	.word	_Label_2370
	.word	-80
	.word	4
	.word	_Label_2371
	.word	-84
	.word	4
	.word	_Label_2372
	.word	-88
	.word	4
	.word	_Label_2373
	.word	-92
	.word	4
	.word	_Label_2374
	.word	-96
	.word	4
	.word	_Label_2375
	.word	-100
	.word	4
	.word	_Label_2376
	.word	-104
	.word	4
	.word	_Label_2377
	.word	-108
	.word	4
	.word	_Label_2378
	.word	-112
	.word	4
	.word	_Label_2379
	.word	-116
	.word	4
	.word	_Label_2380
	.word	-120
	.word	4
	.word	_Label_2381
	.word	-124
	.word	4
	.word	_Label_2382
	.word	-128
	.word	4
	.word	_Label_2383
	.word	-132
	.word	4
	.word	_Label_2384
	.word	-136
	.word	4
	.word	_Label_2385
	.word	-140
	.word	4
	.word	_Label_2386
	.word	-144
	.word	4
	.word	_Label_2387
	.word	-148
	.word	4
	.word	_Label_2388
	.word	-152
	.word	4
	.word	_Label_2389
	.word	-156
	.word	4
	.word	_Label_2390
	.word	-160
	.word	4
	.word	_Label_2391
	.word	-164
	.word	4
	.word	_Label_2392
	.word	-168
	.word	4
	.word	_Label_2393
	.word	-172
	.word	4
	.word	_Label_2394
	.word	-176
	.word	4
	.word	_Label_2395
	.word	-180
	.word	4
	.word	_Label_2396
	.word	-184
	.word	4
	.word	_Label_2397
	.word	-188
	.word	4
	.word	_Label_2398
	.word	-192
	.word	4
	.word	_Label_2399
	.word	-196
	.word	4
	.word	0
_Label_2351:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2352:
	.ascii	"Pself\0"
	.align
_Label_2353:
	.byte	'?'
	.ascii	"_temp_2350\0"
	.align
_Label_2354:
	.byte	'?'
	.ascii	"_temp_2349\0"
	.align
_Label_2355:
	.byte	'?'
	.ascii	"_temp_2348\0"
	.align
_Label_2356:
	.byte	'?'
	.ascii	"_temp_2347\0"
	.align
_Label_2357:
	.byte	'?'
	.ascii	"_temp_2346\0"
	.align
_Label_2358:
	.byte	'?'
	.ascii	"_temp_2345\0"
	.align
_Label_2359:
	.byte	'?'
	.ascii	"_temp_2344\0"
	.align
_Label_2360:
	.byte	'?'
	.ascii	"_temp_2343\0"
	.align
_Label_2361:
	.byte	'?'
	.ascii	"_temp_2342\0"
	.align
_Label_2362:
	.byte	'?'
	.ascii	"_temp_2341\0"
	.align
_Label_2363:
	.byte	'?'
	.ascii	"_temp_2340\0"
	.align
_Label_2364:
	.byte	'?'
	.ascii	"_temp_2339\0"
	.align
_Label_2365:
	.byte	'?'
	.ascii	"_temp_2338\0"
	.align
_Label_2366:
	.byte	'?'
	.ascii	"_temp_2333\0"
	.align
_Label_2367:
	.byte	'?'
	.ascii	"_temp_2332\0"
	.align
_Label_2368:
	.byte	'?'
	.ascii	"_temp_2331\0"
	.align
_Label_2369:
	.byte	'?'
	.ascii	"_temp_2330\0"
	.align
_Label_2370:
	.byte	'?'
	.ascii	"_temp_2329\0"
	.align
_Label_2371:
	.byte	'?'
	.ascii	"_temp_2328\0"
	.align
_Label_2372:
	.byte	'?'
	.ascii	"_temp_2327\0"
	.align
_Label_2373:
	.byte	'?'
	.ascii	"_temp_2326\0"
	.align
_Label_2374:
	.byte	'?'
	.ascii	"_temp_2318\0"
	.align
_Label_2375:
	.byte	'?'
	.ascii	"_temp_2317\0"
	.align
_Label_2376:
	.byte	'?'
	.ascii	"_temp_2316\0"
	.align
_Label_2377:
	.byte	'?'
	.ascii	"_temp_2315\0"
	.align
_Label_2378:
	.byte	'?'
	.ascii	"_temp_2314\0"
	.align
_Label_2379:
	.byte	'?'
	.ascii	"_temp_2313\0"
	.align
_Label_2380:
	.byte	'?'
	.ascii	"_temp_2312\0"
	.align
_Label_2381:
	.byte	'?'
	.ascii	"_temp_2311\0"
	.align
_Label_2382:
	.byte	'?'
	.ascii	"_temp_2310\0"
	.align
_Label_2383:
	.byte	'?'
	.ascii	"_temp_2309\0"
	.align
_Label_2384:
	.byte	'?'
	.ascii	"_temp_2308\0"
	.align
_Label_2385:
	.byte	'?'
	.ascii	"_temp_2307\0"
	.align
_Label_2386:
	.byte	'?'
	.ascii	"_temp_2306\0"
	.align
_Label_2387:
	.byte	'?'
	.ascii	"_temp_2305\0"
	.align
_Label_2388:
	.byte	'?'
	.ascii	"_temp_2304\0"
	.align
_Label_2389:
	.byte	'?'
	.ascii	"_temp_2303\0"
	.align
_Label_2390:
	.byte	'?'
	.ascii	"_temp_2302\0"
	.align
_Label_2391:
	.byte	'?'
	.ascii	"_temp_2301\0"
	.align
_Label_2392:
	.byte	'?'
	.ascii	"_temp_2300\0"
	.align
_Label_2393:
	.byte	'?'
	.ascii	"_temp_2295\0"
	.align
_Label_2394:
	.byte	'?'
	.ascii	"_temp_2294\0"
	.align
_Label_2395:
	.byte	'?'
	.ascii	"_temp_2293\0"
	.align
_Label_2396:
	.byte	'?'
	.ascii	"_temp_2292\0"
	.align
_Label_2397:
	.byte	'?'
	.ascii	"_temp_2291\0"
	.align
_Label_2398:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2399:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  CLASS ThreadManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ThreadManager:
	.word	_Label_2400
	jmp	_Method_P_Kernel_ThreadManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ThreadManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ThreadManager_3	! 12:	GetANewThread
	jmp	_Method_P_Kernel_ThreadManager_4	! 16:	FreeThread
	.word	0
! 
! Class descriptor:
! 
_Label_2400:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2401
	.word	_sourceFileName
	.word	226		! line number
	.word	41696		! size of instances, in bytes
	.word	_P_Kernel_ThreadManager
	.word	_P_System_Object
	.word	0
_Label_2401:
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
_Label_4478:
	push	r0
	sub	r1,1,r1
	bne	_Label_4478
	mov	737,r13		! source line 737
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	743,r13		! source line 743
	mov	"\0\0AS",r10
!   _temp_2402 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	set	-45904,r2
	store	r1,[r14+r2]
!   NEW ARRAY Constructor...
!   _temp_2404 = &_temp_2403
	set	-45900,r1
	add	r14,r1,r1
	store	r1,[r14+-4256]
!   _temp_2404 = _temp_2404 + 4
	load	[r14+-4256],r1
	add	r1,4,r1
	store	r1,[r14+-4256]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2406 = zeros  (sizeInBytes=4164)
	add	r14,-4248,r4
	mov	1041,r3
_Label_4479:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4479
!   _temp_2406 = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	store	r1,[r14+-4248]
	mov	10,r1
	store	r1,[r14+-4252]
_Label_2408:
!   Data Move: *_temp_2404 = _temp_2406  (sizeInBytes=4164)
	add	r14,-4248,r5
	load	[r14+-4256],r4
	mov	1041,r3
_Label_4480:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4480
!   _temp_2404 = _temp_2404 + 4164
	load	[r14+-4256],r1
	add	r1,4164,r1
	store	r1,[r14+-4256]
!   _temp_2405 = _temp_2405 + -1
	load	[r14+-4252],r1
	add	r1,-1,r1
	store	r1,[r14+-4252]
!   if intNotZero (_temp_2405) then goto _Label_2408
	load	[r14+-4252],r1
	cmp	r1,r0
	bne	_Label_2408
!   Initialize the array size...
	mov	10,r1
	set	-45900,r2
	store	r1,[r14+r2]
!   _temp_2409 = &_temp_2403
	set	-45900,r1
	add	r14,r1,r1
	store	r1,[r14+-80]
!   make sure array has size 10
	set	-45904,r1
	load	[r14+r1],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_4481
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4481:
!   make sure array has size 10
	load	[r14+-80],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2402 = *_temp_2409  (sizeInBytes=41644)
	load	[r14+-80],r5
	set	-45904,r4
	load	[r14+r4],r4
	mov	10411,r3
_Label_4482:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4482
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
!   _temp_2417 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2418 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2417  (sizeInBytes=4)
	load	[r14+-64],r1
	set	-45908,r2
	store	r1,[r14+r2]
_Label_2413:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2418 then goto _Label_2416		
	set	-45908,r1
	load	[r14+r1],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2416
_Label_2414:
	mov	747,r13		! source line 747
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	748,r13		! source line 748
	mov	"\0\0SE",r10
!   _temp_2419 = _StringConst_85
	set	_StringConst_85,r1
	store	r1,[r14+-56]
!   _temp_2420 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   Move address of _temp_2420 [i ] into _temp_2421
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
!   Prepare Argument: offset=12  value=_temp_2419  sizeInBytes=4
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
!   _temp_2422 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_2422 [i ] into _temp_2423
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
!   _temp_2424 = _temp_2423 + 76
	load	[r14+-40],r1
	add	r1,76,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_2424 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-36],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	750,r13		! source line 750
	mov	"\0\0SE",r10
!   _temp_2426 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_2426 [i ] into _temp_2427
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
!   _temp_2425 = _temp_2427		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-32]
!   _temp_2428 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_2425  sizeInBytes=4
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
_Label_2415:
!   i = i + 1
	set	-45908,r1
	load	[r14+r1],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	set	-45908,r2
	store	r1,[r14+r2]
	jmp	_Label_2413
! END FOR
_Label_2416:
! SEND STATEMENT...
	mov	752,r13		! source line 752
	mov	"\0\0SE",r10
!   _temp_2429 = &threadManagerLock
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
!   _temp_2430 = &aThreadIsAvailable
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
	.word	_Label_2431
	.word	4		! total size of parameters
	.word	45908		! frame size = 45908
	.word	_Label_2432
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2433
	.word	-12
	.word	4
	.word	_Label_2434
	.word	-16
	.word	4
	.word	_Label_2435
	.word	-20
	.word	4
	.word	_Label_2436
	.word	-24
	.word	4
	.word	_Label_2437
	.word	-28
	.word	4
	.word	_Label_2438
	.word	-32
	.word	4
	.word	_Label_2439
	.word	-36
	.word	4
	.word	_Label_2440
	.word	-40
	.word	4
	.word	_Label_2441
	.word	-44
	.word	4
	.word	_Label_2442
	.word	-48
	.word	4
	.word	_Label_2443
	.word	-52
	.word	4
	.word	_Label_2444
	.word	-56
	.word	4
	.word	_Label_2445
	.word	-60
	.word	4
	.word	_Label_2446
	.word	-64
	.word	4
	.word	_Label_2447
	.word	-68
	.word	4
	.word	_Label_2448
	.word	-72
	.word	4
	.word	_Label_2449
	.word	-76
	.word	4
	.word	_Label_2450
	.word	-80
	.word	4
	.word	_Label_2451
	.word	-84
	.word	4
	.word	_Label_2452
	.word	-4248
	.word	4164
	.word	_Label_2453
	.word	-4252
	.word	4
	.word	_Label_2454
	.word	-4256
	.word	4
	.word	_Label_2455
	.word	-45900
	.word	41644
	.word	_Label_2456
	.word	-45904
	.word	4
	.word	_Label_2457
	.word	-45908
	.word	4
	.word	0
_Label_2431:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2432:
	.ascii	"Pself\0"
	.align
_Label_2433:
	.byte	'?'
	.ascii	"_temp_2430\0"
	.align
_Label_2434:
	.byte	'?'
	.ascii	"_temp_2429\0"
	.align
_Label_2435:
	.byte	'?'
	.ascii	"_temp_2428\0"
	.align
_Label_2436:
	.byte	'?'
	.ascii	"_temp_2427\0"
	.align
_Label_2437:
	.byte	'?'
	.ascii	"_temp_2426\0"
	.align
_Label_2438:
	.byte	'?'
	.ascii	"_temp_2425\0"
	.align
_Label_2439:
	.byte	'?'
	.ascii	"_temp_2424\0"
	.align
_Label_2440:
	.byte	'?'
	.ascii	"_temp_2423\0"
	.align
_Label_2441:
	.byte	'?'
	.ascii	"_temp_2422\0"
	.align
_Label_2442:
	.byte	'?'
	.ascii	"_temp_2421\0"
	.align
_Label_2443:
	.byte	'?'
	.ascii	"_temp_2420\0"
	.align
_Label_2444:
	.byte	'?'
	.ascii	"_temp_2419\0"
	.align
_Label_2445:
	.byte	'?'
	.ascii	"_temp_2418\0"
	.align
_Label_2446:
	.byte	'?'
	.ascii	"_temp_2417\0"
	.align
_Label_2447:
	.byte	'?'
	.ascii	"_temp_2412\0"
	.align
_Label_2448:
	.byte	'?'
	.ascii	"_temp_2411\0"
	.align
_Label_2449:
	.byte	'?'
	.ascii	"_temp_2410\0"
	.align
_Label_2450:
	.byte	'?'
	.ascii	"_temp_2409\0"
	.align
_Label_2451:
	.byte	'?'
	.ascii	"_temp_2407\0"
	.align
_Label_2452:
	.byte	'?'
	.ascii	"_temp_2406\0"
	.align
_Label_2453:
	.byte	'?'
	.ascii	"_temp_2405\0"
	.align
_Label_2454:
	.byte	'?'
	.ascii	"_temp_2404\0"
	.align
_Label_2455:
	.byte	'?'
	.ascii	"_temp_2403\0"
	.align
_Label_2456:
	.byte	'?'
	.ascii	"_temp_2402\0"
	.align
_Label_2457:
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
_Label_4483:
	push	r0
	sub	r1,1,r1
	bne	_Label_4483
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
!   _temp_2458 = _StringConst_86
	set	_StringConst_86,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_2458  sizeInBytes=4
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
!   _temp_2463 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2464 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2463  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-56]
_Label_2459:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2464 then goto _Label_2462		
	load	[r14+-56],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2462
_Label_2460:
	mov	767,r13		! source line 767
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2465 = _StringConst_87
	set	_StringConst_87,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_2465  sizeInBytes=4
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
!   _temp_2466 = _StringConst_88
	set	_StringConst_88,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2466  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	770,r13		! source line 770
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2468 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_2468 [i ] into _temp_2469
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
!   _temp_2467 = _temp_2469		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2467  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	771,r13		! source line 771
	mov	"\0\0CA",r10
	call	_function_194_ThreadPrintShort
!   Increment the FOR-LOOP index variable and jump back
_Label_2461:
!   i = i + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_2459
! END FOR
_Label_2462:
! CALL STATEMENT...
!   _temp_2470 = _StringConst_89
	set	_StringConst_89,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2470  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	773,r13		! source line 773
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	774,r13		! source line 774
	mov	"\0\0SE",r10
!   _temp_2471 = _function_193_PrintObjectAddr
	set	_function_193_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_2472 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2471  sizeInBytes=4
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
	.word	_Label_2473
	.word	4		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_2474
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2475
	.word	-12
	.word	4
	.word	_Label_2476
	.word	-16
	.word	4
	.word	_Label_2477
	.word	-20
	.word	4
	.word	_Label_2478
	.word	-24
	.word	4
	.word	_Label_2479
	.word	-28
	.word	4
	.word	_Label_2480
	.word	-32
	.word	4
	.word	_Label_2481
	.word	-36
	.word	4
	.word	_Label_2482
	.word	-40
	.word	4
	.word	_Label_2483
	.word	-44
	.word	4
	.word	_Label_2484
	.word	-48
	.word	4
	.word	_Label_2485
	.word	-52
	.word	4
	.word	_Label_2486
	.word	-56
	.word	4
	.word	_Label_2487
	.word	-60
	.word	4
	.word	0
_Label_2473:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2474:
	.ascii	"Pself\0"
	.align
_Label_2475:
	.byte	'?'
	.ascii	"_temp_2472\0"
	.align
_Label_2476:
	.byte	'?'
	.ascii	"_temp_2471\0"
	.align
_Label_2477:
	.byte	'?'
	.ascii	"_temp_2470\0"
	.align
_Label_2478:
	.byte	'?'
	.ascii	"_temp_2469\0"
	.align
_Label_2479:
	.byte	'?'
	.ascii	"_temp_2468\0"
	.align
_Label_2480:
	.byte	'?'
	.ascii	"_temp_2467\0"
	.align
_Label_2481:
	.byte	'?'
	.ascii	"_temp_2466\0"
	.align
_Label_2482:
	.byte	'?'
	.ascii	"_temp_2465\0"
	.align
_Label_2483:
	.byte	'?'
	.ascii	"_temp_2464\0"
	.align
_Label_2484:
	.byte	'?'
	.ascii	"_temp_2463\0"
	.align
_Label_2485:
	.byte	'?'
	.ascii	"_temp_2458\0"
	.align
_Label_2486:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2487:
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
_Label_4484:
	push	r0
	sub	r1,1,r1
	bne	_Label_4484
	mov	781,r13		! source line 781
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	787,r13		! source line 787
	mov	"\0\0SE",r10
!   _temp_2488 = &threadManagerLock
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
_Label_2489:
	mov	788,r13		! source line 788
	mov	"\0\0SE",r10
!   _temp_2492 = &freeList
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
!   if result==true then goto _Label_2490 else goto _Label_2491
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2491
	jmp	_Label_2490
_Label_2490:
	mov	788,r13		! source line 788
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	789,r13		! source line 789
	mov	"\0\0SE",r10
!   _temp_2493 = &threadManagerLock
	set	41676,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-28]
!   _temp_2494 = &aThreadIsAvailable
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_2493  sizeInBytes=4
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
	jmp	_Label_2489
_Label_2491:
! ASSIGNMENT STATEMENT...
	mov	791,r13		! source line 791
	mov	"\0\0AS",r10
	mov	791,r13		! source line 791
	mov	"\0\0SE",r10
!   _temp_2495 = &freeList
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
!   _temp_2496 = availableThreadPtr + 76
	load	[r14+-40],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2496 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	793,r13		! source line 793
	mov	"\0\0SE",r10
!   _temp_2497 = &threadManagerLock
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
	.word	_Label_2498
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_2499
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2500
	.word	-12
	.word	4
	.word	_Label_2501
	.word	-16
	.word	4
	.word	_Label_2502
	.word	-20
	.word	4
	.word	_Label_2503
	.word	-24
	.word	4
	.word	_Label_2504
	.word	-28
	.word	4
	.word	_Label_2505
	.word	-32
	.word	4
	.word	_Label_2506
	.word	-36
	.word	4
	.word	_Label_2507
	.word	-40
	.word	4
	.word	0
_Label_2498:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"GetANewThread\0"
	.align
_Label_2499:
	.ascii	"Pself\0"
	.align
_Label_2500:
	.byte	'?'
	.ascii	"_temp_2497\0"
	.align
_Label_2501:
	.byte	'?'
	.ascii	"_temp_2496\0"
	.align
_Label_2502:
	.byte	'?'
	.ascii	"_temp_2495\0"
	.align
_Label_2503:
	.byte	'?'
	.ascii	"_temp_2494\0"
	.align
_Label_2504:
	.byte	'?'
	.ascii	"_temp_2493\0"
	.align
_Label_2505:
	.byte	'?'
	.ascii	"_temp_2492\0"
	.align
_Label_2506:
	.byte	'?'
	.ascii	"_temp_2488\0"
	.align
_Label_2507:
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
_Label_4485:
	push	r0
	sub	r1,1,r1
	bne	_Label_4485
	mov	799,r13		! source line 799
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	803,r13		! source line 803
	mov	"\0\0SE",r10
!   _temp_2508 = &threadManagerLock
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
!   _temp_2509 = th + 76
	load	[r14+12],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2509 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	805,r13		! source line 805
	mov	"\0\0SE",r10
!   _temp_2510 = &freeList
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
!   _temp_2511 = &threadManagerLock
	set	41676,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-20]
!   _temp_2512 = &aThreadIsAvailable
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2511  sizeInBytes=4
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
!   _temp_2513 = &threadManagerLock
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
	.word	_Label_2514
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_2515
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2516
	.word	12
	.word	4
	.word	_Label_2517
	.word	-12
	.word	4
	.word	_Label_2518
	.word	-16
	.word	4
	.word	_Label_2519
	.word	-20
	.word	4
	.word	_Label_2520
	.word	-24
	.word	4
	.word	_Label_2521
	.word	-28
	.word	4
	.word	_Label_2522
	.word	-32
	.word	4
	.word	0
_Label_2514:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"FreeThread\0"
	.align
_Label_2515:
	.ascii	"Pself\0"
	.align
_Label_2516:
	.byte	'P'
	.ascii	"th\0"
	.align
_Label_2517:
	.byte	'?'
	.ascii	"_temp_2513\0"
	.align
_Label_2518:
	.byte	'?'
	.ascii	"_temp_2512\0"
	.align
_Label_2519:
	.byte	'?'
	.ascii	"_temp_2511\0"
	.align
_Label_2520:
	.byte	'?'
	.ascii	"_temp_2510\0"
	.align
_Label_2521:
	.byte	'?'
	.ascii	"_temp_2509\0"
	.align
_Label_2522:
	.byte	'?'
	.ascii	"_temp_2508\0"
	.align
! 
! ===============  CLASS ProcessControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessControlBlock:
	.word	_Label_2523
	jmp	_Method_P_Kernel_ProcessControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessControlBlock_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessControlBlock_3	! 12:	PrintShort
	.word	0
! 
! Class descriptor:
! 
_Label_2523:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2524
	.word	_sourceFileName
	.word	247		! line number
	.word	168		! size of instances, in bytes
	.word	_P_Kernel_ProcessControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_2524:
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
_Label_4486:
	push	r0
	sub	r1,1,r1
	bne	_Label_4486
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
_Label_4487:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4487
!   addrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! SEND STATEMENT...
	mov	824,r13		! source line 824
	mov	"\0\0SE",r10
!   _temp_2526 = &addrSpace
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
!   _temp_2527 = &fileDescriptor
	load	[r14+8],r1
	add	r1,124,r1
	store	r1,[r14+-68]
!   NEW ARRAY Constructor...
!   _temp_2529 = &_temp_2528
	add	r14,-64,r1
	store	r1,[r14+-20]
!   _temp_2529 = _temp_2529 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	10,r1
	store	r1,[r14+-16]
_Label_2531:
!   Data Move: *_temp_2529 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_2529 = _temp_2529 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_2530 = _temp_2530 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_2530) then goto _Label_2531
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_2531
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-64]
!   _temp_2532 = &_temp_2528
	add	r14,-64,r1
	store	r1,[r14+-12]
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_4488
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4488:
!   make sure array has size 10
	load	[r14+-12],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2527 = *_temp_2532  (sizeInBytes=44)
	load	[r14+-12],r5
	load	[r14+-68],r4
	mov	11,r3
_Label_4489:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4489
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
	.word	_Label_2533
	.word	4		! total size of parameters
	.word	72		! frame size = 72
	.word	_Label_2534
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2535
	.word	-12
	.word	4
	.word	_Label_2536
	.word	-16
	.word	4
	.word	_Label_2537
	.word	-20
	.word	4
	.word	_Label_2538
	.word	-64
	.word	44
	.word	_Label_2539
	.word	-68
	.word	4
	.word	_Label_2540
	.word	-72
	.word	4
	.word	_Label_2541
	.word	-76
	.word	4
	.word	0
_Label_2533:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2534:
	.ascii	"Pself\0"
	.align
_Label_2535:
	.byte	'?'
	.ascii	"_temp_2532\0"
	.align
_Label_2536:
	.byte	'?'
	.ascii	"_temp_2530\0"
	.align
_Label_2537:
	.byte	'?'
	.ascii	"_temp_2529\0"
	.align
_Label_2538:
	.byte	'?'
	.ascii	"_temp_2528\0"
	.align
_Label_2539:
	.byte	'?'
	.ascii	"_temp_2527\0"
	.align
_Label_2540:
	.byte	'?'
	.ascii	"_temp_2526\0"
	.align
_Label_2541:
	.byte	'?'
	.ascii	"_temp_2525\0"
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
_Label_4490:
	push	r0
	sub	r1,1,r1
	bne	_Label_4490
	mov	831,r13		! source line 831
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	836,r13		! source line 836
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2542) then goto _runtimeErrorNullPointer
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
!   _temp_2543 = _StringConst_90
	set	_StringConst_90,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2543  sizeInBytes=4
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
	call	_function_194_ThreadPrintShort
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
	.word	_Label_2544
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_2545
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2546
	.word	-12
	.word	4
	.word	_Label_2547
	.word	-16
	.word	4
	.word	0
_Label_2544:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2545:
	.ascii	"Pself\0"
	.align
_Label_2546:
	.byte	'?'
	.ascii	"_temp_2543\0"
	.align
_Label_2547:
	.byte	'?'
	.ascii	"_temp_2542\0"
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
_Label_4491:
	push	r0
	sub	r1,1,r1
	bne	_Label_4491
	mov	855,r13		! source line 855
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2548 = _StringConst_91
	set	_StringConst_91,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2548  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	859,r13		! source line 859
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_2549  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	860,r13		! source line 860
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2550 = _StringConst_92
	set	_StringConst_92,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_2550  sizeInBytes=4
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
!   _temp_2551 = _StringConst_93
	set	_StringConst_93,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2551  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	863,r13		! source line 863
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	864,r13		! source line 864
	mov	"\0\0IF",r10
!   if status != 1 then goto _Label_2553		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_2553
!	jmp	_Label_2552
_Label_2552:
! THEN...
	mov	865,r13		! source line 865
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2554 = _StringConst_94
	set	_StringConst_94,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2554  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	865,r13		! source line 865
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2555
_Label_2553:
! ELSE...
	mov	866,r13		! source line 866
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	866,r13		! source line 866
	mov	"\0\0IF",r10
!   if status != 2 then goto _Label_2557		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_2557
!	jmp	_Label_2556
_Label_2556:
! THEN...
	mov	867,r13		! source line 867
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2558 = _StringConst_95
	set	_StringConst_95,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2558  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	867,r13		! source line 867
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2559
_Label_2557:
! ELSE...
	mov	868,r13		! source line 868
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	868,r13		! source line 868
	mov	"\0\0IF",r10
!   if status != 3 then goto _Label_2561		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_2561
!	jmp	_Label_2560
_Label_2560:
! THEN...
	mov	869,r13		! source line 869
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2562 = _StringConst_96
	set	_StringConst_96,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2562  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	869,r13		! source line 869
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2563
_Label_2561:
! ELSE...
	mov	871,r13		! source line 871
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2564 = _StringConst_97
	set	_StringConst_97,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2564  sizeInBytes=4
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
_Label_2563:
! END IF...
_Label_2559:
! END IF...
_Label_2555:
! CALL STATEMENT...
!   _temp_2565 = _StringConst_98
	set	_StringConst_98,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2565  sizeInBytes=4
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
!   _temp_2566 = _StringConst_99
	set	_StringConst_99,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2566  sizeInBytes=4
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
	.word	_Label_2567
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_2568
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2569
	.word	-12
	.word	4
	.word	_Label_2570
	.word	-16
	.word	4
	.word	_Label_2571
	.word	-20
	.word	4
	.word	_Label_2572
	.word	-24
	.word	4
	.word	_Label_2573
	.word	-28
	.word	4
	.word	_Label_2574
	.word	-32
	.word	4
	.word	_Label_2575
	.word	-36
	.word	4
	.word	_Label_2576
	.word	-40
	.word	4
	.word	_Label_2577
	.word	-44
	.word	4
	.word	_Label_2578
	.word	-48
	.word	4
	.word	0
_Label_2567:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_2568:
	.ascii	"Pself\0"
	.align
_Label_2569:
	.byte	'?'
	.ascii	"_temp_2566\0"
	.align
_Label_2570:
	.byte	'?'
	.ascii	"_temp_2565\0"
	.align
_Label_2571:
	.byte	'?'
	.ascii	"_temp_2564\0"
	.align
_Label_2572:
	.byte	'?'
	.ascii	"_temp_2562\0"
	.align
_Label_2573:
	.byte	'?'
	.ascii	"_temp_2558\0"
	.align
_Label_2574:
	.byte	'?'
	.ascii	"_temp_2554\0"
	.align
_Label_2575:
	.byte	'?'
	.ascii	"_temp_2551\0"
	.align
_Label_2576:
	.byte	'?'
	.ascii	"_temp_2550\0"
	.align
_Label_2577:
	.byte	'?'
	.ascii	"_temp_2549\0"
	.align
_Label_2578:
	.byte	'?'
	.ascii	"_temp_2548\0"
	.align
! 
! ===============  CLASS ProcessManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessManager:
	.word	_Label_2579
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
_Label_2579:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2580
	.word	_sourceFileName
	.word	267		! line number
	.word	1756		! size of instances, in bytes
	.word	_P_Kernel_ProcessManager
	.word	_P_System_Object
	.word	0
_Label_2580:
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
_Label_4492:
	push	r0
	sub	r1,1,r1
	bne	_Label_4492
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
!   _temp_2582 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-1948]
!   NEW ARRAY Constructor...
!   _temp_2584 = &_temp_2583
	add	r14,-1944,r1
	store	r1,[r14+-260]
!   _temp_2584 = _temp_2584 + 4
	load	[r14+-260],r1
	add	r1,4,r1
	store	r1,[r14+-260]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2586 = zeros  (sizeInBytes=168)
	add	r14,-252,r4
	mov	42,r3
_Label_4493:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4493
!   _temp_2586 = _P_Kernel_ProcessControlBlock
	set	_P_Kernel_ProcessControlBlock,r1
	store	r1,[r14+-252]
	mov	10,r1
	store	r1,[r14+-256]
_Label_2588:
!   Data Move: *_temp_2584 = _temp_2586  (sizeInBytes=168)
	add	r14,-252,r5
	load	[r14+-260],r4
	mov	42,r3
_Label_4494:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4494
!   _temp_2584 = _temp_2584 + 168
	load	[r14+-260],r1
	add	r1,168,r1
	store	r1,[r14+-260]
!   _temp_2585 = _temp_2585 + -1
	load	[r14+-256],r1
	add	r1,-1,r1
	store	r1,[r14+-256]
!   if intNotZero (_temp_2585) then goto _Label_2588
	load	[r14+-256],r1
	cmp	r1,r0
	bne	_Label_2588
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-1944]
!   _temp_2589 = &_temp_2583
	add	r14,-1944,r1
	store	r1,[r14+-80]
!   make sure array has size 10
	load	[r14+-1948],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_4495
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4495:
!   make sure array has size 10
	load	[r14+-80],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2582 = *_temp_2589  (sizeInBytes=1684)
	load	[r14+-80],r5
	load	[r14+-1948],r4
	mov	421,r3
_Label_4496:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4496
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
!   _temp_2597 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2598 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2597  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-1956]
_Label_2593:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2598 then goto _Label_2596		
	load	[r14+-1956],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2596
_Label_2594:
	mov	899,r13		! source line 899
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	900,r13		! source line 900
	mov	"\0\0SE",r10
!   _temp_2599 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   Move address of _temp_2599 [i ] into _temp_2600
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
!   _temp_2602 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_2602 [i ] into _temp_2603
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
!   _temp_2601 = _temp_2603		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   _temp_2604 = &freeList
	load	[r14+8],r1
	add	r1,1724,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_2601  sizeInBytes=4
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
!   _temp_2605 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Move address of _temp_2605 [i ] into _temp_2606
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
!   _temp_2607 = _temp_2606 + 20
	load	[r14+-28],r1
	add	r1,20,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2607 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-24],r2
	store	r1,[r2]
!   Increment the FOR-LOOP index variable and jump back
_Label_2595:
!   i = i + 1
	load	[r14+-1956],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-1956]
	jmp	_Label_2593
! END FOR
_Label_2596:
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
!   _temp_2608 = &processManagerLock
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
!   _temp_2609 = &aProcessBecameFree
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
!   _temp_2610 = &aProcessDied
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
	.word	_Label_2611
	.word	4		! total size of parameters
	.word	1956		! frame size = 1956
	.word	_Label_2612
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2613
	.word	-12
	.word	4
	.word	_Label_2614
	.word	-16
	.word	4
	.word	_Label_2615
	.word	-20
	.word	4
	.word	_Label_2616
	.word	-24
	.word	4
	.word	_Label_2617
	.word	-28
	.word	4
	.word	_Label_2618
	.word	-32
	.word	4
	.word	_Label_2619
	.word	-36
	.word	4
	.word	_Label_2620
	.word	-40
	.word	4
	.word	_Label_2621
	.word	-44
	.word	4
	.word	_Label_2622
	.word	-48
	.word	4
	.word	_Label_2623
	.word	-52
	.word	4
	.word	_Label_2624
	.word	-56
	.word	4
	.word	_Label_2625
	.word	-60
	.word	4
	.word	_Label_2626
	.word	-64
	.word	4
	.word	_Label_2627
	.word	-68
	.word	4
	.word	_Label_2628
	.word	-72
	.word	4
	.word	_Label_2629
	.word	-76
	.word	4
	.word	_Label_2630
	.word	-80
	.word	4
	.word	_Label_2631
	.word	-84
	.word	4
	.word	_Label_2632
	.word	-252
	.word	168
	.word	_Label_2633
	.word	-256
	.word	4
	.word	_Label_2634
	.word	-260
	.word	4
	.word	_Label_2635
	.word	-1944
	.word	1684
	.word	_Label_2636
	.word	-1948
	.word	4
	.word	_Label_2637
	.word	-1952
	.word	4
	.word	_Label_2638
	.word	-1956
	.word	4
	.word	0
_Label_2611:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2612:
	.ascii	"Pself\0"
	.align
_Label_2613:
	.byte	'?'
	.ascii	"_temp_2610\0"
	.align
_Label_2614:
	.byte	'?'
	.ascii	"_temp_2609\0"
	.align
_Label_2615:
	.byte	'?'
	.ascii	"_temp_2608\0"
	.align
_Label_2616:
	.byte	'?'
	.ascii	"_temp_2607\0"
	.align
_Label_2617:
	.byte	'?'
	.ascii	"_temp_2606\0"
	.align
_Label_2618:
	.byte	'?'
	.ascii	"_temp_2605\0"
	.align
_Label_2619:
	.byte	'?'
	.ascii	"_temp_2604\0"
	.align
_Label_2620:
	.byte	'?'
	.ascii	"_temp_2603\0"
	.align
_Label_2621:
	.byte	'?'
	.ascii	"_temp_2602\0"
	.align
_Label_2622:
	.byte	'?'
	.ascii	"_temp_2601\0"
	.align
_Label_2623:
	.byte	'?'
	.ascii	"_temp_2600\0"
	.align
_Label_2624:
	.byte	'?'
	.ascii	"_temp_2599\0"
	.align
_Label_2625:
	.byte	'?'
	.ascii	"_temp_2598\0"
	.align
_Label_2626:
	.byte	'?'
	.ascii	"_temp_2597\0"
	.align
_Label_2627:
	.byte	'?'
	.ascii	"_temp_2592\0"
	.align
_Label_2628:
	.byte	'?'
	.ascii	"_temp_2591\0"
	.align
_Label_2629:
	.byte	'?'
	.ascii	"_temp_2590\0"
	.align
_Label_2630:
	.byte	'?'
	.ascii	"_temp_2589\0"
	.align
_Label_2631:
	.byte	'?'
	.ascii	"_temp_2587\0"
	.align
_Label_2632:
	.byte	'?'
	.ascii	"_temp_2586\0"
	.align
_Label_2633:
	.byte	'?'
	.ascii	"_temp_2585\0"
	.align
_Label_2634:
	.byte	'?'
	.ascii	"_temp_2584\0"
	.align
_Label_2635:
	.byte	'?'
	.ascii	"_temp_2583\0"
	.align
_Label_2636:
	.byte	'?'
	.ascii	"_temp_2582\0"
	.align
_Label_2637:
	.byte	'?'
	.ascii	"_temp_2581\0"
	.align
_Label_2638:
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
_Label_4497:
	push	r0
	sub	r1,1,r1
	bne	_Label_4497
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
!   _temp_2639 = _StringConst_100
	set	_StringConst_100,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2639  sizeInBytes=4
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
!   _temp_2644 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2645 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2644  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-52]
_Label_2640:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2645 then goto _Label_2643		
	load	[r14+-52],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2643
_Label_2641:
	mov	921,r13		! source line 921
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2646 = _StringConst_101
	set	_StringConst_101,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2646  sizeInBytes=4
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
!   _temp_2647 = _StringConst_102
	set	_StringConst_102,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2647  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	924,r13		! source line 924
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	925,r13		! source line 925
	mov	"\0\0SE",r10
!   _temp_2648 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_2648 [i ] into _temp_2649
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
_Label_2642:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_2640
! END FOR
_Label_2643:
! CALL STATEMENT...
!   _temp_2650 = _StringConst_103
	set	_StringConst_103,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2650  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	927,r13		! source line 927
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	928,r13		! source line 928
	mov	"\0\0SE",r10
!   _temp_2651 = _function_193_PrintObjectAddr
	set	_function_193_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_2652 = &freeList
	load	[r14+8],r1
	add	r1,1724,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2651  sizeInBytes=4
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
	.word	_Label_2653
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_2654
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2655
	.word	-12
	.word	4
	.word	_Label_2656
	.word	-16
	.word	4
	.word	_Label_2657
	.word	-20
	.word	4
	.word	_Label_2658
	.word	-24
	.word	4
	.word	_Label_2659
	.word	-28
	.word	4
	.word	_Label_2660
	.word	-32
	.word	4
	.word	_Label_2661
	.word	-36
	.word	4
	.word	_Label_2662
	.word	-40
	.word	4
	.word	_Label_2663
	.word	-44
	.word	4
	.word	_Label_2664
	.word	-48
	.word	4
	.word	_Label_2665
	.word	-52
	.word	4
	.word	_Label_2666
	.word	-56
	.word	4
	.word	0
_Label_2653:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2654:
	.ascii	"Pself\0"
	.align
_Label_2655:
	.byte	'?'
	.ascii	"_temp_2652\0"
	.align
_Label_2656:
	.byte	'?'
	.ascii	"_temp_2651\0"
	.align
_Label_2657:
	.byte	'?'
	.ascii	"_temp_2650\0"
	.align
_Label_2658:
	.byte	'?'
	.ascii	"_temp_2649\0"
	.align
_Label_2659:
	.byte	'?'
	.ascii	"_temp_2648\0"
	.align
_Label_2660:
	.byte	'?'
	.ascii	"_temp_2647\0"
	.align
_Label_2661:
	.byte	'?'
	.ascii	"_temp_2646\0"
	.align
_Label_2662:
	.byte	'?'
	.ascii	"_temp_2645\0"
	.align
_Label_2663:
	.byte	'?'
	.ascii	"_temp_2644\0"
	.align
_Label_2664:
	.byte	'?'
	.ascii	"_temp_2639\0"
	.align
_Label_2665:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2666:
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
_Label_4498:
	push	r0
	sub	r1,1,r1
	bne	_Label_4498
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
!   _temp_2667 = _StringConst_104
	set	_StringConst_104,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_2667  sizeInBytes=4
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
!   _temp_2672 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2673 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2672  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-48]
_Label_2668:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2673 then goto _Label_2671		
	load	[r14+-48],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2671
_Label_2669:
	mov	944,r13		! source line 944
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2674 = _StringConst_105
	set	_StringConst_105,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2674  sizeInBytes=4
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
!   _temp_2675 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_2675 [i ] into _temp_2676
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
_Label_2670:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_2668
! END FOR
_Label_2671:
! CALL STATEMENT...
!   _temp_2677 = _StringConst_106
	set	_StringConst_106,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2677  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	949,r13		! source line 949
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	950,r13		! source line 950
	mov	"\0\0SE",r10
!   _temp_2678 = _function_193_PrintObjectAddr
	set	_function_193_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_2679 = &freeList
	load	[r14+8],r1
	add	r1,1724,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2678  sizeInBytes=4
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
	.word	_Label_2680
	.word	4		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2681
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2682
	.word	-12
	.word	4
	.word	_Label_2683
	.word	-16
	.word	4
	.word	_Label_2684
	.word	-20
	.word	4
	.word	_Label_2685
	.word	-24
	.word	4
	.word	_Label_2686
	.word	-28
	.word	4
	.word	_Label_2687
	.word	-32
	.word	4
	.word	_Label_2688
	.word	-36
	.word	4
	.word	_Label_2689
	.word	-40
	.word	4
	.word	_Label_2690
	.word	-44
	.word	4
	.word	_Label_2691
	.word	-48
	.word	4
	.word	_Label_2692
	.word	-52
	.word	4
	.word	0
_Label_2680:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_2681:
	.ascii	"Pself\0"
	.align
_Label_2682:
	.byte	'?'
	.ascii	"_temp_2679\0"
	.align
_Label_2683:
	.byte	'?'
	.ascii	"_temp_2678\0"
	.align
_Label_2684:
	.byte	'?'
	.ascii	"_temp_2677\0"
	.align
_Label_2685:
	.byte	'?'
	.ascii	"_temp_2676\0"
	.align
_Label_2686:
	.byte	'?'
	.ascii	"_temp_2675\0"
	.align
_Label_2687:
	.byte	'?'
	.ascii	"_temp_2674\0"
	.align
_Label_2688:
	.byte	'?'
	.ascii	"_temp_2673\0"
	.align
_Label_2689:
	.byte	'?'
	.ascii	"_temp_2672\0"
	.align
_Label_2690:
	.byte	'?'
	.ascii	"_temp_2667\0"
	.align
_Label_2691:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2692:
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
_Label_4499:
	push	r0
	sub	r1,1,r1
	bne	_Label_4499
	mov	957,r13		! source line 957
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	964,r13		! source line 964
	mov	"\0\0SE",r10
!   _temp_2693 = &processManagerLock
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
_Label_2694:
	mov	965,r13		! source line 965
	mov	"\0\0SE",r10
!   _temp_2697 = &freeList
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
!   if result==true then goto _Label_2695 else goto _Label_2696
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2696
	jmp	_Label_2695
_Label_2695:
	mov	965,r13		! source line 965
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	966,r13		! source line 966
	mov	"\0\0SE",r10
!   _temp_2698 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-32]
!   _temp_2699 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1708,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_2698  sizeInBytes=4
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
	jmp	_Label_2694
_Label_2696:
! ASSIGNMENT STATEMENT...
	mov	968,r13		! source line 968
	mov	"\0\0AS",r10
	mov	968,r13		! source line 968
	mov	"\0\0SE",r10
!   _temp_2700 = &freeList
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
!   _temp_2701 = nextProcessPtr + 12
	load	[r14+-44],r1
	add	r1,12,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2701 = nextPid  (sizeInBytes=4)
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
!   _temp_2702 = nextProcessPtr + 20
	load	[r14+-44],r1
	add	r1,20,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2702 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	972,r13		! source line 972
	mov	"\0\0SE",r10
!   _temp_2703 = &processManagerLock
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
	.word	_Label_2704
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_2705
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2706
	.word	-12
	.word	4
	.word	_Label_2707
	.word	-16
	.word	4
	.word	_Label_2708
	.word	-20
	.word	4
	.word	_Label_2709
	.word	-24
	.word	4
	.word	_Label_2710
	.word	-28
	.word	4
	.word	_Label_2711
	.word	-32
	.word	4
	.word	_Label_2712
	.word	-36
	.word	4
	.word	_Label_2713
	.word	-40
	.word	4
	.word	_Label_2714
	.word	-44
	.word	4
	.word	0
_Label_2704:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"GetANewProcess\0"
	.align
_Label_2705:
	.ascii	"Pself\0"
	.align
_Label_2706:
	.byte	'?'
	.ascii	"_temp_2703\0"
	.align
_Label_2707:
	.byte	'?'
	.ascii	"_temp_2702\0"
	.align
_Label_2708:
	.byte	'?'
	.ascii	"_temp_2701\0"
	.align
_Label_2709:
	.byte	'?'
	.ascii	"_temp_2700\0"
	.align
_Label_2710:
	.byte	'?'
	.ascii	"_temp_2699\0"
	.align
_Label_2711:
	.byte	'?'
	.ascii	"_temp_2698\0"
	.align
_Label_2712:
	.byte	'?'
	.ascii	"_temp_2697\0"
	.align
_Label_2713:
	.byte	'?'
	.ascii	"_temp_2693\0"
	.align
_Label_2714:
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
_Label_4500:
	push	r0
	sub	r1,1,r1
	bne	_Label_4500
	mov	978,r13		! source line 978
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	982,r13		! source line 982
	mov	"\0\0SE",r10
!   _temp_2715 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-244]
!   _temp_2716 = _temp_2715 + 1688
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
!   _temp_2721 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-236]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2722 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-232]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2721  (sizeInBytes=4)
	load	[r14+-236],r1
	store	r1,[r14+-248]
_Label_2717:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2722 then goto _Label_2720		
	load	[r14+-248],r1
	load	[r14+-232],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2720
_Label_2718:
	mov	985,r13		! source line 985
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	986,r13		! source line 986
	mov	"\0\0IF",r10
!   _temp_2726 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-224]
!   _temp_2727 = _temp_2726 + 4
	load	[r14+-224],r1
	add	r1,4,r1
	store	r1,[r14+-220]
!   Move address of _temp_2727 [i ] into _temp_2728
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
!   _temp_2729 = _temp_2728 + 12
	load	[r14+-216],r1
	add	r1,12,r1
	store	r1,[r14+-212]
!   Data Move: _temp_2725 = *_temp_2729  (sizeInBytes=4)
	load	[r14+-212],r1
	load	[r1],r1
	store	r1,[r14+-228]
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2731 = p + 16
	load	[r14+12],r1
	add	r1,16,r1
	store	r1,[r14+-204]
!   Data Move: _temp_2730 = *_temp_2731  (sizeInBytes=4)
	load	[r14+-204],r1
	load	[r1],r1
	store	r1,[r14+-208]
!   if _temp_2725 != _temp_2730 then goto _Label_2724		(int)
	load	[r14+-228],r1
	load	[r14+-208],r2
	cmp	r1,r2
	bne	_Label_2724
!	jmp	_Label_2723
_Label_2723:
! THEN...
	mov	987,r13		! source line 987
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	987,r13		! source line 987
	mov	"\0\0AS",r10
!   _temp_2732 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-200]
!   _temp_2733 = _temp_2732 + 4
	load	[r14+-200],r1
	add	r1,4,r1
	store	r1,[r14+-196]
!   Move address of _temp_2733 [i ] into _temp_2734
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
!   parentPcb = _temp_2734		(4 bytes)
	load	[r14+-192],r1
	store	r1,[r14+-252]
! END IF...
_Label_2724:
! IF STATEMENT...
	mov	989,r13		! source line 989
	mov	"\0\0IF",r10
!   _temp_2739 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-184]
!   _temp_2740 = _temp_2739 + 4
	load	[r14+-184],r1
	add	r1,4,r1
	store	r1,[r14+-180]
!   Move address of _temp_2740 [i ] into _temp_2741
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
!   _temp_2742 = _temp_2741 + 20
	load	[r14+-176],r1
	add	r1,20,r1
	store	r1,[r14+-172]
!   Data Move: _temp_2738 = *_temp_2742  (sizeInBytes=4)
	load	[r14+-172],r1
	load	[r1],r1
	store	r1,[r14+-188]
!   if _temp_2738 != 2 then goto _Label_2736		(int)
	load	[r14+-188],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_2736
!	jmp	_Label_2737
_Label_2737:
!   _temp_2744 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-164]
!   _temp_2745 = _temp_2744 + 4
	load	[r14+-164],r1
	add	r1,4,r1
	store	r1,[r14+-160]
!   Move address of _temp_2745 [i ] into _temp_2746
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
!   _temp_2747 = _temp_2746 + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-152]
!   Data Move: _temp_2743 = *_temp_2747  (sizeInBytes=4)
	load	[r14+-152],r1
	load	[r1],r1
	store	r1,[r14+-168]
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2749 = p + 12
	load	[r14+12],r1
	add	r1,12,r1
	store	r1,[r14+-144]
!   Data Move: _temp_2748 = *_temp_2749  (sizeInBytes=4)
	load	[r14+-144],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   if _temp_2743 != _temp_2748 then goto _Label_2736		(int)
	load	[r14+-168],r1
	load	[r14+-148],r2
	cmp	r1,r2
	bne	_Label_2736
!	jmp	_Label_2735
_Label_2735:
! THEN...
	mov	990,r13		! source line 990
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	990,r13		! source line 990
	mov	"\0\0AS",r10
!   _temp_2750 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-140]
!   _temp_2751 = _temp_2750 + 4
	load	[r14+-140],r1
	add	r1,4,r1
	store	r1,[r14+-136]
!   Move address of _temp_2751 [i ] into _temp_2752
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
!   _temp_2753 = _temp_2752 + 20
	load	[r14+-132],r1
	add	r1,20,r1
	store	r1,[r14+-128]
!   Data Move: *_temp_2753 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-128],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	991,r13		! source line 991
	mov	"\0\0SE",r10
!   _temp_2755 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-120]
!   _temp_2756 = _temp_2755 + 4
	load	[r14+-120],r1
	add	r1,4,r1
	store	r1,[r14+-116]
!   Move address of _temp_2756 [i ] into _temp_2757
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
!   _temp_2754 = _temp_2757		(4 bytes)
	load	[r14+-112],r1
	store	r1,[r14+-124]
!   _temp_2758 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-108]
!   _temp_2759 = _temp_2758 + 1724
	load	[r14+-108],r1
	add	r1,1724,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=12  value=_temp_2754  sizeInBytes=4
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
!   _temp_2761 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-96]
!   _temp_2762 = _temp_2761 + 1688
	load	[r14+-96],r1
	add	r1,1688,r1
	store	r1,[r14+-92]
!   _temp_2760 = _temp_2762		(4 bytes)
	load	[r14+-92],r1
	store	r1,[r14+-100]
!   _temp_2763 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-88]
!   _temp_2764 = _temp_2763 + 1708
	load	[r14+-88],r1
	add	r1,1708,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=12  value=_temp_2760  sizeInBytes=4
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
_Label_2736:
!   Increment the FOR-LOOP index variable and jump back
_Label_2719:
!   i = i + 1
	load	[r14+-248],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-248]
	jmp	_Label_2717
! END FOR
_Label_2720:
! IF STATEMENT...
	mov	997,r13		! source line 997
	mov	"\0\0IF",r10
!   if intIsZero (parentPcb) then goto _Label_2766
	load	[r14+-252],r1
	cmp	r1,r0
	be	_Label_2766
!	jmp	_Label_2767
_Label_2767:
!   if intIsZero (parentPcb) then goto _runtimeErrorNullPointer
	load	[r14+-252],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2769 = parentPcb + 20
	load	[r14+-252],r1
	add	r1,20,r1
	store	r1,[r14+-76]
!   Data Move: _temp_2768 = *_temp_2769  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_2768 != 1 then goto _Label_2766		(int)
	load	[r14+-80],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_2766
!	jmp	_Label_2765
_Label_2765:
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
!   _temp_2770 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-72]
!   Data Move: *_temp_2770 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-72],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	999,r13		! source line 999
	mov	"\0\0SE",r10
!   _temp_2772 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-64]
!   _temp_2773 = _temp_2772 + 1688
	load	[r14+-64],r1
	add	r1,1688,r1
	store	r1,[r14+-60]
!   _temp_2771 = _temp_2773		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-68]
!   _temp_2774 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-56]
!   _temp_2775 = _temp_2774 + 1736
	load	[r14+-56],r1
	add	r1,1736,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_2771  sizeInBytes=4
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
	jmp	_Label_2776
_Label_2766:
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
!   _temp_2777 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_2777 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1002,r13		! source line 1002
	mov	"\0\0SE",r10
!   _temp_2778 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-44]
!   _temp_2779 = _temp_2778 + 1724
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
!   _temp_2781 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-32]
!   _temp_2782 = _temp_2781 + 1688
	load	[r14+-32],r1
	add	r1,1688,r1
	store	r1,[r14+-28]
!   _temp_2780 = _temp_2782		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   _temp_2783 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-24]
!   _temp_2784 = _temp_2783 + 1708
	load	[r14+-24],r1
	add	r1,1708,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_2780  sizeInBytes=4
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
_Label_2776:
! SEND STATEMENT...
	mov	1006,r13		! source line 1006
	mov	"\0\0SE",r10
!   _temp_2785 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-16]
!   _temp_2786 = _temp_2785 + 1688
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
	.word	_Label_2787
	.word	8		! total size of parameters
	.word	252		! frame size = 252
	.word	_Label_2788
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2789
	.word	12
	.word	4
	.word	_Label_2790
	.word	-12
	.word	4
	.word	_Label_2791
	.word	-16
	.word	4
	.word	_Label_2792
	.word	-20
	.word	4
	.word	_Label_2793
	.word	-24
	.word	4
	.word	_Label_2794
	.word	-28
	.word	4
	.word	_Label_2795
	.word	-32
	.word	4
	.word	_Label_2796
	.word	-36
	.word	4
	.word	_Label_2797
	.word	-40
	.word	4
	.word	_Label_2798
	.word	-44
	.word	4
	.word	_Label_2799
	.word	-48
	.word	4
	.word	_Label_2800
	.word	-52
	.word	4
	.word	_Label_2801
	.word	-56
	.word	4
	.word	_Label_2802
	.word	-60
	.word	4
	.word	_Label_2803
	.word	-64
	.word	4
	.word	_Label_2804
	.word	-68
	.word	4
	.word	_Label_2805
	.word	-72
	.word	4
	.word	_Label_2806
	.word	-76
	.word	4
	.word	_Label_2807
	.word	-80
	.word	4
	.word	_Label_2808
	.word	-84
	.word	4
	.word	_Label_2809
	.word	-88
	.word	4
	.word	_Label_2810
	.word	-92
	.word	4
	.word	_Label_2811
	.word	-96
	.word	4
	.word	_Label_2812
	.word	-100
	.word	4
	.word	_Label_2813
	.word	-104
	.word	4
	.word	_Label_2814
	.word	-108
	.word	4
	.word	_Label_2815
	.word	-112
	.word	4
	.word	_Label_2816
	.word	-116
	.word	4
	.word	_Label_2817
	.word	-120
	.word	4
	.word	_Label_2818
	.word	-124
	.word	4
	.word	_Label_2819
	.word	-128
	.word	4
	.word	_Label_2820
	.word	-132
	.word	4
	.word	_Label_2821
	.word	-136
	.word	4
	.word	_Label_2822
	.word	-140
	.word	4
	.word	_Label_2823
	.word	-144
	.word	4
	.word	_Label_2824
	.word	-148
	.word	4
	.word	_Label_2825
	.word	-152
	.word	4
	.word	_Label_2826
	.word	-156
	.word	4
	.word	_Label_2827
	.word	-160
	.word	4
	.word	_Label_2828
	.word	-164
	.word	4
	.word	_Label_2829
	.word	-168
	.word	4
	.word	_Label_2830
	.word	-172
	.word	4
	.word	_Label_2831
	.word	-176
	.word	4
	.word	_Label_2832
	.word	-180
	.word	4
	.word	_Label_2833
	.word	-184
	.word	4
	.word	_Label_2834
	.word	-188
	.word	4
	.word	_Label_2835
	.word	-192
	.word	4
	.word	_Label_2836
	.word	-196
	.word	4
	.word	_Label_2837
	.word	-200
	.word	4
	.word	_Label_2838
	.word	-204
	.word	4
	.word	_Label_2839
	.word	-208
	.word	4
	.word	_Label_2840
	.word	-212
	.word	4
	.word	_Label_2841
	.word	-216
	.word	4
	.word	_Label_2842
	.word	-220
	.word	4
	.word	_Label_2843
	.word	-224
	.word	4
	.word	_Label_2844
	.word	-228
	.word	4
	.word	_Label_2845
	.word	-232
	.word	4
	.word	_Label_2846
	.word	-236
	.word	4
	.word	_Label_2847
	.word	-240
	.word	4
	.word	_Label_2848
	.word	-244
	.word	4
	.word	_Label_2849
	.word	-248
	.word	4
	.word	_Label_2850
	.word	-252
	.word	4
	.word	0
_Label_2787:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"TurnIntoZombie\0"
	.align
_Label_2788:
	.ascii	"Pself\0"
	.align
_Label_2789:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_2790:
	.byte	'?'
	.ascii	"_temp_2786\0"
	.align
_Label_2791:
	.byte	'?'
	.ascii	"_temp_2785\0"
	.align
_Label_2792:
	.byte	'?'
	.ascii	"_temp_2784\0"
	.align
_Label_2793:
	.byte	'?'
	.ascii	"_temp_2783\0"
	.align
_Label_2794:
	.byte	'?'
	.ascii	"_temp_2782\0"
	.align
_Label_2795:
	.byte	'?'
	.ascii	"_temp_2781\0"
	.align
_Label_2796:
	.byte	'?'
	.ascii	"_temp_2780\0"
	.align
_Label_2797:
	.byte	'?'
	.ascii	"_temp_2779\0"
	.align
_Label_2798:
	.byte	'?'
	.ascii	"_temp_2778\0"
	.align
_Label_2799:
	.byte	'?'
	.ascii	"_temp_2777\0"
	.align
_Label_2800:
	.byte	'?'
	.ascii	"_temp_2775\0"
	.align
_Label_2801:
	.byte	'?'
	.ascii	"_temp_2774\0"
	.align
_Label_2802:
	.byte	'?'
	.ascii	"_temp_2773\0"
	.align
_Label_2803:
	.byte	'?'
	.ascii	"_temp_2772\0"
	.align
_Label_2804:
	.byte	'?'
	.ascii	"_temp_2771\0"
	.align
_Label_2805:
	.byte	'?'
	.ascii	"_temp_2770\0"
	.align
_Label_2806:
	.byte	'?'
	.ascii	"_temp_2769\0"
	.align
_Label_2807:
	.byte	'?'
	.ascii	"_temp_2768\0"
	.align
_Label_2808:
	.byte	'?'
	.ascii	"_temp_2764\0"
	.align
_Label_2809:
	.byte	'?'
	.ascii	"_temp_2763\0"
	.align
_Label_2810:
	.byte	'?'
	.ascii	"_temp_2762\0"
	.align
_Label_2811:
	.byte	'?'
	.ascii	"_temp_2761\0"
	.align
_Label_2812:
	.byte	'?'
	.ascii	"_temp_2760\0"
	.align
_Label_2813:
	.byte	'?'
	.ascii	"_temp_2759\0"
	.align
_Label_2814:
	.byte	'?'
	.ascii	"_temp_2758\0"
	.align
_Label_2815:
	.byte	'?'
	.ascii	"_temp_2757\0"
	.align
_Label_2816:
	.byte	'?'
	.ascii	"_temp_2756\0"
	.align
_Label_2817:
	.byte	'?'
	.ascii	"_temp_2755\0"
	.align
_Label_2818:
	.byte	'?'
	.ascii	"_temp_2754\0"
	.align
_Label_2819:
	.byte	'?'
	.ascii	"_temp_2753\0"
	.align
_Label_2820:
	.byte	'?'
	.ascii	"_temp_2752\0"
	.align
_Label_2821:
	.byte	'?'
	.ascii	"_temp_2751\0"
	.align
_Label_2822:
	.byte	'?'
	.ascii	"_temp_2750\0"
	.align
_Label_2823:
	.byte	'?'
	.ascii	"_temp_2749\0"
	.align
_Label_2824:
	.byte	'?'
	.ascii	"_temp_2748\0"
	.align
_Label_2825:
	.byte	'?'
	.ascii	"_temp_2747\0"
	.align
_Label_2826:
	.byte	'?'
	.ascii	"_temp_2746\0"
	.align
_Label_2827:
	.byte	'?'
	.ascii	"_temp_2745\0"
	.align
_Label_2828:
	.byte	'?'
	.ascii	"_temp_2744\0"
	.align
_Label_2829:
	.byte	'?'
	.ascii	"_temp_2743\0"
	.align
_Label_2830:
	.byte	'?'
	.ascii	"_temp_2742\0"
	.align
_Label_2831:
	.byte	'?'
	.ascii	"_temp_2741\0"
	.align
_Label_2832:
	.byte	'?'
	.ascii	"_temp_2740\0"
	.align
_Label_2833:
	.byte	'?'
	.ascii	"_temp_2739\0"
	.align
_Label_2834:
	.byte	'?'
	.ascii	"_temp_2738\0"
	.align
_Label_2835:
	.byte	'?'
	.ascii	"_temp_2734\0"
	.align
_Label_2836:
	.byte	'?'
	.ascii	"_temp_2733\0"
	.align
_Label_2837:
	.byte	'?'
	.ascii	"_temp_2732\0"
	.align
_Label_2838:
	.byte	'?'
	.ascii	"_temp_2731\0"
	.align
_Label_2839:
	.byte	'?'
	.ascii	"_temp_2730\0"
	.align
_Label_2840:
	.byte	'?'
	.ascii	"_temp_2729\0"
	.align
_Label_2841:
	.byte	'?'
	.ascii	"_temp_2728\0"
	.align
_Label_2842:
	.byte	'?'
	.ascii	"_temp_2727\0"
	.align
_Label_2843:
	.byte	'?'
	.ascii	"_temp_2726\0"
	.align
_Label_2844:
	.byte	'?'
	.ascii	"_temp_2725\0"
	.align
_Label_2845:
	.byte	'?'
	.ascii	"_temp_2722\0"
	.align
_Label_2846:
	.byte	'?'
	.ascii	"_temp_2721\0"
	.align
_Label_2847:
	.byte	'?'
	.ascii	"_temp_2716\0"
	.align
_Label_2848:
	.byte	'?'
	.ascii	"_temp_2715\0"
	.align
_Label_2849:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2850:
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
_Label_4501:
	push	r0
	sub	r1,1,r1
	bne	_Label_4501
	mov	1012,r13		! source line 1012
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1016,r13		! source line 1016
	mov	"\0\0SE",r10
!   _temp_2851 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-88]
!   _temp_2852 = _temp_2851 + 1688
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
_Label_2853:
!   if intIsZero (proc) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2857 = proc + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-76]
!   Data Move: _temp_2856 = *_temp_2857  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_2856 == 2 then goto _Label_2855		(int)
	load	[r14+-80],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_2855
!	jmp	_Label_2854
_Label_2854:
	mov	1018,r13		! source line 1018
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1019,r13		! source line 1019
	mov	"\0\0SE",r10
!   _temp_2859 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-68]
!   _temp_2860 = _temp_2859 + 1688
	load	[r14+-68],r1
	add	r1,1688,r1
	store	r1,[r14+-64]
!   _temp_2858 = _temp_2860		(4 bytes)
	load	[r14+-64],r1
	store	r1,[r14+-72]
!   _temp_2861 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-60]
!   _temp_2862 = _temp_2861 + 1736
	load	[r14+-60],r1
	add	r1,1736,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=12  value=_temp_2858  sizeInBytes=4
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
	jmp	_Label_2853
_Label_2855:
! ASSIGNMENT STATEMENT...
	mov	1022,r13		! source line 1022
	mov	"\0\0AS",r10
!   if intIsZero (proc) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2863 = proc + 28
	load	[r14+12],r1
	add	r1,28,r1
	store	r1,[r14+-52]
!   Data Move: procExitStatus = *_temp_2863  (sizeInBytes=4)
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
!   _temp_2864 = proc + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_2864 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1024,r13		! source line 1024
	mov	"\0\0SE",r10
!   _temp_2865 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-44]
!   _temp_2866 = _temp_2865 + 1724
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
!   _temp_2868 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-32]
!   _temp_2869 = _temp_2868 + 1688
	load	[r14+-32],r1
	add	r1,1688,r1
	store	r1,[r14+-28]
!   _temp_2867 = _temp_2869		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   _temp_2870 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-24]
!   _temp_2871 = _temp_2870 + 1708
	load	[r14+-24],r1
	add	r1,1708,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_2867  sizeInBytes=4
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
!   _temp_2872 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-16]
!   _temp_2873 = _temp_2872 + 1688
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
	.word	_Label_2874
	.word	8		! total size of parameters
	.word	92		! frame size = 92
	.word	_Label_2875
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2876
	.word	12
	.word	4
	.word	_Label_2877
	.word	-12
	.word	4
	.word	_Label_2878
	.word	-16
	.word	4
	.word	_Label_2879
	.word	-20
	.word	4
	.word	_Label_2880
	.word	-24
	.word	4
	.word	_Label_2881
	.word	-28
	.word	4
	.word	_Label_2882
	.word	-32
	.word	4
	.word	_Label_2883
	.word	-36
	.word	4
	.word	_Label_2884
	.word	-40
	.word	4
	.word	_Label_2885
	.word	-44
	.word	4
	.word	_Label_2886
	.word	-48
	.word	4
	.word	_Label_2887
	.word	-52
	.word	4
	.word	_Label_2888
	.word	-56
	.word	4
	.word	_Label_2889
	.word	-60
	.word	4
	.word	_Label_2890
	.word	-64
	.word	4
	.word	_Label_2891
	.word	-68
	.word	4
	.word	_Label_2892
	.word	-72
	.word	4
	.word	_Label_2893
	.word	-76
	.word	4
	.word	_Label_2894
	.word	-80
	.word	4
	.word	_Label_2895
	.word	-84
	.word	4
	.word	_Label_2896
	.word	-88
	.word	4
	.word	_Label_2897
	.word	-92
	.word	4
	.word	0
_Label_2874:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"WaitForZombie\0"
	.align
_Label_2875:
	.ascii	"Pself\0"
	.align
_Label_2876:
	.byte	'P'
	.ascii	"proc\0"
	.align
_Label_2877:
	.byte	'?'
	.ascii	"_temp_2873\0"
	.align
_Label_2878:
	.byte	'?'
	.ascii	"_temp_2872\0"
	.align
_Label_2879:
	.byte	'?'
	.ascii	"_temp_2871\0"
	.align
_Label_2880:
	.byte	'?'
	.ascii	"_temp_2870\0"
	.align
_Label_2881:
	.byte	'?'
	.ascii	"_temp_2869\0"
	.align
_Label_2882:
	.byte	'?'
	.ascii	"_temp_2868\0"
	.align
_Label_2883:
	.byte	'?'
	.ascii	"_temp_2867\0"
	.align
_Label_2884:
	.byte	'?'
	.ascii	"_temp_2866\0"
	.align
_Label_2885:
	.byte	'?'
	.ascii	"_temp_2865\0"
	.align
_Label_2886:
	.byte	'?'
	.ascii	"_temp_2864\0"
	.align
_Label_2887:
	.byte	'?'
	.ascii	"_temp_2863\0"
	.align
_Label_2888:
	.byte	'?'
	.ascii	"_temp_2862\0"
	.align
_Label_2889:
	.byte	'?'
	.ascii	"_temp_2861\0"
	.align
_Label_2890:
	.byte	'?'
	.ascii	"_temp_2860\0"
	.align
_Label_2891:
	.byte	'?'
	.ascii	"_temp_2859\0"
	.align
_Label_2892:
	.byte	'?'
	.ascii	"_temp_2858\0"
	.align
_Label_2893:
	.byte	'?'
	.ascii	"_temp_2857\0"
	.align
_Label_2894:
	.byte	'?'
	.ascii	"_temp_2856\0"
	.align
_Label_2895:
	.byte	'?'
	.ascii	"_temp_2852\0"
	.align
_Label_2896:
	.byte	'?'
	.ascii	"_temp_2851\0"
	.align
_Label_2897:
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
_Label_4502:
	push	r0
	sub	r1,1,r1
	bne	_Label_4502
	mov	1033,r13		! source line 1033
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1037,r13		! source line 1037
	mov	"\0\0SE",r10
!   _temp_2898 = &processManagerLock
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
!   _temp_2899 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2899 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1039,r13		! source line 1039
	mov	"\0\0SE",r10
!   _temp_2900 = &freeList
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
!   _temp_2901 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-20]
!   _temp_2902 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1708,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2901  sizeInBytes=4
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
!   _temp_2903 = &processManagerLock
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
	.word	_Label_2904
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_2905
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2906
	.word	12
	.word	4
	.word	_Label_2907
	.word	-12
	.word	4
	.word	_Label_2908
	.word	-16
	.word	4
	.word	_Label_2909
	.word	-20
	.word	4
	.word	_Label_2910
	.word	-24
	.word	4
	.word	_Label_2911
	.word	-28
	.word	4
	.word	_Label_2912
	.word	-32
	.word	4
	.word	0
_Label_2904:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"FreeProcess\0"
	.align
_Label_2905:
	.ascii	"Pself\0"
	.align
_Label_2906:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_2907:
	.byte	'?'
	.ascii	"_temp_2903\0"
	.align
_Label_2908:
	.byte	'?'
	.ascii	"_temp_2902\0"
	.align
_Label_2909:
	.byte	'?'
	.ascii	"_temp_2901\0"
	.align
_Label_2910:
	.byte	'?'
	.ascii	"_temp_2900\0"
	.align
_Label_2911:
	.byte	'?'
	.ascii	"_temp_2899\0"
	.align
_Label_2912:
	.byte	'?'
	.ascii	"_temp_2898\0"
	.align
! 
! ===============  CLASS FrameManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FrameManager:
	.word	_Label_2913
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
_Label_2913:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2914
	.word	_sourceFileName
	.word	290		! line number
	.word	56		! size of instances, in bytes
	.word	_P_Kernel_FrameManager
	.word	_P_System_Object
	.word	0
_Label_2914:
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
_Label_4503:
	push	r0
	sub	r1,1,r1
	bne	_Label_4503
	mov	1090,r13		! source line 1090
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2915 = _StringConst_107
	set	_StringConst_107,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_2915  sizeInBytes=4
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
!   _temp_2917 = &framesInUse
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
!   _temp_2919 = &frameManagerLock
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
!   _temp_2921 = &newFramesAvailable
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
!   _temp_2926 = 1048576		(4 bytes)
	set	1048576,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2927 = 1048876		(4 bytes)
	set	1048876,r1
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2926  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-56]
_Label_2922:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2927 then goto _Label_2925		
	load	[r14+-56],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2925
_Label_2923:
	mov	1109,r13		! source line 1109
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1112,r13		! source line 1112
	mov	"\0\0IF",r10
!   if intIsZero (i) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2930 = *i  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2930) then goto _Label_2929
	load	[r14+-16],r1
	cmp	r1,r0
	be	_Label_2929
!	jmp	_Label_2928
_Label_2928:
! THEN...
	mov	1113,r13		! source line 1113
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2931 = _StringConst_108
	set	_StringConst_108,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2931  sizeInBytes=4
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
_Label_2929:
!   Increment the FOR-LOOP index variable and jump back
_Label_2924:
!   i = i + 4
	load	[r14+-56],r1
	add	r1,4,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_2922
! END FOR
_Label_2925:
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
	.word	_Label_2932
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_2933
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2934
	.word	-12
	.word	4
	.word	_Label_2935
	.word	-16
	.word	4
	.word	_Label_2936
	.word	-20
	.word	4
	.word	_Label_2937
	.word	-24
	.word	4
	.word	_Label_2938
	.word	-28
	.word	4
	.word	_Label_2939
	.word	-32
	.word	4
	.word	_Label_2940
	.word	-36
	.word	4
	.word	_Label_2941
	.word	-40
	.word	4
	.word	_Label_2942
	.word	-44
	.word	4
	.word	_Label_2943
	.word	-48
	.word	4
	.word	_Label_2944
	.word	-52
	.word	4
	.word	_Label_2945
	.word	-56
	.word	4
	.word	0
_Label_2932:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2933:
	.ascii	"Pself\0"
	.align
_Label_2934:
	.byte	'?'
	.ascii	"_temp_2931\0"
	.align
_Label_2935:
	.byte	'?'
	.ascii	"_temp_2930\0"
	.align
_Label_2936:
	.byte	'?'
	.ascii	"_temp_2927\0"
	.align
_Label_2937:
	.byte	'?'
	.ascii	"_temp_2926\0"
	.align
_Label_2938:
	.byte	'?'
	.ascii	"_temp_2921\0"
	.align
_Label_2939:
	.byte	'?'
	.ascii	"_temp_2920\0"
	.align
_Label_2940:
	.byte	'?'
	.ascii	"_temp_2919\0"
	.align
_Label_2941:
	.byte	'?'
	.ascii	"_temp_2918\0"
	.align
_Label_2942:
	.byte	'?'
	.ascii	"_temp_2917\0"
	.align
_Label_2943:
	.byte	'?'
	.ascii	"_temp_2916\0"
	.align
_Label_2944:
	.byte	'?'
	.ascii	"_temp_2915\0"
	.align
_Label_2945:
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
_Label_4504:
	push	r0
	sub	r1,1,r1
	bne	_Label_4504
	mov	1120,r13		! source line 1120
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1124,r13		! source line 1124
	mov	"\0\0SE",r10
!   _temp_2946 = &frameManagerLock
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
!   _temp_2947 = _StringConst_109
	set	_StringConst_109,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2947  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1125,r13		! source line 1125
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2948 = _StringConst_110
	set	_StringConst_110,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2948  sizeInBytes=4
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
!   _temp_2949 = _StringConst_111
	set	_StringConst_111,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2949  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1127,r13		! source line 1127
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1128,r13		! source line 1128
	mov	"\0\0SE",r10
!   _temp_2950 = &framesInUse
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
!   _temp_2951 = &frameManagerLock
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
	.word	_Label_2952
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_2953
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2954
	.word	-12
	.word	4
	.word	_Label_2955
	.word	-16
	.word	4
	.word	_Label_2956
	.word	-20
	.word	4
	.word	_Label_2957
	.word	-24
	.word	4
	.word	_Label_2958
	.word	-28
	.word	4
	.word	_Label_2959
	.word	-32
	.word	4
	.word	0
_Label_2952:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2953:
	.ascii	"Pself\0"
	.align
_Label_2954:
	.byte	'?'
	.ascii	"_temp_2951\0"
	.align
_Label_2955:
	.byte	'?'
	.ascii	"_temp_2950\0"
	.align
_Label_2956:
	.byte	'?'
	.ascii	"_temp_2949\0"
	.align
_Label_2957:
	.byte	'?'
	.ascii	"_temp_2948\0"
	.align
_Label_2958:
	.byte	'?'
	.ascii	"_temp_2947\0"
	.align
_Label_2959:
	.byte	'?'
	.ascii	"_temp_2946\0"
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
_Label_4505:
	push	r0
	sub	r1,1,r1
	bne	_Label_4505
	mov	1134,r13		! source line 1134
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1141,r13		! source line 1141
	mov	"\0\0SE",r10
!   _temp_2960 = &frameManagerLock
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
_Label_2961:
!   if numberFreeFrames >= 1 then goto _Label_2963		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2963
!	jmp	_Label_2962
_Label_2962:
	mov	1144,r13		! source line 1144
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1145,r13		! source line 1145
	mov	"\0\0SE",r10
!   _temp_2964 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   _temp_2965 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_2964  sizeInBytes=4
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
	jmp	_Label_2961
_Label_2963:
! ASSIGNMENT STATEMENT...
	mov	1149,r13		! source line 1149
	mov	"\0\0AS",r10
	mov	1149,r13		! source line 1149
	mov	"\0\0SE",r10
!   _temp_2966 = &framesInUse
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
!   _temp_2967 = &frameManagerLock
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
!   _temp_2968 = f * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   frameAddr = 1048576 + _temp_2968		(int)
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
	.word	_Label_2969
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_2970
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2971
	.word	-12
	.word	4
	.word	_Label_2972
	.word	-16
	.word	4
	.word	_Label_2973
	.word	-20
	.word	4
	.word	_Label_2974
	.word	-24
	.word	4
	.word	_Label_2975
	.word	-28
	.word	4
	.word	_Label_2976
	.word	-32
	.word	4
	.word	_Label_2977
	.word	-36
	.word	4
	.word	_Label_2978
	.word	-40
	.word	4
	.word	0
_Label_2969:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetAFrame\0"
	.align
_Label_2970:
	.ascii	"Pself\0"
	.align
_Label_2971:
	.byte	'?'
	.ascii	"_temp_2968\0"
	.align
_Label_2972:
	.byte	'?'
	.ascii	"_temp_2967\0"
	.align
_Label_2973:
	.byte	'?'
	.ascii	"_temp_2966\0"
	.align
_Label_2974:
	.byte	'?'
	.ascii	"_temp_2965\0"
	.align
_Label_2975:
	.byte	'?'
	.ascii	"_temp_2964\0"
	.align
_Label_2976:
	.byte	'?'
	.ascii	"_temp_2960\0"
	.align
_Label_2977:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_2978:
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
_Label_4506:
	push	r0
	sub	r1,1,r1
	bne	_Label_4506
	mov	1161,r13		! source line 1161
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1168,r13		! source line 1168
	mov	"\0\0AS",r10
	mov	1168,r13		! source line 1168
	mov	"\0\0SE",r10
!   _temp_2979 = &framesInUse
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
!   _temp_2980 = f * 8192		(int)
	load	[r14+-20],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   frameAddr = 1048576 + _temp_2980		(int)
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
	.word	_Label_2981
	.word	4		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2982
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2983
	.word	-12
	.word	4
	.word	_Label_2984
	.word	-16
	.word	4
	.word	_Label_2985
	.word	-20
	.word	4
	.word	_Label_2986
	.word	-24
	.word	4
	.word	0
_Label_2981:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetAFrame2\0"
	.align
_Label_2982:
	.ascii	"Pself\0"
	.align
_Label_2983:
	.byte	'?'
	.ascii	"_temp_2980\0"
	.align
_Label_2984:
	.byte	'?'
	.ascii	"_temp_2979\0"
	.align
_Label_2985:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_2986:
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
_Label_4507:
	push	r0
	sub	r1,1,r1
	bne	_Label_4507
	mov	1178,r13		! source line 1178
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1182,r13		! source line 1182
	mov	"\0\0SE",r10
!   _temp_2987 = &frameManagerLock
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
_Label_2988:
!   if numberFreeFrames >= numFramesNeeded then goto _Label_2990		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2990
!	jmp	_Label_2989
_Label_2989:
	mov	1183,r13		! source line 1183
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1184,r13		! source line 1184
	mov	"\0\0SE",r10
!   _temp_2991 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   _temp_2992 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_2991  sizeInBytes=4
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
	jmp	_Label_2988
_Label_2990:
! FOR STATEMENT...
	mov	1186,r13		! source line 1186
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2997 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-28]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2998 = numFramesNeeded - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2997  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+-44]
_Label_2993:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2998 then goto _Label_2996		
	load	[r14+-44],r1
	load	[r14+-24],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2996
_Label_2994:
	mov	1186,r13		! source line 1186
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1187,r13		! source line 1187
	mov	"\0\0AS",r10
	mov	1187,r13		! source line 1187
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_2999) then goto _runtimeErrorNullPointer
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
_Label_2995:
!   i = i + 1
	load	[r14+-44],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
	jmp	_Label_2993
! END FOR
_Label_2996:
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
!   _temp_3000 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_3000 = numFramesNeeded  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1192,r13		! source line 1192
	mov	"\0\0SE",r10
!   _temp_3001 = &frameManagerLock
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
	.word	_Label_3002
	.word	12		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_3003
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3004
	.word	12
	.word	4
	.word	_Label_3005
	.word	16
	.word	4
	.word	_Label_3006
	.word	-12
	.word	4
	.word	_Label_3007
	.word	-16
	.word	4
	.word	_Label_3008
	.word	-20
	.word	4
	.word	_Label_3009
	.word	-24
	.word	4
	.word	_Label_3010
	.word	-28
	.word	4
	.word	_Label_3011
	.word	-32
	.word	4
	.word	_Label_3012
	.word	-36
	.word	4
	.word	_Label_3013
	.word	-40
	.word	4
	.word	_Label_3014
	.word	-44
	.word	4
	.word	_Label_3015
	.word	-48
	.word	4
	.word	0
_Label_3002:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetNewFrames\0"
	.align
_Label_3003:
	.ascii	"Pself\0"
	.align
_Label_3004:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_3005:
	.byte	'I'
	.ascii	"numFramesNeeded\0"
	.align
_Label_3006:
	.byte	'?'
	.ascii	"_temp_3001\0"
	.align
_Label_3007:
	.byte	'?'
	.ascii	"_temp_3000\0"
	.align
_Label_3008:
	.byte	'?'
	.ascii	"_temp_2999\0"
	.align
_Label_3009:
	.byte	'?'
	.ascii	"_temp_2998\0"
	.align
_Label_3010:
	.byte	'?'
	.ascii	"_temp_2997\0"
	.align
_Label_3011:
	.byte	'?'
	.ascii	"_temp_2992\0"
	.align
_Label_3012:
	.byte	'?'
	.ascii	"_temp_2991\0"
	.align
_Label_3013:
	.byte	'?'
	.ascii	"_temp_2987\0"
	.align
_Label_3014:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_3015:
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
_Label_4508:
	push	r0
	sub	r1,1,r1
	bne	_Label_4508
	mov	1197,r13		! source line 1197
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1202,r13		! source line 1202
	mov	"\0\0SE",r10
!   _temp_3016 = &frameManagerLock
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
!   _temp_3021 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-52]
!   Calculate and save the FOR-LOOP ending value
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3024 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Data Move: _temp_3023 = *_temp_3024  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_3022 = _temp_3023 - 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3021  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+-60]
_Label_3017:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3022 then goto _Label_3020		
	load	[r14+-60],r1
	load	[r14+-48],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3020
_Label_3018:
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
!   _temp_3025 = frameAddr - 1048576		(int)
	load	[r14+-68],r1
	set	1048576,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   bitIndex = _temp_3025 div 8192		(int)
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
!   _temp_3026 = &framesInUse
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
_Label_3019:
!   i = i + 1
	load	[r14+-60],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
	jmp	_Label_3017
! END FOR
_Label_3020:
! ASSIGNMENT STATEMENT...
	mov	1208,r13		! source line 1208
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3028 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Data Move: _temp_3027 = *_temp_3028  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   numberFreeFrames = numberFreeFrames + _temp_3027		(int)
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
!   _temp_3029 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   _temp_3030 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_3029  sizeInBytes=4
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
!   _temp_3031 = &frameManagerLock
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
	.word	_Label_3032
	.word	8		! total size of parameters
	.word	68		! frame size = 68
	.word	_Label_3033
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3034
	.word	12
	.word	4
	.word	_Label_3035
	.word	-12
	.word	4
	.word	_Label_3036
	.word	-16
	.word	4
	.word	_Label_3037
	.word	-20
	.word	4
	.word	_Label_3038
	.word	-24
	.word	4
	.word	_Label_3039
	.word	-28
	.word	4
	.word	_Label_3040
	.word	-32
	.word	4
	.word	_Label_3041
	.word	-36
	.word	4
	.word	_Label_3042
	.word	-40
	.word	4
	.word	_Label_3043
	.word	-44
	.word	4
	.word	_Label_3044
	.word	-48
	.word	4
	.word	_Label_3045
	.word	-52
	.word	4
	.word	_Label_3046
	.word	-56
	.word	4
	.word	_Label_3047
	.word	-60
	.word	4
	.word	_Label_3048
	.word	-64
	.word	4
	.word	_Label_3049
	.word	-68
	.word	4
	.word	0
_Label_3032:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"ReturnAllFrames\0"
	.align
_Label_3033:
	.ascii	"Pself\0"
	.align
_Label_3034:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_3035:
	.byte	'?'
	.ascii	"_temp_3031\0"
	.align
_Label_3036:
	.byte	'?'
	.ascii	"_temp_3030\0"
	.align
_Label_3037:
	.byte	'?'
	.ascii	"_temp_3029\0"
	.align
_Label_3038:
	.byte	'?'
	.ascii	"_temp_3028\0"
	.align
_Label_3039:
	.byte	'?'
	.ascii	"_temp_3027\0"
	.align
_Label_3040:
	.byte	'?'
	.ascii	"_temp_3026\0"
	.align
_Label_3041:
	.byte	'?'
	.ascii	"_temp_3025\0"
	.align
_Label_3042:
	.byte	'?'
	.ascii	"_temp_3024\0"
	.align
_Label_3043:
	.byte	'?'
	.ascii	"_temp_3023\0"
	.align
_Label_3044:
	.byte	'?'
	.ascii	"_temp_3022\0"
	.align
_Label_3045:
	.byte	'?'
	.ascii	"_temp_3021\0"
	.align
_Label_3046:
	.byte	'?'
	.ascii	"_temp_3016\0"
	.align
_Label_3047:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_3048:
	.byte	'I'
	.ascii	"bitIndex\0"
	.align
_Label_3049:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
! 
! ===============  CLASS AddrSpace  ===============
! 
! Dispatch Table:
! 
_P_Kernel_AddrSpace:
	.word	_Label_3050
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
_Label_3050:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3051
	.word	_sourceFileName
	.word	310		! line number
	.word	92		! size of instances, in bytes
	.word	_P_Kernel_AddrSpace
	.word	_P_System_Object
	.word	0
_Label_3051:
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
_Label_4509:
	push	r0
	sub	r1,1,r1
	bne	_Label_4509
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
!   _temp_3052 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-108]
!   NEW ARRAY Constructor...
!   _temp_3054 = &_temp_3053
	add	r14,-104,r1
	store	r1,[r14+-20]
!   _temp_3054 = _temp_3054 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	20,r1
	store	r1,[r14+-16]
_Label_3056:
!   Data Move: *_temp_3054 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_3054 = _temp_3054 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_3055 = _temp_3055 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_3055) then goto _Label_3056
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_3056
!   Initialize the array size...
	mov	20,r1
	store	r1,[r14+-104]
!   _temp_3057 = &_temp_3053
	add	r14,-104,r1
	store	r1,[r14+-12]
!   make sure array has size 20
	load	[r14+-108],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,0
	be	_Label_4510
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4510:
!   make sure array has size 20
	load	[r14+-12],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_3052 = *_temp_3057  (sizeInBytes=84)
	load	[r14+-12],r5
	load	[r14+-108],r4
	mov	21,r3
_Label_4511:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4511
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
	.word	_Label_3058
	.word	4		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_3059
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3060
	.word	-12
	.word	4
	.word	_Label_3061
	.word	-16
	.word	4
	.word	_Label_3062
	.word	-20
	.word	4
	.word	_Label_3063
	.word	-104
	.word	84
	.word	_Label_3064
	.word	-108
	.word	4
	.word	0
_Label_3058:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_3059:
	.ascii	"Pself\0"
	.align
_Label_3060:
	.byte	'?'
	.ascii	"_temp_3057\0"
	.align
_Label_3061:
	.byte	'?'
	.ascii	"_temp_3055\0"
	.align
_Label_3062:
	.byte	'?'
	.ascii	"_temp_3054\0"
	.align
_Label_3063:
	.byte	'?'
	.ascii	"_temp_3053\0"
	.align
_Label_3064:
	.byte	'?'
	.ascii	"_temp_3052\0"
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
_Label_4512:
	push	r0
	sub	r1,1,r1
	bne	_Label_4512
	mov	1231,r13		! source line 1231
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3065 = _StringConst_112
	set	_StringConst_112,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_3065  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	1236,r13		! source line 1236
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_3066 = _StringConst_113
	set	_StringConst_113,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_3066  sizeInBytes=4
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
!   _temp_3071 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-156]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3072 = numberOfPages - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3071  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+-168]
_Label_3067:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3072 then goto _Label_3070		
	load	[r14+-168],r1
	load	[r14+-152],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3070
_Label_3068:
	mov	1238,r13		! source line 1238
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_3073 = _StringConst_114
	set	_StringConst_114,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_3073  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	1239,r13		! source line 1239
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_3075 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-140]
!   Move address of _temp_3075 [i ] into _temp_3076
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
!   _temp_3074 = _temp_3076		(4 bytes)
	load	[r14+-136],r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_3074  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	1240,r13		! source line 1240
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_3077 = _StringConst_115
	set	_StringConst_115,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_3077  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	1241,r13		! source line 1241
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_3079 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-124]
!   Move address of _temp_3079 [i ] into _temp_3080
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
!   Data Move: _temp_3078 = *_temp_3080  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_3078  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	1242,r13		! source line 1242
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_3081 = _StringConst_116
	set	_StringConst_116,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_3081  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	1243,r13		! source line 1243
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_3082 = i * 8192		(int)
	load	[r14+-168],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_3082  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	1244,r13		! source line 1244
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_3083 = _StringConst_117
	set	_StringConst_117,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_3083  sizeInBytes=4
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
!   if intIsZero (_temp_3085) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3084  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_3084  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	1246,r13		! source line 1246
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_3086 = _StringConst_118
	set	_StringConst_118,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_3086  sizeInBytes=4
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
!   if intIsZero (_temp_3090) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3089  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_3089) then goto _Label_3088
	load	[r14+-92],r1
	cmp	r1,r0
	be	_Label_3088
!	jmp	_Label_3087
_Label_3087:
! THEN...
	mov	1249,r13		! source line 1249
	mov	"\0\0TN",r10
! CALL STATEMENT...
	mov	1249,r13		! source line 1249
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_3092) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3091  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_3091  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	1249,r13		! source line 1249
	mov	"\0\0CE",r10
	call	printHex
	jmp	_Label_3093
_Label_3088:
! ELSE...
	mov	1251,r13		! source line 1251
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_3094 = _StringConst_119
	set	_StringConst_119,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_3094  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	1251,r13		! source line 1251
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_3093:
! CALL STATEMENT...
!   _temp_3095 = _StringConst_120
	set	_StringConst_120,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_3095  sizeInBytes=4
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
!   if intIsZero (_temp_3098) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_3096 else goto _Label_3097
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_3097
	jmp	_Label_3096
_Label_3096:
! THEN...
	mov	1255,r13		! source line 1255
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3099 = _StringConst_121
	set	_StringConst_121,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_3099  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	1255,r13		! source line 1255
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_3100
_Label_3097:
! ELSE...
	mov	1257,r13		! source line 1257
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_3101 = _StringConst_122
	set	_StringConst_122,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_3101  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1257,r13		! source line 1257
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_3100:
! CALL STATEMENT...
!   _temp_3102 = _StringConst_123
	set	_StringConst_123,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_3102  sizeInBytes=4
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
!   if intIsZero (_temp_3105) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_3103 else goto _Label_3104
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_3104
	jmp	_Label_3103
_Label_3103:
! THEN...
	mov	1261,r13		! source line 1261
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3106 = _StringConst_124
	set	_StringConst_124,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_3106  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1261,r13		! source line 1261
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_3107
_Label_3104:
! ELSE...
	mov	1263,r13		! source line 1263
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_3108 = _StringConst_125
	set	_StringConst_125,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_3108  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1263,r13		! source line 1263
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_3107:
! CALL STATEMENT...
!   _temp_3109 = _StringConst_126
	set	_StringConst_126,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_3109  sizeInBytes=4
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
!   if intIsZero (_temp_3112) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_3110 else goto _Label_3111
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_3111
	jmp	_Label_3110
_Label_3110:
! THEN...
	mov	1267,r13		! source line 1267
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3113 = _StringConst_127
	set	_StringConst_127,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_3113  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1267,r13		! source line 1267
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_3114
_Label_3111:
! ELSE...
	mov	1269,r13		! source line 1269
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_3115 = _StringConst_128
	set	_StringConst_128,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_3115  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1269,r13		! source line 1269
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_3114:
! CALL STATEMENT...
!   _temp_3116 = _StringConst_129
	set	_StringConst_129,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3116  sizeInBytes=4
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
!   if intIsZero (_temp_3119) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_3117 else goto _Label_3118
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_3118
	jmp	_Label_3117
_Label_3117:
! THEN...
	mov	1273,r13		! source line 1273
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3120 = _StringConst_130
	set	_StringConst_130,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3120  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1273,r13		! source line 1273
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_3121
_Label_3118:
! ELSE...
	mov	1275,r13		! source line 1275
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_3122 = _StringConst_131
	set	_StringConst_131,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3122  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1275,r13		! source line 1275
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_3121:
! CALL STATEMENT...
!   Call the function
	mov	1277,r13		! source line 1277
	mov	"\0\0CA",r10
	call	_P_System_nl
!   Increment the FOR-LOOP index variable and jump back
_Label_3069:
!   i = i + 1
	load	[r14+-168],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-168]
	jmp	_Label_3067
! END FOR
_Label_3070:
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
	.word	_Label_3123
	.word	4		! total size of parameters
	.word	168		! frame size = 168
	.word	_Label_3124
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3125
	.word	-12
	.word	4
	.word	_Label_3126
	.word	-16
	.word	4
	.word	_Label_3127
	.word	-20
	.word	4
	.word	_Label_3128
	.word	-24
	.word	4
	.word	_Label_3129
	.word	-28
	.word	4
	.word	_Label_3130
	.word	-32
	.word	4
	.word	_Label_3131
	.word	-36
	.word	4
	.word	_Label_3132
	.word	-40
	.word	4
	.word	_Label_3133
	.word	-44
	.word	4
	.word	_Label_3134
	.word	-48
	.word	4
	.word	_Label_3135
	.word	-52
	.word	4
	.word	_Label_3136
	.word	-56
	.word	4
	.word	_Label_3137
	.word	-60
	.word	4
	.word	_Label_3138
	.word	-64
	.word	4
	.word	_Label_3139
	.word	-68
	.word	4
	.word	_Label_3140
	.word	-72
	.word	4
	.word	_Label_3141
	.word	-76
	.word	4
	.word	_Label_3142
	.word	-80
	.word	4
	.word	_Label_3143
	.word	-84
	.word	4
	.word	_Label_3144
	.word	-88
	.word	4
	.word	_Label_3145
	.word	-92
	.word	4
	.word	_Label_3146
	.word	-96
	.word	4
	.word	_Label_3147
	.word	-100
	.word	4
	.word	_Label_3148
	.word	-104
	.word	4
	.word	_Label_3149
	.word	-108
	.word	4
	.word	_Label_3150
	.word	-112
	.word	4
	.word	_Label_3151
	.word	-116
	.word	4
	.word	_Label_3152
	.word	-120
	.word	4
	.word	_Label_3153
	.word	-124
	.word	4
	.word	_Label_3154
	.word	-128
	.word	4
	.word	_Label_3155
	.word	-132
	.word	4
	.word	_Label_3156
	.word	-136
	.word	4
	.word	_Label_3157
	.word	-140
	.word	4
	.word	_Label_3158
	.word	-144
	.word	4
	.word	_Label_3159
	.word	-148
	.word	4
	.word	_Label_3160
	.word	-152
	.word	4
	.word	_Label_3161
	.word	-156
	.word	4
	.word	_Label_3162
	.word	-160
	.word	4
	.word	_Label_3163
	.word	-164
	.word	4
	.word	_Label_3164
	.word	-168
	.word	4
	.word	0
_Label_3123:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_3124:
	.ascii	"Pself\0"
	.align
_Label_3125:
	.byte	'?'
	.ascii	"_temp_3122\0"
	.align
_Label_3126:
	.byte	'?'
	.ascii	"_temp_3120\0"
	.align
_Label_3127:
	.byte	'?'
	.ascii	"_temp_3119\0"
	.align
_Label_3128:
	.byte	'?'
	.ascii	"_temp_3116\0"
	.align
_Label_3129:
	.byte	'?'
	.ascii	"_temp_3115\0"
	.align
_Label_3130:
	.byte	'?'
	.ascii	"_temp_3113\0"
	.align
_Label_3131:
	.byte	'?'
	.ascii	"_temp_3112\0"
	.align
_Label_3132:
	.byte	'?'
	.ascii	"_temp_3109\0"
	.align
_Label_3133:
	.byte	'?'
	.ascii	"_temp_3108\0"
	.align
_Label_3134:
	.byte	'?'
	.ascii	"_temp_3106\0"
	.align
_Label_3135:
	.byte	'?'
	.ascii	"_temp_3105\0"
	.align
_Label_3136:
	.byte	'?'
	.ascii	"_temp_3102\0"
	.align
_Label_3137:
	.byte	'?'
	.ascii	"_temp_3101\0"
	.align
_Label_3138:
	.byte	'?'
	.ascii	"_temp_3099\0"
	.align
_Label_3139:
	.byte	'?'
	.ascii	"_temp_3098\0"
	.align
_Label_3140:
	.byte	'?'
	.ascii	"_temp_3095\0"
	.align
_Label_3141:
	.byte	'?'
	.ascii	"_temp_3094\0"
	.align
_Label_3142:
	.byte	'?'
	.ascii	"_temp_3092\0"
	.align
_Label_3143:
	.byte	'?'
	.ascii	"_temp_3091\0"
	.align
_Label_3144:
	.byte	'?'
	.ascii	"_temp_3090\0"
	.align
_Label_3145:
	.byte	'?'
	.ascii	"_temp_3089\0"
	.align
_Label_3146:
	.byte	'?'
	.ascii	"_temp_3086\0"
	.align
_Label_3147:
	.byte	'?'
	.ascii	"_temp_3085\0"
	.align
_Label_3148:
	.byte	'?'
	.ascii	"_temp_3084\0"
	.align
_Label_3149:
	.byte	'?'
	.ascii	"_temp_3083\0"
	.align
_Label_3150:
	.byte	'?'
	.ascii	"_temp_3082\0"
	.align
_Label_3151:
	.byte	'?'
	.ascii	"_temp_3081\0"
	.align
_Label_3152:
	.byte	'?'
	.ascii	"_temp_3080\0"
	.align
_Label_3153:
	.byte	'?'
	.ascii	"_temp_3079\0"
	.align
_Label_3154:
	.byte	'?'
	.ascii	"_temp_3078\0"
	.align
_Label_3155:
	.byte	'?'
	.ascii	"_temp_3077\0"
	.align
_Label_3156:
	.byte	'?'
	.ascii	"_temp_3076\0"
	.align
_Label_3157:
	.byte	'?'
	.ascii	"_temp_3075\0"
	.align
_Label_3158:
	.byte	'?'
	.ascii	"_temp_3074\0"
	.align
_Label_3159:
	.byte	'?'
	.ascii	"_temp_3073\0"
	.align
_Label_3160:
	.byte	'?'
	.ascii	"_temp_3072\0"
	.align
_Label_3161:
	.byte	'?'
	.ascii	"_temp_3071\0"
	.align
_Label_3162:
	.byte	'?'
	.ascii	"_temp_3066\0"
	.align
_Label_3163:
	.byte	'?'
	.ascii	"_temp_3065\0"
	.align
_Label_3164:
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
_Label_4513:
	push	r0
	sub	r1,1,r1
	bne	_Label_4513
	mov	1283,r13		! source line 1283
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1288,r13		! source line 1288
	mov	"\0\0RE",r10
!   _temp_3167 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_3167 [entry ] into _temp_3168
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
!   Data Move: _temp_3166 = *_temp_3168  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_3165 = _temp_3166 AND -8192		(int)
	load	[r14+-20],r1
	mov	-8192,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_3165  (sizeInBytes=4)
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
	.word	_Label_3169
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_3170
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3171
	.word	12
	.word	4
	.word	_Label_3172
	.word	-12
	.word	4
	.word	_Label_3173
	.word	-16
	.word	4
	.word	_Label_3174
	.word	-20
	.word	4
	.word	_Label_3175
	.word	-24
	.word	4
	.word	0
_Label_3169:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractFrameAddr\0"
	.align
_Label_3170:
	.ascii	"Pself\0"
	.align
_Label_3171:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3172:
	.byte	'?'
	.ascii	"_temp_3168\0"
	.align
_Label_3173:
	.byte	'?'
	.ascii	"_temp_3167\0"
	.align
_Label_3174:
	.byte	'?'
	.ascii	"_temp_3166\0"
	.align
_Label_3175:
	.byte	'?'
	.ascii	"_temp_3165\0"
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
_Label_4514:
	push	r0
	sub	r1,1,r1
	bne	_Label_4514
	mov	1293,r13		! source line 1293
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1297,r13		! source line 1297
	mov	"\0\0RE",r10
!   _temp_3178 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_3178 [entry ] into _temp_3179
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
!   Data Move: _temp_3177 = *_temp_3179  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_3176 = _temp_3177 AND 8176		(int)
	load	[r14+-20],r1
	mov	8176,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_3176  (sizeInBytes=4)
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
	.word	_Label_3180
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_3181
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3182
	.word	12
	.word	4
	.word	_Label_3183
	.word	-12
	.word	4
	.word	_Label_3184
	.word	-16
	.word	4
	.word	_Label_3185
	.word	-20
	.word	4
	.word	_Label_3186
	.word	-24
	.word	4
	.word	0
_Label_3180:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractUndefinedBits\0"
	.align
_Label_3181:
	.ascii	"Pself\0"
	.align
_Label_3182:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3183:
	.byte	'?'
	.ascii	"_temp_3179\0"
	.align
_Label_3184:
	.byte	'?'
	.ascii	"_temp_3178\0"
	.align
_Label_3185:
	.byte	'?'
	.ascii	"_temp_3177\0"
	.align
_Label_3186:
	.byte	'?'
	.ascii	"_temp_3176\0"
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
_Label_4515:
	push	r0
	sub	r1,1,r1
	bne	_Label_4515
	mov	1302,r13		! source line 1302
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1307,r13		! source line 1307
	mov	"\0\0AS",r10
!   _temp_3187 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-36]
!   Move address of _temp_3187 [entry ] into _temp_3188
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
!   _temp_3192 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_3192 [entry ] into _temp_3193
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
!   Data Move: _temp_3191 = *_temp_3193  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_3190 = _temp_3191 AND 8191		(int)
	load	[r14+-20],r1
	mov	8191,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   _temp_3189 = _temp_3190 OR frameAddr		(int)
	load	[r14+-24],r1
	load	[r14+16],r2
	or	r1,r2,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_3188 = _temp_3189  (sizeInBytes=4)
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
	.word	_Label_3194
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_3195
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3196
	.word	12
	.word	4
	.word	_Label_3197
	.word	16
	.word	4
	.word	_Label_3198
	.word	-12
	.word	4
	.word	_Label_3199
	.word	-16
	.word	4
	.word	_Label_3200
	.word	-20
	.word	4
	.word	_Label_3201
	.word	-24
	.word	4
	.word	_Label_3202
	.word	-28
	.word	4
	.word	_Label_3203
	.word	-32
	.word	4
	.word	_Label_3204
	.word	-36
	.word	4
	.word	0
_Label_3194:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetFrameAddr\0"
	.align
_Label_3195:
	.ascii	"Pself\0"
	.align
_Label_3196:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3197:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_3198:
	.byte	'?'
	.ascii	"_temp_3193\0"
	.align
_Label_3199:
	.byte	'?'
	.ascii	"_temp_3192\0"
	.align
_Label_3200:
	.byte	'?'
	.ascii	"_temp_3191\0"
	.align
_Label_3201:
	.byte	'?'
	.ascii	"_temp_3190\0"
	.align
_Label_3202:
	.byte	'?'
	.ascii	"_temp_3189\0"
	.align
_Label_3203:
	.byte	'?'
	.ascii	"_temp_3188\0"
	.align
_Label_3204:
	.byte	'?'
	.ascii	"_temp_3187\0"
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
_Label_4516:
	push	r0
	sub	r1,1,r1
	bne	_Label_4516
	mov	1312,r13		! source line 1312
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1316,r13		! source line 1316
	mov	"\0\0RE",r10
!   _temp_3208 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_3208 [entry ] into _temp_3209
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
!   Data Move: _temp_3207 = *_temp_3209  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_3206 = _temp_3207 AND 8		(int)
	load	[r14+-24],r1
	mov	8,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_3206) then goto _Label_3210
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_3210
!   _temp_3205 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_3211
_Label_3210:
!   _temp_3205 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_3211:
!   ReturnResult: _temp_3205  (sizeInBytes=1)
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
	.word	_Label_3212
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_3213
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3214
	.word	12
	.word	4
	.word	_Label_3215
	.word	-16
	.word	4
	.word	_Label_3216
	.word	-20
	.word	4
	.word	_Label_3217
	.word	-24
	.word	4
	.word	_Label_3218
	.word	-28
	.word	4
	.word	_Label_3219
	.word	-9
	.word	1
	.word	0
_Label_3212:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsDirty\0"
	.align
_Label_3213:
	.ascii	"Pself\0"
	.align
_Label_3214:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3215:
	.byte	'?'
	.ascii	"_temp_3209\0"
	.align
_Label_3216:
	.byte	'?'
	.ascii	"_temp_3208\0"
	.align
_Label_3217:
	.byte	'?'
	.ascii	"_temp_3207\0"
	.align
_Label_3218:
	.byte	'?'
	.ascii	"_temp_3206\0"
	.align
_Label_3219:
	.byte	'C'
	.ascii	"_temp_3205\0"
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
_Label_4517:
	push	r0
	sub	r1,1,r1
	bne	_Label_4517
	mov	1321,r13		! source line 1321
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1325,r13		! source line 1325
	mov	"\0\0RE",r10
!   _temp_3223 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_3223 [entry ] into _temp_3224
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
!   Data Move: _temp_3222 = *_temp_3224  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_3221 = _temp_3222 AND 4		(int)
	load	[r14+-24],r1
	mov	4,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_3221) then goto _Label_3225
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_3225
!   _temp_3220 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_3226
_Label_3225:
!   _temp_3220 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_3226:
!   ReturnResult: _temp_3220  (sizeInBytes=1)
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
	.word	_Label_3227
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_3228
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3229
	.word	12
	.word	4
	.word	_Label_3230
	.word	-16
	.word	4
	.word	_Label_3231
	.word	-20
	.word	4
	.word	_Label_3232
	.word	-24
	.word	4
	.word	_Label_3233
	.word	-28
	.word	4
	.word	_Label_3234
	.word	-9
	.word	1
	.word	0
_Label_3227:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsReferenced\0"
	.align
_Label_3228:
	.ascii	"Pself\0"
	.align
_Label_3229:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3230:
	.byte	'?'
	.ascii	"_temp_3224\0"
	.align
_Label_3231:
	.byte	'?'
	.ascii	"_temp_3223\0"
	.align
_Label_3232:
	.byte	'?'
	.ascii	"_temp_3222\0"
	.align
_Label_3233:
	.byte	'?'
	.ascii	"_temp_3221\0"
	.align
_Label_3234:
	.byte	'C'
	.ascii	"_temp_3220\0"
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
_Label_4518:
	push	r0
	sub	r1,1,r1
	bne	_Label_4518
	mov	1330,r13		! source line 1330
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1334,r13		! source line 1334
	mov	"\0\0RE",r10
!   _temp_3238 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_3238 [entry ] into _temp_3239
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
!   Data Move: _temp_3237 = *_temp_3239  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_3236 = _temp_3237 AND 2		(int)
	load	[r14+-24],r1
	mov	2,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_3236) then goto _Label_3240
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_3240
!   _temp_3235 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_3241
_Label_3240:
!   _temp_3235 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_3241:
!   ReturnResult: _temp_3235  (sizeInBytes=1)
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
	.word	_Label_3242
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_3243
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3244
	.word	12
	.word	4
	.word	_Label_3245
	.word	-16
	.word	4
	.word	_Label_3246
	.word	-20
	.word	4
	.word	_Label_3247
	.word	-24
	.word	4
	.word	_Label_3248
	.word	-28
	.word	4
	.word	_Label_3249
	.word	-9
	.word	1
	.word	0
_Label_3242:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsWritable\0"
	.align
_Label_3243:
	.ascii	"Pself\0"
	.align
_Label_3244:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3245:
	.byte	'?'
	.ascii	"_temp_3239\0"
	.align
_Label_3246:
	.byte	'?'
	.ascii	"_temp_3238\0"
	.align
_Label_3247:
	.byte	'?'
	.ascii	"_temp_3237\0"
	.align
_Label_3248:
	.byte	'?'
	.ascii	"_temp_3236\0"
	.align
_Label_3249:
	.byte	'C'
	.ascii	"_temp_3235\0"
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
_Label_4519:
	push	r0
	sub	r1,1,r1
	bne	_Label_4519
	mov	1339,r13		! source line 1339
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1343,r13		! source line 1343
	mov	"\0\0RE",r10
!   _temp_3253 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_3253 [entry ] into _temp_3254
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
!   Data Move: _temp_3252 = *_temp_3254  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_3251 = _temp_3252 AND 1		(int)
	load	[r14+-24],r1
	mov	1,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_3251) then goto _Label_3255
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_3255
!   _temp_3250 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_3256
_Label_3255:
!   _temp_3250 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_3256:
!   ReturnResult: _temp_3250  (sizeInBytes=1)
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
	.word	_Label_3257
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_3258
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3259
	.word	12
	.word	4
	.word	_Label_3260
	.word	-16
	.word	4
	.word	_Label_3261
	.word	-20
	.word	4
	.word	_Label_3262
	.word	-24
	.word	4
	.word	_Label_3263
	.word	-28
	.word	4
	.word	_Label_3264
	.word	-9
	.word	1
	.word	0
_Label_3257:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsValid\0"
	.align
_Label_3258:
	.ascii	"Pself\0"
	.align
_Label_3259:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3260:
	.byte	'?'
	.ascii	"_temp_3254\0"
	.align
_Label_3261:
	.byte	'?'
	.ascii	"_temp_3253\0"
	.align
_Label_3262:
	.byte	'?'
	.ascii	"_temp_3252\0"
	.align
_Label_3263:
	.byte	'?'
	.ascii	"_temp_3251\0"
	.align
_Label_3264:
	.byte	'C'
	.ascii	"_temp_3250\0"
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
_Label_4520:
	push	r0
	sub	r1,1,r1
	bne	_Label_4520
	mov	1348,r13		! source line 1348
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1352,r13		! source line 1352
	mov	"\0\0AS",r10
!   _temp_3265 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_3265 [entry ] into _temp_3266
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
!   _temp_3269 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_3269 [entry ] into _temp_3270
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
!   Data Move: _temp_3268 = *_temp_3270  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_3267 = _temp_3268 OR 8		(int)
	load	[r14+-20],r1
	mov	8,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3266 = _temp_3267  (sizeInBytes=4)
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
	.word	_Label_3271
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_3272
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3273
	.word	12
	.word	4
	.word	_Label_3274
	.word	-12
	.word	4
	.word	_Label_3275
	.word	-16
	.word	4
	.word	_Label_3276
	.word	-20
	.word	4
	.word	_Label_3277
	.word	-24
	.word	4
	.word	_Label_3278
	.word	-28
	.word	4
	.word	_Label_3279
	.word	-32
	.word	4
	.word	0
_Label_3271:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetDirty\0"
	.align
_Label_3272:
	.ascii	"Pself\0"
	.align
_Label_3273:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3274:
	.byte	'?'
	.ascii	"_temp_3270\0"
	.align
_Label_3275:
	.byte	'?'
	.ascii	"_temp_3269\0"
	.align
_Label_3276:
	.byte	'?'
	.ascii	"_temp_3268\0"
	.align
_Label_3277:
	.byte	'?'
	.ascii	"_temp_3267\0"
	.align
_Label_3278:
	.byte	'?'
	.ascii	"_temp_3266\0"
	.align
_Label_3279:
	.byte	'?'
	.ascii	"_temp_3265\0"
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
_Label_4521:
	push	r0
	sub	r1,1,r1
	bne	_Label_4521
	mov	1357,r13		! source line 1357
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1361,r13		! source line 1361
	mov	"\0\0AS",r10
!   _temp_3280 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_3280 [entry ] into _temp_3281
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
!   _temp_3284 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_3284 [entry ] into _temp_3285
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
!   Data Move: _temp_3283 = *_temp_3285  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_3282 = _temp_3283 OR 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3281 = _temp_3282  (sizeInBytes=4)
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
	.word	_Label_3286
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_3287
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3288
	.word	12
	.word	4
	.word	_Label_3289
	.word	-12
	.word	4
	.word	_Label_3290
	.word	-16
	.word	4
	.word	_Label_3291
	.word	-20
	.word	4
	.word	_Label_3292
	.word	-24
	.word	4
	.word	_Label_3293
	.word	-28
	.word	4
	.word	_Label_3294
	.word	-32
	.word	4
	.word	0
_Label_3286:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetReferenced\0"
	.align
_Label_3287:
	.ascii	"Pself\0"
	.align
_Label_3288:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3289:
	.byte	'?'
	.ascii	"_temp_3285\0"
	.align
_Label_3290:
	.byte	'?'
	.ascii	"_temp_3284\0"
	.align
_Label_3291:
	.byte	'?'
	.ascii	"_temp_3283\0"
	.align
_Label_3292:
	.byte	'?'
	.ascii	"_temp_3282\0"
	.align
_Label_3293:
	.byte	'?'
	.ascii	"_temp_3281\0"
	.align
_Label_3294:
	.byte	'?'
	.ascii	"_temp_3280\0"
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
_Label_4522:
	push	r0
	sub	r1,1,r1
	bne	_Label_4522
	mov	1366,r13		! source line 1366
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1370,r13		! source line 1370
	mov	"\0\0AS",r10
!   _temp_3295 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_3295 [entry ] into _temp_3296
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
!   _temp_3299 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_3299 [entry ] into _temp_3300
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
!   Data Move: _temp_3298 = *_temp_3300  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_3297 = _temp_3298 OR 2		(int)
	load	[r14+-20],r1
	mov	2,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3296 = _temp_3297  (sizeInBytes=4)
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
	.word	_Label_3301
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_3302
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3303
	.word	12
	.word	4
	.word	_Label_3304
	.word	-12
	.word	4
	.word	_Label_3305
	.word	-16
	.word	4
	.word	_Label_3306
	.word	-20
	.word	4
	.word	_Label_3307
	.word	-24
	.word	4
	.word	_Label_3308
	.word	-28
	.word	4
	.word	_Label_3309
	.word	-32
	.word	4
	.word	0
_Label_3301:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetWritable\0"
	.align
_Label_3302:
	.ascii	"Pself\0"
	.align
_Label_3303:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3304:
	.byte	'?'
	.ascii	"_temp_3300\0"
	.align
_Label_3305:
	.byte	'?'
	.ascii	"_temp_3299\0"
	.align
_Label_3306:
	.byte	'?'
	.ascii	"_temp_3298\0"
	.align
_Label_3307:
	.byte	'?'
	.ascii	"_temp_3297\0"
	.align
_Label_3308:
	.byte	'?'
	.ascii	"_temp_3296\0"
	.align
_Label_3309:
	.byte	'?'
	.ascii	"_temp_3295\0"
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
_Label_4523:
	push	r0
	sub	r1,1,r1
	bne	_Label_4523
	mov	1375,r13		! source line 1375
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1379,r13		! source line 1379
	mov	"\0\0AS",r10
!   _temp_3310 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_3310 [entry ] into _temp_3311
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
!   _temp_3314 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_3314 [entry ] into _temp_3315
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
!   Data Move: _temp_3313 = *_temp_3315  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_3312 = _temp_3313 OR 1		(int)
	load	[r14+-20],r1
	mov	1,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3311 = _temp_3312  (sizeInBytes=4)
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
	.word	_Label_3316
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_3317
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3318
	.word	12
	.word	4
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
	.word	0
_Label_3316:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetValid\0"
	.align
_Label_3317:
	.ascii	"Pself\0"
	.align
_Label_3318:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3319:
	.byte	'?'
	.ascii	"_temp_3315\0"
	.align
_Label_3320:
	.byte	'?'
	.ascii	"_temp_3314\0"
	.align
_Label_3321:
	.byte	'?'
	.ascii	"_temp_3313\0"
	.align
_Label_3322:
	.byte	'?'
	.ascii	"_temp_3312\0"
	.align
_Label_3323:
	.byte	'?'
	.ascii	"_temp_3311\0"
	.align
_Label_3324:
	.byte	'?'
	.ascii	"_temp_3310\0"
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
_Label_4524:
	push	r0
	sub	r1,1,r1
	bne	_Label_4524
	mov	1384,r13		! source line 1384
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1388,r13		! source line 1388
	mov	"\0\0AS",r10
!   _temp_3325 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_3325 [entry ] into _temp_3326
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
!   _temp_3329 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_3329 [entry ] into _temp_3330
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
!   Data Move: _temp_3328 = *_temp_3330  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_3327 = _temp_3328 AND -9		(int)
	load	[r14+-20],r1
	mov	-9,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3326 = _temp_3327  (sizeInBytes=4)
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
	.word	_Label_3331
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_3332
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3333
	.word	12
	.word	4
	.word	_Label_3334
	.word	-12
	.word	4
	.word	_Label_3335
	.word	-16
	.word	4
	.word	_Label_3336
	.word	-20
	.word	4
	.word	_Label_3337
	.word	-24
	.word	4
	.word	_Label_3338
	.word	-28
	.word	4
	.word	_Label_3339
	.word	-32
	.word	4
	.word	0
_Label_3331:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearDirty\0"
	.align
_Label_3332:
	.ascii	"Pself\0"
	.align
_Label_3333:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3334:
	.byte	'?'
	.ascii	"_temp_3330\0"
	.align
_Label_3335:
	.byte	'?'
	.ascii	"_temp_3329\0"
	.align
_Label_3336:
	.byte	'?'
	.ascii	"_temp_3328\0"
	.align
_Label_3337:
	.byte	'?'
	.ascii	"_temp_3327\0"
	.align
_Label_3338:
	.byte	'?'
	.ascii	"_temp_3326\0"
	.align
_Label_3339:
	.byte	'?'
	.ascii	"_temp_3325\0"
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
_Label_4525:
	push	r0
	sub	r1,1,r1
	bne	_Label_4525
	mov	1393,r13		! source line 1393
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1397,r13		! source line 1397
	mov	"\0\0AS",r10
!   _temp_3340 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_3340 [entry ] into _temp_3341
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
!   _temp_3344 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_3344 [entry ] into _temp_3345
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
!   Data Move: _temp_3343 = *_temp_3345  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_3342 = _temp_3343 AND -5		(int)
	load	[r14+-20],r1
	mov	-5,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3341 = _temp_3342  (sizeInBytes=4)
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
	.word	_Label_3346
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_3347
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3348
	.word	12
	.word	4
	.word	_Label_3349
	.word	-12
	.word	4
	.word	_Label_3350
	.word	-16
	.word	4
	.word	_Label_3351
	.word	-20
	.word	4
	.word	_Label_3352
	.word	-24
	.word	4
	.word	_Label_3353
	.word	-28
	.word	4
	.word	_Label_3354
	.word	-32
	.word	4
	.word	0
_Label_3346:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearReferenced\0"
	.align
_Label_3347:
	.ascii	"Pself\0"
	.align
_Label_3348:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3349:
	.byte	'?'
	.ascii	"_temp_3345\0"
	.align
_Label_3350:
	.byte	'?'
	.ascii	"_temp_3344\0"
	.align
_Label_3351:
	.byte	'?'
	.ascii	"_temp_3343\0"
	.align
_Label_3352:
	.byte	'?'
	.ascii	"_temp_3342\0"
	.align
_Label_3353:
	.byte	'?'
	.ascii	"_temp_3341\0"
	.align
_Label_3354:
	.byte	'?'
	.ascii	"_temp_3340\0"
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
_Label_4526:
	push	r0
	sub	r1,1,r1
	bne	_Label_4526
	mov	1402,r13		! source line 1402
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1406,r13		! source line 1406
	mov	"\0\0AS",r10
!   _temp_3355 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_3355 [entry ] into _temp_3356
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
!   _temp_3359 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_3359 [entry ] into _temp_3360
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
!   Data Move: _temp_3358 = *_temp_3360  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_3357 = _temp_3358 AND -3		(int)
	load	[r14+-20],r1
	mov	-3,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3356 = _temp_3357  (sizeInBytes=4)
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
	.word	_Label_3361
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_3362
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3363
	.word	12
	.word	4
	.word	_Label_3364
	.word	-12
	.word	4
	.word	_Label_3365
	.word	-16
	.word	4
	.word	_Label_3366
	.word	-20
	.word	4
	.word	_Label_3367
	.word	-24
	.word	4
	.word	_Label_3368
	.word	-28
	.word	4
	.word	_Label_3369
	.word	-32
	.word	4
	.word	0
_Label_3361:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearWritable\0"
	.align
_Label_3362:
	.ascii	"Pself\0"
	.align
_Label_3363:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3364:
	.byte	'?'
	.ascii	"_temp_3360\0"
	.align
_Label_3365:
	.byte	'?'
	.ascii	"_temp_3359\0"
	.align
_Label_3366:
	.byte	'?'
	.ascii	"_temp_3358\0"
	.align
_Label_3367:
	.byte	'?'
	.ascii	"_temp_3357\0"
	.align
_Label_3368:
	.byte	'?'
	.ascii	"_temp_3356\0"
	.align
_Label_3369:
	.byte	'?'
	.ascii	"_temp_3355\0"
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
_Label_4527:
	push	r0
	sub	r1,1,r1
	bne	_Label_4527
	mov	1411,r13		! source line 1411
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1415,r13		! source line 1415
	mov	"\0\0AS",r10
!   _temp_3370 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_3370 [entry ] into _temp_3371
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
!   _temp_3374 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_3374 [entry ] into _temp_3375
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
!   Data Move: _temp_3373 = *_temp_3375  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_3372 = _temp_3373 AND -2		(int)
	load	[r14+-20],r1
	mov	-2,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3371 = _temp_3372  (sizeInBytes=4)
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
	.word	_Label_3376
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_3377
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3378
	.word	12
	.word	4
	.word	_Label_3379
	.word	-12
	.word	4
	.word	_Label_3380
	.word	-16
	.word	4
	.word	_Label_3381
	.word	-20
	.word	4
	.word	_Label_3382
	.word	-24
	.word	4
	.word	_Label_3383
	.word	-28
	.word	4
	.word	_Label_3384
	.word	-32
	.word	4
	.word	0
_Label_3376:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearValid\0"
	.align
_Label_3377:
	.ascii	"Pself\0"
	.align
_Label_3378:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3379:
	.byte	'?'
	.ascii	"_temp_3375\0"
	.align
_Label_3380:
	.byte	'?'
	.ascii	"_temp_3374\0"
	.align
_Label_3381:
	.byte	'?'
	.ascii	"_temp_3373\0"
	.align
_Label_3382:
	.byte	'?'
	.ascii	"_temp_3372\0"
	.align
_Label_3383:
	.byte	'?'
	.ascii	"_temp_3371\0"
	.align
_Label_3384:
	.byte	'?'
	.ascii	"_temp_3370\0"
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
_Label_4528:
	push	r0
	sub	r1,1,r1
	bne	_Label_4528
	mov	1420,r13		! source line 1420
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3386 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_3386 [0 ] into _temp_3387
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
!   _temp_3385 = _temp_3387		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_3388 = numberOfPages * 4		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	4,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3385  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_3388  sizeInBytes=4
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
	.word	_Label_3389
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_3390
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3391
	.word	-12
	.word	4
	.word	_Label_3392
	.word	-16
	.word	4
	.word	_Label_3393
	.word	-20
	.word	4
	.word	_Label_3394
	.word	-24
	.word	4
	.word	0
_Label_3389:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetToThisPageTable\0"
	.align
_Label_3390:
	.ascii	"Pself\0"
	.align
_Label_3391:
	.byte	'?'
	.ascii	"_temp_3388\0"
	.align
_Label_3392:
	.byte	'?'
	.ascii	"_temp_3387\0"
	.align
_Label_3393:
	.byte	'?'
	.ascii	"_temp_3386\0"
	.align
_Label_3394:
	.byte	'?'
	.ascii	"_temp_3385\0"
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
_Label_4529:
	push	r0
	sub	r1,1,r1
	bne	_Label_4529
	mov	1431,r13		! source line 1431
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1446,r13		! source line 1446
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_3395
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_3395
	jmp	_Label_3396
_Label_3395:
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
	jmp	_Label_3397
_Label_3396:
! ELSE...
	mov	1448,r13		! source line 1448
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1448,r13		! source line 1448
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_3399		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3399
!	jmp	_Label_3398
_Label_3398:
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
_Label_3399:
! END IF...
_Label_3397:
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
_Label_3400:
!	jmp	_Label_3401
_Label_3401:
	mov	1455,r13		! source line 1455
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1456,r13		! source line 1456
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_3404		(int)
	load	[r14+-40],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_3404
!	jmp	_Label_3403
_Label_3403:
! THEN...
	mov	1457,r13		! source line 1457
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3405 = _StringConst_132
	set	_StringConst_132,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_3405  sizeInBytes=4
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
_Label_3404:
! IF STATEMENT...
	mov	1460,r13		! source line 1460
	mov	"\0\0IF",r10
	mov	1460,r13		! source line 1460
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_3409) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3408  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_3408 then goto _Label_3407 else goto _Label_3406
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3406
	jmp	_Label_3407
_Label_3406:
! THEN...
	mov	1461,r13		! source line 1461
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3410 = _StringConst_133
	set	_StringConst_133,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3410  sizeInBytes=4
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
_Label_3407:
! ASSIGNMENT STATEMENT...
	mov	1464,r13		! source line 1464
	mov	"\0\0AS",r10
	mov	1464,r13		! source line 1464
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_3412) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3411  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   fromAddr = _temp_3411 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! WHILE STATEMENT...
	mov	1466,r13		! source line 1466
	mov	"\0\0WH",r10
_Label_3413:
!   if offset >= 8192 then goto _Label_3415		(int)
	load	[r14+-44],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3415
!	jmp	_Label_3414
_Label_3414:
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
!   Data Move: _temp_3416 = *fromAddr  (sizeInBytes=1)
	load	[r14+-48],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *kernelAddr = _temp_3416  (sizeInBytes=1)
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
!   if copiedSoFar != numBytes then goto _Label_3418		(int)
	load	[r14+-36],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_3418
!	jmp	_Label_3417
_Label_3417:
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
_Label_3418:
! END WHILE...
	jmp	_Label_3413
_Label_3415:
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
	jmp	_Label_3400
_Label_3402:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_19:
	.word	_sourceFileName
	.word	_Label_3419
	.word	16		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_3420
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3421
	.word	12
	.word	4
	.word	_Label_3422
	.word	16
	.word	4
	.word	_Label_3423
	.word	20
	.word	4
	.word	_Label_3424
	.word	-9
	.word	1
	.word	_Label_3425
	.word	-16
	.word	4
	.word	_Label_3426
	.word	-20
	.word	4
	.word	_Label_3427
	.word	-24
	.word	4
	.word	_Label_3428
	.word	-28
	.word	4
	.word	_Label_3429
	.word	-10
	.word	1
	.word	_Label_3430
	.word	-32
	.word	4
	.word	_Label_3431
	.word	-36
	.word	4
	.word	_Label_3432
	.word	-40
	.word	4
	.word	_Label_3433
	.word	-44
	.word	4
	.word	_Label_3434
	.word	-48
	.word	4
	.word	0
_Label_3419:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesFromVirtual\0"
	.align
_Label_3420:
	.ascii	"Pself\0"
	.align
_Label_3421:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_3422:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_3423:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3424:
	.byte	'C'
	.ascii	"_temp_3416\0"
	.align
_Label_3425:
	.byte	'?'
	.ascii	"_temp_3412\0"
	.align
_Label_3426:
	.byte	'?'
	.ascii	"_temp_3411\0"
	.align
_Label_3427:
	.byte	'?'
	.ascii	"_temp_3410\0"
	.align
_Label_3428:
	.byte	'?'
	.ascii	"_temp_3409\0"
	.align
_Label_3429:
	.byte	'C'
	.ascii	"_temp_3408\0"
	.align
_Label_3430:
	.byte	'?'
	.ascii	"_temp_3405\0"
	.align
_Label_3431:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_3432:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_3433:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_3434:
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
_Label_4530:
	push	r0
	sub	r1,1,r1
	bne	_Label_4530
	mov	1485,r13		! source line 1485
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1496,r13		! source line 1496
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_3435
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_3435
	jmp	_Label_3436
_Label_3435:
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
	jmp	_Label_3437
_Label_3436:
! ELSE...
	mov	1498,r13		! source line 1498
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1498,r13		! source line 1498
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_3439		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3439
!	jmp	_Label_3438
_Label_3438:
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
_Label_3439:
! END IF...
_Label_3437:
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
_Label_3440:
!	jmp	_Label_3441
_Label_3441:
	mov	1503,r13		! source line 1503
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1504,r13		! source line 1504
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_3446		(int)
	load	[r14+-36],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_3446
	jmp	_Label_3443
_Label_3446:
	mov	1505,r13		! source line 1505
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_3448) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3447  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_3447 then goto _Label_3445 else goto _Label_3443
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_3443
	jmp	_Label_3445
_Label_3445:
	mov	1506,r13		! source line 1506
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_3450) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3449  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_3449 then goto _Label_3444 else goto _Label_3443
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3443
	jmp	_Label_3444
_Label_3443:
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
_Label_3444:
! ASSIGNMENT STATEMENT...
	mov	1509,r13		! source line 1509
	mov	"\0\0AS",r10
	mov	1509,r13		! source line 1509
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_3452) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3451  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   destAddr = _temp_3451 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-40],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1510,r13		! source line 1510
	mov	"\0\0WH",r10
_Label_3453:
!   if offset >= 8192 then goto _Label_3455		(int)
	load	[r14+-40],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3455
!	jmp	_Label_3454
_Label_3454:
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
!   Data Move: _temp_3456 = *kernelAddr  (sizeInBytes=1)
	load	[r14+16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *destAddr = _temp_3456  (sizeInBytes=1)
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
!   if copiedSoFar != numBytes then goto _Label_3458		(int)
	load	[r14+-32],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_3458
!	jmp	_Label_3457
_Label_3457:
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
_Label_3458:
! END WHILE...
	jmp	_Label_3453
_Label_3455:
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
	jmp	_Label_3440
_Label_3442:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_20:
	.word	_sourceFileName
	.word	_Label_3459
	.word	16		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_3460
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3461
	.word	12
	.word	4
	.word	_Label_3462
	.word	16
	.word	4
	.word	_Label_3463
	.word	20
	.word	4
	.word	_Label_3464
	.word	-9
	.word	1
	.word	_Label_3465
	.word	-16
	.word	4
	.word	_Label_3466
	.word	-20
	.word	4
	.word	_Label_3467
	.word	-24
	.word	4
	.word	_Label_3468
	.word	-10
	.word	1
	.word	_Label_3469
	.word	-28
	.word	4
	.word	_Label_3470
	.word	-11
	.word	1
	.word	_Label_3471
	.word	-32
	.word	4
	.word	_Label_3472
	.word	-36
	.word	4
	.word	_Label_3473
	.word	-40
	.word	4
	.word	_Label_3474
	.word	-44
	.word	4
	.word	0
_Label_3459:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesToVirtual\0"
	.align
_Label_3460:
	.ascii	"Pself\0"
	.align
_Label_3461:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_3462:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_3463:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3464:
	.byte	'C'
	.ascii	"_temp_3456\0"
	.align
_Label_3465:
	.byte	'?'
	.ascii	"_temp_3452\0"
	.align
_Label_3466:
	.byte	'?'
	.ascii	"_temp_3451\0"
	.align
_Label_3467:
	.byte	'?'
	.ascii	"_temp_3450\0"
	.align
_Label_3468:
	.byte	'C'
	.ascii	"_temp_3449\0"
	.align
_Label_3469:
	.byte	'?'
	.ascii	"_temp_3448\0"
	.align
_Label_3470:
	.byte	'C'
	.ascii	"_temp_3447\0"
	.align
_Label_3471:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_3472:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_3473:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_3474:
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
_Label_4531:
	push	r0
	sub	r1,1,r1
	bne	_Label_4531
	mov	1527,r13		! source line 1527
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1551,r13		! source line 1551
	mov	"\0\0IF",r10
	mov	1551,r13		! source line 1551
	mov	"\0\0SE",r10
!   _temp_3478 = &sourceSize
	add	r14,-44,r1
	store	r1,[r14+-36]
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_3479) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_3478  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_3477  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   if _temp_3477 >= 4 then goto _Label_3476		(int)
	load	[r14+-40],r1
	mov	4,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3476
!	jmp	_Label_3475
_Label_3475:
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
_Label_3476:
! IF STATEMENT...
	mov	1558,r13		! source line 1558
	mov	"\0\0IF",r10
!   if sourceSize <= maxSize then goto _Label_3481		(int)
	load	[r14+-44],r1
	load	[r14+20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3481
!	jmp	_Label_3480
_Label_3480:
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
_Label_3481:
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
!   _temp_3484 = kernelAddr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-20]
!   _temp_3483 = _temp_3484 + 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   _temp_3485 = virtAddr + 4		(int)
	load	[r14+16],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
	load	[r14+8],r1
	store	r1,[r14+-12]
!   if intIsZero (_temp_3486) then goto _runtimeErrorNullPointer
	load	[r14+-12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_3483  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_3485  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_3482  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_3482  (sizeInBytes=4)
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
	.word	_Label_3487
	.word	16		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_3488
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3489
	.word	12
	.word	4
	.word	_Label_3490
	.word	16
	.word	4
	.word	_Label_3491
	.word	20
	.word	4
	.word	_Label_3492
	.word	-12
	.word	4
	.word	_Label_3493
	.word	-16
	.word	4
	.word	_Label_3494
	.word	-20
	.word	4
	.word	_Label_3495
	.word	-24
	.word	4
	.word	_Label_3496
	.word	-28
	.word	4
	.word	_Label_3497
	.word	-32
	.word	4
	.word	_Label_3498
	.word	-36
	.word	4
	.word	_Label_3499
	.word	-40
	.word	4
	.word	_Label_3500
	.word	-44
	.word	4
	.word	0
_Label_3487:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"GetStringFromVirtual\0"
	.align
_Label_3488:
	.ascii	"Pself\0"
	.align
_Label_3489:
	.byte	'P'
	.ascii	"kernelAddr\0"
	.align
_Label_3490:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_3491:
	.byte	'I'
	.ascii	"maxSize\0"
	.align
_Label_3492:
	.byte	'?'
	.ascii	"_temp_3486\0"
	.align
_Label_3493:
	.byte	'?'
	.ascii	"_temp_3485\0"
	.align
_Label_3494:
	.byte	'?'
	.ascii	"_temp_3484\0"
	.align
_Label_3495:
	.byte	'?'
	.ascii	"_temp_3483\0"
	.align
_Label_3496:
	.byte	'?'
	.ascii	"_temp_3482\0"
	.align
_Label_3497:
	.byte	'?'
	.ascii	"_temp_3479\0"
	.align
_Label_3498:
	.byte	'?'
	.ascii	"_temp_3478\0"
	.align
_Label_3499:
	.byte	'?'
	.ascii	"_temp_3477\0"
	.align
_Label_3500:
	.byte	'I'
	.ascii	"sourceSize\0"
	.align
! 
! ===============  CLASS DiskDriver  ===============
! 
! Dispatch Table:
! 
_P_Kernel_DiskDriver:
	.word	_Label_3501
	jmp	_Method_P_Kernel_DiskDriver_1	! 4:	Init
	jmp	_Method_P_Kernel_DiskDriver_2	! 8:	SynchReadSector
	jmp	_Method_P_Kernel_DiskDriver_3	! 12:	StartReadSector
	jmp	_Method_P_Kernel_DiskDriver_4	! 16:	SynchWriteSector
	jmp	_Method_P_Kernel_DiskDriver_5	! 20:	StartWriteSector
	.word	0
! 
! Class descriptor:
! 
_Label_3501:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3502
	.word	_sourceFileName
	.word	343		! line number
	.word	68		! size of instances, in bytes
	.word	_P_Kernel_DiskDriver
	.word	_P_System_Object
	.word	0
_Label_3502:
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
_Label_4532:
	push	r0
	sub	r1,1,r1
	bne	_Label_4532
	mov	2316,r13		! source line 2316
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3503 = _StringConst_134
	set	_StringConst_134,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_3503  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2317,r13		! source line 2317
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2318,r13		! source line 2318
	mov	"\0\0AS",r10
!   DISK_STATUS_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	2319,r13		! source line 2319
	mov	"\0\0AS",r10
!   DISK_COMMAND_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! ASSIGNMENT STATEMENT...
	mov	2320,r13		! source line 2320
	mov	"\0\0AS",r10
!   DISK_MEMORY_ADDRESS_REGISTER = 16776972		(4 bytes)
	set	16776972,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	2321,r13		! source line 2321
	mov	"\0\0AS",r10
!   DISK_SECTOR_NUMBER_REGISTER = 16776976		(4 bytes)
	set	16776976,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2322,r13		! source line 2322
	mov	"\0\0AS",r10
!   DISK_SECTOR_COUNT_REGISTER = 16776980		(4 bytes)
	set	16776980,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	2323,r13		! source line 2323
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2324,r13		! source line 2324
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
	mov	2325,r13		! source line 2325
	mov	"\0\0SE",r10
!   _temp_3505 = &semUsedInSynchMethods
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
	mov	2326,r13		! source line 2326
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
	mov	2327,r13		! source line 2327
	mov	"\0\0SE",r10
!   _temp_3507 = &diskBusy
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
	mov	2327,r13		! source line 2327
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
	.word	_Label_3508
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_3509
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3510
	.word	-12
	.word	4
	.word	_Label_3511
	.word	-16
	.word	4
	.word	_Label_3512
	.word	-20
	.word	4
	.word	_Label_3513
	.word	-24
	.word	4
	.word	_Label_3514
	.word	-28
	.word	4
	.word	0
_Label_3508:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_3509:
	.ascii	"Pself\0"
	.align
_Label_3510:
	.byte	'?'
	.ascii	"_temp_3507\0"
	.align
_Label_3511:
	.byte	'?'
	.ascii	"_temp_3506\0"
	.align
_Label_3512:
	.byte	'?'
	.ascii	"_temp_3505\0"
	.align
_Label_3513:
	.byte	'?'
	.ascii	"_temp_3504\0"
	.align
_Label_3514:
	.byte	'?'
	.ascii	"_temp_3503\0"
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
_Label_4533:
	push	r0
	sub	r1,1,r1
	bne	_Label_4533
	mov	2332,r13		! source line 2332
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2345,r13		! source line 2345
	mov	"\0\0SE",r10
!   _temp_3515 = &diskBusy
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
	mov	2346,r13		! source line 2346
	mov	"\0\0WH",r10
_Label_3516:
!	jmp	_Label_3517
_Label_3517:
	mov	2346,r13		! source line 2346
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2348,r13		! source line 2348
	mov	"\0\0SE",r10
!   _temp_3519 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_3520) then goto _runtimeErrorNullPointer
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
!   Prepare Argument: offset=24  value=_temp_3519  sizeInBytes=4
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
	mov	2350,r13		! source line 2350
	mov	"\0\0SE",r10
!   _temp_3521 = &semUsedInSynchMethods
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
	mov	2353,r13		! source line 2353
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_3530 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_3524
	cmp	r1,2
	be	_Label_3525
	cmp	r1,3
	be	_Label_3526
	cmp	r1,4
	be	_Label_3527
	cmp	r1,5
	be	_Label_3528
	cmp	r1,6
	be	_Label_3529
	jmp	_Label_3522
! CASE 1...
_Label_3524:
! SEND STATEMENT...
	mov	2355,r13		! source line 2355
	mov	"\0\0SE",r10
!   _temp_3531 = &diskBusy
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
	mov	2356,r13		! source line 2356
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_3525:
! CALL STATEMENT...
!   _temp_3532 = _StringConst_135
	set	_StringConst_135,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_3532  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2358,r13		! source line 2358
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_3526:
! CALL STATEMENT...
!   _temp_3533 = _StringConst_136
	set	_StringConst_136,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3533  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2360,r13		! source line 2360
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_3527:
! CALL STATEMENT...
!   _temp_3534 = _StringConst_137
	set	_StringConst_137,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3534  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2362,r13		! source line 2362
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_3528:
! BREAK STATEMENT...
	mov	2366,r13		! source line 2366
	mov	"\0\0BR",r10
	jmp	_Label_3523
! CASE 6...
_Label_3529:
! CALL STATEMENT...
!   _temp_3535 = _StringConst_138
	set	_StringConst_138,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3535  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2368,r13		! source line 2368
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_3522:
! CALL STATEMENT...
!   _temp_3536 = _StringConst_139
	set	_StringConst_139,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3536  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2370,r13		! source line 2370
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_3523:
! END WHILE...
	jmp	_Label_3516
_Label_3518:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_2:
	.word	_sourceFileName
	.word	_Label_3537
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_3538
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3539
	.word	12
	.word	4
	.word	_Label_3540
	.word	16
	.word	4
	.word	_Label_3541
	.word	20
	.word	4
	.word	_Label_3542
	.word	-12
	.word	4
	.word	_Label_3543
	.word	-16
	.word	4
	.word	_Label_3544
	.word	-20
	.word	4
	.word	_Label_3545
	.word	-24
	.word	4
	.word	_Label_3546
	.word	-28
	.word	4
	.word	_Label_3547
	.word	-32
	.word	4
	.word	_Label_3548
	.word	-36
	.word	4
	.word	_Label_3549
	.word	-40
	.word	4
	.word	_Label_3550
	.word	-44
	.word	4
	.word	_Label_3551
	.word	-48
	.word	4
	.word	_Label_3552
	.word	-52
	.word	4
	.word	0
_Label_3537:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchReadSector\0"
	.align
_Label_3538:
	.ascii	"Pself\0"
	.align
_Label_3539:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_3540:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_3541:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_3542:
	.byte	'?'
	.ascii	"_temp_3536\0"
	.align
_Label_3543:
	.byte	'?'
	.ascii	"_temp_3535\0"
	.align
_Label_3544:
	.byte	'?'
	.ascii	"_temp_3534\0"
	.align
_Label_3545:
	.byte	'?'
	.ascii	"_temp_3533\0"
	.align
_Label_3546:
	.byte	'?'
	.ascii	"_temp_3532\0"
	.align
_Label_3547:
	.byte	'?'
	.ascii	"_temp_3531\0"
	.align
_Label_3548:
	.byte	'?'
	.ascii	"_temp_3530\0"
	.align
_Label_3549:
	.byte	'?'
	.ascii	"_temp_3521\0"
	.align
_Label_3550:
	.byte	'?'
	.ascii	"_temp_3520\0"
	.align
_Label_3551:
	.byte	'?'
	.ascii	"_temp_3519\0"
	.align
_Label_3552:
	.byte	'?'
	.ascii	"_temp_3515\0"
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
	mov	2379,r13		! source line 2379
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2394,r13		! source line 2394
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2397,r13		! source line 2397
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
	mov	2398,r13		! source line 2398
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
	mov	2399,r13		! source line 2399
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
	mov	2400,r13		! source line 2400
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
	mov	2400,r13		! source line 2400
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
	.word	_Label_3553
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_3554
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3555
	.word	12
	.word	4
	.word	_Label_3556
	.word	16
	.word	4
	.word	_Label_3557
	.word	20
	.word	4
	.word	_Label_3558
	.word	24
	.word	4
	.word	0
_Label_3553:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartReadSector\0"
	.align
_Label_3554:
	.ascii	"Pself\0"
	.align
_Label_3555:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_3556:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_3557:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_3558:
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
_Label_4534:
	push	r0
	sub	r1,1,r1
	bne	_Label_4534
	mov	2405,r13		! source line 2405
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2417,r13		! source line 2417
	mov	"\0\0SE",r10
!   _temp_3559 = &diskBusy
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
	mov	2418,r13		! source line 2418
	mov	"\0\0WH",r10
_Label_3560:
!	jmp	_Label_3561
_Label_3561:
	mov	2418,r13		! source line 2418
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2419,r13		! source line 2419
	mov	"\0\0SE",r10
!   _temp_3563 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_3564) then goto _runtimeErrorNullPointer
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
!   Prepare Argument: offset=24  value=_temp_3563  sizeInBytes=4
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
	mov	2421,r13		! source line 2421
	mov	"\0\0SE",r10
!   _temp_3565 = &semUsedInSynchMethods
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
	mov	2424,r13		! source line 2424
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_3574 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_3568
	cmp	r1,2
	be	_Label_3569
	cmp	r1,3
	be	_Label_3570
	cmp	r1,4
	be	_Label_3571
	cmp	r1,5
	be	_Label_3572
	cmp	r1,6
	be	_Label_3573
	jmp	_Label_3566
! CASE 1...
_Label_3568:
! SEND STATEMENT...
	mov	2426,r13		! source line 2426
	mov	"\0\0SE",r10
!   _temp_3575 = &diskBusy
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
	mov	2427,r13		! source line 2427
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_3569:
! CALL STATEMENT...
!   _temp_3576 = _StringConst_140
	set	_StringConst_140,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_3576  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2429,r13		! source line 2429
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_3570:
! CALL STATEMENT...
!   _temp_3577 = _StringConst_141
	set	_StringConst_141,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3577  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2431,r13		! source line 2431
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_3571:
! CALL STATEMENT...
!   _temp_3578 = _StringConst_142
	set	_StringConst_142,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3578  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2433,r13		! source line 2433
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_3572:
! BREAK STATEMENT...
	mov	2437,r13		! source line 2437
	mov	"\0\0BR",r10
	jmp	_Label_3567
! CASE 6...
_Label_3573:
! CALL STATEMENT...
!   _temp_3579 = _StringConst_143
	set	_StringConst_143,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3579  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2439,r13		! source line 2439
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_3566:
! CALL STATEMENT...
!   _temp_3580 = _StringConst_144
	set	_StringConst_144,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3580  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2441,r13		! source line 2441
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_3567:
! END WHILE...
	jmp	_Label_3560
_Label_3562:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_4:
	.word	_sourceFileName
	.word	_Label_3581
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_3582
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3583
	.word	12
	.word	4
	.word	_Label_3584
	.word	16
	.word	4
	.word	_Label_3585
	.word	20
	.word	4
	.word	_Label_3586
	.word	-12
	.word	4
	.word	_Label_3587
	.word	-16
	.word	4
	.word	_Label_3588
	.word	-20
	.word	4
	.word	_Label_3589
	.word	-24
	.word	4
	.word	_Label_3590
	.word	-28
	.word	4
	.word	_Label_3591
	.word	-32
	.word	4
	.word	_Label_3592
	.word	-36
	.word	4
	.word	_Label_3593
	.word	-40
	.word	4
	.word	_Label_3594
	.word	-44
	.word	4
	.word	_Label_3595
	.word	-48
	.word	4
	.word	_Label_3596
	.word	-52
	.word	4
	.word	0
_Label_3581:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchWriteSector\0"
	.align
_Label_3582:
	.ascii	"Pself\0"
	.align
_Label_3583:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_3584:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_3585:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_3586:
	.byte	'?'
	.ascii	"_temp_3580\0"
	.align
_Label_3587:
	.byte	'?'
	.ascii	"_temp_3579\0"
	.align
_Label_3588:
	.byte	'?'
	.ascii	"_temp_3578\0"
	.align
_Label_3589:
	.byte	'?'
	.ascii	"_temp_3577\0"
	.align
_Label_3590:
	.byte	'?'
	.ascii	"_temp_3576\0"
	.align
_Label_3591:
	.byte	'?'
	.ascii	"_temp_3575\0"
	.align
_Label_3592:
	.byte	'?'
	.ascii	"_temp_3574\0"
	.align
_Label_3593:
	.byte	'?'
	.ascii	"_temp_3565\0"
	.align
_Label_3594:
	.byte	'?'
	.ascii	"_temp_3564\0"
	.align
_Label_3595:
	.byte	'?'
	.ascii	"_temp_3563\0"
	.align
_Label_3596:
	.byte	'?'
	.ascii	"_temp_3559\0"
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
	mov	2450,r13		! source line 2450
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2465,r13		! source line 2465
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2467,r13		! source line 2467
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
	mov	2468,r13		! source line 2468
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
	mov	2469,r13		! source line 2469
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
	mov	2470,r13		! source line 2470
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
	mov	2470,r13		! source line 2470
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
	.word	_Label_3597
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_3598
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3599
	.word	12
	.word	4
	.word	_Label_3600
	.word	16
	.word	4
	.word	_Label_3601
	.word	20
	.word	4
	.word	_Label_3602
	.word	24
	.word	4
	.word	0
_Label_3597:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartWriteSector\0"
	.align
_Label_3598:
	.ascii	"Pself\0"
	.align
_Label_3599:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_3600:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_3601:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_3602:
	.byte	'P'
	.ascii	"whoCares\0"
	.align
! 
! ===============  CLASS FileManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileManager:
	.word	_Label_3603
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
_Label_3603:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3604
	.word	_sourceFileName
	.word	366		! line number
	.word	800		! size of instances, in bytes
	.word	_P_Kernel_FileManager
	.word	_P_System_Object
	.word	0
_Label_3604:
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
_Label_4535:
	push	r0
	sub	r1,1,r1
	bne	_Label_4535
	mov	2481,r13		! source line 2481
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3605 = _StringConst_145
	set	_StringConst_145,r1
	store	r1,[r14+-940]
!   Prepare Argument: offset=8  value=_temp_3605  sizeInBytes=4
	load	[r14+-940],r1
	store	r1,[r15+0]
!   Call the function
	mov	2488,r13		! source line 2488
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2489,r13		! source line 2489
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
	mov	2490,r13		! source line 2490
	mov	"\0\0SE",r10
!   _temp_3607 = &fileManagerLock
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
	mov	2493,r13		! source line 2493
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
	mov	2494,r13		! source line 2494
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
	mov	2495,r13		! source line 2495
	mov	"\0\0SE",r10
!   _temp_3610 = &anFCBBecameFree
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
	mov	2496,r13		! source line 2496
	mov	"\0\0AS",r10
!   _temp_3611 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-916]
!   NEW ARRAY Constructor...
!   _temp_3613 = &_temp_3612
	add	r14,-912,r1
	store	r1,[r14+-508]
!   _temp_3613 = _temp_3613 + 4
	load	[r14+-508],r1
	add	r1,4,r1
	store	r1,[r14+-508]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_3615 = zeros  (sizeInBytes=40)
	add	r14,-500,r4
	mov	10,r3
_Label_4536:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4536
!   _temp_3615 = _P_Kernel_FileControlBlock
	set	_P_Kernel_FileControlBlock,r1
	store	r1,[r14+-500]
	mov	10,r1
	store	r1,[r14+-504]
_Label_3617:
!   Data Move: *_temp_3613 = _temp_3615  (sizeInBytes=40)
	add	r14,-500,r5
	load	[r14+-508],r4
	mov	10,r3
_Label_4537:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4537
!   _temp_3613 = _temp_3613 + 40
	load	[r14+-508],r1
	add	r1,40,r1
	store	r1,[r14+-508]
!   _temp_3614 = _temp_3614 + -1
	load	[r14+-504],r1
	add	r1,-1,r1
	store	r1,[r14+-504]
!   if intNotZero (_temp_3614) then goto _Label_3617
	load	[r14+-504],r1
	cmp	r1,r0
	bne	_Label_3617
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-912]
!   _temp_3618 = &_temp_3612
	add	r14,-912,r1
	store	r1,[r14+-456]
!   make sure array has size 10
	load	[r14+-916],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_4538
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4538:
!   make sure array has size 10
	load	[r14+-456],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_3611 = *_temp_3618  (sizeInBytes=404)
	load	[r14+-456],r5
	load	[r14+-916],r4
	mov	101,r3
_Label_4539:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4539
! FOR STATEMENT...
	mov	2498,r13		! source line 2498
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3623 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-452]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3624 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-448]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3623  (sizeInBytes=4)
	load	[r14+-452],r1
	store	r1,[r14+-944]
_Label_3619:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3624 then goto _Label_3622		
	load	[r14+-944],r1
	load	[r14+-448],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3622
_Label_3620:
	mov	2498,r13		! source line 2498
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2499,r13		! source line 2499
	mov	"\0\0AS",r10
!   _temp_3625 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-444]
!   Move address of _temp_3625 [i ] into _temp_3626
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
!   _temp_3627 = _temp_3626 + 12
	load	[r14+-440],r1
	add	r1,12,r1
	store	r1,[r14+-436]
!   Data Move: *_temp_3627 = i  (sizeInBytes=4)
	load	[r14+-944],r1
	load	[r14+-436],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2500,r13		! source line 2500
	mov	"\0\0SE",r10
!   _temp_3628 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-432]
!   Move address of _temp_3628 [i ] into _temp_3629
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
	mov	2501,r13		! source line 2501
	mov	"\0\0SE",r10
!   _temp_3631 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-420]
!   Move address of _temp_3631 [i ] into _temp_3632
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
!   _temp_3630 = _temp_3632		(4 bytes)
	load	[r14+-416],r1
	store	r1,[r14+-424]
!   _temp_3633 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-412]
!   Prepare Argument: offset=12  value=_temp_3630  sizeInBytes=4
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
_Label_3621:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_3619
! END FOR
_Label_3622:
! ASSIGNMENT STATEMENT...
	mov	2505,r13		! source line 2505
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
	mov	2506,r13		! source line 2506
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
	mov	2507,r13		! source line 2507
	mov	"\0\0SE",r10
!   _temp_3636 = &anOpenFileBecameFree
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
	mov	2508,r13		! source line 2508
	mov	"\0\0AS",r10
!   _temp_3637 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-396]
!   NEW ARRAY Constructor...
!   _temp_3639 = &_temp_3638
	add	r14,-392,r1
	store	r1,[r14+-108]
!   _temp_3639 = _temp_3639 + 4
	load	[r14+-108],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_3641 = zeros  (sizeInBytes=28)
	add	r14,-100,r4
	mov	7,r3
_Label_4540:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4540
!   _temp_3641 = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	store	r1,[r14+-100]
	mov	10,r1
	store	r1,[r14+-104]
_Label_3643:
!   Data Move: *_temp_3639 = _temp_3641  (sizeInBytes=28)
	add	r14,-100,r5
	load	[r14+-108],r4
	mov	7,r3
_Label_4541:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4541
!   _temp_3639 = _temp_3639 + 28
	load	[r14+-108],r1
	add	r1,28,r1
	store	r1,[r14+-108]
!   _temp_3640 = _temp_3640 + -1
	load	[r14+-104],r1
	add	r1,-1,r1
	store	r1,[r14+-104]
!   if intNotZero (_temp_3640) then goto _Label_3643
	load	[r14+-104],r1
	cmp	r1,r0
	bne	_Label_3643
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-392]
!   _temp_3644 = &_temp_3638
	add	r14,-392,r1
	store	r1,[r14+-68]
!   make sure array has size 10
	load	[r14+-396],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_4542
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4542:
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_3637 = *_temp_3644  (sizeInBytes=284)
	load	[r14+-68],r5
	load	[r14+-396],r4
	mov	71,r3
_Label_4543:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4543
! FOR STATEMENT...
	mov	2510,r13		! source line 2510
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3649 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3650 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3649  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-944]
_Label_3645:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3650 then goto _Label_3648		
	load	[r14+-944],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3648
_Label_3646:
	mov	2510,r13		! source line 2510
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2511,r13		! source line 2511
	mov	"\0\0AS",r10
!   _temp_3651 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-56]
!   Move address of _temp_3651 [i ] into _temp_3652
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
!   _temp_3653 = _temp_3652 + 12
	load	[r14+-52],r1
	add	r1,12,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_3653 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2512,r13		! source line 2512
	mov	"\0\0SE",r10
!   _temp_3655 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-40]
!   Move address of _temp_3655 [i ] into _temp_3656
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
!   _temp_3654 = _temp_3656		(4 bytes)
	load	[r14+-36],r1
	store	r1,[r14+-44]
!   _temp_3657 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_3654  sizeInBytes=4
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
_Label_3647:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_3645
! END FOR
_Label_3648:
! ASSIGNMENT STATEMENT...
	mov	2516,r13		! source line 2516
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: serialTerminalFile = zeros  (sizeInBytes=28)
	load	[r14+8],r4
	add	r4,772,r4
	mov	7,r3
_Label_4544:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4544
!   serialTerminalFile = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	load	[r14+8],r2
	store	r1,[r2+772]
! ASSIGNMENT STATEMENT...
	mov	2517,r13		! source line 2517
	mov	"\0\0AS",r10
!   _temp_3659 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-24]
!   _temp_3660 = _temp_3659 + 12
	load	[r14+-24],r1
	add	r1,12,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_3660 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2522,r13		! source line 2522
	mov	"\0\0AS",r10
	mov	2522,r13		! source line 2522
	mov	"\0\0SE",r10
!   _temp_3661 = &_P_Kernel_frameManager
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
	mov	2523,r13		! source line 2523
	mov	"\0\0SE",r10
!   _temp_3662 = &_P_Kernel_diskDriver
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
	mov	2523,r13		! source line 2523
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
	.word	_Label_3663
	.word	4		! total size of parameters
	.word	952		! frame size = 952
	.word	_Label_3664
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3665
	.word	-12
	.word	4
	.word	_Label_3666
	.word	-16
	.word	4
	.word	_Label_3667
	.word	-20
	.word	4
	.word	_Label_3668
	.word	-24
	.word	4
	.word	_Label_3669
	.word	-28
	.word	4
	.word	_Label_3670
	.word	-32
	.word	4
	.word	_Label_3671
	.word	-36
	.word	4
	.word	_Label_3672
	.word	-40
	.word	4
	.word	_Label_3673
	.word	-44
	.word	4
	.word	_Label_3674
	.word	-48
	.word	4
	.word	_Label_3675
	.word	-52
	.word	4
	.word	_Label_3676
	.word	-56
	.word	4
	.word	_Label_3677
	.word	-60
	.word	4
	.word	_Label_3678
	.word	-64
	.word	4
	.word	_Label_3679
	.word	-68
	.word	4
	.word	_Label_3680
	.word	-72
	.word	4
	.word	_Label_3681
	.word	-100
	.word	28
	.word	_Label_3682
	.word	-104
	.word	4
	.word	_Label_3683
	.word	-108
	.word	4
	.word	_Label_3684
	.word	-392
	.word	284
	.word	_Label_3685
	.word	-396
	.word	4
	.word	_Label_3686
	.word	-400
	.word	4
	.word	_Label_3687
	.word	-404
	.word	4
	.word	_Label_3688
	.word	-408
	.word	4
	.word	_Label_3689
	.word	-412
	.word	4
	.word	_Label_3690
	.word	-416
	.word	4
	.word	_Label_3691
	.word	-420
	.word	4
	.word	_Label_3692
	.word	-424
	.word	4
	.word	_Label_3693
	.word	-428
	.word	4
	.word	_Label_3694
	.word	-432
	.word	4
	.word	_Label_3695
	.word	-436
	.word	4
	.word	_Label_3696
	.word	-440
	.word	4
	.word	_Label_3697
	.word	-444
	.word	4
	.word	_Label_3698
	.word	-448
	.word	4
	.word	_Label_3699
	.word	-452
	.word	4
	.word	_Label_3700
	.word	-456
	.word	4
	.word	_Label_3701
	.word	-460
	.word	4
	.word	_Label_3702
	.word	-500
	.word	40
	.word	_Label_3703
	.word	-504
	.word	4
	.word	_Label_3704
	.word	-508
	.word	4
	.word	_Label_3705
	.word	-912
	.word	404
	.word	_Label_3706
	.word	-916
	.word	4
	.word	_Label_3707
	.word	-920
	.word	4
	.word	_Label_3708
	.word	-924
	.word	4
	.word	_Label_3709
	.word	-928
	.word	4
	.word	_Label_3710
	.word	-932
	.word	4
	.word	_Label_3711
	.word	-936
	.word	4
	.word	_Label_3712
	.word	-940
	.word	4
	.word	_Label_3713
	.word	-944
	.word	4
	.word	0
_Label_3663:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_3664:
	.ascii	"Pself\0"
	.align
_Label_3665:
	.byte	'?'
	.ascii	"_temp_3662\0"
	.align
_Label_3666:
	.byte	'?'
	.ascii	"_temp_3661\0"
	.align
_Label_3667:
	.byte	'?'
	.ascii	"_temp_3660\0"
	.align
_Label_3668:
	.byte	'?'
	.ascii	"_temp_3659\0"
	.align
_Label_3669:
	.byte	'?'
	.ascii	"_temp_3658\0"
	.align
_Label_3670:
	.byte	'?'
	.ascii	"_temp_3657\0"
	.align
_Label_3671:
	.byte	'?'
	.ascii	"_temp_3656\0"
	.align
_Label_3672:
	.byte	'?'
	.ascii	"_temp_3655\0"
	.align
_Label_3673:
	.byte	'?'
	.ascii	"_temp_3654\0"
	.align
_Label_3674:
	.byte	'?'
	.ascii	"_temp_3653\0"
	.align
_Label_3675:
	.byte	'?'
	.ascii	"_temp_3652\0"
	.align
_Label_3676:
	.byte	'?'
	.ascii	"_temp_3651\0"
	.align
_Label_3677:
	.byte	'?'
	.ascii	"_temp_3650\0"
	.align
_Label_3678:
	.byte	'?'
	.ascii	"_temp_3649\0"
	.align
_Label_3679:
	.byte	'?'
	.ascii	"_temp_3644\0"
	.align
_Label_3680:
	.byte	'?'
	.ascii	"_temp_3642\0"
	.align
_Label_3681:
	.byte	'?'
	.ascii	"_temp_3641\0"
	.align
_Label_3682:
	.byte	'?'
	.ascii	"_temp_3640\0"
	.align
_Label_3683:
	.byte	'?'
	.ascii	"_temp_3639\0"
	.align
_Label_3684:
	.byte	'?'
	.ascii	"_temp_3638\0"
	.align
_Label_3685:
	.byte	'?'
	.ascii	"_temp_3637\0"
	.align
_Label_3686:
	.byte	'?'
	.ascii	"_temp_3636\0"
	.align
_Label_3687:
	.byte	'?'
	.ascii	"_temp_3635\0"
	.align
_Label_3688:
	.byte	'?'
	.ascii	"_temp_3634\0"
	.align
_Label_3689:
	.byte	'?'
	.ascii	"_temp_3633\0"
	.align
_Label_3690:
	.byte	'?'
	.ascii	"_temp_3632\0"
	.align
_Label_3691:
	.byte	'?'
	.ascii	"_temp_3631\0"
	.align
_Label_3692:
	.byte	'?'
	.ascii	"_temp_3630\0"
	.align
_Label_3693:
	.byte	'?'
	.ascii	"_temp_3629\0"
	.align
_Label_3694:
	.byte	'?'
	.ascii	"_temp_3628\0"
	.align
_Label_3695:
	.byte	'?'
	.ascii	"_temp_3627\0"
	.align
_Label_3696:
	.byte	'?'
	.ascii	"_temp_3626\0"
	.align
_Label_3697:
	.byte	'?'
	.ascii	"_temp_3625\0"
	.align
_Label_3698:
	.byte	'?'
	.ascii	"_temp_3624\0"
	.align
_Label_3699:
	.byte	'?'
	.ascii	"_temp_3623\0"
	.align
_Label_3700:
	.byte	'?'
	.ascii	"_temp_3618\0"
	.align
_Label_3701:
	.byte	'?'
	.ascii	"_temp_3616\0"
	.align
_Label_3702:
	.byte	'?'
	.ascii	"_temp_3615\0"
	.align
_Label_3703:
	.byte	'?'
	.ascii	"_temp_3614\0"
	.align
_Label_3704:
	.byte	'?'
	.ascii	"_temp_3613\0"
	.align
_Label_3705:
	.byte	'?'
	.ascii	"_temp_3612\0"
	.align
_Label_3706:
	.byte	'?'
	.ascii	"_temp_3611\0"
	.align
_Label_3707:
	.byte	'?'
	.ascii	"_temp_3610\0"
	.align
_Label_3708:
	.byte	'?'
	.ascii	"_temp_3609\0"
	.align
_Label_3709:
	.byte	'?'
	.ascii	"_temp_3608\0"
	.align
_Label_3710:
	.byte	'?'
	.ascii	"_temp_3607\0"
	.align
_Label_3711:
	.byte	'?'
	.ascii	"_temp_3606\0"
	.align
_Label_3712:
	.byte	'?'
	.ascii	"_temp_3605\0"
	.align
_Label_3713:
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
_Label_4545:
	push	r0
	sub	r1,1,r1
	bne	_Label_4545
	mov	2530,r13		! source line 2530
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2532,r13		! source line 2532
	mov	"\0\0SE",r10
!   _temp_3714 = &fileManagerLock
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
!   _temp_3715 = _StringConst_146
	set	_StringConst_146,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_3715  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	2533,r13		! source line 2533
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2534,r13		! source line 2534
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3720 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-104]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3721 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-100]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3720  (sizeInBytes=4)
	load	[r14+-104],r1
	store	r1,[r14+-116]
_Label_3716:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3721 then goto _Label_3719		
	load	[r14+-116],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3719
_Label_3717:
	mov	2534,r13		! source line 2534
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_3722 = _StringConst_147
	set	_StringConst_147,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_3722  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	2535,r13		! source line 2535
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2536,r13		! source line 2536
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3723 = _StringConst_148
	set	_StringConst_148,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_3723  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2537,r13		! source line 2537
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2538,r13		! source line 2538
	mov	"\0\0SE",r10
!   _temp_3724 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-88]
!   Move address of _temp_3724 [i ] into _temp_3725
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
_Label_3718:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_3716
! END FOR
_Label_3719:
! CALL STATEMENT...
!   _temp_3726 = _StringConst_149
	set	_StringConst_149,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_3726  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	2540,r13		! source line 2540
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2541,r13		! source line 2541
	mov	"\0\0SE",r10
!   _temp_3727 = _function_189_printFCB
	set	_function_189_printFCB,r1
	store	r1,[r14+-76]
!   _temp_3728 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_3727  sizeInBytes=4
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
	mov	2542,r13		! source line 2542
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_3729 = _StringConst_150
	set	_StringConst_150,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_3729  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	2543,r13		! source line 2543
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2544,r13		! source line 2544
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3734 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3735 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3734  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-116]
_Label_3730:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3735 then goto _Label_3733		
	load	[r14+-116],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3733
_Label_3731:
	mov	2544,r13		! source line 2544
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_3736 = _StringConst_151
	set	_StringConst_151,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_3736  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	2545,r13		! source line 2545
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2546,r13		! source line 2546
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3737 = _StringConst_152
	set	_StringConst_152,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_3737  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	2547,r13		! source line 2547
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_3739 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-44]
!   Move address of _temp_3739 [i ] into _temp_3740
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
!   _temp_3738 = _temp_3740		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_3738  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	2548,r13		! source line 2548
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_3741 = _StringConst_153
	set	_StringConst_153,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_3741  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2549,r13		! source line 2549
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2550,r13		! source line 2550
	mov	"\0\0SE",r10
!   _temp_3742 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-32]
!   Move address of _temp_3742 [i ] into _temp_3743
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
_Label_3732:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_3730
! END FOR
_Label_3733:
! CALL STATEMENT...
!   _temp_3744 = _StringConst_154
	set	_StringConst_154,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3744  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2552,r13		! source line 2552
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2553,r13		! source line 2553
	mov	"\0\0SE",r10
!   _temp_3745 = _function_188_printOpen
	set	_function_188_printOpen,r1
	store	r1,[r14+-20]
!   _temp_3746 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_3745  sizeInBytes=4
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
	mov	2554,r13		! source line 2554
	mov	"\0\0SE",r10
!   _temp_3747 = &fileManagerLock
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
	mov	2554,r13		! source line 2554
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
	.word	_Label_3748
	.word	4		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_3749
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3750
	.word	-12
	.word	4
	.word	_Label_3751
	.word	-16
	.word	4
	.word	_Label_3752
	.word	-20
	.word	4
	.word	_Label_3753
	.word	-24
	.word	4
	.word	_Label_3754
	.word	-28
	.word	4
	.word	_Label_3755
	.word	-32
	.word	4
	.word	_Label_3756
	.word	-36
	.word	4
	.word	_Label_3757
	.word	-40
	.word	4
	.word	_Label_3758
	.word	-44
	.word	4
	.word	_Label_3759
	.word	-48
	.word	4
	.word	_Label_3760
	.word	-52
	.word	4
	.word	_Label_3761
	.word	-56
	.word	4
	.word	_Label_3762
	.word	-60
	.word	4
	.word	_Label_3763
	.word	-64
	.word	4
	.word	_Label_3764
	.word	-68
	.word	4
	.word	_Label_3765
	.word	-72
	.word	4
	.word	_Label_3766
	.word	-76
	.word	4
	.word	_Label_3767
	.word	-80
	.word	4
	.word	_Label_3768
	.word	-84
	.word	4
	.word	_Label_3769
	.word	-88
	.word	4
	.word	_Label_3770
	.word	-92
	.word	4
	.word	_Label_3771
	.word	-96
	.word	4
	.word	_Label_3772
	.word	-100
	.word	4
	.word	_Label_3773
	.word	-104
	.word	4
	.word	_Label_3774
	.word	-108
	.word	4
	.word	_Label_3775
	.word	-112
	.word	4
	.word	_Label_3776
	.word	-116
	.word	4
	.word	0
_Label_3748:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_3749:
	.ascii	"Pself\0"
	.align
_Label_3750:
	.byte	'?'
	.ascii	"_temp_3747\0"
	.align
_Label_3751:
	.byte	'?'
	.ascii	"_temp_3746\0"
	.align
_Label_3752:
	.byte	'?'
	.ascii	"_temp_3745\0"
	.align
_Label_3753:
	.byte	'?'
	.ascii	"_temp_3744\0"
	.align
_Label_3754:
	.byte	'?'
	.ascii	"_temp_3743\0"
	.align
_Label_3755:
	.byte	'?'
	.ascii	"_temp_3742\0"
	.align
_Label_3756:
	.byte	'?'
	.ascii	"_temp_3741\0"
	.align
_Label_3757:
	.byte	'?'
	.ascii	"_temp_3740\0"
	.align
_Label_3758:
	.byte	'?'
	.ascii	"_temp_3739\0"
	.align
_Label_3759:
	.byte	'?'
	.ascii	"_temp_3738\0"
	.align
_Label_3760:
	.byte	'?'
	.ascii	"_temp_3737\0"
	.align
_Label_3761:
	.byte	'?'
	.ascii	"_temp_3736\0"
	.align
_Label_3762:
	.byte	'?'
	.ascii	"_temp_3735\0"
	.align
_Label_3763:
	.byte	'?'
	.ascii	"_temp_3734\0"
	.align
_Label_3764:
	.byte	'?'
	.ascii	"_temp_3729\0"
	.align
_Label_3765:
	.byte	'?'
	.ascii	"_temp_3728\0"
	.align
_Label_3766:
	.byte	'?'
	.ascii	"_temp_3727\0"
	.align
_Label_3767:
	.byte	'?'
	.ascii	"_temp_3726\0"
	.align
_Label_3768:
	.byte	'?'
	.ascii	"_temp_3725\0"
	.align
_Label_3769:
	.byte	'?'
	.ascii	"_temp_3724\0"
	.align
_Label_3770:
	.byte	'?'
	.ascii	"_temp_3723\0"
	.align
_Label_3771:
	.byte	'?'
	.ascii	"_temp_3722\0"
	.align
_Label_3772:
	.byte	'?'
	.ascii	"_temp_3721\0"
	.align
_Label_3773:
	.byte	'?'
	.ascii	"_temp_3720\0"
	.align
_Label_3774:
	.byte	'?'
	.ascii	"_temp_3715\0"
	.align
_Label_3775:
	.byte	'?'
	.ascii	"_temp_3714\0"
	.align
_Label_3776:
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
_Label_4546:
	push	r0
	sub	r1,1,r1
	bne	_Label_4546
	mov	2559,r13		! source line 2559
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2575,r13		! source line 2575
	mov	"\0\0AS",r10
	mov	2575,r13		! source line 2575
	mov	"\0\0SE",r10
!   _temp_3777 = &_P_Kernel_fileManager
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
	mov	2576,r13		! source line 2576
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _Label_3778
	load	[r14+-56],r1
	cmp	r1,r0
	be	_Label_3778
	jmp	_Label_3779
_Label_3778:
! THEN...
	mov	2577,r13		! source line 2577
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2577,r13		! source line 2577
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3779:
! SEND STATEMENT...
	mov	2581,r13		! source line 2581
	mov	"\0\0SE",r10
!   _temp_3780 = &fileManagerLock
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
	mov	2582,r13		! source line 2582
	mov	"\0\0WH",r10
_Label_3781:
	mov	2582,r13		! source line 2582
	mov	"\0\0SE",r10
!   _temp_3784 = &openFileFreeList
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
!   if result==true then goto _Label_3782 else goto _Label_3783
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_3783
	jmp	_Label_3782
_Label_3782:
	mov	2582,r13		! source line 2582
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2583,r13		! source line 2583
	mov	"\0\0SE",r10
!   _temp_3785 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   _temp_3786 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_3785  sizeInBytes=4
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
	jmp	_Label_3781
_Label_3783:
! ASSIGNMENT STATEMENT...
	mov	2585,r13		! source line 2585
	mov	"\0\0AS",r10
	mov	2585,r13		! source line 2585
	mov	"\0\0SE",r10
!   _temp_3787 = &openFileFreeList
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
	mov	2588,r13		! source line 2588
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3788 = open + 20
	load	[r14+-52],r1
	add	r1,20,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3788 = fcb  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2589,r13		! source line 2589
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3789 = open + 24
	load	[r14+-52],r1
	add	r1,24,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_3789 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2592,r13		! source line 2592
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3790 = open + 16
	load	[r14+-52],r1
	add	r1,16,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_3790 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2594,r13		! source line 2594
	mov	"\0\0SE",r10
!   _temp_3791 = &fileManagerLock
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
	mov	2595,r13		! source line 2595
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
	.word	_Label_3792
	.word	8		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_3793
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3794
	.word	12
	.word	4
	.word	_Label_3795
	.word	-12
	.word	4
	.word	_Label_3796
	.word	-16
	.word	4
	.word	_Label_3797
	.word	-20
	.word	4
	.word	_Label_3798
	.word	-24
	.word	4
	.word	_Label_3799
	.word	-28
	.word	4
	.word	_Label_3800
	.word	-32
	.word	4
	.word	_Label_3801
	.word	-36
	.word	4
	.word	_Label_3802
	.word	-40
	.word	4
	.word	_Label_3803
	.word	-44
	.word	4
	.word	_Label_3804
	.word	-48
	.word	4
	.word	_Label_3805
	.word	-52
	.word	4
	.word	_Label_3806
	.word	-56
	.word	4
	.word	0
_Label_3792:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Open\0"
	.align
_Label_3793:
	.ascii	"Pself\0"
	.align
_Label_3794:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_3795:
	.byte	'?'
	.ascii	"_temp_3791\0"
	.align
_Label_3796:
	.byte	'?'
	.ascii	"_temp_3790\0"
	.align
_Label_3797:
	.byte	'?'
	.ascii	"_temp_3789\0"
	.align
_Label_3798:
	.byte	'?'
	.ascii	"_temp_3788\0"
	.align
_Label_3799:
	.byte	'?'
	.ascii	"_temp_3787\0"
	.align
_Label_3800:
	.byte	'?'
	.ascii	"_temp_3786\0"
	.align
_Label_3801:
	.byte	'?'
	.ascii	"_temp_3785\0"
	.align
_Label_3802:
	.byte	'?'
	.ascii	"_temp_3784\0"
	.align
_Label_3803:
	.byte	'?'
	.ascii	"_temp_3780\0"
	.align
_Label_3804:
	.byte	'?'
	.ascii	"_temp_3777\0"
	.align
_Label_3805:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3806:
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
_Label_4547:
	push	r0
	sub	r1,1,r1
	bne	_Label_4547
	mov	2600,r13		! source line 2600
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2625,r13		! source line 2625
	mov	"\0\0AS",r10
!   p = directoryFrame		(4 bytes)
	load	[r14+8],r1
	load	[r1+768],r1
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2628,r13		! source line 2628
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
	mov	2629,r13		! source line 2629
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2630,r13		! source line 2630
	mov	"\0\0IF",r10
!   if i == 1937012066 then goto _Label_3808		(int)
	load	[r14+-136],r1
	set	1937012066,r2
	cmp	r1,r2
	be	_Label_3808
!	jmp	_Label_3807
_Label_3807:
! THEN...
	mov	2631,r13		! source line 2631
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3809 = _StringConst_155
	set	_StringConst_155,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_3809  sizeInBytes=4
	load	[r14+-132],r1
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
_Label_3808:
! ASSIGNMENT STATEMENT...
	mov	2635,r13		! source line 2635
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
	mov	2636,r13		! source line 2636
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2637,r13		! source line 2637
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
	mov	2638,r13		! source line 2638
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! WHILE STATEMENT...
	mov	2641,r13		! source line 2641
	mov	"\0\0WH",r10
_Label_3810:
!   if numFiles <= 0 then goto _Label_3812		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3812
!	jmp	_Label_3811
_Label_3811:
	mov	2641,r13		! source line 2641
	mov	"\0\0WB",r10
! CALL STATEMENT...
!   _temp_3813 = &start
	add	r14,-140,r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_3813  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2642,r13		! source line 2642
	mov	"\0\0CA",r10
	call	_function_190_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2643,r13		! source line 2643
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_3814 = &fileLen
	add	r14,-148,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=_temp_3814  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2644,r13		! source line 2644
	mov	"\0\0CA",r10
	call	_function_190_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2645,r13		! source line 2645
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_3815 = &fileNameLen
	add	r14,-152,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_3815  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2646,r13		! source line 2646
	mov	"\0\0CA",r10
	call	_function_190_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2647,r13		! source line 2647
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2648,r13		! source line 2648
	mov	"\0\0IF",r10
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_3819 = *filename  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if fileNameLen != _temp_3819 then goto _Label_3817		(int)
	load	[r14+-152],r1
	load	[r14+-116],r2
	cmp	r1,r2
	bne	_Label_3817
!	jmp	_Label_3818
_Label_3818:
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of filename [0 ] into _temp_3821
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
!   _temp_3820 = _temp_3821		(4 bytes)
	load	[r14+-108],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_3820  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=fileNameLen  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+8]
!   Call the function
	mov	2649,r13		! source line 2649
	mov	"\0\0CA",r10
	call	_P_System_MemoryEqual
!   if result==true then goto _Label_3816 else goto _Label_3817
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_3817
	jmp	_Label_3816
_Label_3816:
! THEN...
	mov	2650,r13		! source line 2650
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2650,r13		! source line 2650
	mov	"\0\0BR",r10
	jmp	_Label_3812
! END IF...
_Label_3817:
! ASSIGNMENT STATEMENT...
	mov	2652,r13		! source line 2652
	mov	"\0\0AS",r10
!   p = p + fileNameLen		(int)
	load	[r14+-160],r1
	load	[r14+-152],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2653,r13		! source line 2653
	mov	"\0\0AS",r10
!   numFiles = numFiles - 1		(int)
	load	[r14+-144],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
! END WHILE...
	jmp	_Label_3810
_Label_3812:
! IF STATEMENT...
	mov	2657,r13		! source line 2657
	mov	"\0\0IF",r10
!   if numFiles > 0 then goto _Label_3823		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3823
!	jmp	_Label_3822
_Label_3822:
! THEN...
	mov	2658,r13		! source line 2658
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2658,r13		! source line 2658
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3823:
! SEND STATEMENT...
	mov	2661,r13		! source line 2661
	mov	"\0\0SE",r10
!   _temp_3824 = &fileManagerLock
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
	mov	2663,r13		! source line 2663
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3829 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-100]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3830 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-96]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3829  (sizeInBytes=4)
	load	[r14+-100],r1
	store	r1,[r14+-136]
_Label_3825:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3830 then goto _Label_3828		
	load	[r14+-136],r1
	load	[r14+-96],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3828
_Label_3826:
	mov	2663,r13		! source line 2663
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2664,r13		! source line 2664
	mov	"\0\0AS",r10
!   _temp_3831 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-92]
!   Move address of _temp_3831 [i ] into _temp_3832
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
!   fcb = _temp_3832		(4 bytes)
	load	[r14+-88],r1
	store	r1,[r14+-156]
! IF STATEMENT...
	mov	2665,r13		! source line 2665
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3836 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-80]
!   Data Move: _temp_3835 = *_temp_3836  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if _temp_3835 != start then goto _Label_3834		(int)
	load	[r14+-84],r1
	load	[r14+-140],r2
	cmp	r1,r2
	bne	_Label_3834
!	jmp	_Label_3833
_Label_3833:
! THEN...
	mov	2666,r13		! source line 2666
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2666,r13		! source line 2666
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3837 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-76]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3840 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-64]
!   Data Move: _temp_3839 = *_temp_3840  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   _temp_3838 = _temp_3839 + 1		(int)
	load	[r14+-68],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
!   Data Move: *_temp_3837 = _temp_3838  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r14+-76],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2667,r13		! source line 2667
	mov	"\0\0SE",r10
!   _temp_3841 = &fileManagerLock
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
	mov	2668,r13		! source line 2668
	mov	"\0\0RE",r10
!   ReturnResult: fcb  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3834:
!   Increment the FOR-LOOP index variable and jump back
_Label_3827:
!   i = i + 1
	load	[r14+-136],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
	jmp	_Label_3825
! END FOR
_Label_3828:
! WHILE STATEMENT...
	mov	2673,r13		! source line 2673
	mov	"\0\0WH",r10
_Label_3842:
	mov	2673,r13		! source line 2673
	mov	"\0\0SE",r10
!   _temp_3845 = &fcbFreeList
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
!   if result==true then goto _Label_3843 else goto _Label_3844
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_3844
	jmp	_Label_3843
_Label_3843:
	mov	2673,r13		! source line 2673
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2674,r13		! source line 2674
	mov	"\0\0SE",r10
!   _temp_3846 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   _temp_3847 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_3846  sizeInBytes=4
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
	jmp	_Label_3842
_Label_3844:
! ASSIGNMENT STATEMENT...
	mov	2676,r13		! source line 2676
	mov	"\0\0AS",r10
	mov	2676,r13		! source line 2676
	mov	"\0\0SE",r10
!   _temp_3848 = &fcbFreeList
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
	mov	2679,r13		! source line 2679
	mov	"\0\0SE",r10
!   _temp_3849 = &fileManagerLock
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
	mov	2682,r13		! source line 2682
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3850 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_3850 = start  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2683,r13		! source line 2683
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3851 = fcb + 24
	load	[r14+-156],r1
	add	r1,24,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_3851 = fileLen  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2684,r13		! source line 2684
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3852 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_3852 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-28],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2685,r13		! source line 2685
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3857 = fcb + 32
	load	[r14+-156],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   Data Move: _temp_3856 = *_temp_3857  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_3856 < 0 then goto _Label_3855		(int)
	load	[r14+-24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_3855
	jmp	_Label_3853
_Label_3855:
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3858 = fcb + 36
	load	[r14+-156],r1
	add	r1,36,r1
	store	r1,[r14+-16]
!   if boolIsZero (_temp_3858 ) then goto _Label_3854		(int)
	load	[r14+-16],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_3854
!	jmp	_Label_3853
_Label_3853:
! THEN...
	mov	2686,r13		! source line 2686
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3859 = _StringConst_156
	set	_StringConst_156,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3859  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2686,r13		! source line 2686
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3854:
! RETURN STATEMENT...
	mov	2688,r13		! source line 2688
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
	.word	_Label_3860
	.word	8		! total size of parameters
	.word	164		! frame size = 164
	.word	_Label_3861
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3862
	.word	12
	.word	4
	.word	_Label_3863
	.word	-12
	.word	4
	.word	_Label_3864
	.word	-16
	.word	4
	.word	_Label_3865
	.word	-20
	.word	4
	.word	_Label_3866
	.word	-24
	.word	4
	.word	_Label_3867
	.word	-28
	.word	4
	.word	_Label_3868
	.word	-32
	.word	4
	.word	_Label_3869
	.word	-36
	.word	4
	.word	_Label_3870
	.word	-40
	.word	4
	.word	_Label_3871
	.word	-44
	.word	4
	.word	_Label_3872
	.word	-48
	.word	4
	.word	_Label_3873
	.word	-52
	.word	4
	.word	_Label_3874
	.word	-56
	.word	4
	.word	_Label_3875
	.word	-60
	.word	4
	.word	_Label_3876
	.word	-64
	.word	4
	.word	_Label_3877
	.word	-68
	.word	4
	.word	_Label_3878
	.word	-72
	.word	4
	.word	_Label_3879
	.word	-76
	.word	4
	.word	_Label_3880
	.word	-80
	.word	4
	.word	_Label_3881
	.word	-84
	.word	4
	.word	_Label_3882
	.word	-88
	.word	4
	.word	_Label_3883
	.word	-92
	.word	4
	.word	_Label_3884
	.word	-96
	.word	4
	.word	_Label_3885
	.word	-100
	.word	4
	.word	_Label_3886
	.word	-104
	.word	4
	.word	_Label_3887
	.word	-108
	.word	4
	.word	_Label_3888
	.word	-112
	.word	4
	.word	_Label_3889
	.word	-116
	.word	4
	.word	_Label_3890
	.word	-120
	.word	4
	.word	_Label_3891
	.word	-124
	.word	4
	.word	_Label_3892
	.word	-128
	.word	4
	.word	_Label_3893
	.word	-132
	.word	4
	.word	_Label_3894
	.word	-136
	.word	4
	.word	_Label_3895
	.word	-140
	.word	4
	.word	_Label_3896
	.word	-144
	.word	4
	.word	_Label_3897
	.word	-148
	.word	4
	.word	_Label_3898
	.word	-152
	.word	4
	.word	_Label_3899
	.word	-156
	.word	4
	.word	_Label_3900
	.word	-160
	.word	4
	.word	0
_Label_3860:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"FindFCB\0"
	.align
_Label_3861:
	.ascii	"Pself\0"
	.align
_Label_3862:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_3863:
	.byte	'?'
	.ascii	"_temp_3859\0"
	.align
_Label_3864:
	.byte	'?'
	.ascii	"_temp_3858\0"
	.align
_Label_3865:
	.byte	'?'
	.ascii	"_temp_3857\0"
	.align
_Label_3866:
	.byte	'?'
	.ascii	"_temp_3856\0"
	.align
_Label_3867:
	.byte	'?'
	.ascii	"_temp_3852\0"
	.align
_Label_3868:
	.byte	'?'
	.ascii	"_temp_3851\0"
	.align
_Label_3869:
	.byte	'?'
	.ascii	"_temp_3850\0"
	.align
_Label_3870:
	.byte	'?'
	.ascii	"_temp_3849\0"
	.align
_Label_3871:
	.byte	'?'
	.ascii	"_temp_3848\0"
	.align
_Label_3872:
	.byte	'?'
	.ascii	"_temp_3847\0"
	.align
_Label_3873:
	.byte	'?'
	.ascii	"_temp_3846\0"
	.align
_Label_3874:
	.byte	'?'
	.ascii	"_temp_3845\0"
	.align
_Label_3875:
	.byte	'?'
	.ascii	"_temp_3841\0"
	.align
_Label_3876:
	.byte	'?'
	.ascii	"_temp_3840\0"
	.align
_Label_3877:
	.byte	'?'
	.ascii	"_temp_3839\0"
	.align
_Label_3878:
	.byte	'?'
	.ascii	"_temp_3838\0"
	.align
_Label_3879:
	.byte	'?'
	.ascii	"_temp_3837\0"
	.align
_Label_3880:
	.byte	'?'
	.ascii	"_temp_3836\0"
	.align
_Label_3881:
	.byte	'?'
	.ascii	"_temp_3835\0"
	.align
_Label_3882:
	.byte	'?'
	.ascii	"_temp_3832\0"
	.align
_Label_3883:
	.byte	'?'
	.ascii	"_temp_3831\0"
	.align
_Label_3884:
	.byte	'?'
	.ascii	"_temp_3830\0"
	.align
_Label_3885:
	.byte	'?'
	.ascii	"_temp_3829\0"
	.align
_Label_3886:
	.byte	'?'
	.ascii	"_temp_3824\0"
	.align
_Label_3887:
	.byte	'?'
	.ascii	"_temp_3821\0"
	.align
_Label_3888:
	.byte	'?'
	.ascii	"_temp_3820\0"
	.align
_Label_3889:
	.byte	'?'
	.ascii	"_temp_3819\0"
	.align
_Label_3890:
	.byte	'?'
	.ascii	"_temp_3815\0"
	.align
_Label_3891:
	.byte	'?'
	.ascii	"_temp_3814\0"
	.align
_Label_3892:
	.byte	'?'
	.ascii	"_temp_3813\0"
	.align
_Label_3893:
	.byte	'?'
	.ascii	"_temp_3809\0"
	.align
_Label_3894:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_3895:
	.byte	'I'
	.ascii	"start\0"
	.align
_Label_3896:
	.byte	'I'
	.ascii	"numFiles\0"
	.align
_Label_3897:
	.byte	'I'
	.ascii	"fileLen\0"
	.align
_Label_3898:
	.byte	'I'
	.ascii	"fileNameLen\0"
	.align
_Label_3899:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_3900:
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
_Label_4548:
	push	r0
	sub	r1,1,r1
	bne	_Label_4548
	mov	2701,r13		! source line 2701
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2703,r13		! source line 2703
	mov	"\0\0IF",r10
!   _temp_3903 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-100]
!   if open != _temp_3903 then goto _Label_3902		(int)
	load	[r14+12],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bne	_Label_3902
!	jmp	_Label_3901
_Label_3901:
! THEN...
	mov	2704,r13		! source line 2704
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2704,r13		! source line 2704
	mov	"\0\0RE",r10
	add	r15,108,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3902:
! SEND STATEMENT...
	mov	2706,r13		! source line 2706
	mov	"\0\0SE",r10
!   _temp_3904 = &fileManagerLock
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
	mov	2707,r13		! source line 2707
	mov	"\0\0SE",r10
!   _temp_3905 = &_P_Kernel_fileManager
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
	mov	2708,r13		! source line 2708
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3906 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: fcb = *_temp_3906  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-104]
! ASSIGNMENT STATEMENT...
	mov	2709,r13		! source line 2709
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3907 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-84]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3910 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-72]
!   Data Move: _temp_3909 = *_temp_3910  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   _temp_3908 = _temp_3909 - 1		(int)
	load	[r14+-76],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
!   Data Move: *_temp_3907 = _temp_3908  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r14+-84],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2710,r13		! source line 2710
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3914 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-64]
!   Data Move: _temp_3913 = *_temp_3914  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if _temp_3913 > 0 then goto _Label_3912		(int)
	load	[r14+-68],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3912
!	jmp	_Label_3911
_Label_3911:
! THEN...
	mov	2711,r13		! source line 2711
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2711,r13		! source line 2711
	mov	"\0\0SE",r10
!   _temp_3915 = &openFileFreeList
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
	mov	2712,r13		! source line 2712
	mov	"\0\0SE",r10
!   _temp_3916 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   _temp_3917 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_3916  sizeInBytes=4
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
	mov	2713,r13		! source line 2713
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3918 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3921 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-36]
!   Data Move: _temp_3920 = *_temp_3921  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   _temp_3919 = _temp_3920 - 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
!   Data Move: *_temp_3918 = _temp_3919  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+-48],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2714,r13		! source line 2714
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3925 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: _temp_3924 = *_temp_3925  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_3924 > 0 then goto _Label_3923		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3923
!	jmp	_Label_3922
_Label_3922:
! THEN...
	mov	2715,r13		! source line 2715
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2715,r13		! source line 2715
	mov	"\0\0SE",r10
!   _temp_3926 = &fcbFreeList
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
	mov	2716,r13		! source line 2716
	mov	"\0\0SE",r10
!   _temp_3927 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_3928 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_3927  sizeInBytes=4
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
_Label_3923:
! END IF...
_Label_3912:
! SEND STATEMENT...
	mov	2719,r13		! source line 2719
	mov	"\0\0SE",r10
!   _temp_3929 = &fileManagerLock
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
	mov	2719,r13		! source line 2719
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
	.word	_Label_3930
	.word	8		! total size of parameters
	.word	104		! frame size = 104
	.word	_Label_3931
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3932
	.word	12
	.word	4
	.word	_Label_3933
	.word	-12
	.word	4
	.word	_Label_3934
	.word	-16
	.word	4
	.word	_Label_3935
	.word	-20
	.word	4
	.word	_Label_3936
	.word	-24
	.word	4
	.word	_Label_3937
	.word	-28
	.word	4
	.word	_Label_3938
	.word	-32
	.word	4
	.word	_Label_3939
	.word	-36
	.word	4
	.word	_Label_3940
	.word	-40
	.word	4
	.word	_Label_3941
	.word	-44
	.word	4
	.word	_Label_3942
	.word	-48
	.word	4
	.word	_Label_3943
	.word	-52
	.word	4
	.word	_Label_3944
	.word	-56
	.word	4
	.word	_Label_3945
	.word	-60
	.word	4
	.word	_Label_3946
	.word	-64
	.word	4
	.word	_Label_3947
	.word	-68
	.word	4
	.word	_Label_3948
	.word	-72
	.word	4
	.word	_Label_3949
	.word	-76
	.word	4
	.word	_Label_3950
	.word	-80
	.word	4
	.word	_Label_3951
	.word	-84
	.word	4
	.word	_Label_3952
	.word	-88
	.word	4
	.word	_Label_3953
	.word	-92
	.word	4
	.word	_Label_3954
	.word	-96
	.word	4
	.word	_Label_3955
	.word	-100
	.word	4
	.word	_Label_3956
	.word	-104
	.word	4
	.word	0
_Label_3930:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Close\0"
	.align
_Label_3931:
	.ascii	"Pself\0"
	.align
_Label_3932:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3933:
	.byte	'?'
	.ascii	"_temp_3929\0"
	.align
_Label_3934:
	.byte	'?'
	.ascii	"_temp_3928\0"
	.align
_Label_3935:
	.byte	'?'
	.ascii	"_temp_3927\0"
	.align
_Label_3936:
	.byte	'?'
	.ascii	"_temp_3926\0"
	.align
_Label_3937:
	.byte	'?'
	.ascii	"_temp_3925\0"
	.align
_Label_3938:
	.byte	'?'
	.ascii	"_temp_3924\0"
	.align
_Label_3939:
	.byte	'?'
	.ascii	"_temp_3921\0"
	.align
_Label_3940:
	.byte	'?'
	.ascii	"_temp_3920\0"
	.align
_Label_3941:
	.byte	'?'
	.ascii	"_temp_3919\0"
	.align
_Label_3942:
	.byte	'?'
	.ascii	"_temp_3918\0"
	.align
_Label_3943:
	.byte	'?'
	.ascii	"_temp_3917\0"
	.align
_Label_3944:
	.byte	'?'
	.ascii	"_temp_3916\0"
	.align
_Label_3945:
	.byte	'?'
	.ascii	"_temp_3915\0"
	.align
_Label_3946:
	.byte	'?'
	.ascii	"_temp_3914\0"
	.align
_Label_3947:
	.byte	'?'
	.ascii	"_temp_3913\0"
	.align
_Label_3948:
	.byte	'?'
	.ascii	"_temp_3910\0"
	.align
_Label_3949:
	.byte	'?'
	.ascii	"_temp_3909\0"
	.align
_Label_3950:
	.byte	'?'
	.ascii	"_temp_3908\0"
	.align
_Label_3951:
	.byte	'?'
	.ascii	"_temp_3907\0"
	.align
_Label_3952:
	.byte	'?'
	.ascii	"_temp_3906\0"
	.align
_Label_3953:
	.byte	'?'
	.ascii	"_temp_3905\0"
	.align
_Label_3954:
	.byte	'?'
	.ascii	"_temp_3904\0"
	.align
_Label_3955:
	.byte	'?'
	.ascii	"_temp_3903\0"
	.align
_Label_3956:
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
_Label_4549:
	push	r0
	sub	r1,1,r1
	bne	_Label_4549
	mov	2724,r13		! source line 2724
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2729,r13		! source line 2729
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _Label_3957
	load	[r14+12],r1
	cmp	r1,r0
	be	_Label_3957
	jmp	_Label_3958
_Label_3957:
! THEN...
	mov	2730,r13		! source line 2730
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3959 = _StringConst_157
	set	_StringConst_157,r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_3959  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	2730,r13		! source line 2730
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_3958:
! IF STATEMENT...
	mov	2732,r13		! source line 2732
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3963 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-104]
!   Data Move: _temp_3962 = *_temp_3963  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_3962) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3964 = _temp_3962 + 36
	load	[r14+-108],r1
	add	r1,36,r1
	store	r1,[r14+-100]
!   if boolIsZero (_temp_3964 ) then goto _Label_3961		(int)
	load	[r14+-100],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_3961
!	jmp	_Label_3960
_Label_3960:
! THEN...
	mov	2733,r13		! source line 2733
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	2733,r13		! source line 2733
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3969 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_3968 = *_temp_3969  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_3968) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3970 = _temp_3968 + 32
	load	[r14+-92],r1
	add	r1,32,r1
	store	r1,[r14+-84]
!   Data Move: _temp_3967 = *_temp_3970  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_3967 >= 0 then goto _Label_3966		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3966
!	jmp	_Label_3965
_Label_3965:
! THEN...
	mov	2734,r13		! source line 2734
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3971 = _StringConst_158
	set	_StringConst_158,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_3971  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2734,r13		! source line 2734
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3966:
! ASSIGNMENT STATEMENT...
	mov	2736,r13		! source line 2736
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3973 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-72]
!   Data Move: _temp_3972 = *_temp_3973  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_3972) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3974 = _temp_3972 + 36
	load	[r14+-76],r1
	add	r1,36,r1
	store	r1,[r14+-68]
!   Data Move: *_temp_3974 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-68],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	2737,r13		! source line 2737
	mov	"\0\0SE",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3978 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_3977 = *_temp_3978  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_3977) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3979 = _temp_3977 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   Data Move: _temp_3976 = *_temp_3979  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3982 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: _temp_3981 = *_temp_3982  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_3981) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3983 = _temp_3981 + 20
	load	[r14+-40],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: _temp_3980 = *_temp_3983  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_3975 = _temp_3976 + _temp_3980		(int)
	load	[r14+-60],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3986 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   Data Move: _temp_3985 = *_temp_3986  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_3985) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3987 = _temp_3985 + 28
	load	[r14+-24],r1
	add	r1,28,r1
	store	r1,[r14+-16]
!   Data Move: _temp_3984 = *_temp_3987  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   _temp_3988 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_3975  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_3984  sizeInBytes=4
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
_Label_3961:
! RETURN STATEMENT...
	mov	2732,r13		! source line 2732
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
	.word	_Label_3989
	.word	8		! total size of parameters
	.word	120		! frame size = 120
	.word	_Label_3990
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3991
	.word	12
	.word	4
	.word	_Label_3992
	.word	-12
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
	.word	-44
	.word	4
	.word	_Label_4001
	.word	-48
	.word	4
	.word	_Label_4002
	.word	-52
	.word	4
	.word	_Label_4003
	.word	-56
	.word	4
	.word	_Label_4004
	.word	-60
	.word	4
	.word	_Label_4005
	.word	-64
	.word	4
	.word	_Label_4006
	.word	-68
	.word	4
	.word	_Label_4007
	.word	-72
	.word	4
	.word	_Label_4008
	.word	-76
	.word	4
	.word	_Label_4009
	.word	-80
	.word	4
	.word	_Label_4010
	.word	-84
	.word	4
	.word	_Label_4011
	.word	-88
	.word	4
	.word	_Label_4012
	.word	-92
	.word	4
	.word	_Label_4013
	.word	-96
	.word	4
	.word	_Label_4014
	.word	-100
	.word	4
	.word	_Label_4015
	.word	-104
	.word	4
	.word	_Label_4016
	.word	-108
	.word	4
	.word	_Label_4017
	.word	-112
	.word	4
	.word	0
_Label_3989:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Flush\0"
	.align
_Label_3990:
	.ascii	"Pself\0"
	.align
_Label_3991:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3992:
	.byte	'?'
	.ascii	"_temp_3988\0"
	.align
_Label_3993:
	.byte	'?'
	.ascii	"_temp_3987\0"
	.align
_Label_3994:
	.byte	'?'
	.ascii	"_temp_3986\0"
	.align
_Label_3995:
	.byte	'?'
	.ascii	"_temp_3985\0"
	.align
_Label_3996:
	.byte	'?'
	.ascii	"_temp_3984\0"
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
	.byte	'?'
	.ascii	"_temp_3980\0"
	.align
_Label_4001:
	.byte	'?'
	.ascii	"_temp_3979\0"
	.align
_Label_4002:
	.byte	'?'
	.ascii	"_temp_3978\0"
	.align
_Label_4003:
	.byte	'?'
	.ascii	"_temp_3977\0"
	.align
_Label_4004:
	.byte	'?'
	.ascii	"_temp_3976\0"
	.align
_Label_4005:
	.byte	'?'
	.ascii	"_temp_3975\0"
	.align
_Label_4006:
	.byte	'?'
	.ascii	"_temp_3974\0"
	.align
_Label_4007:
	.byte	'?'
	.ascii	"_temp_3973\0"
	.align
_Label_4008:
	.byte	'?'
	.ascii	"_temp_3972\0"
	.align
_Label_4009:
	.byte	'?'
	.ascii	"_temp_3971\0"
	.align
_Label_4010:
	.byte	'?'
	.ascii	"_temp_3970\0"
	.align
_Label_4011:
	.byte	'?'
	.ascii	"_temp_3969\0"
	.align
_Label_4012:
	.byte	'?'
	.ascii	"_temp_3968\0"
	.align
_Label_4013:
	.byte	'?'
	.ascii	"_temp_3967\0"
	.align
_Label_4014:
	.byte	'?'
	.ascii	"_temp_3964\0"
	.align
_Label_4015:
	.byte	'?'
	.ascii	"_temp_3963\0"
	.align
_Label_4016:
	.byte	'?'
	.ascii	"_temp_3962\0"
	.align
_Label_4017:
	.byte	'?'
	.ascii	"_temp_3959\0"
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
_Label_4550:
	push	r0
	sub	r1,1,r1
	bne	_Label_4550
	mov	2746,r13		! source line 2746
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2761,r13		! source line 2761
	mov	"\0\0SE",r10
!   _temp_4018 = &fileManagerLock
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
	mov	2762,r13		! source line 2762
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_4024		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_4024
!   _temp_4023 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_4025
_Label_4024:
!   _temp_4023 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_4025:
!   if _temp_4023 then goto _Label_4022 else goto _Label_4019
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_4019
	jmp	_Label_4022
_Label_4022:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4028 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-100]
!   Data Move: _temp_4027 = *_temp_4028  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_4027 == 0 then goto _Label_4029		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_4029
!   _temp_4026 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_4030
_Label_4029:
!   _temp_4026 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_4030:
!   if _temp_4026 then goto _Label_4021 else goto _Label_4019
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_4019
	jmp	_Label_4021
_Label_4021:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4033 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_4032 = *_temp_4033  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_4032) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4034 = _temp_4032 + 20
	load	[r14+-92],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: _temp_4031 = *_temp_4034  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_4031 >= 0 then goto _Label_4020		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_4020
!	jmp	_Label_4019
_Label_4019:
! THEN...
	mov	2763,r13		! source line 2763
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4035 = _StringConst_159
	set	_StringConst_159,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_4035  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2763,r13		! source line 2763
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_4020:
! ASSIGNMENT STATEMENT...
	mov	2765,r13		! source line 2765
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4036 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-76]
!   Data Move: fcb = *_temp_4036  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-128]
! WHILE STATEMENT...
	mov	2766,r13		! source line 2766
	mov	"\0\0WH",r10
_Label_4037:
!   if numBytes <= 0 then goto _Label_4039		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_4039
!	jmp	_Label_4038
_Label_4038:
	mov	2766,r13		! source line 2766
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2775,r13		! source line 2775
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
	mov	2776,r13		! source line 2776
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
	mov	2780,r13		! source line 2780
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4043 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-68]
!   Data Move: _temp_4042 = *_temp_4043  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if _temp_4042 == sector then goto _Label_4041		(int)
	load	[r14+-72],r1
	load	[r14+-112],r2
	cmp	r1,r2
	be	_Label_4041
!	jmp	_Label_4040
_Label_4040:
! THEN...
	mov	2781,r13		! source line 2781
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2781,r13		! source line 2781
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_4044) then goto _runtimeErrorNullPointer
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
	mov	2783,r13		! source line 2783
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4047 = fcb + 20
	load	[r14+-128],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_4046 = *_temp_4047  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   _temp_4045 = sector + _temp_4046		(int)
	load	[r14+-112],r1
	load	[r14+-56],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4049 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-44]
!   Data Move: _temp_4048 = *_temp_4049  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_4050 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_4045  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_4048  sizeInBytes=4
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
	mov	2786,r13		! source line 2786
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4051 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_4051 = sector  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2787,r13		! source line 2787
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4052 = fcb + 36
	load	[r14+-128],r1
	add	r1,36,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_4052 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-32],r2
	storeb	r1,[r2]
! END IF...
_Label_4041:
! ASSIGNMENT STATEMENT...
	mov	2789,r13		! source line 2789
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4054 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-24]
!   Data Move: _temp_4053 = *_temp_4054  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   posInBuffer = _temp_4053 + offset		(int)
	load	[r14+-28],r1
	load	[r14+-116],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
! ASSIGNMENT STATEMENT...
	mov	2790,r13		! source line 2790
	mov	"\0\0AS",r10
!   _temp_4055 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-116],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_4055  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Call the function
	mov	2790,r13		! source line 2790
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
	mov	2794,r13		! source line 2794
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2795,r13		! source line 2795
	mov	"\0\0AS",r10
!   targetAddr = targetAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2796,r13		! source line 2796
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2797,r13		! source line 2797
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_4037
_Label_4039:
! SEND STATEMENT...
	mov	2804,r13		! source line 2804
	mov	"\0\0SE",r10
!   _temp_4056 = &fileManagerLock
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
	mov	2805,r13		! source line 2805
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
	.word	_Label_4057
	.word	20		! total size of parameters
	.word	136		! frame size = 136
	.word	_Label_4058
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_4059
	.word	12
	.word	4
	.word	_Label_4060
	.word	16
	.word	4
	.word	_Label_4061
	.word	20
	.word	4
	.word	_Label_4062
	.word	24
	.word	4
	.word	_Label_4063
	.word	-16
	.word	4
	.word	_Label_4064
	.word	-20
	.word	4
	.word	_Label_4065
	.word	-24
	.word	4
	.word	_Label_4066
	.word	-28
	.word	4
	.word	_Label_4067
	.word	-32
	.word	4
	.word	_Label_4068
	.word	-36
	.word	4
	.word	_Label_4069
	.word	-40
	.word	4
	.word	_Label_4070
	.word	-44
	.word	4
	.word	_Label_4071
	.word	-48
	.word	4
	.word	_Label_4072
	.word	-52
	.word	4
	.word	_Label_4073
	.word	-56
	.word	4
	.word	_Label_4074
	.word	-60
	.word	4
	.word	_Label_4075
	.word	-64
	.word	4
	.word	_Label_4076
	.word	-68
	.word	4
	.word	_Label_4077
	.word	-72
	.word	4
	.word	_Label_4078
	.word	-76
	.word	4
	.word	_Label_4079
	.word	-80
	.word	4
	.word	_Label_4080
	.word	-84
	.word	4
	.word	_Label_4081
	.word	-88
	.word	4
	.word	_Label_4082
	.word	-92
	.word	4
	.word	_Label_4083
	.word	-96
	.word	4
	.word	_Label_4084
	.word	-100
	.word	4
	.word	_Label_4085
	.word	-104
	.word	4
	.word	_Label_4086
	.word	-9
	.word	1
	.word	_Label_4087
	.word	-10
	.word	1
	.word	_Label_4088
	.word	-108
	.word	4
	.word	_Label_4089
	.word	-112
	.word	4
	.word	_Label_4090
	.word	-116
	.word	4
	.word	_Label_4091
	.word	-120
	.word	4
	.word	_Label_4092
	.word	-124
	.word	4
	.word	_Label_4093
	.word	-128
	.word	4
	.word	0
_Label_4057:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchRead\0"
	.align
_Label_4058:
	.ascii	"Pself\0"
	.align
_Label_4059:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_4060:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_4061:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_4062:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_4063:
	.byte	'?'
	.ascii	"_temp_4056\0"
	.align
_Label_4064:
	.byte	'?'
	.ascii	"_temp_4055\0"
	.align
_Label_4065:
	.byte	'?'
	.ascii	"_temp_4054\0"
	.align
_Label_4066:
	.byte	'?'
	.ascii	"_temp_4053\0"
	.align
_Label_4067:
	.byte	'?'
	.ascii	"_temp_4052\0"
	.align
_Label_4068:
	.byte	'?'
	.ascii	"_temp_4051\0"
	.align
_Label_4069:
	.byte	'?'
	.ascii	"_temp_4050\0"
	.align
_Label_4070:
	.byte	'?'
	.ascii	"_temp_4049\0"
	.align
_Label_4071:
	.byte	'?'
	.ascii	"_temp_4048\0"
	.align
_Label_4072:
	.byte	'?'
	.ascii	"_temp_4047\0"
	.align
_Label_4073:
	.byte	'?'
	.ascii	"_temp_4046\0"
	.align
_Label_4074:
	.byte	'?'
	.ascii	"_temp_4045\0"
	.align
_Label_4075:
	.byte	'?'
	.ascii	"_temp_4044\0"
	.align
_Label_4076:
	.byte	'?'
	.ascii	"_temp_4043\0"
	.align
_Label_4077:
	.byte	'?'
	.ascii	"_temp_4042\0"
	.align
_Label_4078:
	.byte	'?'
	.ascii	"_temp_4036\0"
	.align
_Label_4079:
	.byte	'?'
	.ascii	"_temp_4035\0"
	.align
_Label_4080:
	.byte	'?'
	.ascii	"_temp_4034\0"
	.align
_Label_4081:
	.byte	'?'
	.ascii	"_temp_4033\0"
	.align
_Label_4082:
	.byte	'?'
	.ascii	"_temp_4032\0"
	.align
_Label_4083:
	.byte	'?'
	.ascii	"_temp_4031\0"
	.align
_Label_4084:
	.byte	'?'
	.ascii	"_temp_4028\0"
	.align
_Label_4085:
	.byte	'?'
	.ascii	"_temp_4027\0"
	.align
_Label_4086:
	.byte	'C'
	.ascii	"_temp_4026\0"
	.align
_Label_4087:
	.byte	'C'
	.ascii	"_temp_4023\0"
	.align
_Label_4088:
	.byte	'?'
	.ascii	"_temp_4018\0"
	.align
_Label_4089:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_4090:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_4091:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_4092:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_4093:
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
_Label_4551:
	push	r0
	sub	r1,1,r1
	bne	_Label_4551
	mov	2810,r13		! source line 2810
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2826,r13		! source line 2826
	mov	"\0\0SE",r10
!   _temp_4094 = &fileManagerLock
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
	mov	2827,r13		! source line 2827
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_4100		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_4100
!   _temp_4099 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_4101
_Label_4100:
!   _temp_4099 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_4101:
!   if _temp_4099 then goto _Label_4098 else goto _Label_4095
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_4095
	jmp	_Label_4098
_Label_4098:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4104 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-108]
!   Data Move: _temp_4103 = *_temp_4104  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if _temp_4103 == 0 then goto _Label_4105		(int)
	load	[r14+-112],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_4105
!   _temp_4102 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_4106
_Label_4105:
!   _temp_4102 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_4106:
!   if _temp_4102 then goto _Label_4097 else goto _Label_4095
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_4095
	jmp	_Label_4097
_Label_4097:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4109 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-96]
!   Data Move: _temp_4108 = *_temp_4109  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_4108) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4110 = _temp_4108 + 20
	load	[r14+-100],r1
	add	r1,20,r1
	store	r1,[r14+-92]
!   Data Move: _temp_4107 = *_temp_4110  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_4107 >= 0 then goto _Label_4096		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_4096
!	jmp	_Label_4095
_Label_4095:
! THEN...
	mov	2828,r13		! source line 2828
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4111 = _StringConst_160
	set	_StringConst_160,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_4111  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2828,r13		! source line 2828
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_4096:
! ASSIGNMENT STATEMENT...
	mov	2830,r13		! source line 2830
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4112 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: fcb = *_temp_4112  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-136]
! WHILE STATEMENT...
	mov	2831,r13		! source line 2831
	mov	"\0\0WH",r10
_Label_4113:
!   if numBytes <= 0 then goto _Label_4115		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_4115
!	jmp	_Label_4114
_Label_4114:
	mov	2831,r13		! source line 2831
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2840,r13		! source line 2840
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
	mov	2841,r13		! source line 2841
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
	mov	2845,r13		! source line 2845
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4119 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-76]
!   Data Move: _temp_4118 = *_temp_4119  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_4118 == sector then goto _Label_4117		(int)
	load	[r14+-80],r1
	load	[r14+-120],r2
	cmp	r1,r2
	be	_Label_4117
!	jmp	_Label_4116
_Label_4116:
! THEN...
	mov	2847,r13		! source line 2847
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2847,r13		! source line 2847
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_4120) then goto _runtimeErrorNullPointer
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
_Label_4117:
! ASSIGNMENT STATEMENT...
	mov	2849,r13		! source line 2849
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4122 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-64]
!   Data Move: _temp_4121 = *_temp_4122  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   posInBuffer = _temp_4121 + offset		(int)
	load	[r14+-68],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
! ASSIGNMENT STATEMENT...
	mov	2850,r13		! source line 2850
	mov	"\0\0AS",r10
!   _temp_4123 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_4123  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Call the function
	mov	2850,r13		! source line 2850
	mov	"\0\0CA",r10
	call	_P_System_Min
!   Retrieve Result: targetName=bytesToMove  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-132]
! IF STATEMENT...
	mov	2851,r13		! source line 2851
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4127 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-52]
!   Data Move: _temp_4126 = *_temp_4127  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if _temp_4126 != sector then goto _Label_4125		(int)
	load	[r14+-56],r1
	load	[r14+-120],r2
	cmp	r1,r2
	bne	_Label_4125
!	jmp	_Label_4124
_Label_4124:
	jmp	_Label_4128
_Label_4125:
! ELSE...
	mov	2853,r13		! source line 2853
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	2853,r13		! source line 2853
	mov	"\0\0IF",r10
!   if intIsZero (offset) then goto _Label_4131
	load	[r14+-124],r1
	cmp	r1,r0
	be	_Label_4131
	jmp	_Label_4130
_Label_4131:
!   if bytesToMove != 8192 then goto _Label_4130		(int)
	load	[r14+-132],r1
	mov	8192,r2
	cmp	r1,r2
	bne	_Label_4130
!	jmp	_Label_4129
_Label_4129:
	jmp	_Label_4132
_Label_4130:
! ELSE...
	mov	2857,r13		! source line 2857
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	2857,r13		! source line 2857
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4135 = fcb + 20
	load	[r14+-136],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   Data Move: _temp_4134 = *_temp_4135  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_4133 = sector + _temp_4134		(int)
	load	[r14+-120],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4137 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-32]
!   Data Move: _temp_4136 = *_temp_4137  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   _temp_4138 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_4133  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_4136  sizeInBytes=4
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
_Label_4132:
! END IF...
_Label_4128:
! ASSIGNMENT STATEMENT...
	mov	2861,r13		! source line 2861
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4139 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_4139 = sector  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2862,r13		! source line 2862
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4140 = fcb + 36
	load	[r14+-136],r1
	add	r1,36,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_4140 = 1  (sizeInBytes=1)
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
	mov	2866,r13		! source line 2866
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2867,r13		! source line 2867
	mov	"\0\0AS",r10
!   sourceAddr = sourceAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2868,r13		! source line 2868
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2869,r13		! source line 2869
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-132],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_4113
_Label_4115:
! SEND STATEMENT...
	mov	2876,r13		! source line 2876
	mov	"\0\0SE",r10
!   _temp_4141 = &fileManagerLock
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
	mov	2878,r13		! source line 2878
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
	.word	_Label_4142
	.word	20		! total size of parameters
	.word	144		! frame size = 144
	.word	_Label_4143
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_4144
	.word	12
	.word	4
	.word	_Label_4145
	.word	16
	.word	4
	.word	_Label_4146
	.word	20
	.word	4
	.word	_Label_4147
	.word	24
	.word	4
	.word	_Label_4148
	.word	-16
	.word	4
	.word	_Label_4149
	.word	-20
	.word	4
	.word	_Label_4150
	.word	-24
	.word	4
	.word	_Label_4151
	.word	-28
	.word	4
	.word	_Label_4152
	.word	-32
	.word	4
	.word	_Label_4153
	.word	-36
	.word	4
	.word	_Label_4154
	.word	-40
	.word	4
	.word	_Label_4155
	.word	-44
	.word	4
	.word	_Label_4156
	.word	-48
	.word	4
	.word	_Label_4157
	.word	-52
	.word	4
	.word	_Label_4158
	.word	-56
	.word	4
	.word	_Label_4159
	.word	-60
	.word	4
	.word	_Label_4160
	.word	-64
	.word	4
	.word	_Label_4161
	.word	-68
	.word	4
	.word	_Label_4162
	.word	-72
	.word	4
	.word	_Label_4163
	.word	-76
	.word	4
	.word	_Label_4164
	.word	-80
	.word	4
	.word	_Label_4165
	.word	-84
	.word	4
	.word	_Label_4166
	.word	-88
	.word	4
	.word	_Label_4167
	.word	-92
	.word	4
	.word	_Label_4168
	.word	-96
	.word	4
	.word	_Label_4169
	.word	-100
	.word	4
	.word	_Label_4170
	.word	-104
	.word	4
	.word	_Label_4171
	.word	-108
	.word	4
	.word	_Label_4172
	.word	-112
	.word	4
	.word	_Label_4173
	.word	-9
	.word	1
	.word	_Label_4174
	.word	-10
	.word	1
	.word	_Label_4175
	.word	-116
	.word	4
	.word	_Label_4176
	.word	-120
	.word	4
	.word	_Label_4177
	.word	-124
	.word	4
	.word	_Label_4178
	.word	-128
	.word	4
	.word	_Label_4179
	.word	-132
	.word	4
	.word	_Label_4180
	.word	-136
	.word	4
	.word	0
_Label_4142:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchWrite\0"
	.align
_Label_4143:
	.ascii	"Pself\0"
	.align
_Label_4144:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_4145:
	.byte	'I'
	.ascii	"sourceAddr\0"
	.align
_Label_4146:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_4147:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_4148:
	.byte	'?'
	.ascii	"_temp_4141\0"
	.align
_Label_4149:
	.byte	'?'
	.ascii	"_temp_4140\0"
	.align
_Label_4150:
	.byte	'?'
	.ascii	"_temp_4139\0"
	.align
_Label_4151:
	.byte	'?'
	.ascii	"_temp_4138\0"
	.align
_Label_4152:
	.byte	'?'
	.ascii	"_temp_4137\0"
	.align
_Label_4153:
	.byte	'?'
	.ascii	"_temp_4136\0"
	.align
_Label_4154:
	.byte	'?'
	.ascii	"_temp_4135\0"
	.align
_Label_4155:
	.byte	'?'
	.ascii	"_temp_4134\0"
	.align
_Label_4156:
	.byte	'?'
	.ascii	"_temp_4133\0"
	.align
_Label_4157:
	.byte	'?'
	.ascii	"_temp_4127\0"
	.align
_Label_4158:
	.byte	'?'
	.ascii	"_temp_4126\0"
	.align
_Label_4159:
	.byte	'?'
	.ascii	"_temp_4123\0"
	.align
_Label_4160:
	.byte	'?'
	.ascii	"_temp_4122\0"
	.align
_Label_4161:
	.byte	'?'
	.ascii	"_temp_4121\0"
	.align
_Label_4162:
	.byte	'?'
	.ascii	"_temp_4120\0"
	.align
_Label_4163:
	.byte	'?'
	.ascii	"_temp_4119\0"
	.align
_Label_4164:
	.byte	'?'
	.ascii	"_temp_4118\0"
	.align
_Label_4165:
	.byte	'?'
	.ascii	"_temp_4112\0"
	.align
_Label_4166:
	.byte	'?'
	.ascii	"_temp_4111\0"
	.align
_Label_4167:
	.byte	'?'
	.ascii	"_temp_4110\0"
	.align
_Label_4168:
	.byte	'?'
	.ascii	"_temp_4109\0"
	.align
_Label_4169:
	.byte	'?'
	.ascii	"_temp_4108\0"
	.align
_Label_4170:
	.byte	'?'
	.ascii	"_temp_4107\0"
	.align
_Label_4171:
	.byte	'?'
	.ascii	"_temp_4104\0"
	.align
_Label_4172:
	.byte	'?'
	.ascii	"_temp_4103\0"
	.align
_Label_4173:
	.byte	'C'
	.ascii	"_temp_4102\0"
	.align
_Label_4174:
	.byte	'C'
	.ascii	"_temp_4099\0"
	.align
_Label_4175:
	.byte	'?'
	.ascii	"_temp_4094\0"
	.align
_Label_4176:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_4177:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_4178:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_4179:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_4180:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  CLASS FileControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileControlBlock:
	.word	_Label_4181
	jmp	_Method_P_Kernel_FileControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_FileControlBlock_2	! 8:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_4181:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_4182
	.word	_sourceFileName
	.word	391		! line number
	.word	40		! size of instances, in bytes
	.word	_P_Kernel_FileControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_4182:
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
_Label_4552:
	push	r0
	sub	r1,1,r1
	bne	_Label_4552
	mov	2914,r13		! source line 2914
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2915,r13		! source line 2915
	mov	"\0\0AS",r10
!   numberOfUsers = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2916,r13		! source line 2916
	mov	"\0\0AS",r10
	mov	2916,r13		! source line 2916
	mov	"\0\0SE",r10
!   _temp_4183 = &_P_Kernel_frameManager
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
	mov	2917,r13		! source line 2917
	mov	"\0\0AS",r10
!   relativeSectorInBuffer = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! ASSIGNMENT STATEMENT...
	mov	2918,r13		! source line 2918
	mov	"\0\0AS",r10
!   bufferIsDirty = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+36]
! ASSIGNMENT STATEMENT...
	mov	2919,r13		! source line 2919
	mov	"\0\0AS",r10
!   startingSectorOfFile = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! RETURN STATEMENT...
	mov	2919,r13		! source line 2919
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
	.word	_Label_4184
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_4185
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_4186
	.word	-12
	.word	4
	.word	0
_Label_4184:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_4185:
	.ascii	"Pself\0"
	.align
_Label_4186:
	.byte	'?'
	.ascii	"_temp_4183\0"
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
_Label_4553:
	push	r0
	sub	r1,1,r1
	bne	_Label_4553
	mov	2924,r13		! source line 2924
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_4187 = _StringConst_161
	set	_StringConst_161,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_4187  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2925,r13		! source line 2925
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fcbID  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2926,r13		! source line 2926
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_4188 = _StringConst_162
	set	_StringConst_162,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_4188  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2927,r13		! source line 2927
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=numberOfUsers  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2928,r13		! source line 2928
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_4189 = _StringConst_163
	set	_StringConst_163,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_4189  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2929,r13		! source line 2929
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=startingSectorOfFile  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2930,r13		! source line 2930
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_4190 = _StringConst_164
	set	_StringConst_164,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_4190  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2931,r13		! source line 2931
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeOfFileInBytes  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2932,r13		! source line 2932
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_4191 = _StringConst_165
	set	_StringConst_165,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_4191  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2933,r13		! source line 2933
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=bufferPtr  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2934,r13		! source line 2934
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_4192 = _StringConst_166
	set	_StringConst_166,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_4192  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2935,r13		! source line 2935
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=relativeSectorInBuffer  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2936,r13		! source line 2936
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2937,r13		! source line 2937
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2937,r13		! source line 2937
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
	.word	_Label_4193
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_4194
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_4195
	.word	-12
	.word	4
	.word	_Label_4196
	.word	-16
	.word	4
	.word	_Label_4197
	.word	-20
	.word	4
	.word	_Label_4198
	.word	-24
	.word	4
	.word	_Label_4199
	.word	-28
	.word	4
	.word	_Label_4200
	.word	-32
	.word	4
	.word	0
_Label_4193:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_4194:
	.ascii	"Pself\0"
	.align
_Label_4195:
	.byte	'?'
	.ascii	"_temp_4192\0"
	.align
_Label_4196:
	.byte	'?'
	.ascii	"_temp_4191\0"
	.align
_Label_4197:
	.byte	'?'
	.ascii	"_temp_4190\0"
	.align
_Label_4198:
	.byte	'?'
	.ascii	"_temp_4189\0"
	.align
_Label_4199:
	.byte	'?'
	.ascii	"_temp_4188\0"
	.align
_Label_4200:
	.byte	'?'
	.ascii	"_temp_4187\0"
	.align
! 
! ===============  CLASS OpenFile  ===============
! 
! Dispatch Table:
! 
_P_Kernel_OpenFile:
	.word	_Label_4201
	jmp	_Method_P_Kernel_OpenFile_1	! 4:	Print
	jmp	_Method_P_Kernel_OpenFile_2	! 8:	ReadBytes
	jmp	_Method_P_Kernel_OpenFile_3	! 12:	ReadInt
	jmp	_Method_P_Kernel_OpenFile_4	! 16:	LoadExecutable
	.word	0
! 
! Class descriptor:
! 
_Label_4201:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_4202
	.word	_sourceFileName
	.word	408		! line number
	.word	28		! size of instances, in bytes
	.word	_P_Kernel_OpenFile
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_4202:
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
_Label_4554:
	push	r0
	sub	r1,1,r1
	bne	_Label_4554
	mov	3055,r13		! source line 3055
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_4203 = _StringConst_167
	set	_StringConst_167,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_4203  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	3056,r13		! source line 3056
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=currentPos  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	3057,r13		! source line 3057
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_4204 = _StringConst_168
	set	_StringConst_168,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_4204  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	3058,r13		! source line 3058
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	3059,r13		! source line 3059
	mov	"\0\0IF",r10
!   if fcb == 0 then goto _Label_4206		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_4206
!	jmp	_Label_4205
_Label_4205:
! THEN...
	mov	3060,r13		! source line 3060
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	3060,r13		! source line 3060
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
	jmp	_Label_4207
_Label_4206:
! ELSE...
	mov	3062,r13		! source line 3062
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_4208 = _StringConst_169
	set	_StringConst_169,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_4208  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	3062,r13		! source line 3062
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_4207:
! RETURN STATEMENT...
	mov	3059,r13		! source line 3059
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
	.word	_Label_4209
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_4210
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_4211
	.word	-12
	.word	4
	.word	_Label_4212
	.word	-16
	.word	4
	.word	_Label_4213
	.word	-20
	.word	4
	.word	0
_Label_4209:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_4210:
	.ascii	"Pself\0"
	.align
_Label_4211:
	.byte	'?'
	.ascii	"_temp_4208\0"
	.align
_Label_4212:
	.byte	'?'
	.ascii	"_temp_4204\0"
	.align
_Label_4213:
	.byte	'?'
	.ascii	"_temp_4203\0"
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
_Label_4555:
	push	r0
	sub	r1,1,r1
	bne	_Label_4555
	mov	3068,r13		! source line 3068
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	3078,r13		! source line 3078
	mov	"\0\0SE",r10
!   _temp_4214 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-36]
!   _temp_4215 = _temp_4214 + 4
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
	mov	3079,r13		! source line 3079
	mov	"\0\0AS",r10
!   pos = currentPos		(4 bytes)
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	3080,r13		! source line 3080
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
	mov	3081,r13		! source line 3081
	mov	"\0\0SE",r10
!   _temp_4216 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   _temp_4217 = _temp_4216 + 4
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
	mov	3082,r13		! source line 3082
	mov	"\0\0RE",r10
	mov	3082,r13		! source line 3082
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   _temp_4220 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_4219  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_4218  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   ReturnResult: _temp_4218  (sizeInBytes=1)
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
	.word	_Label_4221
	.word	12		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_4222
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_4223
	.word	12
	.word	4
	.word	_Label_4224
	.word	16
	.word	4
	.word	_Label_4225
	.word	-16
	.word	4
	.word	_Label_4226
	.word	-20
	.word	4
	.word	_Label_4227
	.word	-9
	.word	1
	.word	_Label_4228
	.word	-24
	.word	4
	.word	_Label_4229
	.word	-28
	.word	4
	.word	_Label_4230
	.word	-32
	.word	4
	.word	_Label_4231
	.word	-36
	.word	4
	.word	_Label_4232
	.word	-40
	.word	4
	.word	0
_Label_4221:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadBytes\0"
	.align
_Label_4222:
	.ascii	"Pself\0"
	.align
_Label_4223:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_4224:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_4225:
	.byte	'?'
	.ascii	"_temp_4220\0"
	.align
_Label_4226:
	.byte	'?'
	.ascii	"_temp_4219\0"
	.align
_Label_4227:
	.byte	'C'
	.ascii	"_temp_4218\0"
	.align
_Label_4228:
	.byte	'?'
	.ascii	"_temp_4217\0"
	.align
_Label_4229:
	.byte	'?'
	.ascii	"_temp_4216\0"
	.align
_Label_4230:
	.byte	'?'
	.ascii	"_temp_4215\0"
	.align
_Label_4231:
	.byte	'?'
	.ascii	"_temp_4214\0"
	.align
_Label_4232:
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
_Label_4556:
	push	r0
	sub	r1,1,r1
	bne	_Label_4556
	mov	3087,r13		! source line 3087
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	3092,r13		! source line 3092
	mov	"\0\0IF",r10
	mov	3092,r13		! source line 3092
	mov	"\0\0SE",r10
!   _temp_4236 = &i
	add	r14,-28,r1
	store	r1,[r14+-24]
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_4237) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_4236  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_4235  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_4235 then goto _Label_4234 else goto _Label_4233
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_4233
	jmp	_Label_4234
_Label_4233:
! THEN...
	mov	3093,r13		! source line 3093
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4238 = _StringConst_170
	set	_StringConst_170,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_4238  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	3093,r13		! source line 3093
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_4234:
! RETURN STATEMENT...
	mov	3095,r13		! source line 3095
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
	.word	_Label_4239
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_4240
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_4241
	.word	-16
	.word	4
	.word	_Label_4242
	.word	-20
	.word	4
	.word	_Label_4243
	.word	-24
	.word	4
	.word	_Label_4244
	.word	-9
	.word	1
	.word	_Label_4245
	.word	-28
	.word	4
	.word	0
_Label_4239:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadInt\0"
	.align
_Label_4240:
	.ascii	"Pself\0"
	.align
_Label_4241:
	.byte	'?'
	.ascii	"_temp_4238\0"
	.align
_Label_4242:
	.byte	'?'
	.ascii	"_temp_4237\0"
	.align
_Label_4243:
	.byte	'?'
	.ascii	"_temp_4236\0"
	.align
_Label_4244:
	.byte	'C'
	.ascii	"_temp_4235\0"
	.align
_Label_4245:
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
_Label_4557:
	push	r0
	sub	r1,1,r1
	bne	_Label_4557
	mov	3100,r13		! source line 3100
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	3126,r13		! source line 3126
	mov	"\0\0IF",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4249 = addrSpace + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-216]
!   Data Move: _temp_4248 = *_temp_4249  (sizeInBytes=4)
	load	[r14+-216],r1
	load	[r1],r1
	store	r1,[r14+-220]
!   if intIsZero (_temp_4248) then goto _Label_4247
	load	[r14+-220],r1
	cmp	r1,r0
	be	_Label_4247
!	jmp	_Label_4246
_Label_4246:
! THEN...
	mov	3127,r13		! source line 3127
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4250 = _StringConst_171
	set	_StringConst_171,r1
	store	r1,[r14+-212]
!   Prepare Argument: offset=8  value=_temp_4250  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	3127,r13		! source line 3127
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_4247:
! IF STATEMENT...
	mov	3131,r13		! source line 3131
	mov	"\0\0IF",r10
	mov	3131,r13		! source line 3131
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-204]
!   if intIsZero (_temp_4254) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_4253  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-208]
!   if _temp_4253 == 1112300152 then goto _Label_4252		(int)
	load	[r14+-208],r1
	set	1112300152,r2
	cmp	r1,r2
	be	_Label_4252
!	jmp	_Label_4251
_Label_4251:
! THEN...
	mov	3132,r13		! source line 3132
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4255 = _StringConst_172
	set	_StringConst_172,r1
	store	r1,[r14+-200]
!   Prepare Argument: offset=8  value=_temp_4255  sizeInBytes=4
	load	[r14+-200],r1
	store	r1,[r15+0]
!   Call the function
	mov	3132,r13		! source line 3132
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3133,r13		! source line 3133
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4252:
! ASSIGNMENT STATEMENT...
	mov	3137,r13		! source line 3137
	mov	"\0\0AS",r10
	mov	3137,r13		! source line 3137
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-196]
!   if intIsZero (_temp_4256) then goto _runtimeErrorNullPointer
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
	mov	3138,r13		! source line 3138
	mov	"\0\0AS",r10
	mov	3138,r13		! source line 3138
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-192]
!   if intIsZero (_temp_4257) then goto _runtimeErrorNullPointer
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
	mov	3139,r13		! source line 3139
	mov	"\0\0AS",r10
	mov	3139,r13		! source line 3139
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_4258) then goto _runtimeErrorNullPointer
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
	mov	3140,r13		! source line 3140
	mov	"\0\0AS",r10
	mov	3140,r13		! source line 3140
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-184]
!   if intIsZero (_temp_4259) then goto _runtimeErrorNullPointer
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
	mov	3141,r13		! source line 3141
	mov	"\0\0AS",r10
	mov	3141,r13		! source line 3141
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-180]
!   if intIsZero (_temp_4260) then goto _runtimeErrorNullPointer
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
	mov	3142,r13		! source line 3142
	mov	"\0\0AS",r10
	mov	3142,r13		! source line 3142
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-176]
!   if intIsZero (_temp_4261) then goto _runtimeErrorNullPointer
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
	mov	3145,r13		! source line 3145
	mov	"\0\0IF",r10
!   _temp_4264 = textSize rem 8192		(int)
	load	[r14+-232],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-172]
!   if intIsZero (_temp_4264) then goto _Label_4263
	load	[r14+-172],r1
	cmp	r1,r0
	be	_Label_4263
!	jmp	_Label_4262
_Label_4262:
! THEN...
	mov	3146,r13		! source line 3146
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4265 = _StringConst_173
	set	_StringConst_173,r1
	store	r1,[r14+-168]
!   Prepare Argument: offset=8  value=_temp_4265  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+0]
!   Call the function
	mov	3146,r13		! source line 3146
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3147,r13		! source line 3147
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4263:
! ASSIGNMENT STATEMENT...
	mov	3149,r13		! source line 3149
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
	mov	3153,r13		! source line 3153
	mov	"\0\0IF",r10
!   if intIsZero (textStart) then goto _Label_4267
	load	[r14+-244],r1
	cmp	r1,r0
	be	_Label_4267
!	jmp	_Label_4266
_Label_4266:
! THEN...
	mov	3154,r13		! source line 3154
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4268 = _StringConst_174
	set	_StringConst_174,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_4268  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	3154,r13		! source line 3154
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3155,r13		! source line 3155
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4267:
! IF STATEMENT...
	mov	3159,r13		! source line 3159
	mov	"\0\0IF",r10
!   _temp_4271 = dataSize rem 8192		(int)
	load	[r14+-236],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
!   if intIsZero (_temp_4271) then goto _Label_4270
	load	[r14+-160],r1
	cmp	r1,r0
	be	_Label_4270
!	jmp	_Label_4269
_Label_4269:
! THEN...
	mov	3160,r13		! source line 3160
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4272 = _StringConst_175
	set	_StringConst_175,r1
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_4272  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	3160,r13		! source line 3160
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3161,r13		! source line 3161
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4270:
! IF STATEMENT...
	mov	3163,r13		! source line 3163
	mov	"\0\0IF",r10
!   _temp_4275 = textStart + textSize		(int)
	load	[r14+-244],r1
	load	[r14+-232],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   if dataStart == _temp_4275 then goto _Label_4274		(int)
	load	[r14+-248],r1
	load	[r14+-152],r2
	cmp	r1,r2
	be	_Label_4274
!	jmp	_Label_4273
_Label_4273:
! THEN...
	mov	3164,r13		! source line 3164
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4276 = _StringConst_176
	set	_StringConst_176,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_4276  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	3164,r13		! source line 3164
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3165,r13		! source line 3165
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4274:
! ASSIGNMENT STATEMENT...
	mov	3167,r13		! source line 3167
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
	mov	3170,r13		! source line 3170
	mov	"\0\0IF",r10
!   _temp_4279 = bssSize rem 8192		(int)
	load	[r14+-240],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
!   if intIsZero (_temp_4279) then goto _Label_4278
	load	[r14+-144],r1
	cmp	r1,r0
	be	_Label_4278
!	jmp	_Label_4277
_Label_4277:
! THEN...
	mov	3171,r13		! source line 3171
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4280 = _StringConst_177
	set	_StringConst_177,r1
	store	r1,[r14+-140]
!   Prepare Argument: offset=8  value=_temp_4280  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+0]
!   Call the function
	mov	3171,r13		! source line 3171
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3172,r13		! source line 3172
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4278:
! IF STATEMENT...
	mov	3174,r13		! source line 3174
	mov	"\0\0IF",r10
!   _temp_4283 = dataStart + dataSize		(int)
	load	[r14+-248],r1
	load	[r14+-236],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
!   if bssStart == _temp_4283 then goto _Label_4282		(int)
	load	[r14+-252],r1
	load	[r14+-136],r2
	cmp	r1,r2
	be	_Label_4282
!	jmp	_Label_4281
_Label_4281:
! THEN...
	mov	3175,r13		! source line 3175
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4284 = _StringConst_178
	set	_StringConst_178,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_4284  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	3175,r13		! source line 3175
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3176,r13		! source line 3176
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4282:
! ASSIGNMENT STATEMENT...
	mov	3178,r13		! source line 3178
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
	mov	3181,r13		! source line 3181
	mov	"\0\0AS",r10
!   _temp_4287 = textSizeInPages + dataSizeInPages		(int)
	load	[r14+-260],r1
	load	[r14+-264],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
!   _temp_4286 = _temp_4287 + bssSizeInPages		(int)
	load	[r14+-120],r1
	load	[r14+-268],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
!   _temp_4285 = _temp_4286 + 1		(int)
	load	[r14+-124],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
!   i = _temp_4285 + 0		(int)
	load	[r14+-128],r1
	mov	0,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
! IF STATEMENT...
	mov	3196,r13		! source line 3196
	mov	"\0\0IF",r10
!   if i <= 20 then goto _Label_4289		(int)
	load	[r14+-256],r1
	mov	20,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_4289
!	jmp	_Label_4288
_Label_4288:
! THEN...
	mov	3197,r13		! source line 3197
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4290 = _StringConst_179
	set	_StringConst_179,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_4290  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	3197,r13		! source line 3197
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_4291 = _StringConst_180
	set	_StringConst_180,r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_4291  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+4]
!   Call the function
	mov	3198,r13		! source line 3198
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_4292 = _StringConst_181
	set	_StringConst_181,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_4292  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+4]
!   Call the function
	mov	3199,r13		! source line 3199
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! RETURN STATEMENT...
	mov	3200,r13		! source line 3200
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4289:
! SEND STATEMENT...
	mov	3202,r13		! source line 3202
	mov	"\0\0SE",r10
!   _temp_4293 = &_P_Kernel_frameManager
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
	mov	3208,r13		! source line 3208
	mov	"\0\0IF",r10
	mov	3208,r13		! source line 3208
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-96]
!   if intIsZero (_temp_4297) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_4296  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-100]
!   if _temp_4296 == 707406378 then goto _Label_4295		(int)
	load	[r14+-100],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_4295
!	jmp	_Label_4294
_Label_4294:
! THEN...
	mov	3209,r13		! source line 3209
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4298 = _StringConst_182
	set	_StringConst_182,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_4298  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	3209,r13		! source line 3209
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3210,r13		! source line 3210
	mov	"\0\0SE",r10
!   _temp_4299 = &_P_Kernel_frameManager
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
	mov	3211,r13		! source line 3211
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4295:
! ASSIGNMENT STATEMENT...
	mov	3215,r13		! source line 3215
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
	mov	3216,r13		! source line 3216
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_4304 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-84]
!   Calculate and save the FOR-LOOP ending value
!   _temp_4305 = textSizeInPages		(4 bytes)
	load	[r14+-260],r1
	store	r1,[r14+-80]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_4304  (sizeInBytes=4)
	load	[r14+-84],r1
	store	r1,[r14+-256]
_Label_4300:
!   Perform the FOR-LOOP termination test
!   if i > _temp_4305 then goto _Label_4303		
	load	[r14+-256],r1
	load	[r14+-80],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_4303
_Label_4301:
	mov	3216,r13		! source line 3216
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	3217,r13		! source line 3217
	mov	"\0\0AS",r10
	mov	3217,r13		! source line 3217
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
	mov	3220,r13		! source line 3220
	mov	"\0\0IF",r10
	mov	3220,r13		! source line 3220
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_4309) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_4308  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_4308 then goto _Label_4307 else goto _Label_4306
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_4306
	jmp	_Label_4307
_Label_4306:
! THEN...
	mov	3221,r13		! source line 3221
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4310 = _StringConst_183
	set	_StringConst_183,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_4310  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	3221,r13		! source line 3221
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3222,r13		! source line 3222
	mov	"\0\0SE",r10
!   _temp_4311 = &_P_Kernel_frameManager
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
	mov	3223,r13		! source line 3223
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4307:
! SEND STATEMENT...
	mov	3225,r13		! source line 3225
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
	mov	3226,r13		! source line 3226
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_4302:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_4300
! END FOR
_Label_4303:
! IF STATEMENT...
	mov	3230,r13		! source line 3230
	mov	"\0\0IF",r10
	mov	3230,r13		! source line 3230
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_4315) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_4314  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
!   if _temp_4314 == 707406378 then goto _Label_4313		(int)
	load	[r14+-64],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_4313
!	jmp	_Label_4312
_Label_4312:
! THEN...
	mov	3231,r13		! source line 3231
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4316 = _StringConst_184
	set	_StringConst_184,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_4316  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	3231,r13		! source line 3231
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3232,r13		! source line 3232
	mov	"\0\0SE",r10
!   _temp_4317 = &_P_Kernel_frameManager
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
	mov	3233,r13		! source line 3233
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4313:
! FOR STATEMENT...
	mov	3237,r13		! source line 3237
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_4322 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_4323 = dataSizeInPages		(4 bytes)
	load	[r14+-264],r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_4322  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-256]
_Label_4318:
!   Perform the FOR-LOOP termination test
!   if i > _temp_4323 then goto _Label_4321		
	load	[r14+-256],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_4321
_Label_4319:
	mov	3237,r13		! source line 3237
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	3238,r13		! source line 3238
	mov	"\0\0AS",r10
	mov	3238,r13		! source line 3238
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
	mov	3241,r13		! source line 3241
	mov	"\0\0IF",r10
	mov	3241,r13		! source line 3241
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_4327) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_4326  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_4326 then goto _Label_4325 else goto _Label_4324
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_4324
	jmp	_Label_4325
_Label_4324:
! THEN...
	mov	3242,r13		! source line 3242
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4328 = _StringConst_185
	set	_StringConst_185,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_4328  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	3242,r13		! source line 3242
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3243,r13		! source line 3243
	mov	"\0\0SE",r10
!   _temp_4329 = &_P_Kernel_frameManager
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
	mov	3244,r13		! source line 3244
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4325:
! ASSIGNMENT STATEMENT...
	mov	3246,r13		! source line 3246
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_4320:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_4318
! END FOR
_Label_4321:
! IF STATEMENT...
	mov	3250,r13		! source line 3250
	mov	"\0\0IF",r10
	mov	3250,r13		! source line 3250
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_4333) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_4332  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   if _temp_4332 == 707406378 then goto _Label_4331		(int)
	load	[r14+-28],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_4331
!	jmp	_Label_4330
_Label_4330:
! THEN...
	mov	3251,r13		! source line 3251
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4334 = _StringConst_186
	set	_StringConst_186,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_4334  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	3251,r13		! source line 3251
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3252,r13		! source line 3252
	mov	"\0\0SE",r10
!   _temp_4335 = &_P_Kernel_frameManager
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
	mov	3253,r13		! source line 3253
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4331:
! ASSIGNMENT STATEMENT...
	mov	3257,r13		! source line 3257
	mov	"\0\0AS",r10
	mov	3257,r13		! source line 3257
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
	mov	3261,r13		! source line 3261
	mov	"\0\0CE",r10
	call	MemoryZero
! RETURN STATEMENT...
	mov	3264,r13		! source line 3264
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
	.word	_Label_4336
	.word	8		! total size of parameters
	.word	272		! frame size = 272
	.word	_Label_4337
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_4338
	.word	12
	.word	4
	.word	_Label_4339
	.word	-16
	.word	4
	.word	_Label_4340
	.word	-20
	.word	4
	.word	_Label_4341
	.word	-24
	.word	4
	.word	_Label_4342
	.word	-28
	.word	4
	.word	_Label_4343
	.word	-32
	.word	4
	.word	_Label_4344
	.word	-36
	.word	4
	.word	_Label_4345
	.word	-40
	.word	4
	.word	_Label_4346
	.word	-9
	.word	1
	.word	_Label_4347
	.word	-44
	.word	4
	.word	_Label_4348
	.word	-48
	.word	4
	.word	_Label_4349
	.word	-52
	.word	4
	.word	_Label_4350
	.word	-56
	.word	4
	.word	_Label_4351
	.word	-60
	.word	4
	.word	_Label_4352
	.word	-64
	.word	4
	.word	_Label_4353
	.word	-68
	.word	4
	.word	_Label_4354
	.word	-72
	.word	4
	.word	_Label_4355
	.word	-76
	.word	4
	.word	_Label_4356
	.word	-10
	.word	1
	.word	_Label_4357
	.word	-80
	.word	4
	.word	_Label_4358
	.word	-84
	.word	4
	.word	_Label_4359
	.word	-88
	.word	4
	.word	_Label_4360
	.word	-92
	.word	4
	.word	_Label_4361
	.word	-96
	.word	4
	.word	_Label_4362
	.word	-100
	.word	4
	.word	_Label_4363
	.word	-104
	.word	4
	.word	_Label_4364
	.word	-108
	.word	4
	.word	_Label_4365
	.word	-112
	.word	4
	.word	_Label_4366
	.word	-116
	.word	4
	.word	_Label_4367
	.word	-120
	.word	4
	.word	_Label_4368
	.word	-124
	.word	4
	.word	_Label_4369
	.word	-128
	.word	4
	.word	_Label_4370
	.word	-132
	.word	4
	.word	_Label_4371
	.word	-136
	.word	4
	.word	_Label_4372
	.word	-140
	.word	4
	.word	_Label_4373
	.word	-144
	.word	4
	.word	_Label_4374
	.word	-148
	.word	4
	.word	_Label_4375
	.word	-152
	.word	4
	.word	_Label_4376
	.word	-156
	.word	4
	.word	_Label_4377
	.word	-160
	.word	4
	.word	_Label_4378
	.word	-164
	.word	4
	.word	_Label_4379
	.word	-168
	.word	4
	.word	_Label_4380
	.word	-172
	.word	4
	.word	_Label_4381
	.word	-176
	.word	4
	.word	_Label_4382
	.word	-180
	.word	4
	.word	_Label_4383
	.word	-184
	.word	4
	.word	_Label_4384
	.word	-188
	.word	4
	.word	_Label_4385
	.word	-192
	.word	4
	.word	_Label_4386
	.word	-196
	.word	4
	.word	_Label_4387
	.word	-200
	.word	4
	.word	_Label_4388
	.word	-204
	.word	4
	.word	_Label_4389
	.word	-208
	.word	4
	.word	_Label_4390
	.word	-212
	.word	4
	.word	_Label_4391
	.word	-216
	.word	4
	.word	_Label_4392
	.word	-220
	.word	4
	.word	_Label_4393
	.word	-224
	.word	4
	.word	_Label_4394
	.word	-228
	.word	4
	.word	_Label_4395
	.word	-232
	.word	4
	.word	_Label_4396
	.word	-236
	.word	4
	.word	_Label_4397
	.word	-240
	.word	4
	.word	_Label_4398
	.word	-244
	.word	4
	.word	_Label_4399
	.word	-248
	.word	4
	.word	_Label_4400
	.word	-252
	.word	4
	.word	_Label_4401
	.word	-256
	.word	4
	.word	_Label_4402
	.word	-260
	.word	4
	.word	_Label_4403
	.word	-264
	.word	4
	.word	_Label_4404
	.word	-268
	.word	4
	.word	0
_Label_4336:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"LoadExecutable\0"
	.align
_Label_4337:
	.ascii	"Pself\0"
	.align
_Label_4338:
	.byte	'P'
	.ascii	"addrSpace\0"
	.align
_Label_4339:
	.byte	'?'
	.ascii	"_temp_4335\0"
	.align
_Label_4340:
	.byte	'?'
	.ascii	"_temp_4334\0"
	.align
_Label_4341:
	.byte	'?'
	.ascii	"_temp_4333\0"
	.align
_Label_4342:
	.byte	'?'
	.ascii	"_temp_4332\0"
	.align
_Label_4343:
	.byte	'?'
	.ascii	"_temp_4329\0"
	.align
_Label_4344:
	.byte	'?'
	.ascii	"_temp_4328\0"
	.align
_Label_4345:
	.byte	'?'
	.ascii	"_temp_4327\0"
	.align
_Label_4346:
	.byte	'C'
	.ascii	"_temp_4326\0"
	.align
_Label_4347:
	.byte	'?'
	.ascii	"_temp_4323\0"
	.align
_Label_4348:
	.byte	'?'
	.ascii	"_temp_4322\0"
	.align
_Label_4349:
	.byte	'?'
	.ascii	"_temp_4317\0"
	.align
_Label_4350:
	.byte	'?'
	.ascii	"_temp_4316\0"
	.align
_Label_4351:
	.byte	'?'
	.ascii	"_temp_4315\0"
	.align
_Label_4352:
	.byte	'?'
	.ascii	"_temp_4314\0"
	.align
_Label_4353:
	.byte	'?'
	.ascii	"_temp_4311\0"
	.align
_Label_4354:
	.byte	'?'
	.ascii	"_temp_4310\0"
	.align
_Label_4355:
	.byte	'?'
	.ascii	"_temp_4309\0"
	.align
_Label_4356:
	.byte	'C'
	.ascii	"_temp_4308\0"
	.align
_Label_4357:
	.byte	'?'
	.ascii	"_temp_4305\0"
	.align
_Label_4358:
	.byte	'?'
	.ascii	"_temp_4304\0"
	.align
_Label_4359:
	.byte	'?'
	.ascii	"_temp_4299\0"
	.align
_Label_4360:
	.byte	'?'
	.ascii	"_temp_4298\0"
	.align
_Label_4361:
	.byte	'?'
	.ascii	"_temp_4297\0"
	.align
_Label_4362:
	.byte	'?'
	.ascii	"_temp_4296\0"
	.align
_Label_4363:
	.byte	'?'
	.ascii	"_temp_4293\0"
	.align
_Label_4364:
	.byte	'?'
	.ascii	"_temp_4292\0"
	.align
_Label_4365:
	.byte	'?'
	.ascii	"_temp_4291\0"
	.align
_Label_4366:
	.byte	'?'
	.ascii	"_temp_4290\0"
	.align
_Label_4367:
	.byte	'?'
	.ascii	"_temp_4287\0"
	.align
_Label_4368:
	.byte	'?'
	.ascii	"_temp_4286\0"
	.align
_Label_4369:
	.byte	'?'
	.ascii	"_temp_4285\0"
	.align
_Label_4370:
	.byte	'?'
	.ascii	"_temp_4284\0"
	.align
_Label_4371:
	.byte	'?'
	.ascii	"_temp_4283\0"
	.align
_Label_4372:
	.byte	'?'
	.ascii	"_temp_4280\0"
	.align
_Label_4373:
	.byte	'?'
	.ascii	"_temp_4279\0"
	.align
_Label_4374:
	.byte	'?'
	.ascii	"_temp_4276\0"
	.align
_Label_4375:
	.byte	'?'
	.ascii	"_temp_4275\0"
	.align
_Label_4376:
	.byte	'?'
	.ascii	"_temp_4272\0"
	.align
_Label_4377:
	.byte	'?'
	.ascii	"_temp_4271\0"
	.align
_Label_4378:
	.byte	'?'
	.ascii	"_temp_4268\0"
	.align
_Label_4379:
	.byte	'?'
	.ascii	"_temp_4265\0"
	.align
_Label_4380:
	.byte	'?'
	.ascii	"_temp_4264\0"
	.align
_Label_4381:
	.byte	'?'
	.ascii	"_temp_4261\0"
	.align
_Label_4382:
	.byte	'?'
	.ascii	"_temp_4260\0"
	.align
_Label_4383:
	.byte	'?'
	.ascii	"_temp_4259\0"
	.align
_Label_4384:
	.byte	'?'
	.ascii	"_temp_4258\0"
	.align
_Label_4385:
	.byte	'?'
	.ascii	"_temp_4257\0"
	.align
_Label_4386:
	.byte	'?'
	.ascii	"_temp_4256\0"
	.align
_Label_4387:
	.byte	'?'
	.ascii	"_temp_4255\0"
	.align
_Label_4388:
	.byte	'?'
	.ascii	"_temp_4254\0"
	.align
_Label_4389:
	.byte	'?'
	.ascii	"_temp_4253\0"
	.align
_Label_4390:
	.byte	'?'
	.ascii	"_temp_4250\0"
	.align
_Label_4391:
	.byte	'?'
	.ascii	"_temp_4249\0"
	.align
_Label_4392:
	.byte	'?'
	.ascii	"_temp_4248\0"
	.align
_Label_4393:
	.byte	'I'
	.ascii	"nextVirtPage\0"
	.align
_Label_4394:
	.byte	'I'
	.ascii	"addr\0"
	.align
_Label_4395:
	.byte	'I'
	.ascii	"textSize\0"
	.align
_Label_4396:
	.byte	'I'
	.ascii	"dataSize\0"
	.align
_Label_4397:
	.byte	'I'
	.ascii	"bssSize\0"
	.align
_Label_4398:
	.byte	'I'
	.ascii	"textStart\0"
	.align
_Label_4399:
	.byte	'I'
	.ascii	"dataStart\0"
	.align
_Label_4400:
	.byte	'I'
	.ascii	"bssStart\0"
	.align
_Label_4401:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_4402:
	.byte	'I'
	.ascii	"textSizeInPages\0"
	.align
_Label_4403:
	.byte	'I'
	.ascii	"dataSizeInPages\0"
	.align
_Label_4404:
	.byte	'I'
	.ascii	"bssSizeInPages\0"
	.align
