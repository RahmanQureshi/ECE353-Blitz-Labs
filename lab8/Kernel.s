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
_Label_4309:
	push	r0
	sub	r1,1,r1
	bne	_Label_4309
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
_Label_4310:
	push	r0
	sub	r1,1,r1
	bne	_Label_4310
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
_Label_4311:
	push	r0
	sub	r1,1,r1
	bne	_Label_4311
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
_Label_4312:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4312
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
_Label_4313:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4313
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
_Label_4314:
	push	r0
	sub	r1,1,r1
	bne	_Label_4314
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
_Label_4315:
	push	r0
	sub	r1,1,r1
	bne	_Label_4315
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
_Label_4316:
	push	r0
	sub	r1,1,r1
	bne	_Label_4316
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
_Label_4317:
	push	r0
	sub	r1,1,r1
	bne	_Label_4317
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
_Label_4318:
	push	r0
	sub	r1,1,r1
	bne	_Label_4318
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
_Label_4319:
	push	r0
	sub	r1,1,r1
	bne	_Label_4319
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
_Label_4320:
	push	r0
	sub	r1,1,r1
	bne	_Label_4320
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
_Label_4321:
	push	r0
	sub	r1,1,r1
	bne	_Label_4321
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
_Label_4322:
	push	r0
	sub	r1,1,r1
	bne	_Label_4322
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
_Label_4323:
	push	r0
	sub	r1,1,r1
	bne	_Label_4323
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
_Label_4324:
	push	r0
	sub	r1,1,r1
	bne	_Label_4324
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
_Label_4325:
	push	r0
	sub	r1,1,r1
	bne	_Label_4325
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
_Label_4326:
	push	r0
	sub	r1,1,r1
	bne	_Label_4326
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
_Label_4327:
	push	r0
	sub	r1,1,r1
	bne	_Label_4327
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
_Label_4328:
	push	r0
	sub	r1,1,r1
	bne	_Label_4328
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
_Label_4329:
	push	r0
	sub	r1,1,r1
	bne	_Label_4329
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
_Label_4330:
	push	r0
	sub	r1,1,r1
	bne	_Label_4330
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
_Label_4331:
	push	r0
	sub	r1,1,r1
	bne	_Label_4331
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
_Label_4332:
	push	r0
	sub	r1,1,r1
	bne	_Label_4332
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
_Label_4333:
	push	r0
	sub	r1,1,r1
	bne	_Label_4333
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
_Label_4334:
	push	r0
	sub	r1,1,r1
	bne	_Label_4334
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
_Label_4335:
	push	r0
	sub	r1,1,r1
	bne	_Label_4335
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
	be	_Label_4336
	set	0x1ffff,r3
	cmp	r2,r3
	bne	_Label_569
_Label_4336:
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
_Label_4337:
	push	r0
	sub	r1,1,r1
	bne	_Label_4337
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
_Label_4338:
	push	r0
	sub	r1,1,r1
	bne	_Label_4338
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
_Label_4339:
	push	r0
	sub	r1,1,r1
	bne	_Label_4339
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
_Label_4340:
	push	r0
	sub	r1,1,r1
	bne	_Label_4340
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
_Label_4341:
	push	r0
	sub	r1,1,r1
	bne	_Label_4341
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
_Label_4342:
	push	r0
	sub	r1,1,r1
	bne	_Label_4342
	mov	1900,r13		! source line 1900
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! newAddrSpace
!   NEW CLASS Constructor...
!   ZeroMemory: newAddrSpace = zeros  (sizeInBytes=92)
	add	r14,-204,r4
	mov	23,r3
_Label_4343:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4343
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
_Label_4344:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4344
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
_Label_4345:
	push	r0
	sub	r1,1,r1
	bne	_Label_4345
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
_Label_4346:
	push	r0
	sub	r1,1,r1
	bne	_Label_4346
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
	mov	109,r1
_Label_4347:
	push	r0
	sub	r1,1,r1
	bne	_Label_4347
	mov	2001,r13		! source line 2001
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2017,r13		! source line 2017
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
	store	r1,[r14+-376]
!   Data Move: _temp_1041 = *_temp_1042  (sizeInBytes=4)
	load	[r14+-376],r1
	load	[r1],r1
	store	r1,[r14+-380]
!   if intIsZero (_temp_1041) then goto _runtimeErrorNullPointer
	load	[r14+-380],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1043 = _temp_1041 + 124
	load	[r14+-380],r1
	add	r1,124,r1
	store	r1,[r14+-372]
!   Move address of _temp_1043 [fileDesc ] into _temp_1044
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-372],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-368]
!   Data Move: _temp_1040 = *_temp_1044  (sizeInBytes=4)
	load	[r14+-368],r1
	load	[r1],r1
	store	r1,[r14+-384]
!   if intIsZero (_temp_1040) then goto _Label_1035
	load	[r14+-384],r1
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
	mov	2018,r13		! source line 2018
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2018,r13		! source line 2018
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,440,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1036:
! IF STATEMENT...
	mov	2022,r13		! source line 2022
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
	store	r1,[r14+-352]
!   Data Move: _temp_1049 = *_temp_1050  (sizeInBytes=4)
	load	[r14+-352],r1
	load	[r1],r1
	store	r1,[r14+-356]
!   if intIsZero (_temp_1049) then goto _runtimeErrorNullPointer
	load	[r14+-356],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1051 = _temp_1049 + 124
	load	[r14+-356],r1
	add	r1,124,r1
	store	r1,[r14+-348]
!   Move address of _temp_1051 [fileDesc ] into _temp_1052
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-348],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-344]
!   Data Move: _temp_1048 = *_temp_1052  (sizeInBytes=4)
	load	[r14+-344],r1
	load	[r1],r1
	store	r1,[r14+-360]
!   if intIsZero (_temp_1048) then goto _runtimeErrorNullPointer
	load	[r14+-360],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1053 = _temp_1048 + 12
	load	[r14+-360],r1
	add	r1,12,r1
	store	r1,[r14+-340]
!   Data Move: _temp_1047 = *_temp_1053  (sizeInBytes=4)
	load	[r14+-340],r1
	load	[r1],r1
	store	r1,[r14+-364]
!   if _temp_1047 != 2 then goto _Label_1046		(int)
	load	[r14+-364],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1046
!	jmp	_Label_1045
_Label_1045:
! THEN...
	mov	2023,r13		! source line 2023
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2023,r13		! source line 2023
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-400]
! FOR STATEMENT...
	mov	2024,r13		! source line 2024
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1058 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-336]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1059 = sizeInBytes - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-332]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1058  (sizeInBytes=4)
	load	[r14+-336],r1
	store	r1,[r14+-424]
_Label_1054:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1059 then goto _Label_1057		
	load	[r14+-424],r1
	load	[r14+-332],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1057
_Label_1055:
	mov	2024,r13		! source line 2024
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2025,r13		! source line 2025
	mov	"\0\0AS",r10
!   _temp_1060 = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-328]
!   virtPage = _temp_1060 div 8192		(int)
	load	[r14+-328],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-392]
! ASSIGNMENT STATEMENT...
	mov	2026,r13		! source line 2026
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-388]
! IF STATEMENT...
	mov	2027,r13		! source line 2027
	mov	"\0\0IF",r10
!   if virtPage >= 0 then goto _Label_1065		(int)
	load	[r14+-392],r1
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
	store	r1,[r14+-312]
!   Data Move: _temp_1068 = *_temp_1069  (sizeInBytes=4)
	load	[r14+-312],r1
	load	[r1],r1
	store	r1,[r14+-316]
!   if intIsZero (_temp_1068) then goto _runtimeErrorNullPointer
	load	[r14+-316],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1070 = _temp_1068 + 32
	load	[r14+-316],r1
	add	r1,32,r1
	store	r1,[r14+-308]
!   _temp_1071 = _temp_1070 + 4
	load	[r14+-308],r1
	add	r1,4,r1
	store	r1,[r14+-304]
!   Data Move: _temp_1067 = *_temp_1071  (sizeInBytes=4)
	load	[r14+-304],r1
	load	[r1],r1
	store	r1,[r14+-320]
!   _temp_1066 = _temp_1067 - 1		(int)
	load	[r14+-320],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-324]
!   if virtPage <= _temp_1066 then goto _Label_1064		(int)
	load	[r14+-392],r1
	load	[r14+-324],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1064
	jmp	_Label_1061
_Label_1064:
	mov	2027,r13		! source line 2027
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
	store	r1,[r14+-296]
!   Data Move: _temp_1073 = *_temp_1074  (sizeInBytes=4)
	load	[r14+-296],r1
	load	[r1],r1
	store	r1,[r14+-300]
!   if intIsZero (_temp_1073) then goto _runtimeErrorNullPointer
	load	[r14+-300],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1075 = _temp_1073 + 32
	load	[r14+-300],r1
	add	r1,32,r1
	store	r1,[r14+-292]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-392],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-292],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1072  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-23]
!   _temp_1076 = _temp_1072 XOR 0		(bool)
	loadb	[r14+-23],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-22]
!   if _temp_1076 then goto _Label_1063 else goto _Label_1061
	loadb	[r14+-22],r1
	cmp	r1,0
	be	_Label_1061
	jmp	_Label_1063
_Label_1063:
	mov	2027,r13		! source line 2027
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
	store	r1,[r14+-284]
!   Data Move: _temp_1078 = *_temp_1079  (sizeInBytes=4)
	load	[r14+-284],r1
	load	[r1],r1
	store	r1,[r14+-288]
!   if intIsZero (_temp_1078) then goto _runtimeErrorNullPointer
	load	[r14+-288],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1080 = _temp_1078 + 32
	load	[r14+-288],r1
	add	r1,32,r1
	store	r1,[r14+-280]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-392],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-280],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_1077  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-21]
!   _temp_1081 = _temp_1077 XOR 0		(bool)
	loadb	[r14+-21],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-20]
!   if _temp_1081 then goto _Label_1062 else goto _Label_1061
	loadb	[r14+-20],r1
	cmp	r1,0
	be	_Label_1061
	jmp	_Label_1062
_Label_1061:
! THEN...
	mov	2028,r13		! source line 2028
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2028,r13		! source line 2028
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,440,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1062:
! ASSIGNMENT STATEMENT...
	mov	2030,r13		! source line 2030
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+-388],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-396]
! ASSIGNMENT STATEMENT...
	mov	2031,r13		! source line 2031
	mov	"\0\0AS",r10
	mov	2031,r13		! source line 2031
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1084 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-268]
!   Data Move: _temp_1083 = *_temp_1084  (sizeInBytes=4)
	load	[r14+-268],r1
	load	[r1],r1
	store	r1,[r14+-272]
!   if intIsZero (_temp_1083) then goto _runtimeErrorNullPointer
	load	[r14+-272],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1085 = _temp_1083 + 32
	load	[r14+-272],r1
	add	r1,32,r1
	store	r1,[r14+-264]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-392],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-264],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1082  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-276]
!   destAddr = _temp_1082 + offset		(int)
	load	[r14+-276],r1
	load	[r14+-396],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-416]
! ASSIGNMENT STATEMENT...
	mov	2032,r13		! source line 2032
	mov	"\0\0AS",r10
	mov	2032,r13		! source line 2032
	mov	"\0\0SE",r10
!   _temp_1086 = &_P_Kernel_serialDriver
	set	_P_Kernel_serialDriver,r1
	store	r1,[r14+-260]
!   Send message GetChar
	load	[r14+-260],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=c  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-25]
! IF STATEMENT...
	mov	2033,r13		! source line 2033
	mov	"\0\0IF",r10
!   _temp_1089 = c XOR 13		(bool)
	loadb	[r14+-25],r1
	mov	13,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-19]
!   if _temp_1089 then goto _Label_1088 else goto _Label_1087
	loadb	[r14+-19],r1
	cmp	r1,0
	be	_Label_1087
	jmp	_Label_1088
_Label_1087:
! THEN...
	mov	2034,r13		! source line 2034
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2034,r13		! source line 2034
	mov	"\0\0AS",r10
!   c = 10		(1 byte)
	mov	10,r1
	storeb	r1,[r14+-25]
! END IF...
_Label_1088:
! IF STATEMENT...
	mov	2036,r13		! source line 2036
	mov	"\0\0IF",r10
!   _temp_1092 = charToInt (c)
	loadb	[r14+-25],r1
	sll	r1,24,r1
	sra	r1,24,r1
	store	r1,[r14+-256]
!   if _temp_1092 != 4 then goto _Label_1091		(int)
	load	[r14+-256],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_1091
!	jmp	_Label_1090
_Label_1090:
! THEN...
	mov	2037,r13		! source line 2037
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2037,r13		! source line 2037
	mov	"\0\0BR",r10
	jmp	_Label_1057
! END IF...
_Label_1091:
! ASSIGNMENT STATEMENT...
	mov	2039,r13		! source line 2039
	mov	"\0\0AS",r10
!   if intIsZero (destAddr) then goto _runtimeErrorNullPointer
	load	[r14+-416],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *destAddr = c  (sizeInBytes=1)
	loadb	[r14+-25],r1
	load	[r14+-416],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2040,r13		! source line 2040
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-400],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-400]
! IF STATEMENT...
	mov	2041,r13		! source line 2041
	mov	"\0\0IF",r10
!   if intIsZero (destAddr) then goto _runtimeErrorNullPointer
	load	[r14+-416],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1095 = *destAddr  (sizeInBytes=1)
	load	[r14+-416],r1
	loadb	[r1],r1
	storeb	r1,[r14+-18]
!   _temp_1096 = _temp_1095 XOR 10		(bool)
	loadb	[r14+-18],r1
	mov	10,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-17]
!   if _temp_1096 then goto _Label_1094 else goto _Label_1093
	loadb	[r14+-17],r1
	cmp	r1,0
	be	_Label_1093
	jmp	_Label_1094
_Label_1093:
! THEN...
	mov	2042,r13		! source line 2042
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2042,r13		! source line 2042
	mov	"\0\0BR",r10
	jmp	_Label_1057
! END IF...
_Label_1094:
! ASSIGNMENT STATEMENT...
	mov	2044,r13		! source line 2044
	mov	"\0\0AS",r10
!   buffer = buffer + 1		(int)
	load	[r14+12],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+12]
!   Increment the FOR-LOOP index variable and jump back
_Label_1056:
!   i = i + 1
	load	[r14+-424],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-424]
	jmp	_Label_1054
! END FOR
_Label_1057:
! RETURN STATEMENT...
	mov	2046,r13		! source line 2046
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-400],r1
	store	r1,[r14+8]
	add	r15,440,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_1097
_Label_1046:
! ELSE...
	mov	2049,r13		! source line 2049
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	2049,r13		! source line 2049
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1099 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-248]
!   Data Move: _temp_1098 = *_temp_1099  (sizeInBytes=4)
	load	[r14+-248],r1
	load	[r1],r1
	store	r1,[r14+-252]
!   if intIsZero (_temp_1098) then goto _runtimeErrorNullPointer
	load	[r14+-252],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1100 = _temp_1098 + 124
	load	[r14+-252],r1
	add	r1,124,r1
	store	r1,[r14+-244]
!   Move address of _temp_1100 [fileDesc ] into _temp_1101
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
!   Data Move: openFile = *_temp_1101  (sizeInBytes=4)
	load	[r14+-240],r1
	load	[r1],r1
	store	r1,[r14+-420]
! ASSIGNMENT STATEMENT...
	mov	2050,r13		! source line 2050
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-388]
! ASSIGNMENT STATEMENT...
	mov	2051,r13		! source line 2051
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+-388],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-392]
! ASSIGNMENT STATEMENT...
	mov	2052,r13		! source line 2052
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+-388],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-396]
! ASSIGNMENT STATEMENT...
	mov	2053,r13		! source line 2053
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-400]
! ASSIGNMENT STATEMENT...
	mov	2054,r13		! source line 2054
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-420],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1102 = openFile + 16
	load	[r14+-420],r1
	add	r1,16,r1
	store	r1,[r14+-236]
!   Data Move: nextPosInFile = *_temp_1102  (sizeInBytes=4)
	load	[r14+-236],r1
	load	[r1],r1
	store	r1,[r14+-404]
! ASSIGNMENT STATEMENT...
	mov	2055,r13		! source line 2055
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-420],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1104 = openFile + 20
	load	[r14+-420],r1
	add	r1,20,r1
	store	r1,[r14+-228]
!   Data Move: _temp_1103 = *_temp_1104  (sizeInBytes=4)
	load	[r14+-228],r1
	load	[r1],r1
	store	r1,[r14+-232]
!   if intIsZero (_temp_1103) then goto _runtimeErrorNullPointer
	load	[r14+-232],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1105 = _temp_1103 + 24
	load	[r14+-232],r1
	add	r1,24,r1
	store	r1,[r14+-224]
!   Data Move: fileSize = *_temp_1105  (sizeInBytes=4)
	load	[r14+-224],r1
	load	[r1],r1
	store	r1,[r14+-412]
! WHILE STATEMENT...
	mov	2056,r13		! source line 2056
	mov	"\0\0WH",r10
_Label_1106:
!	jmp	_Label_1107
_Label_1107:
	mov	2056,r13		! source line 2056
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2057,r13		! source line 2057
	mov	"\0\0AS",r10
!   currentChunkSize = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-396],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-408]
! IF STATEMENT...
	mov	2058,r13		! source line 2058
	mov	"\0\0IF",r10
!   _temp_1111 = nextPosInFile + currentChunkSize		(int)
	load	[r14+-404],r1
	load	[r14+-408],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-220]
!   if _temp_1111 <= fileSize then goto _Label_1110		(int)
	load	[r14+-220],r1
	load	[r14+-412],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1110
!	jmp	_Label_1109
_Label_1109:
! THEN...
	mov	2059,r13		! source line 2059
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2059,r13		! source line 2059
	mov	"\0\0AS",r10
!   currentChunkSize = fileSize - nextPosInFile		(int)
	load	[r14+-412],r1
	load	[r14+-404],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-408]
! END IF...
_Label_1110:
! IF STATEMENT...
	mov	2061,r13		! source line 2061
	mov	"\0\0IF",r10
!   _temp_1114 = copiedSoFar + currentChunkSize		(int)
	load	[r14+-400],r1
	load	[r14+-408],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-216]
!   if _temp_1114 <= sizeInBytes then goto _Label_1113		(int)
	load	[r14+-216],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1113
!	jmp	_Label_1112
_Label_1112:
! THEN...
	mov	2062,r13		! source line 2062
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2062,r13		! source line 2062
	mov	"\0\0AS",r10
!   currentChunkSize = sizeInBytes - copiedSoFar		(int)
	load	[r14+16],r1
	load	[r14+-400],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-408]
! END IF...
_Label_1113:
! IF STATEMENT...
	mov	2064,r13		! source line 2064
	mov	"\0\0IF",r10
!   if currentChunkSize > 0 then goto _Label_1116		(int)
	load	[r14+-408],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1116
!	jmp	_Label_1115
_Label_1115:
! THEN...
	mov	2065,r13		! source line 2065
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2065,r13		! source line 2065
	mov	"\0\0BR",r10
	jmp	_Label_1108
! END IF...
_Label_1116:
! IF STATEMENT...
	mov	2067,r13		! source line 2067
	mov	"\0\0IF",r10
!   if virtPage >= 0 then goto _Label_1121		(int)
	load	[r14+-392],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1121
	jmp	_Label_1117
_Label_1121:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1125 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-200]
!   Data Move: _temp_1124 = *_temp_1125  (sizeInBytes=4)
	load	[r14+-200],r1
	load	[r1],r1
	store	r1,[r14+-204]
!   if intIsZero (_temp_1124) then goto _runtimeErrorNullPointer
	load	[r14+-204],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1126 = _temp_1124 + 32
	load	[r14+-204],r1
	add	r1,32,r1
	store	r1,[r14+-196]
!   _temp_1127 = _temp_1126 + 4
	load	[r14+-196],r1
	add	r1,4,r1
	store	r1,[r14+-192]
!   Data Move: _temp_1123 = *_temp_1127  (sizeInBytes=4)
	load	[r14+-192],r1
	load	[r1],r1
	store	r1,[r14+-208]
!   _temp_1122 = _temp_1123 - 1		(int)
	load	[r14+-208],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-212]
!   if virtPage <= _temp_1122 then goto _Label_1120		(int)
	load	[r14+-392],r1
	load	[r14+-212],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1120
	jmp	_Label_1117
_Label_1120:
	mov	2067,r13		! source line 2067
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1130 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-184]
!   Data Move: _temp_1129 = *_temp_1130  (sizeInBytes=4)
	load	[r14+-184],r1
	load	[r1],r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_1129) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1131 = _temp_1129 + 32
	load	[r14+-188],r1
	add	r1,32,r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-392],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-180],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1128  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-16]
!   _temp_1132 = _temp_1128 XOR 0		(bool)
	loadb	[r14+-16],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-15]
!   if _temp_1132 then goto _Label_1119 else goto _Label_1117
	loadb	[r14+-15],r1
	cmp	r1,0
	be	_Label_1117
	jmp	_Label_1119
_Label_1119:
	mov	2067,r13		! source line 2067
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1135 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-172]
!   Data Move: _temp_1134 = *_temp_1135  (sizeInBytes=4)
	load	[r14+-172],r1
	load	[r1],r1
	store	r1,[r14+-176]
!   if intIsZero (_temp_1134) then goto _runtimeErrorNullPointer
	load	[r14+-176],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1136 = _temp_1134 + 32
	load	[r14+-176],r1
	add	r1,32,r1
	store	r1,[r14+-168]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-392],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-168],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_1133  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-14]
!   _temp_1137 = _temp_1133 XOR 0		(bool)
	loadb	[r14+-14],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-13]
!   if _temp_1137 then goto _Label_1118 else goto _Label_1117
	loadb	[r14+-13],r1
	cmp	r1,0
	be	_Label_1117
	jmp	_Label_1118
_Label_1117:
! THEN...
	mov	2068,r13		! source line 2068
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2068,r13		! source line 2068
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,440,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1118:
! ASSIGNMENT STATEMENT...
	mov	2070,r13		! source line 2070
	mov	"\0\0AS",r10
!   nextPosInFile = nextPosInFile + currentChunkSize		(int)
	load	[r14+-404],r1
	load	[r14+-408],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-404]
! ASSIGNMENT STATEMENT...
	mov	2071,r13		! source line 2071
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + currentChunkSize		(int)
	load	[r14+-400],r1
	load	[r14+-408],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-400]
! ASSIGNMENT STATEMENT...
	mov	2072,r13		! source line 2072
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-392],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-392]
! ASSIGNMENT STATEMENT...
	mov	2073,r13		! source line 2073
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-396]
! IF STATEMENT...
	mov	2074,r13		! source line 2074
	mov	"\0\0IF",r10
!   if copiedSoFar != sizeInBytes then goto _Label_1139		(int)
	load	[r14+-400],r1
	load	[r14+16],r2
	cmp	r1,r2
	bne	_Label_1139
!	jmp	_Label_1138
_Label_1138:
! THEN...
	mov	2075,r13		! source line 2075
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2075,r13		! source line 2075
	mov	"\0\0BR",r10
	jmp	_Label_1108
! END IF...
_Label_1139:
! END WHILE...
	jmp	_Label_1106
_Label_1108:
! ASSIGNMENT STATEMENT...
	mov	2080,r13		! source line 2080
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1141 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-160]
!   Data Move: _temp_1140 = *_temp_1141  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-164]
!   if intIsZero (_temp_1140) then goto _runtimeErrorNullPointer
	load	[r14+-164],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1142 = _temp_1140 + 124
	load	[r14+-164],r1
	add	r1,124,r1
	store	r1,[r14+-156]
!   Move address of _temp_1142 [fileDesc ] into _temp_1143
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
!   Data Move: openFile = *_temp_1143  (sizeInBytes=4)
	load	[r14+-152],r1
	load	[r1],r1
	store	r1,[r14+-420]
! ASSIGNMENT STATEMENT...
	mov	2081,r13		! source line 2081
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-388]
! ASSIGNMENT STATEMENT...
	mov	2082,r13		! source line 2082
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+-388],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-392]
! ASSIGNMENT STATEMENT...
	mov	2083,r13		! source line 2083
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+-388],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-396]
! ASSIGNMENT STATEMENT...
	mov	2084,r13		! source line 2084
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-400]
! ASSIGNMENT STATEMENT...
	mov	2085,r13		! source line 2085
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-420],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1144 = openFile + 16
	load	[r14+-420],r1
	add	r1,16,r1
	store	r1,[r14+-148]
!   Data Move: nextPosInFile = *_temp_1144  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r1],r1
	store	r1,[r14+-404]
! ASSIGNMENT STATEMENT...
	mov	2086,r13		! source line 2086
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-420],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1146 = openFile + 20
	load	[r14+-420],r1
	add	r1,20,r1
	store	r1,[r14+-140]
!   Data Move: _temp_1145 = *_temp_1146  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-144]
!   if intIsZero (_temp_1145) then goto _runtimeErrorNullPointer
	load	[r14+-144],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1147 = _temp_1145 + 24
	load	[r14+-144],r1
	add	r1,24,r1
	store	r1,[r14+-136]
!   Data Move: fileSize = *_temp_1147  (sizeInBytes=4)
	load	[r14+-136],r1
	load	[r1],r1
	store	r1,[r14+-412]
! WHILE STATEMENT...
	mov	2087,r13		! source line 2087
	mov	"\0\0WH",r10
_Label_1148:
!	jmp	_Label_1149
_Label_1149:
	mov	2087,r13		! source line 2087
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2088,r13		! source line 2088
	mov	"\0\0AS",r10
!   currentChunkSize = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-396],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-408]
! IF STATEMENT...
	mov	2089,r13		! source line 2089
	mov	"\0\0IF",r10
!   _temp_1153 = nextPosInFile + currentChunkSize		(int)
	load	[r14+-404],r1
	load	[r14+-408],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-132]
!   if _temp_1153 <= fileSize then goto _Label_1152		(int)
	load	[r14+-132],r1
	load	[r14+-412],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1152
!	jmp	_Label_1151
_Label_1151:
! THEN...
	mov	2090,r13		! source line 2090
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2090,r13		! source line 2090
	mov	"\0\0AS",r10
!   currentChunkSize = fileSize - nextPosInFile		(int)
	load	[r14+-412],r1
	load	[r14+-404],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-408]
! END IF...
_Label_1152:
! IF STATEMENT...
	mov	2092,r13		! source line 2092
	mov	"\0\0IF",r10
!   _temp_1156 = copiedSoFar + currentChunkSize		(int)
	load	[r14+-400],r1
	load	[r14+-408],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
!   if _temp_1156 <= sizeInBytes then goto _Label_1155		(int)
	load	[r14+-128],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1155
!	jmp	_Label_1154
_Label_1154:
! THEN...
	mov	2093,r13		! source line 2093
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2093,r13		! source line 2093
	mov	"\0\0AS",r10
!   currentChunkSize = sizeInBytes - copiedSoFar		(int)
	load	[r14+16],r1
	load	[r14+-400],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-408]
! END IF...
_Label_1155:
! IF STATEMENT...
	mov	2095,r13		! source line 2095
	mov	"\0\0IF",r10
!   if currentChunkSize > 0 then goto _Label_1158		(int)
	load	[r14+-408],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1158
!	jmp	_Label_1157
_Label_1157:
! THEN...
	mov	2096,r13		! source line 2096
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2096,r13		! source line 2096
	mov	"\0\0BR",r10
	jmp	_Label_1150
! END IF...
_Label_1158:
! IF STATEMENT...
	mov	2098,r13		! source line 2098
	mov	"\0\0IF",r10
!   if virtPage >= 0 then goto _Label_1163		(int)
	load	[r14+-392],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1163
	jmp	_Label_1159
_Label_1163:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1167 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-112]
!   Data Move: _temp_1166 = *_temp_1167  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if intIsZero (_temp_1166) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1168 = _temp_1166 + 32
	load	[r14+-116],r1
	add	r1,32,r1
	store	r1,[r14+-108]
!   _temp_1169 = _temp_1168 + 4
	load	[r14+-108],r1
	add	r1,4,r1
	store	r1,[r14+-104]
!   Data Move: _temp_1165 = *_temp_1169  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-120]
!   _temp_1164 = _temp_1165 - 1		(int)
	load	[r14+-120],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
!   if virtPage <= _temp_1164 then goto _Label_1162		(int)
	load	[r14+-392],r1
	load	[r14+-124],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1162
	jmp	_Label_1159
_Label_1162:
	mov	2098,r13		! source line 2098
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1172 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-96]
!   Data Move: _temp_1171 = *_temp_1172  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_1171) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1173 = _temp_1171 + 32
	load	[r14+-100],r1
	add	r1,32,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-392],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-92],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1170  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-12]
!   _temp_1174 = _temp_1170 XOR 0		(bool)
	loadb	[r14+-12],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-11]
!   if _temp_1174 then goto _Label_1161 else goto _Label_1159
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_1159
	jmp	_Label_1161
_Label_1161:
	mov	2098,r13		! source line 2098
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1177 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-84]
!   Data Move: _temp_1176 = *_temp_1177  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-88]
!   if intIsZero (_temp_1176) then goto _runtimeErrorNullPointer
	load	[r14+-88],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1178 = _temp_1176 + 32
	load	[r14+-88],r1
	add	r1,32,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-392],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_1175  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   _temp_1179 = _temp_1175 XOR 0		(bool)
	loadb	[r14+-10],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_1179 then goto _Label_1160 else goto _Label_1159
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1159
	jmp	_Label_1160
_Label_1159:
! THEN...
	mov	2099,r13		! source line 2099
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2099,r13		! source line 2099
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,440,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1160:
! SEND STATEMENT...
	mov	2101,r13		! source line 2101
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1181 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-72]
!   Data Move: _temp_1180 = *_temp_1181  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_1180) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1182 = _temp_1180 + 32
	load	[r14+-76],r1
	add	r1,32,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-392],r1
	store	r1,[r15+4]
!   Send message SetReferenced
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,44,r2
	call	r2
! SEND STATEMENT...
	mov	2102,r13		! source line 2102
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1184 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-60]
!   Data Move: _temp_1183 = *_temp_1184  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_1183) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1185 = _temp_1183 + 32
	load	[r14+-64],r1
	add	r1,32,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-392],r1
	store	r1,[r15+4]
!   Send message SetDirty
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,40,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2103,r13		! source line 2103
	mov	"\0\0AS",r10
	mov	2103,r13		! source line 2103
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1188 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-44]
!   Data Move: _temp_1187 = *_temp_1188  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   if intIsZero (_temp_1187) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1189 = _temp_1187 + 32
	load	[r14+-48],r1
	add	r1,32,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-392],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1186  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
!   destAddr = _temp_1186 + offset		(int)
	load	[r14+-52],r1
	load	[r14+-396],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-416]
! ASSIGNMENT STATEMENT...
	mov	2104,r13		! source line 2104
	mov	"\0\0AS",r10
	mov	2104,r13		! source line 2104
	mov	"\0\0SE",r10
!   _temp_1190 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=openFile  sizeInBytes=4
	load	[r14+-420],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=destAddr  sizeInBytes=4
	load	[r14+-416],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=nextPosInFile  sizeInBytes=4
	load	[r14+-404],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=currentChunkSize  sizeInBytes=4
	load	[r14+-408],r1
	store	r1,[r15+16]
!   Send message SynchRead
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
!   Retrieve Result: targetName=readSuccess  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-24]
! ASSIGNMENT STATEMENT...
	mov	2105,r13		! source line 2105
	mov	"\0\0AS",r10
!   nextPosInFile = nextPosInFile + currentChunkSize		(int)
	load	[r14+-404],r1
	load	[r14+-408],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-404]
! ASSIGNMENT STATEMENT...
	mov	2106,r13		! source line 2106
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + currentChunkSize		(int)
	load	[r14+-400],r1
	load	[r14+-408],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-400]
! ASSIGNMENT STATEMENT...
	mov	2107,r13		! source line 2107
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-392],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-392]
! ASSIGNMENT STATEMENT...
	mov	2108,r13		! source line 2108
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-396]
! IF STATEMENT...
	mov	2109,r13		! source line 2109
	mov	"\0\0IF",r10
!   if copiedSoFar != sizeInBytes then goto _Label_1192		(int)
	load	[r14+-400],r1
	load	[r14+16],r2
	cmp	r1,r2
	bne	_Label_1192
!	jmp	_Label_1191
_Label_1191:
! THEN...
	mov	2110,r13		! source line 2110
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2110,r13		! source line 2110
	mov	"\0\0BR",r10
	jmp	_Label_1150
! END IF...
_Label_1192:
! END WHILE...
	jmp	_Label_1148
_Label_1150:
! ASSIGNMENT STATEMENT...
	mov	2113,r13		! source line 2113
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-420],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1193 = openFile + 16
	load	[r14+-420],r1
	add	r1,16,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_1193 = nextPosInFile  (sizeInBytes=4)
	load	[r14+-404],r1
	load	[r14+-32],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2114,r13		! source line 2114
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-400],r1
	store	r1,[r14+8]
	add	r15,440,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1097:
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Read:
	.word	_sourceFileName
	.word	_Label_1194
	.word	12		! total size of parameters
	.word	436		! frame size = 436
	.word	_Label_1195
	.word	8
	.word	4
	.word	_Label_1196
	.word	12
	.word	4
	.word	_Label_1197
	.word	16
	.word	4
	.word	_Label_1198
	.word	-32
	.word	4
	.word	_Label_1199
	.word	-36
	.word	4
	.word	_Label_1200
	.word	-40
	.word	4
	.word	_Label_1201
	.word	-44
	.word	4
	.word	_Label_1202
	.word	-48
	.word	4
	.word	_Label_1203
	.word	-52
	.word	4
	.word	_Label_1204
	.word	-56
	.word	4
	.word	_Label_1205
	.word	-60
	.word	4
	.word	_Label_1206
	.word	-64
	.word	4
	.word	_Label_1207
	.word	-68
	.word	4
	.word	_Label_1208
	.word	-72
	.word	4
	.word	_Label_1209
	.word	-76
	.word	4
	.word	_Label_1210
	.word	-9
	.word	1
	.word	_Label_1211
	.word	-80
	.word	4
	.word	_Label_1212
	.word	-84
	.word	4
	.word	_Label_1213
	.word	-88
	.word	4
	.word	_Label_1214
	.word	-10
	.word	1
	.word	_Label_1215
	.word	-11
	.word	1
	.word	_Label_1216
	.word	-92
	.word	4
	.word	_Label_1217
	.word	-96
	.word	4
	.word	_Label_1218
	.word	-100
	.word	4
	.word	_Label_1219
	.word	-12
	.word	1
	.word	_Label_1220
	.word	-104
	.word	4
	.word	_Label_1221
	.word	-108
	.word	4
	.word	_Label_1222
	.word	-112
	.word	4
	.word	_Label_1223
	.word	-116
	.word	4
	.word	_Label_1224
	.word	-120
	.word	4
	.word	_Label_1225
	.word	-124
	.word	4
	.word	_Label_1226
	.word	-128
	.word	4
	.word	_Label_1227
	.word	-132
	.word	4
	.word	_Label_1228
	.word	-136
	.word	4
	.word	_Label_1229
	.word	-140
	.word	4
	.word	_Label_1230
	.word	-144
	.word	4
	.word	_Label_1231
	.word	-148
	.word	4
	.word	_Label_1232
	.word	-152
	.word	4
	.word	_Label_1233
	.word	-156
	.word	4
	.word	_Label_1234
	.word	-160
	.word	4
	.word	_Label_1235
	.word	-164
	.word	4
	.word	_Label_1236
	.word	-13
	.word	1
	.word	_Label_1237
	.word	-168
	.word	4
	.word	_Label_1238
	.word	-172
	.word	4
	.word	_Label_1239
	.word	-176
	.word	4
	.word	_Label_1240
	.word	-14
	.word	1
	.word	_Label_1241
	.word	-15
	.word	1
	.word	_Label_1242
	.word	-180
	.word	4
	.word	_Label_1243
	.word	-184
	.word	4
	.word	_Label_1244
	.word	-188
	.word	4
	.word	_Label_1245
	.word	-16
	.word	1
	.word	_Label_1246
	.word	-192
	.word	4
	.word	_Label_1247
	.word	-196
	.word	4
	.word	_Label_1248
	.word	-200
	.word	4
	.word	_Label_1249
	.word	-204
	.word	4
	.word	_Label_1250
	.word	-208
	.word	4
	.word	_Label_1251
	.word	-212
	.word	4
	.word	_Label_1252
	.word	-216
	.word	4
	.word	_Label_1253
	.word	-220
	.word	4
	.word	_Label_1254
	.word	-224
	.word	4
	.word	_Label_1255
	.word	-228
	.word	4
	.word	_Label_1256
	.word	-232
	.word	4
	.word	_Label_1257
	.word	-236
	.word	4
	.word	_Label_1258
	.word	-240
	.word	4
	.word	_Label_1259
	.word	-244
	.word	4
	.word	_Label_1260
	.word	-248
	.word	4
	.word	_Label_1261
	.word	-252
	.word	4
	.word	_Label_1262
	.word	-17
	.word	1
	.word	_Label_1263
	.word	-18
	.word	1
	.word	_Label_1264
	.word	-256
	.word	4
	.word	_Label_1265
	.word	-19
	.word	1
	.word	_Label_1266
	.word	-260
	.word	4
	.word	_Label_1267
	.word	-264
	.word	4
	.word	_Label_1268
	.word	-268
	.word	4
	.word	_Label_1269
	.word	-272
	.word	4
	.word	_Label_1270
	.word	-276
	.word	4
	.word	_Label_1271
	.word	-20
	.word	1
	.word	_Label_1272
	.word	-280
	.word	4
	.word	_Label_1273
	.word	-284
	.word	4
	.word	_Label_1274
	.word	-288
	.word	4
	.word	_Label_1275
	.word	-21
	.word	1
	.word	_Label_1276
	.word	-22
	.word	1
	.word	_Label_1277
	.word	-292
	.word	4
	.word	_Label_1278
	.word	-296
	.word	4
	.word	_Label_1279
	.word	-300
	.word	4
	.word	_Label_1280
	.word	-23
	.word	1
	.word	_Label_1281
	.word	-304
	.word	4
	.word	_Label_1282
	.word	-308
	.word	4
	.word	_Label_1283
	.word	-312
	.word	4
	.word	_Label_1284
	.word	-316
	.word	4
	.word	_Label_1285
	.word	-320
	.word	4
	.word	_Label_1286
	.word	-324
	.word	4
	.word	_Label_1287
	.word	-328
	.word	4
	.word	_Label_1288
	.word	-332
	.word	4
	.word	_Label_1289
	.word	-336
	.word	4
	.word	_Label_1290
	.word	-340
	.word	4
	.word	_Label_1291
	.word	-344
	.word	4
	.word	_Label_1292
	.word	-348
	.word	4
	.word	_Label_1293
	.word	-352
	.word	4
	.word	_Label_1294
	.word	-356
	.word	4
	.word	_Label_1295
	.word	-360
	.word	4
	.word	_Label_1296
	.word	-364
	.word	4
	.word	_Label_1297
	.word	-368
	.word	4
	.word	_Label_1298
	.word	-372
	.word	4
	.word	_Label_1299
	.word	-376
	.word	4
	.word	_Label_1300
	.word	-380
	.word	4
	.word	_Label_1301
	.word	-384
	.word	4
	.word	_Label_1302
	.word	-388
	.word	4
	.word	_Label_1303
	.word	-392
	.word	4
	.word	_Label_1304
	.word	-396
	.word	4
	.word	_Label_1305
	.word	-400
	.word	4
	.word	_Label_1306
	.word	-404
	.word	4
	.word	_Label_1307
	.word	-408
	.word	4
	.word	_Label_1308
	.word	-412
	.word	4
	.word	_Label_1309
	.word	-416
	.word	4
	.word	_Label_1310
	.word	-420
	.word	4
	.word	_Label_1311
	.word	-24
	.word	1
	.word	_Label_1312
	.word	-424
	.word	4
	.word	_Label_1313
	.word	-25
	.word	1
	.word	0
_Label_1194:
	.ascii	"Handle_Sys_Read\0"
	.align
_Label_1195:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_1196:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_1197:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_1198:
	.byte	'?'
	.ascii	"_temp_1193\0"
	.align
_Label_1199:
	.byte	'?'
	.ascii	"_temp_1190\0"
	.align
_Label_1200:
	.byte	'?'
	.ascii	"_temp_1189\0"
	.align
_Label_1201:
	.byte	'?'
	.ascii	"_temp_1188\0"
	.align
_Label_1202:
	.byte	'?'
	.ascii	"_temp_1187\0"
	.align
_Label_1203:
	.byte	'?'
	.ascii	"_temp_1186\0"
	.align
_Label_1204:
	.byte	'?'
	.ascii	"_temp_1185\0"
	.align
_Label_1205:
	.byte	'?'
	.ascii	"_temp_1184\0"
	.align
_Label_1206:
	.byte	'?'
	.ascii	"_temp_1183\0"
	.align
_Label_1207:
	.byte	'?'
	.ascii	"_temp_1182\0"
	.align
_Label_1208:
	.byte	'?'
	.ascii	"_temp_1181\0"
	.align
_Label_1209:
	.byte	'?'
	.ascii	"_temp_1180\0"
	.align
_Label_1210:
	.byte	'C'
	.ascii	"_temp_1179\0"
	.align
_Label_1211:
	.byte	'?'
	.ascii	"_temp_1178\0"
	.align
_Label_1212:
	.byte	'?'
	.ascii	"_temp_1177\0"
	.align
_Label_1213:
	.byte	'?'
	.ascii	"_temp_1176\0"
	.align
_Label_1214:
	.byte	'C'
	.ascii	"_temp_1175\0"
	.align
_Label_1215:
	.byte	'C'
	.ascii	"_temp_1174\0"
	.align
_Label_1216:
	.byte	'?'
	.ascii	"_temp_1173\0"
	.align
_Label_1217:
	.byte	'?'
	.ascii	"_temp_1172\0"
	.align
_Label_1218:
	.byte	'?'
	.ascii	"_temp_1171\0"
	.align
_Label_1219:
	.byte	'C'
	.ascii	"_temp_1170\0"
	.align
_Label_1220:
	.byte	'?'
	.ascii	"_temp_1169\0"
	.align
_Label_1221:
	.byte	'?'
	.ascii	"_temp_1168\0"
	.align
_Label_1222:
	.byte	'?'
	.ascii	"_temp_1167\0"
	.align
_Label_1223:
	.byte	'?'
	.ascii	"_temp_1166\0"
	.align
_Label_1224:
	.byte	'?'
	.ascii	"_temp_1165\0"
	.align
_Label_1225:
	.byte	'?'
	.ascii	"_temp_1164\0"
	.align
_Label_1226:
	.byte	'?'
	.ascii	"_temp_1156\0"
	.align
_Label_1227:
	.byte	'?'
	.ascii	"_temp_1153\0"
	.align
_Label_1228:
	.byte	'?'
	.ascii	"_temp_1147\0"
	.align
_Label_1229:
	.byte	'?'
	.ascii	"_temp_1146\0"
	.align
_Label_1230:
	.byte	'?'
	.ascii	"_temp_1145\0"
	.align
_Label_1231:
	.byte	'?'
	.ascii	"_temp_1144\0"
	.align
_Label_1232:
	.byte	'?'
	.ascii	"_temp_1143\0"
	.align
_Label_1233:
	.byte	'?'
	.ascii	"_temp_1142\0"
	.align
_Label_1234:
	.byte	'?'
	.ascii	"_temp_1141\0"
	.align
_Label_1235:
	.byte	'?'
	.ascii	"_temp_1140\0"
	.align
_Label_1236:
	.byte	'C'
	.ascii	"_temp_1137\0"
	.align
_Label_1237:
	.byte	'?'
	.ascii	"_temp_1136\0"
	.align
_Label_1238:
	.byte	'?'
	.ascii	"_temp_1135\0"
	.align
_Label_1239:
	.byte	'?'
	.ascii	"_temp_1134\0"
	.align
_Label_1240:
	.byte	'C'
	.ascii	"_temp_1133\0"
	.align
_Label_1241:
	.byte	'C'
	.ascii	"_temp_1132\0"
	.align
_Label_1242:
	.byte	'?'
	.ascii	"_temp_1131\0"
	.align
_Label_1243:
	.byte	'?'
	.ascii	"_temp_1130\0"
	.align
_Label_1244:
	.byte	'?'
	.ascii	"_temp_1129\0"
	.align
_Label_1245:
	.byte	'C'
	.ascii	"_temp_1128\0"
	.align
_Label_1246:
	.byte	'?'
	.ascii	"_temp_1127\0"
	.align
_Label_1247:
	.byte	'?'
	.ascii	"_temp_1126\0"
	.align
_Label_1248:
	.byte	'?'
	.ascii	"_temp_1125\0"
	.align
_Label_1249:
	.byte	'?'
	.ascii	"_temp_1124\0"
	.align
_Label_1250:
	.byte	'?'
	.ascii	"_temp_1123\0"
	.align
_Label_1251:
	.byte	'?'
	.ascii	"_temp_1122\0"
	.align
_Label_1252:
	.byte	'?'
	.ascii	"_temp_1114\0"
	.align
_Label_1253:
	.byte	'?'
	.ascii	"_temp_1111\0"
	.align
_Label_1254:
	.byte	'?'
	.ascii	"_temp_1105\0"
	.align
_Label_1255:
	.byte	'?'
	.ascii	"_temp_1104\0"
	.align
_Label_1256:
	.byte	'?'
	.ascii	"_temp_1103\0"
	.align
_Label_1257:
	.byte	'?'
	.ascii	"_temp_1102\0"
	.align
_Label_1258:
	.byte	'?'
	.ascii	"_temp_1101\0"
	.align
_Label_1259:
	.byte	'?'
	.ascii	"_temp_1100\0"
	.align
_Label_1260:
	.byte	'?'
	.ascii	"_temp_1099\0"
	.align
_Label_1261:
	.byte	'?'
	.ascii	"_temp_1098\0"
	.align
_Label_1262:
	.byte	'C'
	.ascii	"_temp_1096\0"
	.align
_Label_1263:
	.byte	'C'
	.ascii	"_temp_1095\0"
	.align
_Label_1264:
	.byte	'?'
	.ascii	"_temp_1092\0"
	.align
_Label_1265:
	.byte	'C'
	.ascii	"_temp_1089\0"
	.align
_Label_1266:
	.byte	'?'
	.ascii	"_temp_1086\0"
	.align
_Label_1267:
	.byte	'?'
	.ascii	"_temp_1085\0"
	.align
_Label_1268:
	.byte	'?'
	.ascii	"_temp_1084\0"
	.align
_Label_1269:
	.byte	'?'
	.ascii	"_temp_1083\0"
	.align
_Label_1270:
	.byte	'?'
	.ascii	"_temp_1082\0"
	.align
_Label_1271:
	.byte	'C'
	.ascii	"_temp_1081\0"
	.align
_Label_1272:
	.byte	'?'
	.ascii	"_temp_1080\0"
	.align
_Label_1273:
	.byte	'?'
	.ascii	"_temp_1079\0"
	.align
_Label_1274:
	.byte	'?'
	.ascii	"_temp_1078\0"
	.align
_Label_1275:
	.byte	'C'
	.ascii	"_temp_1077\0"
	.align
_Label_1276:
	.byte	'C'
	.ascii	"_temp_1076\0"
	.align
_Label_1277:
	.byte	'?'
	.ascii	"_temp_1075\0"
	.align
_Label_1278:
	.byte	'?'
	.ascii	"_temp_1074\0"
	.align
_Label_1279:
	.byte	'?'
	.ascii	"_temp_1073\0"
	.align
_Label_1280:
	.byte	'C'
	.ascii	"_temp_1072\0"
	.align
_Label_1281:
	.byte	'?'
	.ascii	"_temp_1071\0"
	.align
_Label_1282:
	.byte	'?'
	.ascii	"_temp_1070\0"
	.align
_Label_1283:
	.byte	'?'
	.ascii	"_temp_1069\0"
	.align
_Label_1284:
	.byte	'?'
	.ascii	"_temp_1068\0"
	.align
_Label_1285:
	.byte	'?'
	.ascii	"_temp_1067\0"
	.align
_Label_1286:
	.byte	'?'
	.ascii	"_temp_1066\0"
	.align
_Label_1287:
	.byte	'?'
	.ascii	"_temp_1060\0"
	.align
_Label_1288:
	.byte	'?'
	.ascii	"_temp_1059\0"
	.align
_Label_1289:
	.byte	'?'
	.ascii	"_temp_1058\0"
	.align
_Label_1290:
	.byte	'?'
	.ascii	"_temp_1053\0"
	.align
_Label_1291:
	.byte	'?'
	.ascii	"_temp_1052\0"
	.align
_Label_1292:
	.byte	'?'
	.ascii	"_temp_1051\0"
	.align
_Label_1293:
	.byte	'?'
	.ascii	"_temp_1050\0"
	.align
_Label_1294:
	.byte	'?'
	.ascii	"_temp_1049\0"
	.align
_Label_1295:
	.byte	'?'
	.ascii	"_temp_1048\0"
	.align
_Label_1296:
	.byte	'?'
	.ascii	"_temp_1047\0"
	.align
_Label_1297:
	.byte	'?'
	.ascii	"_temp_1044\0"
	.align
_Label_1298:
	.byte	'?'
	.ascii	"_temp_1043\0"
	.align
_Label_1299:
	.byte	'?'
	.ascii	"_temp_1042\0"
	.align
_Label_1300:
	.byte	'?'
	.ascii	"_temp_1041\0"
	.align
_Label_1301:
	.byte	'?'
	.ascii	"_temp_1040\0"
	.align
_Label_1302:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1303:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_1304:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_1305:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_1306:
	.byte	'I'
	.ascii	"nextPosInFile\0"
	.align
_Label_1307:
	.byte	'I'
	.ascii	"currentChunkSize\0"
	.align
_Label_1308:
	.byte	'I'
	.ascii	"fileSize\0"
	.align
_Label_1309:
	.byte	'I'
	.ascii	"destAddr\0"
	.align
_Label_1310:
	.byte	'P'
	.ascii	"openFile\0"
	.align
_Label_1311:
	.byte	'B'
	.ascii	"readSuccess\0"
	.align
_Label_1312:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1313:
	.byte	'C'
	.ascii	"c\0"
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
	mov	105,r1
_Label_4348:
	push	r0
	sub	r1,1,r1
	bne	_Label_4348
	mov	2121,r13		! source line 2121
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2137,r13		! source line 2137
	mov	"\0\0IF",r10
!   if fileDesc >= 0 then goto _Label_1318		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1318
	jmp	_Label_1314
_Label_1318:
!   if fileDesc <= 9 then goto _Label_1317		(int)
	load	[r14+8],r1
	mov	9,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1317
	jmp	_Label_1314
_Label_1317:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1321 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-360]
!   Data Move: _temp_1320 = *_temp_1321  (sizeInBytes=4)
	load	[r14+-360],r1
	load	[r1],r1
	store	r1,[r14+-364]
!   if intIsZero (_temp_1320) then goto _runtimeErrorNullPointer
	load	[r14+-364],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1322 = _temp_1320 + 124
	load	[r14+-364],r1
	add	r1,124,r1
	store	r1,[r14+-356]
!   Move address of _temp_1322 [fileDesc ] into _temp_1323
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-356],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-352]
!   Data Move: _temp_1319 = *_temp_1323  (sizeInBytes=4)
	load	[r14+-352],r1
	load	[r1],r1
	store	r1,[r14+-368]
!   if intIsZero (_temp_1319) then goto _Label_1314
	load	[r14+-368],r1
	cmp	r1,r0
	be	_Label_1314
!	jmp	_Label_1316
_Label_1316:
!   if sizeInBytes >= 0 then goto _Label_1315		(int)
	load	[r14+16],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1315
!	jmp	_Label_1314
_Label_1314:
! THEN...
	mov	2138,r13		! source line 2138
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2138,r13		! source line 2138
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,424,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1315:
! IF STATEMENT...
	mov	2141,r13		! source line 2141
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1329 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-336]
!   Data Move: _temp_1328 = *_temp_1329  (sizeInBytes=4)
	load	[r14+-336],r1
	load	[r1],r1
	store	r1,[r14+-340]
!   if intIsZero (_temp_1328) then goto _runtimeErrorNullPointer
	load	[r14+-340],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1330 = _temp_1328 + 124
	load	[r14+-340],r1
	add	r1,124,r1
	store	r1,[r14+-332]
!   Move address of _temp_1330 [fileDesc ] into _temp_1331
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-332],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-328]
!   Data Move: _temp_1327 = *_temp_1331  (sizeInBytes=4)
	load	[r14+-328],r1
	load	[r1],r1
	store	r1,[r14+-344]
!   if intIsZero (_temp_1327) then goto _runtimeErrorNullPointer
	load	[r14+-344],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1332 = _temp_1327 + 12
	load	[r14+-344],r1
	add	r1,12,r1
	store	r1,[r14+-324]
!   Data Move: _temp_1326 = *_temp_1332  (sizeInBytes=4)
	load	[r14+-324],r1
	load	[r1],r1
	store	r1,[r14+-348]
!   if _temp_1326 != 2 then goto _Label_1325		(int)
	load	[r14+-348],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1325
!	jmp	_Label_1324
_Label_1324:
! THEN...
	mov	2142,r13		! source line 2142
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2142,r13		! source line 2142
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-384]
! FOR STATEMENT...
	mov	2143,r13		! source line 2143
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1337 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-320]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1338 = sizeInBytes - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-316]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1337  (sizeInBytes=4)
	load	[r14+-320],r1
	store	r1,[r14+-408]
_Label_1333:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1338 then goto _Label_1336		
	load	[r14+-408],r1
	load	[r14+-316],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1336
_Label_1334:
	mov	2143,r13		! source line 2143
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2144,r13		! source line 2144
	mov	"\0\0AS",r10
!   _temp_1339 = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-312]
!   virtPage = _temp_1339 div 8192		(int)
	load	[r14+-312],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-376]
! ASSIGNMENT STATEMENT...
	mov	2145,r13		! source line 2145
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-372]
! IF STATEMENT...
	mov	2146,r13		! source line 2146
	mov	"\0\0IF",r10
!   if virtPage >= 0 then goto _Label_1344		(int)
	load	[r14+-376],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1344
	jmp	_Label_1340
_Label_1344:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1348 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-296]
!   Data Move: _temp_1347 = *_temp_1348  (sizeInBytes=4)
	load	[r14+-296],r1
	load	[r1],r1
	store	r1,[r14+-300]
!   if intIsZero (_temp_1347) then goto _runtimeErrorNullPointer
	load	[r14+-300],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1349 = _temp_1347 + 32
	load	[r14+-300],r1
	add	r1,32,r1
	store	r1,[r14+-292]
!   _temp_1350 = _temp_1349 + 4
	load	[r14+-292],r1
	add	r1,4,r1
	store	r1,[r14+-288]
!   Data Move: _temp_1346 = *_temp_1350  (sizeInBytes=4)
	load	[r14+-288],r1
	load	[r1],r1
	store	r1,[r14+-304]
!   _temp_1345 = _temp_1346 - 1		(int)
	load	[r14+-304],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-308]
!   if virtPage <= _temp_1345 then goto _Label_1343		(int)
	load	[r14+-376],r1
	load	[r14+-308],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1343
	jmp	_Label_1340
_Label_1343:
	mov	2146,r13		! source line 2146
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1353 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-280]
!   Data Move: _temp_1352 = *_temp_1353  (sizeInBytes=4)
	load	[r14+-280],r1
	load	[r1],r1
	store	r1,[r14+-284]
!   if intIsZero (_temp_1352) then goto _runtimeErrorNullPointer
	load	[r14+-284],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1354 = _temp_1352 + 32
	load	[r14+-284],r1
	add	r1,32,r1
	store	r1,[r14+-276]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-376],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-276],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1351  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-21]
!   _temp_1355 = _temp_1351 XOR 0		(bool)
	loadb	[r14+-21],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-20]
!   if _temp_1355 then goto _Label_1342 else goto _Label_1340
	loadb	[r14+-20],r1
	cmp	r1,0
	be	_Label_1340
	jmp	_Label_1342
_Label_1342:
	mov	2146,r13		! source line 2146
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1358 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-268]
!   Data Move: _temp_1357 = *_temp_1358  (sizeInBytes=4)
	load	[r14+-268],r1
	load	[r1],r1
	store	r1,[r14+-272]
!   if intIsZero (_temp_1357) then goto _runtimeErrorNullPointer
	load	[r14+-272],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1359 = _temp_1357 + 32
	load	[r14+-272],r1
	add	r1,32,r1
	store	r1,[r14+-264]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-376],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-264],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_1356  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-19]
!   _temp_1360 = _temp_1356 XOR 0		(bool)
	loadb	[r14+-19],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-18]
!   if _temp_1360 then goto _Label_1341 else goto _Label_1340
	loadb	[r14+-18],r1
	cmp	r1,0
	be	_Label_1340
	jmp	_Label_1341
_Label_1340:
! THEN...
	mov	2147,r13		! source line 2147
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2147,r13		! source line 2147
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,424,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1341:
! ASSIGNMENT STATEMENT...
	mov	2149,r13		! source line 2149
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+-372],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-380]
! ASSIGNMENT STATEMENT...
	mov	2150,r13		! source line 2150
	mov	"\0\0AS",r10
	mov	2150,r13		! source line 2150
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1363 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-252]
!   Data Move: _temp_1362 = *_temp_1363  (sizeInBytes=4)
	load	[r14+-252],r1
	load	[r1],r1
	store	r1,[r14+-256]
!   if intIsZero (_temp_1362) then goto _runtimeErrorNullPointer
	load	[r14+-256],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1364 = _temp_1362 + 32
	load	[r14+-256],r1
	add	r1,32,r1
	store	r1,[r14+-248]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-376],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-248],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1361  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-260]
!   destAddr = _temp_1361 + offset		(int)
	load	[r14+-260],r1
	load	[r14+-380],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-400]
! ASSIGNMENT STATEMENT...
	mov	2151,r13		! source line 2151
	mov	"\0\0AS",r10
!   if intIsZero (destAddr) then goto _runtimeErrorNullPointer
	load	[r14+-400],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: c = *destAddr  (sizeInBytes=1)
	load	[r14+-400],r1
	loadb	[r1],r1
	storeb	r1,[r14+-23]
! IF STATEMENT...
	mov	2152,r13		! source line 2152
	mov	"\0\0IF",r10
!   _temp_1367 = c XOR 10		(bool)
	loadb	[r14+-23],r1
	mov	10,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-17]
!   if _temp_1367 then goto _Label_1366 else goto _Label_1365
	loadb	[r14+-17],r1
	cmp	r1,0
	be	_Label_1365
	jmp	_Label_1366
_Label_1365:
! THEN...
	mov	2153,r13		! source line 2153
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2153,r13		! source line 2153
	mov	"\0\0SE",r10
!   _temp_1368 = &_P_Kernel_serialDriver
	set	_P_Kernel_serialDriver,r1
	store	r1,[r14+-244]
!   Prepare Argument: offset=12  value=13  sizeInBytes=1
	mov	13,r1
	storeb	r1,[r15+4]
!   Send message PutChar
	load	[r14+-244],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_1366:
! SEND STATEMENT...
	mov	2155,r13		! source line 2155
	mov	"\0\0SE",r10
!   _temp_1369 = &_P_Kernel_serialDriver
	set	_P_Kernel_serialDriver,r1
	store	r1,[r14+-240]
!   Prepare Argument: offset=12  value=c  sizeInBytes=1
	loadb	[r14+-23],r1
	storeb	r1,[r15+4]
!   Send message PutChar
	load	[r14+-240],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2156,r13		! source line 2156
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-384],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-384]
! ASSIGNMENT STATEMENT...
	mov	2157,r13		! source line 2157
	mov	"\0\0AS",r10
!   buffer = buffer + 1		(int)
	load	[r14+12],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+12]
!   Increment the FOR-LOOP index variable and jump back
_Label_1335:
!   i = i + 1
	load	[r14+-408],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-408]
	jmp	_Label_1333
! END FOR
_Label_1336:
! RETURN STATEMENT...
	mov	2159,r13		! source line 2159
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-384],r1
	store	r1,[r14+8]
	add	r15,424,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_1370
_Label_1325:
! ELSE...
	mov	2162,r13		! source line 2162
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	2162,r13		! source line 2162
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1372 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-232]
!   Data Move: _temp_1371 = *_temp_1372  (sizeInBytes=4)
	load	[r14+-232],r1
	load	[r1],r1
	store	r1,[r14+-236]
!   if intIsZero (_temp_1371) then goto _runtimeErrorNullPointer
	load	[r14+-236],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1373 = _temp_1371 + 124
	load	[r14+-236],r1
	add	r1,124,r1
	store	r1,[r14+-228]
!   Move address of _temp_1373 [fileDesc ] into _temp_1374
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
!   Data Move: openFile = *_temp_1374  (sizeInBytes=4)
	load	[r14+-224],r1
	load	[r1],r1
	store	r1,[r14+-404]
! ASSIGNMENT STATEMENT...
	mov	2163,r13		! source line 2163
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-372]
! ASSIGNMENT STATEMENT...
	mov	2164,r13		! source line 2164
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+-372],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-376]
! ASSIGNMENT STATEMENT...
	mov	2165,r13		! source line 2165
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+-372],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-380]
! ASSIGNMENT STATEMENT...
	mov	2166,r13		! source line 2166
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-384]
! ASSIGNMENT STATEMENT...
	mov	2167,r13		! source line 2167
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-404],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1375 = openFile + 16
	load	[r14+-404],r1
	add	r1,16,r1
	store	r1,[r14+-220]
!   Data Move: nextPosInFile = *_temp_1375  (sizeInBytes=4)
	load	[r14+-220],r1
	load	[r1],r1
	store	r1,[r14+-388]
! ASSIGNMENT STATEMENT...
	mov	2168,r13		! source line 2168
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-404],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1377 = openFile + 20
	load	[r14+-404],r1
	add	r1,20,r1
	store	r1,[r14+-212]
!   Data Move: _temp_1376 = *_temp_1377  (sizeInBytes=4)
	load	[r14+-212],r1
	load	[r1],r1
	store	r1,[r14+-216]
!   if intIsZero (_temp_1376) then goto _runtimeErrorNullPointer
	load	[r14+-216],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1378 = _temp_1376 + 24
	load	[r14+-216],r1
	add	r1,24,r1
	store	r1,[r14+-208]
!   Data Move: fileSize = *_temp_1378  (sizeInBytes=4)
	load	[r14+-208],r1
	load	[r1],r1
	store	r1,[r14+-396]
! WHILE STATEMENT...
	mov	2169,r13		! source line 2169
	mov	"\0\0WH",r10
_Label_1379:
!	jmp	_Label_1380
_Label_1380:
	mov	2169,r13		! source line 2169
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2170,r13		! source line 2170
	mov	"\0\0AS",r10
!   currentChunkSize = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-380],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-392]
! IF STATEMENT...
	mov	2171,r13		! source line 2171
	mov	"\0\0IF",r10
!   _temp_1384 = nextPosInFile + currentChunkSize		(int)
	load	[r14+-388],r1
	load	[r14+-392],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-204]
!   if _temp_1384 <= fileSize then goto _Label_1383		(int)
	load	[r14+-204],r1
	load	[r14+-396],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1383
!	jmp	_Label_1382
_Label_1382:
! THEN...
	mov	2172,r13		! source line 2172
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2172,r13		! source line 2172
	mov	"\0\0AS",r10
!   currentChunkSize = fileSize - nextPosInFile		(int)
	load	[r14+-396],r1
	load	[r14+-388],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-392]
! END IF...
_Label_1383:
! IF STATEMENT...
	mov	2174,r13		! source line 2174
	mov	"\0\0IF",r10
!   _temp_1387 = copiedSoFar + currentChunkSize		(int)
	load	[r14+-384],r1
	load	[r14+-392],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-200]
!   if _temp_1387 <= sizeInBytes then goto _Label_1386		(int)
	load	[r14+-200],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1386
!	jmp	_Label_1385
_Label_1385:
! THEN...
	mov	2175,r13		! source line 2175
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2175,r13		! source line 2175
	mov	"\0\0AS",r10
!   currentChunkSize = sizeInBytes - copiedSoFar		(int)
	load	[r14+16],r1
	load	[r14+-384],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-392]
! END IF...
_Label_1386:
! IF STATEMENT...
	mov	2177,r13		! source line 2177
	mov	"\0\0IF",r10
!   if currentChunkSize > 0 then goto _Label_1389		(int)
	load	[r14+-392],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1389
!	jmp	_Label_1388
_Label_1388:
! THEN...
	mov	2178,r13		! source line 2178
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2178,r13		! source line 2178
	mov	"\0\0BR",r10
	jmp	_Label_1381
! END IF...
_Label_1389:
! IF STATEMENT...
	mov	2180,r13		! source line 2180
	mov	"\0\0IF",r10
!   if virtPage >= 0 then goto _Label_1394		(int)
	load	[r14+-376],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1394
	jmp	_Label_1390
_Label_1394:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1398 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-184]
!   Data Move: _temp_1397 = *_temp_1398  (sizeInBytes=4)
	load	[r14+-184],r1
	load	[r1],r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_1397) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1399 = _temp_1397 + 32
	load	[r14+-188],r1
	add	r1,32,r1
	store	r1,[r14+-180]
!   _temp_1400 = _temp_1399 + 4
	load	[r14+-180],r1
	add	r1,4,r1
	store	r1,[r14+-176]
!   Data Move: _temp_1396 = *_temp_1400  (sizeInBytes=4)
	load	[r14+-176],r1
	load	[r1],r1
	store	r1,[r14+-192]
!   _temp_1395 = _temp_1396 - 1		(int)
	load	[r14+-192],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-196]
!   if virtPage <= _temp_1395 then goto _Label_1393		(int)
	load	[r14+-376],r1
	load	[r14+-196],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1393
	jmp	_Label_1390
_Label_1393:
	mov	2180,r13		! source line 2180
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1403 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-168]
!   Data Move: _temp_1402 = *_temp_1403  (sizeInBytes=4)
	load	[r14+-168],r1
	load	[r1],r1
	store	r1,[r14+-172]
!   if intIsZero (_temp_1402) then goto _runtimeErrorNullPointer
	load	[r14+-172],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1404 = _temp_1402 + 32
	load	[r14+-172],r1
	add	r1,32,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-376],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-164],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1401  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-16]
!   _temp_1405 = _temp_1401 XOR 0		(bool)
	loadb	[r14+-16],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-15]
!   if _temp_1405 then goto _Label_1392 else goto _Label_1390
	loadb	[r14+-15],r1
	cmp	r1,0
	be	_Label_1390
	jmp	_Label_1392
_Label_1392:
	mov	2180,r13		! source line 2180
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1408 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-156]
!   Data Move: _temp_1407 = *_temp_1408  (sizeInBytes=4)
	load	[r14+-156],r1
	load	[r1],r1
	store	r1,[r14+-160]
!   if intIsZero (_temp_1407) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1409 = _temp_1407 + 32
	load	[r14+-160],r1
	add	r1,32,r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-376],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-152],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_1406  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-14]
!   _temp_1410 = _temp_1406 XOR 0		(bool)
	loadb	[r14+-14],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-13]
!   if _temp_1410 then goto _Label_1391 else goto _Label_1390
	loadb	[r14+-13],r1
	cmp	r1,0
	be	_Label_1390
	jmp	_Label_1391
_Label_1390:
! THEN...
	mov	2181,r13		! source line 2181
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2181,r13		! source line 2181
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,424,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1391:
! ASSIGNMENT STATEMENT...
	mov	2183,r13		! source line 2183
	mov	"\0\0AS",r10
!   nextPosInFile = nextPosInFile + currentChunkSize		(int)
	load	[r14+-388],r1
	load	[r14+-392],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-388]
! ASSIGNMENT STATEMENT...
	mov	2184,r13		! source line 2184
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + currentChunkSize		(int)
	load	[r14+-384],r1
	load	[r14+-392],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-384]
! ASSIGNMENT STATEMENT...
	mov	2185,r13		! source line 2185
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-376],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-376]
! ASSIGNMENT STATEMENT...
	mov	2186,r13		! source line 2186
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-380]
! IF STATEMENT...
	mov	2187,r13		! source line 2187
	mov	"\0\0IF",r10
!   if copiedSoFar != sizeInBytes then goto _Label_1412		(int)
	load	[r14+-384],r1
	load	[r14+16],r2
	cmp	r1,r2
	bne	_Label_1412
!	jmp	_Label_1411
_Label_1411:
! THEN...
	mov	2188,r13		! source line 2188
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2188,r13		! source line 2188
	mov	"\0\0BR",r10
	jmp	_Label_1381
! END IF...
_Label_1412:
! END WHILE...
	jmp	_Label_1379
_Label_1381:
! ASSIGNMENT STATEMENT...
	mov	2193,r13		! source line 2193
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1414 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-144]
!   Data Move: _temp_1413 = *_temp_1414  (sizeInBytes=4)
	load	[r14+-144],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   if intIsZero (_temp_1413) then goto _runtimeErrorNullPointer
	load	[r14+-148],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1415 = _temp_1413 + 124
	load	[r14+-148],r1
	add	r1,124,r1
	store	r1,[r14+-140]
!   Move address of _temp_1415 [fileDesc ] into _temp_1416
!     make sure index expr is >= 0
	load	[r14+8],r2
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
!   Data Move: openFile = *_temp_1416  (sizeInBytes=4)
	load	[r14+-136],r1
	load	[r1],r1
	store	r1,[r14+-404]
! ASSIGNMENT STATEMENT...
	mov	2194,r13		! source line 2194
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-372]
! ASSIGNMENT STATEMENT...
	mov	2195,r13		! source line 2195
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+-372],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-376]
! ASSIGNMENT STATEMENT...
	mov	2196,r13		! source line 2196
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+-372],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-380]
! ASSIGNMENT STATEMENT...
	mov	2197,r13		! source line 2197
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-384]
! ASSIGNMENT STATEMENT...
	mov	2198,r13		! source line 2198
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-404],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1417 = openFile + 16
	load	[r14+-404],r1
	add	r1,16,r1
	store	r1,[r14+-132]
!   Data Move: nextPosInFile = *_temp_1417  (sizeInBytes=4)
	load	[r14+-132],r1
	load	[r1],r1
	store	r1,[r14+-388]
! ASSIGNMENT STATEMENT...
	mov	2199,r13		! source line 2199
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-404],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1419 = openFile + 20
	load	[r14+-404],r1
	add	r1,20,r1
	store	r1,[r14+-124]
!   Data Move: _temp_1418 = *_temp_1419  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   if intIsZero (_temp_1418) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1420 = _temp_1418 + 24
	load	[r14+-128],r1
	add	r1,24,r1
	store	r1,[r14+-120]
!   Data Move: fileSize = *_temp_1420  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-396]
! WHILE STATEMENT...
	mov	2201,r13		! source line 2201
	mov	"\0\0WH",r10
_Label_1421:
!	jmp	_Label_1422
_Label_1422:
	mov	2201,r13		! source line 2201
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2202,r13		! source line 2202
	mov	"\0\0AS",r10
!   currentChunkSize = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-380],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-392]
! IF STATEMENT...
	mov	2203,r13		! source line 2203
	mov	"\0\0IF",r10
!   _temp_1426 = nextPosInFile + currentChunkSize		(int)
	load	[r14+-388],r1
	load	[r14+-392],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
!   if _temp_1426 <= fileSize then goto _Label_1425		(int)
	load	[r14+-116],r1
	load	[r14+-396],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1425
!	jmp	_Label_1424
_Label_1424:
! THEN...
	mov	2204,r13		! source line 2204
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2204,r13		! source line 2204
	mov	"\0\0AS",r10
!   currentChunkSize = fileSize - nextPosInFile		(int)
	load	[r14+-396],r1
	load	[r14+-388],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-392]
! END IF...
_Label_1425:
! IF STATEMENT...
	mov	2206,r13		! source line 2206
	mov	"\0\0IF",r10
!   _temp_1429 = copiedSoFar + currentChunkSize		(int)
	load	[r14+-384],r1
	load	[r14+-392],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
!   if _temp_1429 <= sizeInBytes then goto _Label_1428		(int)
	load	[r14+-112],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1428
!	jmp	_Label_1427
_Label_1427:
! THEN...
	mov	2207,r13		! source line 2207
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2207,r13		! source line 2207
	mov	"\0\0AS",r10
!   currentChunkSize = sizeInBytes - copiedSoFar		(int)
	load	[r14+16],r1
	load	[r14+-384],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-392]
! END IF...
_Label_1428:
! IF STATEMENT...
	mov	2209,r13		! source line 2209
	mov	"\0\0IF",r10
!   if currentChunkSize > 0 then goto _Label_1431		(int)
	load	[r14+-392],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1431
!	jmp	_Label_1430
_Label_1430:
! THEN...
	mov	2210,r13		! source line 2210
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2210,r13		! source line 2210
	mov	"\0\0BR",r10
	jmp	_Label_1423
! END IF...
_Label_1431:
! IF STATEMENT...
	mov	2212,r13		! source line 2212
	mov	"\0\0IF",r10
!   if virtPage >= 0 then goto _Label_1436		(int)
	load	[r14+-376],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1436
	jmp	_Label_1432
_Label_1436:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1440 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-96]
!   Data Move: _temp_1439 = *_temp_1440  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_1439) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1441 = _temp_1439 + 32
	load	[r14+-100],r1
	add	r1,32,r1
	store	r1,[r14+-92]
!   _temp_1442 = _temp_1441 + 4
	load	[r14+-92],r1
	add	r1,4,r1
	store	r1,[r14+-88]
!   Data Move: _temp_1438 = *_temp_1442  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   _temp_1437 = _temp_1438 - 1		(int)
	load	[r14+-104],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-108]
!   if virtPage <= _temp_1437 then goto _Label_1435		(int)
	load	[r14+-376],r1
	load	[r14+-108],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1435
	jmp	_Label_1432
_Label_1435:
	mov	2212,r13		! source line 2212
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1445 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-80]
!   Data Move: _temp_1444 = *_temp_1445  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if intIsZero (_temp_1444) then goto _runtimeErrorNullPointer
	load	[r14+-84],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1446 = _temp_1444 + 32
	load	[r14+-84],r1
	add	r1,32,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-376],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1443  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-12]
!   _temp_1447 = _temp_1443 XOR 0		(bool)
	loadb	[r14+-12],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-11]
!   if _temp_1447 then goto _Label_1434 else goto _Label_1432
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_1432
	jmp	_Label_1434
_Label_1434:
	mov	2212,r13		! source line 2212
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1450 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-68]
!   Data Move: _temp_1449 = *_temp_1450  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_1449) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1451 = _temp_1449 + 32
	load	[r14+-72],r1
	add	r1,32,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-376],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_1448  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   _temp_1452 = _temp_1448 XOR 0		(bool)
	loadb	[r14+-10],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_1452 then goto _Label_1433 else goto _Label_1432
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1432
	jmp	_Label_1433
_Label_1432:
! THEN...
	mov	2213,r13		! source line 2213
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2213,r13		! source line 2213
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,424,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1433:
! SEND STATEMENT...
	mov	2215,r13		! source line 2215
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1454 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-56]
!   Data Move: _temp_1453 = *_temp_1454  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_1453) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1455 = _temp_1453 + 32
	load	[r14+-60],r1
	add	r1,32,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-376],r1
	store	r1,[r15+4]
!   Send message SetReferenced
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,44,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2216,r13		! source line 2216
	mov	"\0\0AS",r10
	mov	2216,r13		! source line 2216
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1458 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-40]
!   Data Move: _temp_1457 = *_temp_1458  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_1457) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1459 = _temp_1457 + 32
	load	[r14+-44],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-376],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1456  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
!   destAddr = _temp_1456 + offset		(int)
	load	[r14+-48],r1
	load	[r14+-380],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-400]
! ASSIGNMENT STATEMENT...
	mov	2217,r13		! source line 2217
	mov	"\0\0AS",r10
	mov	2217,r13		! source line 2217
	mov	"\0\0SE",r10
!   _temp_1460 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=openFile  sizeInBytes=4
	load	[r14+-404],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=destAddr  sizeInBytes=4
	load	[r14+-400],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=nextPosInFile  sizeInBytes=4
	load	[r14+-388],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=currentChunkSize  sizeInBytes=4
	load	[r14+-392],r1
	store	r1,[r15+16]
!   Send message SynchWrite
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=readSuccess  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-22]
! ASSIGNMENT STATEMENT...
	mov	2218,r13		! source line 2218
	mov	"\0\0AS",r10
!   nextPosInFile = nextPosInFile + currentChunkSize		(int)
	load	[r14+-388],r1
	load	[r14+-392],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-388]
! ASSIGNMENT STATEMENT...
	mov	2219,r13		! source line 2219
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + currentChunkSize		(int)
	load	[r14+-384],r1
	load	[r14+-392],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-384]
! ASSIGNMENT STATEMENT...
	mov	2220,r13		! source line 2220
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-376],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-376]
! ASSIGNMENT STATEMENT...
	mov	2221,r13		! source line 2221
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-380]
! IF STATEMENT...
	mov	2222,r13		! source line 2222
	mov	"\0\0IF",r10
!   if copiedSoFar != sizeInBytes then goto _Label_1462		(int)
	load	[r14+-384],r1
	load	[r14+16],r2
	cmp	r1,r2
	bne	_Label_1462
!	jmp	_Label_1461
_Label_1461:
! THEN...
	mov	2223,r13		! source line 2223
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2223,r13		! source line 2223
	mov	"\0\0BR",r10
	jmp	_Label_1423
! END IF...
_Label_1462:
! END WHILE...
	jmp	_Label_1421
_Label_1423:
! ASSIGNMENT STATEMENT...
	mov	2227,r13		! source line 2227
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-404],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1463 = openFile + 16
	load	[r14+-404],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1463 = nextPosInFile  (sizeInBytes=4)
	load	[r14+-388],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2228,r13		! source line 2228
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-384],r1
	store	r1,[r14+8]
	add	r15,424,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1370:
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Write:
	.word	_sourceFileName
	.word	_Label_1464
	.word	12		! total size of parameters
	.word	420		! frame size = 420
	.word	_Label_1465
	.word	8
	.word	4
	.word	_Label_1466
	.word	12
	.word	4
	.word	_Label_1467
	.word	16
	.word	4
	.word	_Label_1468
	.word	-28
	.word	4
	.word	_Label_1469
	.word	-32
	.word	4
	.word	_Label_1470
	.word	-36
	.word	4
	.word	_Label_1471
	.word	-40
	.word	4
	.word	_Label_1472
	.word	-44
	.word	4
	.word	_Label_1473
	.word	-48
	.word	4
	.word	_Label_1474
	.word	-52
	.word	4
	.word	_Label_1475
	.word	-56
	.word	4
	.word	_Label_1476
	.word	-60
	.word	4
	.word	_Label_1477
	.word	-9
	.word	1
	.word	_Label_1478
	.word	-64
	.word	4
	.word	_Label_1479
	.word	-68
	.word	4
	.word	_Label_1480
	.word	-72
	.word	4
	.word	_Label_1481
	.word	-10
	.word	1
	.word	_Label_1482
	.word	-11
	.word	1
	.word	_Label_1483
	.word	-76
	.word	4
	.word	_Label_1484
	.word	-80
	.word	4
	.word	_Label_1485
	.word	-84
	.word	4
	.word	_Label_1486
	.word	-12
	.word	1
	.word	_Label_1487
	.word	-88
	.word	4
	.word	_Label_1488
	.word	-92
	.word	4
	.word	_Label_1489
	.word	-96
	.word	4
	.word	_Label_1490
	.word	-100
	.word	4
	.word	_Label_1491
	.word	-104
	.word	4
	.word	_Label_1492
	.word	-108
	.word	4
	.word	_Label_1493
	.word	-112
	.word	4
	.word	_Label_1494
	.word	-116
	.word	4
	.word	_Label_1495
	.word	-120
	.word	4
	.word	_Label_1496
	.word	-124
	.word	4
	.word	_Label_1497
	.word	-128
	.word	4
	.word	_Label_1498
	.word	-132
	.word	4
	.word	_Label_1499
	.word	-136
	.word	4
	.word	_Label_1500
	.word	-140
	.word	4
	.word	_Label_1501
	.word	-144
	.word	4
	.word	_Label_1502
	.word	-148
	.word	4
	.word	_Label_1503
	.word	-13
	.word	1
	.word	_Label_1504
	.word	-152
	.word	4
	.word	_Label_1505
	.word	-156
	.word	4
	.word	_Label_1506
	.word	-160
	.word	4
	.word	_Label_1507
	.word	-14
	.word	1
	.word	_Label_1508
	.word	-15
	.word	1
	.word	_Label_1509
	.word	-164
	.word	4
	.word	_Label_1510
	.word	-168
	.word	4
	.word	_Label_1511
	.word	-172
	.word	4
	.word	_Label_1512
	.word	-16
	.word	1
	.word	_Label_1513
	.word	-176
	.word	4
	.word	_Label_1514
	.word	-180
	.word	4
	.word	_Label_1515
	.word	-184
	.word	4
	.word	_Label_1516
	.word	-188
	.word	4
	.word	_Label_1517
	.word	-192
	.word	4
	.word	_Label_1518
	.word	-196
	.word	4
	.word	_Label_1519
	.word	-200
	.word	4
	.word	_Label_1520
	.word	-204
	.word	4
	.word	_Label_1521
	.word	-208
	.word	4
	.word	_Label_1522
	.word	-212
	.word	4
	.word	_Label_1523
	.word	-216
	.word	4
	.word	_Label_1524
	.word	-220
	.word	4
	.word	_Label_1525
	.word	-224
	.word	4
	.word	_Label_1526
	.word	-228
	.word	4
	.word	_Label_1527
	.word	-232
	.word	4
	.word	_Label_1528
	.word	-236
	.word	4
	.word	_Label_1529
	.word	-240
	.word	4
	.word	_Label_1530
	.word	-244
	.word	4
	.word	_Label_1531
	.word	-17
	.word	1
	.word	_Label_1532
	.word	-248
	.word	4
	.word	_Label_1533
	.word	-252
	.word	4
	.word	_Label_1534
	.word	-256
	.word	4
	.word	_Label_1535
	.word	-260
	.word	4
	.word	_Label_1536
	.word	-18
	.word	1
	.word	_Label_1537
	.word	-264
	.word	4
	.word	_Label_1538
	.word	-268
	.word	4
	.word	_Label_1539
	.word	-272
	.word	4
	.word	_Label_1540
	.word	-19
	.word	1
	.word	_Label_1541
	.word	-20
	.word	1
	.word	_Label_1542
	.word	-276
	.word	4
	.word	_Label_1543
	.word	-280
	.word	4
	.word	_Label_1544
	.word	-284
	.word	4
	.word	_Label_1545
	.word	-21
	.word	1
	.word	_Label_1546
	.word	-288
	.word	4
	.word	_Label_1547
	.word	-292
	.word	4
	.word	_Label_1548
	.word	-296
	.word	4
	.word	_Label_1549
	.word	-300
	.word	4
	.word	_Label_1550
	.word	-304
	.word	4
	.word	_Label_1551
	.word	-308
	.word	4
	.word	_Label_1552
	.word	-312
	.word	4
	.word	_Label_1553
	.word	-316
	.word	4
	.word	_Label_1554
	.word	-320
	.word	4
	.word	_Label_1555
	.word	-324
	.word	4
	.word	_Label_1556
	.word	-328
	.word	4
	.word	_Label_1557
	.word	-332
	.word	4
	.word	_Label_1558
	.word	-336
	.word	4
	.word	_Label_1559
	.word	-340
	.word	4
	.word	_Label_1560
	.word	-344
	.word	4
	.word	_Label_1561
	.word	-348
	.word	4
	.word	_Label_1562
	.word	-352
	.word	4
	.word	_Label_1563
	.word	-356
	.word	4
	.word	_Label_1564
	.word	-360
	.word	4
	.word	_Label_1565
	.word	-364
	.word	4
	.word	_Label_1566
	.word	-368
	.word	4
	.word	_Label_1567
	.word	-372
	.word	4
	.word	_Label_1568
	.word	-376
	.word	4
	.word	_Label_1569
	.word	-380
	.word	4
	.word	_Label_1570
	.word	-384
	.word	4
	.word	_Label_1571
	.word	-388
	.word	4
	.word	_Label_1572
	.word	-392
	.word	4
	.word	_Label_1573
	.word	-396
	.word	4
	.word	_Label_1574
	.word	-400
	.word	4
	.word	_Label_1575
	.word	-404
	.word	4
	.word	_Label_1576
	.word	-22
	.word	1
	.word	_Label_1577
	.word	-408
	.word	4
	.word	_Label_1578
	.word	-23
	.word	1
	.word	0
_Label_1464:
	.ascii	"Handle_Sys_Write\0"
	.align
_Label_1465:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_1466:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_1467:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_1468:
	.byte	'?'
	.ascii	"_temp_1463\0"
	.align
_Label_1469:
	.byte	'?'
	.ascii	"_temp_1460\0"
	.align
_Label_1470:
	.byte	'?'
	.ascii	"_temp_1459\0"
	.align
_Label_1471:
	.byte	'?'
	.ascii	"_temp_1458\0"
	.align
_Label_1472:
	.byte	'?'
	.ascii	"_temp_1457\0"
	.align
_Label_1473:
	.byte	'?'
	.ascii	"_temp_1456\0"
	.align
_Label_1474:
	.byte	'?'
	.ascii	"_temp_1455\0"
	.align
_Label_1475:
	.byte	'?'
	.ascii	"_temp_1454\0"
	.align
_Label_1476:
	.byte	'?'
	.ascii	"_temp_1453\0"
	.align
_Label_1477:
	.byte	'C'
	.ascii	"_temp_1452\0"
	.align
_Label_1478:
	.byte	'?'
	.ascii	"_temp_1451\0"
	.align
_Label_1479:
	.byte	'?'
	.ascii	"_temp_1450\0"
	.align
_Label_1480:
	.byte	'?'
	.ascii	"_temp_1449\0"
	.align
_Label_1481:
	.byte	'C'
	.ascii	"_temp_1448\0"
	.align
_Label_1482:
	.byte	'C'
	.ascii	"_temp_1447\0"
	.align
_Label_1483:
	.byte	'?'
	.ascii	"_temp_1446\0"
	.align
_Label_1484:
	.byte	'?'
	.ascii	"_temp_1445\0"
	.align
_Label_1485:
	.byte	'?'
	.ascii	"_temp_1444\0"
	.align
_Label_1486:
	.byte	'C'
	.ascii	"_temp_1443\0"
	.align
_Label_1487:
	.byte	'?'
	.ascii	"_temp_1442\0"
	.align
_Label_1488:
	.byte	'?'
	.ascii	"_temp_1441\0"
	.align
_Label_1489:
	.byte	'?'
	.ascii	"_temp_1440\0"
	.align
_Label_1490:
	.byte	'?'
	.ascii	"_temp_1439\0"
	.align
_Label_1491:
	.byte	'?'
	.ascii	"_temp_1438\0"
	.align
_Label_1492:
	.byte	'?'
	.ascii	"_temp_1437\0"
	.align
_Label_1493:
	.byte	'?'
	.ascii	"_temp_1429\0"
	.align
_Label_1494:
	.byte	'?'
	.ascii	"_temp_1426\0"
	.align
_Label_1495:
	.byte	'?'
	.ascii	"_temp_1420\0"
	.align
_Label_1496:
	.byte	'?'
	.ascii	"_temp_1419\0"
	.align
_Label_1497:
	.byte	'?'
	.ascii	"_temp_1418\0"
	.align
_Label_1498:
	.byte	'?'
	.ascii	"_temp_1417\0"
	.align
_Label_1499:
	.byte	'?'
	.ascii	"_temp_1416\0"
	.align
_Label_1500:
	.byte	'?'
	.ascii	"_temp_1415\0"
	.align
_Label_1501:
	.byte	'?'
	.ascii	"_temp_1414\0"
	.align
_Label_1502:
	.byte	'?'
	.ascii	"_temp_1413\0"
	.align
_Label_1503:
	.byte	'C'
	.ascii	"_temp_1410\0"
	.align
_Label_1504:
	.byte	'?'
	.ascii	"_temp_1409\0"
	.align
_Label_1505:
	.byte	'?'
	.ascii	"_temp_1408\0"
	.align
_Label_1506:
	.byte	'?'
	.ascii	"_temp_1407\0"
	.align
_Label_1507:
	.byte	'C'
	.ascii	"_temp_1406\0"
	.align
_Label_1508:
	.byte	'C'
	.ascii	"_temp_1405\0"
	.align
_Label_1509:
	.byte	'?'
	.ascii	"_temp_1404\0"
	.align
_Label_1510:
	.byte	'?'
	.ascii	"_temp_1403\0"
	.align
_Label_1511:
	.byte	'?'
	.ascii	"_temp_1402\0"
	.align
_Label_1512:
	.byte	'C'
	.ascii	"_temp_1401\0"
	.align
_Label_1513:
	.byte	'?'
	.ascii	"_temp_1400\0"
	.align
_Label_1514:
	.byte	'?'
	.ascii	"_temp_1399\0"
	.align
_Label_1515:
	.byte	'?'
	.ascii	"_temp_1398\0"
	.align
_Label_1516:
	.byte	'?'
	.ascii	"_temp_1397\0"
	.align
_Label_1517:
	.byte	'?'
	.ascii	"_temp_1396\0"
	.align
_Label_1518:
	.byte	'?'
	.ascii	"_temp_1395\0"
	.align
_Label_1519:
	.byte	'?'
	.ascii	"_temp_1387\0"
	.align
_Label_1520:
	.byte	'?'
	.ascii	"_temp_1384\0"
	.align
_Label_1521:
	.byte	'?'
	.ascii	"_temp_1378\0"
	.align
_Label_1522:
	.byte	'?'
	.ascii	"_temp_1377\0"
	.align
_Label_1523:
	.byte	'?'
	.ascii	"_temp_1376\0"
	.align
_Label_1524:
	.byte	'?'
	.ascii	"_temp_1375\0"
	.align
_Label_1525:
	.byte	'?'
	.ascii	"_temp_1374\0"
	.align
_Label_1526:
	.byte	'?'
	.ascii	"_temp_1373\0"
	.align
_Label_1527:
	.byte	'?'
	.ascii	"_temp_1372\0"
	.align
_Label_1528:
	.byte	'?'
	.ascii	"_temp_1371\0"
	.align
_Label_1529:
	.byte	'?'
	.ascii	"_temp_1369\0"
	.align
_Label_1530:
	.byte	'?'
	.ascii	"_temp_1368\0"
	.align
_Label_1531:
	.byte	'C'
	.ascii	"_temp_1367\0"
	.align
_Label_1532:
	.byte	'?'
	.ascii	"_temp_1364\0"
	.align
_Label_1533:
	.byte	'?'
	.ascii	"_temp_1363\0"
	.align
_Label_1534:
	.byte	'?'
	.ascii	"_temp_1362\0"
	.align
_Label_1535:
	.byte	'?'
	.ascii	"_temp_1361\0"
	.align
_Label_1536:
	.byte	'C'
	.ascii	"_temp_1360\0"
	.align
_Label_1537:
	.byte	'?'
	.ascii	"_temp_1359\0"
	.align
_Label_1538:
	.byte	'?'
	.ascii	"_temp_1358\0"
	.align
_Label_1539:
	.byte	'?'
	.ascii	"_temp_1357\0"
	.align
_Label_1540:
	.byte	'C'
	.ascii	"_temp_1356\0"
	.align
_Label_1541:
	.byte	'C'
	.ascii	"_temp_1355\0"
	.align
_Label_1542:
	.byte	'?'
	.ascii	"_temp_1354\0"
	.align
_Label_1543:
	.byte	'?'
	.ascii	"_temp_1353\0"
	.align
_Label_1544:
	.byte	'?'
	.ascii	"_temp_1352\0"
	.align
_Label_1545:
	.byte	'C'
	.ascii	"_temp_1351\0"
	.align
_Label_1546:
	.byte	'?'
	.ascii	"_temp_1350\0"
	.align
_Label_1547:
	.byte	'?'
	.ascii	"_temp_1349\0"
	.align
_Label_1548:
	.byte	'?'
	.ascii	"_temp_1348\0"
	.align
_Label_1549:
	.byte	'?'
	.ascii	"_temp_1347\0"
	.align
_Label_1550:
	.byte	'?'
	.ascii	"_temp_1346\0"
	.align
_Label_1551:
	.byte	'?'
	.ascii	"_temp_1345\0"
	.align
_Label_1552:
	.byte	'?'
	.ascii	"_temp_1339\0"
	.align
_Label_1553:
	.byte	'?'
	.ascii	"_temp_1338\0"
	.align
_Label_1554:
	.byte	'?'
	.ascii	"_temp_1337\0"
	.align
_Label_1555:
	.byte	'?'
	.ascii	"_temp_1332\0"
	.align
_Label_1556:
	.byte	'?'
	.ascii	"_temp_1331\0"
	.align
_Label_1557:
	.byte	'?'
	.ascii	"_temp_1330\0"
	.align
_Label_1558:
	.byte	'?'
	.ascii	"_temp_1329\0"
	.align
_Label_1559:
	.byte	'?'
	.ascii	"_temp_1328\0"
	.align
_Label_1560:
	.byte	'?'
	.ascii	"_temp_1327\0"
	.align
_Label_1561:
	.byte	'?'
	.ascii	"_temp_1326\0"
	.align
_Label_1562:
	.byte	'?'
	.ascii	"_temp_1323\0"
	.align
_Label_1563:
	.byte	'?'
	.ascii	"_temp_1322\0"
	.align
_Label_1564:
	.byte	'?'
	.ascii	"_temp_1321\0"
	.align
_Label_1565:
	.byte	'?'
	.ascii	"_temp_1320\0"
	.align
_Label_1566:
	.byte	'?'
	.ascii	"_temp_1319\0"
	.align
_Label_1567:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1568:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_1569:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_1570:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_1571:
	.byte	'I'
	.ascii	"nextPosInFile\0"
	.align
_Label_1572:
	.byte	'I'
	.ascii	"currentChunkSize\0"
	.align
_Label_1573:
	.byte	'I'
	.ascii	"fileSize\0"
	.align
_Label_1574:
	.byte	'I'
	.ascii	"destAddr\0"
	.align
_Label_1575:
	.byte	'P'
	.ascii	"openFile\0"
	.align
_Label_1576:
	.byte	'B'
	.ascii	"readSuccess\0"
	.align
_Label_1577:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1578:
	.byte	'C'
	.ascii	"c\0"
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
_Label_4349:
	push	r0
	sub	r1,1,r1
	bne	_Label_4349
	mov	2234,r13		! source line 2234
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2238,r13		! source line 2238
	mov	"\0\0SE",r10
!   _temp_1579 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-180]
!   _temp_1580 = _temp_1579 + 4
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
	mov	2240,r13		! source line 2240
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1591 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-160]
!   Data Move: _temp_1590 = *_temp_1591  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-164]
!   if intIsZero (_temp_1590) then goto _runtimeErrorNullPointer
	load	[r14+-164],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1592 = _temp_1590 + 124
	load	[r14+-164],r1
	add	r1,124,r1
	store	r1,[r14+-156]
!   Move address of _temp_1592 [fileDesc ] into _temp_1593
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
!   Data Move: _temp_1589 = *_temp_1593  (sizeInBytes=4)
	load	[r14+-152],r1
	load	[r1],r1
	store	r1,[r14+-168]
!   if intIsZero (_temp_1589) then goto _runtimeErrorNullPointer
	load	[r14+-168],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1594 = _temp_1589 + 12
	load	[r14+-168],r1
	add	r1,12,r1
	store	r1,[r14+-148]
!   Data Move: _temp_1588 = *_temp_1594  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r1],r1
	store	r1,[r14+-172]
!   if _temp_1588 != 2 then goto _Label_1587		(int)
	load	[r14+-172],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1587
	jmp	_Label_1581
_Label_1587:
!   if fileDesc >= 0 then goto _Label_1586		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1586
	jmp	_Label_1581
_Label_1586:
!   if fileDesc <= 9 then goto _Label_1585		(int)
	load	[r14+8],r1
	mov	9,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1585
	jmp	_Label_1581
_Label_1585:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1597 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-136]
!   Data Move: _temp_1596 = *_temp_1597  (sizeInBytes=4)
	load	[r14+-136],r1
	load	[r1],r1
	store	r1,[r14+-140]
!   if intIsZero (_temp_1596) then goto _runtimeErrorNullPointer
	load	[r14+-140],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1598 = _temp_1596 + 124
	load	[r14+-140],r1
	add	r1,124,r1
	store	r1,[r14+-132]
!   Move address of _temp_1598 [fileDesc ] into _temp_1599
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
!   Data Move: _temp_1595 = *_temp_1599  (sizeInBytes=4)
	load	[r14+-128],r1
	load	[r1],r1
	store	r1,[r14+-144]
!   if intIsZero (_temp_1595) then goto _Label_1581
	load	[r14+-144],r1
	cmp	r1,r0
	be	_Label_1581
!	jmp	_Label_1584
_Label_1584:
!   if newCurrentPos >= -1 then goto _Label_1583		(int)
	load	[r14+12],r1
	mov	-1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1583
	jmp	_Label_1581
_Label_1583:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1604 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-108]
!   Data Move: _temp_1603 = *_temp_1604  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if intIsZero (_temp_1603) then goto _runtimeErrorNullPointer
	load	[r14+-112],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1605 = _temp_1603 + 124
	load	[r14+-112],r1
	add	r1,124,r1
	store	r1,[r14+-104]
!   Move address of _temp_1605 [fileDesc ] into _temp_1606
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
!   Data Move: _temp_1602 = *_temp_1606  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if intIsZero (_temp_1602) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1607 = _temp_1602 + 20
	load	[r14+-116],r1
	add	r1,20,r1
	store	r1,[r14+-96]
!   Data Move: _temp_1601 = *_temp_1607  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-120]
!   if intIsZero (_temp_1601) then goto _runtimeErrorNullPointer
	load	[r14+-120],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1608 = _temp_1601 + 24
	load	[r14+-120],r1
	add	r1,24,r1
	store	r1,[r14+-92]
!   Data Move: _temp_1600 = *_temp_1608  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-124]
!   if newCurrentPos <= _temp_1600 then goto _Label_1582		(int)
	load	[r14+12],r1
	load	[r14+-124],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1582
!	jmp	_Label_1581
_Label_1581:
! THEN...
	mov	2241,r13		! source line 2241
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2241,r13		! source line 2241
	mov	"\0\0SE",r10
!   _temp_1609 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-88]
!   _temp_1610 = _temp_1609 + 4
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
	mov	2242,r13		! source line 2242
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,184,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1582:
! ASSIGNMENT STATEMENT...
	mov	2244,r13		! source line 2244
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1612 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-76]
!   Data Move: _temp_1611 = *_temp_1612  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_1611) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1613 = _temp_1611 + 124
	load	[r14+-80],r1
	add	r1,124,r1
	store	r1,[r14+-72]
!   Move address of _temp_1613 [fileDesc ] into _temp_1614
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
!   Data Move: openFile = *_temp_1614  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-184]
! IF STATEMENT...
	mov	2245,r13		! source line 2245
	mov	"\0\0IF",r10
!   if newCurrentPos != -1 then goto _Label_1616		(int)
	load	[r14+12],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_1616
!	jmp	_Label_1615
_Label_1615:
! THEN...
	mov	2246,r13		! source line 2246
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2246,r13		! source line 2246
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-184],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1617 = openFile + 16
	load	[r14+-184],r1
	add	r1,16,r1
	store	r1,[r14+-64]
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-184],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1620 = openFile + 20
	load	[r14+-184],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_1619 = *_temp_1620  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_1619) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1621 = _temp_1619 + 24
	load	[r14+-56],r1
	add	r1,24,r1
	store	r1,[r14+-48]
!   Data Move: _temp_1618 = *_temp_1621  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   Data Move: *_temp_1617 = _temp_1618  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r14+-64],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2247,r13		! source line 2247
	mov	"\0\0SE",r10
!   _temp_1622 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-44]
!   _temp_1623 = _temp_1622 + 4
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
	mov	2248,r13		! source line 2248
	mov	"\0\0RE",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-184],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1626 = openFile + 20
	load	[r14+-184],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: _temp_1625 = *_temp_1626  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_1625) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1627 = _temp_1625 + 24
	load	[r14+-32],r1
	add	r1,24,r1
	store	r1,[r14+-24]
!   Data Move: _temp_1624 = *_temp_1627  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   ReturnResult: _temp_1624  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,184,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1616:
! ASSIGNMENT STATEMENT...
	mov	2250,r13		! source line 2250
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-184],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1628 = openFile + 16
	load	[r14+-184],r1
	add	r1,16,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1628 = newCurrentPos  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2251,r13		! source line 2251
	mov	"\0\0SE",r10
!   _temp_1629 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-16]
!   _temp_1630 = _temp_1629 + 4
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
	mov	2252,r13		! source line 2252
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
	.word	_Label_1631
	.word	8		! total size of parameters
	.word	180		! frame size = 180
	.word	_Label_1632
	.word	8
	.word	4
	.word	_Label_1633
	.word	12
	.word	4
	.word	_Label_1634
	.word	-12
	.word	4
	.word	_Label_1635
	.word	-16
	.word	4
	.word	_Label_1636
	.word	-20
	.word	4
	.word	_Label_1637
	.word	-24
	.word	4
	.word	_Label_1638
	.word	-28
	.word	4
	.word	_Label_1639
	.word	-32
	.word	4
	.word	_Label_1640
	.word	-36
	.word	4
	.word	_Label_1641
	.word	-40
	.word	4
	.word	_Label_1642
	.word	-44
	.word	4
	.word	_Label_1643
	.word	-48
	.word	4
	.word	_Label_1644
	.word	-52
	.word	4
	.word	_Label_1645
	.word	-56
	.word	4
	.word	_Label_1646
	.word	-60
	.word	4
	.word	_Label_1647
	.word	-64
	.word	4
	.word	_Label_1648
	.word	-68
	.word	4
	.word	_Label_1649
	.word	-72
	.word	4
	.word	_Label_1650
	.word	-76
	.word	4
	.word	_Label_1651
	.word	-80
	.word	4
	.word	_Label_1652
	.word	-84
	.word	4
	.word	_Label_1653
	.word	-88
	.word	4
	.word	_Label_1654
	.word	-92
	.word	4
	.word	_Label_1655
	.word	-96
	.word	4
	.word	_Label_1656
	.word	-100
	.word	4
	.word	_Label_1657
	.word	-104
	.word	4
	.word	_Label_1658
	.word	-108
	.word	4
	.word	_Label_1659
	.word	-112
	.word	4
	.word	_Label_1660
	.word	-116
	.word	4
	.word	_Label_1661
	.word	-120
	.word	4
	.word	_Label_1662
	.word	-124
	.word	4
	.word	_Label_1663
	.word	-128
	.word	4
	.word	_Label_1664
	.word	-132
	.word	4
	.word	_Label_1665
	.word	-136
	.word	4
	.word	_Label_1666
	.word	-140
	.word	4
	.word	_Label_1667
	.word	-144
	.word	4
	.word	_Label_1668
	.word	-148
	.word	4
	.word	_Label_1669
	.word	-152
	.word	4
	.word	_Label_1670
	.word	-156
	.word	4
	.word	_Label_1671
	.word	-160
	.word	4
	.word	_Label_1672
	.word	-164
	.word	4
	.word	_Label_1673
	.word	-168
	.word	4
	.word	_Label_1674
	.word	-172
	.word	4
	.word	_Label_1675
	.word	-176
	.word	4
	.word	_Label_1676
	.word	-180
	.word	4
	.word	_Label_1677
	.word	-184
	.word	4
	.word	0
_Label_1631:
	.ascii	"Handle_Sys_Seek\0"
	.align
_Label_1632:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_1633:
	.byte	'I'
	.ascii	"newCurrentPos\0"
	.align
_Label_1634:
	.byte	'?'
	.ascii	"_temp_1630\0"
	.align
_Label_1635:
	.byte	'?'
	.ascii	"_temp_1629\0"
	.align
_Label_1636:
	.byte	'?'
	.ascii	"_temp_1628\0"
	.align
_Label_1637:
	.byte	'?'
	.ascii	"_temp_1627\0"
	.align
_Label_1638:
	.byte	'?'
	.ascii	"_temp_1626\0"
	.align
_Label_1639:
	.byte	'?'
	.ascii	"_temp_1625\0"
	.align
_Label_1640:
	.byte	'?'
	.ascii	"_temp_1624\0"
	.align
_Label_1641:
	.byte	'?'
	.ascii	"_temp_1623\0"
	.align
_Label_1642:
	.byte	'?'
	.ascii	"_temp_1622\0"
	.align
_Label_1643:
	.byte	'?'
	.ascii	"_temp_1621\0"
	.align
_Label_1644:
	.byte	'?'
	.ascii	"_temp_1620\0"
	.align
_Label_1645:
	.byte	'?'
	.ascii	"_temp_1619\0"
	.align
_Label_1646:
	.byte	'?'
	.ascii	"_temp_1618\0"
	.align
_Label_1647:
	.byte	'?'
	.ascii	"_temp_1617\0"
	.align
_Label_1648:
	.byte	'?'
	.ascii	"_temp_1614\0"
	.align
_Label_1649:
	.byte	'?'
	.ascii	"_temp_1613\0"
	.align
_Label_1650:
	.byte	'?'
	.ascii	"_temp_1612\0"
	.align
_Label_1651:
	.byte	'?'
	.ascii	"_temp_1611\0"
	.align
_Label_1652:
	.byte	'?'
	.ascii	"_temp_1610\0"
	.align
_Label_1653:
	.byte	'?'
	.ascii	"_temp_1609\0"
	.align
_Label_1654:
	.byte	'?'
	.ascii	"_temp_1608\0"
	.align
_Label_1655:
	.byte	'?'
	.ascii	"_temp_1607\0"
	.align
_Label_1656:
	.byte	'?'
	.ascii	"_temp_1606\0"
	.align
_Label_1657:
	.byte	'?'
	.ascii	"_temp_1605\0"
	.align
_Label_1658:
	.byte	'?'
	.ascii	"_temp_1604\0"
	.align
_Label_1659:
	.byte	'?'
	.ascii	"_temp_1603\0"
	.align
_Label_1660:
	.byte	'?'
	.ascii	"_temp_1602\0"
	.align
_Label_1661:
	.byte	'?'
	.ascii	"_temp_1601\0"
	.align
_Label_1662:
	.byte	'?'
	.ascii	"_temp_1600\0"
	.align
_Label_1663:
	.byte	'?'
	.ascii	"_temp_1599\0"
	.align
_Label_1664:
	.byte	'?'
	.ascii	"_temp_1598\0"
	.align
_Label_1665:
	.byte	'?'
	.ascii	"_temp_1597\0"
	.align
_Label_1666:
	.byte	'?'
	.ascii	"_temp_1596\0"
	.align
_Label_1667:
	.byte	'?'
	.ascii	"_temp_1595\0"
	.align
_Label_1668:
	.byte	'?'
	.ascii	"_temp_1594\0"
	.align
_Label_1669:
	.byte	'?'
	.ascii	"_temp_1593\0"
	.align
_Label_1670:
	.byte	'?'
	.ascii	"_temp_1592\0"
	.align
_Label_1671:
	.byte	'?'
	.ascii	"_temp_1591\0"
	.align
_Label_1672:
	.byte	'?'
	.ascii	"_temp_1590\0"
	.align
_Label_1673:
	.byte	'?'
	.ascii	"_temp_1589\0"
	.align
_Label_1674:
	.byte	'?'
	.ascii	"_temp_1588\0"
	.align
_Label_1675:
	.byte	'?'
	.ascii	"_temp_1580\0"
	.align
_Label_1676:
	.byte	'?'
	.ascii	"_temp_1579\0"
	.align
_Label_1677:
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
_Label_4350:
	push	r0
	sub	r1,1,r1
	bne	_Label_4350
	mov	2257,r13		! source line 2257
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2258,r13		! source line 2258
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1683 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-100]
!   Data Move: _temp_1682 = *_temp_1683  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if intIsZero (_temp_1682) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1684 = _temp_1682 + 124
	load	[r14+-104],r1
	add	r1,124,r1
	store	r1,[r14+-96]
!   Move address of _temp_1684 [fileDesc ] into _temp_1685
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
!   Data Move: _temp_1681 = *_temp_1685  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_1681) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1686 = _temp_1681 + 12
	load	[r14+-108],r1
	add	r1,12,r1
	store	r1,[r14+-88]
!   Data Move: _temp_1680 = *_temp_1686  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if _temp_1680 != 2 then goto _Label_1679		(int)
	load	[r14+-112],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1679
!	jmp	_Label_1678
_Label_1678:
! THEN...
	mov	2259,r13		! source line 2259
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2259,r13		! source line 2259
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1688 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-80]
!   Data Move: _temp_1687 = *_temp_1688  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if intIsZero (_temp_1687) then goto _runtimeErrorNullPointer
	load	[r14+-84],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1689 = _temp_1687 + 124
	load	[r14+-84],r1
	add	r1,124,r1
	store	r1,[r14+-76]
!   Move address of _temp_1689 [fileDesc ] into _temp_1690
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
!   Data Move: *_temp_1690 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-72],r2
	store	r1,[r2]
	jmp	_Label_1691
_Label_1679:
! ELSE...
	mov	2261,r13		! source line 2261
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	2261,r13		! source line 2261
	mov	"\0\0IF",r10
!   if fileDesc >= 0 then goto _Label_1695		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1695
	jmp	_Label_1692
_Label_1695:
!   if fileDesc <= 9 then goto _Label_1694		(int)
	load	[r14+8],r1
	mov	9,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1694
	jmp	_Label_1692
_Label_1694:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1698 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-60]
!   Data Move: _temp_1697 = *_temp_1698  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_1697) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1699 = _temp_1697 + 124
	load	[r14+-64],r1
	add	r1,124,r1
	store	r1,[r14+-56]
!   Move address of _temp_1699 [fileDesc ] into _temp_1700
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
!   Data Move: _temp_1696 = *_temp_1700  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_1696) then goto _Label_1692
	load	[r14+-68],r1
	cmp	r1,r0
	be	_Label_1692
	jmp	_Label_1693
_Label_1692:
	jmp	_Label_1701
_Label_1693:
! ELSE...
	mov	2264,r13		! source line 2264
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	2264,r13		! source line 2264
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1704 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-40]
!   Data Move: _temp_1703 = *_temp_1704  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_1703) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1705 = _temp_1703 + 124
	load	[r14+-44],r1
	add	r1,124,r1
	store	r1,[r14+-36]
!   Move address of _temp_1705 [fileDesc ] into _temp_1706
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
!   Data Move: _temp_1702 = *_temp_1706  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_1707 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_1702  sizeInBytes=4
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
	mov	2265,r13		! source line 2265
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1709 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_1708 = *_temp_1709  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_1708) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1710 = _temp_1708 + 124
	load	[r14+-24],r1
	add	r1,124,r1
	store	r1,[r14+-16]
!   Move address of _temp_1710 [fileDesc ] into _temp_1711
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
!   Data Move: *_temp_1711 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-12],r2
	store	r1,[r2]
! END IF...
_Label_1701:
! END IF...
_Label_1691:
! RETURN STATEMENT...
	mov	2258,r13		! source line 2258
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
	.word	_Label_1712
	.word	4		! total size of parameters
	.word	112		! frame size = 112
	.word	_Label_1713
	.word	8
	.word	4
	.word	_Label_1714
	.word	-12
	.word	4
	.word	_Label_1715
	.word	-16
	.word	4
	.word	_Label_1716
	.word	-20
	.word	4
	.word	_Label_1717
	.word	-24
	.word	4
	.word	_Label_1718
	.word	-28
	.word	4
	.word	_Label_1719
	.word	-32
	.word	4
	.word	_Label_1720
	.word	-36
	.word	4
	.word	_Label_1721
	.word	-40
	.word	4
	.word	_Label_1722
	.word	-44
	.word	4
	.word	_Label_1723
	.word	-48
	.word	4
	.word	_Label_1724
	.word	-52
	.word	4
	.word	_Label_1725
	.word	-56
	.word	4
	.word	_Label_1726
	.word	-60
	.word	4
	.word	_Label_1727
	.word	-64
	.word	4
	.word	_Label_1728
	.word	-68
	.word	4
	.word	_Label_1729
	.word	-72
	.word	4
	.word	_Label_1730
	.word	-76
	.word	4
	.word	_Label_1731
	.word	-80
	.word	4
	.word	_Label_1732
	.word	-84
	.word	4
	.word	_Label_1733
	.word	-88
	.word	4
	.word	_Label_1734
	.word	-92
	.word	4
	.word	_Label_1735
	.word	-96
	.word	4
	.word	_Label_1736
	.word	-100
	.word	4
	.word	_Label_1737
	.word	-104
	.word	4
	.word	_Label_1738
	.word	-108
	.word	4
	.word	_Label_1739
	.word	-112
	.word	4
	.word	0
_Label_1712:
	.ascii	"Handle_Sys_Close\0"
	.align
_Label_1713:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_1714:
	.byte	'?'
	.ascii	"_temp_1711\0"
	.align
_Label_1715:
	.byte	'?'
	.ascii	"_temp_1710\0"
	.align
_Label_1716:
	.byte	'?'
	.ascii	"_temp_1709\0"
	.align
_Label_1717:
	.byte	'?'
	.ascii	"_temp_1708\0"
	.align
_Label_1718:
	.byte	'?'
	.ascii	"_temp_1707\0"
	.align
_Label_1719:
	.byte	'?'
	.ascii	"_temp_1706\0"
	.align
_Label_1720:
	.byte	'?'
	.ascii	"_temp_1705\0"
	.align
_Label_1721:
	.byte	'?'
	.ascii	"_temp_1704\0"
	.align
_Label_1722:
	.byte	'?'
	.ascii	"_temp_1703\0"
	.align
_Label_1723:
	.byte	'?'
	.ascii	"_temp_1702\0"
	.align
_Label_1724:
	.byte	'?'
	.ascii	"_temp_1700\0"
	.align
_Label_1725:
	.byte	'?'
	.ascii	"_temp_1699\0"
	.align
_Label_1726:
	.byte	'?'
	.ascii	"_temp_1698\0"
	.align
_Label_1727:
	.byte	'?'
	.ascii	"_temp_1697\0"
	.align
_Label_1728:
	.byte	'?'
	.ascii	"_temp_1696\0"
	.align
_Label_1729:
	.byte	'?'
	.ascii	"_temp_1690\0"
	.align
_Label_1730:
	.byte	'?'
	.ascii	"_temp_1689\0"
	.align
_Label_1731:
	.byte	'?'
	.ascii	"_temp_1688\0"
	.align
_Label_1732:
	.byte	'?'
	.ascii	"_temp_1687\0"
	.align
_Label_1733:
	.byte	'?'
	.ascii	"_temp_1686\0"
	.align
_Label_1734:
	.byte	'?'
	.ascii	"_temp_1685\0"
	.align
_Label_1735:
	.byte	'?'
	.ascii	"_temp_1684\0"
	.align
_Label_1736:
	.byte	'?'
	.ascii	"_temp_1683\0"
	.align
_Label_1737:
	.byte	'?'
	.ascii	"_temp_1682\0"
	.align
_Label_1738:
	.byte	'?'
	.ascii	"_temp_1681\0"
	.align
_Label_1739:
	.byte	'?'
	.ascii	"_temp_1680\0"
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
_Label_4351:
	push	r0
	sub	r1,1,r1
	bne	_Label_4351
	mov	2861,r13		! source line 2861
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2863,r13		! source line 2863
	mov	"\0\0AS",r10
!   from = fromPtr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2864,r13		! source line 2864
	mov	"\0\0AS",r10
!   dest = destPtr		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	2865,r13		! source line 2865
	mov	"\0\0AS",r10
!   if intIsZero (dest) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (from) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1740 = *from  (sizeInBytes=1)
	load	[r14+-40],r1
	loadb	[r1],r1
	storeb	r1,[r14+-12]
!   Data Move: *dest = _temp_1740  (sizeInBytes=1)
	loadb	[r14+-12],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2866,r13		! source line 2866
	mov	"\0\0AS",r10
!   _temp_1741 = dest + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   if intIsZero (_temp_1741) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1743 = from + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   if intIsZero (_temp_1743) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1742 = *_temp_1743  (sizeInBytes=1)
	load	[r14+-32],r1
	loadb	[r1],r1
	storeb	r1,[r14+-11]
!   Data Move: *_temp_1741 = _temp_1742  (sizeInBytes=1)
	loadb	[r14+-11],r1
	load	[r14+-36],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2867,r13		! source line 2867
	mov	"\0\0AS",r10
!   _temp_1744 = dest + 2		(int)
	load	[r14+-44],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   if intIsZero (_temp_1744) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1746 = from + 2		(int)
	load	[r14+-40],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   if intIsZero (_temp_1746) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1745 = *_temp_1746  (sizeInBytes=1)
	load	[r14+-24],r1
	loadb	[r1],r1
	storeb	r1,[r14+-10]
!   Data Move: *_temp_1744 = _temp_1745  (sizeInBytes=1)
	loadb	[r14+-10],r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2868,r13		! source line 2868
	mov	"\0\0AS",r10
!   _temp_1747 = dest + 3		(int)
	load	[r14+-44],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   if intIsZero (_temp_1747) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1749 = from + 3		(int)
	load	[r14+-40],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
!   if intIsZero (_temp_1749) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1748 = *_temp_1749  (sizeInBytes=1)
	load	[r14+-16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *_temp_1747 = _temp_1748  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! RETURN STATEMENT...
	mov	2868,r13		! source line 2868
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
	.word	_Label_1750
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1751
	.word	8
	.word	4
	.word	_Label_1752
	.word	12
	.word	4
	.word	_Label_1753
	.word	-16
	.word	4
	.word	_Label_1754
	.word	-9
	.word	1
	.word	_Label_1755
	.word	-20
	.word	4
	.word	_Label_1756
	.word	-24
	.word	4
	.word	_Label_1757
	.word	-10
	.word	1
	.word	_Label_1758
	.word	-28
	.word	4
	.word	_Label_1759
	.word	-32
	.word	4
	.word	_Label_1760
	.word	-11
	.word	1
	.word	_Label_1761
	.word	-36
	.word	4
	.word	_Label_1762
	.word	-12
	.word	1
	.word	_Label_1763
	.word	-40
	.word	4
	.word	_Label_1764
	.word	-44
	.word	4
	.word	0
_Label_1750:
	.ascii	"copyUnalignedWord\0"
	.align
_Label_1751:
	.byte	'P'
	.ascii	"destPtr\0"
	.align
_Label_1752:
	.byte	'P'
	.ascii	"fromPtr\0"
	.align
_Label_1753:
	.byte	'?'
	.ascii	"_temp_1749\0"
	.align
_Label_1754:
	.byte	'C'
	.ascii	"_temp_1748\0"
	.align
_Label_1755:
	.byte	'?'
	.ascii	"_temp_1747\0"
	.align
_Label_1756:
	.byte	'?'
	.ascii	"_temp_1746\0"
	.align
_Label_1757:
	.byte	'C'
	.ascii	"_temp_1745\0"
	.align
_Label_1758:
	.byte	'?'
	.ascii	"_temp_1744\0"
	.align
_Label_1759:
	.byte	'?'
	.ascii	"_temp_1743\0"
	.align
_Label_1760:
	.byte	'C'
	.ascii	"_temp_1742\0"
	.align
_Label_1761:
	.byte	'?'
	.ascii	"_temp_1741\0"
	.align
_Label_1762:
	.byte	'C'
	.ascii	"_temp_1740\0"
	.align
_Label_1763:
	.byte	'P'
	.ascii	"from\0"
	.align
_Label_1764:
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
_Label_4352:
	push	r0
	sub	r1,1,r1
	bne	_Label_4352
	mov	2871,r13		! source line 2871
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1766 = fcb + 12
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-12]
!   Data Move: _temp_1765 = *_temp_1766  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1765  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2872,r13		! source line 2872
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	2873,r13		! source line 2873
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	2873,r13		! source line 2873
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
	.word	_Label_1767
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1768
	.word	8
	.word	4
	.word	_Label_1769
	.word	-12
	.word	4
	.word	_Label_1770
	.word	-16
	.word	4
	.word	0
_Label_1767:
	.ascii	"printFCB\0"
	.align
_Label_1768:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_1769:
	.byte	'?'
	.ascii	"_temp_1766\0"
	.align
_Label_1770:
	.byte	'?'
	.ascii	"_temp_1765\0"
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
_Label_4353:
	push	r0
	sub	r1,1,r1
	bne	_Label_4353
	mov	2876,r13		! source line 2876
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1771 = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1771  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2877,r13		! source line 2877
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1772 = open		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1772  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2878,r13		! source line 2878
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1773 = _StringConst_43
	set	_StringConst_43,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1773  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2879,r13		! source line 2879
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2880,r13		! source line 2880
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
	mov	2880,r13		! source line 2880
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
	.word	_Label_1774
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1775
	.word	8
	.word	4
	.word	_Label_1776
	.word	-12
	.word	4
	.word	_Label_1777
	.word	-16
	.word	4
	.word	_Label_1778
	.word	-20
	.word	4
	.word	0
_Label_1774:
	.ascii	"printOpen\0"
	.align
_Label_1775:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_1776:
	.byte	'?'
	.ascii	"_temp_1773\0"
	.align
_Label_1777:
	.byte	'?'
	.ascii	"_temp_1772\0"
	.align
_Label_1778:
	.byte	'?'
	.ascii	"_temp_1771\0"
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
_Label_4354:
	push	r0
	sub	r1,1,r1
	bne	_Label_4354
	mov	2923,r13		! source line 2923
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2924,r13		! source line 2924
	mov	"\0\0SE",r10
!   _temp_1779 = &_P_Kernel_serialDriver
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
	mov	2924,r13		! source line 2924
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
	.word	_Label_1780
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_1781
	.word	8
	.word	4
	.word	_Label_1782
	.word	-12
	.word	4
	.word	0
_Label_1780:
	.ascii	"SerialHandlerFunction\0"
	.align
_Label_1781:
	.byte	'I'
	.ascii	"ignore\0"
	.align
_Label_1782:
	.byte	'?'
	.ascii	"_temp_1779\0"
	.align
! 
! ===============  CLASS SerialDriver  ===============
! 
! Dispatch Table:
! 
_P_Kernel_SerialDriver:
	.word	_Label_1783
	jmp	_Method_P_Kernel_SerialDriver_1	! 4:	Init
	jmp	_Method_P_Kernel_SerialDriver_2	! 8:	PutChar
	jmp	_Method_P_Kernel_SerialDriver_3	! 12:	GetChar
	jmp	_Method_P_Kernel_SerialDriver_4	! 16:	SerialHandler
	.word	0
! 
! Class descriptor:
! 
_Label_1783:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1784
	.word	_sourceFileName
	.word	132		! line number
	.word	4308		! size of instances, in bytes
	.word	_P_Kernel_SerialDriver
	.word	_P_System_Object
	.word	0
_Label_1784:
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
_Label_4355:
	push	r0
	sub	r1,1,r1
	bne	_Label_4355
	mov	2931,r13		! source line 2931
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1785 = _StringConst_44
	set	_StringConst_44,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=_temp_1785  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+0]
!   Call the function
	mov	2934,r13		! source line 2934
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2935,r13		! source line 2935
	mov	"\0\0AS",r10
!   serial_status_word_address = 16776960		(4 bytes)
	set	16776960,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	2936,r13		! source line 2936
	mov	"\0\0AS",r10
!   serial_data_word_address = 16776964		(4 bytes)
	set	16776964,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! ASSIGNMENT STATEMENT...
	mov	2937,r13		! source line 2937
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
	mov	2938,r13		! source line 2938
	mov	"\0\0SE",r10
!   _temp_1787 = &serialLock
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
	mov	2939,r13		! source line 2939
	mov	"\0\0AS",r10
!   _temp_1788 = &getBuffer
	load	[r14+8],r1
	add	r1,32,r1
	store	r1,[r14+-112]
!   NEW ARRAY Constructor...
!   _temp_1790 = &_temp_1789
	add	r14,-108,r1
	store	r1,[r14+-92]
!   _temp_1790 = _temp_1790 + 4
	load	[r14+-92],r1
	add	r1,4,r1
	store	r1,[r14+-92]
!   Next value...
	mov	10,r1
	store	r1,[r14+-88]
_Label_1792:
!   Data Move: *_temp_1790 = 97  (sizeInBytes=1)
	mov	97,r1
	load	[r14+-92],r2
	storeb	r1,[r2]
!   _temp_1790 = _temp_1790 + 1
	load	[r14+-92],r1
	add	r1,1,r1
	store	r1,[r14+-92]
!   _temp_1791 = _temp_1791 + -1
	load	[r14+-88],r1
	add	r1,-1,r1
	store	r1,[r14+-88]
!   if intNotZero (_temp_1791) then goto _Label_1792
	load	[r14+-88],r1
	cmp	r1,r0
	bne	_Label_1792
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-108]
!   _temp_1793 = &_temp_1789
	add	r14,-108,r1
	store	r1,[r14+-84]
!   make sure array has size 10
	load	[r14+-112],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_4356
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4356:
!   make sure array has size 10
	load	[r14+-84],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1788 = *_temp_1793  (sizeInBytes=16)
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
	mov	2940,r13		! source line 2940
	mov	"\0\0AS",r10
!   getBufferSize = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+48]
! ASSIGNMENT STATEMENT...
	mov	2941,r13		! source line 2941
	mov	"\0\0AS",r10
!   putBufferSize = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+92]
! ASSIGNMENT STATEMENT...
	mov	2942,r13		! source line 2942
	mov	"\0\0AS",r10
!   getBufferNextIn = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+52]
! ASSIGNMENT STATEMENT...
	mov	2943,r13		! source line 2943
	mov	"\0\0AS",r10
!   getBufferNextOut = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+56]
! ASSIGNMENT STATEMENT...
	mov	2944,r13		! source line 2944
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
	mov	2945,r13		! source line 2945
	mov	"\0\0SE",r10
!   _temp_1795 = &getCharacterAvail
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
	mov	2946,r13		! source line 2946
	mov	"\0\0AS",r10
!   _temp_1796 = &putBuffer
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-72]
!   NEW ARRAY Constructor...
!   _temp_1798 = &_temp_1797
	add	r14,-68,r1
	store	r1,[r14+-52]
!   _temp_1798 = _temp_1798 + 4
	load	[r14+-52],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   Next value...
	mov	10,r1
	store	r1,[r14+-48]
_Label_1800:
!   Data Move: *_temp_1798 = 97  (sizeInBytes=1)
	mov	97,r1
	load	[r14+-52],r2
	storeb	r1,[r2]
!   _temp_1798 = _temp_1798 + 1
	load	[r14+-52],r1
	add	r1,1,r1
	store	r1,[r14+-52]
!   _temp_1799 = _temp_1799 + -1
	load	[r14+-48],r1
	add	r1,-1,r1
	store	r1,[r14+-48]
!   if intNotZero (_temp_1799) then goto _Label_1800
	load	[r14+-48],r1
	cmp	r1,r0
	bne	_Label_1800
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-68]
!   _temp_1801 = &_temp_1797
	add	r14,-68,r1
	store	r1,[r14+-44]
!   make sure array has size 10
	load	[r14+-72],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_4357
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4357:
!   make sure array has size 10
	load	[r14+-44],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1796 = *_temp_1801  (sizeInBytes=16)
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
	mov	2947,r13		! source line 2947
	mov	"\0\0AS",r10
!   putBufferNextIn = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+96]
! ASSIGNMENT STATEMENT...
	mov	2948,r13		! source line 2948
	mov	"\0\0AS",r10
!   putBufferNextOut = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+100]
! ASSIGNMENT STATEMENT...
	mov	2949,r13		! source line 2949
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
	mov	2950,r13		! source line 2950
	mov	"\0\0SE",r10
!   _temp_1803 = &putBufferSem
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
	mov	2951,r13		! source line 2951
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
	mov	2952,r13		! source line 2952
	mov	"\0\0SE",r10
!   _temp_1805 = &serialNeedsAttention
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
	mov	2954,r13		! source line 2954
	mov	"\0\0AS",r10
	mov	2954,r13		! source line 2954
	mov	"\0\0SE",r10
!   _temp_1806 = &_P_Kernel_threadManager
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
	mov	2955,r13		! source line 2955
	mov	"\0\0SE",r10
!   _temp_1807 = _StringConst_45
	set	_StringConst_45,r1
	store	r1,[r14+-20]
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_1807  sizeInBytes=4
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
	mov	2956,r13		! source line 2956
	mov	"\0\0AS",r10
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1808 = newThread + 76
	load	[r14+-128],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1808 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2957,r13		! source line 2957
	mov	"\0\0SE",r10
!   _temp_1809 = _function_187_SerialHandlerFunction
	set	_function_187_SerialHandlerFunction,r1
	store	r1,[r14+-12]
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_1809  sizeInBytes=4
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
	mov	2959,r13		! source line 2959
	mov	"\0\0AS",r10
!   _P_Kernel_serialHasBeenInitialized = 1		(1 byte)
	mov	1,r1
	set	_P_Kernel_serialHasBeenInitialized,r2
	storeb	r1,[r2]
! RETURN STATEMENT...
	mov	2959,r13		! source line 2959
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
	.word	_Label_1810
	.word	4		! total size of parameters
	.word	132		! frame size = 132
	.word	_Label_1811
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1812
	.word	-12
	.word	4
	.word	_Label_1813
	.word	-16
	.word	4
	.word	_Label_1814
	.word	-20
	.word	4
	.word	_Label_1815
	.word	-24
	.word	4
	.word	_Label_1816
	.word	-28
	.word	4
	.word	_Label_1817
	.word	-32
	.word	4
	.word	_Label_1818
	.word	-36
	.word	4
	.word	_Label_1819
	.word	-40
	.word	4
	.word	_Label_1820
	.word	-44
	.word	4
	.word	_Label_1821
	.word	-48
	.word	4
	.word	_Label_1822
	.word	-52
	.word	4
	.word	_Label_1823
	.word	-68
	.word	16
	.word	_Label_1824
	.word	-72
	.word	4
	.word	_Label_1825
	.word	-76
	.word	4
	.word	_Label_1826
	.word	-80
	.word	4
	.word	_Label_1827
	.word	-84
	.word	4
	.word	_Label_1828
	.word	-88
	.word	4
	.word	_Label_1829
	.word	-92
	.word	4
	.word	_Label_1830
	.word	-108
	.word	16
	.word	_Label_1831
	.word	-112
	.word	4
	.word	_Label_1832
	.word	-116
	.word	4
	.word	_Label_1833
	.word	-120
	.word	4
	.word	_Label_1834
	.word	-124
	.word	4
	.word	_Label_1835
	.word	-128
	.word	4
	.word	0
_Label_1810:
	.ascii	"SerialDriver"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1811:
	.ascii	"Pself\0"
	.align
_Label_1812:
	.byte	'?'
	.ascii	"_temp_1809\0"
	.align
_Label_1813:
	.byte	'?'
	.ascii	"_temp_1808\0"
	.align
_Label_1814:
	.byte	'?'
	.ascii	"_temp_1807\0"
	.align
_Label_1815:
	.byte	'?'
	.ascii	"_temp_1806\0"
	.align
_Label_1816:
	.byte	'?'
	.ascii	"_temp_1805\0"
	.align
_Label_1817:
	.byte	'?'
	.ascii	"_temp_1804\0"
	.align
_Label_1818:
	.byte	'?'
	.ascii	"_temp_1803\0"
	.align
_Label_1819:
	.byte	'?'
	.ascii	"_temp_1802\0"
	.align
_Label_1820:
	.byte	'?'
	.ascii	"_temp_1801\0"
	.align
_Label_1821:
	.byte	'?'
	.ascii	"_temp_1799\0"
	.align
_Label_1822:
	.byte	'?'
	.ascii	"_temp_1798\0"
	.align
_Label_1823:
	.byte	'?'
	.ascii	"_temp_1797\0"
	.align
_Label_1824:
	.byte	'?'
	.ascii	"_temp_1796\0"
	.align
_Label_1825:
	.byte	'?'
	.ascii	"_temp_1795\0"
	.align
_Label_1826:
	.byte	'?'
	.ascii	"_temp_1794\0"
	.align
_Label_1827:
	.byte	'?'
	.ascii	"_temp_1793\0"
	.align
_Label_1828:
	.byte	'?'
	.ascii	"_temp_1791\0"
	.align
_Label_1829:
	.byte	'?'
	.ascii	"_temp_1790\0"
	.align
_Label_1830:
	.byte	'?'
	.ascii	"_temp_1789\0"
	.align
_Label_1831:
	.byte	'?'
	.ascii	"_temp_1788\0"
	.align
_Label_1832:
	.byte	'?'
	.ascii	"_temp_1787\0"
	.align
_Label_1833:
	.byte	'?'
	.ascii	"_temp_1786\0"
	.align
_Label_1834:
	.byte	'?'
	.ascii	"_temp_1785\0"
	.align
_Label_1835:
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
_Label_4358:
	push	r0
	sub	r1,1,r1
	bne	_Label_4358
	mov	2962,r13		! source line 2962
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2963,r13		! source line 2963
	mov	"\0\0SE",r10
!   _temp_1836 = &putBufferSem
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
	mov	2964,r13		! source line 2964
	mov	"\0\0SE",r10
!   _temp_1837 = &serialLock
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
	mov	2965,r13		! source line 2965
	mov	"\0\0AS",r10
!   _temp_1838 = &putBuffer
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Move address of _temp_1838 [putBufferNextIn ] into _temp_1839
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
!   Data Move: *_temp_1839 = value  (sizeInBytes=1)
	loadb	[r14+12],r1
	load	[r14+-24],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2966,r13		! source line 2966
	mov	"\0\0AS",r10
!   _temp_1840 = putBufferNextIn + 1		(int)
	load	[r14+8],r1
	load	[r1+96],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   putBufferNextIn = _temp_1840 rem 10		(int)
	load	[r14+-20],r1
	mov	10,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+96]
! ASSIGNMENT STATEMENT...
	mov	2967,r13		! source line 2967
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
	mov	2968,r13		! source line 2968
	mov	"\0\0SE",r10
!   _temp_1841 = &serialLock
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
	mov	2969,r13		! source line 2969
	mov	"\0\0SE",r10
!   _temp_1842 = &serialNeedsAttention
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
	mov	2969,r13		! source line 2969
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
	.word	_Label_1843
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1844
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1845
	.word	12
	.word	1
	.word	_Label_1846
	.word	-12
	.word	4
	.word	_Label_1847
	.word	-16
	.word	4
	.word	_Label_1848
	.word	-20
	.word	4
	.word	_Label_1849
	.word	-24
	.word	4
	.word	_Label_1850
	.word	-28
	.word	4
	.word	_Label_1851
	.word	-32
	.word	4
	.word	_Label_1852
	.word	-36
	.word	4
	.word	0
_Label_1843:
	.ascii	"SerialDriver"
	.ascii	"::"
	.ascii	"PutChar\0"
	.align
_Label_1844:
	.ascii	"Pself\0"
	.align
_Label_1845:
	.byte	'C'
	.ascii	"value\0"
	.align
_Label_1846:
	.byte	'?'
	.ascii	"_temp_1842\0"
	.align
_Label_1847:
	.byte	'?'
	.ascii	"_temp_1841\0"
	.align
_Label_1848:
	.byte	'?'
	.ascii	"_temp_1840\0"
	.align
_Label_1849:
	.byte	'?'
	.ascii	"_temp_1839\0"
	.align
_Label_1850:
	.byte	'?'
	.ascii	"_temp_1838\0"
	.align
_Label_1851:
	.byte	'?'
	.ascii	"_temp_1837\0"
	.align
_Label_1852:
	.byte	'?'
	.ascii	"_temp_1836\0"
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
_Label_4359:
	push	r0
	sub	r1,1,r1
	bne	_Label_4359
	mov	2972,r13		! source line 2972
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2975,r13		! source line 2975
	mov	"\0\0SE",r10
!   _temp_1853 = &serialLock
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
	mov	2976,r13		! source line 2976
	mov	"\0\0WH",r10
_Label_1854:
!   if intIsZero (getBufferSize) then goto _Label_1855
	load	[r14+8],r1
	load	[r1+48],r1
	cmp	r1,r0
	be	_Label_1855
	jmp	_Label_1856
_Label_1855:
	mov	2976,r13		! source line 2976
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2977,r13		! source line 2977
	mov	"\0\0SE",r10
!   _temp_1857 = &serialLock
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-36]
!   _temp_1858 = &getCharacterAvail
	load	[r14+8],r1
	add	r1,60,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_1857  sizeInBytes=4
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
	jmp	_Label_1854
_Label_1856:
! ASSIGNMENT STATEMENT...
	mov	2979,r13		! source line 2979
	mov	"\0\0AS",r10
!   _temp_1859 = &getBuffer
	load	[r14+8],r1
	add	r1,32,r1
	store	r1,[r14+-28]
!   Move address of _temp_1859 [getBufferNextOut ] into _temp_1860
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
!   Data Move: c = *_temp_1860  (sizeInBytes=1)
	load	[r14+-24],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
! ASSIGNMENT STATEMENT...
	mov	2980,r13		! source line 2980
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
	mov	2981,r13		! source line 2981
	mov	"\0\0AS",r10
!   _temp_1861 = getBufferNextOut + 1		(int)
	load	[r14+8],r1
	load	[r1+56],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   getBufferNextOut = _temp_1861 rem 10		(int)
	load	[r14+-20],r1
	mov	10,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+56]
! SEND STATEMENT...
	mov	2982,r13		! source line 2982
	mov	"\0\0SE",r10
!   _temp_1862 = &serialLock
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
	mov	2983,r13		! source line 2983
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
	.word	_Label_1863
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_1864
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1865
	.word	-16
	.word	4
	.word	_Label_1866
	.word	-20
	.word	4
	.word	_Label_1867
	.word	-24
	.word	4
	.word	_Label_1868
	.word	-28
	.word	4
	.word	_Label_1869
	.word	-32
	.word	4
	.word	_Label_1870
	.word	-36
	.word	4
	.word	_Label_1871
	.word	-40
	.word	4
	.word	_Label_1872
	.word	-9
	.word	1
	.word	0
_Label_1863:
	.ascii	"SerialDriver"
	.ascii	"::"
	.ascii	"GetChar\0"
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
	.ascii	"_temp_1853\0"
	.align
_Label_1872:
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
_Label_4360:
	push	r0
	sub	r1,1,r1
	bne	_Label_4360
	mov	2986,r13		! source line 2986
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	2990,r13		! source line 2990
	mov	"\0\0WH",r10
_Label_1873:
!   _temp_1876 = _P_Kernel_serialHasBeenInitialized XOR 0		(bool)
	set	_P_Kernel_serialHasBeenInitialized,r1
	loadb	[r1],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_1876 then goto _Label_1875 else goto _Label_1874
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1874
	jmp	_Label_1875
_Label_1874:
	mov	2990,r13		! source line 2990
	mov	"\0\0WB",r10
! END WHILE...
	jmp	_Label_1873
_Label_1875:
! WHILE STATEMENT...
	mov	2992,r13		! source line 2992
	mov	"\0\0WH",r10
_Label_1877:
!	jmp	_Label_1878
_Label_1878:
	mov	2992,r13		! source line 2992
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2993,r13		! source line 2993
	mov	"\0\0SE",r10
!   _temp_1880 = &serialNeedsAttention
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
	mov	2994,r13		! source line 2994
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
	mov	2996,r13		! source line 2996
	mov	"\0\0IF",r10
!   _temp_1883 = statusReg AND 1		(int)
	load	[r14+-96],r1
	mov	1,r2
	and	r1,r2,r1
	store	r1,[r14+-88]
!   if _temp_1883 <= 0 then goto _Label_1882		(int)
	load	[r14+-88],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1882
!	jmp	_Label_1881
_Label_1881:
! THEN...
	mov	2997,r13		! source line 2997
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2997,r13		! source line 2997
	mov	"\0\0AS",r10
!   if intIsZero (serial_data_word_address) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1884 = *serial_data_word_address  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+8],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   c = intToChar (_temp_1884)
	load	[r14+-84],r1
	storeb	r1,[r14+-10]
! IF STATEMENT...
	mov	2998,r13		! source line 2998
	mov	"\0\0IF",r10
!   if getBufferSize != 10 then goto _Label_1886		(int)
	load	[r14+8],r1
	load	[r1+48],r1
	mov	10,r2
	cmp	r1,r2
	bne	_Label_1886
!	jmp	_Label_1885
_Label_1885:
! THEN...
	mov	2999,r13		! source line 2999
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1887 = _StringConst_46
	set	_StringConst_46,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_1887  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	2999,r13		! source line 2999
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=c  sizeInBytes=1
	loadb	[r14+-10],r1
	storeb	r1,[r15+0]
!   Call the function
	mov	3000,r13		! source line 3000
	mov	"\0\0CE",r10
	call	printChar
! CALL STATEMENT...
!   _temp_1888 = _StringConst_47
	set	_StringConst_47,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1888  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	3001,r13		! source line 3001
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1889
_Label_1886:
! ELSE...
	mov	3003,r13		! source line 3003
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	3003,r13		! source line 3003
	mov	"\0\0SE",r10
!   _temp_1890 = &serialLock
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
	mov	3004,r13		! source line 3004
	mov	"\0\0AS",r10
!   _temp_1891 = &getBuffer
	load	[r14+8],r1
	add	r1,32,r1
	store	r1,[r14+-68]
!   Move address of _temp_1891 [getBufferNextIn ] into _temp_1892
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
!   Data Move: *_temp_1892 = c  (sizeInBytes=1)
	loadb	[r14+-10],r1
	load	[r14+-64],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3005,r13		! source line 3005
	mov	"\0\0AS",r10
!   _temp_1893 = getBufferNextIn + 1		(int)
	load	[r14+8],r1
	load	[r1+52],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   getBufferNextIn = _temp_1893 rem 10		(int)
	load	[r14+-60],r1
	mov	10,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+52]
! ASSIGNMENT STATEMENT...
	mov	3006,r13		! source line 3006
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
	mov	3007,r13		! source line 3007
	mov	"\0\0SE",r10
!   _temp_1894 = &serialLock
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-56]
!   _temp_1895 = &getCharacterAvail
	load	[r14+8],r1
	add	r1,60,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_1894  sizeInBytes=4
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
	mov	3008,r13		! source line 3008
	mov	"\0\0SE",r10
!   _temp_1896 = &serialLock
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
_Label_1889:
! END IF...
_Label_1882:
! IF STATEMENT...
	mov	3012,r13		! source line 3012
	mov	"\0\0IF",r10
!   _temp_1899 = statusReg AND 2		(int)
	load	[r14+-96],r1
	mov	2,r2
	and	r1,r2,r1
	store	r1,[r14+-44]
!   if _temp_1899 <= 0 then goto _Label_1898		(int)
	load	[r14+-44],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1898
!	jmp	_Label_1897
_Label_1897:
! THEN...
	mov	3013,r13		! source line 3013
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	3013,r13		! source line 3013
	mov	"\0\0SE",r10
!   _temp_1900 = &serialLock
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
	mov	3014,r13		! source line 3014
	mov	"\0\0IF",r10
!   if putBufferSize <= 0 then goto _Label_1902		(int)
	load	[r14+8],r1
	load	[r1+92],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1902
!	jmp	_Label_1901
_Label_1901:
! THEN...
	mov	3015,r13		! source line 3015
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	3015,r13		! source line 3015
	mov	"\0\0AS",r10
!   _temp_1903 = &putBuffer
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-36]
!   Move address of _temp_1903 [putBufferNextOut ] into _temp_1904
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
!   Data Move: c = *_temp_1904  (sizeInBytes=1)
	load	[r14+-32],r1
	loadb	[r1],r1
	storeb	r1,[r14+-10]
! ASSIGNMENT STATEMENT...
	mov	3016,r13		! source line 3016
	mov	"\0\0AS",r10
!   _temp_1905 = putBufferNextOut + 1		(int)
	load	[r14+8],r1
	load	[r1+100],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   putBufferNextOut = _temp_1905 rem 10		(int)
	load	[r14+-28],r1
	mov	10,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+100]
! ASSIGNMENT STATEMENT...
	mov	3017,r13		! source line 3017
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
	mov	3018,r13		! source line 3018
	mov	"\0\0AS",r10
!   if intIsZero (serial_data_word_address) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1906 = charToInt (c)
	loadb	[r14+-10],r1
	sll	r1,24,r1
	sra	r1,24,r1
	store	r1,[r14+-24]
!   Data Move: *serial_data_word_address = _temp_1906  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+8],r2
	load	[r2+8],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	3019,r13		! source line 3019
	mov	"\0\0SE",r10
!   _temp_1907 = &putBufferSem
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
_Label_1902:
! SEND STATEMENT...
	mov	3021,r13		! source line 3021
	mov	"\0\0SE",r10
!   _temp_1908 = &serialLock
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
_Label_1898:
! END WHILE...
	jmp	_Label_1877
_Label_1879:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_SerialDriver_4:
	.word	_sourceFileName
	.word	_Label_1909
	.word	4		! total size of parameters
	.word	96		! frame size = 96
	.word	_Label_1910
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1911
	.word	-16
	.word	4
	.word	_Label_1912
	.word	-20
	.word	4
	.word	_Label_1913
	.word	-24
	.word	4
	.word	_Label_1914
	.word	-28
	.word	4
	.word	_Label_1915
	.word	-32
	.word	4
	.word	_Label_1916
	.word	-36
	.word	4
	.word	_Label_1917
	.word	-40
	.word	4
	.word	_Label_1918
	.word	-44
	.word	4
	.word	_Label_1919
	.word	-48
	.word	4
	.word	_Label_1920
	.word	-52
	.word	4
	.word	_Label_1921
	.word	-56
	.word	4
	.word	_Label_1922
	.word	-60
	.word	4
	.word	_Label_1923
	.word	-64
	.word	4
	.word	_Label_1924
	.word	-68
	.word	4
	.word	_Label_1925
	.word	-72
	.word	4
	.word	_Label_1926
	.word	-76
	.word	4
	.word	_Label_1927
	.word	-80
	.word	4
	.word	_Label_1928
	.word	-84
	.word	4
	.word	_Label_1929
	.word	-88
	.word	4
	.word	_Label_1930
	.word	-92
	.word	4
	.word	_Label_1931
	.word	-9
	.word	1
	.word	_Label_1932
	.word	-10
	.word	1
	.word	_Label_1933
	.word	-96
	.word	4
	.word	0
_Label_1909:
	.ascii	"SerialDriver"
	.ascii	"::"
	.ascii	"SerialHandler\0"
	.align
_Label_1910:
	.ascii	"Pself\0"
	.align
_Label_1911:
	.byte	'?'
	.ascii	"_temp_1908\0"
	.align
_Label_1912:
	.byte	'?'
	.ascii	"_temp_1907\0"
	.align
_Label_1913:
	.byte	'?'
	.ascii	"_temp_1906\0"
	.align
_Label_1914:
	.byte	'?'
	.ascii	"_temp_1905\0"
	.align
_Label_1915:
	.byte	'?'
	.ascii	"_temp_1904\0"
	.align
_Label_1916:
	.byte	'?'
	.ascii	"_temp_1903\0"
	.align
_Label_1917:
	.byte	'?'
	.ascii	"_temp_1900\0"
	.align
_Label_1918:
	.byte	'?'
	.ascii	"_temp_1899\0"
	.align
_Label_1919:
	.byte	'?'
	.ascii	"_temp_1896\0"
	.align
_Label_1920:
	.byte	'?'
	.ascii	"_temp_1895\0"
	.align
_Label_1921:
	.byte	'?'
	.ascii	"_temp_1894\0"
	.align
_Label_1922:
	.byte	'?'
	.ascii	"_temp_1893\0"
	.align
_Label_1923:
	.byte	'?'
	.ascii	"_temp_1892\0"
	.align
_Label_1924:
	.byte	'?'
	.ascii	"_temp_1891\0"
	.align
_Label_1925:
	.byte	'?'
	.ascii	"_temp_1890\0"
	.align
_Label_1926:
	.byte	'?'
	.ascii	"_temp_1888\0"
	.align
_Label_1927:
	.byte	'?'
	.ascii	"_temp_1887\0"
	.align
_Label_1928:
	.byte	'?'
	.ascii	"_temp_1884\0"
	.align
_Label_1929:
	.byte	'?'
	.ascii	"_temp_1883\0"
	.align
_Label_1930:
	.byte	'?'
	.ascii	"_temp_1880\0"
	.align
_Label_1931:
	.byte	'C'
	.ascii	"_temp_1876\0"
	.align
_Label_1932:
	.byte	'C'
	.ascii	"c\0"
	.align
_Label_1933:
	.byte	'I'
	.ascii	"statusReg\0"
	.align
! 
! ===============  CLASS Semaphore  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Semaphore:
	.word	_Label_1934
	jmp	_Method_P_Kernel_Semaphore_1	! 4:	Init
	jmp	_Method_P_Kernel_Semaphore_3	! 8:	Down
	jmp	_Method_P_Kernel_Semaphore_2	! 12:	Up
	.word	0
! 
! Class descriptor:
! 
_Label_1934:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1935
	.word	_sourceFileName
	.word	159		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Semaphore
	.word	_P_System_Object
	.word	0
_Label_1935:
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
_Label_4361:
	push	r0
	sub	r1,1,r1
	bne	_Label_4361
	mov	279,r13		! source line 279
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	280,r13		! source line 280
	mov	"\0\0IF",r10
!   if initialCount >= 0 then goto _Label_1937		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1937
!	jmp	_Label_1936
_Label_1936:
! THEN...
	mov	281,r13		! source line 281
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1938 = _StringConst_48
	set	_StringConst_48,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1938  sizeInBytes=4
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
_Label_1937:
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
	.word	_Label_1940
	.word	8		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1941
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1942
	.word	12
	.word	4
	.word	_Label_1943
	.word	-12
	.word	4
	.word	_Label_1944
	.word	-16
	.word	4
	.word	0
_Label_1940:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1941:
	.ascii	"Pself\0"
	.align
_Label_1942:
	.byte	'I'
	.ascii	"initialCount\0"
	.align
_Label_1943:
	.byte	'?'
	.ascii	"_temp_1939\0"
	.align
_Label_1944:
	.byte	'?'
	.ascii	"_temp_1938\0"
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
_Label_4362:
	push	r0
	sub	r1,1,r1
	bne	_Label_4362
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
!   if count != 2147483647 then goto _Label_1946		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	2147483647,r2
	cmp	r1,r2
	bne	_Label_1946
!	jmp	_Label_1945
_Label_1945:
! THEN...
	mov	295,r13		! source line 295
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1947 = _StringConst_49
	set	_StringConst_49,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1947  sizeInBytes=4
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
_Label_1946:
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
!   if count > 0 then goto _Label_1949		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1949
!	jmp	_Label_1948
_Label_1948:
! THEN...
	mov	299,r13		! source line 299
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	299,r13		! source line 299
	mov	"\0\0AS",r10
	mov	299,r13		! source line 299
	mov	"\0\0SE",r10
!   _temp_1950 = &waitingThreads
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
!   _temp_1951 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1951 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	301,r13		! source line 301
	mov	"\0\0SE",r10
!   _temp_1952 = &_P_Kernel_readyList
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
_Label_1949:
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
	.word	_Label_1953
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1954
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1955
	.word	-12
	.word	4
	.word	_Label_1956
	.word	-16
	.word	4
	.word	_Label_1957
	.word	-20
	.word	4
	.word	_Label_1958
	.word	-24
	.word	4
	.word	_Label_1959
	.word	-28
	.word	4
	.word	_Label_1960
	.word	-32
	.word	4
	.word	0
_Label_1953:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Up\0"
	.align
_Label_1954:
	.ascii	"Pself\0"
	.align
_Label_1955:
	.byte	'?'
	.ascii	"_temp_1952\0"
	.align
_Label_1956:
	.byte	'?'
	.ascii	"_temp_1951\0"
	.align
_Label_1957:
	.byte	'?'
	.ascii	"_temp_1950\0"
	.align
_Label_1958:
	.byte	'?'
	.ascii	"_temp_1947\0"
	.align
_Label_1959:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1960:
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
_Label_4363:
	push	r0
	sub	r1,1,r1
	bne	_Label_4363
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
!   if count != -2147483648 then goto _Label_1962		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	0x80000000,r2
	cmp	r1,r2
	bne	_Label_1962
!	jmp	_Label_1961
_Label_1961:
! THEN...
	mov	313,r13		! source line 313
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1963 = _StringConst_50
	set	_StringConst_50,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1963  sizeInBytes=4
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
_Label_1962:
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
!   if count >= 0 then goto _Label_1965		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1965
!	jmp	_Label_1964
_Label_1964:
! THEN...
	mov	317,r13		! source line 317
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	317,r13		! source line 317
	mov	"\0\0SE",r10
!   _temp_1966 = &waitingThreads
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
_Label_1965:
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
	.word	_Label_1967
	.word	4		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1968
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1969
	.word	-12
	.word	4
	.word	_Label_1970
	.word	-16
	.word	4
	.word	_Label_1971
	.word	-20
	.word	4
	.word	0
_Label_1967:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Down\0"
	.align
_Label_1968:
	.ascii	"Pself\0"
	.align
_Label_1969:
	.byte	'?'
	.ascii	"_temp_1966\0"
	.align
_Label_1970:
	.byte	'?'
	.ascii	"_temp_1963\0"
	.align
_Label_1971:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Mutex  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Mutex:
	.word	_Label_1972
	jmp	_Method_P_Kernel_Mutex_1	! 4:	Init
	jmp	_Method_P_Kernel_Mutex_2	! 8:	Lock
	jmp	_Method_P_Kernel_Mutex_3	! 12:	Unlock
	jmp	_Method_P_Kernel_Mutex_4	! 16:	IsHeldByCurrentThread
	.word	0
! 
! Class descriptor:
! 
_Label_1972:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1973
	.word	_sourceFileName
	.word	172		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Mutex
	.word	_P_System_Object
	.word	0
_Label_1973:
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
_Label_4364:
	push	r0
	sub	r1,1,r1
	bne	_Label_4364
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
	.word	_Label_1975
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1976
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1977
	.word	-12
	.word	4
	.word	0
_Label_1975:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1976:
	.ascii	"Pself\0"
	.align
_Label_1977:
	.byte	'?'
	.ascii	"_temp_1974\0"
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
_Label_4365:
	push	r0
	sub	r1,1,r1
	bne	_Label_4365
	mov	349,r13		! source line 349
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	352,r13		! source line 352
	mov	"\0\0IF",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_1979		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_1979
!	jmp	_Label_1978
_Label_1978:
! THEN...
	mov	353,r13		! source line 353
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1980 = _StringConst_51
	set	_StringConst_51,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1980  sizeInBytes=4
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
_Label_1979:
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
!   if heldBy == 0 then goto _Label_1984		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1984
!   _temp_1983 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1985
_Label_1984:
!   _temp_1983 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1985:
!   if _temp_1983 then goto _Label_1982 else goto _Label_1981
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1981
	jmp	_Label_1982
_Label_1981:
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
	jmp	_Label_1986
_Label_1982:
! ELSE...
	mov	359,r13		! source line 359
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	359,r13		! source line 359
	mov	"\0\0SE",r10
!   _temp_1987 = &waitingThreads
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
_Label_1986:
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
	.word	_Label_1988
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1989
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1990
	.word	-16
	.word	4
	.word	_Label_1991
	.word	-9
	.word	1
	.word	_Label_1992
	.word	-20
	.word	4
	.word	_Label_1993
	.word	-24
	.word	4
	.word	0
_Label_1988:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_1989:
	.ascii	"Pself\0"
	.align
_Label_1990:
	.byte	'?'
	.ascii	"_temp_1987\0"
	.align
_Label_1991:
	.byte	'C'
	.ascii	"_temp_1983\0"
	.align
_Label_1992:
	.byte	'?'
	.ascii	"_temp_1980\0"
	.align
_Label_1993:
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
_Label_4366:
	push	r0
	sub	r1,1,r1
	bne	_Label_4366
	mov	367,r13		! source line 367
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	371,r13		! source line 371
	mov	"\0\0IF",r10
!   if heldBy == _P_Kernel_currentThread then goto _Label_1995		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1995
!	jmp	_Label_1994
_Label_1994:
! THEN...
	mov	372,r13		! source line 372
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1996 = _StringConst_52
	set	_StringConst_52,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1996  sizeInBytes=4
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
_Label_1995:
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
!   _temp_1997 = &waitingThreads
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
!   if t == 0 then goto _Label_1999		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1999
!	jmp	_Label_1998
_Label_1998:
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
!   _temp_2000 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2000 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	378,r13		! source line 378
	mov	"\0\0SE",r10
!   _temp_2001 = &_P_Kernel_readyList
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
	jmp	_Label_2002
_Label_1999:
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
_Label_2002:
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
	.word	_Label_2003
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_2004
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2005
	.word	-12
	.word	4
	.word	_Label_2006
	.word	-16
	.word	4
	.word	_Label_2007
	.word	-20
	.word	4
	.word	_Label_2008
	.word	-24
	.word	4
	.word	_Label_2009
	.word	-28
	.word	4
	.word	_Label_2010
	.word	-32
	.word	4
	.word	0
_Label_2003:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_2004:
	.ascii	"Pself\0"
	.align
_Label_2005:
	.byte	'?'
	.ascii	"_temp_2001\0"
	.align
_Label_2006:
	.byte	'?'
	.ascii	"_temp_2000\0"
	.align
_Label_2007:
	.byte	'?'
	.ascii	"_temp_1997\0"
	.align
_Label_2008:
	.byte	'?'
	.ascii	"_temp_1996\0"
	.align
_Label_2009:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_2010:
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
_Label_4367:
	push	r0
	sub	r1,1,r1
	bne	_Label_4367
	mov	388,r13		! source line 388
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	389,r13		! source line 389
	mov	"\0\0RE",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_2013		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_2013
!	jmp	_Label_2012
_Label_2012:
!   _temp_2011 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2014
_Label_2013:
!   _temp_2011 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2014:
!   ReturnResult: _temp_2011  (sizeInBytes=1)
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
	.word	_Label_2015
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_2016
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2017
	.word	-9
	.word	1
	.word	0
_Label_2015:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_2016:
	.ascii	"Pself\0"
	.align
_Label_2017:
	.byte	'C'
	.ascii	"_temp_2011\0"
	.align
! 
! ===============  CLASS Condition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Condition:
	.word	_Label_2018
	jmp	_Method_P_Kernel_Condition_1	! 4:	Init
	jmp	_Method_P_Kernel_Condition_2	! 8:	Wait
	jmp	_Method_P_Kernel_Condition_3	! 12:	Signal
	jmp	_Method_P_Kernel_Condition_4	! 16:	Broadcast
	.word	0
! 
! Class descriptor:
! 
_Label_2018:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2019
	.word	_sourceFileName
	.word	186		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Kernel_Condition
	.word	_P_System_Object
	.word	0
_Label_2019:
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
_Label_4368:
	push	r0
	sub	r1,1,r1
	bne	_Label_4368
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
	.word	_Label_2021
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_2022
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2023
	.word	-12
	.word	4
	.word	0
_Label_2021:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2022:
	.ascii	"Pself\0"
	.align
_Label_2023:
	.byte	'?'
	.ascii	"_temp_2020\0"
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
_Label_4369:
	push	r0
	sub	r1,1,r1
	bne	_Label_4369
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
!   Retrieve Result: targetName=_temp_2026  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_2026 then goto _Label_2025 else goto _Label_2024
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2024
	jmp	_Label_2025
_Label_2024:
! THEN...
	mov	439,r13		! source line 439
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2027 = _StringConst_53
	set	_StringConst_53,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2027  sizeInBytes=4
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
_Label_2025:
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
!   _temp_2028 = &waitingThreads
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
	.word	_Label_2029
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2030
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2031
	.word	12
	.word	4
	.word	_Label_2032
	.word	-16
	.word	4
	.word	_Label_2033
	.word	-20
	.word	4
	.word	_Label_2034
	.word	-9
	.word	1
	.word	_Label_2035
	.word	-24
	.word	4
	.word	0
_Label_2029:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_2030:
	.ascii	"Pself\0"
	.align
_Label_2031:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_2032:
	.byte	'?'
	.ascii	"_temp_2028\0"
	.align
_Label_2033:
	.byte	'?'
	.ascii	"_temp_2027\0"
	.align
_Label_2034:
	.byte	'C'
	.ascii	"_temp_2026\0"
	.align
_Label_2035:
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
_Label_4370:
	push	r0
	sub	r1,1,r1
	bne	_Label_4370
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
!   Retrieve Result: targetName=_temp_2038  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_2038 then goto _Label_2037 else goto _Label_2036
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2036
	jmp	_Label_2037
_Label_2036:
! THEN...
	mov	456,r13		! source line 456
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2039 = _StringConst_54
	set	_StringConst_54,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2039  sizeInBytes=4
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
_Label_2037:
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
!   _temp_2040 = &waitingThreads
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
!   if t == 0 then goto _Label_2042		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2042
!	jmp	_Label_2041
_Label_2041:
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
!   _temp_2043 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2043 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	462,r13		! source line 462
	mov	"\0\0SE",r10
!   _temp_2044 = &_P_Kernel_readyList
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
_Label_2042:
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
	.word	_Label_2045
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_2046
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2047
	.word	12
	.word	4
	.word	_Label_2048
	.word	-16
	.word	4
	.word	_Label_2049
	.word	-20
	.word	4
	.word	_Label_2050
	.word	-24
	.word	4
	.word	_Label_2051
	.word	-28
	.word	4
	.word	_Label_2052
	.word	-9
	.word	1
	.word	_Label_2053
	.word	-32
	.word	4
	.word	_Label_2054
	.word	-36
	.word	4
	.word	0
_Label_2045:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_2046:
	.ascii	"Pself\0"
	.align
_Label_2047:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_2048:
	.byte	'?'
	.ascii	"_temp_2044\0"
	.align
_Label_2049:
	.byte	'?'
	.ascii	"_temp_2043\0"
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
	.byte	'C'
	.ascii	"_temp_2038\0"
	.align
_Label_2053:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_2054:
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
_Label_4371:
	push	r0
	sub	r1,1,r1
	bne	_Label_4371
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
!   Retrieve Result: targetName=_temp_2057  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_2057 then goto _Label_2056 else goto _Label_2055
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2055
	jmp	_Label_2056
_Label_2055:
! THEN...
	mov	474,r13		! source line 474
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2058 = _StringConst_55
	set	_StringConst_55,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2058  sizeInBytes=4
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
_Label_2056:
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
_Label_2059:
!	jmp	_Label_2060
_Label_2060:
	mov	477,r13		! source line 477
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	478,r13		! source line 478
	mov	"\0\0AS",r10
	mov	478,r13		! source line 478
	mov	"\0\0SE",r10
!   _temp_2062 = &waitingThreads
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
!   if intIsZero (t) then goto _Label_2063
	load	[r14+-36],r1
	cmp	r1,r0
	be	_Label_2063
	jmp	_Label_2064
_Label_2063:
! THEN...
	mov	480,r13		! source line 480
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	480,r13		! source line 480
	mov	"\0\0BR",r10
	jmp	_Label_2061
! END IF...
_Label_2064:
! ASSIGNMENT STATEMENT...
	mov	482,r13		! source line 482
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2065 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2065 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	483,r13		! source line 483
	mov	"\0\0SE",r10
!   _temp_2066 = &_P_Kernel_readyList
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
	jmp	_Label_2059
_Label_2061:
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
	.word	_Label_2067
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_2068
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2069
	.word	12
	.word	4
	.word	_Label_2070
	.word	-16
	.word	4
	.word	_Label_2071
	.word	-20
	.word	4
	.word	_Label_2072
	.word	-24
	.word	4
	.word	_Label_2073
	.word	-28
	.word	4
	.word	_Label_2074
	.word	-9
	.word	1
	.word	_Label_2075
	.word	-32
	.word	4
	.word	_Label_2076
	.word	-36
	.word	4
	.word	0
_Label_2067:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Broadcast\0"
	.align
_Label_2068:
	.ascii	"Pself\0"
	.align
_Label_2069:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_2070:
	.byte	'?'
	.ascii	"_temp_2066\0"
	.align
_Label_2071:
	.byte	'?'
	.ascii	"_temp_2065\0"
	.align
_Label_2072:
	.byte	'?'
	.ascii	"_temp_2062\0"
	.align
_Label_2073:
	.byte	'?'
	.ascii	"_temp_2058\0"
	.align
_Label_2074:
	.byte	'C'
	.ascii	"_temp_2057\0"
	.align
_Label_2075:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_2076:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  CLASS Thread  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Thread:
	.word	_Label_2077
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
_Label_2077:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2078
	.word	_sourceFileName
	.word	199		! line number
	.word	4164		! size of instances, in bytes
	.word	_P_Kernel_Thread
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_2078:
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
_Label_4372:
	push	r0
	sub	r1,1,r1
	bne	_Label_4372
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
!   _temp_2079 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_2079) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_2079 = 1000  (sizeInBytes=4)
	mov	1000,r1
	load	[r14+-188],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	505,r13		! source line 505
	mov	"\0\0AS",r10
!   _temp_2080 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-184]
!   Move address of _temp_2080 [0 ] into _temp_2081
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
!   Data Move: *_temp_2081 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-180],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	506,r13		! source line 506
	mov	"\0\0AS",r10
!   _temp_2082 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-176]
!   Move address of _temp_2082 [999 ] into _temp_2083
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
!   Data Move: *_temp_2083 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-172],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	507,r13		! source line 507
	mov	"\0\0AS",r10
!   _temp_2084 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-168]
!   Move address of _temp_2084 [999 ] into _temp_2085
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
!   stackTop = _temp_2085		(4 bytes)
	load	[r14+-164],r1
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	508,r13		! source line 508
	mov	"\0\0AS",r10
!   _temp_2086 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-160]
!   NEW ARRAY Constructor...
!   _temp_2088 = &_temp_2087
	add	r14,-156,r1
	store	r1,[r14+-100]
!   _temp_2088 = _temp_2088 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Next value...
	mov	13,r1
	store	r1,[r14+-96]
_Label_2090:
!   Data Move: *_temp_2088 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-100],r2
	store	r1,[r2]
!   _temp_2088 = _temp_2088 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   _temp_2089 = _temp_2089 + -1
	load	[r14+-96],r1
	add	r1,-1,r1
	store	r1,[r14+-96]
!   if intNotZero (_temp_2089) then goto _Label_2090
	load	[r14+-96],r1
	cmp	r1,r0
	bne	_Label_2090
!   Initialize the array size...
	mov	13,r1
	store	r1,[r14+-156]
!   _temp_2091 = &_temp_2087
	add	r14,-156,r1
	store	r1,[r14+-92]
!   make sure array has size 13
	load	[r14+-160],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,0
	be	_Label_4373
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4373:
!   make sure array has size 13
	load	[r14+-92],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2086 = *_temp_2091  (sizeInBytes=56)
	load	[r14+-92],r5
	load	[r14+-160],r4
	mov	14,r3
_Label_4374:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4374
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
!   _temp_2092 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-88]
!   NEW ARRAY Constructor...
!   _temp_2094 = &_temp_2093
	add	r14,-84,r1
	store	r1,[r14+-20]
!   _temp_2094 = _temp_2094 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	15,r1
	store	r1,[r14+-16]
_Label_2096:
!   Data Move: *_temp_2094 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_2094 = _temp_2094 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_2095 = _temp_2095 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_2095) then goto _Label_2096
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_2096
!   Initialize the array size...
	mov	15,r1
	store	r1,[r14+-84]
!   _temp_2097 = &_temp_2093
	add	r14,-84,r1
	store	r1,[r14+-12]
!   make sure array has size 15
	load	[r14+-88],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,0
	be	_Label_4375
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4375:
!   make sure array has size 15
	load	[r14+-12],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2092 = *_temp_2097  (sizeInBytes=64)
	load	[r14+-12],r5
	load	[r14+-88],r4
	mov	16,r3
_Label_4376:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4376
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
	.word	_Label_2098
	.word	8		! total size of parameters
	.word	180		! frame size = 180
	.word	_Label_2099
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2100
	.word	12
	.word	4
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
	.word	-84
	.word	64
	.word	_Label_2105
	.word	-88
	.word	4
	.word	_Label_2106
	.word	-92
	.word	4
	.word	_Label_2107
	.word	-96
	.word	4
	.word	_Label_2108
	.word	-100
	.word	4
	.word	_Label_2109
	.word	-156
	.word	56
	.word	_Label_2110
	.word	-160
	.word	4
	.word	_Label_2111
	.word	-164
	.word	4
	.word	_Label_2112
	.word	-168
	.word	4
	.word	_Label_2113
	.word	-172
	.word	4
	.word	_Label_2114
	.word	-176
	.word	4
	.word	_Label_2115
	.word	-180
	.word	4
	.word	_Label_2116
	.word	-184
	.word	4
	.word	_Label_2117
	.word	-188
	.word	4
	.word	0
_Label_2098:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2099:
	.ascii	"Pself\0"
	.align
_Label_2100:
	.byte	'P'
	.ascii	"n\0"
	.align
_Label_2101:
	.byte	'?'
	.ascii	"_temp_2097\0"
	.align
_Label_2102:
	.byte	'?'
	.ascii	"_temp_2095\0"
	.align
_Label_2103:
	.byte	'?'
	.ascii	"_temp_2094\0"
	.align
_Label_2104:
	.byte	'?'
	.ascii	"_temp_2093\0"
	.align
_Label_2105:
	.byte	'?'
	.ascii	"_temp_2092\0"
	.align
_Label_2106:
	.byte	'?'
	.ascii	"_temp_2091\0"
	.align
_Label_2107:
	.byte	'?'
	.ascii	"_temp_2089\0"
	.align
_Label_2108:
	.byte	'?'
	.ascii	"_temp_2088\0"
	.align
_Label_2109:
	.byte	'?'
	.ascii	"_temp_2087\0"
	.align
_Label_2110:
	.byte	'?'
	.ascii	"_temp_2086\0"
	.align
_Label_2111:
	.byte	'?'
	.ascii	"_temp_2085\0"
	.align
_Label_2112:
	.byte	'?'
	.ascii	"_temp_2084\0"
	.align
_Label_2113:
	.byte	'?'
	.ascii	"_temp_2083\0"
	.align
_Label_2114:
	.byte	'?'
	.ascii	"_temp_2082\0"
	.align
_Label_2115:
	.byte	'?'
	.ascii	"_temp_2081\0"
	.align
_Label_2116:
	.byte	'?'
	.ascii	"_temp_2080\0"
	.align
_Label_2117:
	.byte	'?'
	.ascii	"_temp_2079\0"
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
_Label_4377:
	push	r0
	sub	r1,1,r1
	bne	_Label_4377
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
!   _temp_2118 = ThreadStartUp
	set	ThreadStartUp,r1
	store	r1,[r14+-20]
!   Data Move: *stackTop = _temp_2118  (sizeInBytes=4)
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
!   _temp_2120 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2119  sizeInBytes=4
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
	.word	_Label_2121
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2122
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2123
	.word	12
	.word	4
	.word	_Label_2124
	.word	16
	.word	4
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
	.word	0
_Label_2121:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Fork\0"
	.align
_Label_2122:
	.ascii	"Pself\0"
	.align
_Label_2123:
	.byte	'P'
	.ascii	"fun\0"
	.align
_Label_2124:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_2125:
	.byte	'?'
	.ascii	"_temp_2120\0"
	.align
_Label_2126:
	.byte	'?'
	.ascii	"_temp_2119\0"
	.align
_Label_2127:
	.byte	'?'
	.ascii	"_temp_2118\0"
	.align
_Label_2128:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_2129:
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
_Label_4378:
	push	r0
	sub	r1,1,r1
	bne	_Label_4378
	mov	539,r13		! source line 539
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	555,r13		! source line 555
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if _temp_2132 == _P_Kernel_currentThread then goto _Label_2131		(int)
	load	[r14+-32],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_2131
!	jmp	_Label_2130
_Label_2130:
! THEN...
	mov	556,r13		! source line 556
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2133 = _StringConst_56
	set	_StringConst_56,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2133  sizeInBytes=4
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
_Label_2131:
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
!   _temp_2134 = &_P_Kernel_readyList
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
!   if nextTh == 0 then goto _Label_2136		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2136
!	jmp	_Label_2135
_Label_2135:
! THEN...
	mov	567,r13		! source line 567
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	567,r13		! source line 567
	mov	"\0\0IF",r10
!   if status != 4 then goto _Label_2138		(int)
	load	[r14+8],r1
	load	[r1+76],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_2138
!	jmp	_Label_2137
_Label_2137:
! THEN...
	mov	568,r13		! source line 568
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2139 = _StringConst_57
	set	_StringConst_57,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2139  sizeInBytes=4
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
_Label_2138:
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
!   _temp_2141 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2140  sizeInBytes=4
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
_Label_2136:
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
	.word	_Label_2142
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_2143
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2144
	.word	-12
	.word	4
	.word	_Label_2145
	.word	-16
	.word	4
	.word	_Label_2146
	.word	-20
	.word	4
	.word	_Label_2147
	.word	-24
	.word	4
	.word	_Label_2148
	.word	-28
	.word	4
	.word	_Label_2149
	.word	-32
	.word	4
	.word	_Label_2150
	.word	-36
	.word	4
	.word	_Label_2151
	.word	-40
	.word	4
	.word	_Label_2152
	.word	-44
	.word	4
	.word	0
_Label_2142:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Yield\0"
	.align
_Label_2143:
	.ascii	"Pself\0"
	.align
_Label_2144:
	.byte	'?'
	.ascii	"_temp_2141\0"
	.align
_Label_2145:
	.byte	'?'
	.ascii	"_temp_2140\0"
	.align
_Label_2146:
	.byte	'?'
	.ascii	"_temp_2139\0"
	.align
_Label_2147:
	.byte	'?'
	.ascii	"_temp_2134\0"
	.align
_Label_2148:
	.byte	'?'
	.ascii	"_temp_2133\0"
	.align
_Label_2149:
	.byte	'?'
	.ascii	"_temp_2132\0"
	.align
_Label_2150:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
_Label_2151:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_2152:
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
_Label_4379:
	push	r0
	sub	r1,1,r1
	bne	_Label_4379
	mov	579,r13		! source line 579
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	591,r13		! source line 591
	mov	"\0\0IF",r10
!   if _P_Kernel_currentInterruptStatus == 2 then goto _Label_2154		(int)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_2154
!	jmp	_Label_2153
_Label_2153:
! THEN...
	mov	592,r13		! source line 592
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2155 = _StringConst_58
	set	_StringConst_58,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2155  sizeInBytes=4
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
_Label_2154:
! IF STATEMENT...
	mov	595,r13		! source line 595
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if _temp_2158 == _P_Kernel_currentThread then goto _Label_2157		(int)
	load	[r14+-24],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_2157
!	jmp	_Label_2156
_Label_2156:
! THEN...
	mov	596,r13		! source line 596
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2159 = _StringConst_59
	set	_StringConst_59,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2159  sizeInBytes=4
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
_Label_2157:
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
!   _temp_2160 = &_P_Kernel_readyList
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
!   if intIsZero (nextTh) then goto _Label_2161
	load	[r14+-32],r1
	cmp	r1,r0
	be	_Label_2161
	jmp	_Label_2162
_Label_2161:
! THEN...
	mov	604,r13		! source line 604
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2163 = _StringConst_60
	set	_StringConst_60,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2163  sizeInBytes=4
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
_Label_2162:
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
	.word	_Label_2164
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2165
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2166
	.word	-12
	.word	4
	.word	_Label_2167
	.word	-16
	.word	4
	.word	_Label_2168
	.word	-20
	.word	4
	.word	_Label_2169
	.word	-24
	.word	4
	.word	_Label_2170
	.word	-28
	.word	4
	.word	_Label_2171
	.word	-32
	.word	4
	.word	0
_Label_2164:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Sleep\0"
	.align
_Label_2165:
	.ascii	"Pself\0"
	.align
_Label_2166:
	.byte	'?'
	.ascii	"_temp_2163\0"
	.align
_Label_2167:
	.byte	'?'
	.ascii	"_temp_2160\0"
	.align
_Label_2168:
	.byte	'?'
	.ascii	"_temp_2159\0"
	.align
_Label_2169:
	.byte	'?'
	.ascii	"_temp_2158\0"
	.align
_Label_2170:
	.byte	'?'
	.ascii	"_temp_2155\0"
	.align
_Label_2171:
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
_Label_4380:
	push	r0
	sub	r1,1,r1
	bne	_Label_4380
	mov	611,r13		! source line 611
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	617,r13		! source line 617
	mov	"\0\0IF",r10
!   _temp_2175 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-36]
!   Move address of _temp_2175 [0 ] into _temp_2176
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
!   Data Move: _temp_2174 = *_temp_2176  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if _temp_2174 == 606348324 then goto _Label_2173		(int)
	load	[r14+-40],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_2173
!	jmp	_Label_2172
_Label_2172:
! THEN...
	mov	618,r13		! source line 618
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2177 = _StringConst_61
	set	_StringConst_61,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2177  sizeInBytes=4
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
	jmp	_Label_2178
_Label_2173:
! ELSE...
	mov	619,r13		! source line 619
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	619,r13		! source line 619
	mov	"\0\0IF",r10
!   _temp_2182 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_2182 [999 ] into _temp_2183
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
!   Data Move: _temp_2181 = *_temp_2183  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_2181 == 606348324 then goto _Label_2180		(int)
	load	[r14+-24],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_2180
!	jmp	_Label_2179
_Label_2179:
! THEN...
	mov	620,r13		! source line 620
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2184 = _StringConst_62
	set	_StringConst_62,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2184  sizeInBytes=4
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
_Label_2180:
! END IF...
_Label_2178:
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
	.word	_Label_2185
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_2186
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2187
	.word	-12
	.word	4
	.word	_Label_2188
	.word	-16
	.word	4
	.word	_Label_2189
	.word	-20
	.word	4
	.word	_Label_2190
	.word	-24
	.word	4
	.word	_Label_2191
	.word	-28
	.word	4
	.word	_Label_2192
	.word	-32
	.word	4
	.word	_Label_2193
	.word	-36
	.word	4
	.word	_Label_2194
	.word	-40
	.word	4
	.word	0
_Label_2185:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"CheckOverflow\0"
	.align
_Label_2186:
	.ascii	"Pself\0"
	.align
_Label_2187:
	.byte	'?'
	.ascii	"_temp_2184\0"
	.align
_Label_2188:
	.byte	'?'
	.ascii	"_temp_2183\0"
	.align
_Label_2189:
	.byte	'?'
	.ascii	"_temp_2182\0"
	.align
_Label_2190:
	.byte	'?'
	.ascii	"_temp_2181\0"
	.align
_Label_2191:
	.byte	'?'
	.ascii	"_temp_2177\0"
	.align
_Label_2192:
	.byte	'?'
	.ascii	"_temp_2176\0"
	.align
_Label_2193:
	.byte	'?'
	.ascii	"_temp_2175\0"
	.align
_Label_2194:
	.byte	'?'
	.ascii	"_temp_2174\0"
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
_Label_4381:
	push	r0
	sub	r1,1,r1
	bne	_Label_4381
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
!   _temp_2195 = _StringConst_63
	set	_StringConst_63,r1
	store	r1,[r14+-188]
!   Prepare Argument: offset=8  value=_temp_2195  sizeInBytes=4
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
!   _temp_2196 = _StringConst_64
	set	_StringConst_64,r1
	store	r1,[r14+-184]
!   Prepare Argument: offset=8  value=_temp_2196  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Call the function
	mov	635,r13		! source line 635
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_2197  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Call the function
	mov	636,r13		! source line 636
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2198 = _StringConst_65
	set	_StringConst_65,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=8  value=_temp_2198  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Call the function
	mov	637,r13		! source line 637
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2199 = _StringConst_66
	set	_StringConst_66,r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=8  value=_temp_2199  sizeInBytes=4
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
!   _temp_2204 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-168]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2205 = 12		(4 bytes)
	mov	12,r1
	store	r1,[r14+-164]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2204  (sizeInBytes=4)
	load	[r14+-168],r1
	store	r1,[r14+-192]
_Label_2200:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2205 then goto _Label_2203		
	load	[r14+-192],r1
	load	[r14+-164],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2203
_Label_2201:
	mov	639,r13		! source line 639
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2206 = _StringConst_67
	set	_StringConst_67,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_2206  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	640,r13		! source line 640
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2207 = i + 2		(int)
	load	[r14+-192],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_2207  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	641,r13		! source line 641
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2208 = _StringConst_68
	set	_StringConst_68,r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=8  value=_temp_2208  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Call the function
	mov	642,r13		! source line 642
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2210 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-144]
!   Move address of _temp_2210 [i ] into _temp_2211
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
!   Data Move: _temp_2209 = *_temp_2211  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_2209  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	643,r13		! source line 643
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2212 = _StringConst_69
	set	_StringConst_69,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_2212  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	644,r13		! source line 644
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2214 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-128]
!   Move address of _temp_2214 [i ] into _temp_2215
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
!   Data Move: _temp_2213 = *_temp_2215  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2213  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	645,r13		! source line 645
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2216 = _StringConst_70
	set	_StringConst_70,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_2216  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	646,r13		! source line 646
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_2202:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_2200
! END FOR
_Label_2203:
! CALL STATEMENT...
!   _temp_2217 = _StringConst_71
	set	_StringConst_71,r1
	store	r1,[r14+-116]
!   _temp_2218 = stackTop		(4 bytes)
	load	[r14+8],r1
	load	[r1+68],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_2217  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2218  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Call the function
	mov	648,r13		! source line 648
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_2219 = _StringConst_72
	set	_StringConst_72,r1
	store	r1,[r14+-108]
!   _temp_2221 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-100]
!   Move address of _temp_2221 [0 ] into _temp_2222
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
!   _temp_2220 = _temp_2222		(4 bytes)
	load	[r14+-96],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_2219  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2220  sizeInBytes=4
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
	be	_Label_2225
	cmp	r1,2
	be	_Label_2226
	cmp	r1,3
	be	_Label_2227
	cmp	r1,4
	be	_Label_2228
	cmp	r1,5
	be	_Label_2229
	jmp	_Label_2223
! CASE 1...
_Label_2225:
! CALL STATEMENT...
!   _temp_2230 = _StringConst_73
	set	_StringConst_73,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_2230  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	652,r13		! source line 652
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	653,r13		! source line 653
	mov	"\0\0BR",r10
	jmp	_Label_2224
! CASE 2...
_Label_2226:
! CALL STATEMENT...
!   _temp_2231 = _StringConst_74
	set	_StringConst_74,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_2231  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	655,r13		! source line 655
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	656,r13		! source line 656
	mov	"\0\0BR",r10
	jmp	_Label_2224
! CASE 3...
_Label_2227:
! CALL STATEMENT...
!   _temp_2232 = _StringConst_75
	set	_StringConst_75,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_2232  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	658,r13		! source line 658
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	659,r13		! source line 659
	mov	"\0\0BR",r10
	jmp	_Label_2224
! CASE 4...
_Label_2228:
! CALL STATEMENT...
!   _temp_2233 = _StringConst_76
	set	_StringConst_76,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2233  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	661,r13		! source line 661
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	662,r13		! source line 662
	mov	"\0\0BR",r10
	jmp	_Label_2224
! CASE 5...
_Label_2229:
! CALL STATEMENT...
!   _temp_2234 = _StringConst_77
	set	_StringConst_77,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_2234  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	664,r13		! source line 664
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	665,r13		! source line 665
	mov	"\0\0BR",r10
	jmp	_Label_2224
! DEFAULT CASE...
_Label_2223:
! CALL STATEMENT...
!   _temp_2235 = _StringConst_78
	set	_StringConst_78,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_2235  sizeInBytes=4
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
_Label_2224:
! CALL STATEMENT...
!   _temp_2236 = _StringConst_79
	set	_StringConst_79,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_2236  sizeInBytes=4
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
!   _temp_2237 = _StringConst_80
	set	_StringConst_80,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_2237  sizeInBytes=4
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
!   _temp_2242 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2243 = 14		(4 bytes)
	mov	14,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2242  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+-192]
_Label_2238:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2243 then goto _Label_2241		
	load	[r14+-192],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2241
_Label_2239:
	mov	673,r13		! source line 673
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2244 = _StringConst_81
	set	_StringConst_81,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_2244  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	674,r13		! source line 674
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2245 = i + 1		(int)
	load	[r14+-192],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2245  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	675,r13		! source line 675
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2246 = _StringConst_82
	set	_StringConst_82,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_2246  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	676,r13		! source line 676
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2248 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_2248 [i ] into _temp_2249
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
!   Data Move: _temp_2247 = *_temp_2249  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_2247  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	677,r13		! source line 677
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2250 = _StringConst_83
	set	_StringConst_83,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2250  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	678,r13		! source line 678
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2252 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-20]
!   Move address of _temp_2252 [i ] into _temp_2253
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
!   Data Move: _temp_2251 = *_temp_2253  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2251  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	679,r13		! source line 679
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2254 = _StringConst_84
	set	_StringConst_84,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2254  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	680,r13		! source line 680
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_2240:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_2238
! END FOR
_Label_2241:
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
	.word	_Label_2255
	.word	4		! total size of parameters
	.word	196		! frame size = 196
	.word	_Label_2256
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2257
	.word	-12
	.word	4
	.word	_Label_2258
	.word	-16
	.word	4
	.word	_Label_2259
	.word	-20
	.word	4
	.word	_Label_2260
	.word	-24
	.word	4
	.word	_Label_2261
	.word	-28
	.word	4
	.word	_Label_2262
	.word	-32
	.word	4
	.word	_Label_2263
	.word	-36
	.word	4
	.word	_Label_2264
	.word	-40
	.word	4
	.word	_Label_2265
	.word	-44
	.word	4
	.word	_Label_2266
	.word	-48
	.word	4
	.word	_Label_2267
	.word	-52
	.word	4
	.word	_Label_2268
	.word	-56
	.word	4
	.word	_Label_2269
	.word	-60
	.word	4
	.word	_Label_2270
	.word	-64
	.word	4
	.word	_Label_2271
	.word	-68
	.word	4
	.word	_Label_2272
	.word	-72
	.word	4
	.word	_Label_2273
	.word	-76
	.word	4
	.word	_Label_2274
	.word	-80
	.word	4
	.word	_Label_2275
	.word	-84
	.word	4
	.word	_Label_2276
	.word	-88
	.word	4
	.word	_Label_2277
	.word	-92
	.word	4
	.word	_Label_2278
	.word	-96
	.word	4
	.word	_Label_2279
	.word	-100
	.word	4
	.word	_Label_2280
	.word	-104
	.word	4
	.word	_Label_2281
	.word	-108
	.word	4
	.word	_Label_2282
	.word	-112
	.word	4
	.word	_Label_2283
	.word	-116
	.word	4
	.word	_Label_2284
	.word	-120
	.word	4
	.word	_Label_2285
	.word	-124
	.word	4
	.word	_Label_2286
	.word	-128
	.word	4
	.word	_Label_2287
	.word	-132
	.word	4
	.word	_Label_2288
	.word	-136
	.word	4
	.word	_Label_2289
	.word	-140
	.word	4
	.word	_Label_2290
	.word	-144
	.word	4
	.word	_Label_2291
	.word	-148
	.word	4
	.word	_Label_2292
	.word	-152
	.word	4
	.word	_Label_2293
	.word	-156
	.word	4
	.word	_Label_2294
	.word	-160
	.word	4
	.word	_Label_2295
	.word	-164
	.word	4
	.word	_Label_2296
	.word	-168
	.word	4
	.word	_Label_2297
	.word	-172
	.word	4
	.word	_Label_2298
	.word	-176
	.word	4
	.word	_Label_2299
	.word	-180
	.word	4
	.word	_Label_2300
	.word	-184
	.word	4
	.word	_Label_2301
	.word	-188
	.word	4
	.word	_Label_2302
	.word	-192
	.word	4
	.word	_Label_2303
	.word	-196
	.word	4
	.word	0
_Label_2255:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2256:
	.ascii	"Pself\0"
	.align
_Label_2257:
	.byte	'?'
	.ascii	"_temp_2254\0"
	.align
_Label_2258:
	.byte	'?'
	.ascii	"_temp_2253\0"
	.align
_Label_2259:
	.byte	'?'
	.ascii	"_temp_2252\0"
	.align
_Label_2260:
	.byte	'?'
	.ascii	"_temp_2251\0"
	.align
_Label_2261:
	.byte	'?'
	.ascii	"_temp_2250\0"
	.align
_Label_2262:
	.byte	'?'
	.ascii	"_temp_2249\0"
	.align
_Label_2263:
	.byte	'?'
	.ascii	"_temp_2248\0"
	.align
_Label_2264:
	.byte	'?'
	.ascii	"_temp_2247\0"
	.align
_Label_2265:
	.byte	'?'
	.ascii	"_temp_2246\0"
	.align
_Label_2266:
	.byte	'?'
	.ascii	"_temp_2245\0"
	.align
_Label_2267:
	.byte	'?'
	.ascii	"_temp_2244\0"
	.align
_Label_2268:
	.byte	'?'
	.ascii	"_temp_2243\0"
	.align
_Label_2269:
	.byte	'?'
	.ascii	"_temp_2242\0"
	.align
_Label_2270:
	.byte	'?'
	.ascii	"_temp_2237\0"
	.align
_Label_2271:
	.byte	'?'
	.ascii	"_temp_2236\0"
	.align
_Label_2272:
	.byte	'?'
	.ascii	"_temp_2235\0"
	.align
_Label_2273:
	.byte	'?'
	.ascii	"_temp_2234\0"
	.align
_Label_2274:
	.byte	'?'
	.ascii	"_temp_2233\0"
	.align
_Label_2275:
	.byte	'?'
	.ascii	"_temp_2232\0"
	.align
_Label_2276:
	.byte	'?'
	.ascii	"_temp_2231\0"
	.align
_Label_2277:
	.byte	'?'
	.ascii	"_temp_2230\0"
	.align
_Label_2278:
	.byte	'?'
	.ascii	"_temp_2222\0"
	.align
_Label_2279:
	.byte	'?'
	.ascii	"_temp_2221\0"
	.align
_Label_2280:
	.byte	'?'
	.ascii	"_temp_2220\0"
	.align
_Label_2281:
	.byte	'?'
	.ascii	"_temp_2219\0"
	.align
_Label_2282:
	.byte	'?'
	.ascii	"_temp_2218\0"
	.align
_Label_2283:
	.byte	'?'
	.ascii	"_temp_2217\0"
	.align
_Label_2284:
	.byte	'?'
	.ascii	"_temp_2216\0"
	.align
_Label_2285:
	.byte	'?'
	.ascii	"_temp_2215\0"
	.align
_Label_2286:
	.byte	'?'
	.ascii	"_temp_2214\0"
	.align
_Label_2287:
	.byte	'?'
	.ascii	"_temp_2213\0"
	.align
_Label_2288:
	.byte	'?'
	.ascii	"_temp_2212\0"
	.align
_Label_2289:
	.byte	'?'
	.ascii	"_temp_2211\0"
	.align
_Label_2290:
	.byte	'?'
	.ascii	"_temp_2210\0"
	.align
_Label_2291:
	.byte	'?'
	.ascii	"_temp_2209\0"
	.align
_Label_2292:
	.byte	'?'
	.ascii	"_temp_2208\0"
	.align
_Label_2293:
	.byte	'?'
	.ascii	"_temp_2207\0"
	.align
_Label_2294:
	.byte	'?'
	.ascii	"_temp_2206\0"
	.align
_Label_2295:
	.byte	'?'
	.ascii	"_temp_2205\0"
	.align
_Label_2296:
	.byte	'?'
	.ascii	"_temp_2204\0"
	.align
_Label_2297:
	.byte	'?'
	.ascii	"_temp_2199\0"
	.align
_Label_2298:
	.byte	'?'
	.ascii	"_temp_2198\0"
	.align
_Label_2299:
	.byte	'?'
	.ascii	"_temp_2197\0"
	.align
_Label_2300:
	.byte	'?'
	.ascii	"_temp_2196\0"
	.align
_Label_2301:
	.byte	'?'
	.ascii	"_temp_2195\0"
	.align
_Label_2302:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2303:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  CLASS ThreadManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ThreadManager:
	.word	_Label_2304
	jmp	_Method_P_Kernel_ThreadManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ThreadManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ThreadManager_3	! 12:	GetANewThread
	jmp	_Method_P_Kernel_ThreadManager_4	! 16:	FreeThread
	.word	0
! 
! Class descriptor:
! 
_Label_2304:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2305
	.word	_sourceFileName
	.word	226		! line number
	.word	41696		! size of instances, in bytes
	.word	_P_Kernel_ThreadManager
	.word	_P_System_Object
	.word	0
_Label_2305:
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
_Label_4382:
	push	r0
	sub	r1,1,r1
	bne	_Label_4382
	mov	737,r13		! source line 737
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	743,r13		! source line 743
	mov	"\0\0AS",r10
!   _temp_2306 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	set	-45904,r2
	store	r1,[r14+r2]
!   NEW ARRAY Constructor...
!   _temp_2308 = &_temp_2307
	set	-45900,r1
	add	r14,r1,r1
	store	r1,[r14+-4256]
!   _temp_2308 = _temp_2308 + 4
	load	[r14+-4256],r1
	add	r1,4,r1
	store	r1,[r14+-4256]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2310 = zeros  (sizeInBytes=4164)
	add	r14,-4248,r4
	mov	1041,r3
_Label_4383:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4383
!   _temp_2310 = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	store	r1,[r14+-4248]
	mov	10,r1
	store	r1,[r14+-4252]
_Label_2312:
!   Data Move: *_temp_2308 = _temp_2310  (sizeInBytes=4164)
	add	r14,-4248,r5
	load	[r14+-4256],r4
	mov	1041,r3
_Label_4384:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4384
!   _temp_2308 = _temp_2308 + 4164
	load	[r14+-4256],r1
	add	r1,4164,r1
	store	r1,[r14+-4256]
!   _temp_2309 = _temp_2309 + -1
	load	[r14+-4252],r1
	add	r1,-1,r1
	store	r1,[r14+-4252]
!   if intNotZero (_temp_2309) then goto _Label_2312
	load	[r14+-4252],r1
	cmp	r1,r0
	bne	_Label_2312
!   Initialize the array size...
	mov	10,r1
	set	-45900,r2
	store	r1,[r14+r2]
!   _temp_2313 = &_temp_2307
	set	-45900,r1
	add	r14,r1,r1
	store	r1,[r14+-80]
!   make sure array has size 10
	set	-45904,r1
	load	[r14+r1],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_4385
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4385:
!   make sure array has size 10
	load	[r14+-80],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2306 = *_temp_2313  (sizeInBytes=41644)
	load	[r14+-80],r5
	set	-45904,r4
	load	[r14+r4],r4
	mov	10411,r3
_Label_4386:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4386
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
!   _temp_2321 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2322 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2321  (sizeInBytes=4)
	load	[r14+-64],r1
	set	-45908,r2
	store	r1,[r14+r2]
_Label_2317:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2322 then goto _Label_2320		
	set	-45908,r1
	load	[r14+r1],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2320
_Label_2318:
	mov	747,r13		! source line 747
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	748,r13		! source line 748
	mov	"\0\0SE",r10
!   _temp_2323 = _StringConst_85
	set	_StringConst_85,r1
	store	r1,[r14+-56]
!   _temp_2324 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   Move address of _temp_2324 [i ] into _temp_2325
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
!   Prepare Argument: offset=12  value=_temp_2323  sizeInBytes=4
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
!   _temp_2326 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_2326 [i ] into _temp_2327
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
!   _temp_2328 = _temp_2327 + 76
	load	[r14+-40],r1
	add	r1,76,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_2328 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-36],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	750,r13		! source line 750
	mov	"\0\0SE",r10
!   _temp_2330 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_2330 [i ] into _temp_2331
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
!   _temp_2329 = _temp_2331		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-32]
!   _temp_2332 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_2329  sizeInBytes=4
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
_Label_2319:
!   i = i + 1
	set	-45908,r1
	load	[r14+r1],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	set	-45908,r2
	store	r1,[r14+r2]
	jmp	_Label_2317
! END FOR
_Label_2320:
! SEND STATEMENT...
	mov	752,r13		! source line 752
	mov	"\0\0SE",r10
!   _temp_2333 = &threadManagerLock
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
!   _temp_2334 = &aThreadIsAvailable
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
	.word	_Label_2335
	.word	4		! total size of parameters
	.word	45908		! frame size = 45908
	.word	_Label_2336
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2337
	.word	-12
	.word	4
	.word	_Label_2338
	.word	-16
	.word	4
	.word	_Label_2339
	.word	-20
	.word	4
	.word	_Label_2340
	.word	-24
	.word	4
	.word	_Label_2341
	.word	-28
	.word	4
	.word	_Label_2342
	.word	-32
	.word	4
	.word	_Label_2343
	.word	-36
	.word	4
	.word	_Label_2344
	.word	-40
	.word	4
	.word	_Label_2345
	.word	-44
	.word	4
	.word	_Label_2346
	.word	-48
	.word	4
	.word	_Label_2347
	.word	-52
	.word	4
	.word	_Label_2348
	.word	-56
	.word	4
	.word	_Label_2349
	.word	-60
	.word	4
	.word	_Label_2350
	.word	-64
	.word	4
	.word	_Label_2351
	.word	-68
	.word	4
	.word	_Label_2352
	.word	-72
	.word	4
	.word	_Label_2353
	.word	-76
	.word	4
	.word	_Label_2354
	.word	-80
	.word	4
	.word	_Label_2355
	.word	-84
	.word	4
	.word	_Label_2356
	.word	-4248
	.word	4164
	.word	_Label_2357
	.word	-4252
	.word	4
	.word	_Label_2358
	.word	-4256
	.word	4
	.word	_Label_2359
	.word	-45900
	.word	41644
	.word	_Label_2360
	.word	-45904
	.word	4
	.word	_Label_2361
	.word	-45908
	.word	4
	.word	0
_Label_2335:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2336:
	.ascii	"Pself\0"
	.align
_Label_2337:
	.byte	'?'
	.ascii	"_temp_2334\0"
	.align
_Label_2338:
	.byte	'?'
	.ascii	"_temp_2333\0"
	.align
_Label_2339:
	.byte	'?'
	.ascii	"_temp_2332\0"
	.align
_Label_2340:
	.byte	'?'
	.ascii	"_temp_2331\0"
	.align
_Label_2341:
	.byte	'?'
	.ascii	"_temp_2330\0"
	.align
_Label_2342:
	.byte	'?'
	.ascii	"_temp_2329\0"
	.align
_Label_2343:
	.byte	'?'
	.ascii	"_temp_2328\0"
	.align
_Label_2344:
	.byte	'?'
	.ascii	"_temp_2327\0"
	.align
_Label_2345:
	.byte	'?'
	.ascii	"_temp_2326\0"
	.align
_Label_2346:
	.byte	'?'
	.ascii	"_temp_2325\0"
	.align
_Label_2347:
	.byte	'?'
	.ascii	"_temp_2324\0"
	.align
_Label_2348:
	.byte	'?'
	.ascii	"_temp_2323\0"
	.align
_Label_2349:
	.byte	'?'
	.ascii	"_temp_2322\0"
	.align
_Label_2350:
	.byte	'?'
	.ascii	"_temp_2321\0"
	.align
_Label_2351:
	.byte	'?'
	.ascii	"_temp_2316\0"
	.align
_Label_2352:
	.byte	'?'
	.ascii	"_temp_2315\0"
	.align
_Label_2353:
	.byte	'?'
	.ascii	"_temp_2314\0"
	.align
_Label_2354:
	.byte	'?'
	.ascii	"_temp_2313\0"
	.align
_Label_2355:
	.byte	'?'
	.ascii	"_temp_2311\0"
	.align
_Label_2356:
	.byte	'?'
	.ascii	"_temp_2310\0"
	.align
_Label_2357:
	.byte	'?'
	.ascii	"_temp_2309\0"
	.align
_Label_2358:
	.byte	'?'
	.ascii	"_temp_2308\0"
	.align
_Label_2359:
	.byte	'?'
	.ascii	"_temp_2307\0"
	.align
_Label_2360:
	.byte	'?'
	.ascii	"_temp_2306\0"
	.align
_Label_2361:
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
_Label_4387:
	push	r0
	sub	r1,1,r1
	bne	_Label_4387
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
!   _temp_2362 = _StringConst_86
	set	_StringConst_86,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_2362  sizeInBytes=4
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
!   _temp_2367 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2368 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2367  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-56]
_Label_2363:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2368 then goto _Label_2366		
	load	[r14+-56],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2366
_Label_2364:
	mov	767,r13		! source line 767
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2369 = _StringConst_87
	set	_StringConst_87,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_2369  sizeInBytes=4
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
!   _temp_2370 = _StringConst_88
	set	_StringConst_88,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2370  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	770,r13		! source line 770
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2372 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_2372 [i ] into _temp_2373
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
!   _temp_2371 = _temp_2373		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2371  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	771,r13		! source line 771
	mov	"\0\0CA",r10
	call	_function_194_ThreadPrintShort
!   Increment the FOR-LOOP index variable and jump back
_Label_2365:
!   i = i + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_2363
! END FOR
_Label_2366:
! CALL STATEMENT...
!   _temp_2374 = _StringConst_89
	set	_StringConst_89,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2374  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	773,r13		! source line 773
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	774,r13		! source line 774
	mov	"\0\0SE",r10
!   _temp_2375 = _function_193_PrintObjectAddr
	set	_function_193_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_2376 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2375  sizeInBytes=4
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
	.word	_Label_2377
	.word	4		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_2378
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2379
	.word	-12
	.word	4
	.word	_Label_2380
	.word	-16
	.word	4
	.word	_Label_2381
	.word	-20
	.word	4
	.word	_Label_2382
	.word	-24
	.word	4
	.word	_Label_2383
	.word	-28
	.word	4
	.word	_Label_2384
	.word	-32
	.word	4
	.word	_Label_2385
	.word	-36
	.word	4
	.word	_Label_2386
	.word	-40
	.word	4
	.word	_Label_2387
	.word	-44
	.word	4
	.word	_Label_2388
	.word	-48
	.word	4
	.word	_Label_2389
	.word	-52
	.word	4
	.word	_Label_2390
	.word	-56
	.word	4
	.word	_Label_2391
	.word	-60
	.word	4
	.word	0
_Label_2377:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2378:
	.ascii	"Pself\0"
	.align
_Label_2379:
	.byte	'?'
	.ascii	"_temp_2376\0"
	.align
_Label_2380:
	.byte	'?'
	.ascii	"_temp_2375\0"
	.align
_Label_2381:
	.byte	'?'
	.ascii	"_temp_2374\0"
	.align
_Label_2382:
	.byte	'?'
	.ascii	"_temp_2373\0"
	.align
_Label_2383:
	.byte	'?'
	.ascii	"_temp_2372\0"
	.align
_Label_2384:
	.byte	'?'
	.ascii	"_temp_2371\0"
	.align
_Label_2385:
	.byte	'?'
	.ascii	"_temp_2370\0"
	.align
_Label_2386:
	.byte	'?'
	.ascii	"_temp_2369\0"
	.align
_Label_2387:
	.byte	'?'
	.ascii	"_temp_2368\0"
	.align
_Label_2388:
	.byte	'?'
	.ascii	"_temp_2367\0"
	.align
_Label_2389:
	.byte	'?'
	.ascii	"_temp_2362\0"
	.align
_Label_2390:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2391:
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
_Label_4388:
	push	r0
	sub	r1,1,r1
	bne	_Label_4388
	mov	781,r13		! source line 781
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	787,r13		! source line 787
	mov	"\0\0SE",r10
!   _temp_2392 = &threadManagerLock
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
_Label_2393:
	mov	788,r13		! source line 788
	mov	"\0\0SE",r10
!   _temp_2396 = &freeList
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
!   if result==true then goto _Label_2394 else goto _Label_2395
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2395
	jmp	_Label_2394
_Label_2394:
	mov	788,r13		! source line 788
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	789,r13		! source line 789
	mov	"\0\0SE",r10
!   _temp_2397 = &threadManagerLock
	set	41676,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-28]
!   _temp_2398 = &aThreadIsAvailable
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_2397  sizeInBytes=4
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
	jmp	_Label_2393
_Label_2395:
! ASSIGNMENT STATEMENT...
	mov	791,r13		! source line 791
	mov	"\0\0AS",r10
	mov	791,r13		! source line 791
	mov	"\0\0SE",r10
!   _temp_2399 = &freeList
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
!   _temp_2400 = availableThreadPtr + 76
	load	[r14+-40],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2400 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	793,r13		! source line 793
	mov	"\0\0SE",r10
!   _temp_2401 = &threadManagerLock
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
	.word	_Label_2402
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_2403
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2404
	.word	-12
	.word	4
	.word	_Label_2405
	.word	-16
	.word	4
	.word	_Label_2406
	.word	-20
	.word	4
	.word	_Label_2407
	.word	-24
	.word	4
	.word	_Label_2408
	.word	-28
	.word	4
	.word	_Label_2409
	.word	-32
	.word	4
	.word	_Label_2410
	.word	-36
	.word	4
	.word	_Label_2411
	.word	-40
	.word	4
	.word	0
_Label_2402:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"GetANewThread\0"
	.align
_Label_2403:
	.ascii	"Pself\0"
	.align
_Label_2404:
	.byte	'?'
	.ascii	"_temp_2401\0"
	.align
_Label_2405:
	.byte	'?'
	.ascii	"_temp_2400\0"
	.align
_Label_2406:
	.byte	'?'
	.ascii	"_temp_2399\0"
	.align
_Label_2407:
	.byte	'?'
	.ascii	"_temp_2398\0"
	.align
_Label_2408:
	.byte	'?'
	.ascii	"_temp_2397\0"
	.align
_Label_2409:
	.byte	'?'
	.ascii	"_temp_2396\0"
	.align
_Label_2410:
	.byte	'?'
	.ascii	"_temp_2392\0"
	.align
_Label_2411:
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
_Label_4389:
	push	r0
	sub	r1,1,r1
	bne	_Label_4389
	mov	799,r13		! source line 799
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	803,r13		! source line 803
	mov	"\0\0SE",r10
!   _temp_2412 = &threadManagerLock
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
!   _temp_2413 = th + 76
	load	[r14+12],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2413 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	805,r13		! source line 805
	mov	"\0\0SE",r10
!   _temp_2414 = &freeList
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
!   _temp_2415 = &threadManagerLock
	set	41676,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-20]
!   _temp_2416 = &aThreadIsAvailable
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2415  sizeInBytes=4
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
!   _temp_2417 = &threadManagerLock
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
	.word	_Label_2418
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_2419
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2420
	.word	12
	.word	4
	.word	_Label_2421
	.word	-12
	.word	4
	.word	_Label_2422
	.word	-16
	.word	4
	.word	_Label_2423
	.word	-20
	.word	4
	.word	_Label_2424
	.word	-24
	.word	4
	.word	_Label_2425
	.word	-28
	.word	4
	.word	_Label_2426
	.word	-32
	.word	4
	.word	0
_Label_2418:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"FreeThread\0"
	.align
_Label_2419:
	.ascii	"Pself\0"
	.align
_Label_2420:
	.byte	'P'
	.ascii	"th\0"
	.align
_Label_2421:
	.byte	'?'
	.ascii	"_temp_2417\0"
	.align
_Label_2422:
	.byte	'?'
	.ascii	"_temp_2416\0"
	.align
_Label_2423:
	.byte	'?'
	.ascii	"_temp_2415\0"
	.align
_Label_2424:
	.byte	'?'
	.ascii	"_temp_2414\0"
	.align
_Label_2425:
	.byte	'?'
	.ascii	"_temp_2413\0"
	.align
_Label_2426:
	.byte	'?'
	.ascii	"_temp_2412\0"
	.align
! 
! ===============  CLASS ProcessControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessControlBlock:
	.word	_Label_2427
	jmp	_Method_P_Kernel_ProcessControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessControlBlock_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessControlBlock_3	! 12:	PrintShort
	.word	0
! 
! Class descriptor:
! 
_Label_2427:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2428
	.word	_sourceFileName
	.word	247		! line number
	.word	168		! size of instances, in bytes
	.word	_P_Kernel_ProcessControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_2428:
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
_Label_4390:
	push	r0
	sub	r1,1,r1
	bne	_Label_4390
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
_Label_4391:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4391
!   addrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! SEND STATEMENT...
	mov	824,r13		! source line 824
	mov	"\0\0SE",r10
!   _temp_2430 = &addrSpace
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
!   _temp_2431 = &fileDescriptor
	load	[r14+8],r1
	add	r1,124,r1
	store	r1,[r14+-68]
!   NEW ARRAY Constructor...
!   _temp_2433 = &_temp_2432
	add	r14,-64,r1
	store	r1,[r14+-20]
!   _temp_2433 = _temp_2433 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	10,r1
	store	r1,[r14+-16]
_Label_2435:
!   Data Move: *_temp_2433 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_2433 = _temp_2433 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_2434 = _temp_2434 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_2434) then goto _Label_2435
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_2435
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-64]
!   _temp_2436 = &_temp_2432
	add	r14,-64,r1
	store	r1,[r14+-12]
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_4392
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4392:
!   make sure array has size 10
	load	[r14+-12],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2431 = *_temp_2436  (sizeInBytes=44)
	load	[r14+-12],r5
	load	[r14+-68],r4
	mov	11,r3
_Label_4393:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4393
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
	.word	_Label_2437
	.word	4		! total size of parameters
	.word	72		! frame size = 72
	.word	_Label_2438
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2439
	.word	-12
	.word	4
	.word	_Label_2440
	.word	-16
	.word	4
	.word	_Label_2441
	.word	-20
	.word	4
	.word	_Label_2442
	.word	-64
	.word	44
	.word	_Label_2443
	.word	-68
	.word	4
	.word	_Label_2444
	.word	-72
	.word	4
	.word	_Label_2445
	.word	-76
	.word	4
	.word	0
_Label_2437:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2438:
	.ascii	"Pself\0"
	.align
_Label_2439:
	.byte	'?'
	.ascii	"_temp_2436\0"
	.align
_Label_2440:
	.byte	'?'
	.ascii	"_temp_2434\0"
	.align
_Label_2441:
	.byte	'?'
	.ascii	"_temp_2433\0"
	.align
_Label_2442:
	.byte	'?'
	.ascii	"_temp_2432\0"
	.align
_Label_2443:
	.byte	'?'
	.ascii	"_temp_2431\0"
	.align
_Label_2444:
	.byte	'?'
	.ascii	"_temp_2430\0"
	.align
_Label_2445:
	.byte	'?'
	.ascii	"_temp_2429\0"
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
_Label_4394:
	push	r0
	sub	r1,1,r1
	bne	_Label_4394
	mov	831,r13		! source line 831
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	836,r13		! source line 836
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2446) then goto _runtimeErrorNullPointer
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
!   _temp_2447 = _StringConst_90
	set	_StringConst_90,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2447  sizeInBytes=4
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
	.word	_Label_2448
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_2449
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2450
	.word	-12
	.word	4
	.word	_Label_2451
	.word	-16
	.word	4
	.word	0
_Label_2448:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2449:
	.ascii	"Pself\0"
	.align
_Label_2450:
	.byte	'?'
	.ascii	"_temp_2447\0"
	.align
_Label_2451:
	.byte	'?'
	.ascii	"_temp_2446\0"
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
_Label_4395:
	push	r0
	sub	r1,1,r1
	bne	_Label_4395
	mov	855,r13		! source line 855
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2452 = _StringConst_91
	set	_StringConst_91,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2452  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	859,r13		! source line 859
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_2453  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	860,r13		! source line 860
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2454 = _StringConst_92
	set	_StringConst_92,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_2454  sizeInBytes=4
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
!   _temp_2455 = _StringConst_93
	set	_StringConst_93,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2455  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	863,r13		! source line 863
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	864,r13		! source line 864
	mov	"\0\0IF",r10
!   if status != 1 then goto _Label_2457		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_2457
!	jmp	_Label_2456
_Label_2456:
! THEN...
	mov	865,r13		! source line 865
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2458 = _StringConst_94
	set	_StringConst_94,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2458  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	865,r13		! source line 865
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2459
_Label_2457:
! ELSE...
	mov	866,r13		! source line 866
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	866,r13		! source line 866
	mov	"\0\0IF",r10
!   if status != 2 then goto _Label_2461		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_2461
!	jmp	_Label_2460
_Label_2460:
! THEN...
	mov	867,r13		! source line 867
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2462 = _StringConst_95
	set	_StringConst_95,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2462  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	867,r13		! source line 867
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2463
_Label_2461:
! ELSE...
	mov	868,r13		! source line 868
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	868,r13		! source line 868
	mov	"\0\0IF",r10
!   if status != 3 then goto _Label_2465		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_2465
!	jmp	_Label_2464
_Label_2464:
! THEN...
	mov	869,r13		! source line 869
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2466 = _StringConst_96
	set	_StringConst_96,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2466  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	869,r13		! source line 869
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2467
_Label_2465:
! ELSE...
	mov	871,r13		! source line 871
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2468 = _StringConst_97
	set	_StringConst_97,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2468  sizeInBytes=4
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
_Label_2467:
! END IF...
_Label_2463:
! END IF...
_Label_2459:
! CALL STATEMENT...
!   _temp_2469 = _StringConst_98
	set	_StringConst_98,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2469  sizeInBytes=4
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
!   _temp_2470 = _StringConst_99
	set	_StringConst_99,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2470  sizeInBytes=4
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
	.word	_Label_2471
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_2472
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2473
	.word	-12
	.word	4
	.word	_Label_2474
	.word	-16
	.word	4
	.word	_Label_2475
	.word	-20
	.word	4
	.word	_Label_2476
	.word	-24
	.word	4
	.word	_Label_2477
	.word	-28
	.word	4
	.word	_Label_2478
	.word	-32
	.word	4
	.word	_Label_2479
	.word	-36
	.word	4
	.word	_Label_2480
	.word	-40
	.word	4
	.word	_Label_2481
	.word	-44
	.word	4
	.word	_Label_2482
	.word	-48
	.word	4
	.word	0
_Label_2471:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_2472:
	.ascii	"Pself\0"
	.align
_Label_2473:
	.byte	'?'
	.ascii	"_temp_2470\0"
	.align
_Label_2474:
	.byte	'?'
	.ascii	"_temp_2469\0"
	.align
_Label_2475:
	.byte	'?'
	.ascii	"_temp_2468\0"
	.align
_Label_2476:
	.byte	'?'
	.ascii	"_temp_2466\0"
	.align
_Label_2477:
	.byte	'?'
	.ascii	"_temp_2462\0"
	.align
_Label_2478:
	.byte	'?'
	.ascii	"_temp_2458\0"
	.align
_Label_2479:
	.byte	'?'
	.ascii	"_temp_2455\0"
	.align
_Label_2480:
	.byte	'?'
	.ascii	"_temp_2454\0"
	.align
_Label_2481:
	.byte	'?'
	.ascii	"_temp_2453\0"
	.align
_Label_2482:
	.byte	'?'
	.ascii	"_temp_2452\0"
	.align
! 
! ===============  CLASS ProcessManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessManager:
	.word	_Label_2483
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
_Label_2483:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2484
	.word	_sourceFileName
	.word	267		! line number
	.word	1756		! size of instances, in bytes
	.word	_P_Kernel_ProcessManager
	.word	_P_System_Object
	.word	0
_Label_2484:
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
_Label_4396:
	push	r0
	sub	r1,1,r1
	bne	_Label_4396
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
!   _temp_2486 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-1948]
!   NEW ARRAY Constructor...
!   _temp_2488 = &_temp_2487
	add	r14,-1944,r1
	store	r1,[r14+-260]
!   _temp_2488 = _temp_2488 + 4
	load	[r14+-260],r1
	add	r1,4,r1
	store	r1,[r14+-260]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2490 = zeros  (sizeInBytes=168)
	add	r14,-252,r4
	mov	42,r3
_Label_4397:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4397
!   _temp_2490 = _P_Kernel_ProcessControlBlock
	set	_P_Kernel_ProcessControlBlock,r1
	store	r1,[r14+-252]
	mov	10,r1
	store	r1,[r14+-256]
_Label_2492:
!   Data Move: *_temp_2488 = _temp_2490  (sizeInBytes=168)
	add	r14,-252,r5
	load	[r14+-260],r4
	mov	42,r3
_Label_4398:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4398
!   _temp_2488 = _temp_2488 + 168
	load	[r14+-260],r1
	add	r1,168,r1
	store	r1,[r14+-260]
!   _temp_2489 = _temp_2489 + -1
	load	[r14+-256],r1
	add	r1,-1,r1
	store	r1,[r14+-256]
!   if intNotZero (_temp_2489) then goto _Label_2492
	load	[r14+-256],r1
	cmp	r1,r0
	bne	_Label_2492
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-1944]
!   _temp_2493 = &_temp_2487
	add	r14,-1944,r1
	store	r1,[r14+-80]
!   make sure array has size 10
	load	[r14+-1948],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_4399
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4399:
!   make sure array has size 10
	load	[r14+-80],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2486 = *_temp_2493  (sizeInBytes=1684)
	load	[r14+-80],r5
	load	[r14+-1948],r4
	mov	421,r3
_Label_4400:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4400
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
!   _temp_2501 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2502 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2501  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-1956]
_Label_2497:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2502 then goto _Label_2500		
	load	[r14+-1956],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2500
_Label_2498:
	mov	899,r13		! source line 899
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	900,r13		! source line 900
	mov	"\0\0SE",r10
!   _temp_2503 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   Move address of _temp_2503 [i ] into _temp_2504
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
!   _temp_2506 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_2506 [i ] into _temp_2507
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
!   _temp_2505 = _temp_2507		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   _temp_2508 = &freeList
	load	[r14+8],r1
	add	r1,1724,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_2505  sizeInBytes=4
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
!   _temp_2509 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Move address of _temp_2509 [i ] into _temp_2510
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
!   _temp_2511 = _temp_2510 + 20
	load	[r14+-28],r1
	add	r1,20,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2511 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-24],r2
	store	r1,[r2]
!   Increment the FOR-LOOP index variable and jump back
_Label_2499:
!   i = i + 1
	load	[r14+-1956],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-1956]
	jmp	_Label_2497
! END FOR
_Label_2500:
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
!   _temp_2512 = &processManagerLock
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
!   _temp_2513 = &aProcessBecameFree
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
!   _temp_2514 = &aProcessDied
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
	.word	_Label_2515
	.word	4		! total size of parameters
	.word	1956		! frame size = 1956
	.word	_Label_2516
	.word	4		! size of self
	.word	8		! offset of self
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
	.word	_Label_2523
	.word	-36
	.word	4
	.word	_Label_2524
	.word	-40
	.word	4
	.word	_Label_2525
	.word	-44
	.word	4
	.word	_Label_2526
	.word	-48
	.word	4
	.word	_Label_2527
	.word	-52
	.word	4
	.word	_Label_2528
	.word	-56
	.word	4
	.word	_Label_2529
	.word	-60
	.word	4
	.word	_Label_2530
	.word	-64
	.word	4
	.word	_Label_2531
	.word	-68
	.word	4
	.word	_Label_2532
	.word	-72
	.word	4
	.word	_Label_2533
	.word	-76
	.word	4
	.word	_Label_2534
	.word	-80
	.word	4
	.word	_Label_2535
	.word	-84
	.word	4
	.word	_Label_2536
	.word	-252
	.word	168
	.word	_Label_2537
	.word	-256
	.word	4
	.word	_Label_2538
	.word	-260
	.word	4
	.word	_Label_2539
	.word	-1944
	.word	1684
	.word	_Label_2540
	.word	-1948
	.word	4
	.word	_Label_2541
	.word	-1952
	.word	4
	.word	_Label_2542
	.word	-1956
	.word	4
	.word	0
_Label_2515:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2516:
	.ascii	"Pself\0"
	.align
_Label_2517:
	.byte	'?'
	.ascii	"_temp_2514\0"
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
	.ascii	"_temp_2508\0"
	.align
_Label_2524:
	.byte	'?'
	.ascii	"_temp_2507\0"
	.align
_Label_2525:
	.byte	'?'
	.ascii	"_temp_2506\0"
	.align
_Label_2526:
	.byte	'?'
	.ascii	"_temp_2505\0"
	.align
_Label_2527:
	.byte	'?'
	.ascii	"_temp_2504\0"
	.align
_Label_2528:
	.byte	'?'
	.ascii	"_temp_2503\0"
	.align
_Label_2529:
	.byte	'?'
	.ascii	"_temp_2502\0"
	.align
_Label_2530:
	.byte	'?'
	.ascii	"_temp_2501\0"
	.align
_Label_2531:
	.byte	'?'
	.ascii	"_temp_2496\0"
	.align
_Label_2532:
	.byte	'?'
	.ascii	"_temp_2495\0"
	.align
_Label_2533:
	.byte	'?'
	.ascii	"_temp_2494\0"
	.align
_Label_2534:
	.byte	'?'
	.ascii	"_temp_2493\0"
	.align
_Label_2535:
	.byte	'?'
	.ascii	"_temp_2491\0"
	.align
_Label_2536:
	.byte	'?'
	.ascii	"_temp_2490\0"
	.align
_Label_2537:
	.byte	'?'
	.ascii	"_temp_2489\0"
	.align
_Label_2538:
	.byte	'?'
	.ascii	"_temp_2488\0"
	.align
_Label_2539:
	.byte	'?'
	.ascii	"_temp_2487\0"
	.align
_Label_2540:
	.byte	'?'
	.ascii	"_temp_2486\0"
	.align
_Label_2541:
	.byte	'?'
	.ascii	"_temp_2485\0"
	.align
_Label_2542:
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
_Label_4401:
	push	r0
	sub	r1,1,r1
	bne	_Label_4401
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
!   _temp_2543 = _StringConst_100
	set	_StringConst_100,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2543  sizeInBytes=4
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
!   _temp_2548 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2549 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2548  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-52]
_Label_2544:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2549 then goto _Label_2547		
	load	[r14+-52],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2547
_Label_2545:
	mov	921,r13		! source line 921
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2550 = _StringConst_101
	set	_StringConst_101,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2550  sizeInBytes=4
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
!   _temp_2551 = _StringConst_102
	set	_StringConst_102,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2551  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	924,r13		! source line 924
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	925,r13		! source line 925
	mov	"\0\0SE",r10
!   _temp_2552 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_2552 [i ] into _temp_2553
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
_Label_2546:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_2544
! END FOR
_Label_2547:
! CALL STATEMENT...
!   _temp_2554 = _StringConst_103
	set	_StringConst_103,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2554  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	927,r13		! source line 927
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	928,r13		! source line 928
	mov	"\0\0SE",r10
!   _temp_2555 = _function_193_PrintObjectAddr
	set	_function_193_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_2556 = &freeList
	load	[r14+8],r1
	add	r1,1724,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2555  sizeInBytes=4
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
	.word	_Label_2557
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_2558
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2559
	.word	-12
	.word	4
	.word	_Label_2560
	.word	-16
	.word	4
	.word	_Label_2561
	.word	-20
	.word	4
	.word	_Label_2562
	.word	-24
	.word	4
	.word	_Label_2563
	.word	-28
	.word	4
	.word	_Label_2564
	.word	-32
	.word	4
	.word	_Label_2565
	.word	-36
	.word	4
	.word	_Label_2566
	.word	-40
	.word	4
	.word	_Label_2567
	.word	-44
	.word	4
	.word	_Label_2568
	.word	-48
	.word	4
	.word	_Label_2569
	.word	-52
	.word	4
	.word	_Label_2570
	.word	-56
	.word	4
	.word	0
_Label_2557:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2558:
	.ascii	"Pself\0"
	.align
_Label_2559:
	.byte	'?'
	.ascii	"_temp_2556\0"
	.align
_Label_2560:
	.byte	'?'
	.ascii	"_temp_2555\0"
	.align
_Label_2561:
	.byte	'?'
	.ascii	"_temp_2554\0"
	.align
_Label_2562:
	.byte	'?'
	.ascii	"_temp_2553\0"
	.align
_Label_2563:
	.byte	'?'
	.ascii	"_temp_2552\0"
	.align
_Label_2564:
	.byte	'?'
	.ascii	"_temp_2551\0"
	.align
_Label_2565:
	.byte	'?'
	.ascii	"_temp_2550\0"
	.align
_Label_2566:
	.byte	'?'
	.ascii	"_temp_2549\0"
	.align
_Label_2567:
	.byte	'?'
	.ascii	"_temp_2548\0"
	.align
_Label_2568:
	.byte	'?'
	.ascii	"_temp_2543\0"
	.align
_Label_2569:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2570:
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
_Label_4402:
	push	r0
	sub	r1,1,r1
	bne	_Label_4402
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
!   _temp_2571 = _StringConst_104
	set	_StringConst_104,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_2571  sizeInBytes=4
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
!   _temp_2576 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2577 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2576  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-48]
_Label_2572:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2577 then goto _Label_2575		
	load	[r14+-48],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2575
_Label_2573:
	mov	944,r13		! source line 944
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2578 = _StringConst_105
	set	_StringConst_105,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2578  sizeInBytes=4
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
!   _temp_2579 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_2579 [i ] into _temp_2580
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
_Label_2574:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_2572
! END FOR
_Label_2575:
! CALL STATEMENT...
!   _temp_2581 = _StringConst_106
	set	_StringConst_106,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2581  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	949,r13		! source line 949
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	950,r13		! source line 950
	mov	"\0\0SE",r10
!   _temp_2582 = _function_193_PrintObjectAddr
	set	_function_193_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_2583 = &freeList
	load	[r14+8],r1
	add	r1,1724,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2582  sizeInBytes=4
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
	.word	_Label_2584
	.word	4		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2585
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2586
	.word	-12
	.word	4
	.word	_Label_2587
	.word	-16
	.word	4
	.word	_Label_2588
	.word	-20
	.word	4
	.word	_Label_2589
	.word	-24
	.word	4
	.word	_Label_2590
	.word	-28
	.word	4
	.word	_Label_2591
	.word	-32
	.word	4
	.word	_Label_2592
	.word	-36
	.word	4
	.word	_Label_2593
	.word	-40
	.word	4
	.word	_Label_2594
	.word	-44
	.word	4
	.word	_Label_2595
	.word	-48
	.word	4
	.word	_Label_2596
	.word	-52
	.word	4
	.word	0
_Label_2584:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_2585:
	.ascii	"Pself\0"
	.align
_Label_2586:
	.byte	'?'
	.ascii	"_temp_2583\0"
	.align
_Label_2587:
	.byte	'?'
	.ascii	"_temp_2582\0"
	.align
_Label_2588:
	.byte	'?'
	.ascii	"_temp_2581\0"
	.align
_Label_2589:
	.byte	'?'
	.ascii	"_temp_2580\0"
	.align
_Label_2590:
	.byte	'?'
	.ascii	"_temp_2579\0"
	.align
_Label_2591:
	.byte	'?'
	.ascii	"_temp_2578\0"
	.align
_Label_2592:
	.byte	'?'
	.ascii	"_temp_2577\0"
	.align
_Label_2593:
	.byte	'?'
	.ascii	"_temp_2576\0"
	.align
_Label_2594:
	.byte	'?'
	.ascii	"_temp_2571\0"
	.align
_Label_2595:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2596:
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
_Label_4403:
	push	r0
	sub	r1,1,r1
	bne	_Label_4403
	mov	957,r13		! source line 957
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	964,r13		! source line 964
	mov	"\0\0SE",r10
!   _temp_2597 = &processManagerLock
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
_Label_2598:
	mov	965,r13		! source line 965
	mov	"\0\0SE",r10
!   _temp_2601 = &freeList
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
!   if result==true then goto _Label_2599 else goto _Label_2600
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2600
	jmp	_Label_2599
_Label_2599:
	mov	965,r13		! source line 965
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	966,r13		! source line 966
	mov	"\0\0SE",r10
!   _temp_2602 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-32]
!   _temp_2603 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1708,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_2602  sizeInBytes=4
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
	jmp	_Label_2598
_Label_2600:
! ASSIGNMENT STATEMENT...
	mov	968,r13		! source line 968
	mov	"\0\0AS",r10
	mov	968,r13		! source line 968
	mov	"\0\0SE",r10
!   _temp_2604 = &freeList
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
!   _temp_2605 = nextProcessPtr + 12
	load	[r14+-44],r1
	add	r1,12,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2605 = nextPid  (sizeInBytes=4)
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
!   _temp_2606 = nextProcessPtr + 20
	load	[r14+-44],r1
	add	r1,20,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2606 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	972,r13		! source line 972
	mov	"\0\0SE",r10
!   _temp_2607 = &processManagerLock
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
	.word	_Label_2608
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_2609
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2610
	.word	-12
	.word	4
	.word	_Label_2611
	.word	-16
	.word	4
	.word	_Label_2612
	.word	-20
	.word	4
	.word	_Label_2613
	.word	-24
	.word	4
	.word	_Label_2614
	.word	-28
	.word	4
	.word	_Label_2615
	.word	-32
	.word	4
	.word	_Label_2616
	.word	-36
	.word	4
	.word	_Label_2617
	.word	-40
	.word	4
	.word	_Label_2618
	.word	-44
	.word	4
	.word	0
_Label_2608:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"GetANewProcess\0"
	.align
_Label_2609:
	.ascii	"Pself\0"
	.align
_Label_2610:
	.byte	'?'
	.ascii	"_temp_2607\0"
	.align
_Label_2611:
	.byte	'?'
	.ascii	"_temp_2606\0"
	.align
_Label_2612:
	.byte	'?'
	.ascii	"_temp_2605\0"
	.align
_Label_2613:
	.byte	'?'
	.ascii	"_temp_2604\0"
	.align
_Label_2614:
	.byte	'?'
	.ascii	"_temp_2603\0"
	.align
_Label_2615:
	.byte	'?'
	.ascii	"_temp_2602\0"
	.align
_Label_2616:
	.byte	'?'
	.ascii	"_temp_2601\0"
	.align
_Label_2617:
	.byte	'?'
	.ascii	"_temp_2597\0"
	.align
_Label_2618:
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
_Label_4404:
	push	r0
	sub	r1,1,r1
	bne	_Label_4404
	mov	978,r13		! source line 978
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	982,r13		! source line 982
	mov	"\0\0SE",r10
!   _temp_2619 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-244]
!   _temp_2620 = _temp_2619 + 1688
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
!   _temp_2625 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-236]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2626 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-232]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2625  (sizeInBytes=4)
	load	[r14+-236],r1
	store	r1,[r14+-248]
_Label_2621:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2626 then goto _Label_2624		
	load	[r14+-248],r1
	load	[r14+-232],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2624
_Label_2622:
	mov	985,r13		! source line 985
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	986,r13		! source line 986
	mov	"\0\0IF",r10
!   _temp_2630 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-224]
!   _temp_2631 = _temp_2630 + 4
	load	[r14+-224],r1
	add	r1,4,r1
	store	r1,[r14+-220]
!   Move address of _temp_2631 [i ] into _temp_2632
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
!   _temp_2633 = _temp_2632 + 12
	load	[r14+-216],r1
	add	r1,12,r1
	store	r1,[r14+-212]
!   Data Move: _temp_2629 = *_temp_2633  (sizeInBytes=4)
	load	[r14+-212],r1
	load	[r1],r1
	store	r1,[r14+-228]
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2635 = p + 16
	load	[r14+12],r1
	add	r1,16,r1
	store	r1,[r14+-204]
!   Data Move: _temp_2634 = *_temp_2635  (sizeInBytes=4)
	load	[r14+-204],r1
	load	[r1],r1
	store	r1,[r14+-208]
!   if _temp_2629 != _temp_2634 then goto _Label_2628		(int)
	load	[r14+-228],r1
	load	[r14+-208],r2
	cmp	r1,r2
	bne	_Label_2628
!	jmp	_Label_2627
_Label_2627:
! THEN...
	mov	987,r13		! source line 987
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	987,r13		! source line 987
	mov	"\0\0AS",r10
!   _temp_2636 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-200]
!   _temp_2637 = _temp_2636 + 4
	load	[r14+-200],r1
	add	r1,4,r1
	store	r1,[r14+-196]
!   Move address of _temp_2637 [i ] into _temp_2638
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
!   parentPcb = _temp_2638		(4 bytes)
	load	[r14+-192],r1
	store	r1,[r14+-252]
! END IF...
_Label_2628:
! IF STATEMENT...
	mov	989,r13		! source line 989
	mov	"\0\0IF",r10
!   _temp_2643 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-184]
!   _temp_2644 = _temp_2643 + 4
	load	[r14+-184],r1
	add	r1,4,r1
	store	r1,[r14+-180]
!   Move address of _temp_2644 [i ] into _temp_2645
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
!   _temp_2646 = _temp_2645 + 20
	load	[r14+-176],r1
	add	r1,20,r1
	store	r1,[r14+-172]
!   Data Move: _temp_2642 = *_temp_2646  (sizeInBytes=4)
	load	[r14+-172],r1
	load	[r1],r1
	store	r1,[r14+-188]
!   if _temp_2642 != 2 then goto _Label_2640		(int)
	load	[r14+-188],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_2640
!	jmp	_Label_2641
_Label_2641:
!   _temp_2648 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-164]
!   _temp_2649 = _temp_2648 + 4
	load	[r14+-164],r1
	add	r1,4,r1
	store	r1,[r14+-160]
!   Move address of _temp_2649 [i ] into _temp_2650
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
!   _temp_2651 = _temp_2650 + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-152]
!   Data Move: _temp_2647 = *_temp_2651  (sizeInBytes=4)
	load	[r14+-152],r1
	load	[r1],r1
	store	r1,[r14+-168]
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2653 = p + 12
	load	[r14+12],r1
	add	r1,12,r1
	store	r1,[r14+-144]
!   Data Move: _temp_2652 = *_temp_2653  (sizeInBytes=4)
	load	[r14+-144],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   if _temp_2647 != _temp_2652 then goto _Label_2640		(int)
	load	[r14+-168],r1
	load	[r14+-148],r2
	cmp	r1,r2
	bne	_Label_2640
!	jmp	_Label_2639
_Label_2639:
! THEN...
	mov	990,r13		! source line 990
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	990,r13		! source line 990
	mov	"\0\0AS",r10
!   _temp_2654 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-140]
!   _temp_2655 = _temp_2654 + 4
	load	[r14+-140],r1
	add	r1,4,r1
	store	r1,[r14+-136]
!   Move address of _temp_2655 [i ] into _temp_2656
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
!   _temp_2657 = _temp_2656 + 20
	load	[r14+-132],r1
	add	r1,20,r1
	store	r1,[r14+-128]
!   Data Move: *_temp_2657 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-128],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	991,r13		! source line 991
	mov	"\0\0SE",r10
!   _temp_2659 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-120]
!   _temp_2660 = _temp_2659 + 4
	load	[r14+-120],r1
	add	r1,4,r1
	store	r1,[r14+-116]
!   Move address of _temp_2660 [i ] into _temp_2661
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
!   _temp_2658 = _temp_2661		(4 bytes)
	load	[r14+-112],r1
	store	r1,[r14+-124]
!   _temp_2662 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-108]
!   _temp_2663 = _temp_2662 + 1724
	load	[r14+-108],r1
	add	r1,1724,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=12  value=_temp_2658  sizeInBytes=4
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
!   _temp_2665 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-96]
!   _temp_2666 = _temp_2665 + 1688
	load	[r14+-96],r1
	add	r1,1688,r1
	store	r1,[r14+-92]
!   _temp_2664 = _temp_2666		(4 bytes)
	load	[r14+-92],r1
	store	r1,[r14+-100]
!   _temp_2667 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-88]
!   _temp_2668 = _temp_2667 + 1708
	load	[r14+-88],r1
	add	r1,1708,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=12  value=_temp_2664  sizeInBytes=4
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
_Label_2640:
!   Increment the FOR-LOOP index variable and jump back
_Label_2623:
!   i = i + 1
	load	[r14+-248],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-248]
	jmp	_Label_2621
! END FOR
_Label_2624:
! IF STATEMENT...
	mov	997,r13		! source line 997
	mov	"\0\0IF",r10
!   if intIsZero (parentPcb) then goto _Label_2670
	load	[r14+-252],r1
	cmp	r1,r0
	be	_Label_2670
!	jmp	_Label_2671
_Label_2671:
!   if intIsZero (parentPcb) then goto _runtimeErrorNullPointer
	load	[r14+-252],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2673 = parentPcb + 20
	load	[r14+-252],r1
	add	r1,20,r1
	store	r1,[r14+-76]
!   Data Move: _temp_2672 = *_temp_2673  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_2672 != 1 then goto _Label_2670		(int)
	load	[r14+-80],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_2670
!	jmp	_Label_2669
_Label_2669:
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
!   _temp_2674 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-72]
!   Data Move: *_temp_2674 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-72],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	999,r13		! source line 999
	mov	"\0\0SE",r10
!   _temp_2676 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-64]
!   _temp_2677 = _temp_2676 + 1688
	load	[r14+-64],r1
	add	r1,1688,r1
	store	r1,[r14+-60]
!   _temp_2675 = _temp_2677		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-68]
!   _temp_2678 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-56]
!   _temp_2679 = _temp_2678 + 1736
	load	[r14+-56],r1
	add	r1,1736,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_2675  sizeInBytes=4
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
	jmp	_Label_2680
_Label_2670:
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
!   _temp_2681 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_2681 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1002,r13		! source line 1002
	mov	"\0\0SE",r10
!   _temp_2682 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-44]
!   _temp_2683 = _temp_2682 + 1724
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
!   _temp_2685 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-32]
!   _temp_2686 = _temp_2685 + 1688
	load	[r14+-32],r1
	add	r1,1688,r1
	store	r1,[r14+-28]
!   _temp_2684 = _temp_2686		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   _temp_2687 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-24]
!   _temp_2688 = _temp_2687 + 1708
	load	[r14+-24],r1
	add	r1,1708,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_2684  sizeInBytes=4
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
_Label_2680:
! SEND STATEMENT...
	mov	1006,r13		! source line 1006
	mov	"\0\0SE",r10
!   _temp_2689 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-16]
!   _temp_2690 = _temp_2689 + 1688
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
	.word	_Label_2691
	.word	8		! total size of parameters
	.word	252		! frame size = 252
	.word	_Label_2692
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2693
	.word	12
	.word	4
	.word	_Label_2694
	.word	-12
	.word	4
	.word	_Label_2695
	.word	-16
	.word	4
	.word	_Label_2696
	.word	-20
	.word	4
	.word	_Label_2697
	.word	-24
	.word	4
	.word	_Label_2698
	.word	-28
	.word	4
	.word	_Label_2699
	.word	-32
	.word	4
	.word	_Label_2700
	.word	-36
	.word	4
	.word	_Label_2701
	.word	-40
	.word	4
	.word	_Label_2702
	.word	-44
	.word	4
	.word	_Label_2703
	.word	-48
	.word	4
	.word	_Label_2704
	.word	-52
	.word	4
	.word	_Label_2705
	.word	-56
	.word	4
	.word	_Label_2706
	.word	-60
	.word	4
	.word	_Label_2707
	.word	-64
	.word	4
	.word	_Label_2708
	.word	-68
	.word	4
	.word	_Label_2709
	.word	-72
	.word	4
	.word	_Label_2710
	.word	-76
	.word	4
	.word	_Label_2711
	.word	-80
	.word	4
	.word	_Label_2712
	.word	-84
	.word	4
	.word	_Label_2713
	.word	-88
	.word	4
	.word	_Label_2714
	.word	-92
	.word	4
	.word	_Label_2715
	.word	-96
	.word	4
	.word	_Label_2716
	.word	-100
	.word	4
	.word	_Label_2717
	.word	-104
	.word	4
	.word	_Label_2718
	.word	-108
	.word	4
	.word	_Label_2719
	.word	-112
	.word	4
	.word	_Label_2720
	.word	-116
	.word	4
	.word	_Label_2721
	.word	-120
	.word	4
	.word	_Label_2722
	.word	-124
	.word	4
	.word	_Label_2723
	.word	-128
	.word	4
	.word	_Label_2724
	.word	-132
	.word	4
	.word	_Label_2725
	.word	-136
	.word	4
	.word	_Label_2726
	.word	-140
	.word	4
	.word	_Label_2727
	.word	-144
	.word	4
	.word	_Label_2728
	.word	-148
	.word	4
	.word	_Label_2729
	.word	-152
	.word	4
	.word	_Label_2730
	.word	-156
	.word	4
	.word	_Label_2731
	.word	-160
	.word	4
	.word	_Label_2732
	.word	-164
	.word	4
	.word	_Label_2733
	.word	-168
	.word	4
	.word	_Label_2734
	.word	-172
	.word	4
	.word	_Label_2735
	.word	-176
	.word	4
	.word	_Label_2736
	.word	-180
	.word	4
	.word	_Label_2737
	.word	-184
	.word	4
	.word	_Label_2738
	.word	-188
	.word	4
	.word	_Label_2739
	.word	-192
	.word	4
	.word	_Label_2740
	.word	-196
	.word	4
	.word	_Label_2741
	.word	-200
	.word	4
	.word	_Label_2742
	.word	-204
	.word	4
	.word	_Label_2743
	.word	-208
	.word	4
	.word	_Label_2744
	.word	-212
	.word	4
	.word	_Label_2745
	.word	-216
	.word	4
	.word	_Label_2746
	.word	-220
	.word	4
	.word	_Label_2747
	.word	-224
	.word	4
	.word	_Label_2748
	.word	-228
	.word	4
	.word	_Label_2749
	.word	-232
	.word	4
	.word	_Label_2750
	.word	-236
	.word	4
	.word	_Label_2751
	.word	-240
	.word	4
	.word	_Label_2752
	.word	-244
	.word	4
	.word	_Label_2753
	.word	-248
	.word	4
	.word	_Label_2754
	.word	-252
	.word	4
	.word	0
_Label_2691:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"TurnIntoZombie\0"
	.align
_Label_2692:
	.ascii	"Pself\0"
	.align
_Label_2693:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_2694:
	.byte	'?'
	.ascii	"_temp_2690\0"
	.align
_Label_2695:
	.byte	'?'
	.ascii	"_temp_2689\0"
	.align
_Label_2696:
	.byte	'?'
	.ascii	"_temp_2688\0"
	.align
_Label_2697:
	.byte	'?'
	.ascii	"_temp_2687\0"
	.align
_Label_2698:
	.byte	'?'
	.ascii	"_temp_2686\0"
	.align
_Label_2699:
	.byte	'?'
	.ascii	"_temp_2685\0"
	.align
_Label_2700:
	.byte	'?'
	.ascii	"_temp_2684\0"
	.align
_Label_2701:
	.byte	'?'
	.ascii	"_temp_2683\0"
	.align
_Label_2702:
	.byte	'?'
	.ascii	"_temp_2682\0"
	.align
_Label_2703:
	.byte	'?'
	.ascii	"_temp_2681\0"
	.align
_Label_2704:
	.byte	'?'
	.ascii	"_temp_2679\0"
	.align
_Label_2705:
	.byte	'?'
	.ascii	"_temp_2678\0"
	.align
_Label_2706:
	.byte	'?'
	.ascii	"_temp_2677\0"
	.align
_Label_2707:
	.byte	'?'
	.ascii	"_temp_2676\0"
	.align
_Label_2708:
	.byte	'?'
	.ascii	"_temp_2675\0"
	.align
_Label_2709:
	.byte	'?'
	.ascii	"_temp_2674\0"
	.align
_Label_2710:
	.byte	'?'
	.ascii	"_temp_2673\0"
	.align
_Label_2711:
	.byte	'?'
	.ascii	"_temp_2672\0"
	.align
_Label_2712:
	.byte	'?'
	.ascii	"_temp_2668\0"
	.align
_Label_2713:
	.byte	'?'
	.ascii	"_temp_2667\0"
	.align
_Label_2714:
	.byte	'?'
	.ascii	"_temp_2666\0"
	.align
_Label_2715:
	.byte	'?'
	.ascii	"_temp_2665\0"
	.align
_Label_2716:
	.byte	'?'
	.ascii	"_temp_2664\0"
	.align
_Label_2717:
	.byte	'?'
	.ascii	"_temp_2663\0"
	.align
_Label_2718:
	.byte	'?'
	.ascii	"_temp_2662\0"
	.align
_Label_2719:
	.byte	'?'
	.ascii	"_temp_2661\0"
	.align
_Label_2720:
	.byte	'?'
	.ascii	"_temp_2660\0"
	.align
_Label_2721:
	.byte	'?'
	.ascii	"_temp_2659\0"
	.align
_Label_2722:
	.byte	'?'
	.ascii	"_temp_2658\0"
	.align
_Label_2723:
	.byte	'?'
	.ascii	"_temp_2657\0"
	.align
_Label_2724:
	.byte	'?'
	.ascii	"_temp_2656\0"
	.align
_Label_2725:
	.byte	'?'
	.ascii	"_temp_2655\0"
	.align
_Label_2726:
	.byte	'?'
	.ascii	"_temp_2654\0"
	.align
_Label_2727:
	.byte	'?'
	.ascii	"_temp_2653\0"
	.align
_Label_2728:
	.byte	'?'
	.ascii	"_temp_2652\0"
	.align
_Label_2729:
	.byte	'?'
	.ascii	"_temp_2651\0"
	.align
_Label_2730:
	.byte	'?'
	.ascii	"_temp_2650\0"
	.align
_Label_2731:
	.byte	'?'
	.ascii	"_temp_2649\0"
	.align
_Label_2732:
	.byte	'?'
	.ascii	"_temp_2648\0"
	.align
_Label_2733:
	.byte	'?'
	.ascii	"_temp_2647\0"
	.align
_Label_2734:
	.byte	'?'
	.ascii	"_temp_2646\0"
	.align
_Label_2735:
	.byte	'?'
	.ascii	"_temp_2645\0"
	.align
_Label_2736:
	.byte	'?'
	.ascii	"_temp_2644\0"
	.align
_Label_2737:
	.byte	'?'
	.ascii	"_temp_2643\0"
	.align
_Label_2738:
	.byte	'?'
	.ascii	"_temp_2642\0"
	.align
_Label_2739:
	.byte	'?'
	.ascii	"_temp_2638\0"
	.align
_Label_2740:
	.byte	'?'
	.ascii	"_temp_2637\0"
	.align
_Label_2741:
	.byte	'?'
	.ascii	"_temp_2636\0"
	.align
_Label_2742:
	.byte	'?'
	.ascii	"_temp_2635\0"
	.align
_Label_2743:
	.byte	'?'
	.ascii	"_temp_2634\0"
	.align
_Label_2744:
	.byte	'?'
	.ascii	"_temp_2633\0"
	.align
_Label_2745:
	.byte	'?'
	.ascii	"_temp_2632\0"
	.align
_Label_2746:
	.byte	'?'
	.ascii	"_temp_2631\0"
	.align
_Label_2747:
	.byte	'?'
	.ascii	"_temp_2630\0"
	.align
_Label_2748:
	.byte	'?'
	.ascii	"_temp_2629\0"
	.align
_Label_2749:
	.byte	'?'
	.ascii	"_temp_2626\0"
	.align
_Label_2750:
	.byte	'?'
	.ascii	"_temp_2625\0"
	.align
_Label_2751:
	.byte	'?'
	.ascii	"_temp_2620\0"
	.align
_Label_2752:
	.byte	'?'
	.ascii	"_temp_2619\0"
	.align
_Label_2753:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2754:
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
_Label_4405:
	push	r0
	sub	r1,1,r1
	bne	_Label_4405
	mov	1012,r13		! source line 1012
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1016,r13		! source line 1016
	mov	"\0\0SE",r10
!   _temp_2755 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-88]
!   _temp_2756 = _temp_2755 + 1688
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
_Label_2757:
!   if intIsZero (proc) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2761 = proc + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-76]
!   Data Move: _temp_2760 = *_temp_2761  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_2760 == 2 then goto _Label_2759		(int)
	load	[r14+-80],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_2759
!	jmp	_Label_2758
_Label_2758:
	mov	1018,r13		! source line 1018
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1019,r13		! source line 1019
	mov	"\0\0SE",r10
!   _temp_2763 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-68]
!   _temp_2764 = _temp_2763 + 1688
	load	[r14+-68],r1
	add	r1,1688,r1
	store	r1,[r14+-64]
!   _temp_2762 = _temp_2764		(4 bytes)
	load	[r14+-64],r1
	store	r1,[r14+-72]
!   _temp_2765 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-60]
!   _temp_2766 = _temp_2765 + 1736
	load	[r14+-60],r1
	add	r1,1736,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=12  value=_temp_2762  sizeInBytes=4
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
	jmp	_Label_2757
_Label_2759:
! ASSIGNMENT STATEMENT...
	mov	1022,r13		! source line 1022
	mov	"\0\0AS",r10
!   if intIsZero (proc) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2767 = proc + 28
	load	[r14+12],r1
	add	r1,28,r1
	store	r1,[r14+-52]
!   Data Move: procExitStatus = *_temp_2767  (sizeInBytes=4)
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
!   _temp_2768 = proc + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_2768 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1024,r13		! source line 1024
	mov	"\0\0SE",r10
!   _temp_2769 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-44]
!   _temp_2770 = _temp_2769 + 1724
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
!   _temp_2772 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-32]
!   _temp_2773 = _temp_2772 + 1688
	load	[r14+-32],r1
	add	r1,1688,r1
	store	r1,[r14+-28]
!   _temp_2771 = _temp_2773		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   _temp_2774 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-24]
!   _temp_2775 = _temp_2774 + 1708
	load	[r14+-24],r1
	add	r1,1708,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_2771  sizeInBytes=4
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
!   _temp_2776 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-16]
!   _temp_2777 = _temp_2776 + 1688
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
	.word	_Label_2778
	.word	8		! total size of parameters
	.word	92		! frame size = 92
	.word	_Label_2779
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2780
	.word	12
	.word	4
	.word	_Label_2781
	.word	-12
	.word	4
	.word	_Label_2782
	.word	-16
	.word	4
	.word	_Label_2783
	.word	-20
	.word	4
	.word	_Label_2784
	.word	-24
	.word	4
	.word	_Label_2785
	.word	-28
	.word	4
	.word	_Label_2786
	.word	-32
	.word	4
	.word	_Label_2787
	.word	-36
	.word	4
	.word	_Label_2788
	.word	-40
	.word	4
	.word	_Label_2789
	.word	-44
	.word	4
	.word	_Label_2790
	.word	-48
	.word	4
	.word	_Label_2791
	.word	-52
	.word	4
	.word	_Label_2792
	.word	-56
	.word	4
	.word	_Label_2793
	.word	-60
	.word	4
	.word	_Label_2794
	.word	-64
	.word	4
	.word	_Label_2795
	.word	-68
	.word	4
	.word	_Label_2796
	.word	-72
	.word	4
	.word	_Label_2797
	.word	-76
	.word	4
	.word	_Label_2798
	.word	-80
	.word	4
	.word	_Label_2799
	.word	-84
	.word	4
	.word	_Label_2800
	.word	-88
	.word	4
	.word	_Label_2801
	.word	-92
	.word	4
	.word	0
_Label_2778:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"WaitForZombie\0"
	.align
_Label_2779:
	.ascii	"Pself\0"
	.align
_Label_2780:
	.byte	'P'
	.ascii	"proc\0"
	.align
_Label_2781:
	.byte	'?'
	.ascii	"_temp_2777\0"
	.align
_Label_2782:
	.byte	'?'
	.ascii	"_temp_2776\0"
	.align
_Label_2783:
	.byte	'?'
	.ascii	"_temp_2775\0"
	.align
_Label_2784:
	.byte	'?'
	.ascii	"_temp_2774\0"
	.align
_Label_2785:
	.byte	'?'
	.ascii	"_temp_2773\0"
	.align
_Label_2786:
	.byte	'?'
	.ascii	"_temp_2772\0"
	.align
_Label_2787:
	.byte	'?'
	.ascii	"_temp_2771\0"
	.align
_Label_2788:
	.byte	'?'
	.ascii	"_temp_2770\0"
	.align
_Label_2789:
	.byte	'?'
	.ascii	"_temp_2769\0"
	.align
_Label_2790:
	.byte	'?'
	.ascii	"_temp_2768\0"
	.align
_Label_2791:
	.byte	'?'
	.ascii	"_temp_2767\0"
	.align
_Label_2792:
	.byte	'?'
	.ascii	"_temp_2766\0"
	.align
_Label_2793:
	.byte	'?'
	.ascii	"_temp_2765\0"
	.align
_Label_2794:
	.byte	'?'
	.ascii	"_temp_2764\0"
	.align
_Label_2795:
	.byte	'?'
	.ascii	"_temp_2763\0"
	.align
_Label_2796:
	.byte	'?'
	.ascii	"_temp_2762\0"
	.align
_Label_2797:
	.byte	'?'
	.ascii	"_temp_2761\0"
	.align
_Label_2798:
	.byte	'?'
	.ascii	"_temp_2760\0"
	.align
_Label_2799:
	.byte	'?'
	.ascii	"_temp_2756\0"
	.align
_Label_2800:
	.byte	'?'
	.ascii	"_temp_2755\0"
	.align
_Label_2801:
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
_Label_4406:
	push	r0
	sub	r1,1,r1
	bne	_Label_4406
	mov	1033,r13		! source line 1033
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1037,r13		! source line 1037
	mov	"\0\0SE",r10
!   _temp_2802 = &processManagerLock
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
!   _temp_2803 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2803 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1039,r13		! source line 1039
	mov	"\0\0SE",r10
!   _temp_2804 = &freeList
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
!   _temp_2805 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-20]
!   _temp_2806 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1708,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2805  sizeInBytes=4
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
!   _temp_2807 = &processManagerLock
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
	.word	_Label_2808
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_2809
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2810
	.word	12
	.word	4
	.word	_Label_2811
	.word	-12
	.word	4
	.word	_Label_2812
	.word	-16
	.word	4
	.word	_Label_2813
	.word	-20
	.word	4
	.word	_Label_2814
	.word	-24
	.word	4
	.word	_Label_2815
	.word	-28
	.word	4
	.word	_Label_2816
	.word	-32
	.word	4
	.word	0
_Label_2808:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"FreeProcess\0"
	.align
_Label_2809:
	.ascii	"Pself\0"
	.align
_Label_2810:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_2811:
	.byte	'?'
	.ascii	"_temp_2807\0"
	.align
_Label_2812:
	.byte	'?'
	.ascii	"_temp_2806\0"
	.align
_Label_2813:
	.byte	'?'
	.ascii	"_temp_2805\0"
	.align
_Label_2814:
	.byte	'?'
	.ascii	"_temp_2804\0"
	.align
_Label_2815:
	.byte	'?'
	.ascii	"_temp_2803\0"
	.align
_Label_2816:
	.byte	'?'
	.ascii	"_temp_2802\0"
	.align
! 
! ===============  CLASS FrameManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FrameManager:
	.word	_Label_2817
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
_Label_2817:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2818
	.word	_sourceFileName
	.word	290		! line number
	.word	56		! size of instances, in bytes
	.word	_P_Kernel_FrameManager
	.word	_P_System_Object
	.word	0
_Label_2818:
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
_Label_4407:
	push	r0
	sub	r1,1,r1
	bne	_Label_4407
	mov	1090,r13		! source line 1090
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2819 = _StringConst_107
	set	_StringConst_107,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_2819  sizeInBytes=4
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
!   _temp_2821 = &framesInUse
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
!   _temp_2823 = &frameManagerLock
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
!   _temp_2825 = &newFramesAvailable
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
!   _temp_2830 = 1048576		(4 bytes)
	set	1048576,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2831 = 1048876		(4 bytes)
	set	1048876,r1
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2830  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-56]
_Label_2826:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2831 then goto _Label_2829		
	load	[r14+-56],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2829
_Label_2827:
	mov	1109,r13		! source line 1109
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1112,r13		! source line 1112
	mov	"\0\0IF",r10
!   if intIsZero (i) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2834 = *i  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2834) then goto _Label_2833
	load	[r14+-16],r1
	cmp	r1,r0
	be	_Label_2833
!	jmp	_Label_2832
_Label_2832:
! THEN...
	mov	1113,r13		! source line 1113
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2835 = _StringConst_108
	set	_StringConst_108,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2835  sizeInBytes=4
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
_Label_2833:
!   Increment the FOR-LOOP index variable and jump back
_Label_2828:
!   i = i + 4
	load	[r14+-56],r1
	add	r1,4,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_2826
! END FOR
_Label_2829:
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
	.word	_Label_2836
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_2837
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2838
	.word	-12
	.word	4
	.word	_Label_2839
	.word	-16
	.word	4
	.word	_Label_2840
	.word	-20
	.word	4
	.word	_Label_2841
	.word	-24
	.word	4
	.word	_Label_2842
	.word	-28
	.word	4
	.word	_Label_2843
	.word	-32
	.word	4
	.word	_Label_2844
	.word	-36
	.word	4
	.word	_Label_2845
	.word	-40
	.word	4
	.word	_Label_2846
	.word	-44
	.word	4
	.word	_Label_2847
	.word	-48
	.word	4
	.word	_Label_2848
	.word	-52
	.word	4
	.word	_Label_2849
	.word	-56
	.word	4
	.word	0
_Label_2836:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2837:
	.ascii	"Pself\0"
	.align
_Label_2838:
	.byte	'?'
	.ascii	"_temp_2835\0"
	.align
_Label_2839:
	.byte	'?'
	.ascii	"_temp_2834\0"
	.align
_Label_2840:
	.byte	'?'
	.ascii	"_temp_2831\0"
	.align
_Label_2841:
	.byte	'?'
	.ascii	"_temp_2830\0"
	.align
_Label_2842:
	.byte	'?'
	.ascii	"_temp_2825\0"
	.align
_Label_2843:
	.byte	'?'
	.ascii	"_temp_2824\0"
	.align
_Label_2844:
	.byte	'?'
	.ascii	"_temp_2823\0"
	.align
_Label_2845:
	.byte	'?'
	.ascii	"_temp_2822\0"
	.align
_Label_2846:
	.byte	'?'
	.ascii	"_temp_2821\0"
	.align
_Label_2847:
	.byte	'?'
	.ascii	"_temp_2820\0"
	.align
_Label_2848:
	.byte	'?'
	.ascii	"_temp_2819\0"
	.align
_Label_2849:
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
_Label_4408:
	push	r0
	sub	r1,1,r1
	bne	_Label_4408
	mov	1120,r13		! source line 1120
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1124,r13		! source line 1124
	mov	"\0\0SE",r10
!   _temp_2850 = &frameManagerLock
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
!   _temp_2851 = _StringConst_109
	set	_StringConst_109,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2851  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1125,r13		! source line 1125
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2852 = _StringConst_110
	set	_StringConst_110,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2852  sizeInBytes=4
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
!   _temp_2853 = _StringConst_111
	set	_StringConst_111,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2853  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1127,r13		! source line 1127
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1128,r13		! source line 1128
	mov	"\0\0SE",r10
!   _temp_2854 = &framesInUse
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
!   _temp_2855 = &frameManagerLock
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
	.word	_Label_2856
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_2857
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2858
	.word	-12
	.word	4
	.word	_Label_2859
	.word	-16
	.word	4
	.word	_Label_2860
	.word	-20
	.word	4
	.word	_Label_2861
	.word	-24
	.word	4
	.word	_Label_2862
	.word	-28
	.word	4
	.word	_Label_2863
	.word	-32
	.word	4
	.word	0
_Label_2856:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2857:
	.ascii	"Pself\0"
	.align
_Label_2858:
	.byte	'?'
	.ascii	"_temp_2855\0"
	.align
_Label_2859:
	.byte	'?'
	.ascii	"_temp_2854\0"
	.align
_Label_2860:
	.byte	'?'
	.ascii	"_temp_2853\0"
	.align
_Label_2861:
	.byte	'?'
	.ascii	"_temp_2852\0"
	.align
_Label_2862:
	.byte	'?'
	.ascii	"_temp_2851\0"
	.align
_Label_2863:
	.byte	'?'
	.ascii	"_temp_2850\0"
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
_Label_4409:
	push	r0
	sub	r1,1,r1
	bne	_Label_4409
	mov	1134,r13		! source line 1134
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1141,r13		! source line 1141
	mov	"\0\0SE",r10
!   _temp_2864 = &frameManagerLock
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
_Label_2865:
!   if numberFreeFrames >= 1 then goto _Label_2867		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2867
!	jmp	_Label_2866
_Label_2866:
	mov	1144,r13		! source line 1144
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1145,r13		! source line 1145
	mov	"\0\0SE",r10
!   _temp_2868 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   _temp_2869 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_2868  sizeInBytes=4
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
	jmp	_Label_2865
_Label_2867:
! ASSIGNMENT STATEMENT...
	mov	1149,r13		! source line 1149
	mov	"\0\0AS",r10
	mov	1149,r13		! source line 1149
	mov	"\0\0SE",r10
!   _temp_2870 = &framesInUse
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
!   _temp_2871 = &frameManagerLock
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
!   _temp_2872 = f * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   frameAddr = 1048576 + _temp_2872		(int)
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
	.word	_Label_2873
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_2874
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2875
	.word	-12
	.word	4
	.word	_Label_2876
	.word	-16
	.word	4
	.word	_Label_2877
	.word	-20
	.word	4
	.word	_Label_2878
	.word	-24
	.word	4
	.word	_Label_2879
	.word	-28
	.word	4
	.word	_Label_2880
	.word	-32
	.word	4
	.word	_Label_2881
	.word	-36
	.word	4
	.word	_Label_2882
	.word	-40
	.word	4
	.word	0
_Label_2873:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetAFrame\0"
	.align
_Label_2874:
	.ascii	"Pself\0"
	.align
_Label_2875:
	.byte	'?'
	.ascii	"_temp_2872\0"
	.align
_Label_2876:
	.byte	'?'
	.ascii	"_temp_2871\0"
	.align
_Label_2877:
	.byte	'?'
	.ascii	"_temp_2870\0"
	.align
_Label_2878:
	.byte	'?'
	.ascii	"_temp_2869\0"
	.align
_Label_2879:
	.byte	'?'
	.ascii	"_temp_2868\0"
	.align
_Label_2880:
	.byte	'?'
	.ascii	"_temp_2864\0"
	.align
_Label_2881:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_2882:
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
_Label_4410:
	push	r0
	sub	r1,1,r1
	bne	_Label_4410
	mov	1161,r13		! source line 1161
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1168,r13		! source line 1168
	mov	"\0\0AS",r10
	mov	1168,r13		! source line 1168
	mov	"\0\0SE",r10
!   _temp_2883 = &framesInUse
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
!   _temp_2884 = f * 8192		(int)
	load	[r14+-20],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   frameAddr = 1048576 + _temp_2884		(int)
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
	.word	_Label_2885
	.word	4		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2886
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2887
	.word	-12
	.word	4
	.word	_Label_2888
	.word	-16
	.word	4
	.word	_Label_2889
	.word	-20
	.word	4
	.word	_Label_2890
	.word	-24
	.word	4
	.word	0
_Label_2885:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetAFrame2\0"
	.align
_Label_2886:
	.ascii	"Pself\0"
	.align
_Label_2887:
	.byte	'?'
	.ascii	"_temp_2884\0"
	.align
_Label_2888:
	.byte	'?'
	.ascii	"_temp_2883\0"
	.align
_Label_2889:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_2890:
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
_Label_4411:
	push	r0
	sub	r1,1,r1
	bne	_Label_4411
	mov	1178,r13		! source line 1178
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1182,r13		! source line 1182
	mov	"\0\0SE",r10
!   _temp_2891 = &frameManagerLock
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
_Label_2892:
!   if numberFreeFrames >= numFramesNeeded then goto _Label_2894		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2894
!	jmp	_Label_2893
_Label_2893:
	mov	1183,r13		! source line 1183
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1184,r13		! source line 1184
	mov	"\0\0SE",r10
!   _temp_2895 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   _temp_2896 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_2895  sizeInBytes=4
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
	jmp	_Label_2892
_Label_2894:
! FOR STATEMENT...
	mov	1186,r13		! source line 1186
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2901 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-28]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2902 = numFramesNeeded - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2901  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+-44]
_Label_2897:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2902 then goto _Label_2900		
	load	[r14+-44],r1
	load	[r14+-24],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2900
_Label_2898:
	mov	1186,r13		! source line 1186
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1187,r13		! source line 1187
	mov	"\0\0AS",r10
	mov	1187,r13		! source line 1187
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_2903) then goto _runtimeErrorNullPointer
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
_Label_2899:
!   i = i + 1
	load	[r14+-44],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
	jmp	_Label_2897
! END FOR
_Label_2900:
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
!   _temp_2904 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2904 = numFramesNeeded  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1192,r13		! source line 1192
	mov	"\0\0SE",r10
!   _temp_2905 = &frameManagerLock
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
	.word	_Label_2906
	.word	12		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2907
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2908
	.word	12
	.word	4
	.word	_Label_2909
	.word	16
	.word	4
	.word	_Label_2910
	.word	-12
	.word	4
	.word	_Label_2911
	.word	-16
	.word	4
	.word	_Label_2912
	.word	-20
	.word	4
	.word	_Label_2913
	.word	-24
	.word	4
	.word	_Label_2914
	.word	-28
	.word	4
	.word	_Label_2915
	.word	-32
	.word	4
	.word	_Label_2916
	.word	-36
	.word	4
	.word	_Label_2917
	.word	-40
	.word	4
	.word	_Label_2918
	.word	-44
	.word	4
	.word	_Label_2919
	.word	-48
	.word	4
	.word	0
_Label_2906:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetNewFrames\0"
	.align
_Label_2907:
	.ascii	"Pself\0"
	.align
_Label_2908:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_2909:
	.byte	'I'
	.ascii	"numFramesNeeded\0"
	.align
_Label_2910:
	.byte	'?'
	.ascii	"_temp_2905\0"
	.align
_Label_2911:
	.byte	'?'
	.ascii	"_temp_2904\0"
	.align
_Label_2912:
	.byte	'?'
	.ascii	"_temp_2903\0"
	.align
_Label_2913:
	.byte	'?'
	.ascii	"_temp_2902\0"
	.align
_Label_2914:
	.byte	'?'
	.ascii	"_temp_2901\0"
	.align
_Label_2915:
	.byte	'?'
	.ascii	"_temp_2896\0"
	.align
_Label_2916:
	.byte	'?'
	.ascii	"_temp_2895\0"
	.align
_Label_2917:
	.byte	'?'
	.ascii	"_temp_2891\0"
	.align
_Label_2918:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2919:
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
_Label_4412:
	push	r0
	sub	r1,1,r1
	bne	_Label_4412
	mov	1197,r13		! source line 1197
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1202,r13		! source line 1202
	mov	"\0\0SE",r10
!   _temp_2920 = &frameManagerLock
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
!   _temp_2925 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-52]
!   Calculate and save the FOR-LOOP ending value
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2928 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Data Move: _temp_2927 = *_temp_2928  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_2926 = _temp_2927 - 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2925  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+-60]
_Label_2921:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2926 then goto _Label_2924		
	load	[r14+-60],r1
	load	[r14+-48],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2924
_Label_2922:
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
!   _temp_2929 = frameAddr - 1048576		(int)
	load	[r14+-68],r1
	set	1048576,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   bitIndex = _temp_2929 div 8192		(int)
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
!   _temp_2930 = &framesInUse
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
_Label_2923:
!   i = i + 1
	load	[r14+-60],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
	jmp	_Label_2921
! END FOR
_Label_2924:
! ASSIGNMENT STATEMENT...
	mov	1208,r13		! source line 1208
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2932 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Data Move: _temp_2931 = *_temp_2932  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   numberFreeFrames = numberFreeFrames + _temp_2931		(int)
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
!   _temp_2933 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   _temp_2934 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2933  sizeInBytes=4
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
!   _temp_2935 = &frameManagerLock
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
	.word	_Label_2936
	.word	8		! total size of parameters
	.word	68		! frame size = 68
	.word	_Label_2937
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2938
	.word	12
	.word	4
	.word	_Label_2939
	.word	-12
	.word	4
	.word	_Label_2940
	.word	-16
	.word	4
	.word	_Label_2941
	.word	-20
	.word	4
	.word	_Label_2942
	.word	-24
	.word	4
	.word	_Label_2943
	.word	-28
	.word	4
	.word	_Label_2944
	.word	-32
	.word	4
	.word	_Label_2945
	.word	-36
	.word	4
	.word	_Label_2946
	.word	-40
	.word	4
	.word	_Label_2947
	.word	-44
	.word	4
	.word	_Label_2948
	.word	-48
	.word	4
	.word	_Label_2949
	.word	-52
	.word	4
	.word	_Label_2950
	.word	-56
	.word	4
	.word	_Label_2951
	.word	-60
	.word	4
	.word	_Label_2952
	.word	-64
	.word	4
	.word	_Label_2953
	.word	-68
	.word	4
	.word	0
_Label_2936:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"ReturnAllFrames\0"
	.align
_Label_2937:
	.ascii	"Pself\0"
	.align
_Label_2938:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_2939:
	.byte	'?'
	.ascii	"_temp_2935\0"
	.align
_Label_2940:
	.byte	'?'
	.ascii	"_temp_2934\0"
	.align
_Label_2941:
	.byte	'?'
	.ascii	"_temp_2933\0"
	.align
_Label_2942:
	.byte	'?'
	.ascii	"_temp_2932\0"
	.align
_Label_2943:
	.byte	'?'
	.ascii	"_temp_2931\0"
	.align
_Label_2944:
	.byte	'?'
	.ascii	"_temp_2930\0"
	.align
_Label_2945:
	.byte	'?'
	.ascii	"_temp_2929\0"
	.align
_Label_2946:
	.byte	'?'
	.ascii	"_temp_2928\0"
	.align
_Label_2947:
	.byte	'?'
	.ascii	"_temp_2927\0"
	.align
_Label_2948:
	.byte	'?'
	.ascii	"_temp_2926\0"
	.align
_Label_2949:
	.byte	'?'
	.ascii	"_temp_2925\0"
	.align
_Label_2950:
	.byte	'?'
	.ascii	"_temp_2920\0"
	.align
_Label_2951:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2952:
	.byte	'I'
	.ascii	"bitIndex\0"
	.align
_Label_2953:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
! 
! ===============  CLASS AddrSpace  ===============
! 
! Dispatch Table:
! 
_P_Kernel_AddrSpace:
	.word	_Label_2954
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
_Label_2954:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2955
	.word	_sourceFileName
	.word	310		! line number
	.word	92		! size of instances, in bytes
	.word	_P_Kernel_AddrSpace
	.word	_P_System_Object
	.word	0
_Label_2955:
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
_Label_4413:
	push	r0
	sub	r1,1,r1
	bne	_Label_4413
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
!   _temp_2956 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-108]
!   NEW ARRAY Constructor...
!   _temp_2958 = &_temp_2957
	add	r14,-104,r1
	store	r1,[r14+-20]
!   _temp_2958 = _temp_2958 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	20,r1
	store	r1,[r14+-16]
_Label_2960:
!   Data Move: *_temp_2958 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_2958 = _temp_2958 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_2959 = _temp_2959 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_2959) then goto _Label_2960
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_2960
!   Initialize the array size...
	mov	20,r1
	store	r1,[r14+-104]
!   _temp_2961 = &_temp_2957
	add	r14,-104,r1
	store	r1,[r14+-12]
!   make sure array has size 20
	load	[r14+-108],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,0
	be	_Label_4414
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4414:
!   make sure array has size 20
	load	[r14+-12],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2956 = *_temp_2961  (sizeInBytes=84)
	load	[r14+-12],r5
	load	[r14+-108],r4
	mov	21,r3
_Label_4415:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4415
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
	.word	_Label_2962
	.word	4		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_2963
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2964
	.word	-12
	.word	4
	.word	_Label_2965
	.word	-16
	.word	4
	.word	_Label_2966
	.word	-20
	.word	4
	.word	_Label_2967
	.word	-104
	.word	84
	.word	_Label_2968
	.word	-108
	.word	4
	.word	0
_Label_2962:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2963:
	.ascii	"Pself\0"
	.align
_Label_2964:
	.byte	'?'
	.ascii	"_temp_2961\0"
	.align
_Label_2965:
	.byte	'?'
	.ascii	"_temp_2959\0"
	.align
_Label_2966:
	.byte	'?'
	.ascii	"_temp_2958\0"
	.align
_Label_2967:
	.byte	'?'
	.ascii	"_temp_2957\0"
	.align
_Label_2968:
	.byte	'?'
	.ascii	"_temp_2956\0"
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
_Label_4416:
	push	r0
	sub	r1,1,r1
	bne	_Label_4416
	mov	1231,r13		! source line 1231
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2969 = _StringConst_112
	set	_StringConst_112,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_2969  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	1236,r13		! source line 1236
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2970 = _StringConst_113
	set	_StringConst_113,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_2970  sizeInBytes=4
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
!   _temp_2975 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-156]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2976 = numberOfPages - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2975  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+-168]
_Label_2971:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2976 then goto _Label_2974		
	load	[r14+-168],r1
	load	[r14+-152],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2974
_Label_2972:
	mov	1238,r13		! source line 1238
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2977 = _StringConst_114
	set	_StringConst_114,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_2977  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	1239,r13		! source line 1239
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2979 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-140]
!   Move address of _temp_2979 [i ] into _temp_2980
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
!   _temp_2978 = _temp_2980		(4 bytes)
	load	[r14+-136],r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_2978  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	1240,r13		! source line 1240
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2981 = _StringConst_115
	set	_StringConst_115,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2981  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	1241,r13		! source line 1241
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2983 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-124]
!   Move address of _temp_2983 [i ] into _temp_2984
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
!   Data Move: _temp_2982 = *_temp_2984  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_2982  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	1242,r13		! source line 1242
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2985 = _StringConst_116
	set	_StringConst_116,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_2985  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	1243,r13		! source line 1243
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2986 = i * 8192		(int)
	load	[r14+-168],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_2986  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	1244,r13		! source line 1244
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2987 = _StringConst_117
	set	_StringConst_117,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_2987  sizeInBytes=4
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
!   if intIsZero (_temp_2989) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2988  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_2988  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	1246,r13		! source line 1246
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2990 = _StringConst_118
	set	_StringConst_118,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_2990  sizeInBytes=4
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
!   if intIsZero (_temp_2994) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2993  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2993) then goto _Label_2992
	load	[r14+-92],r1
	cmp	r1,r0
	be	_Label_2992
!	jmp	_Label_2991
_Label_2991:
! THEN...
	mov	1249,r13		! source line 1249
	mov	"\0\0TN",r10
! CALL STATEMENT...
	mov	1249,r13		! source line 1249
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_2996) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2995  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_2995  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	1249,r13		! source line 1249
	mov	"\0\0CE",r10
	call	printHex
	jmp	_Label_2997
_Label_2992:
! ELSE...
	mov	1251,r13		! source line 1251
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2998 = _StringConst_119
	set	_StringConst_119,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_2998  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	1251,r13		! source line 1251
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2997:
! CALL STATEMENT...
!   _temp_2999 = _StringConst_120
	set	_StringConst_120,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_2999  sizeInBytes=4
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
!   if intIsZero (_temp_3002) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_3000 else goto _Label_3001
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_3001
	jmp	_Label_3000
_Label_3000:
! THEN...
	mov	1255,r13		! source line 1255
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3003 = _StringConst_121
	set	_StringConst_121,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_3003  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	1255,r13		! source line 1255
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_3004
_Label_3001:
! ELSE...
	mov	1257,r13		! source line 1257
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_3005 = _StringConst_122
	set	_StringConst_122,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_3005  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1257,r13		! source line 1257
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_3004:
! CALL STATEMENT...
!   _temp_3006 = _StringConst_123
	set	_StringConst_123,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_3006  sizeInBytes=4
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
!   if intIsZero (_temp_3009) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_3007 else goto _Label_3008
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_3008
	jmp	_Label_3007
_Label_3007:
! THEN...
	mov	1261,r13		! source line 1261
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3010 = _StringConst_124
	set	_StringConst_124,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_3010  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1261,r13		! source line 1261
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_3011
_Label_3008:
! ELSE...
	mov	1263,r13		! source line 1263
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_3012 = _StringConst_125
	set	_StringConst_125,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_3012  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1263,r13		! source line 1263
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_3011:
! CALL STATEMENT...
!   _temp_3013 = _StringConst_126
	set	_StringConst_126,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_3013  sizeInBytes=4
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
!   if intIsZero (_temp_3016) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_3014 else goto _Label_3015
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_3015
	jmp	_Label_3014
_Label_3014:
! THEN...
	mov	1267,r13		! source line 1267
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3017 = _StringConst_127
	set	_StringConst_127,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_3017  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1267,r13		! source line 1267
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_3018
_Label_3015:
! ELSE...
	mov	1269,r13		! source line 1269
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_3019 = _StringConst_128
	set	_StringConst_128,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_3019  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1269,r13		! source line 1269
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_3018:
! CALL STATEMENT...
!   _temp_3020 = _StringConst_129
	set	_StringConst_129,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3020  sizeInBytes=4
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
!   if intIsZero (_temp_3023) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_3021 else goto _Label_3022
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_3022
	jmp	_Label_3021
_Label_3021:
! THEN...
	mov	1273,r13		! source line 1273
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3024 = _StringConst_130
	set	_StringConst_130,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3024  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1273,r13		! source line 1273
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_3025
_Label_3022:
! ELSE...
	mov	1275,r13		! source line 1275
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_3026 = _StringConst_131
	set	_StringConst_131,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3026  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1275,r13		! source line 1275
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_3025:
! CALL STATEMENT...
!   Call the function
	mov	1277,r13		! source line 1277
	mov	"\0\0CA",r10
	call	_P_System_nl
!   Increment the FOR-LOOP index variable and jump back
_Label_2973:
!   i = i + 1
	load	[r14+-168],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-168]
	jmp	_Label_2971
! END FOR
_Label_2974:
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
	.word	_Label_3027
	.word	4		! total size of parameters
	.word	168		! frame size = 168
	.word	_Label_3028
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3029
	.word	-12
	.word	4
	.word	_Label_3030
	.word	-16
	.word	4
	.word	_Label_3031
	.word	-20
	.word	4
	.word	_Label_3032
	.word	-24
	.word	4
	.word	_Label_3033
	.word	-28
	.word	4
	.word	_Label_3034
	.word	-32
	.word	4
	.word	_Label_3035
	.word	-36
	.word	4
	.word	_Label_3036
	.word	-40
	.word	4
	.word	_Label_3037
	.word	-44
	.word	4
	.word	_Label_3038
	.word	-48
	.word	4
	.word	_Label_3039
	.word	-52
	.word	4
	.word	_Label_3040
	.word	-56
	.word	4
	.word	_Label_3041
	.word	-60
	.word	4
	.word	_Label_3042
	.word	-64
	.word	4
	.word	_Label_3043
	.word	-68
	.word	4
	.word	_Label_3044
	.word	-72
	.word	4
	.word	_Label_3045
	.word	-76
	.word	4
	.word	_Label_3046
	.word	-80
	.word	4
	.word	_Label_3047
	.word	-84
	.word	4
	.word	_Label_3048
	.word	-88
	.word	4
	.word	_Label_3049
	.word	-92
	.word	4
	.word	_Label_3050
	.word	-96
	.word	4
	.word	_Label_3051
	.word	-100
	.word	4
	.word	_Label_3052
	.word	-104
	.word	4
	.word	_Label_3053
	.word	-108
	.word	4
	.word	_Label_3054
	.word	-112
	.word	4
	.word	_Label_3055
	.word	-116
	.word	4
	.word	_Label_3056
	.word	-120
	.word	4
	.word	_Label_3057
	.word	-124
	.word	4
	.word	_Label_3058
	.word	-128
	.word	4
	.word	_Label_3059
	.word	-132
	.word	4
	.word	_Label_3060
	.word	-136
	.word	4
	.word	_Label_3061
	.word	-140
	.word	4
	.word	_Label_3062
	.word	-144
	.word	4
	.word	_Label_3063
	.word	-148
	.word	4
	.word	_Label_3064
	.word	-152
	.word	4
	.word	_Label_3065
	.word	-156
	.word	4
	.word	_Label_3066
	.word	-160
	.word	4
	.word	_Label_3067
	.word	-164
	.word	4
	.word	_Label_3068
	.word	-168
	.word	4
	.word	0
_Label_3027:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_3028:
	.ascii	"Pself\0"
	.align
_Label_3029:
	.byte	'?'
	.ascii	"_temp_3026\0"
	.align
_Label_3030:
	.byte	'?'
	.ascii	"_temp_3024\0"
	.align
_Label_3031:
	.byte	'?'
	.ascii	"_temp_3023\0"
	.align
_Label_3032:
	.byte	'?'
	.ascii	"_temp_3020\0"
	.align
_Label_3033:
	.byte	'?'
	.ascii	"_temp_3019\0"
	.align
_Label_3034:
	.byte	'?'
	.ascii	"_temp_3017\0"
	.align
_Label_3035:
	.byte	'?'
	.ascii	"_temp_3016\0"
	.align
_Label_3036:
	.byte	'?'
	.ascii	"_temp_3013\0"
	.align
_Label_3037:
	.byte	'?'
	.ascii	"_temp_3012\0"
	.align
_Label_3038:
	.byte	'?'
	.ascii	"_temp_3010\0"
	.align
_Label_3039:
	.byte	'?'
	.ascii	"_temp_3009\0"
	.align
_Label_3040:
	.byte	'?'
	.ascii	"_temp_3006\0"
	.align
_Label_3041:
	.byte	'?'
	.ascii	"_temp_3005\0"
	.align
_Label_3042:
	.byte	'?'
	.ascii	"_temp_3003\0"
	.align
_Label_3043:
	.byte	'?'
	.ascii	"_temp_3002\0"
	.align
_Label_3044:
	.byte	'?'
	.ascii	"_temp_2999\0"
	.align
_Label_3045:
	.byte	'?'
	.ascii	"_temp_2998\0"
	.align
_Label_3046:
	.byte	'?'
	.ascii	"_temp_2996\0"
	.align
_Label_3047:
	.byte	'?'
	.ascii	"_temp_2995\0"
	.align
_Label_3048:
	.byte	'?'
	.ascii	"_temp_2994\0"
	.align
_Label_3049:
	.byte	'?'
	.ascii	"_temp_2993\0"
	.align
_Label_3050:
	.byte	'?'
	.ascii	"_temp_2990\0"
	.align
_Label_3051:
	.byte	'?'
	.ascii	"_temp_2989\0"
	.align
_Label_3052:
	.byte	'?'
	.ascii	"_temp_2988\0"
	.align
_Label_3053:
	.byte	'?'
	.ascii	"_temp_2987\0"
	.align
_Label_3054:
	.byte	'?'
	.ascii	"_temp_2986\0"
	.align
_Label_3055:
	.byte	'?'
	.ascii	"_temp_2985\0"
	.align
_Label_3056:
	.byte	'?'
	.ascii	"_temp_2984\0"
	.align
_Label_3057:
	.byte	'?'
	.ascii	"_temp_2983\0"
	.align
_Label_3058:
	.byte	'?'
	.ascii	"_temp_2982\0"
	.align
_Label_3059:
	.byte	'?'
	.ascii	"_temp_2981\0"
	.align
_Label_3060:
	.byte	'?'
	.ascii	"_temp_2980\0"
	.align
_Label_3061:
	.byte	'?'
	.ascii	"_temp_2979\0"
	.align
_Label_3062:
	.byte	'?'
	.ascii	"_temp_2978\0"
	.align
_Label_3063:
	.byte	'?'
	.ascii	"_temp_2977\0"
	.align
_Label_3064:
	.byte	'?'
	.ascii	"_temp_2976\0"
	.align
_Label_3065:
	.byte	'?'
	.ascii	"_temp_2975\0"
	.align
_Label_3066:
	.byte	'?'
	.ascii	"_temp_2970\0"
	.align
_Label_3067:
	.byte	'?'
	.ascii	"_temp_2969\0"
	.align
_Label_3068:
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
_Label_4417:
	push	r0
	sub	r1,1,r1
	bne	_Label_4417
	mov	1283,r13		! source line 1283
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1288,r13		! source line 1288
	mov	"\0\0RE",r10
!   _temp_3071 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_3071 [entry ] into _temp_3072
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
!   Data Move: _temp_3070 = *_temp_3072  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_3069 = _temp_3070 AND -8192		(int)
	load	[r14+-20],r1
	mov	-8192,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_3069  (sizeInBytes=4)
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
	.word	_Label_3073
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_3074
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3075
	.word	12
	.word	4
	.word	_Label_3076
	.word	-12
	.word	4
	.word	_Label_3077
	.word	-16
	.word	4
	.word	_Label_3078
	.word	-20
	.word	4
	.word	_Label_3079
	.word	-24
	.word	4
	.word	0
_Label_3073:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractFrameAddr\0"
	.align
_Label_3074:
	.ascii	"Pself\0"
	.align
_Label_3075:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3076:
	.byte	'?'
	.ascii	"_temp_3072\0"
	.align
_Label_3077:
	.byte	'?'
	.ascii	"_temp_3071\0"
	.align
_Label_3078:
	.byte	'?'
	.ascii	"_temp_3070\0"
	.align
_Label_3079:
	.byte	'?'
	.ascii	"_temp_3069\0"
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
_Label_4418:
	push	r0
	sub	r1,1,r1
	bne	_Label_4418
	mov	1293,r13		! source line 1293
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1297,r13		! source line 1297
	mov	"\0\0RE",r10
!   _temp_3082 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_3082 [entry ] into _temp_3083
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
!   Data Move: _temp_3081 = *_temp_3083  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_3080 = _temp_3081 AND 8176		(int)
	load	[r14+-20],r1
	mov	8176,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_3080  (sizeInBytes=4)
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
	.word	_Label_3084
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_3085
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3086
	.word	12
	.word	4
	.word	_Label_3087
	.word	-12
	.word	4
	.word	_Label_3088
	.word	-16
	.word	4
	.word	_Label_3089
	.word	-20
	.word	4
	.word	_Label_3090
	.word	-24
	.word	4
	.word	0
_Label_3084:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractUndefinedBits\0"
	.align
_Label_3085:
	.ascii	"Pself\0"
	.align
_Label_3086:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3087:
	.byte	'?'
	.ascii	"_temp_3083\0"
	.align
_Label_3088:
	.byte	'?'
	.ascii	"_temp_3082\0"
	.align
_Label_3089:
	.byte	'?'
	.ascii	"_temp_3081\0"
	.align
_Label_3090:
	.byte	'?'
	.ascii	"_temp_3080\0"
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
_Label_4419:
	push	r0
	sub	r1,1,r1
	bne	_Label_4419
	mov	1302,r13		! source line 1302
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1307,r13		! source line 1307
	mov	"\0\0AS",r10
!   _temp_3091 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-36]
!   Move address of _temp_3091 [entry ] into _temp_3092
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
!   _temp_3096 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_3096 [entry ] into _temp_3097
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
!   Data Move: _temp_3095 = *_temp_3097  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_3094 = _temp_3095 AND 8191		(int)
	load	[r14+-20],r1
	mov	8191,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   _temp_3093 = _temp_3094 OR frameAddr		(int)
	load	[r14+-24],r1
	load	[r14+16],r2
	or	r1,r2,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_3092 = _temp_3093  (sizeInBytes=4)
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
	.word	_Label_3098
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_3099
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3100
	.word	12
	.word	4
	.word	_Label_3101
	.word	16
	.word	4
	.word	_Label_3102
	.word	-12
	.word	4
	.word	_Label_3103
	.word	-16
	.word	4
	.word	_Label_3104
	.word	-20
	.word	4
	.word	_Label_3105
	.word	-24
	.word	4
	.word	_Label_3106
	.word	-28
	.word	4
	.word	_Label_3107
	.word	-32
	.word	4
	.word	_Label_3108
	.word	-36
	.word	4
	.word	0
_Label_3098:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetFrameAddr\0"
	.align
_Label_3099:
	.ascii	"Pself\0"
	.align
_Label_3100:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3101:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_3102:
	.byte	'?'
	.ascii	"_temp_3097\0"
	.align
_Label_3103:
	.byte	'?'
	.ascii	"_temp_3096\0"
	.align
_Label_3104:
	.byte	'?'
	.ascii	"_temp_3095\0"
	.align
_Label_3105:
	.byte	'?'
	.ascii	"_temp_3094\0"
	.align
_Label_3106:
	.byte	'?'
	.ascii	"_temp_3093\0"
	.align
_Label_3107:
	.byte	'?'
	.ascii	"_temp_3092\0"
	.align
_Label_3108:
	.byte	'?'
	.ascii	"_temp_3091\0"
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
_Label_4420:
	push	r0
	sub	r1,1,r1
	bne	_Label_4420
	mov	1312,r13		! source line 1312
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1316,r13		! source line 1316
	mov	"\0\0RE",r10
!   _temp_3112 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_3112 [entry ] into _temp_3113
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
!   Data Move: _temp_3111 = *_temp_3113  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_3110 = _temp_3111 AND 8		(int)
	load	[r14+-24],r1
	mov	8,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_3110) then goto _Label_3114
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_3114
!   _temp_3109 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_3115
_Label_3114:
!   _temp_3109 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_3115:
!   ReturnResult: _temp_3109  (sizeInBytes=1)
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
	.word	_Label_3116
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_3117
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3118
	.word	12
	.word	4
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
	.word	-28
	.word	4
	.word	_Label_3123
	.word	-9
	.word	1
	.word	0
_Label_3116:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsDirty\0"
	.align
_Label_3117:
	.ascii	"Pself\0"
	.align
_Label_3118:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3119:
	.byte	'?'
	.ascii	"_temp_3113\0"
	.align
_Label_3120:
	.byte	'?'
	.ascii	"_temp_3112\0"
	.align
_Label_3121:
	.byte	'?'
	.ascii	"_temp_3111\0"
	.align
_Label_3122:
	.byte	'?'
	.ascii	"_temp_3110\0"
	.align
_Label_3123:
	.byte	'C'
	.ascii	"_temp_3109\0"
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
_Label_4421:
	push	r0
	sub	r1,1,r1
	bne	_Label_4421
	mov	1321,r13		! source line 1321
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1325,r13		! source line 1325
	mov	"\0\0RE",r10
!   _temp_3127 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_3127 [entry ] into _temp_3128
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
!   Data Move: _temp_3126 = *_temp_3128  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_3125 = _temp_3126 AND 4		(int)
	load	[r14+-24],r1
	mov	4,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_3125) then goto _Label_3129
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_3129
!   _temp_3124 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_3130
_Label_3129:
!   _temp_3124 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_3130:
!   ReturnResult: _temp_3124  (sizeInBytes=1)
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
	.word	_Label_3131
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_3132
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3133
	.word	12
	.word	4
	.word	_Label_3134
	.word	-16
	.word	4
	.word	_Label_3135
	.word	-20
	.word	4
	.word	_Label_3136
	.word	-24
	.word	4
	.word	_Label_3137
	.word	-28
	.word	4
	.word	_Label_3138
	.word	-9
	.word	1
	.word	0
_Label_3131:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsReferenced\0"
	.align
_Label_3132:
	.ascii	"Pself\0"
	.align
_Label_3133:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3134:
	.byte	'?'
	.ascii	"_temp_3128\0"
	.align
_Label_3135:
	.byte	'?'
	.ascii	"_temp_3127\0"
	.align
_Label_3136:
	.byte	'?'
	.ascii	"_temp_3126\0"
	.align
_Label_3137:
	.byte	'?'
	.ascii	"_temp_3125\0"
	.align
_Label_3138:
	.byte	'C'
	.ascii	"_temp_3124\0"
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
_Label_4422:
	push	r0
	sub	r1,1,r1
	bne	_Label_4422
	mov	1330,r13		! source line 1330
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1334,r13		! source line 1334
	mov	"\0\0RE",r10
!   _temp_3142 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_3142 [entry ] into _temp_3143
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
!   Data Move: _temp_3141 = *_temp_3143  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_3140 = _temp_3141 AND 2		(int)
	load	[r14+-24],r1
	mov	2,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_3140) then goto _Label_3144
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_3144
!   _temp_3139 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_3145
_Label_3144:
!   _temp_3139 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_3145:
!   ReturnResult: _temp_3139  (sizeInBytes=1)
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
	.word	_Label_3146
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_3147
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3148
	.word	12
	.word	4
	.word	_Label_3149
	.word	-16
	.word	4
	.word	_Label_3150
	.word	-20
	.word	4
	.word	_Label_3151
	.word	-24
	.word	4
	.word	_Label_3152
	.word	-28
	.word	4
	.word	_Label_3153
	.word	-9
	.word	1
	.word	0
_Label_3146:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsWritable\0"
	.align
_Label_3147:
	.ascii	"Pself\0"
	.align
_Label_3148:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3149:
	.byte	'?'
	.ascii	"_temp_3143\0"
	.align
_Label_3150:
	.byte	'?'
	.ascii	"_temp_3142\0"
	.align
_Label_3151:
	.byte	'?'
	.ascii	"_temp_3141\0"
	.align
_Label_3152:
	.byte	'?'
	.ascii	"_temp_3140\0"
	.align
_Label_3153:
	.byte	'C'
	.ascii	"_temp_3139\0"
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
_Label_4423:
	push	r0
	sub	r1,1,r1
	bne	_Label_4423
	mov	1339,r13		! source line 1339
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1343,r13		! source line 1343
	mov	"\0\0RE",r10
!   _temp_3157 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_3157 [entry ] into _temp_3158
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
!   Data Move: _temp_3156 = *_temp_3158  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_3155 = _temp_3156 AND 1		(int)
	load	[r14+-24],r1
	mov	1,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_3155) then goto _Label_3159
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_3159
!   _temp_3154 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_3160
_Label_3159:
!   _temp_3154 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_3160:
!   ReturnResult: _temp_3154  (sizeInBytes=1)
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
	.word	_Label_3161
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_3162
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3163
	.word	12
	.word	4
	.word	_Label_3164
	.word	-16
	.word	4
	.word	_Label_3165
	.word	-20
	.word	4
	.word	_Label_3166
	.word	-24
	.word	4
	.word	_Label_3167
	.word	-28
	.word	4
	.word	_Label_3168
	.word	-9
	.word	1
	.word	0
_Label_3161:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsValid\0"
	.align
_Label_3162:
	.ascii	"Pself\0"
	.align
_Label_3163:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3164:
	.byte	'?'
	.ascii	"_temp_3158\0"
	.align
_Label_3165:
	.byte	'?'
	.ascii	"_temp_3157\0"
	.align
_Label_3166:
	.byte	'?'
	.ascii	"_temp_3156\0"
	.align
_Label_3167:
	.byte	'?'
	.ascii	"_temp_3155\0"
	.align
_Label_3168:
	.byte	'C'
	.ascii	"_temp_3154\0"
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
_Label_4424:
	push	r0
	sub	r1,1,r1
	bne	_Label_4424
	mov	1348,r13		! source line 1348
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1352,r13		! source line 1352
	mov	"\0\0AS",r10
!   _temp_3169 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_3169 [entry ] into _temp_3170
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
!   _temp_3173 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_3173 [entry ] into _temp_3174
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
!   Data Move: _temp_3172 = *_temp_3174  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_3171 = _temp_3172 OR 8		(int)
	load	[r14+-20],r1
	mov	8,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3170 = _temp_3171  (sizeInBytes=4)
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
	.word	_Label_3175
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_3176
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3177
	.word	12
	.word	4
	.word	_Label_3178
	.word	-12
	.word	4
	.word	_Label_3179
	.word	-16
	.word	4
	.word	_Label_3180
	.word	-20
	.word	4
	.word	_Label_3181
	.word	-24
	.word	4
	.word	_Label_3182
	.word	-28
	.word	4
	.word	_Label_3183
	.word	-32
	.word	4
	.word	0
_Label_3175:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetDirty\0"
	.align
_Label_3176:
	.ascii	"Pself\0"
	.align
_Label_3177:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3178:
	.byte	'?'
	.ascii	"_temp_3174\0"
	.align
_Label_3179:
	.byte	'?'
	.ascii	"_temp_3173\0"
	.align
_Label_3180:
	.byte	'?'
	.ascii	"_temp_3172\0"
	.align
_Label_3181:
	.byte	'?'
	.ascii	"_temp_3171\0"
	.align
_Label_3182:
	.byte	'?'
	.ascii	"_temp_3170\0"
	.align
_Label_3183:
	.byte	'?'
	.ascii	"_temp_3169\0"
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
_Label_4425:
	push	r0
	sub	r1,1,r1
	bne	_Label_4425
	mov	1357,r13		! source line 1357
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1361,r13		! source line 1361
	mov	"\0\0AS",r10
!   _temp_3184 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_3184 [entry ] into _temp_3185
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
!   _temp_3188 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_3188 [entry ] into _temp_3189
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
!   Data Move: _temp_3187 = *_temp_3189  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_3186 = _temp_3187 OR 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3185 = _temp_3186  (sizeInBytes=4)
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
	.word	_Label_3190
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_3191
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3192
	.word	12
	.word	4
	.word	_Label_3193
	.word	-12
	.word	4
	.word	_Label_3194
	.word	-16
	.word	4
	.word	_Label_3195
	.word	-20
	.word	4
	.word	_Label_3196
	.word	-24
	.word	4
	.word	_Label_3197
	.word	-28
	.word	4
	.word	_Label_3198
	.word	-32
	.word	4
	.word	0
_Label_3190:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetReferenced\0"
	.align
_Label_3191:
	.ascii	"Pself\0"
	.align
_Label_3192:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3193:
	.byte	'?'
	.ascii	"_temp_3189\0"
	.align
_Label_3194:
	.byte	'?'
	.ascii	"_temp_3188\0"
	.align
_Label_3195:
	.byte	'?'
	.ascii	"_temp_3187\0"
	.align
_Label_3196:
	.byte	'?'
	.ascii	"_temp_3186\0"
	.align
_Label_3197:
	.byte	'?'
	.ascii	"_temp_3185\0"
	.align
_Label_3198:
	.byte	'?'
	.ascii	"_temp_3184\0"
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
_Label_4426:
	push	r0
	sub	r1,1,r1
	bne	_Label_4426
	mov	1366,r13		! source line 1366
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1370,r13		! source line 1370
	mov	"\0\0AS",r10
!   _temp_3199 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_3199 [entry ] into _temp_3200
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
!   _temp_3203 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_3203 [entry ] into _temp_3204
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
!   Data Move: _temp_3202 = *_temp_3204  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_3201 = _temp_3202 OR 2		(int)
	load	[r14+-20],r1
	mov	2,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3200 = _temp_3201  (sizeInBytes=4)
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
	.word	_Label_3205
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_3206
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3207
	.word	12
	.word	4
	.word	_Label_3208
	.word	-12
	.word	4
	.word	_Label_3209
	.word	-16
	.word	4
	.word	_Label_3210
	.word	-20
	.word	4
	.word	_Label_3211
	.word	-24
	.word	4
	.word	_Label_3212
	.word	-28
	.word	4
	.word	_Label_3213
	.word	-32
	.word	4
	.word	0
_Label_3205:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetWritable\0"
	.align
_Label_3206:
	.ascii	"Pself\0"
	.align
_Label_3207:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3208:
	.byte	'?'
	.ascii	"_temp_3204\0"
	.align
_Label_3209:
	.byte	'?'
	.ascii	"_temp_3203\0"
	.align
_Label_3210:
	.byte	'?'
	.ascii	"_temp_3202\0"
	.align
_Label_3211:
	.byte	'?'
	.ascii	"_temp_3201\0"
	.align
_Label_3212:
	.byte	'?'
	.ascii	"_temp_3200\0"
	.align
_Label_3213:
	.byte	'?'
	.ascii	"_temp_3199\0"
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
_Label_4427:
	push	r0
	sub	r1,1,r1
	bne	_Label_4427
	mov	1375,r13		! source line 1375
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1379,r13		! source line 1379
	mov	"\0\0AS",r10
!   _temp_3214 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_3214 [entry ] into _temp_3215
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
!   _temp_3218 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_3218 [entry ] into _temp_3219
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
!   Data Move: _temp_3217 = *_temp_3219  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_3216 = _temp_3217 OR 1		(int)
	load	[r14+-20],r1
	mov	1,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3215 = _temp_3216  (sizeInBytes=4)
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
	.word	_Label_3220
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_3221
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3222
	.word	12
	.word	4
	.word	_Label_3223
	.word	-12
	.word	4
	.word	_Label_3224
	.word	-16
	.word	4
	.word	_Label_3225
	.word	-20
	.word	4
	.word	_Label_3226
	.word	-24
	.word	4
	.word	_Label_3227
	.word	-28
	.word	4
	.word	_Label_3228
	.word	-32
	.word	4
	.word	0
_Label_3220:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetValid\0"
	.align
_Label_3221:
	.ascii	"Pself\0"
	.align
_Label_3222:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3223:
	.byte	'?'
	.ascii	"_temp_3219\0"
	.align
_Label_3224:
	.byte	'?'
	.ascii	"_temp_3218\0"
	.align
_Label_3225:
	.byte	'?'
	.ascii	"_temp_3217\0"
	.align
_Label_3226:
	.byte	'?'
	.ascii	"_temp_3216\0"
	.align
_Label_3227:
	.byte	'?'
	.ascii	"_temp_3215\0"
	.align
_Label_3228:
	.byte	'?'
	.ascii	"_temp_3214\0"
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
_Label_4428:
	push	r0
	sub	r1,1,r1
	bne	_Label_4428
	mov	1384,r13		! source line 1384
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1388,r13		! source line 1388
	mov	"\0\0AS",r10
!   _temp_3229 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_3229 [entry ] into _temp_3230
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
!   _temp_3233 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_3233 [entry ] into _temp_3234
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
!   Data Move: _temp_3232 = *_temp_3234  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_3231 = _temp_3232 AND -9		(int)
	load	[r14+-20],r1
	mov	-9,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3230 = _temp_3231  (sizeInBytes=4)
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
	.word	_Label_3235
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_3236
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3237
	.word	12
	.word	4
	.word	_Label_3238
	.word	-12
	.word	4
	.word	_Label_3239
	.word	-16
	.word	4
	.word	_Label_3240
	.word	-20
	.word	4
	.word	_Label_3241
	.word	-24
	.word	4
	.word	_Label_3242
	.word	-28
	.word	4
	.word	_Label_3243
	.word	-32
	.word	4
	.word	0
_Label_3235:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearDirty\0"
	.align
_Label_3236:
	.ascii	"Pself\0"
	.align
_Label_3237:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3238:
	.byte	'?'
	.ascii	"_temp_3234\0"
	.align
_Label_3239:
	.byte	'?'
	.ascii	"_temp_3233\0"
	.align
_Label_3240:
	.byte	'?'
	.ascii	"_temp_3232\0"
	.align
_Label_3241:
	.byte	'?'
	.ascii	"_temp_3231\0"
	.align
_Label_3242:
	.byte	'?'
	.ascii	"_temp_3230\0"
	.align
_Label_3243:
	.byte	'?'
	.ascii	"_temp_3229\0"
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
_Label_4429:
	push	r0
	sub	r1,1,r1
	bne	_Label_4429
	mov	1393,r13		! source line 1393
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1397,r13		! source line 1397
	mov	"\0\0AS",r10
!   _temp_3244 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_3244 [entry ] into _temp_3245
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
!   _temp_3248 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_3248 [entry ] into _temp_3249
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
!   Data Move: _temp_3247 = *_temp_3249  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_3246 = _temp_3247 AND -5		(int)
	load	[r14+-20],r1
	mov	-5,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3245 = _temp_3246  (sizeInBytes=4)
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
	.word	_Label_3250
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_3251
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3252
	.word	12
	.word	4
	.word	_Label_3253
	.word	-12
	.word	4
	.word	_Label_3254
	.word	-16
	.word	4
	.word	_Label_3255
	.word	-20
	.word	4
	.word	_Label_3256
	.word	-24
	.word	4
	.word	_Label_3257
	.word	-28
	.word	4
	.word	_Label_3258
	.word	-32
	.word	4
	.word	0
_Label_3250:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearReferenced\0"
	.align
_Label_3251:
	.ascii	"Pself\0"
	.align
_Label_3252:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3253:
	.byte	'?'
	.ascii	"_temp_3249\0"
	.align
_Label_3254:
	.byte	'?'
	.ascii	"_temp_3248\0"
	.align
_Label_3255:
	.byte	'?'
	.ascii	"_temp_3247\0"
	.align
_Label_3256:
	.byte	'?'
	.ascii	"_temp_3246\0"
	.align
_Label_3257:
	.byte	'?'
	.ascii	"_temp_3245\0"
	.align
_Label_3258:
	.byte	'?'
	.ascii	"_temp_3244\0"
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
_Label_4430:
	push	r0
	sub	r1,1,r1
	bne	_Label_4430
	mov	1402,r13		! source line 1402
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1406,r13		! source line 1406
	mov	"\0\0AS",r10
!   _temp_3259 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_3259 [entry ] into _temp_3260
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
!   _temp_3263 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_3263 [entry ] into _temp_3264
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
!   Data Move: _temp_3262 = *_temp_3264  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_3261 = _temp_3262 AND -3		(int)
	load	[r14+-20],r1
	mov	-3,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3260 = _temp_3261  (sizeInBytes=4)
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
	.word	_Label_3265
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_3266
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3267
	.word	12
	.word	4
	.word	_Label_3268
	.word	-12
	.word	4
	.word	_Label_3269
	.word	-16
	.word	4
	.word	_Label_3270
	.word	-20
	.word	4
	.word	_Label_3271
	.word	-24
	.word	4
	.word	_Label_3272
	.word	-28
	.word	4
	.word	_Label_3273
	.word	-32
	.word	4
	.word	0
_Label_3265:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearWritable\0"
	.align
_Label_3266:
	.ascii	"Pself\0"
	.align
_Label_3267:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3268:
	.byte	'?'
	.ascii	"_temp_3264\0"
	.align
_Label_3269:
	.byte	'?'
	.ascii	"_temp_3263\0"
	.align
_Label_3270:
	.byte	'?'
	.ascii	"_temp_3262\0"
	.align
_Label_3271:
	.byte	'?'
	.ascii	"_temp_3261\0"
	.align
_Label_3272:
	.byte	'?'
	.ascii	"_temp_3260\0"
	.align
_Label_3273:
	.byte	'?'
	.ascii	"_temp_3259\0"
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
_Label_4431:
	push	r0
	sub	r1,1,r1
	bne	_Label_4431
	mov	1411,r13		! source line 1411
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1415,r13		! source line 1415
	mov	"\0\0AS",r10
!   _temp_3274 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_3274 [entry ] into _temp_3275
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
!   _temp_3278 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_3278 [entry ] into _temp_3279
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
!   Data Move: _temp_3277 = *_temp_3279  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_3276 = _temp_3277 AND -2		(int)
	load	[r14+-20],r1
	mov	-2,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3275 = _temp_3276  (sizeInBytes=4)
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
	.word	_Label_3280
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_3281
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3282
	.word	12
	.word	4
	.word	_Label_3283
	.word	-12
	.word	4
	.word	_Label_3284
	.word	-16
	.word	4
	.word	_Label_3285
	.word	-20
	.word	4
	.word	_Label_3286
	.word	-24
	.word	4
	.word	_Label_3287
	.word	-28
	.word	4
	.word	_Label_3288
	.word	-32
	.word	4
	.word	0
_Label_3280:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearValid\0"
	.align
_Label_3281:
	.ascii	"Pself\0"
	.align
_Label_3282:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3283:
	.byte	'?'
	.ascii	"_temp_3279\0"
	.align
_Label_3284:
	.byte	'?'
	.ascii	"_temp_3278\0"
	.align
_Label_3285:
	.byte	'?'
	.ascii	"_temp_3277\0"
	.align
_Label_3286:
	.byte	'?'
	.ascii	"_temp_3276\0"
	.align
_Label_3287:
	.byte	'?'
	.ascii	"_temp_3275\0"
	.align
_Label_3288:
	.byte	'?'
	.ascii	"_temp_3274\0"
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
_Label_4432:
	push	r0
	sub	r1,1,r1
	bne	_Label_4432
	mov	1420,r13		! source line 1420
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3290 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_3290 [0 ] into _temp_3291
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
!   _temp_3289 = _temp_3291		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_3292 = numberOfPages * 4		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	4,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3289  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_3292  sizeInBytes=4
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
	.word	_Label_3293
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_3294
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3295
	.word	-12
	.word	4
	.word	_Label_3296
	.word	-16
	.word	4
	.word	_Label_3297
	.word	-20
	.word	4
	.word	_Label_3298
	.word	-24
	.word	4
	.word	0
_Label_3293:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetToThisPageTable\0"
	.align
_Label_3294:
	.ascii	"Pself\0"
	.align
_Label_3295:
	.byte	'?'
	.ascii	"_temp_3292\0"
	.align
_Label_3296:
	.byte	'?'
	.ascii	"_temp_3291\0"
	.align
_Label_3297:
	.byte	'?'
	.ascii	"_temp_3290\0"
	.align
_Label_3298:
	.byte	'?'
	.ascii	"_temp_3289\0"
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
_Label_4433:
	push	r0
	sub	r1,1,r1
	bne	_Label_4433
	mov	1431,r13		! source line 1431
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1446,r13		! source line 1446
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_3299
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_3299
	jmp	_Label_3300
_Label_3299:
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
	jmp	_Label_3301
_Label_3300:
! ELSE...
	mov	1448,r13		! source line 1448
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1448,r13		! source line 1448
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_3303		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3303
!	jmp	_Label_3302
_Label_3302:
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
_Label_3303:
! END IF...
_Label_3301:
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
_Label_3304:
!	jmp	_Label_3305
_Label_3305:
	mov	1455,r13		! source line 1455
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1456,r13		! source line 1456
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_3308		(int)
	load	[r14+-40],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_3308
!	jmp	_Label_3307
_Label_3307:
! THEN...
	mov	1457,r13		! source line 1457
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3309 = _StringConst_132
	set	_StringConst_132,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_3309  sizeInBytes=4
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
_Label_3308:
! IF STATEMENT...
	mov	1460,r13		! source line 1460
	mov	"\0\0IF",r10
	mov	1460,r13		! source line 1460
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_3313) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3312  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_3312 then goto _Label_3311 else goto _Label_3310
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3310
	jmp	_Label_3311
_Label_3310:
! THEN...
	mov	1461,r13		! source line 1461
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3314 = _StringConst_133
	set	_StringConst_133,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3314  sizeInBytes=4
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
_Label_3311:
! ASSIGNMENT STATEMENT...
	mov	1464,r13		! source line 1464
	mov	"\0\0AS",r10
	mov	1464,r13		! source line 1464
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_3316) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3315  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   fromAddr = _temp_3315 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! WHILE STATEMENT...
	mov	1466,r13		! source line 1466
	mov	"\0\0WH",r10
_Label_3317:
!   if offset >= 8192 then goto _Label_3319		(int)
	load	[r14+-44],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3319
!	jmp	_Label_3318
_Label_3318:
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
!   Data Move: _temp_3320 = *fromAddr  (sizeInBytes=1)
	load	[r14+-48],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *kernelAddr = _temp_3320  (sizeInBytes=1)
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
!   if copiedSoFar != numBytes then goto _Label_3322		(int)
	load	[r14+-36],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_3322
!	jmp	_Label_3321
_Label_3321:
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
_Label_3322:
! END WHILE...
	jmp	_Label_3317
_Label_3319:
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
	jmp	_Label_3304
_Label_3306:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_19:
	.word	_sourceFileName
	.word	_Label_3323
	.word	16		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_3324
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3325
	.word	12
	.word	4
	.word	_Label_3326
	.word	16
	.word	4
	.word	_Label_3327
	.word	20
	.word	4
	.word	_Label_3328
	.word	-9
	.word	1
	.word	_Label_3329
	.word	-16
	.word	4
	.word	_Label_3330
	.word	-20
	.word	4
	.word	_Label_3331
	.word	-24
	.word	4
	.word	_Label_3332
	.word	-28
	.word	4
	.word	_Label_3333
	.word	-10
	.word	1
	.word	_Label_3334
	.word	-32
	.word	4
	.word	_Label_3335
	.word	-36
	.word	4
	.word	_Label_3336
	.word	-40
	.word	4
	.word	_Label_3337
	.word	-44
	.word	4
	.word	_Label_3338
	.word	-48
	.word	4
	.word	0
_Label_3323:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesFromVirtual\0"
	.align
_Label_3324:
	.ascii	"Pself\0"
	.align
_Label_3325:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_3326:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_3327:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3328:
	.byte	'C'
	.ascii	"_temp_3320\0"
	.align
_Label_3329:
	.byte	'?'
	.ascii	"_temp_3316\0"
	.align
_Label_3330:
	.byte	'?'
	.ascii	"_temp_3315\0"
	.align
_Label_3331:
	.byte	'?'
	.ascii	"_temp_3314\0"
	.align
_Label_3332:
	.byte	'?'
	.ascii	"_temp_3313\0"
	.align
_Label_3333:
	.byte	'C'
	.ascii	"_temp_3312\0"
	.align
_Label_3334:
	.byte	'?'
	.ascii	"_temp_3309\0"
	.align
_Label_3335:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_3336:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_3337:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_3338:
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
_Label_4434:
	push	r0
	sub	r1,1,r1
	bne	_Label_4434
	mov	1485,r13		! source line 1485
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1496,r13		! source line 1496
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_3339
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_3339
	jmp	_Label_3340
_Label_3339:
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
	jmp	_Label_3341
_Label_3340:
! ELSE...
	mov	1498,r13		! source line 1498
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1498,r13		! source line 1498
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_3343		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3343
!	jmp	_Label_3342
_Label_3342:
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
_Label_3343:
! END IF...
_Label_3341:
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
_Label_3344:
!	jmp	_Label_3345
_Label_3345:
	mov	1503,r13		! source line 1503
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1504,r13		! source line 1504
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_3350		(int)
	load	[r14+-36],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_3350
	jmp	_Label_3347
_Label_3350:
	mov	1505,r13		! source line 1505
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_3352) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3351  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_3351 then goto _Label_3349 else goto _Label_3347
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_3347
	jmp	_Label_3349
_Label_3349:
	mov	1506,r13		! source line 1506
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_3354) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3353  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_3353 then goto _Label_3348 else goto _Label_3347
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3347
	jmp	_Label_3348
_Label_3347:
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
_Label_3348:
! ASSIGNMENT STATEMENT...
	mov	1509,r13		! source line 1509
	mov	"\0\0AS",r10
	mov	1509,r13		! source line 1509
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_3356) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3355  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   destAddr = _temp_3355 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-40],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1510,r13		! source line 1510
	mov	"\0\0WH",r10
_Label_3357:
!   if offset >= 8192 then goto _Label_3359		(int)
	load	[r14+-40],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3359
!	jmp	_Label_3358
_Label_3358:
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
!   Data Move: _temp_3360 = *kernelAddr  (sizeInBytes=1)
	load	[r14+16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *destAddr = _temp_3360  (sizeInBytes=1)
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
!   if copiedSoFar != numBytes then goto _Label_3362		(int)
	load	[r14+-32],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_3362
!	jmp	_Label_3361
_Label_3361:
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
_Label_3362:
! END WHILE...
	jmp	_Label_3357
_Label_3359:
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
	jmp	_Label_3344
_Label_3346:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_20:
	.word	_sourceFileName
	.word	_Label_3363
	.word	16		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_3364
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3365
	.word	12
	.word	4
	.word	_Label_3366
	.word	16
	.word	4
	.word	_Label_3367
	.word	20
	.word	4
	.word	_Label_3368
	.word	-9
	.word	1
	.word	_Label_3369
	.word	-16
	.word	4
	.word	_Label_3370
	.word	-20
	.word	4
	.word	_Label_3371
	.word	-24
	.word	4
	.word	_Label_3372
	.word	-10
	.word	1
	.word	_Label_3373
	.word	-28
	.word	4
	.word	_Label_3374
	.word	-11
	.word	1
	.word	_Label_3375
	.word	-32
	.word	4
	.word	_Label_3376
	.word	-36
	.word	4
	.word	_Label_3377
	.word	-40
	.word	4
	.word	_Label_3378
	.word	-44
	.word	4
	.word	0
_Label_3363:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesToVirtual\0"
	.align
_Label_3364:
	.ascii	"Pself\0"
	.align
_Label_3365:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_3366:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_3367:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3368:
	.byte	'C'
	.ascii	"_temp_3360\0"
	.align
_Label_3369:
	.byte	'?'
	.ascii	"_temp_3356\0"
	.align
_Label_3370:
	.byte	'?'
	.ascii	"_temp_3355\0"
	.align
_Label_3371:
	.byte	'?'
	.ascii	"_temp_3354\0"
	.align
_Label_3372:
	.byte	'C'
	.ascii	"_temp_3353\0"
	.align
_Label_3373:
	.byte	'?'
	.ascii	"_temp_3352\0"
	.align
_Label_3374:
	.byte	'C'
	.ascii	"_temp_3351\0"
	.align
_Label_3375:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_3376:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_3377:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_3378:
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
_Label_4435:
	push	r0
	sub	r1,1,r1
	bne	_Label_4435
	mov	1527,r13		! source line 1527
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1551,r13		! source line 1551
	mov	"\0\0IF",r10
	mov	1551,r13		! source line 1551
	mov	"\0\0SE",r10
!   _temp_3382 = &sourceSize
	add	r14,-44,r1
	store	r1,[r14+-36]
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_3383) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_3382  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_3381  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   if _temp_3381 >= 4 then goto _Label_3380		(int)
	load	[r14+-40],r1
	mov	4,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3380
!	jmp	_Label_3379
_Label_3379:
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
_Label_3380:
! IF STATEMENT...
	mov	1558,r13		! source line 1558
	mov	"\0\0IF",r10
!   if sourceSize <= maxSize then goto _Label_3385		(int)
	load	[r14+-44],r1
	load	[r14+20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3385
!	jmp	_Label_3384
_Label_3384:
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
_Label_3385:
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
!   _temp_3388 = kernelAddr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-20]
!   _temp_3387 = _temp_3388 + 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   _temp_3389 = virtAddr + 4		(int)
	load	[r14+16],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
	load	[r14+8],r1
	store	r1,[r14+-12]
!   if intIsZero (_temp_3390) then goto _runtimeErrorNullPointer
	load	[r14+-12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_3387  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_3389  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_3386  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_3386  (sizeInBytes=4)
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
	.word	_Label_3391
	.word	16		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_3392
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3393
	.word	12
	.word	4
	.word	_Label_3394
	.word	16
	.word	4
	.word	_Label_3395
	.word	20
	.word	4
	.word	_Label_3396
	.word	-12
	.word	4
	.word	_Label_3397
	.word	-16
	.word	4
	.word	_Label_3398
	.word	-20
	.word	4
	.word	_Label_3399
	.word	-24
	.word	4
	.word	_Label_3400
	.word	-28
	.word	4
	.word	_Label_3401
	.word	-32
	.word	4
	.word	_Label_3402
	.word	-36
	.word	4
	.word	_Label_3403
	.word	-40
	.word	4
	.word	_Label_3404
	.word	-44
	.word	4
	.word	0
_Label_3391:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"GetStringFromVirtual\0"
	.align
_Label_3392:
	.ascii	"Pself\0"
	.align
_Label_3393:
	.byte	'P'
	.ascii	"kernelAddr\0"
	.align
_Label_3394:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_3395:
	.byte	'I'
	.ascii	"maxSize\0"
	.align
_Label_3396:
	.byte	'?'
	.ascii	"_temp_3390\0"
	.align
_Label_3397:
	.byte	'?'
	.ascii	"_temp_3389\0"
	.align
_Label_3398:
	.byte	'?'
	.ascii	"_temp_3388\0"
	.align
_Label_3399:
	.byte	'?'
	.ascii	"_temp_3387\0"
	.align
_Label_3400:
	.byte	'?'
	.ascii	"_temp_3386\0"
	.align
_Label_3401:
	.byte	'?'
	.ascii	"_temp_3383\0"
	.align
_Label_3402:
	.byte	'?'
	.ascii	"_temp_3382\0"
	.align
_Label_3403:
	.byte	'?'
	.ascii	"_temp_3381\0"
	.align
_Label_3404:
	.byte	'I'
	.ascii	"sourceSize\0"
	.align
! 
! ===============  CLASS DiskDriver  ===============
! 
! Dispatch Table:
! 
_P_Kernel_DiskDriver:
	.word	_Label_3405
	jmp	_Method_P_Kernel_DiskDriver_1	! 4:	Init
	jmp	_Method_P_Kernel_DiskDriver_2	! 8:	SynchReadSector
	jmp	_Method_P_Kernel_DiskDriver_3	! 12:	StartReadSector
	jmp	_Method_P_Kernel_DiskDriver_4	! 16:	SynchWriteSector
	jmp	_Method_P_Kernel_DiskDriver_5	! 20:	StartWriteSector
	.word	0
! 
! Class descriptor:
! 
_Label_3405:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3406
	.word	_sourceFileName
	.word	343		! line number
	.word	68		! size of instances, in bytes
	.word	_P_Kernel_DiskDriver
	.word	_P_System_Object
	.word	0
_Label_3406:
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
_Label_4436:
	push	r0
	sub	r1,1,r1
	bne	_Label_4436
	mov	2294,r13		! source line 2294
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3407 = _StringConst_134
	set	_StringConst_134,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_3407  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2295,r13		! source line 2295
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2296,r13		! source line 2296
	mov	"\0\0AS",r10
!   DISK_STATUS_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	2297,r13		! source line 2297
	mov	"\0\0AS",r10
!   DISK_COMMAND_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! ASSIGNMENT STATEMENT...
	mov	2298,r13		! source line 2298
	mov	"\0\0AS",r10
!   DISK_MEMORY_ADDRESS_REGISTER = 16776972		(4 bytes)
	set	16776972,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	2299,r13		! source line 2299
	mov	"\0\0AS",r10
!   DISK_SECTOR_NUMBER_REGISTER = 16776976		(4 bytes)
	set	16776976,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2300,r13		! source line 2300
	mov	"\0\0AS",r10
!   DISK_SECTOR_COUNT_REGISTER = 16776980		(4 bytes)
	set	16776980,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	2301,r13		! source line 2301
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2302,r13		! source line 2302
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
	mov	2303,r13		! source line 2303
	mov	"\0\0SE",r10
!   _temp_3409 = &semUsedInSynchMethods
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
	mov	2304,r13		! source line 2304
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
	mov	2305,r13		! source line 2305
	mov	"\0\0SE",r10
!   _temp_3411 = &diskBusy
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
	mov	2305,r13		! source line 2305
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
	.word	_Label_3412
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_3413
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3414
	.word	-12
	.word	4
	.word	_Label_3415
	.word	-16
	.word	4
	.word	_Label_3416
	.word	-20
	.word	4
	.word	_Label_3417
	.word	-24
	.word	4
	.word	_Label_3418
	.word	-28
	.word	4
	.word	0
_Label_3412:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_3413:
	.ascii	"Pself\0"
	.align
_Label_3414:
	.byte	'?'
	.ascii	"_temp_3411\0"
	.align
_Label_3415:
	.byte	'?'
	.ascii	"_temp_3410\0"
	.align
_Label_3416:
	.byte	'?'
	.ascii	"_temp_3409\0"
	.align
_Label_3417:
	.byte	'?'
	.ascii	"_temp_3408\0"
	.align
_Label_3418:
	.byte	'?'
	.ascii	"_temp_3407\0"
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
_Label_4437:
	push	r0
	sub	r1,1,r1
	bne	_Label_4437
	mov	2310,r13		! source line 2310
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2323,r13		! source line 2323
	mov	"\0\0SE",r10
!   _temp_3419 = &diskBusy
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
	mov	2324,r13		! source line 2324
	mov	"\0\0WH",r10
_Label_3420:
!	jmp	_Label_3421
_Label_3421:
	mov	2324,r13		! source line 2324
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2326,r13		! source line 2326
	mov	"\0\0SE",r10
!   _temp_3423 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_3424) then goto _runtimeErrorNullPointer
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
!   Prepare Argument: offset=24  value=_temp_3423  sizeInBytes=4
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
	mov	2328,r13		! source line 2328
	mov	"\0\0SE",r10
!   _temp_3425 = &semUsedInSynchMethods
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
	mov	2331,r13		! source line 2331
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_3434 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_3428
	cmp	r1,2
	be	_Label_3429
	cmp	r1,3
	be	_Label_3430
	cmp	r1,4
	be	_Label_3431
	cmp	r1,5
	be	_Label_3432
	cmp	r1,6
	be	_Label_3433
	jmp	_Label_3426
! CASE 1...
_Label_3428:
! SEND STATEMENT...
	mov	2333,r13		! source line 2333
	mov	"\0\0SE",r10
!   _temp_3435 = &diskBusy
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
	mov	2334,r13		! source line 2334
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_3429:
! CALL STATEMENT...
!   _temp_3436 = _StringConst_135
	set	_StringConst_135,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_3436  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2336,r13		! source line 2336
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_3430:
! CALL STATEMENT...
!   _temp_3437 = _StringConst_136
	set	_StringConst_136,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3437  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2338,r13		! source line 2338
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_3431:
! CALL STATEMENT...
!   _temp_3438 = _StringConst_137
	set	_StringConst_137,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3438  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2340,r13		! source line 2340
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_3432:
! BREAK STATEMENT...
	mov	2344,r13		! source line 2344
	mov	"\0\0BR",r10
	jmp	_Label_3427
! CASE 6...
_Label_3433:
! CALL STATEMENT...
!   _temp_3439 = _StringConst_138
	set	_StringConst_138,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3439  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2346,r13		! source line 2346
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_3426:
! CALL STATEMENT...
!   _temp_3440 = _StringConst_139
	set	_StringConst_139,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3440  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2348,r13		! source line 2348
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_3427:
! END WHILE...
	jmp	_Label_3420
_Label_3422:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_2:
	.word	_sourceFileName
	.word	_Label_3441
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_3442
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3443
	.word	12
	.word	4
	.word	_Label_3444
	.word	16
	.word	4
	.word	_Label_3445
	.word	20
	.word	4
	.word	_Label_3446
	.word	-12
	.word	4
	.word	_Label_3447
	.word	-16
	.word	4
	.word	_Label_3448
	.word	-20
	.word	4
	.word	_Label_3449
	.word	-24
	.word	4
	.word	_Label_3450
	.word	-28
	.word	4
	.word	_Label_3451
	.word	-32
	.word	4
	.word	_Label_3452
	.word	-36
	.word	4
	.word	_Label_3453
	.word	-40
	.word	4
	.word	_Label_3454
	.word	-44
	.word	4
	.word	_Label_3455
	.word	-48
	.word	4
	.word	_Label_3456
	.word	-52
	.word	4
	.word	0
_Label_3441:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchReadSector\0"
	.align
_Label_3442:
	.ascii	"Pself\0"
	.align
_Label_3443:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_3444:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_3445:
	.byte	'I'
	.ascii	"memoryAddr\0"
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
	.ascii	"_temp_3435\0"
	.align
_Label_3452:
	.byte	'?'
	.ascii	"_temp_3434\0"
	.align
_Label_3453:
	.byte	'?'
	.ascii	"_temp_3425\0"
	.align
_Label_3454:
	.byte	'?'
	.ascii	"_temp_3424\0"
	.align
_Label_3455:
	.byte	'?'
	.ascii	"_temp_3423\0"
	.align
_Label_3456:
	.byte	'?'
	.ascii	"_temp_3419\0"
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
	mov	2357,r13		! source line 2357
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2372,r13		! source line 2372
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2375,r13		! source line 2375
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
	mov	2376,r13		! source line 2376
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
	mov	2377,r13		! source line 2377
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
	mov	2378,r13		! source line 2378
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
	mov	2378,r13		! source line 2378
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
	.word	_Label_3457
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_3458
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3459
	.word	12
	.word	4
	.word	_Label_3460
	.word	16
	.word	4
	.word	_Label_3461
	.word	20
	.word	4
	.word	_Label_3462
	.word	24
	.word	4
	.word	0
_Label_3457:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartReadSector\0"
	.align
_Label_3458:
	.ascii	"Pself\0"
	.align
_Label_3459:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_3460:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_3461:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_3462:
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
_Label_4438:
	push	r0
	sub	r1,1,r1
	bne	_Label_4438
	mov	2383,r13		! source line 2383
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2395,r13		! source line 2395
	mov	"\0\0SE",r10
!   _temp_3463 = &diskBusy
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
	mov	2396,r13		! source line 2396
	mov	"\0\0WH",r10
_Label_3464:
!	jmp	_Label_3465
_Label_3465:
	mov	2396,r13		! source line 2396
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2397,r13		! source line 2397
	mov	"\0\0SE",r10
!   _temp_3467 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_3468) then goto _runtimeErrorNullPointer
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
!   Prepare Argument: offset=24  value=_temp_3467  sizeInBytes=4
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
	mov	2399,r13		! source line 2399
	mov	"\0\0SE",r10
!   _temp_3469 = &semUsedInSynchMethods
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
	mov	2402,r13		! source line 2402
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_3478 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_3472
	cmp	r1,2
	be	_Label_3473
	cmp	r1,3
	be	_Label_3474
	cmp	r1,4
	be	_Label_3475
	cmp	r1,5
	be	_Label_3476
	cmp	r1,6
	be	_Label_3477
	jmp	_Label_3470
! CASE 1...
_Label_3472:
! SEND STATEMENT...
	mov	2404,r13		! source line 2404
	mov	"\0\0SE",r10
!   _temp_3479 = &diskBusy
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
	mov	2405,r13		! source line 2405
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_3473:
! CALL STATEMENT...
!   _temp_3480 = _StringConst_140
	set	_StringConst_140,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_3480  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2407,r13		! source line 2407
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_3474:
! CALL STATEMENT...
!   _temp_3481 = _StringConst_141
	set	_StringConst_141,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3481  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2409,r13		! source line 2409
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_3475:
! CALL STATEMENT...
!   _temp_3482 = _StringConst_142
	set	_StringConst_142,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3482  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2411,r13		! source line 2411
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_3476:
! BREAK STATEMENT...
	mov	2415,r13		! source line 2415
	mov	"\0\0BR",r10
	jmp	_Label_3471
! CASE 6...
_Label_3477:
! CALL STATEMENT...
!   _temp_3483 = _StringConst_143
	set	_StringConst_143,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3483  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2417,r13		! source line 2417
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_3470:
! CALL STATEMENT...
!   _temp_3484 = _StringConst_144
	set	_StringConst_144,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3484  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2419,r13		! source line 2419
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_3471:
! END WHILE...
	jmp	_Label_3464
_Label_3466:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_4:
	.word	_sourceFileName
	.word	_Label_3485
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_3486
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3487
	.word	12
	.word	4
	.word	_Label_3488
	.word	16
	.word	4
	.word	_Label_3489
	.word	20
	.word	4
	.word	_Label_3490
	.word	-12
	.word	4
	.word	_Label_3491
	.word	-16
	.word	4
	.word	_Label_3492
	.word	-20
	.word	4
	.word	_Label_3493
	.word	-24
	.word	4
	.word	_Label_3494
	.word	-28
	.word	4
	.word	_Label_3495
	.word	-32
	.word	4
	.word	_Label_3496
	.word	-36
	.word	4
	.word	_Label_3497
	.word	-40
	.word	4
	.word	_Label_3498
	.word	-44
	.word	4
	.word	_Label_3499
	.word	-48
	.word	4
	.word	_Label_3500
	.word	-52
	.word	4
	.word	0
_Label_3485:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchWriteSector\0"
	.align
_Label_3486:
	.ascii	"Pself\0"
	.align
_Label_3487:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_3488:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_3489:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_3490:
	.byte	'?'
	.ascii	"_temp_3484\0"
	.align
_Label_3491:
	.byte	'?'
	.ascii	"_temp_3483\0"
	.align
_Label_3492:
	.byte	'?'
	.ascii	"_temp_3482\0"
	.align
_Label_3493:
	.byte	'?'
	.ascii	"_temp_3481\0"
	.align
_Label_3494:
	.byte	'?'
	.ascii	"_temp_3480\0"
	.align
_Label_3495:
	.byte	'?'
	.ascii	"_temp_3479\0"
	.align
_Label_3496:
	.byte	'?'
	.ascii	"_temp_3478\0"
	.align
_Label_3497:
	.byte	'?'
	.ascii	"_temp_3469\0"
	.align
_Label_3498:
	.byte	'?'
	.ascii	"_temp_3468\0"
	.align
_Label_3499:
	.byte	'?'
	.ascii	"_temp_3467\0"
	.align
_Label_3500:
	.byte	'?'
	.ascii	"_temp_3463\0"
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
	mov	2428,r13		! source line 2428
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2443,r13		! source line 2443
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2445,r13		! source line 2445
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
	mov	2446,r13		! source line 2446
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
	mov	2447,r13		! source line 2447
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
	mov	2448,r13		! source line 2448
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
	mov	2448,r13		! source line 2448
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
	.word	_Label_3501
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_3502
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3503
	.word	12
	.word	4
	.word	_Label_3504
	.word	16
	.word	4
	.word	_Label_3505
	.word	20
	.word	4
	.word	_Label_3506
	.word	24
	.word	4
	.word	0
_Label_3501:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartWriteSector\0"
	.align
_Label_3502:
	.ascii	"Pself\0"
	.align
_Label_3503:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_3504:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_3505:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_3506:
	.byte	'P'
	.ascii	"whoCares\0"
	.align
! 
! ===============  CLASS FileManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileManager:
	.word	_Label_3507
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
_Label_3507:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3508
	.word	_sourceFileName
	.word	366		! line number
	.word	800		! size of instances, in bytes
	.word	_P_Kernel_FileManager
	.word	_P_System_Object
	.word	0
_Label_3508:
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
_Label_4439:
	push	r0
	sub	r1,1,r1
	bne	_Label_4439
	mov	2459,r13		! source line 2459
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3509 = _StringConst_145
	set	_StringConst_145,r1
	store	r1,[r14+-940]
!   Prepare Argument: offset=8  value=_temp_3509  sizeInBytes=4
	load	[r14+-940],r1
	store	r1,[r15+0]
!   Call the function
	mov	2466,r13		! source line 2466
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2467,r13		! source line 2467
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
	mov	2468,r13		! source line 2468
	mov	"\0\0SE",r10
!   _temp_3511 = &fileManagerLock
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
	mov	2471,r13		! source line 2471
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
	mov	2472,r13		! source line 2472
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
	mov	2473,r13		! source line 2473
	mov	"\0\0SE",r10
!   _temp_3514 = &anFCBBecameFree
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
	mov	2474,r13		! source line 2474
	mov	"\0\0AS",r10
!   _temp_3515 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-916]
!   NEW ARRAY Constructor...
!   _temp_3517 = &_temp_3516
	add	r14,-912,r1
	store	r1,[r14+-508]
!   _temp_3517 = _temp_3517 + 4
	load	[r14+-508],r1
	add	r1,4,r1
	store	r1,[r14+-508]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_3519 = zeros  (sizeInBytes=40)
	add	r14,-500,r4
	mov	10,r3
_Label_4440:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4440
!   _temp_3519 = _P_Kernel_FileControlBlock
	set	_P_Kernel_FileControlBlock,r1
	store	r1,[r14+-500]
	mov	10,r1
	store	r1,[r14+-504]
_Label_3521:
!   Data Move: *_temp_3517 = _temp_3519  (sizeInBytes=40)
	add	r14,-500,r5
	load	[r14+-508],r4
	mov	10,r3
_Label_4441:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4441
!   _temp_3517 = _temp_3517 + 40
	load	[r14+-508],r1
	add	r1,40,r1
	store	r1,[r14+-508]
!   _temp_3518 = _temp_3518 + -1
	load	[r14+-504],r1
	add	r1,-1,r1
	store	r1,[r14+-504]
!   if intNotZero (_temp_3518) then goto _Label_3521
	load	[r14+-504],r1
	cmp	r1,r0
	bne	_Label_3521
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-912]
!   _temp_3522 = &_temp_3516
	add	r14,-912,r1
	store	r1,[r14+-456]
!   make sure array has size 10
	load	[r14+-916],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_4442
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4442:
!   make sure array has size 10
	load	[r14+-456],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_3515 = *_temp_3522  (sizeInBytes=404)
	load	[r14+-456],r5
	load	[r14+-916],r4
	mov	101,r3
_Label_4443:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4443
! FOR STATEMENT...
	mov	2476,r13		! source line 2476
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3527 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-452]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3528 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-448]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3527  (sizeInBytes=4)
	load	[r14+-452],r1
	store	r1,[r14+-944]
_Label_3523:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3528 then goto _Label_3526		
	load	[r14+-944],r1
	load	[r14+-448],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3526
_Label_3524:
	mov	2476,r13		! source line 2476
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2477,r13		! source line 2477
	mov	"\0\0AS",r10
!   _temp_3529 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-444]
!   Move address of _temp_3529 [i ] into _temp_3530
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
!   _temp_3531 = _temp_3530 + 12
	load	[r14+-440],r1
	add	r1,12,r1
	store	r1,[r14+-436]
!   Data Move: *_temp_3531 = i  (sizeInBytes=4)
	load	[r14+-944],r1
	load	[r14+-436],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2478,r13		! source line 2478
	mov	"\0\0SE",r10
!   _temp_3532 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-432]
!   Move address of _temp_3532 [i ] into _temp_3533
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
	mov	2479,r13		! source line 2479
	mov	"\0\0SE",r10
!   _temp_3535 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-420]
!   Move address of _temp_3535 [i ] into _temp_3536
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
!   _temp_3534 = _temp_3536		(4 bytes)
	load	[r14+-416],r1
	store	r1,[r14+-424]
!   _temp_3537 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-412]
!   Prepare Argument: offset=12  value=_temp_3534  sizeInBytes=4
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
_Label_3525:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_3523
! END FOR
_Label_3526:
! ASSIGNMENT STATEMENT...
	mov	2483,r13		! source line 2483
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
	mov	2484,r13		! source line 2484
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
	mov	2485,r13		! source line 2485
	mov	"\0\0SE",r10
!   _temp_3540 = &anOpenFileBecameFree
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
	mov	2486,r13		! source line 2486
	mov	"\0\0AS",r10
!   _temp_3541 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-396]
!   NEW ARRAY Constructor...
!   _temp_3543 = &_temp_3542
	add	r14,-392,r1
	store	r1,[r14+-108]
!   _temp_3543 = _temp_3543 + 4
	load	[r14+-108],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_3545 = zeros  (sizeInBytes=28)
	add	r14,-100,r4
	mov	7,r3
_Label_4444:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4444
!   _temp_3545 = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	store	r1,[r14+-100]
	mov	10,r1
	store	r1,[r14+-104]
_Label_3547:
!   Data Move: *_temp_3543 = _temp_3545  (sizeInBytes=28)
	add	r14,-100,r5
	load	[r14+-108],r4
	mov	7,r3
_Label_4445:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4445
!   _temp_3543 = _temp_3543 + 28
	load	[r14+-108],r1
	add	r1,28,r1
	store	r1,[r14+-108]
!   _temp_3544 = _temp_3544 + -1
	load	[r14+-104],r1
	add	r1,-1,r1
	store	r1,[r14+-104]
!   if intNotZero (_temp_3544) then goto _Label_3547
	load	[r14+-104],r1
	cmp	r1,r0
	bne	_Label_3547
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-392]
!   _temp_3548 = &_temp_3542
	add	r14,-392,r1
	store	r1,[r14+-68]
!   make sure array has size 10
	load	[r14+-396],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_4446
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4446:
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_3541 = *_temp_3548  (sizeInBytes=284)
	load	[r14+-68],r5
	load	[r14+-396],r4
	mov	71,r3
_Label_4447:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4447
! FOR STATEMENT...
	mov	2488,r13		! source line 2488
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3553 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3554 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3553  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-944]
_Label_3549:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3554 then goto _Label_3552		
	load	[r14+-944],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3552
_Label_3550:
	mov	2488,r13		! source line 2488
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2489,r13		! source line 2489
	mov	"\0\0AS",r10
!   _temp_3555 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-56]
!   Move address of _temp_3555 [i ] into _temp_3556
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
!   _temp_3557 = _temp_3556 + 12
	load	[r14+-52],r1
	add	r1,12,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_3557 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2490,r13		! source line 2490
	mov	"\0\0SE",r10
!   _temp_3559 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-40]
!   Move address of _temp_3559 [i ] into _temp_3560
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
!   _temp_3558 = _temp_3560		(4 bytes)
	load	[r14+-36],r1
	store	r1,[r14+-44]
!   _temp_3561 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_3558  sizeInBytes=4
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
_Label_3551:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_3549
! END FOR
_Label_3552:
! ASSIGNMENT STATEMENT...
	mov	2494,r13		! source line 2494
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: serialTerminalFile = zeros  (sizeInBytes=28)
	load	[r14+8],r4
	add	r4,772,r4
	mov	7,r3
_Label_4448:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4448
!   serialTerminalFile = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	load	[r14+8],r2
	store	r1,[r2+772]
! ASSIGNMENT STATEMENT...
	mov	2495,r13		! source line 2495
	mov	"\0\0AS",r10
!   _temp_3563 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-24]
!   _temp_3564 = _temp_3563 + 12
	load	[r14+-24],r1
	add	r1,12,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_3564 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2500,r13		! source line 2500
	mov	"\0\0AS",r10
	mov	2500,r13		! source line 2500
	mov	"\0\0SE",r10
!   _temp_3565 = &_P_Kernel_frameManager
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
	mov	2501,r13		! source line 2501
	mov	"\0\0SE",r10
!   _temp_3566 = &_P_Kernel_diskDriver
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
	mov	2501,r13		! source line 2501
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
	.word	_Label_3567
	.word	4		! total size of parameters
	.word	952		! frame size = 952
	.word	_Label_3568
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3569
	.word	-12
	.word	4
	.word	_Label_3570
	.word	-16
	.word	4
	.word	_Label_3571
	.word	-20
	.word	4
	.word	_Label_3572
	.word	-24
	.word	4
	.word	_Label_3573
	.word	-28
	.word	4
	.word	_Label_3574
	.word	-32
	.word	4
	.word	_Label_3575
	.word	-36
	.word	4
	.word	_Label_3576
	.word	-40
	.word	4
	.word	_Label_3577
	.word	-44
	.word	4
	.word	_Label_3578
	.word	-48
	.word	4
	.word	_Label_3579
	.word	-52
	.word	4
	.word	_Label_3580
	.word	-56
	.word	4
	.word	_Label_3581
	.word	-60
	.word	4
	.word	_Label_3582
	.word	-64
	.word	4
	.word	_Label_3583
	.word	-68
	.word	4
	.word	_Label_3584
	.word	-72
	.word	4
	.word	_Label_3585
	.word	-100
	.word	28
	.word	_Label_3586
	.word	-104
	.word	4
	.word	_Label_3587
	.word	-108
	.word	4
	.word	_Label_3588
	.word	-392
	.word	284
	.word	_Label_3589
	.word	-396
	.word	4
	.word	_Label_3590
	.word	-400
	.word	4
	.word	_Label_3591
	.word	-404
	.word	4
	.word	_Label_3592
	.word	-408
	.word	4
	.word	_Label_3593
	.word	-412
	.word	4
	.word	_Label_3594
	.word	-416
	.word	4
	.word	_Label_3595
	.word	-420
	.word	4
	.word	_Label_3596
	.word	-424
	.word	4
	.word	_Label_3597
	.word	-428
	.word	4
	.word	_Label_3598
	.word	-432
	.word	4
	.word	_Label_3599
	.word	-436
	.word	4
	.word	_Label_3600
	.word	-440
	.word	4
	.word	_Label_3601
	.word	-444
	.word	4
	.word	_Label_3602
	.word	-448
	.word	4
	.word	_Label_3603
	.word	-452
	.word	4
	.word	_Label_3604
	.word	-456
	.word	4
	.word	_Label_3605
	.word	-460
	.word	4
	.word	_Label_3606
	.word	-500
	.word	40
	.word	_Label_3607
	.word	-504
	.word	4
	.word	_Label_3608
	.word	-508
	.word	4
	.word	_Label_3609
	.word	-912
	.word	404
	.word	_Label_3610
	.word	-916
	.word	4
	.word	_Label_3611
	.word	-920
	.word	4
	.word	_Label_3612
	.word	-924
	.word	4
	.word	_Label_3613
	.word	-928
	.word	4
	.word	_Label_3614
	.word	-932
	.word	4
	.word	_Label_3615
	.word	-936
	.word	4
	.word	_Label_3616
	.word	-940
	.word	4
	.word	_Label_3617
	.word	-944
	.word	4
	.word	0
_Label_3567:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_3568:
	.ascii	"Pself\0"
	.align
_Label_3569:
	.byte	'?'
	.ascii	"_temp_3566\0"
	.align
_Label_3570:
	.byte	'?'
	.ascii	"_temp_3565\0"
	.align
_Label_3571:
	.byte	'?'
	.ascii	"_temp_3564\0"
	.align
_Label_3572:
	.byte	'?'
	.ascii	"_temp_3563\0"
	.align
_Label_3573:
	.byte	'?'
	.ascii	"_temp_3562\0"
	.align
_Label_3574:
	.byte	'?'
	.ascii	"_temp_3561\0"
	.align
_Label_3575:
	.byte	'?'
	.ascii	"_temp_3560\0"
	.align
_Label_3576:
	.byte	'?'
	.ascii	"_temp_3559\0"
	.align
_Label_3577:
	.byte	'?'
	.ascii	"_temp_3558\0"
	.align
_Label_3578:
	.byte	'?'
	.ascii	"_temp_3557\0"
	.align
_Label_3579:
	.byte	'?'
	.ascii	"_temp_3556\0"
	.align
_Label_3580:
	.byte	'?'
	.ascii	"_temp_3555\0"
	.align
_Label_3581:
	.byte	'?'
	.ascii	"_temp_3554\0"
	.align
_Label_3582:
	.byte	'?'
	.ascii	"_temp_3553\0"
	.align
_Label_3583:
	.byte	'?'
	.ascii	"_temp_3548\0"
	.align
_Label_3584:
	.byte	'?'
	.ascii	"_temp_3546\0"
	.align
_Label_3585:
	.byte	'?'
	.ascii	"_temp_3545\0"
	.align
_Label_3586:
	.byte	'?'
	.ascii	"_temp_3544\0"
	.align
_Label_3587:
	.byte	'?'
	.ascii	"_temp_3543\0"
	.align
_Label_3588:
	.byte	'?'
	.ascii	"_temp_3542\0"
	.align
_Label_3589:
	.byte	'?'
	.ascii	"_temp_3541\0"
	.align
_Label_3590:
	.byte	'?'
	.ascii	"_temp_3540\0"
	.align
_Label_3591:
	.byte	'?'
	.ascii	"_temp_3539\0"
	.align
_Label_3592:
	.byte	'?'
	.ascii	"_temp_3538\0"
	.align
_Label_3593:
	.byte	'?'
	.ascii	"_temp_3537\0"
	.align
_Label_3594:
	.byte	'?'
	.ascii	"_temp_3536\0"
	.align
_Label_3595:
	.byte	'?'
	.ascii	"_temp_3535\0"
	.align
_Label_3596:
	.byte	'?'
	.ascii	"_temp_3534\0"
	.align
_Label_3597:
	.byte	'?'
	.ascii	"_temp_3533\0"
	.align
_Label_3598:
	.byte	'?'
	.ascii	"_temp_3532\0"
	.align
_Label_3599:
	.byte	'?'
	.ascii	"_temp_3531\0"
	.align
_Label_3600:
	.byte	'?'
	.ascii	"_temp_3530\0"
	.align
_Label_3601:
	.byte	'?'
	.ascii	"_temp_3529\0"
	.align
_Label_3602:
	.byte	'?'
	.ascii	"_temp_3528\0"
	.align
_Label_3603:
	.byte	'?'
	.ascii	"_temp_3527\0"
	.align
_Label_3604:
	.byte	'?'
	.ascii	"_temp_3522\0"
	.align
_Label_3605:
	.byte	'?'
	.ascii	"_temp_3520\0"
	.align
_Label_3606:
	.byte	'?'
	.ascii	"_temp_3519\0"
	.align
_Label_3607:
	.byte	'?'
	.ascii	"_temp_3518\0"
	.align
_Label_3608:
	.byte	'?'
	.ascii	"_temp_3517\0"
	.align
_Label_3609:
	.byte	'?'
	.ascii	"_temp_3516\0"
	.align
_Label_3610:
	.byte	'?'
	.ascii	"_temp_3515\0"
	.align
_Label_3611:
	.byte	'?'
	.ascii	"_temp_3514\0"
	.align
_Label_3612:
	.byte	'?'
	.ascii	"_temp_3513\0"
	.align
_Label_3613:
	.byte	'?'
	.ascii	"_temp_3512\0"
	.align
_Label_3614:
	.byte	'?'
	.ascii	"_temp_3511\0"
	.align
_Label_3615:
	.byte	'?'
	.ascii	"_temp_3510\0"
	.align
_Label_3616:
	.byte	'?'
	.ascii	"_temp_3509\0"
	.align
_Label_3617:
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
_Label_4449:
	push	r0
	sub	r1,1,r1
	bne	_Label_4449
	mov	2508,r13		! source line 2508
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2510,r13		! source line 2510
	mov	"\0\0SE",r10
!   _temp_3618 = &fileManagerLock
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
!   _temp_3619 = _StringConst_146
	set	_StringConst_146,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_3619  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	2511,r13		! source line 2511
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2512,r13		! source line 2512
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3624 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-104]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3625 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-100]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3624  (sizeInBytes=4)
	load	[r14+-104],r1
	store	r1,[r14+-116]
_Label_3620:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3625 then goto _Label_3623		
	load	[r14+-116],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3623
_Label_3621:
	mov	2512,r13		! source line 2512
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_3626 = _StringConst_147
	set	_StringConst_147,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_3626  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	2513,r13		! source line 2513
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2514,r13		! source line 2514
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3627 = _StringConst_148
	set	_StringConst_148,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_3627  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2515,r13		! source line 2515
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2516,r13		! source line 2516
	mov	"\0\0SE",r10
!   _temp_3628 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-88]
!   Move address of _temp_3628 [i ] into _temp_3629
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
_Label_3622:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_3620
! END FOR
_Label_3623:
! CALL STATEMENT...
!   _temp_3630 = _StringConst_149
	set	_StringConst_149,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_3630  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	2518,r13		! source line 2518
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2519,r13		! source line 2519
	mov	"\0\0SE",r10
!   _temp_3631 = _function_189_printFCB
	set	_function_189_printFCB,r1
	store	r1,[r14+-76]
!   _temp_3632 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_3631  sizeInBytes=4
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
	mov	2520,r13		! source line 2520
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_3633 = _StringConst_150
	set	_StringConst_150,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_3633  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	2521,r13		! source line 2521
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2522,r13		! source line 2522
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3638 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3639 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3638  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-116]
_Label_3634:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3639 then goto _Label_3637		
	load	[r14+-116],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3637
_Label_3635:
	mov	2522,r13		! source line 2522
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_3640 = _StringConst_151
	set	_StringConst_151,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_3640  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	2523,r13		! source line 2523
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2524,r13		! source line 2524
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3641 = _StringConst_152
	set	_StringConst_152,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_3641  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	2525,r13		! source line 2525
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_3643 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-44]
!   Move address of _temp_3643 [i ] into _temp_3644
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
!   _temp_3642 = _temp_3644		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_3642  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	2526,r13		! source line 2526
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_3645 = _StringConst_153
	set	_StringConst_153,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_3645  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2527,r13		! source line 2527
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2528,r13		! source line 2528
	mov	"\0\0SE",r10
!   _temp_3646 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-32]
!   Move address of _temp_3646 [i ] into _temp_3647
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
_Label_3636:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_3634
! END FOR
_Label_3637:
! CALL STATEMENT...
!   _temp_3648 = _StringConst_154
	set	_StringConst_154,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3648  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2530,r13		! source line 2530
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2531,r13		! source line 2531
	mov	"\0\0SE",r10
!   _temp_3649 = _function_188_printOpen
	set	_function_188_printOpen,r1
	store	r1,[r14+-20]
!   _temp_3650 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_3649  sizeInBytes=4
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
	mov	2532,r13		! source line 2532
	mov	"\0\0SE",r10
!   _temp_3651 = &fileManagerLock
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
	mov	2532,r13		! source line 2532
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
	.word	_Label_3652
	.word	4		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_3653
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3654
	.word	-12
	.word	4
	.word	_Label_3655
	.word	-16
	.word	4
	.word	_Label_3656
	.word	-20
	.word	4
	.word	_Label_3657
	.word	-24
	.word	4
	.word	_Label_3658
	.word	-28
	.word	4
	.word	_Label_3659
	.word	-32
	.word	4
	.word	_Label_3660
	.word	-36
	.word	4
	.word	_Label_3661
	.word	-40
	.word	4
	.word	_Label_3662
	.word	-44
	.word	4
	.word	_Label_3663
	.word	-48
	.word	4
	.word	_Label_3664
	.word	-52
	.word	4
	.word	_Label_3665
	.word	-56
	.word	4
	.word	_Label_3666
	.word	-60
	.word	4
	.word	_Label_3667
	.word	-64
	.word	4
	.word	_Label_3668
	.word	-68
	.word	4
	.word	_Label_3669
	.word	-72
	.word	4
	.word	_Label_3670
	.word	-76
	.word	4
	.word	_Label_3671
	.word	-80
	.word	4
	.word	_Label_3672
	.word	-84
	.word	4
	.word	_Label_3673
	.word	-88
	.word	4
	.word	_Label_3674
	.word	-92
	.word	4
	.word	_Label_3675
	.word	-96
	.word	4
	.word	_Label_3676
	.word	-100
	.word	4
	.word	_Label_3677
	.word	-104
	.word	4
	.word	_Label_3678
	.word	-108
	.word	4
	.word	_Label_3679
	.word	-112
	.word	4
	.word	_Label_3680
	.word	-116
	.word	4
	.word	0
_Label_3652:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_3653:
	.ascii	"Pself\0"
	.align
_Label_3654:
	.byte	'?'
	.ascii	"_temp_3651\0"
	.align
_Label_3655:
	.byte	'?'
	.ascii	"_temp_3650\0"
	.align
_Label_3656:
	.byte	'?'
	.ascii	"_temp_3649\0"
	.align
_Label_3657:
	.byte	'?'
	.ascii	"_temp_3648\0"
	.align
_Label_3658:
	.byte	'?'
	.ascii	"_temp_3647\0"
	.align
_Label_3659:
	.byte	'?'
	.ascii	"_temp_3646\0"
	.align
_Label_3660:
	.byte	'?'
	.ascii	"_temp_3645\0"
	.align
_Label_3661:
	.byte	'?'
	.ascii	"_temp_3644\0"
	.align
_Label_3662:
	.byte	'?'
	.ascii	"_temp_3643\0"
	.align
_Label_3663:
	.byte	'?'
	.ascii	"_temp_3642\0"
	.align
_Label_3664:
	.byte	'?'
	.ascii	"_temp_3641\0"
	.align
_Label_3665:
	.byte	'?'
	.ascii	"_temp_3640\0"
	.align
_Label_3666:
	.byte	'?'
	.ascii	"_temp_3639\0"
	.align
_Label_3667:
	.byte	'?'
	.ascii	"_temp_3638\0"
	.align
_Label_3668:
	.byte	'?'
	.ascii	"_temp_3633\0"
	.align
_Label_3669:
	.byte	'?'
	.ascii	"_temp_3632\0"
	.align
_Label_3670:
	.byte	'?'
	.ascii	"_temp_3631\0"
	.align
_Label_3671:
	.byte	'?'
	.ascii	"_temp_3630\0"
	.align
_Label_3672:
	.byte	'?'
	.ascii	"_temp_3629\0"
	.align
_Label_3673:
	.byte	'?'
	.ascii	"_temp_3628\0"
	.align
_Label_3674:
	.byte	'?'
	.ascii	"_temp_3627\0"
	.align
_Label_3675:
	.byte	'?'
	.ascii	"_temp_3626\0"
	.align
_Label_3676:
	.byte	'?'
	.ascii	"_temp_3625\0"
	.align
_Label_3677:
	.byte	'?'
	.ascii	"_temp_3624\0"
	.align
_Label_3678:
	.byte	'?'
	.ascii	"_temp_3619\0"
	.align
_Label_3679:
	.byte	'?'
	.ascii	"_temp_3618\0"
	.align
_Label_3680:
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
_Label_4450:
	push	r0
	sub	r1,1,r1
	bne	_Label_4450
	mov	2537,r13		! source line 2537
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2553,r13		! source line 2553
	mov	"\0\0AS",r10
	mov	2553,r13		! source line 2553
	mov	"\0\0SE",r10
!   _temp_3681 = &_P_Kernel_fileManager
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
	mov	2554,r13		! source line 2554
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _Label_3682
	load	[r14+-56],r1
	cmp	r1,r0
	be	_Label_3682
	jmp	_Label_3683
_Label_3682:
! THEN...
	mov	2555,r13		! source line 2555
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2555,r13		! source line 2555
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3683:
! SEND STATEMENT...
	mov	2559,r13		! source line 2559
	mov	"\0\0SE",r10
!   _temp_3684 = &fileManagerLock
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
	mov	2560,r13		! source line 2560
	mov	"\0\0WH",r10
_Label_3685:
	mov	2560,r13		! source line 2560
	mov	"\0\0SE",r10
!   _temp_3688 = &openFileFreeList
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
!   if result==true then goto _Label_3686 else goto _Label_3687
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_3687
	jmp	_Label_3686
_Label_3686:
	mov	2560,r13		! source line 2560
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2561,r13		! source line 2561
	mov	"\0\0SE",r10
!   _temp_3689 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   _temp_3690 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_3689  sizeInBytes=4
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
	jmp	_Label_3685
_Label_3687:
! ASSIGNMENT STATEMENT...
	mov	2563,r13		! source line 2563
	mov	"\0\0AS",r10
	mov	2563,r13		! source line 2563
	mov	"\0\0SE",r10
!   _temp_3691 = &openFileFreeList
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
	mov	2566,r13		! source line 2566
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3692 = open + 20
	load	[r14+-52],r1
	add	r1,20,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3692 = fcb  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2567,r13		! source line 2567
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3693 = open + 24
	load	[r14+-52],r1
	add	r1,24,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_3693 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2570,r13		! source line 2570
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3694 = open + 16
	load	[r14+-52],r1
	add	r1,16,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_3694 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2572,r13		! source line 2572
	mov	"\0\0SE",r10
!   _temp_3695 = &fileManagerLock
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
	mov	2573,r13		! source line 2573
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
	.word	_Label_3696
	.word	8		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_3697
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3698
	.word	12
	.word	4
	.word	_Label_3699
	.word	-12
	.word	4
	.word	_Label_3700
	.word	-16
	.word	4
	.word	_Label_3701
	.word	-20
	.word	4
	.word	_Label_3702
	.word	-24
	.word	4
	.word	_Label_3703
	.word	-28
	.word	4
	.word	_Label_3704
	.word	-32
	.word	4
	.word	_Label_3705
	.word	-36
	.word	4
	.word	_Label_3706
	.word	-40
	.word	4
	.word	_Label_3707
	.word	-44
	.word	4
	.word	_Label_3708
	.word	-48
	.word	4
	.word	_Label_3709
	.word	-52
	.word	4
	.word	_Label_3710
	.word	-56
	.word	4
	.word	0
_Label_3696:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Open\0"
	.align
_Label_3697:
	.ascii	"Pself\0"
	.align
_Label_3698:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_3699:
	.byte	'?'
	.ascii	"_temp_3695\0"
	.align
_Label_3700:
	.byte	'?'
	.ascii	"_temp_3694\0"
	.align
_Label_3701:
	.byte	'?'
	.ascii	"_temp_3693\0"
	.align
_Label_3702:
	.byte	'?'
	.ascii	"_temp_3692\0"
	.align
_Label_3703:
	.byte	'?'
	.ascii	"_temp_3691\0"
	.align
_Label_3704:
	.byte	'?'
	.ascii	"_temp_3690\0"
	.align
_Label_3705:
	.byte	'?'
	.ascii	"_temp_3689\0"
	.align
_Label_3706:
	.byte	'?'
	.ascii	"_temp_3688\0"
	.align
_Label_3707:
	.byte	'?'
	.ascii	"_temp_3684\0"
	.align
_Label_3708:
	.byte	'?'
	.ascii	"_temp_3681\0"
	.align
_Label_3709:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3710:
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
_Label_4451:
	push	r0
	sub	r1,1,r1
	bne	_Label_4451
	mov	2578,r13		! source line 2578
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2603,r13		! source line 2603
	mov	"\0\0AS",r10
!   p = directoryFrame		(4 bytes)
	load	[r14+8],r1
	load	[r1+768],r1
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2606,r13		! source line 2606
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
	mov	2607,r13		! source line 2607
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2608,r13		! source line 2608
	mov	"\0\0IF",r10
!   if i == 1937012066 then goto _Label_3712		(int)
	load	[r14+-136],r1
	set	1937012066,r2
	cmp	r1,r2
	be	_Label_3712
!	jmp	_Label_3711
_Label_3711:
! THEN...
	mov	2609,r13		! source line 2609
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3713 = _StringConst_155
	set	_StringConst_155,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_3713  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2609,r13		! source line 2609
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3712:
! ASSIGNMENT STATEMENT...
	mov	2613,r13		! source line 2613
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
	mov	2614,r13		! source line 2614
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2615,r13		! source line 2615
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
	mov	2616,r13		! source line 2616
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! WHILE STATEMENT...
	mov	2619,r13		! source line 2619
	mov	"\0\0WH",r10
_Label_3714:
!   if numFiles <= 0 then goto _Label_3716		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3716
!	jmp	_Label_3715
_Label_3715:
	mov	2619,r13		! source line 2619
	mov	"\0\0WB",r10
! CALL STATEMENT...
!   _temp_3717 = &start
	add	r14,-140,r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_3717  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2620,r13		! source line 2620
	mov	"\0\0CA",r10
	call	_function_190_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2621,r13		! source line 2621
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_3718 = &fileLen
	add	r14,-148,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=_temp_3718  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2622,r13		! source line 2622
	mov	"\0\0CA",r10
	call	_function_190_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2623,r13		! source line 2623
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_3719 = &fileNameLen
	add	r14,-152,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_3719  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2624,r13		! source line 2624
	mov	"\0\0CA",r10
	call	_function_190_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2625,r13		! source line 2625
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2626,r13		! source line 2626
	mov	"\0\0IF",r10
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_3723 = *filename  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if fileNameLen != _temp_3723 then goto _Label_3721		(int)
	load	[r14+-152],r1
	load	[r14+-116],r2
	cmp	r1,r2
	bne	_Label_3721
!	jmp	_Label_3722
_Label_3722:
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of filename [0 ] into _temp_3725
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
!   _temp_3724 = _temp_3725		(4 bytes)
	load	[r14+-108],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_3724  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=fileNameLen  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+8]
!   Call the function
	mov	2627,r13		! source line 2627
	mov	"\0\0CA",r10
	call	_P_System_MemoryEqual
!   if result==true then goto _Label_3720 else goto _Label_3721
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_3721
	jmp	_Label_3720
_Label_3720:
! THEN...
	mov	2628,r13		! source line 2628
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2628,r13		! source line 2628
	mov	"\0\0BR",r10
	jmp	_Label_3716
! END IF...
_Label_3721:
! ASSIGNMENT STATEMENT...
	mov	2630,r13		! source line 2630
	mov	"\0\0AS",r10
!   p = p + fileNameLen		(int)
	load	[r14+-160],r1
	load	[r14+-152],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2631,r13		! source line 2631
	mov	"\0\0AS",r10
!   numFiles = numFiles - 1		(int)
	load	[r14+-144],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
! END WHILE...
	jmp	_Label_3714
_Label_3716:
! IF STATEMENT...
	mov	2635,r13		! source line 2635
	mov	"\0\0IF",r10
!   if numFiles > 0 then goto _Label_3727		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3727
!	jmp	_Label_3726
_Label_3726:
! THEN...
	mov	2636,r13		! source line 2636
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2636,r13		! source line 2636
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3727:
! SEND STATEMENT...
	mov	2639,r13		! source line 2639
	mov	"\0\0SE",r10
!   _temp_3728 = &fileManagerLock
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
	mov	2641,r13		! source line 2641
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3733 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-100]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3734 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-96]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3733  (sizeInBytes=4)
	load	[r14+-100],r1
	store	r1,[r14+-136]
_Label_3729:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3734 then goto _Label_3732		
	load	[r14+-136],r1
	load	[r14+-96],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3732
_Label_3730:
	mov	2641,r13		! source line 2641
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2642,r13		! source line 2642
	mov	"\0\0AS",r10
!   _temp_3735 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-92]
!   Move address of _temp_3735 [i ] into _temp_3736
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
!   fcb = _temp_3736		(4 bytes)
	load	[r14+-88],r1
	store	r1,[r14+-156]
! IF STATEMENT...
	mov	2643,r13		! source line 2643
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3740 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-80]
!   Data Move: _temp_3739 = *_temp_3740  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if _temp_3739 != start then goto _Label_3738		(int)
	load	[r14+-84],r1
	load	[r14+-140],r2
	cmp	r1,r2
	bne	_Label_3738
!	jmp	_Label_3737
_Label_3737:
! THEN...
	mov	2644,r13		! source line 2644
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2644,r13		! source line 2644
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3741 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-76]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3744 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-64]
!   Data Move: _temp_3743 = *_temp_3744  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   _temp_3742 = _temp_3743 + 1		(int)
	load	[r14+-68],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
!   Data Move: *_temp_3741 = _temp_3742  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r14+-76],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2645,r13		! source line 2645
	mov	"\0\0SE",r10
!   _temp_3745 = &fileManagerLock
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
	mov	2646,r13		! source line 2646
	mov	"\0\0RE",r10
!   ReturnResult: fcb  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3738:
!   Increment the FOR-LOOP index variable and jump back
_Label_3731:
!   i = i + 1
	load	[r14+-136],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
	jmp	_Label_3729
! END FOR
_Label_3732:
! WHILE STATEMENT...
	mov	2651,r13		! source line 2651
	mov	"\0\0WH",r10
_Label_3746:
	mov	2651,r13		! source line 2651
	mov	"\0\0SE",r10
!   _temp_3749 = &fcbFreeList
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
!   if result==true then goto _Label_3747 else goto _Label_3748
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_3748
	jmp	_Label_3747
_Label_3747:
	mov	2651,r13		! source line 2651
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2652,r13		! source line 2652
	mov	"\0\0SE",r10
!   _temp_3750 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   _temp_3751 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_3750  sizeInBytes=4
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
	jmp	_Label_3746
_Label_3748:
! ASSIGNMENT STATEMENT...
	mov	2654,r13		! source line 2654
	mov	"\0\0AS",r10
	mov	2654,r13		! source line 2654
	mov	"\0\0SE",r10
!   _temp_3752 = &fcbFreeList
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
	mov	2657,r13		! source line 2657
	mov	"\0\0SE",r10
!   _temp_3753 = &fileManagerLock
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
	mov	2660,r13		! source line 2660
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3754 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_3754 = start  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2661,r13		! source line 2661
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3755 = fcb + 24
	load	[r14+-156],r1
	add	r1,24,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_3755 = fileLen  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2662,r13		! source line 2662
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3756 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_3756 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-28],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2663,r13		! source line 2663
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3761 = fcb + 32
	load	[r14+-156],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   Data Move: _temp_3760 = *_temp_3761  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_3760 < 0 then goto _Label_3759		(int)
	load	[r14+-24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_3759
	jmp	_Label_3757
_Label_3759:
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3762 = fcb + 36
	load	[r14+-156],r1
	add	r1,36,r1
	store	r1,[r14+-16]
!   if boolIsZero (_temp_3762 ) then goto _Label_3758		(int)
	load	[r14+-16],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_3758
!	jmp	_Label_3757
_Label_3757:
! THEN...
	mov	2664,r13		! source line 2664
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3763 = _StringConst_156
	set	_StringConst_156,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3763  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2664,r13		! source line 2664
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3758:
! RETURN STATEMENT...
	mov	2666,r13		! source line 2666
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
	.word	_Label_3764
	.word	8		! total size of parameters
	.word	164		! frame size = 164
	.word	_Label_3765
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3766
	.word	12
	.word	4
	.word	_Label_3767
	.word	-12
	.word	4
	.word	_Label_3768
	.word	-16
	.word	4
	.word	_Label_3769
	.word	-20
	.word	4
	.word	_Label_3770
	.word	-24
	.word	4
	.word	_Label_3771
	.word	-28
	.word	4
	.word	_Label_3772
	.word	-32
	.word	4
	.word	_Label_3773
	.word	-36
	.word	4
	.word	_Label_3774
	.word	-40
	.word	4
	.word	_Label_3775
	.word	-44
	.word	4
	.word	_Label_3776
	.word	-48
	.word	4
	.word	_Label_3777
	.word	-52
	.word	4
	.word	_Label_3778
	.word	-56
	.word	4
	.word	_Label_3779
	.word	-60
	.word	4
	.word	_Label_3780
	.word	-64
	.word	4
	.word	_Label_3781
	.word	-68
	.word	4
	.word	_Label_3782
	.word	-72
	.word	4
	.word	_Label_3783
	.word	-76
	.word	4
	.word	_Label_3784
	.word	-80
	.word	4
	.word	_Label_3785
	.word	-84
	.word	4
	.word	_Label_3786
	.word	-88
	.word	4
	.word	_Label_3787
	.word	-92
	.word	4
	.word	_Label_3788
	.word	-96
	.word	4
	.word	_Label_3789
	.word	-100
	.word	4
	.word	_Label_3790
	.word	-104
	.word	4
	.word	_Label_3791
	.word	-108
	.word	4
	.word	_Label_3792
	.word	-112
	.word	4
	.word	_Label_3793
	.word	-116
	.word	4
	.word	_Label_3794
	.word	-120
	.word	4
	.word	_Label_3795
	.word	-124
	.word	4
	.word	_Label_3796
	.word	-128
	.word	4
	.word	_Label_3797
	.word	-132
	.word	4
	.word	_Label_3798
	.word	-136
	.word	4
	.word	_Label_3799
	.word	-140
	.word	4
	.word	_Label_3800
	.word	-144
	.word	4
	.word	_Label_3801
	.word	-148
	.word	4
	.word	_Label_3802
	.word	-152
	.word	4
	.word	_Label_3803
	.word	-156
	.word	4
	.word	_Label_3804
	.word	-160
	.word	4
	.word	0
_Label_3764:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"FindFCB\0"
	.align
_Label_3765:
	.ascii	"Pself\0"
	.align
_Label_3766:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_3767:
	.byte	'?'
	.ascii	"_temp_3763\0"
	.align
_Label_3768:
	.byte	'?'
	.ascii	"_temp_3762\0"
	.align
_Label_3769:
	.byte	'?'
	.ascii	"_temp_3761\0"
	.align
_Label_3770:
	.byte	'?'
	.ascii	"_temp_3760\0"
	.align
_Label_3771:
	.byte	'?'
	.ascii	"_temp_3756\0"
	.align
_Label_3772:
	.byte	'?'
	.ascii	"_temp_3755\0"
	.align
_Label_3773:
	.byte	'?'
	.ascii	"_temp_3754\0"
	.align
_Label_3774:
	.byte	'?'
	.ascii	"_temp_3753\0"
	.align
_Label_3775:
	.byte	'?'
	.ascii	"_temp_3752\0"
	.align
_Label_3776:
	.byte	'?'
	.ascii	"_temp_3751\0"
	.align
_Label_3777:
	.byte	'?'
	.ascii	"_temp_3750\0"
	.align
_Label_3778:
	.byte	'?'
	.ascii	"_temp_3749\0"
	.align
_Label_3779:
	.byte	'?'
	.ascii	"_temp_3745\0"
	.align
_Label_3780:
	.byte	'?'
	.ascii	"_temp_3744\0"
	.align
_Label_3781:
	.byte	'?'
	.ascii	"_temp_3743\0"
	.align
_Label_3782:
	.byte	'?'
	.ascii	"_temp_3742\0"
	.align
_Label_3783:
	.byte	'?'
	.ascii	"_temp_3741\0"
	.align
_Label_3784:
	.byte	'?'
	.ascii	"_temp_3740\0"
	.align
_Label_3785:
	.byte	'?'
	.ascii	"_temp_3739\0"
	.align
_Label_3786:
	.byte	'?'
	.ascii	"_temp_3736\0"
	.align
_Label_3787:
	.byte	'?'
	.ascii	"_temp_3735\0"
	.align
_Label_3788:
	.byte	'?'
	.ascii	"_temp_3734\0"
	.align
_Label_3789:
	.byte	'?'
	.ascii	"_temp_3733\0"
	.align
_Label_3790:
	.byte	'?'
	.ascii	"_temp_3728\0"
	.align
_Label_3791:
	.byte	'?'
	.ascii	"_temp_3725\0"
	.align
_Label_3792:
	.byte	'?'
	.ascii	"_temp_3724\0"
	.align
_Label_3793:
	.byte	'?'
	.ascii	"_temp_3723\0"
	.align
_Label_3794:
	.byte	'?'
	.ascii	"_temp_3719\0"
	.align
_Label_3795:
	.byte	'?'
	.ascii	"_temp_3718\0"
	.align
_Label_3796:
	.byte	'?'
	.ascii	"_temp_3717\0"
	.align
_Label_3797:
	.byte	'?'
	.ascii	"_temp_3713\0"
	.align
_Label_3798:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_3799:
	.byte	'I'
	.ascii	"start\0"
	.align
_Label_3800:
	.byte	'I'
	.ascii	"numFiles\0"
	.align
_Label_3801:
	.byte	'I'
	.ascii	"fileLen\0"
	.align
_Label_3802:
	.byte	'I'
	.ascii	"fileNameLen\0"
	.align
_Label_3803:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_3804:
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
_Label_4452:
	push	r0
	sub	r1,1,r1
	bne	_Label_4452
	mov	2679,r13		! source line 2679
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2681,r13		! source line 2681
	mov	"\0\0IF",r10
!   _temp_3807 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-100]
!   if open != _temp_3807 then goto _Label_3806		(int)
	load	[r14+12],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bne	_Label_3806
!	jmp	_Label_3805
_Label_3805:
! THEN...
	mov	2682,r13		! source line 2682
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2682,r13		! source line 2682
	mov	"\0\0RE",r10
	add	r15,108,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3806:
! SEND STATEMENT...
	mov	2684,r13		! source line 2684
	mov	"\0\0SE",r10
!   _temp_3808 = &fileManagerLock
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
	mov	2685,r13		! source line 2685
	mov	"\0\0SE",r10
!   _temp_3809 = &_P_Kernel_fileManager
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
	mov	2686,r13		! source line 2686
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3810 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: fcb = *_temp_3810  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-104]
! ASSIGNMENT STATEMENT...
	mov	2687,r13		! source line 2687
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3811 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-84]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3814 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-72]
!   Data Move: _temp_3813 = *_temp_3814  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   _temp_3812 = _temp_3813 - 1		(int)
	load	[r14+-76],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
!   Data Move: *_temp_3811 = _temp_3812  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r14+-84],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2688,r13		! source line 2688
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3818 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-64]
!   Data Move: _temp_3817 = *_temp_3818  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if _temp_3817 > 0 then goto _Label_3816		(int)
	load	[r14+-68],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3816
!	jmp	_Label_3815
_Label_3815:
! THEN...
	mov	2689,r13		! source line 2689
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2689,r13		! source line 2689
	mov	"\0\0SE",r10
!   _temp_3819 = &openFileFreeList
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
	mov	2690,r13		! source line 2690
	mov	"\0\0SE",r10
!   _temp_3820 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   _temp_3821 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_3820  sizeInBytes=4
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
	mov	2691,r13		! source line 2691
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3822 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3825 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-36]
!   Data Move: _temp_3824 = *_temp_3825  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   _temp_3823 = _temp_3824 - 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
!   Data Move: *_temp_3822 = _temp_3823  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+-48],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2692,r13		! source line 2692
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3829 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: _temp_3828 = *_temp_3829  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_3828 > 0 then goto _Label_3827		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3827
!	jmp	_Label_3826
_Label_3826:
! THEN...
	mov	2693,r13		! source line 2693
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2693,r13		! source line 2693
	mov	"\0\0SE",r10
!   _temp_3830 = &fcbFreeList
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
	mov	2694,r13		! source line 2694
	mov	"\0\0SE",r10
!   _temp_3831 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_3832 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_3831  sizeInBytes=4
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
_Label_3827:
! END IF...
_Label_3816:
! SEND STATEMENT...
	mov	2697,r13		! source line 2697
	mov	"\0\0SE",r10
!   _temp_3833 = &fileManagerLock
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
	mov	2697,r13		! source line 2697
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
	.word	_Label_3834
	.word	8		! total size of parameters
	.word	104		! frame size = 104
	.word	_Label_3835
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3836
	.word	12
	.word	4
	.word	_Label_3837
	.word	-12
	.word	4
	.word	_Label_3838
	.word	-16
	.word	4
	.word	_Label_3839
	.word	-20
	.word	4
	.word	_Label_3840
	.word	-24
	.word	4
	.word	_Label_3841
	.word	-28
	.word	4
	.word	_Label_3842
	.word	-32
	.word	4
	.word	_Label_3843
	.word	-36
	.word	4
	.word	_Label_3844
	.word	-40
	.word	4
	.word	_Label_3845
	.word	-44
	.word	4
	.word	_Label_3846
	.word	-48
	.word	4
	.word	_Label_3847
	.word	-52
	.word	4
	.word	_Label_3848
	.word	-56
	.word	4
	.word	_Label_3849
	.word	-60
	.word	4
	.word	_Label_3850
	.word	-64
	.word	4
	.word	_Label_3851
	.word	-68
	.word	4
	.word	_Label_3852
	.word	-72
	.word	4
	.word	_Label_3853
	.word	-76
	.word	4
	.word	_Label_3854
	.word	-80
	.word	4
	.word	_Label_3855
	.word	-84
	.word	4
	.word	_Label_3856
	.word	-88
	.word	4
	.word	_Label_3857
	.word	-92
	.word	4
	.word	_Label_3858
	.word	-96
	.word	4
	.word	_Label_3859
	.word	-100
	.word	4
	.word	_Label_3860
	.word	-104
	.word	4
	.word	0
_Label_3834:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Close\0"
	.align
_Label_3835:
	.ascii	"Pself\0"
	.align
_Label_3836:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3837:
	.byte	'?'
	.ascii	"_temp_3833\0"
	.align
_Label_3838:
	.byte	'?'
	.ascii	"_temp_3832\0"
	.align
_Label_3839:
	.byte	'?'
	.ascii	"_temp_3831\0"
	.align
_Label_3840:
	.byte	'?'
	.ascii	"_temp_3830\0"
	.align
_Label_3841:
	.byte	'?'
	.ascii	"_temp_3829\0"
	.align
_Label_3842:
	.byte	'?'
	.ascii	"_temp_3828\0"
	.align
_Label_3843:
	.byte	'?'
	.ascii	"_temp_3825\0"
	.align
_Label_3844:
	.byte	'?'
	.ascii	"_temp_3824\0"
	.align
_Label_3845:
	.byte	'?'
	.ascii	"_temp_3823\0"
	.align
_Label_3846:
	.byte	'?'
	.ascii	"_temp_3822\0"
	.align
_Label_3847:
	.byte	'?'
	.ascii	"_temp_3821\0"
	.align
_Label_3848:
	.byte	'?'
	.ascii	"_temp_3820\0"
	.align
_Label_3849:
	.byte	'?'
	.ascii	"_temp_3819\0"
	.align
_Label_3850:
	.byte	'?'
	.ascii	"_temp_3818\0"
	.align
_Label_3851:
	.byte	'?'
	.ascii	"_temp_3817\0"
	.align
_Label_3852:
	.byte	'?'
	.ascii	"_temp_3814\0"
	.align
_Label_3853:
	.byte	'?'
	.ascii	"_temp_3813\0"
	.align
_Label_3854:
	.byte	'?'
	.ascii	"_temp_3812\0"
	.align
_Label_3855:
	.byte	'?'
	.ascii	"_temp_3811\0"
	.align
_Label_3856:
	.byte	'?'
	.ascii	"_temp_3810\0"
	.align
_Label_3857:
	.byte	'?'
	.ascii	"_temp_3809\0"
	.align
_Label_3858:
	.byte	'?'
	.ascii	"_temp_3808\0"
	.align
_Label_3859:
	.byte	'?'
	.ascii	"_temp_3807\0"
	.align
_Label_3860:
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
_Label_4453:
	push	r0
	sub	r1,1,r1
	bne	_Label_4453
	mov	2702,r13		! source line 2702
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2707,r13		! source line 2707
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _Label_3861
	load	[r14+12],r1
	cmp	r1,r0
	be	_Label_3861
	jmp	_Label_3862
_Label_3861:
! THEN...
	mov	2708,r13		! source line 2708
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3863 = _StringConst_157
	set	_StringConst_157,r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_3863  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	2708,r13		! source line 2708
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_3862:
! IF STATEMENT...
	mov	2710,r13		! source line 2710
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3867 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-104]
!   Data Move: _temp_3866 = *_temp_3867  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_3866) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3868 = _temp_3866 + 36
	load	[r14+-108],r1
	add	r1,36,r1
	store	r1,[r14+-100]
!   if boolIsZero (_temp_3868 ) then goto _Label_3865		(int)
	load	[r14+-100],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_3865
!	jmp	_Label_3864
_Label_3864:
! THEN...
	mov	2711,r13		! source line 2711
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	2711,r13		! source line 2711
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3873 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_3872 = *_temp_3873  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_3872) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3874 = _temp_3872 + 32
	load	[r14+-92],r1
	add	r1,32,r1
	store	r1,[r14+-84]
!   Data Move: _temp_3871 = *_temp_3874  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_3871 >= 0 then goto _Label_3870		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3870
!	jmp	_Label_3869
_Label_3869:
! THEN...
	mov	2712,r13		! source line 2712
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3875 = _StringConst_158
	set	_StringConst_158,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_3875  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2712,r13		! source line 2712
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3870:
! ASSIGNMENT STATEMENT...
	mov	2714,r13		! source line 2714
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3877 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-72]
!   Data Move: _temp_3876 = *_temp_3877  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_3876) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3878 = _temp_3876 + 36
	load	[r14+-76],r1
	add	r1,36,r1
	store	r1,[r14+-68]
!   Data Move: *_temp_3878 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-68],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	2715,r13		! source line 2715
	mov	"\0\0SE",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3882 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_3881 = *_temp_3882  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_3881) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3883 = _temp_3881 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   Data Move: _temp_3880 = *_temp_3883  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3886 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: _temp_3885 = *_temp_3886  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_3885) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3887 = _temp_3885 + 20
	load	[r14+-40],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: _temp_3884 = *_temp_3887  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_3879 = _temp_3880 + _temp_3884		(int)
	load	[r14+-60],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3890 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   Data Move: _temp_3889 = *_temp_3890  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_3889) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3891 = _temp_3889 + 28
	load	[r14+-24],r1
	add	r1,28,r1
	store	r1,[r14+-16]
!   Data Move: _temp_3888 = *_temp_3891  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   _temp_3892 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_3879  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_3888  sizeInBytes=4
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
_Label_3865:
! RETURN STATEMENT...
	mov	2710,r13		! source line 2710
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
	.word	_Label_3893
	.word	8		! total size of parameters
	.word	120		! frame size = 120
	.word	_Label_3894
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3895
	.word	12
	.word	4
	.word	_Label_3896
	.word	-12
	.word	4
	.word	_Label_3897
	.word	-16
	.word	4
	.word	_Label_3898
	.word	-20
	.word	4
	.word	_Label_3899
	.word	-24
	.word	4
	.word	_Label_3900
	.word	-28
	.word	4
	.word	_Label_3901
	.word	-32
	.word	4
	.word	_Label_3902
	.word	-36
	.word	4
	.word	_Label_3903
	.word	-40
	.word	4
	.word	_Label_3904
	.word	-44
	.word	4
	.word	_Label_3905
	.word	-48
	.word	4
	.word	_Label_3906
	.word	-52
	.word	4
	.word	_Label_3907
	.word	-56
	.word	4
	.word	_Label_3908
	.word	-60
	.word	4
	.word	_Label_3909
	.word	-64
	.word	4
	.word	_Label_3910
	.word	-68
	.word	4
	.word	_Label_3911
	.word	-72
	.word	4
	.word	_Label_3912
	.word	-76
	.word	4
	.word	_Label_3913
	.word	-80
	.word	4
	.word	_Label_3914
	.word	-84
	.word	4
	.word	_Label_3915
	.word	-88
	.word	4
	.word	_Label_3916
	.word	-92
	.word	4
	.word	_Label_3917
	.word	-96
	.word	4
	.word	_Label_3918
	.word	-100
	.word	4
	.word	_Label_3919
	.word	-104
	.word	4
	.word	_Label_3920
	.word	-108
	.word	4
	.word	_Label_3921
	.word	-112
	.word	4
	.word	0
_Label_3893:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Flush\0"
	.align
_Label_3894:
	.ascii	"Pself\0"
	.align
_Label_3895:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3896:
	.byte	'?'
	.ascii	"_temp_3892\0"
	.align
_Label_3897:
	.byte	'?'
	.ascii	"_temp_3891\0"
	.align
_Label_3898:
	.byte	'?'
	.ascii	"_temp_3890\0"
	.align
_Label_3899:
	.byte	'?'
	.ascii	"_temp_3889\0"
	.align
_Label_3900:
	.byte	'?'
	.ascii	"_temp_3888\0"
	.align
_Label_3901:
	.byte	'?'
	.ascii	"_temp_3887\0"
	.align
_Label_3902:
	.byte	'?'
	.ascii	"_temp_3886\0"
	.align
_Label_3903:
	.byte	'?'
	.ascii	"_temp_3885\0"
	.align
_Label_3904:
	.byte	'?'
	.ascii	"_temp_3884\0"
	.align
_Label_3905:
	.byte	'?'
	.ascii	"_temp_3883\0"
	.align
_Label_3906:
	.byte	'?'
	.ascii	"_temp_3882\0"
	.align
_Label_3907:
	.byte	'?'
	.ascii	"_temp_3881\0"
	.align
_Label_3908:
	.byte	'?'
	.ascii	"_temp_3880\0"
	.align
_Label_3909:
	.byte	'?'
	.ascii	"_temp_3879\0"
	.align
_Label_3910:
	.byte	'?'
	.ascii	"_temp_3878\0"
	.align
_Label_3911:
	.byte	'?'
	.ascii	"_temp_3877\0"
	.align
_Label_3912:
	.byte	'?'
	.ascii	"_temp_3876\0"
	.align
_Label_3913:
	.byte	'?'
	.ascii	"_temp_3875\0"
	.align
_Label_3914:
	.byte	'?'
	.ascii	"_temp_3874\0"
	.align
_Label_3915:
	.byte	'?'
	.ascii	"_temp_3873\0"
	.align
_Label_3916:
	.byte	'?'
	.ascii	"_temp_3872\0"
	.align
_Label_3917:
	.byte	'?'
	.ascii	"_temp_3871\0"
	.align
_Label_3918:
	.byte	'?'
	.ascii	"_temp_3868\0"
	.align
_Label_3919:
	.byte	'?'
	.ascii	"_temp_3867\0"
	.align
_Label_3920:
	.byte	'?'
	.ascii	"_temp_3866\0"
	.align
_Label_3921:
	.byte	'?'
	.ascii	"_temp_3863\0"
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
_Label_4454:
	push	r0
	sub	r1,1,r1
	bne	_Label_4454
	mov	2724,r13		! source line 2724
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2739,r13		! source line 2739
	mov	"\0\0SE",r10
!   _temp_3922 = &fileManagerLock
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
	mov	2740,r13		! source line 2740
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_3928		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3928
!   _temp_3927 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_3929
_Label_3928:
!   _temp_3927 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_3929:
!   if _temp_3927 then goto _Label_3926 else goto _Label_3923
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3923
	jmp	_Label_3926
_Label_3926:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3932 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-100]
!   Data Move: _temp_3931 = *_temp_3932  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_3931 == 0 then goto _Label_3933		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3933
!   _temp_3930 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_3934
_Label_3933:
!   _temp_3930 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_3934:
!   if _temp_3930 then goto _Label_3925 else goto _Label_3923
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3923
	jmp	_Label_3925
_Label_3925:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3937 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_3936 = *_temp_3937  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_3936) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3938 = _temp_3936 + 20
	load	[r14+-92],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: _temp_3935 = *_temp_3938  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_3935 >= 0 then goto _Label_3924		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3924
!	jmp	_Label_3923
_Label_3923:
! THEN...
	mov	2741,r13		! source line 2741
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3939 = _StringConst_159
	set	_StringConst_159,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_3939  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2741,r13		! source line 2741
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3924:
! ASSIGNMENT STATEMENT...
	mov	2743,r13		! source line 2743
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3940 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-76]
!   Data Move: fcb = *_temp_3940  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-128]
! WHILE STATEMENT...
	mov	2744,r13		! source line 2744
	mov	"\0\0WH",r10
_Label_3941:
!   if numBytes <= 0 then goto _Label_3943		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3943
!	jmp	_Label_3942
_Label_3942:
	mov	2744,r13		! source line 2744
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2753,r13		! source line 2753
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
	mov	2754,r13		! source line 2754
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
	mov	2758,r13		! source line 2758
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3947 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-68]
!   Data Move: _temp_3946 = *_temp_3947  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if _temp_3946 == sector then goto _Label_3945		(int)
	load	[r14+-72],r1
	load	[r14+-112],r2
	cmp	r1,r2
	be	_Label_3945
!	jmp	_Label_3944
_Label_3944:
! THEN...
	mov	2759,r13		! source line 2759
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2759,r13		! source line 2759
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_3948) then goto _runtimeErrorNullPointer
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
	mov	2761,r13		! source line 2761
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3951 = fcb + 20
	load	[r14+-128],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_3950 = *_temp_3951  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   _temp_3949 = sector + _temp_3950		(int)
	load	[r14+-112],r1
	load	[r14+-56],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3953 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-44]
!   Data Move: _temp_3952 = *_temp_3953  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_3954 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_3949  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_3952  sizeInBytes=4
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
	mov	2764,r13		! source line 2764
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3955 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_3955 = sector  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2765,r13		! source line 2765
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3956 = fcb + 36
	load	[r14+-128],r1
	add	r1,36,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_3956 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-32],r2
	storeb	r1,[r2]
! END IF...
_Label_3945:
! ASSIGNMENT STATEMENT...
	mov	2767,r13		! source line 2767
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3958 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-24]
!   Data Move: _temp_3957 = *_temp_3958  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   posInBuffer = _temp_3957 + offset		(int)
	load	[r14+-28],r1
	load	[r14+-116],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
! ASSIGNMENT STATEMENT...
	mov	2768,r13		! source line 2768
	mov	"\0\0AS",r10
!   _temp_3959 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-116],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_3959  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Call the function
	mov	2768,r13		! source line 2768
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
	mov	2772,r13		! source line 2772
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2773,r13		! source line 2773
	mov	"\0\0AS",r10
!   targetAddr = targetAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2774,r13		! source line 2774
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2775,r13		! source line 2775
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_3941
_Label_3943:
! SEND STATEMENT...
	mov	2782,r13		! source line 2782
	mov	"\0\0SE",r10
!   _temp_3960 = &fileManagerLock
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
	mov	2783,r13		! source line 2783
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
	.word	_Label_3961
	.word	20		! total size of parameters
	.word	136		! frame size = 136
	.word	_Label_3962
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3963
	.word	12
	.word	4
	.word	_Label_3964
	.word	16
	.word	4
	.word	_Label_3965
	.word	20
	.word	4
	.word	_Label_3966
	.word	24
	.word	4
	.word	_Label_3967
	.word	-16
	.word	4
	.word	_Label_3968
	.word	-20
	.word	4
	.word	_Label_3969
	.word	-24
	.word	4
	.word	_Label_3970
	.word	-28
	.word	4
	.word	_Label_3971
	.word	-32
	.word	4
	.word	_Label_3972
	.word	-36
	.word	4
	.word	_Label_3973
	.word	-40
	.word	4
	.word	_Label_3974
	.word	-44
	.word	4
	.word	_Label_3975
	.word	-48
	.word	4
	.word	_Label_3976
	.word	-52
	.word	4
	.word	_Label_3977
	.word	-56
	.word	4
	.word	_Label_3978
	.word	-60
	.word	4
	.word	_Label_3979
	.word	-64
	.word	4
	.word	_Label_3980
	.word	-68
	.word	4
	.word	_Label_3981
	.word	-72
	.word	4
	.word	_Label_3982
	.word	-76
	.word	4
	.word	_Label_3983
	.word	-80
	.word	4
	.word	_Label_3984
	.word	-84
	.word	4
	.word	_Label_3985
	.word	-88
	.word	4
	.word	_Label_3986
	.word	-92
	.word	4
	.word	_Label_3987
	.word	-96
	.word	4
	.word	_Label_3988
	.word	-100
	.word	4
	.word	_Label_3989
	.word	-104
	.word	4
	.word	_Label_3990
	.word	-9
	.word	1
	.word	_Label_3991
	.word	-10
	.word	1
	.word	_Label_3992
	.word	-108
	.word	4
	.word	_Label_3993
	.word	-112
	.word	4
	.word	_Label_3994
	.word	-116
	.word	4
	.word	_Label_3995
	.word	-120
	.word	4
	.word	_Label_3996
	.word	-124
	.word	4
	.word	_Label_3997
	.word	-128
	.word	4
	.word	0
_Label_3961:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchRead\0"
	.align
_Label_3962:
	.ascii	"Pself\0"
	.align
_Label_3963:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3964:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_3965:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_3966:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3967:
	.byte	'?'
	.ascii	"_temp_3960\0"
	.align
_Label_3968:
	.byte	'?'
	.ascii	"_temp_3959\0"
	.align
_Label_3969:
	.byte	'?'
	.ascii	"_temp_3958\0"
	.align
_Label_3970:
	.byte	'?'
	.ascii	"_temp_3957\0"
	.align
_Label_3971:
	.byte	'?'
	.ascii	"_temp_3956\0"
	.align
_Label_3972:
	.byte	'?'
	.ascii	"_temp_3955\0"
	.align
_Label_3973:
	.byte	'?'
	.ascii	"_temp_3954\0"
	.align
_Label_3974:
	.byte	'?'
	.ascii	"_temp_3953\0"
	.align
_Label_3975:
	.byte	'?'
	.ascii	"_temp_3952\0"
	.align
_Label_3976:
	.byte	'?'
	.ascii	"_temp_3951\0"
	.align
_Label_3977:
	.byte	'?'
	.ascii	"_temp_3950\0"
	.align
_Label_3978:
	.byte	'?'
	.ascii	"_temp_3949\0"
	.align
_Label_3979:
	.byte	'?'
	.ascii	"_temp_3948\0"
	.align
_Label_3980:
	.byte	'?'
	.ascii	"_temp_3947\0"
	.align
_Label_3981:
	.byte	'?'
	.ascii	"_temp_3946\0"
	.align
_Label_3982:
	.byte	'?'
	.ascii	"_temp_3940\0"
	.align
_Label_3983:
	.byte	'?'
	.ascii	"_temp_3939\0"
	.align
_Label_3984:
	.byte	'?'
	.ascii	"_temp_3938\0"
	.align
_Label_3985:
	.byte	'?'
	.ascii	"_temp_3937\0"
	.align
_Label_3986:
	.byte	'?'
	.ascii	"_temp_3936\0"
	.align
_Label_3987:
	.byte	'?'
	.ascii	"_temp_3935\0"
	.align
_Label_3988:
	.byte	'?'
	.ascii	"_temp_3932\0"
	.align
_Label_3989:
	.byte	'?'
	.ascii	"_temp_3931\0"
	.align
_Label_3990:
	.byte	'C'
	.ascii	"_temp_3930\0"
	.align
_Label_3991:
	.byte	'C'
	.ascii	"_temp_3927\0"
	.align
_Label_3992:
	.byte	'?'
	.ascii	"_temp_3922\0"
	.align
_Label_3993:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_3994:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_3995:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_3996:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_3997:
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
_Label_4455:
	push	r0
	sub	r1,1,r1
	bne	_Label_4455
	mov	2788,r13		! source line 2788
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2804,r13		! source line 2804
	mov	"\0\0SE",r10
!   _temp_3998 = &fileManagerLock
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
	mov	2805,r13		! source line 2805
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_4004		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_4004
!   _temp_4003 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_4005
_Label_4004:
!   _temp_4003 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_4005:
!   if _temp_4003 then goto _Label_4002 else goto _Label_3999
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3999
	jmp	_Label_4002
_Label_4002:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4008 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-108]
!   Data Move: _temp_4007 = *_temp_4008  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if _temp_4007 == 0 then goto _Label_4009		(int)
	load	[r14+-112],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_4009
!   _temp_4006 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_4010
_Label_4009:
!   _temp_4006 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_4010:
!   if _temp_4006 then goto _Label_4001 else goto _Label_3999
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3999
	jmp	_Label_4001
_Label_4001:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4013 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-96]
!   Data Move: _temp_4012 = *_temp_4013  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_4012) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4014 = _temp_4012 + 20
	load	[r14+-100],r1
	add	r1,20,r1
	store	r1,[r14+-92]
!   Data Move: _temp_4011 = *_temp_4014  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_4011 >= 0 then goto _Label_4000		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_4000
!	jmp	_Label_3999
_Label_3999:
! THEN...
	mov	2806,r13		! source line 2806
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4015 = _StringConst_160
	set	_StringConst_160,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_4015  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2806,r13		! source line 2806
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_4000:
! ASSIGNMENT STATEMENT...
	mov	2808,r13		! source line 2808
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4016 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: fcb = *_temp_4016  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-136]
! WHILE STATEMENT...
	mov	2809,r13		! source line 2809
	mov	"\0\0WH",r10
_Label_4017:
!   if numBytes <= 0 then goto _Label_4019		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_4019
!	jmp	_Label_4018
_Label_4018:
	mov	2809,r13		! source line 2809
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2818,r13		! source line 2818
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
	mov	2819,r13		! source line 2819
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
	mov	2823,r13		! source line 2823
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4023 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-76]
!   Data Move: _temp_4022 = *_temp_4023  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_4022 == sector then goto _Label_4021		(int)
	load	[r14+-80],r1
	load	[r14+-120],r2
	cmp	r1,r2
	be	_Label_4021
!	jmp	_Label_4020
_Label_4020:
! THEN...
	mov	2825,r13		! source line 2825
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2825,r13		! source line 2825
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_4024) then goto _runtimeErrorNullPointer
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
_Label_4021:
! ASSIGNMENT STATEMENT...
	mov	2827,r13		! source line 2827
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4026 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-64]
!   Data Move: _temp_4025 = *_temp_4026  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   posInBuffer = _temp_4025 + offset		(int)
	load	[r14+-68],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
! ASSIGNMENT STATEMENT...
	mov	2828,r13		! source line 2828
	mov	"\0\0AS",r10
!   _temp_4027 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_4027  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Call the function
	mov	2828,r13		! source line 2828
	mov	"\0\0CA",r10
	call	_P_System_Min
!   Retrieve Result: targetName=bytesToMove  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-132]
! IF STATEMENT...
	mov	2829,r13		! source line 2829
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4031 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-52]
!   Data Move: _temp_4030 = *_temp_4031  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if _temp_4030 != sector then goto _Label_4029		(int)
	load	[r14+-56],r1
	load	[r14+-120],r2
	cmp	r1,r2
	bne	_Label_4029
!	jmp	_Label_4028
_Label_4028:
	jmp	_Label_4032
_Label_4029:
! ELSE...
	mov	2831,r13		! source line 2831
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	2831,r13		! source line 2831
	mov	"\0\0IF",r10
!   if intIsZero (offset) then goto _Label_4035
	load	[r14+-124],r1
	cmp	r1,r0
	be	_Label_4035
	jmp	_Label_4034
_Label_4035:
!   if bytesToMove != 8192 then goto _Label_4034		(int)
	load	[r14+-132],r1
	mov	8192,r2
	cmp	r1,r2
	bne	_Label_4034
!	jmp	_Label_4033
_Label_4033:
	jmp	_Label_4036
_Label_4034:
! ELSE...
	mov	2835,r13		! source line 2835
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	2835,r13		! source line 2835
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4039 = fcb + 20
	load	[r14+-136],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   Data Move: _temp_4038 = *_temp_4039  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_4037 = sector + _temp_4038		(int)
	load	[r14+-120],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4041 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-32]
!   Data Move: _temp_4040 = *_temp_4041  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   _temp_4042 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_4037  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_4040  sizeInBytes=4
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
_Label_4036:
! END IF...
_Label_4032:
! ASSIGNMENT STATEMENT...
	mov	2839,r13		! source line 2839
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4043 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_4043 = sector  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2840,r13		! source line 2840
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4044 = fcb + 36
	load	[r14+-136],r1
	add	r1,36,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_4044 = 1  (sizeInBytes=1)
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
	mov	2844,r13		! source line 2844
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2845,r13		! source line 2845
	mov	"\0\0AS",r10
!   sourceAddr = sourceAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2846,r13		! source line 2846
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2847,r13		! source line 2847
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-132],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_4017
_Label_4019:
! SEND STATEMENT...
	mov	2854,r13		! source line 2854
	mov	"\0\0SE",r10
!   _temp_4045 = &fileManagerLock
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
	mov	2856,r13		! source line 2856
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
	.word	_Label_4046
	.word	20		! total size of parameters
	.word	144		! frame size = 144
	.word	_Label_4047
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_4048
	.word	12
	.word	4
	.word	_Label_4049
	.word	16
	.word	4
	.word	_Label_4050
	.word	20
	.word	4
	.word	_Label_4051
	.word	24
	.word	4
	.word	_Label_4052
	.word	-16
	.word	4
	.word	_Label_4053
	.word	-20
	.word	4
	.word	_Label_4054
	.word	-24
	.word	4
	.word	_Label_4055
	.word	-28
	.word	4
	.word	_Label_4056
	.word	-32
	.word	4
	.word	_Label_4057
	.word	-36
	.word	4
	.word	_Label_4058
	.word	-40
	.word	4
	.word	_Label_4059
	.word	-44
	.word	4
	.word	_Label_4060
	.word	-48
	.word	4
	.word	_Label_4061
	.word	-52
	.word	4
	.word	_Label_4062
	.word	-56
	.word	4
	.word	_Label_4063
	.word	-60
	.word	4
	.word	_Label_4064
	.word	-64
	.word	4
	.word	_Label_4065
	.word	-68
	.word	4
	.word	_Label_4066
	.word	-72
	.word	4
	.word	_Label_4067
	.word	-76
	.word	4
	.word	_Label_4068
	.word	-80
	.word	4
	.word	_Label_4069
	.word	-84
	.word	4
	.word	_Label_4070
	.word	-88
	.word	4
	.word	_Label_4071
	.word	-92
	.word	4
	.word	_Label_4072
	.word	-96
	.word	4
	.word	_Label_4073
	.word	-100
	.word	4
	.word	_Label_4074
	.word	-104
	.word	4
	.word	_Label_4075
	.word	-108
	.word	4
	.word	_Label_4076
	.word	-112
	.word	4
	.word	_Label_4077
	.word	-9
	.word	1
	.word	_Label_4078
	.word	-10
	.word	1
	.word	_Label_4079
	.word	-116
	.word	4
	.word	_Label_4080
	.word	-120
	.word	4
	.word	_Label_4081
	.word	-124
	.word	4
	.word	_Label_4082
	.word	-128
	.word	4
	.word	_Label_4083
	.word	-132
	.word	4
	.word	_Label_4084
	.word	-136
	.word	4
	.word	0
_Label_4046:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchWrite\0"
	.align
_Label_4047:
	.ascii	"Pself\0"
	.align
_Label_4048:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_4049:
	.byte	'I'
	.ascii	"sourceAddr\0"
	.align
_Label_4050:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_4051:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_4052:
	.byte	'?'
	.ascii	"_temp_4045\0"
	.align
_Label_4053:
	.byte	'?'
	.ascii	"_temp_4044\0"
	.align
_Label_4054:
	.byte	'?'
	.ascii	"_temp_4043\0"
	.align
_Label_4055:
	.byte	'?'
	.ascii	"_temp_4042\0"
	.align
_Label_4056:
	.byte	'?'
	.ascii	"_temp_4041\0"
	.align
_Label_4057:
	.byte	'?'
	.ascii	"_temp_4040\0"
	.align
_Label_4058:
	.byte	'?'
	.ascii	"_temp_4039\0"
	.align
_Label_4059:
	.byte	'?'
	.ascii	"_temp_4038\0"
	.align
_Label_4060:
	.byte	'?'
	.ascii	"_temp_4037\0"
	.align
_Label_4061:
	.byte	'?'
	.ascii	"_temp_4031\0"
	.align
_Label_4062:
	.byte	'?'
	.ascii	"_temp_4030\0"
	.align
_Label_4063:
	.byte	'?'
	.ascii	"_temp_4027\0"
	.align
_Label_4064:
	.byte	'?'
	.ascii	"_temp_4026\0"
	.align
_Label_4065:
	.byte	'?'
	.ascii	"_temp_4025\0"
	.align
_Label_4066:
	.byte	'?'
	.ascii	"_temp_4024\0"
	.align
_Label_4067:
	.byte	'?'
	.ascii	"_temp_4023\0"
	.align
_Label_4068:
	.byte	'?'
	.ascii	"_temp_4022\0"
	.align
_Label_4069:
	.byte	'?'
	.ascii	"_temp_4016\0"
	.align
_Label_4070:
	.byte	'?'
	.ascii	"_temp_4015\0"
	.align
_Label_4071:
	.byte	'?'
	.ascii	"_temp_4014\0"
	.align
_Label_4072:
	.byte	'?'
	.ascii	"_temp_4013\0"
	.align
_Label_4073:
	.byte	'?'
	.ascii	"_temp_4012\0"
	.align
_Label_4074:
	.byte	'?'
	.ascii	"_temp_4011\0"
	.align
_Label_4075:
	.byte	'?'
	.ascii	"_temp_4008\0"
	.align
_Label_4076:
	.byte	'?'
	.ascii	"_temp_4007\0"
	.align
_Label_4077:
	.byte	'C'
	.ascii	"_temp_4006\0"
	.align
_Label_4078:
	.byte	'C'
	.ascii	"_temp_4003\0"
	.align
_Label_4079:
	.byte	'?'
	.ascii	"_temp_3998\0"
	.align
_Label_4080:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_4081:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_4082:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_4083:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_4084:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  CLASS FileControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileControlBlock:
	.word	_Label_4085
	jmp	_Method_P_Kernel_FileControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_FileControlBlock_2	! 8:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_4085:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_4086
	.word	_sourceFileName
	.word	391		! line number
	.word	40		! size of instances, in bytes
	.word	_P_Kernel_FileControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_4086:
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
_Label_4456:
	push	r0
	sub	r1,1,r1
	bne	_Label_4456
	mov	2892,r13		! source line 2892
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2893,r13		! source line 2893
	mov	"\0\0AS",r10
!   numberOfUsers = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2894,r13		! source line 2894
	mov	"\0\0AS",r10
	mov	2894,r13		! source line 2894
	mov	"\0\0SE",r10
!   _temp_4087 = &_P_Kernel_frameManager
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
	mov	2895,r13		! source line 2895
	mov	"\0\0AS",r10
!   relativeSectorInBuffer = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! ASSIGNMENT STATEMENT...
	mov	2896,r13		! source line 2896
	mov	"\0\0AS",r10
!   bufferIsDirty = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+36]
! ASSIGNMENT STATEMENT...
	mov	2897,r13		! source line 2897
	mov	"\0\0AS",r10
!   startingSectorOfFile = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! RETURN STATEMENT...
	mov	2897,r13		! source line 2897
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
	.word	_Label_4088
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_4089
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_4090
	.word	-12
	.word	4
	.word	0
_Label_4088:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_4089:
	.ascii	"Pself\0"
	.align
_Label_4090:
	.byte	'?'
	.ascii	"_temp_4087\0"
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
_Label_4457:
	push	r0
	sub	r1,1,r1
	bne	_Label_4457
	mov	2902,r13		! source line 2902
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_4091 = _StringConst_161
	set	_StringConst_161,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_4091  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2903,r13		! source line 2903
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fcbID  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2904,r13		! source line 2904
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_4092 = _StringConst_162
	set	_StringConst_162,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_4092  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2905,r13		! source line 2905
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=numberOfUsers  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2906,r13		! source line 2906
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_4093 = _StringConst_163
	set	_StringConst_163,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_4093  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2907,r13		! source line 2907
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=startingSectorOfFile  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2908,r13		! source line 2908
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_4094 = _StringConst_164
	set	_StringConst_164,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_4094  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2909,r13		! source line 2909
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeOfFileInBytes  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2910,r13		! source line 2910
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_4095 = _StringConst_165
	set	_StringConst_165,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_4095  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2911,r13		! source line 2911
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=bufferPtr  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2912,r13		! source line 2912
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_4096 = _StringConst_166
	set	_StringConst_166,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_4096  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2913,r13		! source line 2913
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=relativeSectorInBuffer  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2914,r13		! source line 2914
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2915,r13		! source line 2915
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2915,r13		! source line 2915
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
	.word	_Label_4097
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_4098
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_4099
	.word	-12
	.word	4
	.word	_Label_4100
	.word	-16
	.word	4
	.word	_Label_4101
	.word	-20
	.word	4
	.word	_Label_4102
	.word	-24
	.word	4
	.word	_Label_4103
	.word	-28
	.word	4
	.word	_Label_4104
	.word	-32
	.word	4
	.word	0
_Label_4097:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_4098:
	.ascii	"Pself\0"
	.align
_Label_4099:
	.byte	'?'
	.ascii	"_temp_4096\0"
	.align
_Label_4100:
	.byte	'?'
	.ascii	"_temp_4095\0"
	.align
_Label_4101:
	.byte	'?'
	.ascii	"_temp_4094\0"
	.align
_Label_4102:
	.byte	'?'
	.ascii	"_temp_4093\0"
	.align
_Label_4103:
	.byte	'?'
	.ascii	"_temp_4092\0"
	.align
_Label_4104:
	.byte	'?'
	.ascii	"_temp_4091\0"
	.align
! 
! ===============  CLASS OpenFile  ===============
! 
! Dispatch Table:
! 
_P_Kernel_OpenFile:
	.word	_Label_4105
	jmp	_Method_P_Kernel_OpenFile_1	! 4:	Print
	jmp	_Method_P_Kernel_OpenFile_2	! 8:	ReadBytes
	jmp	_Method_P_Kernel_OpenFile_3	! 12:	ReadInt
	jmp	_Method_P_Kernel_OpenFile_4	! 16:	LoadExecutable
	.word	0
! 
! Class descriptor:
! 
_Label_4105:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_4106
	.word	_sourceFileName
	.word	408		! line number
	.word	28		! size of instances, in bytes
	.word	_P_Kernel_OpenFile
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_4106:
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
_Label_4458:
	push	r0
	sub	r1,1,r1
	bne	_Label_4458
	mov	3033,r13		! source line 3033
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_4107 = _StringConst_167
	set	_StringConst_167,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_4107  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	3034,r13		! source line 3034
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=currentPos  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	3035,r13		! source line 3035
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_4108 = _StringConst_168
	set	_StringConst_168,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_4108  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	3036,r13		! source line 3036
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	3037,r13		! source line 3037
	mov	"\0\0IF",r10
!   if fcb == 0 then goto _Label_4110		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_4110
!	jmp	_Label_4109
_Label_4109:
! THEN...
	mov	3038,r13		! source line 3038
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	3038,r13		! source line 3038
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
	jmp	_Label_4111
_Label_4110:
! ELSE...
	mov	3040,r13		! source line 3040
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_4112 = _StringConst_169
	set	_StringConst_169,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_4112  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	3040,r13		! source line 3040
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_4111:
! RETURN STATEMENT...
	mov	3037,r13		! source line 3037
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
	.word	_Label_4113
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_4114
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_4115
	.word	-12
	.word	4
	.word	_Label_4116
	.word	-16
	.word	4
	.word	_Label_4117
	.word	-20
	.word	4
	.word	0
_Label_4113:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_4114:
	.ascii	"Pself\0"
	.align
_Label_4115:
	.byte	'?'
	.ascii	"_temp_4112\0"
	.align
_Label_4116:
	.byte	'?'
	.ascii	"_temp_4108\0"
	.align
_Label_4117:
	.byte	'?'
	.ascii	"_temp_4107\0"
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
_Label_4459:
	push	r0
	sub	r1,1,r1
	bne	_Label_4459
	mov	3046,r13		! source line 3046
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	3056,r13		! source line 3056
	mov	"\0\0SE",r10
!   _temp_4118 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-36]
!   _temp_4119 = _temp_4118 + 4
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
	mov	3057,r13		! source line 3057
	mov	"\0\0AS",r10
!   pos = currentPos		(4 bytes)
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	3058,r13		! source line 3058
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
	mov	3059,r13		! source line 3059
	mov	"\0\0SE",r10
!   _temp_4120 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   _temp_4121 = _temp_4120 + 4
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
	mov	3060,r13		! source line 3060
	mov	"\0\0RE",r10
	mov	3060,r13		! source line 3060
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   _temp_4124 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_4123  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_4122  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   ReturnResult: _temp_4122  (sizeInBytes=1)
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
	.word	_Label_4125
	.word	12		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_4126
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_4127
	.word	12
	.word	4
	.word	_Label_4128
	.word	16
	.word	4
	.word	_Label_4129
	.word	-16
	.word	4
	.word	_Label_4130
	.word	-20
	.word	4
	.word	_Label_4131
	.word	-9
	.word	1
	.word	_Label_4132
	.word	-24
	.word	4
	.word	_Label_4133
	.word	-28
	.word	4
	.word	_Label_4134
	.word	-32
	.word	4
	.word	_Label_4135
	.word	-36
	.word	4
	.word	_Label_4136
	.word	-40
	.word	4
	.word	0
_Label_4125:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadBytes\0"
	.align
_Label_4126:
	.ascii	"Pself\0"
	.align
_Label_4127:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_4128:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_4129:
	.byte	'?'
	.ascii	"_temp_4124\0"
	.align
_Label_4130:
	.byte	'?'
	.ascii	"_temp_4123\0"
	.align
_Label_4131:
	.byte	'C'
	.ascii	"_temp_4122\0"
	.align
_Label_4132:
	.byte	'?'
	.ascii	"_temp_4121\0"
	.align
_Label_4133:
	.byte	'?'
	.ascii	"_temp_4120\0"
	.align
_Label_4134:
	.byte	'?'
	.ascii	"_temp_4119\0"
	.align
_Label_4135:
	.byte	'?'
	.ascii	"_temp_4118\0"
	.align
_Label_4136:
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
_Label_4460:
	push	r0
	sub	r1,1,r1
	bne	_Label_4460
	mov	3065,r13		! source line 3065
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	3070,r13		! source line 3070
	mov	"\0\0IF",r10
	mov	3070,r13		! source line 3070
	mov	"\0\0SE",r10
!   _temp_4140 = &i
	add	r14,-28,r1
	store	r1,[r14+-24]
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_4141) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_4140  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_4139  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_4139 then goto _Label_4138 else goto _Label_4137
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_4137
	jmp	_Label_4138
_Label_4137:
! THEN...
	mov	3071,r13		! source line 3071
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4142 = _StringConst_170
	set	_StringConst_170,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_4142  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	3071,r13		! source line 3071
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_4138:
! RETURN STATEMENT...
	mov	3073,r13		! source line 3073
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
	.word	_Label_4143
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_4144
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_4145
	.word	-16
	.word	4
	.word	_Label_4146
	.word	-20
	.word	4
	.word	_Label_4147
	.word	-24
	.word	4
	.word	_Label_4148
	.word	-9
	.word	1
	.word	_Label_4149
	.word	-28
	.word	4
	.word	0
_Label_4143:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadInt\0"
	.align
_Label_4144:
	.ascii	"Pself\0"
	.align
_Label_4145:
	.byte	'?'
	.ascii	"_temp_4142\0"
	.align
_Label_4146:
	.byte	'?'
	.ascii	"_temp_4141\0"
	.align
_Label_4147:
	.byte	'?'
	.ascii	"_temp_4140\0"
	.align
_Label_4148:
	.byte	'C'
	.ascii	"_temp_4139\0"
	.align
_Label_4149:
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
_Label_4461:
	push	r0
	sub	r1,1,r1
	bne	_Label_4461
	mov	3078,r13		! source line 3078
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	3104,r13		! source line 3104
	mov	"\0\0IF",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4153 = addrSpace + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-216]
!   Data Move: _temp_4152 = *_temp_4153  (sizeInBytes=4)
	load	[r14+-216],r1
	load	[r1],r1
	store	r1,[r14+-220]
!   if intIsZero (_temp_4152) then goto _Label_4151
	load	[r14+-220],r1
	cmp	r1,r0
	be	_Label_4151
!	jmp	_Label_4150
_Label_4150:
! THEN...
	mov	3105,r13		! source line 3105
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4154 = _StringConst_171
	set	_StringConst_171,r1
	store	r1,[r14+-212]
!   Prepare Argument: offset=8  value=_temp_4154  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	3105,r13		! source line 3105
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_4151:
! IF STATEMENT...
	mov	3109,r13		! source line 3109
	mov	"\0\0IF",r10
	mov	3109,r13		! source line 3109
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-204]
!   if intIsZero (_temp_4158) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_4157  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-208]
!   if _temp_4157 == 1112300152 then goto _Label_4156		(int)
	load	[r14+-208],r1
	set	1112300152,r2
	cmp	r1,r2
	be	_Label_4156
!	jmp	_Label_4155
_Label_4155:
! THEN...
	mov	3110,r13		! source line 3110
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4159 = _StringConst_172
	set	_StringConst_172,r1
	store	r1,[r14+-200]
!   Prepare Argument: offset=8  value=_temp_4159  sizeInBytes=4
	load	[r14+-200],r1
	store	r1,[r15+0]
!   Call the function
	mov	3110,r13		! source line 3110
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3111,r13		! source line 3111
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4156:
! ASSIGNMENT STATEMENT...
	mov	3115,r13		! source line 3115
	mov	"\0\0AS",r10
	mov	3115,r13		! source line 3115
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-196]
!   if intIsZero (_temp_4160) then goto _runtimeErrorNullPointer
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
	mov	3116,r13		! source line 3116
	mov	"\0\0AS",r10
	mov	3116,r13		! source line 3116
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-192]
!   if intIsZero (_temp_4161) then goto _runtimeErrorNullPointer
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
	mov	3117,r13		! source line 3117
	mov	"\0\0AS",r10
	mov	3117,r13		! source line 3117
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_4162) then goto _runtimeErrorNullPointer
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
	mov	3118,r13		! source line 3118
	mov	"\0\0AS",r10
	mov	3118,r13		! source line 3118
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-184]
!   if intIsZero (_temp_4163) then goto _runtimeErrorNullPointer
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
	mov	3119,r13		! source line 3119
	mov	"\0\0AS",r10
	mov	3119,r13		! source line 3119
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-180]
!   if intIsZero (_temp_4164) then goto _runtimeErrorNullPointer
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
	mov	3120,r13		! source line 3120
	mov	"\0\0AS",r10
	mov	3120,r13		! source line 3120
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-176]
!   if intIsZero (_temp_4165) then goto _runtimeErrorNullPointer
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
	mov	3123,r13		! source line 3123
	mov	"\0\0IF",r10
!   _temp_4168 = textSize rem 8192		(int)
	load	[r14+-232],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-172]
!   if intIsZero (_temp_4168) then goto _Label_4167
	load	[r14+-172],r1
	cmp	r1,r0
	be	_Label_4167
!	jmp	_Label_4166
_Label_4166:
! THEN...
	mov	3124,r13		! source line 3124
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4169 = _StringConst_173
	set	_StringConst_173,r1
	store	r1,[r14+-168]
!   Prepare Argument: offset=8  value=_temp_4169  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+0]
!   Call the function
	mov	3124,r13		! source line 3124
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3125,r13		! source line 3125
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4167:
! ASSIGNMENT STATEMENT...
	mov	3127,r13		! source line 3127
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
	mov	3131,r13		! source line 3131
	mov	"\0\0IF",r10
!   if intIsZero (textStart) then goto _Label_4171
	load	[r14+-244],r1
	cmp	r1,r0
	be	_Label_4171
!	jmp	_Label_4170
_Label_4170:
! THEN...
	mov	3132,r13		! source line 3132
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4172 = _StringConst_174
	set	_StringConst_174,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_4172  sizeInBytes=4
	load	[r14+-164],r1
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
_Label_4171:
! IF STATEMENT...
	mov	3137,r13		! source line 3137
	mov	"\0\0IF",r10
!   _temp_4175 = dataSize rem 8192		(int)
	load	[r14+-236],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
!   if intIsZero (_temp_4175) then goto _Label_4174
	load	[r14+-160],r1
	cmp	r1,r0
	be	_Label_4174
!	jmp	_Label_4173
_Label_4173:
! THEN...
	mov	3138,r13		! source line 3138
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4176 = _StringConst_175
	set	_StringConst_175,r1
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_4176  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	3138,r13		! source line 3138
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3139,r13		! source line 3139
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4174:
! IF STATEMENT...
	mov	3141,r13		! source line 3141
	mov	"\0\0IF",r10
!   _temp_4179 = textStart + textSize		(int)
	load	[r14+-244],r1
	load	[r14+-232],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   if dataStart == _temp_4179 then goto _Label_4178		(int)
	load	[r14+-248],r1
	load	[r14+-152],r2
	cmp	r1,r2
	be	_Label_4178
!	jmp	_Label_4177
_Label_4177:
! THEN...
	mov	3142,r13		! source line 3142
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4180 = _StringConst_176
	set	_StringConst_176,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_4180  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	3142,r13		! source line 3142
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3143,r13		! source line 3143
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4178:
! ASSIGNMENT STATEMENT...
	mov	3145,r13		! source line 3145
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
	mov	3148,r13		! source line 3148
	mov	"\0\0IF",r10
!   _temp_4183 = bssSize rem 8192		(int)
	load	[r14+-240],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
!   if intIsZero (_temp_4183) then goto _Label_4182
	load	[r14+-144],r1
	cmp	r1,r0
	be	_Label_4182
!	jmp	_Label_4181
_Label_4181:
! THEN...
	mov	3149,r13		! source line 3149
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4184 = _StringConst_177
	set	_StringConst_177,r1
	store	r1,[r14+-140]
!   Prepare Argument: offset=8  value=_temp_4184  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+0]
!   Call the function
	mov	3149,r13		! source line 3149
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3150,r13		! source line 3150
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4182:
! IF STATEMENT...
	mov	3152,r13		! source line 3152
	mov	"\0\0IF",r10
!   _temp_4187 = dataStart + dataSize		(int)
	load	[r14+-248],r1
	load	[r14+-236],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
!   if bssStart == _temp_4187 then goto _Label_4186		(int)
	load	[r14+-252],r1
	load	[r14+-136],r2
	cmp	r1,r2
	be	_Label_4186
!	jmp	_Label_4185
_Label_4185:
! THEN...
	mov	3153,r13		! source line 3153
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4188 = _StringConst_178
	set	_StringConst_178,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_4188  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	3153,r13		! source line 3153
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3154,r13		! source line 3154
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4186:
! ASSIGNMENT STATEMENT...
	mov	3156,r13		! source line 3156
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
	mov	3159,r13		! source line 3159
	mov	"\0\0AS",r10
!   _temp_4191 = textSizeInPages + dataSizeInPages		(int)
	load	[r14+-260],r1
	load	[r14+-264],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
!   _temp_4190 = _temp_4191 + bssSizeInPages		(int)
	load	[r14+-120],r1
	load	[r14+-268],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
!   _temp_4189 = _temp_4190 + 1		(int)
	load	[r14+-124],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
!   i = _temp_4189 + 0		(int)
	load	[r14+-128],r1
	mov	0,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
! IF STATEMENT...
	mov	3174,r13		! source line 3174
	mov	"\0\0IF",r10
!   if i <= 20 then goto _Label_4193		(int)
	load	[r14+-256],r1
	mov	20,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_4193
!	jmp	_Label_4192
_Label_4192:
! THEN...
	mov	3175,r13		! source line 3175
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4194 = _StringConst_179
	set	_StringConst_179,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_4194  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	3175,r13		! source line 3175
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_4195 = _StringConst_180
	set	_StringConst_180,r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_4195  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+4]
!   Call the function
	mov	3176,r13		! source line 3176
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_4196 = _StringConst_181
	set	_StringConst_181,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_4196  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+4]
!   Call the function
	mov	3177,r13		! source line 3177
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! RETURN STATEMENT...
	mov	3178,r13		! source line 3178
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4193:
! SEND STATEMENT...
	mov	3180,r13		! source line 3180
	mov	"\0\0SE",r10
!   _temp_4197 = &_P_Kernel_frameManager
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
	mov	3186,r13		! source line 3186
	mov	"\0\0IF",r10
	mov	3186,r13		! source line 3186
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-96]
!   if intIsZero (_temp_4201) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_4200  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-100]
!   if _temp_4200 == 707406378 then goto _Label_4199		(int)
	load	[r14+-100],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_4199
!	jmp	_Label_4198
_Label_4198:
! THEN...
	mov	3187,r13		! source line 3187
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4202 = _StringConst_182
	set	_StringConst_182,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_4202  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	3187,r13		! source line 3187
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3188,r13		! source line 3188
	mov	"\0\0SE",r10
!   _temp_4203 = &_P_Kernel_frameManager
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
	mov	3189,r13		! source line 3189
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4199:
! ASSIGNMENT STATEMENT...
	mov	3193,r13		! source line 3193
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
	mov	3194,r13		! source line 3194
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_4208 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-84]
!   Calculate and save the FOR-LOOP ending value
!   _temp_4209 = textSizeInPages		(4 bytes)
	load	[r14+-260],r1
	store	r1,[r14+-80]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_4208  (sizeInBytes=4)
	load	[r14+-84],r1
	store	r1,[r14+-256]
_Label_4204:
!   Perform the FOR-LOOP termination test
!   if i > _temp_4209 then goto _Label_4207		
	load	[r14+-256],r1
	load	[r14+-80],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_4207
_Label_4205:
	mov	3194,r13		! source line 3194
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	3195,r13		! source line 3195
	mov	"\0\0AS",r10
	mov	3195,r13		! source line 3195
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
	mov	3198,r13		! source line 3198
	mov	"\0\0IF",r10
	mov	3198,r13		! source line 3198
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_4213) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_4212  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_4212 then goto _Label_4211 else goto _Label_4210
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_4210
	jmp	_Label_4211
_Label_4210:
! THEN...
	mov	3199,r13		! source line 3199
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4214 = _StringConst_183
	set	_StringConst_183,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_4214  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	3199,r13		! source line 3199
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3200,r13		! source line 3200
	mov	"\0\0SE",r10
!   _temp_4215 = &_P_Kernel_frameManager
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
	mov	3201,r13		! source line 3201
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4211:
! SEND STATEMENT...
	mov	3203,r13		! source line 3203
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
	mov	3204,r13		! source line 3204
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_4206:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_4204
! END FOR
_Label_4207:
! IF STATEMENT...
	mov	3208,r13		! source line 3208
	mov	"\0\0IF",r10
	mov	3208,r13		! source line 3208
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_4219) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_4218  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
!   if _temp_4218 == 707406378 then goto _Label_4217		(int)
	load	[r14+-64],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_4217
!	jmp	_Label_4216
_Label_4216:
! THEN...
	mov	3209,r13		! source line 3209
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4220 = _StringConst_184
	set	_StringConst_184,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_4220  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	3209,r13		! source line 3209
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3210,r13		! source line 3210
	mov	"\0\0SE",r10
!   _temp_4221 = &_P_Kernel_frameManager
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
_Label_4217:
! FOR STATEMENT...
	mov	3215,r13		! source line 3215
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_4226 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_4227 = dataSizeInPages		(4 bytes)
	load	[r14+-264],r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_4226  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-256]
_Label_4222:
!   Perform the FOR-LOOP termination test
!   if i > _temp_4227 then goto _Label_4225		
	load	[r14+-256],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_4225
_Label_4223:
	mov	3215,r13		! source line 3215
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	3216,r13		! source line 3216
	mov	"\0\0AS",r10
	mov	3216,r13		! source line 3216
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
	mov	3219,r13		! source line 3219
	mov	"\0\0IF",r10
	mov	3219,r13		! source line 3219
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_4231) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_4230  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_4230 then goto _Label_4229 else goto _Label_4228
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_4228
	jmp	_Label_4229
_Label_4228:
! THEN...
	mov	3220,r13		! source line 3220
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4232 = _StringConst_185
	set	_StringConst_185,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_4232  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	3220,r13		! source line 3220
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3221,r13		! source line 3221
	mov	"\0\0SE",r10
!   _temp_4233 = &_P_Kernel_frameManager
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
	mov	3222,r13		! source line 3222
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4229:
! ASSIGNMENT STATEMENT...
	mov	3224,r13		! source line 3224
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_4224:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_4222
! END FOR
_Label_4225:
! IF STATEMENT...
	mov	3228,r13		! source line 3228
	mov	"\0\0IF",r10
	mov	3228,r13		! source line 3228
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_4237) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_4236  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   if _temp_4236 == 707406378 then goto _Label_4235		(int)
	load	[r14+-28],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_4235
!	jmp	_Label_4234
_Label_4234:
! THEN...
	mov	3229,r13		! source line 3229
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4238 = _StringConst_186
	set	_StringConst_186,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_4238  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	3229,r13		! source line 3229
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3230,r13		! source line 3230
	mov	"\0\0SE",r10
!   _temp_4239 = &_P_Kernel_frameManager
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
	mov	3231,r13		! source line 3231
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4235:
! ASSIGNMENT STATEMENT...
	mov	3235,r13		! source line 3235
	mov	"\0\0AS",r10
	mov	3235,r13		! source line 3235
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
	mov	3239,r13		! source line 3239
	mov	"\0\0CE",r10
	call	MemoryZero
! RETURN STATEMENT...
	mov	3242,r13		! source line 3242
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
	.word	_Label_4240
	.word	8		! total size of parameters
	.word	272		! frame size = 272
	.word	_Label_4241
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_4242
	.word	12
	.word	4
	.word	_Label_4243
	.word	-16
	.word	4
	.word	_Label_4244
	.word	-20
	.word	4
	.word	_Label_4245
	.word	-24
	.word	4
	.word	_Label_4246
	.word	-28
	.word	4
	.word	_Label_4247
	.word	-32
	.word	4
	.word	_Label_4248
	.word	-36
	.word	4
	.word	_Label_4249
	.word	-40
	.word	4
	.word	_Label_4250
	.word	-9
	.word	1
	.word	_Label_4251
	.word	-44
	.word	4
	.word	_Label_4252
	.word	-48
	.word	4
	.word	_Label_4253
	.word	-52
	.word	4
	.word	_Label_4254
	.word	-56
	.word	4
	.word	_Label_4255
	.word	-60
	.word	4
	.word	_Label_4256
	.word	-64
	.word	4
	.word	_Label_4257
	.word	-68
	.word	4
	.word	_Label_4258
	.word	-72
	.word	4
	.word	_Label_4259
	.word	-76
	.word	4
	.word	_Label_4260
	.word	-10
	.word	1
	.word	_Label_4261
	.word	-80
	.word	4
	.word	_Label_4262
	.word	-84
	.word	4
	.word	_Label_4263
	.word	-88
	.word	4
	.word	_Label_4264
	.word	-92
	.word	4
	.word	_Label_4265
	.word	-96
	.word	4
	.word	_Label_4266
	.word	-100
	.word	4
	.word	_Label_4267
	.word	-104
	.word	4
	.word	_Label_4268
	.word	-108
	.word	4
	.word	_Label_4269
	.word	-112
	.word	4
	.word	_Label_4270
	.word	-116
	.word	4
	.word	_Label_4271
	.word	-120
	.word	4
	.word	_Label_4272
	.word	-124
	.word	4
	.word	_Label_4273
	.word	-128
	.word	4
	.word	_Label_4274
	.word	-132
	.word	4
	.word	_Label_4275
	.word	-136
	.word	4
	.word	_Label_4276
	.word	-140
	.word	4
	.word	_Label_4277
	.word	-144
	.word	4
	.word	_Label_4278
	.word	-148
	.word	4
	.word	_Label_4279
	.word	-152
	.word	4
	.word	_Label_4280
	.word	-156
	.word	4
	.word	_Label_4281
	.word	-160
	.word	4
	.word	_Label_4282
	.word	-164
	.word	4
	.word	_Label_4283
	.word	-168
	.word	4
	.word	_Label_4284
	.word	-172
	.word	4
	.word	_Label_4285
	.word	-176
	.word	4
	.word	_Label_4286
	.word	-180
	.word	4
	.word	_Label_4287
	.word	-184
	.word	4
	.word	_Label_4288
	.word	-188
	.word	4
	.word	_Label_4289
	.word	-192
	.word	4
	.word	_Label_4290
	.word	-196
	.word	4
	.word	_Label_4291
	.word	-200
	.word	4
	.word	_Label_4292
	.word	-204
	.word	4
	.word	_Label_4293
	.word	-208
	.word	4
	.word	_Label_4294
	.word	-212
	.word	4
	.word	_Label_4295
	.word	-216
	.word	4
	.word	_Label_4296
	.word	-220
	.word	4
	.word	_Label_4297
	.word	-224
	.word	4
	.word	_Label_4298
	.word	-228
	.word	4
	.word	_Label_4299
	.word	-232
	.word	4
	.word	_Label_4300
	.word	-236
	.word	4
	.word	_Label_4301
	.word	-240
	.word	4
	.word	_Label_4302
	.word	-244
	.word	4
	.word	_Label_4303
	.word	-248
	.word	4
	.word	_Label_4304
	.word	-252
	.word	4
	.word	_Label_4305
	.word	-256
	.word	4
	.word	_Label_4306
	.word	-260
	.word	4
	.word	_Label_4307
	.word	-264
	.word	4
	.word	_Label_4308
	.word	-268
	.word	4
	.word	0
_Label_4240:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"LoadExecutable\0"
	.align
_Label_4241:
	.ascii	"Pself\0"
	.align
_Label_4242:
	.byte	'P'
	.ascii	"addrSpace\0"
	.align
_Label_4243:
	.byte	'?'
	.ascii	"_temp_4239\0"
	.align
_Label_4244:
	.byte	'?'
	.ascii	"_temp_4238\0"
	.align
_Label_4245:
	.byte	'?'
	.ascii	"_temp_4237\0"
	.align
_Label_4246:
	.byte	'?'
	.ascii	"_temp_4236\0"
	.align
_Label_4247:
	.byte	'?'
	.ascii	"_temp_4233\0"
	.align
_Label_4248:
	.byte	'?'
	.ascii	"_temp_4232\0"
	.align
_Label_4249:
	.byte	'?'
	.ascii	"_temp_4231\0"
	.align
_Label_4250:
	.byte	'C'
	.ascii	"_temp_4230\0"
	.align
_Label_4251:
	.byte	'?'
	.ascii	"_temp_4227\0"
	.align
_Label_4252:
	.byte	'?'
	.ascii	"_temp_4226\0"
	.align
_Label_4253:
	.byte	'?'
	.ascii	"_temp_4221\0"
	.align
_Label_4254:
	.byte	'?'
	.ascii	"_temp_4220\0"
	.align
_Label_4255:
	.byte	'?'
	.ascii	"_temp_4219\0"
	.align
_Label_4256:
	.byte	'?'
	.ascii	"_temp_4218\0"
	.align
_Label_4257:
	.byte	'?'
	.ascii	"_temp_4215\0"
	.align
_Label_4258:
	.byte	'?'
	.ascii	"_temp_4214\0"
	.align
_Label_4259:
	.byte	'?'
	.ascii	"_temp_4213\0"
	.align
_Label_4260:
	.byte	'C'
	.ascii	"_temp_4212\0"
	.align
_Label_4261:
	.byte	'?'
	.ascii	"_temp_4209\0"
	.align
_Label_4262:
	.byte	'?'
	.ascii	"_temp_4208\0"
	.align
_Label_4263:
	.byte	'?'
	.ascii	"_temp_4203\0"
	.align
_Label_4264:
	.byte	'?'
	.ascii	"_temp_4202\0"
	.align
_Label_4265:
	.byte	'?'
	.ascii	"_temp_4201\0"
	.align
_Label_4266:
	.byte	'?'
	.ascii	"_temp_4200\0"
	.align
_Label_4267:
	.byte	'?'
	.ascii	"_temp_4197\0"
	.align
_Label_4268:
	.byte	'?'
	.ascii	"_temp_4196\0"
	.align
_Label_4269:
	.byte	'?'
	.ascii	"_temp_4195\0"
	.align
_Label_4270:
	.byte	'?'
	.ascii	"_temp_4194\0"
	.align
_Label_4271:
	.byte	'?'
	.ascii	"_temp_4191\0"
	.align
_Label_4272:
	.byte	'?'
	.ascii	"_temp_4190\0"
	.align
_Label_4273:
	.byte	'?'
	.ascii	"_temp_4189\0"
	.align
_Label_4274:
	.byte	'?'
	.ascii	"_temp_4188\0"
	.align
_Label_4275:
	.byte	'?'
	.ascii	"_temp_4187\0"
	.align
_Label_4276:
	.byte	'?'
	.ascii	"_temp_4184\0"
	.align
_Label_4277:
	.byte	'?'
	.ascii	"_temp_4183\0"
	.align
_Label_4278:
	.byte	'?'
	.ascii	"_temp_4180\0"
	.align
_Label_4279:
	.byte	'?'
	.ascii	"_temp_4179\0"
	.align
_Label_4280:
	.byte	'?'
	.ascii	"_temp_4176\0"
	.align
_Label_4281:
	.byte	'?'
	.ascii	"_temp_4175\0"
	.align
_Label_4282:
	.byte	'?'
	.ascii	"_temp_4172\0"
	.align
_Label_4283:
	.byte	'?'
	.ascii	"_temp_4169\0"
	.align
_Label_4284:
	.byte	'?'
	.ascii	"_temp_4168\0"
	.align
_Label_4285:
	.byte	'?'
	.ascii	"_temp_4165\0"
	.align
_Label_4286:
	.byte	'?'
	.ascii	"_temp_4164\0"
	.align
_Label_4287:
	.byte	'?'
	.ascii	"_temp_4163\0"
	.align
_Label_4288:
	.byte	'?'
	.ascii	"_temp_4162\0"
	.align
_Label_4289:
	.byte	'?'
	.ascii	"_temp_4161\0"
	.align
_Label_4290:
	.byte	'?'
	.ascii	"_temp_4160\0"
	.align
_Label_4291:
	.byte	'?'
	.ascii	"_temp_4159\0"
	.align
_Label_4292:
	.byte	'?'
	.ascii	"_temp_4158\0"
	.align
_Label_4293:
	.byte	'?'
	.ascii	"_temp_4157\0"
	.align
_Label_4294:
	.byte	'?'
	.ascii	"_temp_4154\0"
	.align
_Label_4295:
	.byte	'?'
	.ascii	"_temp_4153\0"
	.align
_Label_4296:
	.byte	'?'
	.ascii	"_temp_4152\0"
	.align
_Label_4297:
	.byte	'I'
	.ascii	"nextVirtPage\0"
	.align
_Label_4298:
	.byte	'I'
	.ascii	"addr\0"
	.align
_Label_4299:
	.byte	'I'
	.ascii	"textSize\0"
	.align
_Label_4300:
	.byte	'I'
	.ascii	"dataSize\0"
	.align
_Label_4301:
	.byte	'I'
	.ascii	"bssSize\0"
	.align
_Label_4302:
	.byte	'I'
	.ascii	"textStart\0"
	.align
_Label_4303:
	.byte	'I'
	.ascii	"dataStart\0"
	.align
_Label_4304:
	.byte	'I'
	.ascii	"bssStart\0"
	.align
_Label_4305:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_4306:
	.byte	'I'
	.ascii	"textSizeInPages\0"
	.align
_Label_4307:
	.byte	'I'
	.ascii	"dataSizeInPages\0"
	.align
_Label_4308:
	.byte	'I'
	.ascii	"bssSizeInPages\0"
	.align
