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
_Label_4357:
	push	r0
	sub	r1,1,r1
	bne	_Label_4357
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
_Label_4358:
	push	r0
	sub	r1,1,r1
	bne	_Label_4358
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
_Label_4359:
	push	r0
	sub	r1,1,r1
	bne	_Label_4359
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
_Label_4360:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4360
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
_Label_4361:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4361
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
_Label_4362:
	push	r0
	sub	r1,1,r1
	bne	_Label_4362
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
_Label_4363:
	push	r0
	sub	r1,1,r1
	bne	_Label_4363
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
_Label_4364:
	push	r0
	sub	r1,1,r1
	bne	_Label_4364
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
_Label_4365:
	push	r0
	sub	r1,1,r1
	bne	_Label_4365
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
_Label_4366:
	push	r0
	sub	r1,1,r1
	bne	_Label_4366
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
_Label_4367:
	push	r0
	sub	r1,1,r1
	bne	_Label_4367
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
_Label_4368:
	push	r0
	sub	r1,1,r1
	bne	_Label_4368
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
_Label_4369:
	push	r0
	sub	r1,1,r1
	bne	_Label_4369
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
_Label_4370:
	push	r0
	sub	r1,1,r1
	bne	_Label_4370
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
_Label_4371:
	push	r0
	sub	r1,1,r1
	bne	_Label_4371
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
_Label_4372:
	push	r0
	sub	r1,1,r1
	bne	_Label_4372
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
_Label_4373:
	push	r0
	sub	r1,1,r1
	bne	_Label_4373
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
_Label_4374:
	push	r0
	sub	r1,1,r1
	bne	_Label_4374
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
_Label_4375:
	push	r0
	sub	r1,1,r1
	bne	_Label_4375
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
_Label_4376:
	push	r0
	sub	r1,1,r1
	bne	_Label_4376
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
_Label_4377:
	push	r0
	sub	r1,1,r1
	bne	_Label_4377
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
_Label_4378:
	push	r0
	sub	r1,1,r1
	bne	_Label_4378
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
_Label_4379:
	push	r0
	sub	r1,1,r1
	bne	_Label_4379
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
_Label_4380:
	push	r0
	sub	r1,1,r1
	bne	_Label_4380
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
_Label_4381:
	push	r0
	sub	r1,1,r1
	bne	_Label_4381
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
_Label_4382:
	push	r0
	sub	r1,1,r1
	bne	_Label_4382
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
_Label_4383:
	push	r0
	sub	r1,1,r1
	bne	_Label_4383
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
	be	_Label_4384
	set	0x1ffff,r3
	cmp	r2,r3
	bne	_Label_569
_Label_4384:
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
_Label_4385:
	push	r0
	sub	r1,1,r1
	bne	_Label_4385
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
_Label_4386:
	push	r0
	sub	r1,1,r1
	bne	_Label_4386
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
_Label_4387:
	push	r0
	sub	r1,1,r1
	bne	_Label_4387
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
_Label_4388:
	push	r0
	sub	r1,1,r1
	bne	_Label_4388
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
_Label_4389:
	push	r0
	sub	r1,1,r1
	bne	_Label_4389
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
_Label_4390:
	push	r0
	sub	r1,1,r1
	bne	_Label_4390
	mov	1900,r13		! source line 1900
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! newAddrSpace
!   NEW CLASS Constructor...
!   ZeroMemory: newAddrSpace = zeros  (sizeInBytes=92)
	add	r14,-204,r4
	mov	23,r3
_Label_4391:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4391
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
_Label_4392:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4392
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
_Label_4393:
	push	r0
	sub	r1,1,r1
	bne	_Label_4393
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
_Label_4394:
	push	r0
	sub	r1,1,r1
	bne	_Label_4394
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
_Label_4395:
	push	r0
	sub	r1,1,r1
	bne	_Label_4395
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
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-400],r1
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
	mov	122,r1
_Label_4396:
	push	r0
	sub	r1,1,r1
	bne	_Label_4396
	mov	2121,r13		! source line 2121
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2138,r13		! source line 2138
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
	store	r1,[r14+-424]
!   Data Move: _temp_1320 = *_temp_1321  (sizeInBytes=4)
	load	[r14+-424],r1
	load	[r1],r1
	store	r1,[r14+-428]
!   if intIsZero (_temp_1320) then goto _runtimeErrorNullPointer
	load	[r14+-428],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1322 = _temp_1320 + 124
	load	[r14+-428],r1
	add	r1,124,r1
	store	r1,[r14+-420]
!   Move address of _temp_1322 [fileDesc ] into _temp_1323
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
!   Data Move: _temp_1319 = *_temp_1323  (sizeInBytes=4)
	load	[r14+-416],r1
	load	[r1],r1
	store	r1,[r14+-432]
!   if intIsZero (_temp_1319) then goto _Label_1314
	load	[r14+-432],r1
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
	mov	2139,r13		! source line 2139
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2139,r13		! source line 2139
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,492,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1315:
! IF STATEMENT...
	mov	2142,r13		! source line 2142
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
	store	r1,[r14+-400]
!   Data Move: _temp_1328 = *_temp_1329  (sizeInBytes=4)
	load	[r14+-400],r1
	load	[r1],r1
	store	r1,[r14+-404]
!   if intIsZero (_temp_1328) then goto _runtimeErrorNullPointer
	load	[r14+-404],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1330 = _temp_1328 + 124
	load	[r14+-404],r1
	add	r1,124,r1
	store	r1,[r14+-396]
!   Move address of _temp_1330 [fileDesc ] into _temp_1331
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
!   Data Move: _temp_1327 = *_temp_1331  (sizeInBytes=4)
	load	[r14+-392],r1
	load	[r1],r1
	store	r1,[r14+-408]
!   if intIsZero (_temp_1327) then goto _runtimeErrorNullPointer
	load	[r14+-408],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1332 = _temp_1327 + 12
	load	[r14+-408],r1
	add	r1,12,r1
	store	r1,[r14+-388]
!   Data Move: _temp_1326 = *_temp_1332  (sizeInBytes=4)
	load	[r14+-388],r1
	load	[r1],r1
	store	r1,[r14+-412]
!   if _temp_1326 != 2 then goto _Label_1325		(int)
	load	[r14+-412],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1325
!	jmp	_Label_1324
_Label_1324:
! THEN...
	mov	2144,r13		! source line 2144
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2144,r13		! source line 2144
	mov	"\0\0AS",r10
!   tempBuffer = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-476]
! FOR STATEMENT...
	mov	2145,r13		! source line 2145
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1337 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-384]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1338 = sizeInBytes - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-380]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1337  (sizeInBytes=4)
	load	[r14+-384],r1
	store	r1,[r14+-472]
_Label_1333:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1338 then goto _Label_1336		
	load	[r14+-472],r1
	load	[r14+-380],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1336
_Label_1334:
	mov	2145,r13		! source line 2145
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2146,r13		! source line 2146
	mov	"\0\0AS",r10
!   _temp_1339 = tempBuffer		(4 bytes)
	load	[r14+-476],r1
	store	r1,[r14+-376]
!   virtPage = _temp_1339 div 8192		(int)
	load	[r14+-376],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-440]
! ASSIGNMENT STATEMENT...
	mov	2147,r13		! source line 2147
	mov	"\0\0AS",r10
!   virtAddr = tempBuffer		(4 bytes)
	load	[r14+-476],r1
	store	r1,[r14+-436]
! IF STATEMENT...
	mov	2148,r13		! source line 2148
	mov	"\0\0IF",r10
!   if virtPage >= 0 then goto _Label_1344		(int)
	load	[r14+-440],r1
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
	store	r1,[r14+-360]
!   Data Move: _temp_1347 = *_temp_1348  (sizeInBytes=4)
	load	[r14+-360],r1
	load	[r1],r1
	store	r1,[r14+-364]
!   if intIsZero (_temp_1347) then goto _runtimeErrorNullPointer
	load	[r14+-364],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1349 = _temp_1347 + 32
	load	[r14+-364],r1
	add	r1,32,r1
	store	r1,[r14+-356]
!   _temp_1350 = _temp_1349 + 4
	load	[r14+-356],r1
	add	r1,4,r1
	store	r1,[r14+-352]
!   Data Move: _temp_1346 = *_temp_1350  (sizeInBytes=4)
	load	[r14+-352],r1
	load	[r1],r1
	store	r1,[r14+-368]
!   _temp_1345 = _temp_1346 - 1		(int)
	load	[r14+-368],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-372]
!   if virtPage <= _temp_1345 then goto _Label_1343		(int)
	load	[r14+-440],r1
	load	[r14+-372],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1343
	jmp	_Label_1340
_Label_1343:
	mov	2148,r13		! source line 2148
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
	store	r1,[r14+-344]
!   Data Move: _temp_1352 = *_temp_1353  (sizeInBytes=4)
	load	[r14+-344],r1
	load	[r1],r1
	store	r1,[r14+-348]
!   if intIsZero (_temp_1352) then goto _runtimeErrorNullPointer
	load	[r14+-348],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1354 = _temp_1352 + 32
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
!   Retrieve Result: targetName=_temp_1351  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-25]
!   _temp_1355 = _temp_1351 XOR 0		(bool)
	loadb	[r14+-25],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-24]
!   if _temp_1355 then goto _Label_1342 else goto _Label_1340
	loadb	[r14+-24],r1
	cmp	r1,0
	be	_Label_1340
	jmp	_Label_1342
_Label_1342:
	mov	2148,r13		! source line 2148
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
	store	r1,[r14+-332]
!   Data Move: _temp_1357 = *_temp_1358  (sizeInBytes=4)
	load	[r14+-332],r1
	load	[r1],r1
	store	r1,[r14+-336]
!   if intIsZero (_temp_1357) then goto _runtimeErrorNullPointer
	load	[r14+-336],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1359 = _temp_1357 + 32
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
!   Retrieve Result: targetName=_temp_1356  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-23]
!   _temp_1360 = _temp_1356 XOR 0		(bool)
	loadb	[r14+-23],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-22]
!   if _temp_1360 then goto _Label_1341 else goto _Label_1340
	loadb	[r14+-22],r1
	cmp	r1,0
	be	_Label_1340
	jmp	_Label_1341
_Label_1340:
! THEN...
	mov	2149,r13		! source line 2149
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2149,r13		! source line 2149
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,492,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1341:
! ASSIGNMENT STATEMENT...
	mov	2151,r13		! source line 2151
	mov	"\0\0AS",r10
!   tempBuffer = tempBuffer + 1		(int)
	load	[r14+-476],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-476]
!   Increment the FOR-LOOP index variable and jump back
_Label_1335:
!   i = i + 1
	load	[r14+-472],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-472]
	jmp	_Label_1333
! END FOR
_Label_1336:
! ASSIGNMENT STATEMENT...
	mov	2153,r13		! source line 2153
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-448]
! FOR STATEMENT...
	mov	2154,r13		! source line 2154
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1365 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-324]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1366 = sizeInBytes - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-320]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1365  (sizeInBytes=4)
	load	[r14+-324],r1
	store	r1,[r14+-472]
_Label_1361:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1366 then goto _Label_1364		
	load	[r14+-472],r1
	load	[r14+-320],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1364
_Label_1362:
	mov	2154,r13		! source line 2154
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2155,r13		! source line 2155
	mov	"\0\0AS",r10
!   _temp_1367 = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-316]
!   virtPage = _temp_1367 div 8192		(int)
	load	[r14+-316],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-440]
! ASSIGNMENT STATEMENT...
	mov	2156,r13		! source line 2156
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-436]
! IF STATEMENT...
	mov	2157,r13		! source line 2157
	mov	"\0\0IF",r10
!   if virtPage >= 0 then goto _Label_1372		(int)
	load	[r14+-440],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1372
	jmp	_Label_1368
_Label_1372:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1376 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-300]
!   Data Move: _temp_1375 = *_temp_1376  (sizeInBytes=4)
	load	[r14+-300],r1
	load	[r1],r1
	store	r1,[r14+-304]
!   if intIsZero (_temp_1375) then goto _runtimeErrorNullPointer
	load	[r14+-304],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1377 = _temp_1375 + 32
	load	[r14+-304],r1
	add	r1,32,r1
	store	r1,[r14+-296]
!   _temp_1378 = _temp_1377 + 4
	load	[r14+-296],r1
	add	r1,4,r1
	store	r1,[r14+-292]
!   Data Move: _temp_1374 = *_temp_1378  (sizeInBytes=4)
	load	[r14+-292],r1
	load	[r1],r1
	store	r1,[r14+-308]
!   _temp_1373 = _temp_1374 - 1		(int)
	load	[r14+-308],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-312]
!   if virtPage <= _temp_1373 then goto _Label_1371		(int)
	load	[r14+-440],r1
	load	[r14+-312],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1371
	jmp	_Label_1368
_Label_1371:
	mov	2157,r13		! source line 2157
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1381 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-284]
!   Data Move: _temp_1380 = *_temp_1381  (sizeInBytes=4)
	load	[r14+-284],r1
	load	[r1],r1
	store	r1,[r14+-288]
!   if intIsZero (_temp_1380) then goto _runtimeErrorNullPointer
	load	[r14+-288],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1382 = _temp_1380 + 32
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
!   Retrieve Result: targetName=_temp_1379  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-21]
!   _temp_1383 = _temp_1379 XOR 0		(bool)
	loadb	[r14+-21],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-20]
!   if _temp_1383 then goto _Label_1370 else goto _Label_1368
	loadb	[r14+-20],r1
	cmp	r1,0
	be	_Label_1368
	jmp	_Label_1370
_Label_1370:
	mov	2157,r13		! source line 2157
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1386 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-272]
!   Data Move: _temp_1385 = *_temp_1386  (sizeInBytes=4)
	load	[r14+-272],r1
	load	[r1],r1
	store	r1,[r14+-276]
!   if intIsZero (_temp_1385) then goto _runtimeErrorNullPointer
	load	[r14+-276],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1387 = _temp_1385 + 32
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
!   Retrieve Result: targetName=_temp_1384  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-19]
!   _temp_1388 = _temp_1384 XOR 0		(bool)
	loadb	[r14+-19],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-18]
!   if _temp_1388 then goto _Label_1369 else goto _Label_1368
	loadb	[r14+-18],r1
	cmp	r1,0
	be	_Label_1368
	jmp	_Label_1369
_Label_1368:
! THEN...
	mov	2158,r13		! source line 2158
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2158,r13		! source line 2158
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,492,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1369:
! ASSIGNMENT STATEMENT...
	mov	2160,r13		! source line 2160
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
	mov	2161,r13		! source line 2161
	mov	"\0\0AS",r10
	mov	2161,r13		! source line 2161
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1391 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-256]
!   Data Move: _temp_1390 = *_temp_1391  (sizeInBytes=4)
	load	[r14+-256],r1
	load	[r1],r1
	store	r1,[r14+-260]
!   if intIsZero (_temp_1390) then goto _runtimeErrorNullPointer
	load	[r14+-260],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1392 = _temp_1390 + 32
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
!   Retrieve Result: targetName=_temp_1389  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-264]
!   destAddr = _temp_1389 + offset		(int)
	load	[r14+-264],r1
	load	[r14+-444],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-464]
! ASSIGNMENT STATEMENT...
	mov	2162,r13		! source line 2162
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
	mov	2163,r13		! source line 2163
	mov	"\0\0IF",r10
!   _temp_1395 = c XOR 10		(bool)
	loadb	[r14+-27],r1
	mov	10,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-17]
!   if _temp_1395 then goto _Label_1394 else goto _Label_1393
	loadb	[r14+-17],r1
	cmp	r1,0
	be	_Label_1393
	jmp	_Label_1394
_Label_1393:
! THEN...
	mov	2164,r13		! source line 2164
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2164,r13		! source line 2164
	mov	"\0\0SE",r10
!   _temp_1396 = &_P_Kernel_serialDriver
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
_Label_1394:
! SEND STATEMENT...
	mov	2166,r13		! source line 2166
	mov	"\0\0SE",r10
!   _temp_1397 = &_P_Kernel_serialDriver
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
	mov	2167,r13		! source line 2167
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-448],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-448]
! ASSIGNMENT STATEMENT...
	mov	2168,r13		! source line 2168
	mov	"\0\0AS",r10
!   buffer = buffer + 1		(int)
	load	[r14+12],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+12]
!   Increment the FOR-LOOP index variable and jump back
_Label_1363:
!   i = i + 1
	load	[r14+-472],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-472]
	jmp	_Label_1361
! END FOR
_Label_1364:
! RETURN STATEMENT...
	mov	2170,r13		! source line 2170
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-448],r1
	store	r1,[r14+8]
	add	r15,492,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_1398
_Label_1325:
! ELSE...
	mov	2173,r13		! source line 2173
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	2173,r13		! source line 2173
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1400 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-236]
!   Data Move: _temp_1399 = *_temp_1400  (sizeInBytes=4)
	load	[r14+-236],r1
	load	[r1],r1
	store	r1,[r14+-240]
!   if intIsZero (_temp_1399) then goto _runtimeErrorNullPointer
	load	[r14+-240],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1401 = _temp_1399 + 124
	load	[r14+-240],r1
	add	r1,124,r1
	store	r1,[r14+-232]
!   Move address of _temp_1401 [fileDesc ] into _temp_1402
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
!   Data Move: openFile = *_temp_1402  (sizeInBytes=4)
	load	[r14+-228],r1
	load	[r1],r1
	store	r1,[r14+-468]
! ASSIGNMENT STATEMENT...
	mov	2174,r13		! source line 2174
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-436]
! ASSIGNMENT STATEMENT...
	mov	2175,r13		! source line 2175
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
	mov	2176,r13		! source line 2176
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
	mov	2177,r13		! source line 2177
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-448]
! ASSIGNMENT STATEMENT...
	mov	2178,r13		! source line 2178
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-468],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1403 = openFile + 16
	load	[r14+-468],r1
	add	r1,16,r1
	store	r1,[r14+-224]
!   Data Move: nextPosInFile = *_temp_1403  (sizeInBytes=4)
	load	[r14+-224],r1
	load	[r1],r1
	store	r1,[r14+-452]
! ASSIGNMENT STATEMENT...
	mov	2179,r13		! source line 2179
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-468],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1405 = openFile + 20
	load	[r14+-468],r1
	add	r1,20,r1
	store	r1,[r14+-216]
!   Data Move: _temp_1404 = *_temp_1405  (sizeInBytes=4)
	load	[r14+-216],r1
	load	[r1],r1
	store	r1,[r14+-220]
!   if intIsZero (_temp_1404) then goto _runtimeErrorNullPointer
	load	[r14+-220],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1406 = _temp_1404 + 24
	load	[r14+-220],r1
	add	r1,24,r1
	store	r1,[r14+-212]
!   Data Move: fileSize = *_temp_1406  (sizeInBytes=4)
	load	[r14+-212],r1
	load	[r1],r1
	store	r1,[r14+-460]
! WHILE STATEMENT...
	mov	2180,r13		! source line 2180
	mov	"\0\0WH",r10
_Label_1407:
!	jmp	_Label_1408
_Label_1408:
	mov	2180,r13		! source line 2180
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2181,r13		! source line 2181
	mov	"\0\0AS",r10
!   currentChunkSize = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-444],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-456]
! IF STATEMENT...
	mov	2182,r13		! source line 2182
	mov	"\0\0IF",r10
!   _temp_1412 = nextPosInFile + currentChunkSize		(int)
	load	[r14+-452],r1
	load	[r14+-456],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-208]
!   if _temp_1412 <= fileSize then goto _Label_1411		(int)
	load	[r14+-208],r1
	load	[r14+-460],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1411
!	jmp	_Label_1410
_Label_1410:
! THEN...
	mov	2183,r13		! source line 2183
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2183,r13		! source line 2183
	mov	"\0\0AS",r10
!   currentChunkSize = fileSize - nextPosInFile		(int)
	load	[r14+-460],r1
	load	[r14+-452],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-456]
! END IF...
_Label_1411:
! IF STATEMENT...
	mov	2185,r13		! source line 2185
	mov	"\0\0IF",r10
!   _temp_1415 = copiedSoFar + currentChunkSize		(int)
	load	[r14+-448],r1
	load	[r14+-456],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-204]
!   if _temp_1415 <= sizeInBytes then goto _Label_1414		(int)
	load	[r14+-204],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1414
!	jmp	_Label_1413
_Label_1413:
! THEN...
	mov	2186,r13		! source line 2186
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2186,r13		! source line 2186
	mov	"\0\0AS",r10
!   currentChunkSize = sizeInBytes - copiedSoFar		(int)
	load	[r14+16],r1
	load	[r14+-448],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-456]
! END IF...
_Label_1414:
! IF STATEMENT...
	mov	2188,r13		! source line 2188
	mov	"\0\0IF",r10
!   if currentChunkSize > 0 then goto _Label_1417		(int)
	load	[r14+-456],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1417
!	jmp	_Label_1416
_Label_1416:
! THEN...
	mov	2189,r13		! source line 2189
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2189,r13		! source line 2189
	mov	"\0\0BR",r10
	jmp	_Label_1409
! END IF...
_Label_1417:
! IF STATEMENT...
	mov	2191,r13		! source line 2191
	mov	"\0\0IF",r10
!   if virtPage >= 0 then goto _Label_1422		(int)
	load	[r14+-440],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1422
	jmp	_Label_1418
_Label_1422:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1426 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-188]
!   Data Move: _temp_1425 = *_temp_1426  (sizeInBytes=4)
	load	[r14+-188],r1
	load	[r1],r1
	store	r1,[r14+-192]
!   if intIsZero (_temp_1425) then goto _runtimeErrorNullPointer
	load	[r14+-192],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1427 = _temp_1425 + 32
	load	[r14+-192],r1
	add	r1,32,r1
	store	r1,[r14+-184]
!   _temp_1428 = _temp_1427 + 4
	load	[r14+-184],r1
	add	r1,4,r1
	store	r1,[r14+-180]
!   Data Move: _temp_1424 = *_temp_1428  (sizeInBytes=4)
	load	[r14+-180],r1
	load	[r1],r1
	store	r1,[r14+-196]
!   _temp_1423 = _temp_1424 - 1		(int)
	load	[r14+-196],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-200]
!   if virtPage <= _temp_1423 then goto _Label_1421		(int)
	load	[r14+-440],r1
	load	[r14+-200],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1421
	jmp	_Label_1418
_Label_1421:
	mov	2191,r13		! source line 2191
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1431 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-172]
!   Data Move: _temp_1430 = *_temp_1431  (sizeInBytes=4)
	load	[r14+-172],r1
	load	[r1],r1
	store	r1,[r14+-176]
!   if intIsZero (_temp_1430) then goto _runtimeErrorNullPointer
	load	[r14+-176],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1432 = _temp_1430 + 32
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
!   Retrieve Result: targetName=_temp_1429  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-16]
!   _temp_1433 = _temp_1429 XOR 0		(bool)
	loadb	[r14+-16],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-15]
!   if _temp_1433 then goto _Label_1420 else goto _Label_1418
	loadb	[r14+-15],r1
	cmp	r1,0
	be	_Label_1418
	jmp	_Label_1420
_Label_1420:
	mov	2191,r13		! source line 2191
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1436 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-160]
!   Data Move: _temp_1435 = *_temp_1436  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-164]
!   if intIsZero (_temp_1435) then goto _runtimeErrorNullPointer
	load	[r14+-164],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1437 = _temp_1435 + 32
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
!   Retrieve Result: targetName=_temp_1434  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-14]
!   _temp_1438 = _temp_1434 XOR 0		(bool)
	loadb	[r14+-14],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-13]
!   if _temp_1438 then goto _Label_1419 else goto _Label_1418
	loadb	[r14+-13],r1
	cmp	r1,0
	be	_Label_1418
	jmp	_Label_1419
_Label_1418:
! THEN...
	mov	2192,r13		! source line 2192
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2192,r13		! source line 2192
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,492,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1419:
! ASSIGNMENT STATEMENT...
	mov	2194,r13		! source line 2194
	mov	"\0\0AS",r10
!   nextPosInFile = nextPosInFile + currentChunkSize		(int)
	load	[r14+-452],r1
	load	[r14+-456],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-452]
! ASSIGNMENT STATEMENT...
	mov	2195,r13		! source line 2195
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + currentChunkSize		(int)
	load	[r14+-448],r1
	load	[r14+-456],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-448]
! ASSIGNMENT STATEMENT...
	mov	2196,r13		! source line 2196
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-440],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-440]
! ASSIGNMENT STATEMENT...
	mov	2197,r13		! source line 2197
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-444]
! IF STATEMENT...
	mov	2198,r13		! source line 2198
	mov	"\0\0IF",r10
!   if copiedSoFar != sizeInBytes then goto _Label_1440		(int)
	load	[r14+-448],r1
	load	[r14+16],r2
	cmp	r1,r2
	bne	_Label_1440
!	jmp	_Label_1439
_Label_1439:
! THEN...
	mov	2199,r13		! source line 2199
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2199,r13		! source line 2199
	mov	"\0\0BR",r10
	jmp	_Label_1409
! END IF...
_Label_1440:
! END WHILE...
	jmp	_Label_1407
_Label_1409:
! ASSIGNMENT STATEMENT...
	mov	2204,r13		! source line 2204
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1442 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-148]
!   Data Move: _temp_1441 = *_temp_1442  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r1],r1
	store	r1,[r14+-152]
!   if intIsZero (_temp_1441) then goto _runtimeErrorNullPointer
	load	[r14+-152],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1443 = _temp_1441 + 124
	load	[r14+-152],r1
	add	r1,124,r1
	store	r1,[r14+-144]
!   Move address of _temp_1443 [fileDesc ] into _temp_1444
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
!   Data Move: openFile = *_temp_1444  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-468]
! ASSIGNMENT STATEMENT...
	mov	2205,r13		! source line 2205
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-436]
! ASSIGNMENT STATEMENT...
	mov	2206,r13		! source line 2206
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
	mov	2207,r13		! source line 2207
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
	mov	2208,r13		! source line 2208
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-448]
! ASSIGNMENT STATEMENT...
	mov	2209,r13		! source line 2209
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-468],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1445 = openFile + 16
	load	[r14+-468],r1
	add	r1,16,r1
	store	r1,[r14+-136]
!   Data Move: nextPosInFile = *_temp_1445  (sizeInBytes=4)
	load	[r14+-136],r1
	load	[r1],r1
	store	r1,[r14+-452]
! ASSIGNMENT STATEMENT...
	mov	2210,r13		! source line 2210
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-468],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1447 = openFile + 20
	load	[r14+-468],r1
	add	r1,20,r1
	store	r1,[r14+-128]
!   Data Move: _temp_1446 = *_temp_1447  (sizeInBytes=4)
	load	[r14+-128],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   if intIsZero (_temp_1446) then goto _runtimeErrorNullPointer
	load	[r14+-132],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1448 = _temp_1446 + 24
	load	[r14+-132],r1
	add	r1,24,r1
	store	r1,[r14+-124]
!   Data Move: fileSize = *_temp_1448  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-460]
! WHILE STATEMENT...
	mov	2212,r13		! source line 2212
	mov	"\0\0WH",r10
_Label_1449:
!	jmp	_Label_1450
_Label_1450:
	mov	2212,r13		! source line 2212
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2213,r13		! source line 2213
	mov	"\0\0AS",r10
!   currentChunkSize = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-444],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-456]
! IF STATEMENT...
	mov	2214,r13		! source line 2214
	mov	"\0\0IF",r10
!   _temp_1454 = nextPosInFile + currentChunkSize		(int)
	load	[r14+-452],r1
	load	[r14+-456],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
!   if _temp_1454 <= fileSize then goto _Label_1453		(int)
	load	[r14+-120],r1
	load	[r14+-460],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1453
!	jmp	_Label_1452
_Label_1452:
! THEN...
	mov	2215,r13		! source line 2215
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2215,r13		! source line 2215
	mov	"\0\0AS",r10
!   currentChunkSize = fileSize - nextPosInFile		(int)
	load	[r14+-460],r1
	load	[r14+-452],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-456]
! END IF...
_Label_1453:
! IF STATEMENT...
	mov	2217,r13		! source line 2217
	mov	"\0\0IF",r10
!   _temp_1457 = copiedSoFar + currentChunkSize		(int)
	load	[r14+-448],r1
	load	[r14+-456],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
!   if _temp_1457 <= sizeInBytes then goto _Label_1456		(int)
	load	[r14+-116],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1456
!	jmp	_Label_1455
_Label_1455:
! THEN...
	mov	2218,r13		! source line 2218
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2218,r13		! source line 2218
	mov	"\0\0AS",r10
!   currentChunkSize = sizeInBytes - copiedSoFar		(int)
	load	[r14+16],r1
	load	[r14+-448],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-456]
! END IF...
_Label_1456:
! IF STATEMENT...
	mov	2220,r13		! source line 2220
	mov	"\0\0IF",r10
!   if currentChunkSize > 0 then goto _Label_1459		(int)
	load	[r14+-456],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1459
!	jmp	_Label_1458
_Label_1458:
! THEN...
	mov	2221,r13		! source line 2221
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2221,r13		! source line 2221
	mov	"\0\0BR",r10
	jmp	_Label_1451
! END IF...
_Label_1459:
! IF STATEMENT...
	mov	2223,r13		! source line 2223
	mov	"\0\0IF",r10
!   if virtPage >= 0 then goto _Label_1464		(int)
	load	[r14+-440],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1464
	jmp	_Label_1460
_Label_1464:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1468 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-100]
!   Data Move: _temp_1467 = *_temp_1468  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if intIsZero (_temp_1467) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1469 = _temp_1467 + 32
	load	[r14+-104],r1
	add	r1,32,r1
	store	r1,[r14+-96]
!   _temp_1470 = _temp_1469 + 4
	load	[r14+-96],r1
	add	r1,4,r1
	store	r1,[r14+-92]
!   Data Move: _temp_1466 = *_temp_1470  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   _temp_1465 = _temp_1466 - 1		(int)
	load	[r14+-108],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
!   if virtPage <= _temp_1465 then goto _Label_1463		(int)
	load	[r14+-440],r1
	load	[r14+-112],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1463
	jmp	_Label_1460
_Label_1463:
	mov	2223,r13		! source line 2223
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1473 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-84]
!   Data Move: _temp_1472 = *_temp_1473  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-88]
!   if intIsZero (_temp_1472) then goto _runtimeErrorNullPointer
	load	[r14+-88],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1474 = _temp_1472 + 32
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
!   Retrieve Result: targetName=_temp_1471  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-12]
!   _temp_1475 = _temp_1471 XOR 0		(bool)
	loadb	[r14+-12],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-11]
!   if _temp_1475 then goto _Label_1462 else goto _Label_1460
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_1460
	jmp	_Label_1462
_Label_1462:
	mov	2223,r13		! source line 2223
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
	store	r1,[r14+-72]
!   Data Move: _temp_1477 = *_temp_1478  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_1477) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1479 = _temp_1477 + 32
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
!   Retrieve Result: targetName=_temp_1476  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   _temp_1480 = _temp_1476 XOR 0		(bool)
	loadb	[r14+-10],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_1480 then goto _Label_1461 else goto _Label_1460
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1460
	jmp	_Label_1461
_Label_1460:
! THEN...
	mov	2224,r13		! source line 2224
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2224,r13		! source line 2224
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,492,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1461:
! SEND STATEMENT...
	mov	2226,r13		! source line 2226
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1482 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-60]
!   Data Move: _temp_1481 = *_temp_1482  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_1481) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1483 = _temp_1481 + 32
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
	mov	2227,r13		! source line 2227
	mov	"\0\0AS",r10
	mov	2227,r13		! source line 2227
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1486 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-44]
!   Data Move: _temp_1485 = *_temp_1486  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   if intIsZero (_temp_1485) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1487 = _temp_1485 + 32
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
!   Retrieve Result: targetName=_temp_1484  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
!   destAddr = _temp_1484 + offset		(int)
	load	[r14+-52],r1
	load	[r14+-444],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-464]
! ASSIGNMENT STATEMENT...
	mov	2228,r13		! source line 2228
	mov	"\0\0AS",r10
	mov	2228,r13		! source line 2228
	mov	"\0\0SE",r10
!   _temp_1488 = &_P_Kernel_fileManager
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
	mov	2229,r13		! source line 2229
	mov	"\0\0AS",r10
!   nextPosInFile = nextPosInFile + currentChunkSize		(int)
	load	[r14+-452],r1
	load	[r14+-456],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-452]
! ASSIGNMENT STATEMENT...
	mov	2230,r13		! source line 2230
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + currentChunkSize		(int)
	load	[r14+-448],r1
	load	[r14+-456],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-448]
! ASSIGNMENT STATEMENT...
	mov	2231,r13		! source line 2231
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-440],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-440]
! ASSIGNMENT STATEMENT...
	mov	2232,r13		! source line 2232
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-444]
! IF STATEMENT...
	mov	2233,r13		! source line 2233
	mov	"\0\0IF",r10
!   if copiedSoFar != sizeInBytes then goto _Label_1490		(int)
	load	[r14+-448],r1
	load	[r14+16],r2
	cmp	r1,r2
	bne	_Label_1490
!	jmp	_Label_1489
_Label_1489:
! THEN...
	mov	2234,r13		! source line 2234
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2234,r13		! source line 2234
	mov	"\0\0BR",r10
	jmp	_Label_1451
! END IF...
_Label_1490:
! END WHILE...
	jmp	_Label_1449
_Label_1451:
! ASSIGNMENT STATEMENT...
	mov	2238,r13		! source line 2238
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-468],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1491 = openFile + 16
	load	[r14+-468],r1
	add	r1,16,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_1491 = nextPosInFile  (sizeInBytes=4)
	load	[r14+-452],r1
	load	[r14+-32],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2239,r13		! source line 2239
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-448],r1
	store	r1,[r14+8]
	add	r15,492,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1398:
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Write:
	.word	_sourceFileName
	.word	_Label_1492
	.word	12		! total size of parameters
	.word	488		! frame size = 488
	.word	_Label_1493
	.word	8
	.word	4
	.word	_Label_1494
	.word	12
	.word	4
	.word	_Label_1495
	.word	16
	.word	4
	.word	_Label_1496
	.word	-32
	.word	4
	.word	_Label_1497
	.word	-36
	.word	4
	.word	_Label_1498
	.word	-40
	.word	4
	.word	_Label_1499
	.word	-44
	.word	4
	.word	_Label_1500
	.word	-48
	.word	4
	.word	_Label_1501
	.word	-52
	.word	4
	.word	_Label_1502
	.word	-56
	.word	4
	.word	_Label_1503
	.word	-60
	.word	4
	.word	_Label_1504
	.word	-64
	.word	4
	.word	_Label_1505
	.word	-9
	.word	1
	.word	_Label_1506
	.word	-68
	.word	4
	.word	_Label_1507
	.word	-72
	.word	4
	.word	_Label_1508
	.word	-76
	.word	4
	.word	_Label_1509
	.word	-10
	.word	1
	.word	_Label_1510
	.word	-11
	.word	1
	.word	_Label_1511
	.word	-80
	.word	4
	.word	_Label_1512
	.word	-84
	.word	4
	.word	_Label_1513
	.word	-88
	.word	4
	.word	_Label_1514
	.word	-12
	.word	1
	.word	_Label_1515
	.word	-92
	.word	4
	.word	_Label_1516
	.word	-96
	.word	4
	.word	_Label_1517
	.word	-100
	.word	4
	.word	_Label_1518
	.word	-104
	.word	4
	.word	_Label_1519
	.word	-108
	.word	4
	.word	_Label_1520
	.word	-112
	.word	4
	.word	_Label_1521
	.word	-116
	.word	4
	.word	_Label_1522
	.word	-120
	.word	4
	.word	_Label_1523
	.word	-124
	.word	4
	.word	_Label_1524
	.word	-128
	.word	4
	.word	_Label_1525
	.word	-132
	.word	4
	.word	_Label_1526
	.word	-136
	.word	4
	.word	_Label_1527
	.word	-140
	.word	4
	.word	_Label_1528
	.word	-144
	.word	4
	.word	_Label_1529
	.word	-148
	.word	4
	.word	_Label_1530
	.word	-152
	.word	4
	.word	_Label_1531
	.word	-13
	.word	1
	.word	_Label_1532
	.word	-156
	.word	4
	.word	_Label_1533
	.word	-160
	.word	4
	.word	_Label_1534
	.word	-164
	.word	4
	.word	_Label_1535
	.word	-14
	.word	1
	.word	_Label_1536
	.word	-15
	.word	1
	.word	_Label_1537
	.word	-168
	.word	4
	.word	_Label_1538
	.word	-172
	.word	4
	.word	_Label_1539
	.word	-176
	.word	4
	.word	_Label_1540
	.word	-16
	.word	1
	.word	_Label_1541
	.word	-180
	.word	4
	.word	_Label_1542
	.word	-184
	.word	4
	.word	_Label_1543
	.word	-188
	.word	4
	.word	_Label_1544
	.word	-192
	.word	4
	.word	_Label_1545
	.word	-196
	.word	4
	.word	_Label_1546
	.word	-200
	.word	4
	.word	_Label_1547
	.word	-204
	.word	4
	.word	_Label_1548
	.word	-208
	.word	4
	.word	_Label_1549
	.word	-212
	.word	4
	.word	_Label_1550
	.word	-216
	.word	4
	.word	_Label_1551
	.word	-220
	.word	4
	.word	_Label_1552
	.word	-224
	.word	4
	.word	_Label_1553
	.word	-228
	.word	4
	.word	_Label_1554
	.word	-232
	.word	4
	.word	_Label_1555
	.word	-236
	.word	4
	.word	_Label_1556
	.word	-240
	.word	4
	.word	_Label_1557
	.word	-244
	.word	4
	.word	_Label_1558
	.word	-248
	.word	4
	.word	_Label_1559
	.word	-17
	.word	1
	.word	_Label_1560
	.word	-252
	.word	4
	.word	_Label_1561
	.word	-256
	.word	4
	.word	_Label_1562
	.word	-260
	.word	4
	.word	_Label_1563
	.word	-264
	.word	4
	.word	_Label_1564
	.word	-18
	.word	1
	.word	_Label_1565
	.word	-268
	.word	4
	.word	_Label_1566
	.word	-272
	.word	4
	.word	_Label_1567
	.word	-276
	.word	4
	.word	_Label_1568
	.word	-19
	.word	1
	.word	_Label_1569
	.word	-20
	.word	1
	.word	_Label_1570
	.word	-280
	.word	4
	.word	_Label_1571
	.word	-284
	.word	4
	.word	_Label_1572
	.word	-288
	.word	4
	.word	_Label_1573
	.word	-21
	.word	1
	.word	_Label_1574
	.word	-292
	.word	4
	.word	_Label_1575
	.word	-296
	.word	4
	.word	_Label_1576
	.word	-300
	.word	4
	.word	_Label_1577
	.word	-304
	.word	4
	.word	_Label_1578
	.word	-308
	.word	4
	.word	_Label_1579
	.word	-312
	.word	4
	.word	_Label_1580
	.word	-316
	.word	4
	.word	_Label_1581
	.word	-320
	.word	4
	.word	_Label_1582
	.word	-324
	.word	4
	.word	_Label_1583
	.word	-22
	.word	1
	.word	_Label_1584
	.word	-328
	.word	4
	.word	_Label_1585
	.word	-332
	.word	4
	.word	_Label_1586
	.word	-336
	.word	4
	.word	_Label_1587
	.word	-23
	.word	1
	.word	_Label_1588
	.word	-24
	.word	1
	.word	_Label_1589
	.word	-340
	.word	4
	.word	_Label_1590
	.word	-344
	.word	4
	.word	_Label_1591
	.word	-348
	.word	4
	.word	_Label_1592
	.word	-25
	.word	1
	.word	_Label_1593
	.word	-352
	.word	4
	.word	_Label_1594
	.word	-356
	.word	4
	.word	_Label_1595
	.word	-360
	.word	4
	.word	_Label_1596
	.word	-364
	.word	4
	.word	_Label_1597
	.word	-368
	.word	4
	.word	_Label_1598
	.word	-372
	.word	4
	.word	_Label_1599
	.word	-376
	.word	4
	.word	_Label_1600
	.word	-380
	.word	4
	.word	_Label_1601
	.word	-384
	.word	4
	.word	_Label_1602
	.word	-388
	.word	4
	.word	_Label_1603
	.word	-392
	.word	4
	.word	_Label_1604
	.word	-396
	.word	4
	.word	_Label_1605
	.word	-400
	.word	4
	.word	_Label_1606
	.word	-404
	.word	4
	.word	_Label_1607
	.word	-408
	.word	4
	.word	_Label_1608
	.word	-412
	.word	4
	.word	_Label_1609
	.word	-416
	.word	4
	.word	_Label_1610
	.word	-420
	.word	4
	.word	_Label_1611
	.word	-424
	.word	4
	.word	_Label_1612
	.word	-428
	.word	4
	.word	_Label_1613
	.word	-432
	.word	4
	.word	_Label_1614
	.word	-436
	.word	4
	.word	_Label_1615
	.word	-440
	.word	4
	.word	_Label_1616
	.word	-444
	.word	4
	.word	_Label_1617
	.word	-448
	.word	4
	.word	_Label_1618
	.word	-452
	.word	4
	.word	_Label_1619
	.word	-456
	.word	4
	.word	_Label_1620
	.word	-460
	.word	4
	.word	_Label_1621
	.word	-464
	.word	4
	.word	_Label_1622
	.word	-468
	.word	4
	.word	_Label_1623
	.word	-26
	.word	1
	.word	_Label_1624
	.word	-472
	.word	4
	.word	_Label_1625
	.word	-27
	.word	1
	.word	_Label_1626
	.word	-476
	.word	4
	.word	0
_Label_1492:
	.ascii	"Handle_Sys_Write\0"
	.align
_Label_1493:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_1494:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_1495:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_1496:
	.byte	'?'
	.ascii	"_temp_1491\0"
	.align
_Label_1497:
	.byte	'?'
	.ascii	"_temp_1488\0"
	.align
_Label_1498:
	.byte	'?'
	.ascii	"_temp_1487\0"
	.align
_Label_1499:
	.byte	'?'
	.ascii	"_temp_1486\0"
	.align
_Label_1500:
	.byte	'?'
	.ascii	"_temp_1485\0"
	.align
_Label_1501:
	.byte	'?'
	.ascii	"_temp_1484\0"
	.align
_Label_1502:
	.byte	'?'
	.ascii	"_temp_1483\0"
	.align
_Label_1503:
	.byte	'?'
	.ascii	"_temp_1482\0"
	.align
_Label_1504:
	.byte	'?'
	.ascii	"_temp_1481\0"
	.align
_Label_1505:
	.byte	'C'
	.ascii	"_temp_1480\0"
	.align
_Label_1506:
	.byte	'?'
	.ascii	"_temp_1479\0"
	.align
_Label_1507:
	.byte	'?'
	.ascii	"_temp_1478\0"
	.align
_Label_1508:
	.byte	'?'
	.ascii	"_temp_1477\0"
	.align
_Label_1509:
	.byte	'C'
	.ascii	"_temp_1476\0"
	.align
_Label_1510:
	.byte	'C'
	.ascii	"_temp_1475\0"
	.align
_Label_1511:
	.byte	'?'
	.ascii	"_temp_1474\0"
	.align
_Label_1512:
	.byte	'?'
	.ascii	"_temp_1473\0"
	.align
_Label_1513:
	.byte	'?'
	.ascii	"_temp_1472\0"
	.align
_Label_1514:
	.byte	'C'
	.ascii	"_temp_1471\0"
	.align
_Label_1515:
	.byte	'?'
	.ascii	"_temp_1470\0"
	.align
_Label_1516:
	.byte	'?'
	.ascii	"_temp_1469\0"
	.align
_Label_1517:
	.byte	'?'
	.ascii	"_temp_1468\0"
	.align
_Label_1518:
	.byte	'?'
	.ascii	"_temp_1467\0"
	.align
_Label_1519:
	.byte	'?'
	.ascii	"_temp_1466\0"
	.align
_Label_1520:
	.byte	'?'
	.ascii	"_temp_1465\0"
	.align
_Label_1521:
	.byte	'?'
	.ascii	"_temp_1457\0"
	.align
_Label_1522:
	.byte	'?'
	.ascii	"_temp_1454\0"
	.align
_Label_1523:
	.byte	'?'
	.ascii	"_temp_1448\0"
	.align
_Label_1524:
	.byte	'?'
	.ascii	"_temp_1447\0"
	.align
_Label_1525:
	.byte	'?'
	.ascii	"_temp_1446\0"
	.align
_Label_1526:
	.byte	'?'
	.ascii	"_temp_1445\0"
	.align
_Label_1527:
	.byte	'?'
	.ascii	"_temp_1444\0"
	.align
_Label_1528:
	.byte	'?'
	.ascii	"_temp_1443\0"
	.align
_Label_1529:
	.byte	'?'
	.ascii	"_temp_1442\0"
	.align
_Label_1530:
	.byte	'?'
	.ascii	"_temp_1441\0"
	.align
_Label_1531:
	.byte	'C'
	.ascii	"_temp_1438\0"
	.align
_Label_1532:
	.byte	'?'
	.ascii	"_temp_1437\0"
	.align
_Label_1533:
	.byte	'?'
	.ascii	"_temp_1436\0"
	.align
_Label_1534:
	.byte	'?'
	.ascii	"_temp_1435\0"
	.align
_Label_1535:
	.byte	'C'
	.ascii	"_temp_1434\0"
	.align
_Label_1536:
	.byte	'C'
	.ascii	"_temp_1433\0"
	.align
_Label_1537:
	.byte	'?'
	.ascii	"_temp_1432\0"
	.align
_Label_1538:
	.byte	'?'
	.ascii	"_temp_1431\0"
	.align
_Label_1539:
	.byte	'?'
	.ascii	"_temp_1430\0"
	.align
_Label_1540:
	.byte	'C'
	.ascii	"_temp_1429\0"
	.align
_Label_1541:
	.byte	'?'
	.ascii	"_temp_1428\0"
	.align
_Label_1542:
	.byte	'?'
	.ascii	"_temp_1427\0"
	.align
_Label_1543:
	.byte	'?'
	.ascii	"_temp_1426\0"
	.align
_Label_1544:
	.byte	'?'
	.ascii	"_temp_1425\0"
	.align
_Label_1545:
	.byte	'?'
	.ascii	"_temp_1424\0"
	.align
_Label_1546:
	.byte	'?'
	.ascii	"_temp_1423\0"
	.align
_Label_1547:
	.byte	'?'
	.ascii	"_temp_1415\0"
	.align
_Label_1548:
	.byte	'?'
	.ascii	"_temp_1412\0"
	.align
_Label_1549:
	.byte	'?'
	.ascii	"_temp_1406\0"
	.align
_Label_1550:
	.byte	'?'
	.ascii	"_temp_1405\0"
	.align
_Label_1551:
	.byte	'?'
	.ascii	"_temp_1404\0"
	.align
_Label_1552:
	.byte	'?'
	.ascii	"_temp_1403\0"
	.align
_Label_1553:
	.byte	'?'
	.ascii	"_temp_1402\0"
	.align
_Label_1554:
	.byte	'?'
	.ascii	"_temp_1401\0"
	.align
_Label_1555:
	.byte	'?'
	.ascii	"_temp_1400\0"
	.align
_Label_1556:
	.byte	'?'
	.ascii	"_temp_1399\0"
	.align
_Label_1557:
	.byte	'?'
	.ascii	"_temp_1397\0"
	.align
_Label_1558:
	.byte	'?'
	.ascii	"_temp_1396\0"
	.align
_Label_1559:
	.byte	'C'
	.ascii	"_temp_1395\0"
	.align
_Label_1560:
	.byte	'?'
	.ascii	"_temp_1392\0"
	.align
_Label_1561:
	.byte	'?'
	.ascii	"_temp_1391\0"
	.align
_Label_1562:
	.byte	'?'
	.ascii	"_temp_1390\0"
	.align
_Label_1563:
	.byte	'?'
	.ascii	"_temp_1389\0"
	.align
_Label_1564:
	.byte	'C'
	.ascii	"_temp_1388\0"
	.align
_Label_1565:
	.byte	'?'
	.ascii	"_temp_1387\0"
	.align
_Label_1566:
	.byte	'?'
	.ascii	"_temp_1386\0"
	.align
_Label_1567:
	.byte	'?'
	.ascii	"_temp_1385\0"
	.align
_Label_1568:
	.byte	'C'
	.ascii	"_temp_1384\0"
	.align
_Label_1569:
	.byte	'C'
	.ascii	"_temp_1383\0"
	.align
_Label_1570:
	.byte	'?'
	.ascii	"_temp_1382\0"
	.align
_Label_1571:
	.byte	'?'
	.ascii	"_temp_1381\0"
	.align
_Label_1572:
	.byte	'?'
	.ascii	"_temp_1380\0"
	.align
_Label_1573:
	.byte	'C'
	.ascii	"_temp_1379\0"
	.align
_Label_1574:
	.byte	'?'
	.ascii	"_temp_1378\0"
	.align
_Label_1575:
	.byte	'?'
	.ascii	"_temp_1377\0"
	.align
_Label_1576:
	.byte	'?'
	.ascii	"_temp_1376\0"
	.align
_Label_1577:
	.byte	'?'
	.ascii	"_temp_1375\0"
	.align
_Label_1578:
	.byte	'?'
	.ascii	"_temp_1374\0"
	.align
_Label_1579:
	.byte	'?'
	.ascii	"_temp_1373\0"
	.align
_Label_1580:
	.byte	'?'
	.ascii	"_temp_1367\0"
	.align
_Label_1581:
	.byte	'?'
	.ascii	"_temp_1366\0"
	.align
_Label_1582:
	.byte	'?'
	.ascii	"_temp_1365\0"
	.align
_Label_1583:
	.byte	'C'
	.ascii	"_temp_1360\0"
	.align
_Label_1584:
	.byte	'?'
	.ascii	"_temp_1359\0"
	.align
_Label_1585:
	.byte	'?'
	.ascii	"_temp_1358\0"
	.align
_Label_1586:
	.byte	'?'
	.ascii	"_temp_1357\0"
	.align
_Label_1587:
	.byte	'C'
	.ascii	"_temp_1356\0"
	.align
_Label_1588:
	.byte	'C'
	.ascii	"_temp_1355\0"
	.align
_Label_1589:
	.byte	'?'
	.ascii	"_temp_1354\0"
	.align
_Label_1590:
	.byte	'?'
	.ascii	"_temp_1353\0"
	.align
_Label_1591:
	.byte	'?'
	.ascii	"_temp_1352\0"
	.align
_Label_1592:
	.byte	'C'
	.ascii	"_temp_1351\0"
	.align
_Label_1593:
	.byte	'?'
	.ascii	"_temp_1350\0"
	.align
_Label_1594:
	.byte	'?'
	.ascii	"_temp_1349\0"
	.align
_Label_1595:
	.byte	'?'
	.ascii	"_temp_1348\0"
	.align
_Label_1596:
	.byte	'?'
	.ascii	"_temp_1347\0"
	.align
_Label_1597:
	.byte	'?'
	.ascii	"_temp_1346\0"
	.align
_Label_1598:
	.byte	'?'
	.ascii	"_temp_1345\0"
	.align
_Label_1599:
	.byte	'?'
	.ascii	"_temp_1339\0"
	.align
_Label_1600:
	.byte	'?'
	.ascii	"_temp_1338\0"
	.align
_Label_1601:
	.byte	'?'
	.ascii	"_temp_1337\0"
	.align
_Label_1602:
	.byte	'?'
	.ascii	"_temp_1332\0"
	.align
_Label_1603:
	.byte	'?'
	.ascii	"_temp_1331\0"
	.align
_Label_1604:
	.byte	'?'
	.ascii	"_temp_1330\0"
	.align
_Label_1605:
	.byte	'?'
	.ascii	"_temp_1329\0"
	.align
_Label_1606:
	.byte	'?'
	.ascii	"_temp_1328\0"
	.align
_Label_1607:
	.byte	'?'
	.ascii	"_temp_1327\0"
	.align
_Label_1608:
	.byte	'?'
	.ascii	"_temp_1326\0"
	.align
_Label_1609:
	.byte	'?'
	.ascii	"_temp_1323\0"
	.align
_Label_1610:
	.byte	'?'
	.ascii	"_temp_1322\0"
	.align
_Label_1611:
	.byte	'?'
	.ascii	"_temp_1321\0"
	.align
_Label_1612:
	.byte	'?'
	.ascii	"_temp_1320\0"
	.align
_Label_1613:
	.byte	'?'
	.ascii	"_temp_1319\0"
	.align
_Label_1614:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1615:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_1616:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_1617:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_1618:
	.byte	'I'
	.ascii	"nextPosInFile\0"
	.align
_Label_1619:
	.byte	'I'
	.ascii	"currentChunkSize\0"
	.align
_Label_1620:
	.byte	'I'
	.ascii	"fileSize\0"
	.align
_Label_1621:
	.byte	'I'
	.ascii	"destAddr\0"
	.align
_Label_1622:
	.byte	'P'
	.ascii	"openFile\0"
	.align
_Label_1623:
	.byte	'B'
	.ascii	"readSuccess\0"
	.align
_Label_1624:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1625:
	.byte	'C'
	.ascii	"c\0"
	.align
_Label_1626:
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
_Label_4397:
	push	r0
	sub	r1,1,r1
	bne	_Label_4397
	mov	2245,r13		! source line 2245
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2249,r13		! source line 2249
	mov	"\0\0SE",r10
!   _temp_1627 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-180]
!   _temp_1628 = _temp_1627 + 4
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
	mov	2251,r13		! source line 2251
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1639 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-160]
!   Data Move: _temp_1638 = *_temp_1639  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-164]
!   if intIsZero (_temp_1638) then goto _runtimeErrorNullPointer
	load	[r14+-164],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1640 = _temp_1638 + 124
	load	[r14+-164],r1
	add	r1,124,r1
	store	r1,[r14+-156]
!   Move address of _temp_1640 [fileDesc ] into _temp_1641
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
!   Data Move: _temp_1637 = *_temp_1641  (sizeInBytes=4)
	load	[r14+-152],r1
	load	[r1],r1
	store	r1,[r14+-168]
!   if intIsZero (_temp_1637) then goto _runtimeErrorNullPointer
	load	[r14+-168],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1642 = _temp_1637 + 12
	load	[r14+-168],r1
	add	r1,12,r1
	store	r1,[r14+-148]
!   Data Move: _temp_1636 = *_temp_1642  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r1],r1
	store	r1,[r14+-172]
!   if _temp_1636 != 2 then goto _Label_1635		(int)
	load	[r14+-172],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1635
	jmp	_Label_1629
_Label_1635:
!   if fileDesc >= 0 then goto _Label_1634		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1634
	jmp	_Label_1629
_Label_1634:
!   if fileDesc <= 9 then goto _Label_1633		(int)
	load	[r14+8],r1
	mov	9,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1633
	jmp	_Label_1629
_Label_1633:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1645 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-136]
!   Data Move: _temp_1644 = *_temp_1645  (sizeInBytes=4)
	load	[r14+-136],r1
	load	[r1],r1
	store	r1,[r14+-140]
!   if intIsZero (_temp_1644) then goto _runtimeErrorNullPointer
	load	[r14+-140],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1646 = _temp_1644 + 124
	load	[r14+-140],r1
	add	r1,124,r1
	store	r1,[r14+-132]
!   Move address of _temp_1646 [fileDesc ] into _temp_1647
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
!   Data Move: _temp_1643 = *_temp_1647  (sizeInBytes=4)
	load	[r14+-128],r1
	load	[r1],r1
	store	r1,[r14+-144]
!   if intIsZero (_temp_1643) then goto _Label_1629
	load	[r14+-144],r1
	cmp	r1,r0
	be	_Label_1629
!	jmp	_Label_1632
_Label_1632:
!   if newCurrentPos >= -1 then goto _Label_1631		(int)
	load	[r14+12],r1
	mov	-1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1631
	jmp	_Label_1629
_Label_1631:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1652 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-108]
!   Data Move: _temp_1651 = *_temp_1652  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if intIsZero (_temp_1651) then goto _runtimeErrorNullPointer
	load	[r14+-112],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1653 = _temp_1651 + 124
	load	[r14+-112],r1
	add	r1,124,r1
	store	r1,[r14+-104]
!   Move address of _temp_1653 [fileDesc ] into _temp_1654
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
!   Data Move: _temp_1650 = *_temp_1654  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if intIsZero (_temp_1650) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1655 = _temp_1650 + 20
	load	[r14+-116],r1
	add	r1,20,r1
	store	r1,[r14+-96]
!   Data Move: _temp_1649 = *_temp_1655  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-120]
!   if intIsZero (_temp_1649) then goto _runtimeErrorNullPointer
	load	[r14+-120],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1656 = _temp_1649 + 24
	load	[r14+-120],r1
	add	r1,24,r1
	store	r1,[r14+-92]
!   Data Move: _temp_1648 = *_temp_1656  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-124]
!   if newCurrentPos <= _temp_1648 then goto _Label_1630		(int)
	load	[r14+12],r1
	load	[r14+-124],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1630
!	jmp	_Label_1629
_Label_1629:
! THEN...
	mov	2252,r13		! source line 2252
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2252,r13		! source line 2252
	mov	"\0\0SE",r10
!   _temp_1657 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-88]
!   _temp_1658 = _temp_1657 + 4
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
	mov	2253,r13		! source line 2253
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,184,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1630:
! ASSIGNMENT STATEMENT...
	mov	2255,r13		! source line 2255
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1660 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-76]
!   Data Move: _temp_1659 = *_temp_1660  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_1659) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1661 = _temp_1659 + 124
	load	[r14+-80],r1
	add	r1,124,r1
	store	r1,[r14+-72]
!   Move address of _temp_1661 [fileDesc ] into _temp_1662
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
!   Data Move: openFile = *_temp_1662  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-184]
! IF STATEMENT...
	mov	2256,r13		! source line 2256
	mov	"\0\0IF",r10
!   if newCurrentPos != -1 then goto _Label_1664		(int)
	load	[r14+12],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_1664
!	jmp	_Label_1663
_Label_1663:
! THEN...
	mov	2257,r13		! source line 2257
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2257,r13		! source line 2257
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-184],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1665 = openFile + 16
	load	[r14+-184],r1
	add	r1,16,r1
	store	r1,[r14+-64]
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-184],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1668 = openFile + 20
	load	[r14+-184],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_1667 = *_temp_1668  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_1667) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1669 = _temp_1667 + 24
	load	[r14+-56],r1
	add	r1,24,r1
	store	r1,[r14+-48]
!   Data Move: _temp_1666 = *_temp_1669  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   Data Move: *_temp_1665 = _temp_1666  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r14+-64],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2258,r13		! source line 2258
	mov	"\0\0SE",r10
!   _temp_1670 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-44]
!   _temp_1671 = _temp_1670 + 4
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
	mov	2259,r13		! source line 2259
	mov	"\0\0RE",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-184],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1674 = openFile + 20
	load	[r14+-184],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: _temp_1673 = *_temp_1674  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_1673) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1675 = _temp_1673 + 24
	load	[r14+-32],r1
	add	r1,24,r1
	store	r1,[r14+-24]
!   Data Move: _temp_1672 = *_temp_1675  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   ReturnResult: _temp_1672  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,184,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1664:
! ASSIGNMENT STATEMENT...
	mov	2261,r13		! source line 2261
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-184],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1676 = openFile + 16
	load	[r14+-184],r1
	add	r1,16,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1676 = newCurrentPos  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2262,r13		! source line 2262
	mov	"\0\0SE",r10
!   _temp_1677 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-16]
!   _temp_1678 = _temp_1677 + 4
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
	mov	2263,r13		! source line 2263
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
	.word	_Label_1679
	.word	8		! total size of parameters
	.word	180		! frame size = 180
	.word	_Label_1680
	.word	8
	.word	4
	.word	_Label_1681
	.word	12
	.word	4
	.word	_Label_1682
	.word	-12
	.word	4
	.word	_Label_1683
	.word	-16
	.word	4
	.word	_Label_1684
	.word	-20
	.word	4
	.word	_Label_1685
	.word	-24
	.word	4
	.word	_Label_1686
	.word	-28
	.word	4
	.word	_Label_1687
	.word	-32
	.word	4
	.word	_Label_1688
	.word	-36
	.word	4
	.word	_Label_1689
	.word	-40
	.word	4
	.word	_Label_1690
	.word	-44
	.word	4
	.word	_Label_1691
	.word	-48
	.word	4
	.word	_Label_1692
	.word	-52
	.word	4
	.word	_Label_1693
	.word	-56
	.word	4
	.word	_Label_1694
	.word	-60
	.word	4
	.word	_Label_1695
	.word	-64
	.word	4
	.word	_Label_1696
	.word	-68
	.word	4
	.word	_Label_1697
	.word	-72
	.word	4
	.word	_Label_1698
	.word	-76
	.word	4
	.word	_Label_1699
	.word	-80
	.word	4
	.word	_Label_1700
	.word	-84
	.word	4
	.word	_Label_1701
	.word	-88
	.word	4
	.word	_Label_1702
	.word	-92
	.word	4
	.word	_Label_1703
	.word	-96
	.word	4
	.word	_Label_1704
	.word	-100
	.word	4
	.word	_Label_1705
	.word	-104
	.word	4
	.word	_Label_1706
	.word	-108
	.word	4
	.word	_Label_1707
	.word	-112
	.word	4
	.word	_Label_1708
	.word	-116
	.word	4
	.word	_Label_1709
	.word	-120
	.word	4
	.word	_Label_1710
	.word	-124
	.word	4
	.word	_Label_1711
	.word	-128
	.word	4
	.word	_Label_1712
	.word	-132
	.word	4
	.word	_Label_1713
	.word	-136
	.word	4
	.word	_Label_1714
	.word	-140
	.word	4
	.word	_Label_1715
	.word	-144
	.word	4
	.word	_Label_1716
	.word	-148
	.word	4
	.word	_Label_1717
	.word	-152
	.word	4
	.word	_Label_1718
	.word	-156
	.word	4
	.word	_Label_1719
	.word	-160
	.word	4
	.word	_Label_1720
	.word	-164
	.word	4
	.word	_Label_1721
	.word	-168
	.word	4
	.word	_Label_1722
	.word	-172
	.word	4
	.word	_Label_1723
	.word	-176
	.word	4
	.word	_Label_1724
	.word	-180
	.word	4
	.word	_Label_1725
	.word	-184
	.word	4
	.word	0
_Label_1679:
	.ascii	"Handle_Sys_Seek\0"
	.align
_Label_1680:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_1681:
	.byte	'I'
	.ascii	"newCurrentPos\0"
	.align
_Label_1682:
	.byte	'?'
	.ascii	"_temp_1678\0"
	.align
_Label_1683:
	.byte	'?'
	.ascii	"_temp_1677\0"
	.align
_Label_1684:
	.byte	'?'
	.ascii	"_temp_1676\0"
	.align
_Label_1685:
	.byte	'?'
	.ascii	"_temp_1675\0"
	.align
_Label_1686:
	.byte	'?'
	.ascii	"_temp_1674\0"
	.align
_Label_1687:
	.byte	'?'
	.ascii	"_temp_1673\0"
	.align
_Label_1688:
	.byte	'?'
	.ascii	"_temp_1672\0"
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
	.byte	'?'
	.ascii	"_temp_1668\0"
	.align
_Label_1693:
	.byte	'?'
	.ascii	"_temp_1667\0"
	.align
_Label_1694:
	.byte	'?'
	.ascii	"_temp_1666\0"
	.align
_Label_1695:
	.byte	'?'
	.ascii	"_temp_1665\0"
	.align
_Label_1696:
	.byte	'?'
	.ascii	"_temp_1662\0"
	.align
_Label_1697:
	.byte	'?'
	.ascii	"_temp_1661\0"
	.align
_Label_1698:
	.byte	'?'
	.ascii	"_temp_1660\0"
	.align
_Label_1699:
	.byte	'?'
	.ascii	"_temp_1659\0"
	.align
_Label_1700:
	.byte	'?'
	.ascii	"_temp_1658\0"
	.align
_Label_1701:
	.byte	'?'
	.ascii	"_temp_1657\0"
	.align
_Label_1702:
	.byte	'?'
	.ascii	"_temp_1656\0"
	.align
_Label_1703:
	.byte	'?'
	.ascii	"_temp_1655\0"
	.align
_Label_1704:
	.byte	'?'
	.ascii	"_temp_1654\0"
	.align
_Label_1705:
	.byte	'?'
	.ascii	"_temp_1653\0"
	.align
_Label_1706:
	.byte	'?'
	.ascii	"_temp_1652\0"
	.align
_Label_1707:
	.byte	'?'
	.ascii	"_temp_1651\0"
	.align
_Label_1708:
	.byte	'?'
	.ascii	"_temp_1650\0"
	.align
_Label_1709:
	.byte	'?'
	.ascii	"_temp_1649\0"
	.align
_Label_1710:
	.byte	'?'
	.ascii	"_temp_1648\0"
	.align
_Label_1711:
	.byte	'?'
	.ascii	"_temp_1647\0"
	.align
_Label_1712:
	.byte	'?'
	.ascii	"_temp_1646\0"
	.align
_Label_1713:
	.byte	'?'
	.ascii	"_temp_1645\0"
	.align
_Label_1714:
	.byte	'?'
	.ascii	"_temp_1644\0"
	.align
_Label_1715:
	.byte	'?'
	.ascii	"_temp_1643\0"
	.align
_Label_1716:
	.byte	'?'
	.ascii	"_temp_1642\0"
	.align
_Label_1717:
	.byte	'?'
	.ascii	"_temp_1641\0"
	.align
_Label_1718:
	.byte	'?'
	.ascii	"_temp_1640\0"
	.align
_Label_1719:
	.byte	'?'
	.ascii	"_temp_1639\0"
	.align
_Label_1720:
	.byte	'?'
	.ascii	"_temp_1638\0"
	.align
_Label_1721:
	.byte	'?'
	.ascii	"_temp_1637\0"
	.align
_Label_1722:
	.byte	'?'
	.ascii	"_temp_1636\0"
	.align
_Label_1723:
	.byte	'?'
	.ascii	"_temp_1628\0"
	.align
_Label_1724:
	.byte	'?'
	.ascii	"_temp_1627\0"
	.align
_Label_1725:
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
_Label_4398:
	push	r0
	sub	r1,1,r1
	bne	_Label_4398
	mov	2268,r13		! source line 2268
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2269,r13		! source line 2269
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1731 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-100]
!   Data Move: _temp_1730 = *_temp_1731  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if intIsZero (_temp_1730) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1732 = _temp_1730 + 124
	load	[r14+-104],r1
	add	r1,124,r1
	store	r1,[r14+-96]
!   Move address of _temp_1732 [fileDesc ] into _temp_1733
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
!   Data Move: _temp_1729 = *_temp_1733  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_1729) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1734 = _temp_1729 + 12
	load	[r14+-108],r1
	add	r1,12,r1
	store	r1,[r14+-88]
!   Data Move: _temp_1728 = *_temp_1734  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if _temp_1728 != 2 then goto _Label_1727		(int)
	load	[r14+-112],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1727
!	jmp	_Label_1726
_Label_1726:
! THEN...
	mov	2270,r13		! source line 2270
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2270,r13		! source line 2270
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1736 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-80]
!   Data Move: _temp_1735 = *_temp_1736  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if intIsZero (_temp_1735) then goto _runtimeErrorNullPointer
	load	[r14+-84],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1737 = _temp_1735 + 124
	load	[r14+-84],r1
	add	r1,124,r1
	store	r1,[r14+-76]
!   Move address of _temp_1737 [fileDesc ] into _temp_1738
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
!   Data Move: *_temp_1738 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-72],r2
	store	r1,[r2]
	jmp	_Label_1739
_Label_1727:
! ELSE...
	mov	2272,r13		! source line 2272
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	2272,r13		! source line 2272
	mov	"\0\0IF",r10
!   if fileDesc >= 0 then goto _Label_1743		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1743
	jmp	_Label_1740
_Label_1743:
!   if fileDesc <= 9 then goto _Label_1742		(int)
	load	[r14+8],r1
	mov	9,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1742
	jmp	_Label_1740
_Label_1742:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1746 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-60]
!   Data Move: _temp_1745 = *_temp_1746  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_1745) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1747 = _temp_1745 + 124
	load	[r14+-64],r1
	add	r1,124,r1
	store	r1,[r14+-56]
!   Move address of _temp_1747 [fileDesc ] into _temp_1748
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
!   Data Move: _temp_1744 = *_temp_1748  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_1744) then goto _Label_1740
	load	[r14+-68],r1
	cmp	r1,r0
	be	_Label_1740
	jmp	_Label_1741
_Label_1740:
	jmp	_Label_1749
_Label_1741:
! ELSE...
	mov	2275,r13		! source line 2275
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	2275,r13		! source line 2275
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1752 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-40]
!   Data Move: _temp_1751 = *_temp_1752  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_1751) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1753 = _temp_1751 + 124
	load	[r14+-44],r1
	add	r1,124,r1
	store	r1,[r14+-36]
!   Move address of _temp_1753 [fileDesc ] into _temp_1754
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
!   Data Move: _temp_1750 = *_temp_1754  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_1755 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_1750  sizeInBytes=4
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
	mov	2276,r13		! source line 2276
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1757 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_1756 = *_temp_1757  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_1756) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1758 = _temp_1756 + 124
	load	[r14+-24],r1
	add	r1,124,r1
	store	r1,[r14+-16]
!   Move address of _temp_1758 [fileDesc ] into _temp_1759
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
!   Data Move: *_temp_1759 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-12],r2
	store	r1,[r2]
! END IF...
_Label_1749:
! END IF...
_Label_1739:
! RETURN STATEMENT...
	mov	2269,r13		! source line 2269
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
	.word	_Label_1760
	.word	4		! total size of parameters
	.word	112		! frame size = 112
	.word	_Label_1761
	.word	8
	.word	4
	.word	_Label_1762
	.word	-12
	.word	4
	.word	_Label_1763
	.word	-16
	.word	4
	.word	_Label_1764
	.word	-20
	.word	4
	.word	_Label_1765
	.word	-24
	.word	4
	.word	_Label_1766
	.word	-28
	.word	4
	.word	_Label_1767
	.word	-32
	.word	4
	.word	_Label_1768
	.word	-36
	.word	4
	.word	_Label_1769
	.word	-40
	.word	4
	.word	_Label_1770
	.word	-44
	.word	4
	.word	_Label_1771
	.word	-48
	.word	4
	.word	_Label_1772
	.word	-52
	.word	4
	.word	_Label_1773
	.word	-56
	.word	4
	.word	_Label_1774
	.word	-60
	.word	4
	.word	_Label_1775
	.word	-64
	.word	4
	.word	_Label_1776
	.word	-68
	.word	4
	.word	_Label_1777
	.word	-72
	.word	4
	.word	_Label_1778
	.word	-76
	.word	4
	.word	_Label_1779
	.word	-80
	.word	4
	.word	_Label_1780
	.word	-84
	.word	4
	.word	_Label_1781
	.word	-88
	.word	4
	.word	_Label_1782
	.word	-92
	.word	4
	.word	_Label_1783
	.word	-96
	.word	4
	.word	_Label_1784
	.word	-100
	.word	4
	.word	_Label_1785
	.word	-104
	.word	4
	.word	_Label_1786
	.word	-108
	.word	4
	.word	_Label_1787
	.word	-112
	.word	4
	.word	0
_Label_1760:
	.ascii	"Handle_Sys_Close\0"
	.align
_Label_1761:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_1762:
	.byte	'?'
	.ascii	"_temp_1759\0"
	.align
_Label_1763:
	.byte	'?'
	.ascii	"_temp_1758\0"
	.align
_Label_1764:
	.byte	'?'
	.ascii	"_temp_1757\0"
	.align
_Label_1765:
	.byte	'?'
	.ascii	"_temp_1756\0"
	.align
_Label_1766:
	.byte	'?'
	.ascii	"_temp_1755\0"
	.align
_Label_1767:
	.byte	'?'
	.ascii	"_temp_1754\0"
	.align
_Label_1768:
	.byte	'?'
	.ascii	"_temp_1753\0"
	.align
_Label_1769:
	.byte	'?'
	.ascii	"_temp_1752\0"
	.align
_Label_1770:
	.byte	'?'
	.ascii	"_temp_1751\0"
	.align
_Label_1771:
	.byte	'?'
	.ascii	"_temp_1750\0"
	.align
_Label_1772:
	.byte	'?'
	.ascii	"_temp_1748\0"
	.align
_Label_1773:
	.byte	'?'
	.ascii	"_temp_1747\0"
	.align
_Label_1774:
	.byte	'?'
	.ascii	"_temp_1746\0"
	.align
_Label_1775:
	.byte	'?'
	.ascii	"_temp_1745\0"
	.align
_Label_1776:
	.byte	'?'
	.ascii	"_temp_1744\0"
	.align
_Label_1777:
	.byte	'?'
	.ascii	"_temp_1738\0"
	.align
_Label_1778:
	.byte	'?'
	.ascii	"_temp_1737\0"
	.align
_Label_1779:
	.byte	'?'
	.ascii	"_temp_1736\0"
	.align
_Label_1780:
	.byte	'?'
	.ascii	"_temp_1735\0"
	.align
_Label_1781:
	.byte	'?'
	.ascii	"_temp_1734\0"
	.align
_Label_1782:
	.byte	'?'
	.ascii	"_temp_1733\0"
	.align
_Label_1783:
	.byte	'?'
	.ascii	"_temp_1732\0"
	.align
_Label_1784:
	.byte	'?'
	.ascii	"_temp_1731\0"
	.align
_Label_1785:
	.byte	'?'
	.ascii	"_temp_1730\0"
	.align
_Label_1786:
	.byte	'?'
	.ascii	"_temp_1729\0"
	.align
_Label_1787:
	.byte	'?'
	.ascii	"_temp_1728\0"
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
_Label_4399:
	push	r0
	sub	r1,1,r1
	bne	_Label_4399
	mov	2872,r13		! source line 2872
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2874,r13		! source line 2874
	mov	"\0\0AS",r10
!   from = fromPtr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2875,r13		! source line 2875
	mov	"\0\0AS",r10
!   dest = destPtr		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	2876,r13		! source line 2876
	mov	"\0\0AS",r10
!   if intIsZero (dest) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (from) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1788 = *from  (sizeInBytes=1)
	load	[r14+-40],r1
	loadb	[r1],r1
	storeb	r1,[r14+-12]
!   Data Move: *dest = _temp_1788  (sizeInBytes=1)
	loadb	[r14+-12],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2877,r13		! source line 2877
	mov	"\0\0AS",r10
!   _temp_1789 = dest + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   if intIsZero (_temp_1789) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1791 = from + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   if intIsZero (_temp_1791) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1790 = *_temp_1791  (sizeInBytes=1)
	load	[r14+-32],r1
	loadb	[r1],r1
	storeb	r1,[r14+-11]
!   Data Move: *_temp_1789 = _temp_1790  (sizeInBytes=1)
	loadb	[r14+-11],r1
	load	[r14+-36],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2878,r13		! source line 2878
	mov	"\0\0AS",r10
!   _temp_1792 = dest + 2		(int)
	load	[r14+-44],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   if intIsZero (_temp_1792) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1794 = from + 2		(int)
	load	[r14+-40],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   if intIsZero (_temp_1794) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1793 = *_temp_1794  (sizeInBytes=1)
	load	[r14+-24],r1
	loadb	[r1],r1
	storeb	r1,[r14+-10]
!   Data Move: *_temp_1792 = _temp_1793  (sizeInBytes=1)
	loadb	[r14+-10],r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2879,r13		! source line 2879
	mov	"\0\0AS",r10
!   _temp_1795 = dest + 3		(int)
	load	[r14+-44],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   if intIsZero (_temp_1795) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1797 = from + 3		(int)
	load	[r14+-40],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
!   if intIsZero (_temp_1797) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1796 = *_temp_1797  (sizeInBytes=1)
	load	[r14+-16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *_temp_1795 = _temp_1796  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! RETURN STATEMENT...
	mov	2879,r13		! source line 2879
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
	.word	_Label_1798
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1799
	.word	8
	.word	4
	.word	_Label_1800
	.word	12
	.word	4
	.word	_Label_1801
	.word	-16
	.word	4
	.word	_Label_1802
	.word	-9
	.word	1
	.word	_Label_1803
	.word	-20
	.word	4
	.word	_Label_1804
	.word	-24
	.word	4
	.word	_Label_1805
	.word	-10
	.word	1
	.word	_Label_1806
	.word	-28
	.word	4
	.word	_Label_1807
	.word	-32
	.word	4
	.word	_Label_1808
	.word	-11
	.word	1
	.word	_Label_1809
	.word	-36
	.word	4
	.word	_Label_1810
	.word	-12
	.word	1
	.word	_Label_1811
	.word	-40
	.word	4
	.word	_Label_1812
	.word	-44
	.word	4
	.word	0
_Label_1798:
	.ascii	"copyUnalignedWord\0"
	.align
_Label_1799:
	.byte	'P'
	.ascii	"destPtr\0"
	.align
_Label_1800:
	.byte	'P'
	.ascii	"fromPtr\0"
	.align
_Label_1801:
	.byte	'?'
	.ascii	"_temp_1797\0"
	.align
_Label_1802:
	.byte	'C'
	.ascii	"_temp_1796\0"
	.align
_Label_1803:
	.byte	'?'
	.ascii	"_temp_1795\0"
	.align
_Label_1804:
	.byte	'?'
	.ascii	"_temp_1794\0"
	.align
_Label_1805:
	.byte	'C'
	.ascii	"_temp_1793\0"
	.align
_Label_1806:
	.byte	'?'
	.ascii	"_temp_1792\0"
	.align
_Label_1807:
	.byte	'?'
	.ascii	"_temp_1791\0"
	.align
_Label_1808:
	.byte	'C'
	.ascii	"_temp_1790\0"
	.align
_Label_1809:
	.byte	'?'
	.ascii	"_temp_1789\0"
	.align
_Label_1810:
	.byte	'C'
	.ascii	"_temp_1788\0"
	.align
_Label_1811:
	.byte	'P'
	.ascii	"from\0"
	.align
_Label_1812:
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
_Label_4400:
	push	r0
	sub	r1,1,r1
	bne	_Label_4400
	mov	2882,r13		! source line 2882
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1814 = fcb + 12
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-12]
!   Data Move: _temp_1813 = *_temp_1814  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1813  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2883,r13		! source line 2883
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	2884,r13		! source line 2884
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	2884,r13		! source line 2884
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
	.word	_Label_1815
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1816
	.word	8
	.word	4
	.word	_Label_1817
	.word	-12
	.word	4
	.word	_Label_1818
	.word	-16
	.word	4
	.word	0
_Label_1815:
	.ascii	"printFCB\0"
	.align
_Label_1816:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_1817:
	.byte	'?'
	.ascii	"_temp_1814\0"
	.align
_Label_1818:
	.byte	'?'
	.ascii	"_temp_1813\0"
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
_Label_4401:
	push	r0
	sub	r1,1,r1
	bne	_Label_4401
	mov	2887,r13		! source line 2887
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1819 = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1819  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2888,r13		! source line 2888
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1820 = open		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1820  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2889,r13		! source line 2889
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1821 = _StringConst_43
	set	_StringConst_43,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1821  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2890,r13		! source line 2890
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2891,r13		! source line 2891
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
	mov	2891,r13		! source line 2891
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
	.word	_Label_1822
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1823
	.word	8
	.word	4
	.word	_Label_1824
	.word	-12
	.word	4
	.word	_Label_1825
	.word	-16
	.word	4
	.word	_Label_1826
	.word	-20
	.word	4
	.word	0
_Label_1822:
	.ascii	"printOpen\0"
	.align
_Label_1823:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_1824:
	.byte	'?'
	.ascii	"_temp_1821\0"
	.align
_Label_1825:
	.byte	'?'
	.ascii	"_temp_1820\0"
	.align
_Label_1826:
	.byte	'?'
	.ascii	"_temp_1819\0"
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
_Label_4402:
	push	r0
	sub	r1,1,r1
	bne	_Label_4402
	mov	2934,r13		! source line 2934
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2935,r13		! source line 2935
	mov	"\0\0SE",r10
!   _temp_1827 = &_P_Kernel_serialDriver
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
	mov	2935,r13		! source line 2935
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
	.word	_Label_1828
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_1829
	.word	8
	.word	4
	.word	_Label_1830
	.word	-12
	.word	4
	.word	0
_Label_1828:
	.ascii	"SerialHandlerFunction\0"
	.align
_Label_1829:
	.byte	'I'
	.ascii	"ignore\0"
	.align
_Label_1830:
	.byte	'?'
	.ascii	"_temp_1827\0"
	.align
! 
! ===============  CLASS SerialDriver  ===============
! 
! Dispatch Table:
! 
_P_Kernel_SerialDriver:
	.word	_Label_1831
	jmp	_Method_P_Kernel_SerialDriver_1	! 4:	Init
	jmp	_Method_P_Kernel_SerialDriver_2	! 8:	PutChar
	jmp	_Method_P_Kernel_SerialDriver_3	! 12:	GetChar
	jmp	_Method_P_Kernel_SerialDriver_4	! 16:	SerialHandler
	.word	0
! 
! Class descriptor:
! 
_Label_1831:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1832
	.word	_sourceFileName
	.word	132		! line number
	.word	4308		! size of instances, in bytes
	.word	_P_Kernel_SerialDriver
	.word	_P_System_Object
	.word	0
_Label_1832:
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
_Label_4403:
	push	r0
	sub	r1,1,r1
	bne	_Label_4403
	mov	2942,r13		! source line 2942
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1833 = _StringConst_44
	set	_StringConst_44,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=_temp_1833  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+0]
!   Call the function
	mov	2945,r13		! source line 2945
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2946,r13		! source line 2946
	mov	"\0\0AS",r10
!   serial_status_word_address = 16776960		(4 bytes)
	set	16776960,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	2947,r13		! source line 2947
	mov	"\0\0AS",r10
!   serial_data_word_address = 16776964		(4 bytes)
	set	16776964,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! ASSIGNMENT STATEMENT...
	mov	2948,r13		! source line 2948
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
	mov	2949,r13		! source line 2949
	mov	"\0\0SE",r10
!   _temp_1835 = &serialLock
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
	mov	2950,r13		! source line 2950
	mov	"\0\0AS",r10
!   _temp_1836 = &getBuffer
	load	[r14+8],r1
	add	r1,32,r1
	store	r1,[r14+-112]
!   NEW ARRAY Constructor...
!   _temp_1838 = &_temp_1837
	add	r14,-108,r1
	store	r1,[r14+-92]
!   _temp_1838 = _temp_1838 + 4
	load	[r14+-92],r1
	add	r1,4,r1
	store	r1,[r14+-92]
!   Next value...
	mov	10,r1
	store	r1,[r14+-88]
_Label_1840:
!   Data Move: *_temp_1838 = 97  (sizeInBytes=1)
	mov	97,r1
	load	[r14+-92],r2
	storeb	r1,[r2]
!   _temp_1838 = _temp_1838 + 1
	load	[r14+-92],r1
	add	r1,1,r1
	store	r1,[r14+-92]
!   _temp_1839 = _temp_1839 + -1
	load	[r14+-88],r1
	add	r1,-1,r1
	store	r1,[r14+-88]
!   if intNotZero (_temp_1839) then goto _Label_1840
	load	[r14+-88],r1
	cmp	r1,r0
	bne	_Label_1840
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-108]
!   _temp_1841 = &_temp_1837
	add	r14,-108,r1
	store	r1,[r14+-84]
!   make sure array has size 10
	load	[r14+-112],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_4404
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4404:
!   make sure array has size 10
	load	[r14+-84],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1836 = *_temp_1841  (sizeInBytes=16)
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
	mov	2951,r13		! source line 2951
	mov	"\0\0AS",r10
!   getBufferSize = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+48]
! ASSIGNMENT STATEMENT...
	mov	2952,r13		! source line 2952
	mov	"\0\0AS",r10
!   putBufferSize = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+92]
! ASSIGNMENT STATEMENT...
	mov	2953,r13		! source line 2953
	mov	"\0\0AS",r10
!   getBufferNextIn = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+52]
! ASSIGNMENT STATEMENT...
	mov	2954,r13		! source line 2954
	mov	"\0\0AS",r10
!   getBufferNextOut = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+56]
! ASSIGNMENT STATEMENT...
	mov	2955,r13		! source line 2955
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
	mov	2956,r13		! source line 2956
	mov	"\0\0SE",r10
!   _temp_1843 = &getCharacterAvail
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
	mov	2957,r13		! source line 2957
	mov	"\0\0AS",r10
!   _temp_1844 = &putBuffer
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-72]
!   NEW ARRAY Constructor...
!   _temp_1846 = &_temp_1845
	add	r14,-68,r1
	store	r1,[r14+-52]
!   _temp_1846 = _temp_1846 + 4
	load	[r14+-52],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   Next value...
	mov	10,r1
	store	r1,[r14+-48]
_Label_1848:
!   Data Move: *_temp_1846 = 97  (sizeInBytes=1)
	mov	97,r1
	load	[r14+-52],r2
	storeb	r1,[r2]
!   _temp_1846 = _temp_1846 + 1
	load	[r14+-52],r1
	add	r1,1,r1
	store	r1,[r14+-52]
!   _temp_1847 = _temp_1847 + -1
	load	[r14+-48],r1
	add	r1,-1,r1
	store	r1,[r14+-48]
!   if intNotZero (_temp_1847) then goto _Label_1848
	load	[r14+-48],r1
	cmp	r1,r0
	bne	_Label_1848
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-68]
!   _temp_1849 = &_temp_1845
	add	r14,-68,r1
	store	r1,[r14+-44]
!   make sure array has size 10
	load	[r14+-72],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_4405
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4405:
!   make sure array has size 10
	load	[r14+-44],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1844 = *_temp_1849  (sizeInBytes=16)
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
	mov	2958,r13		! source line 2958
	mov	"\0\0AS",r10
!   putBufferNextIn = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+96]
! ASSIGNMENT STATEMENT...
	mov	2959,r13		! source line 2959
	mov	"\0\0AS",r10
!   putBufferNextOut = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+100]
! ASSIGNMENT STATEMENT...
	mov	2960,r13		! source line 2960
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
	mov	2961,r13		! source line 2961
	mov	"\0\0SE",r10
!   _temp_1851 = &putBufferSem
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
	mov	2962,r13		! source line 2962
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
	mov	2963,r13		! source line 2963
	mov	"\0\0SE",r10
!   _temp_1853 = &serialNeedsAttention
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
	mov	2965,r13		! source line 2965
	mov	"\0\0AS",r10
	mov	2965,r13		! source line 2965
	mov	"\0\0SE",r10
!   _temp_1854 = &_P_Kernel_threadManager
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
	mov	2966,r13		! source line 2966
	mov	"\0\0SE",r10
!   _temp_1855 = _StringConst_45
	set	_StringConst_45,r1
	store	r1,[r14+-20]
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_1855  sizeInBytes=4
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
	mov	2967,r13		! source line 2967
	mov	"\0\0AS",r10
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1856 = newThread + 76
	load	[r14+-128],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1856 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2968,r13		! source line 2968
	mov	"\0\0SE",r10
!   _temp_1857 = _function_187_SerialHandlerFunction
	set	_function_187_SerialHandlerFunction,r1
	store	r1,[r14+-12]
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_1857  sizeInBytes=4
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
	mov	2970,r13		! source line 2970
	mov	"\0\0AS",r10
!   _P_Kernel_serialHasBeenInitialized = 1		(1 byte)
	mov	1,r1
	set	_P_Kernel_serialHasBeenInitialized,r2
	storeb	r1,[r2]
! RETURN STATEMENT...
	mov	2970,r13		! source line 2970
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
	.word	_Label_1858
	.word	4		! total size of parameters
	.word	132		! frame size = 132
	.word	_Label_1859
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1860
	.word	-12
	.word	4
	.word	_Label_1861
	.word	-16
	.word	4
	.word	_Label_1862
	.word	-20
	.word	4
	.word	_Label_1863
	.word	-24
	.word	4
	.word	_Label_1864
	.word	-28
	.word	4
	.word	_Label_1865
	.word	-32
	.word	4
	.word	_Label_1866
	.word	-36
	.word	4
	.word	_Label_1867
	.word	-40
	.word	4
	.word	_Label_1868
	.word	-44
	.word	4
	.word	_Label_1869
	.word	-48
	.word	4
	.word	_Label_1870
	.word	-52
	.word	4
	.word	_Label_1871
	.word	-68
	.word	16
	.word	_Label_1872
	.word	-72
	.word	4
	.word	_Label_1873
	.word	-76
	.word	4
	.word	_Label_1874
	.word	-80
	.word	4
	.word	_Label_1875
	.word	-84
	.word	4
	.word	_Label_1876
	.word	-88
	.word	4
	.word	_Label_1877
	.word	-92
	.word	4
	.word	_Label_1878
	.word	-108
	.word	16
	.word	_Label_1879
	.word	-112
	.word	4
	.word	_Label_1880
	.word	-116
	.word	4
	.word	_Label_1881
	.word	-120
	.word	4
	.word	_Label_1882
	.word	-124
	.word	4
	.word	_Label_1883
	.word	-128
	.word	4
	.word	0
_Label_1858:
	.ascii	"SerialDriver"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1859:
	.ascii	"Pself\0"
	.align
_Label_1860:
	.byte	'?'
	.ascii	"_temp_1857\0"
	.align
_Label_1861:
	.byte	'?'
	.ascii	"_temp_1856\0"
	.align
_Label_1862:
	.byte	'?'
	.ascii	"_temp_1855\0"
	.align
_Label_1863:
	.byte	'?'
	.ascii	"_temp_1854\0"
	.align
_Label_1864:
	.byte	'?'
	.ascii	"_temp_1853\0"
	.align
_Label_1865:
	.byte	'?'
	.ascii	"_temp_1852\0"
	.align
_Label_1866:
	.byte	'?'
	.ascii	"_temp_1851\0"
	.align
_Label_1867:
	.byte	'?'
	.ascii	"_temp_1850\0"
	.align
_Label_1868:
	.byte	'?'
	.ascii	"_temp_1849\0"
	.align
_Label_1869:
	.byte	'?'
	.ascii	"_temp_1847\0"
	.align
_Label_1870:
	.byte	'?'
	.ascii	"_temp_1846\0"
	.align
_Label_1871:
	.byte	'?'
	.ascii	"_temp_1845\0"
	.align
_Label_1872:
	.byte	'?'
	.ascii	"_temp_1844\0"
	.align
_Label_1873:
	.byte	'?'
	.ascii	"_temp_1843\0"
	.align
_Label_1874:
	.byte	'?'
	.ascii	"_temp_1842\0"
	.align
_Label_1875:
	.byte	'?'
	.ascii	"_temp_1841\0"
	.align
_Label_1876:
	.byte	'?'
	.ascii	"_temp_1839\0"
	.align
_Label_1877:
	.byte	'?'
	.ascii	"_temp_1838\0"
	.align
_Label_1878:
	.byte	'?'
	.ascii	"_temp_1837\0"
	.align
_Label_1879:
	.byte	'?'
	.ascii	"_temp_1836\0"
	.align
_Label_1880:
	.byte	'?'
	.ascii	"_temp_1835\0"
	.align
_Label_1881:
	.byte	'?'
	.ascii	"_temp_1834\0"
	.align
_Label_1882:
	.byte	'?'
	.ascii	"_temp_1833\0"
	.align
_Label_1883:
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
_Label_4406:
	push	r0
	sub	r1,1,r1
	bne	_Label_4406
	mov	2973,r13		! source line 2973
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2974,r13		! source line 2974
	mov	"\0\0SE",r10
!   _temp_1884 = &putBufferSem
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
	mov	2975,r13		! source line 2975
	mov	"\0\0SE",r10
!   _temp_1885 = &serialLock
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
	mov	2976,r13		! source line 2976
	mov	"\0\0AS",r10
!   _temp_1886 = &putBuffer
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Move address of _temp_1886 [putBufferNextIn ] into _temp_1887
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
!   Data Move: *_temp_1887 = value  (sizeInBytes=1)
	loadb	[r14+12],r1
	load	[r14+-24],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2977,r13		! source line 2977
	mov	"\0\0AS",r10
!   _temp_1888 = putBufferNextIn + 1		(int)
	load	[r14+8],r1
	load	[r1+96],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   putBufferNextIn = _temp_1888 rem 10		(int)
	load	[r14+-20],r1
	mov	10,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+96]
! ASSIGNMENT STATEMENT...
	mov	2978,r13		! source line 2978
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
	mov	2979,r13		! source line 2979
	mov	"\0\0SE",r10
!   _temp_1889 = &serialLock
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
	mov	2980,r13		! source line 2980
	mov	"\0\0SE",r10
!   _temp_1890 = &serialNeedsAttention
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
	mov	2980,r13		! source line 2980
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
	.word	_Label_1891
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1892
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1893
	.word	12
	.word	1
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
	.word	0
_Label_1891:
	.ascii	"SerialDriver"
	.ascii	"::"
	.ascii	"PutChar\0"
	.align
_Label_1892:
	.ascii	"Pself\0"
	.align
_Label_1893:
	.byte	'C'
	.ascii	"value\0"
	.align
_Label_1894:
	.byte	'?'
	.ascii	"_temp_1890\0"
	.align
_Label_1895:
	.byte	'?'
	.ascii	"_temp_1889\0"
	.align
_Label_1896:
	.byte	'?'
	.ascii	"_temp_1888\0"
	.align
_Label_1897:
	.byte	'?'
	.ascii	"_temp_1887\0"
	.align
_Label_1898:
	.byte	'?'
	.ascii	"_temp_1886\0"
	.align
_Label_1899:
	.byte	'?'
	.ascii	"_temp_1885\0"
	.align
_Label_1900:
	.byte	'?'
	.ascii	"_temp_1884\0"
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
_Label_4407:
	push	r0
	sub	r1,1,r1
	bne	_Label_4407
	mov	2983,r13		! source line 2983
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2986,r13		! source line 2986
	mov	"\0\0SE",r10
!   _temp_1901 = &serialLock
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
	mov	2987,r13		! source line 2987
	mov	"\0\0WH",r10
_Label_1902:
!   if intIsZero (getBufferSize) then goto _Label_1903
	load	[r14+8],r1
	load	[r1+48],r1
	cmp	r1,r0
	be	_Label_1903
	jmp	_Label_1904
_Label_1903:
	mov	2987,r13		! source line 2987
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2988,r13		! source line 2988
	mov	"\0\0SE",r10
!   _temp_1905 = &serialLock
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-36]
!   _temp_1906 = &getCharacterAvail
	load	[r14+8],r1
	add	r1,60,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_1905  sizeInBytes=4
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
	jmp	_Label_1902
_Label_1904:
! ASSIGNMENT STATEMENT...
	mov	2990,r13		! source line 2990
	mov	"\0\0AS",r10
!   _temp_1907 = &getBuffer
	load	[r14+8],r1
	add	r1,32,r1
	store	r1,[r14+-28]
!   Move address of _temp_1907 [getBufferNextOut ] into _temp_1908
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
!   Data Move: c = *_temp_1908  (sizeInBytes=1)
	load	[r14+-24],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
! ASSIGNMENT STATEMENT...
	mov	2991,r13		! source line 2991
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
	mov	2992,r13		! source line 2992
	mov	"\0\0AS",r10
!   _temp_1909 = getBufferNextOut + 1		(int)
	load	[r14+8],r1
	load	[r1+56],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   getBufferNextOut = _temp_1909 rem 10		(int)
	load	[r14+-20],r1
	mov	10,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+56]
! SEND STATEMENT...
	mov	2993,r13		! source line 2993
	mov	"\0\0SE",r10
!   _temp_1910 = &serialLock
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
	mov	2994,r13		! source line 2994
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
	.word	_Label_1911
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_1912
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1913
	.word	-16
	.word	4
	.word	_Label_1914
	.word	-20
	.word	4
	.word	_Label_1915
	.word	-24
	.word	4
	.word	_Label_1916
	.word	-28
	.word	4
	.word	_Label_1917
	.word	-32
	.word	4
	.word	_Label_1918
	.word	-36
	.word	4
	.word	_Label_1919
	.word	-40
	.word	4
	.word	_Label_1920
	.word	-9
	.word	1
	.word	0
_Label_1911:
	.ascii	"SerialDriver"
	.ascii	"::"
	.ascii	"GetChar\0"
	.align
_Label_1912:
	.ascii	"Pself\0"
	.align
_Label_1913:
	.byte	'?'
	.ascii	"_temp_1910\0"
	.align
_Label_1914:
	.byte	'?'
	.ascii	"_temp_1909\0"
	.align
_Label_1915:
	.byte	'?'
	.ascii	"_temp_1908\0"
	.align
_Label_1916:
	.byte	'?'
	.ascii	"_temp_1907\0"
	.align
_Label_1917:
	.byte	'?'
	.ascii	"_temp_1906\0"
	.align
_Label_1918:
	.byte	'?'
	.ascii	"_temp_1905\0"
	.align
_Label_1919:
	.byte	'?'
	.ascii	"_temp_1901\0"
	.align
_Label_1920:
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
_Label_4408:
	push	r0
	sub	r1,1,r1
	bne	_Label_4408
	mov	2997,r13		! source line 2997
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	3001,r13		! source line 3001
	mov	"\0\0WH",r10
_Label_1921:
!   _temp_1924 = _P_Kernel_serialHasBeenInitialized XOR 0		(bool)
	set	_P_Kernel_serialHasBeenInitialized,r1
	loadb	[r1],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_1924 then goto _Label_1923 else goto _Label_1922
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1922
	jmp	_Label_1923
_Label_1922:
	mov	3001,r13		! source line 3001
	mov	"\0\0WB",r10
! END WHILE...
	jmp	_Label_1921
_Label_1923:
! WHILE STATEMENT...
	mov	3003,r13		! source line 3003
	mov	"\0\0WH",r10
_Label_1925:
!	jmp	_Label_1926
_Label_1926:
	mov	3003,r13		! source line 3003
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	3004,r13		! source line 3004
	mov	"\0\0SE",r10
!   _temp_1928 = &serialNeedsAttention
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
	mov	3005,r13		! source line 3005
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
	mov	3007,r13		! source line 3007
	mov	"\0\0IF",r10
!   _temp_1931 = statusReg AND 1		(int)
	load	[r14+-96],r1
	mov	1,r2
	and	r1,r2,r1
	store	r1,[r14+-88]
!   if _temp_1931 <= 0 then goto _Label_1930		(int)
	load	[r14+-88],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1930
!	jmp	_Label_1929
_Label_1929:
! THEN...
	mov	3008,r13		! source line 3008
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	3008,r13		! source line 3008
	mov	"\0\0AS",r10
!   if intIsZero (serial_data_word_address) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1932 = *serial_data_word_address  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+8],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   c = intToChar (_temp_1932)
	load	[r14+-84],r1
	storeb	r1,[r14+-10]
! IF STATEMENT...
	mov	3009,r13		! source line 3009
	mov	"\0\0IF",r10
!   if getBufferSize != 10 then goto _Label_1934		(int)
	load	[r14+8],r1
	load	[r1+48],r1
	mov	10,r2
	cmp	r1,r2
	bne	_Label_1934
!	jmp	_Label_1933
_Label_1933:
! THEN...
	mov	3010,r13		! source line 3010
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1935 = _StringConst_46
	set	_StringConst_46,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_1935  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	3010,r13		! source line 3010
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=c  sizeInBytes=1
	loadb	[r14+-10],r1
	storeb	r1,[r15+0]
!   Call the function
	mov	3011,r13		! source line 3011
	mov	"\0\0CE",r10
	call	printChar
! CALL STATEMENT...
!   _temp_1936 = _StringConst_47
	set	_StringConst_47,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1936  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	3012,r13		! source line 3012
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1937
_Label_1934:
! ELSE...
	mov	3014,r13		! source line 3014
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	3014,r13		! source line 3014
	mov	"\0\0SE",r10
!   _temp_1938 = &serialLock
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
	mov	3015,r13		! source line 3015
	mov	"\0\0AS",r10
!   _temp_1939 = &getBuffer
	load	[r14+8],r1
	add	r1,32,r1
	store	r1,[r14+-68]
!   Move address of _temp_1939 [getBufferNextIn ] into _temp_1940
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
!   Data Move: *_temp_1940 = c  (sizeInBytes=1)
	loadb	[r14+-10],r1
	load	[r14+-64],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3016,r13		! source line 3016
	mov	"\0\0AS",r10
!   _temp_1941 = getBufferNextIn + 1		(int)
	load	[r14+8],r1
	load	[r1+52],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   getBufferNextIn = _temp_1941 rem 10		(int)
	load	[r14+-60],r1
	mov	10,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+52]
! ASSIGNMENT STATEMENT...
	mov	3017,r13		! source line 3017
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
	mov	3018,r13		! source line 3018
	mov	"\0\0SE",r10
!   _temp_1942 = &serialLock
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-56]
!   _temp_1943 = &getCharacterAvail
	load	[r14+8],r1
	add	r1,60,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_1942  sizeInBytes=4
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
	mov	3019,r13		! source line 3019
	mov	"\0\0SE",r10
!   _temp_1944 = &serialLock
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
_Label_1937:
! END IF...
_Label_1930:
! IF STATEMENT...
	mov	3023,r13		! source line 3023
	mov	"\0\0IF",r10
!   _temp_1947 = statusReg AND 2		(int)
	load	[r14+-96],r1
	mov	2,r2
	and	r1,r2,r1
	store	r1,[r14+-44]
!   if _temp_1947 <= 0 then goto _Label_1946		(int)
	load	[r14+-44],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1946
!	jmp	_Label_1945
_Label_1945:
! THEN...
	mov	3024,r13		! source line 3024
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	3024,r13		! source line 3024
	mov	"\0\0SE",r10
!   _temp_1948 = &serialLock
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
	mov	3025,r13		! source line 3025
	mov	"\0\0IF",r10
!   if putBufferSize <= 0 then goto _Label_1950		(int)
	load	[r14+8],r1
	load	[r1+92],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1950
!	jmp	_Label_1949
_Label_1949:
! THEN...
	mov	3026,r13		! source line 3026
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	3026,r13		! source line 3026
	mov	"\0\0AS",r10
!   _temp_1951 = &putBuffer
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-36]
!   Move address of _temp_1951 [putBufferNextOut ] into _temp_1952
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
!   Data Move: c = *_temp_1952  (sizeInBytes=1)
	load	[r14+-32],r1
	loadb	[r1],r1
	storeb	r1,[r14+-10]
! ASSIGNMENT STATEMENT...
	mov	3027,r13		! source line 3027
	mov	"\0\0AS",r10
!   _temp_1953 = putBufferNextOut + 1		(int)
	load	[r14+8],r1
	load	[r1+100],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   putBufferNextOut = _temp_1953 rem 10		(int)
	load	[r14+-28],r1
	mov	10,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+100]
! ASSIGNMENT STATEMENT...
	mov	3028,r13		! source line 3028
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
	mov	3029,r13		! source line 3029
	mov	"\0\0AS",r10
!   if intIsZero (serial_data_word_address) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1954 = charToInt (c)
	loadb	[r14+-10],r1
	sll	r1,24,r1
	sra	r1,24,r1
	store	r1,[r14+-24]
!   Data Move: *serial_data_word_address = _temp_1954  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+8],r2
	load	[r2+8],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	3030,r13		! source line 3030
	mov	"\0\0SE",r10
!   _temp_1955 = &putBufferSem
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
_Label_1950:
! SEND STATEMENT...
	mov	3032,r13		! source line 3032
	mov	"\0\0SE",r10
!   _temp_1956 = &serialLock
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
_Label_1946:
! END WHILE...
	jmp	_Label_1925
_Label_1927:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_SerialDriver_4:
	.word	_sourceFileName
	.word	_Label_1957
	.word	4		! total size of parameters
	.word	96		! frame size = 96
	.word	_Label_1958
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1959
	.word	-16
	.word	4
	.word	_Label_1960
	.word	-20
	.word	4
	.word	_Label_1961
	.word	-24
	.word	4
	.word	_Label_1962
	.word	-28
	.word	4
	.word	_Label_1963
	.word	-32
	.word	4
	.word	_Label_1964
	.word	-36
	.word	4
	.word	_Label_1965
	.word	-40
	.word	4
	.word	_Label_1966
	.word	-44
	.word	4
	.word	_Label_1967
	.word	-48
	.word	4
	.word	_Label_1968
	.word	-52
	.word	4
	.word	_Label_1969
	.word	-56
	.word	4
	.word	_Label_1970
	.word	-60
	.word	4
	.word	_Label_1971
	.word	-64
	.word	4
	.word	_Label_1972
	.word	-68
	.word	4
	.word	_Label_1973
	.word	-72
	.word	4
	.word	_Label_1974
	.word	-76
	.word	4
	.word	_Label_1975
	.word	-80
	.word	4
	.word	_Label_1976
	.word	-84
	.word	4
	.word	_Label_1977
	.word	-88
	.word	4
	.word	_Label_1978
	.word	-92
	.word	4
	.word	_Label_1979
	.word	-9
	.word	1
	.word	_Label_1980
	.word	-10
	.word	1
	.word	_Label_1981
	.word	-96
	.word	4
	.word	0
_Label_1957:
	.ascii	"SerialDriver"
	.ascii	"::"
	.ascii	"SerialHandler\0"
	.align
_Label_1958:
	.ascii	"Pself\0"
	.align
_Label_1959:
	.byte	'?'
	.ascii	"_temp_1956\0"
	.align
_Label_1960:
	.byte	'?'
	.ascii	"_temp_1955\0"
	.align
_Label_1961:
	.byte	'?'
	.ascii	"_temp_1954\0"
	.align
_Label_1962:
	.byte	'?'
	.ascii	"_temp_1953\0"
	.align
_Label_1963:
	.byte	'?'
	.ascii	"_temp_1952\0"
	.align
_Label_1964:
	.byte	'?'
	.ascii	"_temp_1951\0"
	.align
_Label_1965:
	.byte	'?'
	.ascii	"_temp_1948\0"
	.align
_Label_1966:
	.byte	'?'
	.ascii	"_temp_1947\0"
	.align
_Label_1967:
	.byte	'?'
	.ascii	"_temp_1944\0"
	.align
_Label_1968:
	.byte	'?'
	.ascii	"_temp_1943\0"
	.align
_Label_1969:
	.byte	'?'
	.ascii	"_temp_1942\0"
	.align
_Label_1970:
	.byte	'?'
	.ascii	"_temp_1941\0"
	.align
_Label_1971:
	.byte	'?'
	.ascii	"_temp_1940\0"
	.align
_Label_1972:
	.byte	'?'
	.ascii	"_temp_1939\0"
	.align
_Label_1973:
	.byte	'?'
	.ascii	"_temp_1938\0"
	.align
_Label_1974:
	.byte	'?'
	.ascii	"_temp_1936\0"
	.align
_Label_1975:
	.byte	'?'
	.ascii	"_temp_1935\0"
	.align
_Label_1976:
	.byte	'?'
	.ascii	"_temp_1932\0"
	.align
_Label_1977:
	.byte	'?'
	.ascii	"_temp_1931\0"
	.align
_Label_1978:
	.byte	'?'
	.ascii	"_temp_1928\0"
	.align
_Label_1979:
	.byte	'C'
	.ascii	"_temp_1924\0"
	.align
_Label_1980:
	.byte	'C'
	.ascii	"c\0"
	.align
_Label_1981:
	.byte	'I'
	.ascii	"statusReg\0"
	.align
! 
! ===============  CLASS Semaphore  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Semaphore:
	.word	_Label_1982
	jmp	_Method_P_Kernel_Semaphore_1	! 4:	Init
	jmp	_Method_P_Kernel_Semaphore_3	! 8:	Down
	jmp	_Method_P_Kernel_Semaphore_2	! 12:	Up
	.word	0
! 
! Class descriptor:
! 
_Label_1982:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1983
	.word	_sourceFileName
	.word	159		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Semaphore
	.word	_P_System_Object
	.word	0
_Label_1983:
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
_Label_4409:
	push	r0
	sub	r1,1,r1
	bne	_Label_4409
	mov	279,r13		! source line 279
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	280,r13		! source line 280
	mov	"\0\0IF",r10
!   if initialCount >= 0 then goto _Label_1985		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1985
!	jmp	_Label_1984
_Label_1984:
! THEN...
	mov	281,r13		! source line 281
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1986 = _StringConst_48
	set	_StringConst_48,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1986  sizeInBytes=4
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
_Label_1985:
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
	.word	_Label_1988
	.word	8		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1989
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1990
	.word	12
	.word	4
	.word	_Label_1991
	.word	-12
	.word	4
	.word	_Label_1992
	.word	-16
	.word	4
	.word	0
_Label_1988:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1989:
	.ascii	"Pself\0"
	.align
_Label_1990:
	.byte	'I'
	.ascii	"initialCount\0"
	.align
_Label_1991:
	.byte	'?'
	.ascii	"_temp_1987\0"
	.align
_Label_1992:
	.byte	'?'
	.ascii	"_temp_1986\0"
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
_Label_4410:
	push	r0
	sub	r1,1,r1
	bne	_Label_4410
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
!   if count != 2147483647 then goto _Label_1994		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	2147483647,r2
	cmp	r1,r2
	bne	_Label_1994
!	jmp	_Label_1993
_Label_1993:
! THEN...
	mov	295,r13		! source line 295
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1995 = _StringConst_49
	set	_StringConst_49,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1995  sizeInBytes=4
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
_Label_1994:
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
!   if count > 0 then goto _Label_1997		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1997
!	jmp	_Label_1996
_Label_1996:
! THEN...
	mov	299,r13		! source line 299
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	299,r13		! source line 299
	mov	"\0\0AS",r10
	mov	299,r13		! source line 299
	mov	"\0\0SE",r10
!   _temp_1998 = &waitingThreads
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
!   _temp_1999 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1999 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	301,r13		! source line 301
	mov	"\0\0SE",r10
!   _temp_2000 = &_P_Kernel_readyList
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
_Label_1997:
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
	.word	_Label_2001
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_2002
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2003
	.word	-12
	.word	4
	.word	_Label_2004
	.word	-16
	.word	4
	.word	_Label_2005
	.word	-20
	.word	4
	.word	_Label_2006
	.word	-24
	.word	4
	.word	_Label_2007
	.word	-28
	.word	4
	.word	_Label_2008
	.word	-32
	.word	4
	.word	0
_Label_2001:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Up\0"
	.align
_Label_2002:
	.ascii	"Pself\0"
	.align
_Label_2003:
	.byte	'?'
	.ascii	"_temp_2000\0"
	.align
_Label_2004:
	.byte	'?'
	.ascii	"_temp_1999\0"
	.align
_Label_2005:
	.byte	'?'
	.ascii	"_temp_1998\0"
	.align
_Label_2006:
	.byte	'?'
	.ascii	"_temp_1995\0"
	.align
_Label_2007:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_2008:
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
_Label_4411:
	push	r0
	sub	r1,1,r1
	bne	_Label_4411
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
!   if count != -2147483648 then goto _Label_2010		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	0x80000000,r2
	cmp	r1,r2
	bne	_Label_2010
!	jmp	_Label_2009
_Label_2009:
! THEN...
	mov	313,r13		! source line 313
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2011 = _StringConst_50
	set	_StringConst_50,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2011  sizeInBytes=4
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
_Label_2010:
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
!   if count >= 0 then goto _Label_2013		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2013
!	jmp	_Label_2012
_Label_2012:
! THEN...
	mov	317,r13		! source line 317
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	317,r13		! source line 317
	mov	"\0\0SE",r10
!   _temp_2014 = &waitingThreads
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
_Label_2013:
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
	.word	_Label_2015
	.word	4		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2016
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2017
	.word	-12
	.word	4
	.word	_Label_2018
	.word	-16
	.word	4
	.word	_Label_2019
	.word	-20
	.word	4
	.word	0
_Label_2015:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Down\0"
	.align
_Label_2016:
	.ascii	"Pself\0"
	.align
_Label_2017:
	.byte	'?'
	.ascii	"_temp_2014\0"
	.align
_Label_2018:
	.byte	'?'
	.ascii	"_temp_2011\0"
	.align
_Label_2019:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Mutex  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Mutex:
	.word	_Label_2020
	jmp	_Method_P_Kernel_Mutex_1	! 4:	Init
	jmp	_Method_P_Kernel_Mutex_2	! 8:	Lock
	jmp	_Method_P_Kernel_Mutex_3	! 12:	Unlock
	jmp	_Method_P_Kernel_Mutex_4	! 16:	IsHeldByCurrentThread
	.word	0
! 
! Class descriptor:
! 
_Label_2020:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2021
	.word	_sourceFileName
	.word	172		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Mutex
	.word	_P_System_Object
	.word	0
_Label_2021:
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
_Label_4412:
	push	r0
	sub	r1,1,r1
	bne	_Label_4412
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
	.word	_Label_2023
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_2024
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2025
	.word	-12
	.word	4
	.word	0
_Label_2023:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2024:
	.ascii	"Pself\0"
	.align
_Label_2025:
	.byte	'?'
	.ascii	"_temp_2022\0"
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
_Label_4413:
	push	r0
	sub	r1,1,r1
	bne	_Label_4413
	mov	349,r13		! source line 349
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	352,r13		! source line 352
	mov	"\0\0IF",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_2027		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_2027
!	jmp	_Label_2026
_Label_2026:
! THEN...
	mov	353,r13		! source line 353
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2028 = _StringConst_51
	set	_StringConst_51,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2028  sizeInBytes=4
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
_Label_2027:
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
!   if heldBy == 0 then goto _Label_2032		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2032
!   _temp_2031 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2033
_Label_2032:
!   _temp_2031 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2033:
!   if _temp_2031 then goto _Label_2030 else goto _Label_2029
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2029
	jmp	_Label_2030
_Label_2029:
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
	jmp	_Label_2034
_Label_2030:
! ELSE...
	mov	359,r13		! source line 359
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	359,r13		! source line 359
	mov	"\0\0SE",r10
!   _temp_2035 = &waitingThreads
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
_Label_2034:
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
	.word	_Label_2036
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2037
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2038
	.word	-16
	.word	4
	.word	_Label_2039
	.word	-9
	.word	1
	.word	_Label_2040
	.word	-20
	.word	4
	.word	_Label_2041
	.word	-24
	.word	4
	.word	0
_Label_2036:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_2037:
	.ascii	"Pself\0"
	.align
_Label_2038:
	.byte	'?'
	.ascii	"_temp_2035\0"
	.align
_Label_2039:
	.byte	'C'
	.ascii	"_temp_2031\0"
	.align
_Label_2040:
	.byte	'?'
	.ascii	"_temp_2028\0"
	.align
_Label_2041:
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
_Label_4414:
	push	r0
	sub	r1,1,r1
	bne	_Label_4414
	mov	367,r13		! source line 367
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	371,r13		! source line 371
	mov	"\0\0IF",r10
!   if heldBy == _P_Kernel_currentThread then goto _Label_2043		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_2043
!	jmp	_Label_2042
_Label_2042:
! THEN...
	mov	372,r13		! source line 372
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2044 = _StringConst_52
	set	_StringConst_52,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2044  sizeInBytes=4
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
_Label_2043:
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
!   _temp_2045 = &waitingThreads
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
!   if t == 0 then goto _Label_2047		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2047
!	jmp	_Label_2046
_Label_2046:
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
!   _temp_2048 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2048 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	378,r13		! source line 378
	mov	"\0\0SE",r10
!   _temp_2049 = &_P_Kernel_readyList
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
	jmp	_Label_2050
_Label_2047:
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
_Label_2050:
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
	.word	_Label_2051
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_2052
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2053
	.word	-12
	.word	4
	.word	_Label_2054
	.word	-16
	.word	4
	.word	_Label_2055
	.word	-20
	.word	4
	.word	_Label_2056
	.word	-24
	.word	4
	.word	_Label_2057
	.word	-28
	.word	4
	.word	_Label_2058
	.word	-32
	.word	4
	.word	0
_Label_2051:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_2052:
	.ascii	"Pself\0"
	.align
_Label_2053:
	.byte	'?'
	.ascii	"_temp_2049\0"
	.align
_Label_2054:
	.byte	'?'
	.ascii	"_temp_2048\0"
	.align
_Label_2055:
	.byte	'?'
	.ascii	"_temp_2045\0"
	.align
_Label_2056:
	.byte	'?'
	.ascii	"_temp_2044\0"
	.align
_Label_2057:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_2058:
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
_Label_4415:
	push	r0
	sub	r1,1,r1
	bne	_Label_4415
	mov	388,r13		! source line 388
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	389,r13		! source line 389
	mov	"\0\0RE",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_2061		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_2061
!	jmp	_Label_2060
_Label_2060:
!   _temp_2059 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2062
_Label_2061:
!   _temp_2059 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2062:
!   ReturnResult: _temp_2059  (sizeInBytes=1)
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
	.word	_Label_2063
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_2064
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2065
	.word	-9
	.word	1
	.word	0
_Label_2063:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_2064:
	.ascii	"Pself\0"
	.align
_Label_2065:
	.byte	'C'
	.ascii	"_temp_2059\0"
	.align
! 
! ===============  CLASS Condition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Condition:
	.word	_Label_2066
	jmp	_Method_P_Kernel_Condition_1	! 4:	Init
	jmp	_Method_P_Kernel_Condition_2	! 8:	Wait
	jmp	_Method_P_Kernel_Condition_3	! 12:	Signal
	jmp	_Method_P_Kernel_Condition_4	! 16:	Broadcast
	.word	0
! 
! Class descriptor:
! 
_Label_2066:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2067
	.word	_sourceFileName
	.word	186		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Kernel_Condition
	.word	_P_System_Object
	.word	0
_Label_2067:
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
_Label_4416:
	push	r0
	sub	r1,1,r1
	bne	_Label_4416
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
	.word	_Label_2069
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_2070
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2071
	.word	-12
	.word	4
	.word	0
_Label_2069:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2070:
	.ascii	"Pself\0"
	.align
_Label_2071:
	.byte	'?'
	.ascii	"_temp_2068\0"
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
_Label_4417:
	push	r0
	sub	r1,1,r1
	bne	_Label_4417
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
!   Retrieve Result: targetName=_temp_2074  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_2074 then goto _Label_2073 else goto _Label_2072
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2072
	jmp	_Label_2073
_Label_2072:
! THEN...
	mov	439,r13		! source line 439
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2075 = _StringConst_53
	set	_StringConst_53,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2075  sizeInBytes=4
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
_Label_2073:
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
!   _temp_2076 = &waitingThreads
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
	.word	_Label_2077
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2078
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2079
	.word	12
	.word	4
	.word	_Label_2080
	.word	-16
	.word	4
	.word	_Label_2081
	.word	-20
	.word	4
	.word	_Label_2082
	.word	-9
	.word	1
	.word	_Label_2083
	.word	-24
	.word	4
	.word	0
_Label_2077:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_2078:
	.ascii	"Pself\0"
	.align
_Label_2079:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_2080:
	.byte	'?'
	.ascii	"_temp_2076\0"
	.align
_Label_2081:
	.byte	'?'
	.ascii	"_temp_2075\0"
	.align
_Label_2082:
	.byte	'C'
	.ascii	"_temp_2074\0"
	.align
_Label_2083:
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
_Label_4418:
	push	r0
	sub	r1,1,r1
	bne	_Label_4418
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
!   Retrieve Result: targetName=_temp_2086  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_2086 then goto _Label_2085 else goto _Label_2084
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2084
	jmp	_Label_2085
_Label_2084:
! THEN...
	mov	456,r13		! source line 456
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2087 = _StringConst_54
	set	_StringConst_54,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2087  sizeInBytes=4
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
_Label_2085:
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
!   _temp_2088 = &waitingThreads
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
!   if t == 0 then goto _Label_2090		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2090
!	jmp	_Label_2089
_Label_2089:
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
!   _temp_2091 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2091 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	462,r13		! source line 462
	mov	"\0\0SE",r10
!   _temp_2092 = &_P_Kernel_readyList
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
_Label_2090:
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
	.word	_Label_2093
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_2094
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2095
	.word	12
	.word	4
	.word	_Label_2096
	.word	-16
	.word	4
	.word	_Label_2097
	.word	-20
	.word	4
	.word	_Label_2098
	.word	-24
	.word	4
	.word	_Label_2099
	.word	-28
	.word	4
	.word	_Label_2100
	.word	-9
	.word	1
	.word	_Label_2101
	.word	-32
	.word	4
	.word	_Label_2102
	.word	-36
	.word	4
	.word	0
_Label_2093:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_2094:
	.ascii	"Pself\0"
	.align
_Label_2095:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_2096:
	.byte	'?'
	.ascii	"_temp_2092\0"
	.align
_Label_2097:
	.byte	'?'
	.ascii	"_temp_2091\0"
	.align
_Label_2098:
	.byte	'?'
	.ascii	"_temp_2088\0"
	.align
_Label_2099:
	.byte	'?'
	.ascii	"_temp_2087\0"
	.align
_Label_2100:
	.byte	'C'
	.ascii	"_temp_2086\0"
	.align
_Label_2101:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_2102:
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
_Label_4419:
	push	r0
	sub	r1,1,r1
	bne	_Label_4419
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
!   Retrieve Result: targetName=_temp_2105  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_2105 then goto _Label_2104 else goto _Label_2103
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2103
	jmp	_Label_2104
_Label_2103:
! THEN...
	mov	474,r13		! source line 474
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2106 = _StringConst_55
	set	_StringConst_55,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2106  sizeInBytes=4
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
_Label_2104:
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
_Label_2107:
!	jmp	_Label_2108
_Label_2108:
	mov	477,r13		! source line 477
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	478,r13		! source line 478
	mov	"\0\0AS",r10
	mov	478,r13		! source line 478
	mov	"\0\0SE",r10
!   _temp_2110 = &waitingThreads
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
!   if intIsZero (t) then goto _Label_2111
	load	[r14+-36],r1
	cmp	r1,r0
	be	_Label_2111
	jmp	_Label_2112
_Label_2111:
! THEN...
	mov	480,r13		! source line 480
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	480,r13		! source line 480
	mov	"\0\0BR",r10
	jmp	_Label_2109
! END IF...
_Label_2112:
! ASSIGNMENT STATEMENT...
	mov	482,r13		! source line 482
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2113 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2113 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	483,r13		! source line 483
	mov	"\0\0SE",r10
!   _temp_2114 = &_P_Kernel_readyList
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
	jmp	_Label_2107
_Label_2109:
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
	.word	_Label_2115
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_2116
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2117
	.word	12
	.word	4
	.word	_Label_2118
	.word	-16
	.word	4
	.word	_Label_2119
	.word	-20
	.word	4
	.word	_Label_2120
	.word	-24
	.word	4
	.word	_Label_2121
	.word	-28
	.word	4
	.word	_Label_2122
	.word	-9
	.word	1
	.word	_Label_2123
	.word	-32
	.word	4
	.word	_Label_2124
	.word	-36
	.word	4
	.word	0
_Label_2115:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Broadcast\0"
	.align
_Label_2116:
	.ascii	"Pself\0"
	.align
_Label_2117:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_2118:
	.byte	'?'
	.ascii	"_temp_2114\0"
	.align
_Label_2119:
	.byte	'?'
	.ascii	"_temp_2113\0"
	.align
_Label_2120:
	.byte	'?'
	.ascii	"_temp_2110\0"
	.align
_Label_2121:
	.byte	'?'
	.ascii	"_temp_2106\0"
	.align
_Label_2122:
	.byte	'C'
	.ascii	"_temp_2105\0"
	.align
_Label_2123:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_2124:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  CLASS Thread  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Thread:
	.word	_Label_2125
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
_Label_2125:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2126
	.word	_sourceFileName
	.word	199		! line number
	.word	4164		! size of instances, in bytes
	.word	_P_Kernel_Thread
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_2126:
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
_Label_4420:
	push	r0
	sub	r1,1,r1
	bne	_Label_4420
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
!   _temp_2127 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_2127) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_2127 = 1000  (sizeInBytes=4)
	mov	1000,r1
	load	[r14+-188],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	505,r13		! source line 505
	mov	"\0\0AS",r10
!   _temp_2128 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-184]
!   Move address of _temp_2128 [0 ] into _temp_2129
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
!   Data Move: *_temp_2129 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-180],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	506,r13		! source line 506
	mov	"\0\0AS",r10
!   _temp_2130 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-176]
!   Move address of _temp_2130 [999 ] into _temp_2131
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
!   Data Move: *_temp_2131 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-172],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	507,r13		! source line 507
	mov	"\0\0AS",r10
!   _temp_2132 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-168]
!   Move address of _temp_2132 [999 ] into _temp_2133
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
!   stackTop = _temp_2133		(4 bytes)
	load	[r14+-164],r1
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	508,r13		! source line 508
	mov	"\0\0AS",r10
!   _temp_2134 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-160]
!   NEW ARRAY Constructor...
!   _temp_2136 = &_temp_2135
	add	r14,-156,r1
	store	r1,[r14+-100]
!   _temp_2136 = _temp_2136 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Next value...
	mov	13,r1
	store	r1,[r14+-96]
_Label_2138:
!   Data Move: *_temp_2136 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-100],r2
	store	r1,[r2]
!   _temp_2136 = _temp_2136 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   _temp_2137 = _temp_2137 + -1
	load	[r14+-96],r1
	add	r1,-1,r1
	store	r1,[r14+-96]
!   if intNotZero (_temp_2137) then goto _Label_2138
	load	[r14+-96],r1
	cmp	r1,r0
	bne	_Label_2138
!   Initialize the array size...
	mov	13,r1
	store	r1,[r14+-156]
!   _temp_2139 = &_temp_2135
	add	r14,-156,r1
	store	r1,[r14+-92]
!   make sure array has size 13
	load	[r14+-160],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,0
	be	_Label_4421
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4421:
!   make sure array has size 13
	load	[r14+-92],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2134 = *_temp_2139  (sizeInBytes=56)
	load	[r14+-92],r5
	load	[r14+-160],r4
	mov	14,r3
_Label_4422:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4422
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
!   _temp_2140 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-88]
!   NEW ARRAY Constructor...
!   _temp_2142 = &_temp_2141
	add	r14,-84,r1
	store	r1,[r14+-20]
!   _temp_2142 = _temp_2142 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	15,r1
	store	r1,[r14+-16]
_Label_2144:
!   Data Move: *_temp_2142 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_2142 = _temp_2142 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_2143 = _temp_2143 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_2143) then goto _Label_2144
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_2144
!   Initialize the array size...
	mov	15,r1
	store	r1,[r14+-84]
!   _temp_2145 = &_temp_2141
	add	r14,-84,r1
	store	r1,[r14+-12]
!   make sure array has size 15
	load	[r14+-88],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,0
	be	_Label_4423
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4423:
!   make sure array has size 15
	load	[r14+-12],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2140 = *_temp_2145  (sizeInBytes=64)
	load	[r14+-12],r5
	load	[r14+-88],r4
	mov	16,r3
_Label_4424:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4424
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
	.word	_Label_2146
	.word	8		! total size of parameters
	.word	180		! frame size = 180
	.word	_Label_2147
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2148
	.word	12
	.word	4
	.word	_Label_2149
	.word	-12
	.word	4
	.word	_Label_2150
	.word	-16
	.word	4
	.word	_Label_2151
	.word	-20
	.word	4
	.word	_Label_2152
	.word	-84
	.word	64
	.word	_Label_2153
	.word	-88
	.word	4
	.word	_Label_2154
	.word	-92
	.word	4
	.word	_Label_2155
	.word	-96
	.word	4
	.word	_Label_2156
	.word	-100
	.word	4
	.word	_Label_2157
	.word	-156
	.word	56
	.word	_Label_2158
	.word	-160
	.word	4
	.word	_Label_2159
	.word	-164
	.word	4
	.word	_Label_2160
	.word	-168
	.word	4
	.word	_Label_2161
	.word	-172
	.word	4
	.word	_Label_2162
	.word	-176
	.word	4
	.word	_Label_2163
	.word	-180
	.word	4
	.word	_Label_2164
	.word	-184
	.word	4
	.word	_Label_2165
	.word	-188
	.word	4
	.word	0
_Label_2146:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2147:
	.ascii	"Pself\0"
	.align
_Label_2148:
	.byte	'P'
	.ascii	"n\0"
	.align
_Label_2149:
	.byte	'?'
	.ascii	"_temp_2145\0"
	.align
_Label_2150:
	.byte	'?'
	.ascii	"_temp_2143\0"
	.align
_Label_2151:
	.byte	'?'
	.ascii	"_temp_2142\0"
	.align
_Label_2152:
	.byte	'?'
	.ascii	"_temp_2141\0"
	.align
_Label_2153:
	.byte	'?'
	.ascii	"_temp_2140\0"
	.align
_Label_2154:
	.byte	'?'
	.ascii	"_temp_2139\0"
	.align
_Label_2155:
	.byte	'?'
	.ascii	"_temp_2137\0"
	.align
_Label_2156:
	.byte	'?'
	.ascii	"_temp_2136\0"
	.align
_Label_2157:
	.byte	'?'
	.ascii	"_temp_2135\0"
	.align
_Label_2158:
	.byte	'?'
	.ascii	"_temp_2134\0"
	.align
_Label_2159:
	.byte	'?'
	.ascii	"_temp_2133\0"
	.align
_Label_2160:
	.byte	'?'
	.ascii	"_temp_2132\0"
	.align
_Label_2161:
	.byte	'?'
	.ascii	"_temp_2131\0"
	.align
_Label_2162:
	.byte	'?'
	.ascii	"_temp_2130\0"
	.align
_Label_2163:
	.byte	'?'
	.ascii	"_temp_2129\0"
	.align
_Label_2164:
	.byte	'?'
	.ascii	"_temp_2128\0"
	.align
_Label_2165:
	.byte	'?'
	.ascii	"_temp_2127\0"
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
_Label_4425:
	push	r0
	sub	r1,1,r1
	bne	_Label_4425
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
!   _temp_2166 = ThreadStartUp
	set	ThreadStartUp,r1
	store	r1,[r14+-20]
!   Data Move: *stackTop = _temp_2166  (sizeInBytes=4)
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
!   _temp_2168 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2167  sizeInBytes=4
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
	.word	_Label_2169
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2170
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2171
	.word	12
	.word	4
	.word	_Label_2172
	.word	16
	.word	4
	.word	_Label_2173
	.word	-12
	.word	4
	.word	_Label_2174
	.word	-16
	.word	4
	.word	_Label_2175
	.word	-20
	.word	4
	.word	_Label_2176
	.word	-24
	.word	4
	.word	_Label_2177
	.word	-28
	.word	4
	.word	0
_Label_2169:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Fork\0"
	.align
_Label_2170:
	.ascii	"Pself\0"
	.align
_Label_2171:
	.byte	'P'
	.ascii	"fun\0"
	.align
_Label_2172:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_2173:
	.byte	'?'
	.ascii	"_temp_2168\0"
	.align
_Label_2174:
	.byte	'?'
	.ascii	"_temp_2167\0"
	.align
_Label_2175:
	.byte	'?'
	.ascii	"_temp_2166\0"
	.align
_Label_2176:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_2177:
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
_Label_4426:
	push	r0
	sub	r1,1,r1
	bne	_Label_4426
	mov	539,r13		! source line 539
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	555,r13		! source line 555
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if _temp_2180 == _P_Kernel_currentThread then goto _Label_2179		(int)
	load	[r14+-32],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_2179
!	jmp	_Label_2178
_Label_2178:
! THEN...
	mov	556,r13		! source line 556
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2181 = _StringConst_56
	set	_StringConst_56,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2181  sizeInBytes=4
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
_Label_2179:
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
!   _temp_2182 = &_P_Kernel_readyList
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
!   if nextTh == 0 then goto _Label_2184		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2184
!	jmp	_Label_2183
_Label_2183:
! THEN...
	mov	567,r13		! source line 567
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	567,r13		! source line 567
	mov	"\0\0IF",r10
!   if status != 4 then goto _Label_2186		(int)
	load	[r14+8],r1
	load	[r1+76],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_2186
!	jmp	_Label_2185
_Label_2185:
! THEN...
	mov	568,r13		! source line 568
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2187 = _StringConst_57
	set	_StringConst_57,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2187  sizeInBytes=4
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
_Label_2186:
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
!   _temp_2189 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2188  sizeInBytes=4
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
_Label_2184:
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
	.word	_Label_2190
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_2191
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2192
	.word	-12
	.word	4
	.word	_Label_2193
	.word	-16
	.word	4
	.word	_Label_2194
	.word	-20
	.word	4
	.word	_Label_2195
	.word	-24
	.word	4
	.word	_Label_2196
	.word	-28
	.word	4
	.word	_Label_2197
	.word	-32
	.word	4
	.word	_Label_2198
	.word	-36
	.word	4
	.word	_Label_2199
	.word	-40
	.word	4
	.word	_Label_2200
	.word	-44
	.word	4
	.word	0
_Label_2190:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Yield\0"
	.align
_Label_2191:
	.ascii	"Pself\0"
	.align
_Label_2192:
	.byte	'?'
	.ascii	"_temp_2189\0"
	.align
_Label_2193:
	.byte	'?'
	.ascii	"_temp_2188\0"
	.align
_Label_2194:
	.byte	'?'
	.ascii	"_temp_2187\0"
	.align
_Label_2195:
	.byte	'?'
	.ascii	"_temp_2182\0"
	.align
_Label_2196:
	.byte	'?'
	.ascii	"_temp_2181\0"
	.align
_Label_2197:
	.byte	'?'
	.ascii	"_temp_2180\0"
	.align
_Label_2198:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
_Label_2199:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_2200:
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
_Label_4427:
	push	r0
	sub	r1,1,r1
	bne	_Label_4427
	mov	579,r13		! source line 579
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	591,r13		! source line 591
	mov	"\0\0IF",r10
!   if _P_Kernel_currentInterruptStatus == 2 then goto _Label_2202		(int)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_2202
!	jmp	_Label_2201
_Label_2201:
! THEN...
	mov	592,r13		! source line 592
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2203 = _StringConst_58
	set	_StringConst_58,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2203  sizeInBytes=4
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
_Label_2202:
! IF STATEMENT...
	mov	595,r13		! source line 595
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if _temp_2206 == _P_Kernel_currentThread then goto _Label_2205		(int)
	load	[r14+-24],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_2205
!	jmp	_Label_2204
_Label_2204:
! THEN...
	mov	596,r13		! source line 596
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2207 = _StringConst_59
	set	_StringConst_59,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2207  sizeInBytes=4
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
_Label_2205:
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
!   _temp_2208 = &_P_Kernel_readyList
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
!   if intIsZero (nextTh) then goto _Label_2209
	load	[r14+-32],r1
	cmp	r1,r0
	be	_Label_2209
	jmp	_Label_2210
_Label_2209:
! THEN...
	mov	604,r13		! source line 604
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2211 = _StringConst_60
	set	_StringConst_60,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2211  sizeInBytes=4
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
_Label_2210:
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
	.word	_Label_2212
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2213
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2214
	.word	-12
	.word	4
	.word	_Label_2215
	.word	-16
	.word	4
	.word	_Label_2216
	.word	-20
	.word	4
	.word	_Label_2217
	.word	-24
	.word	4
	.word	_Label_2218
	.word	-28
	.word	4
	.word	_Label_2219
	.word	-32
	.word	4
	.word	0
_Label_2212:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Sleep\0"
	.align
_Label_2213:
	.ascii	"Pself\0"
	.align
_Label_2214:
	.byte	'?'
	.ascii	"_temp_2211\0"
	.align
_Label_2215:
	.byte	'?'
	.ascii	"_temp_2208\0"
	.align
_Label_2216:
	.byte	'?'
	.ascii	"_temp_2207\0"
	.align
_Label_2217:
	.byte	'?'
	.ascii	"_temp_2206\0"
	.align
_Label_2218:
	.byte	'?'
	.ascii	"_temp_2203\0"
	.align
_Label_2219:
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
_Label_4428:
	push	r0
	sub	r1,1,r1
	bne	_Label_4428
	mov	611,r13		! source line 611
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	617,r13		! source line 617
	mov	"\0\0IF",r10
!   _temp_2223 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-36]
!   Move address of _temp_2223 [0 ] into _temp_2224
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
!   Data Move: _temp_2222 = *_temp_2224  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if _temp_2222 == 606348324 then goto _Label_2221		(int)
	load	[r14+-40],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_2221
!	jmp	_Label_2220
_Label_2220:
! THEN...
	mov	618,r13		! source line 618
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2225 = _StringConst_61
	set	_StringConst_61,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2225  sizeInBytes=4
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
	jmp	_Label_2226
_Label_2221:
! ELSE...
	mov	619,r13		! source line 619
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	619,r13		! source line 619
	mov	"\0\0IF",r10
!   _temp_2230 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_2230 [999 ] into _temp_2231
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
!   Data Move: _temp_2229 = *_temp_2231  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_2229 == 606348324 then goto _Label_2228		(int)
	load	[r14+-24],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_2228
!	jmp	_Label_2227
_Label_2227:
! THEN...
	mov	620,r13		! source line 620
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2232 = _StringConst_62
	set	_StringConst_62,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2232  sizeInBytes=4
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
_Label_2228:
! END IF...
_Label_2226:
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
	.word	_Label_2233
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_2234
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2235
	.word	-12
	.word	4
	.word	_Label_2236
	.word	-16
	.word	4
	.word	_Label_2237
	.word	-20
	.word	4
	.word	_Label_2238
	.word	-24
	.word	4
	.word	_Label_2239
	.word	-28
	.word	4
	.word	_Label_2240
	.word	-32
	.word	4
	.word	_Label_2241
	.word	-36
	.word	4
	.word	_Label_2242
	.word	-40
	.word	4
	.word	0
_Label_2233:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"CheckOverflow\0"
	.align
_Label_2234:
	.ascii	"Pself\0"
	.align
_Label_2235:
	.byte	'?'
	.ascii	"_temp_2232\0"
	.align
_Label_2236:
	.byte	'?'
	.ascii	"_temp_2231\0"
	.align
_Label_2237:
	.byte	'?'
	.ascii	"_temp_2230\0"
	.align
_Label_2238:
	.byte	'?'
	.ascii	"_temp_2229\0"
	.align
_Label_2239:
	.byte	'?'
	.ascii	"_temp_2225\0"
	.align
_Label_2240:
	.byte	'?'
	.ascii	"_temp_2224\0"
	.align
_Label_2241:
	.byte	'?'
	.ascii	"_temp_2223\0"
	.align
_Label_2242:
	.byte	'?'
	.ascii	"_temp_2222\0"
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
_Label_4429:
	push	r0
	sub	r1,1,r1
	bne	_Label_4429
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
!   _temp_2243 = _StringConst_63
	set	_StringConst_63,r1
	store	r1,[r14+-188]
!   Prepare Argument: offset=8  value=_temp_2243  sizeInBytes=4
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
!   _temp_2244 = _StringConst_64
	set	_StringConst_64,r1
	store	r1,[r14+-184]
!   Prepare Argument: offset=8  value=_temp_2244  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Call the function
	mov	635,r13		! source line 635
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_2245  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Call the function
	mov	636,r13		! source line 636
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2246 = _StringConst_65
	set	_StringConst_65,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=8  value=_temp_2246  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Call the function
	mov	637,r13		! source line 637
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2247 = _StringConst_66
	set	_StringConst_66,r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=8  value=_temp_2247  sizeInBytes=4
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
!   _temp_2252 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-168]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2253 = 12		(4 bytes)
	mov	12,r1
	store	r1,[r14+-164]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2252  (sizeInBytes=4)
	load	[r14+-168],r1
	store	r1,[r14+-192]
_Label_2248:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2253 then goto _Label_2251		
	load	[r14+-192],r1
	load	[r14+-164],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2251
_Label_2249:
	mov	639,r13		! source line 639
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2254 = _StringConst_67
	set	_StringConst_67,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_2254  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	640,r13		! source line 640
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2255 = i + 2		(int)
	load	[r14+-192],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_2255  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	641,r13		! source line 641
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2256 = _StringConst_68
	set	_StringConst_68,r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=8  value=_temp_2256  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Call the function
	mov	642,r13		! source line 642
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2258 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-144]
!   Move address of _temp_2258 [i ] into _temp_2259
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
!   Data Move: _temp_2257 = *_temp_2259  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_2257  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	643,r13		! source line 643
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2260 = _StringConst_69
	set	_StringConst_69,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_2260  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	644,r13		! source line 644
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2262 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-128]
!   Move address of _temp_2262 [i ] into _temp_2263
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
!   Data Move: _temp_2261 = *_temp_2263  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2261  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	645,r13		! source line 645
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2264 = _StringConst_70
	set	_StringConst_70,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_2264  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	646,r13		! source line 646
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_2250:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_2248
! END FOR
_Label_2251:
! CALL STATEMENT...
!   _temp_2265 = _StringConst_71
	set	_StringConst_71,r1
	store	r1,[r14+-116]
!   _temp_2266 = stackTop		(4 bytes)
	load	[r14+8],r1
	load	[r1+68],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_2265  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2266  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Call the function
	mov	648,r13		! source line 648
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_2267 = _StringConst_72
	set	_StringConst_72,r1
	store	r1,[r14+-108]
!   _temp_2269 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-100]
!   Move address of _temp_2269 [0 ] into _temp_2270
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
!   _temp_2268 = _temp_2270		(4 bytes)
	load	[r14+-96],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_2267  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2268  sizeInBytes=4
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
	be	_Label_2273
	cmp	r1,2
	be	_Label_2274
	cmp	r1,3
	be	_Label_2275
	cmp	r1,4
	be	_Label_2276
	cmp	r1,5
	be	_Label_2277
	jmp	_Label_2271
! CASE 1...
_Label_2273:
! CALL STATEMENT...
!   _temp_2278 = _StringConst_73
	set	_StringConst_73,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_2278  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	652,r13		! source line 652
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	653,r13		! source line 653
	mov	"\0\0BR",r10
	jmp	_Label_2272
! CASE 2...
_Label_2274:
! CALL STATEMENT...
!   _temp_2279 = _StringConst_74
	set	_StringConst_74,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_2279  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	655,r13		! source line 655
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	656,r13		! source line 656
	mov	"\0\0BR",r10
	jmp	_Label_2272
! CASE 3...
_Label_2275:
! CALL STATEMENT...
!   _temp_2280 = _StringConst_75
	set	_StringConst_75,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_2280  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	658,r13		! source line 658
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	659,r13		! source line 659
	mov	"\0\0BR",r10
	jmp	_Label_2272
! CASE 4...
_Label_2276:
! CALL STATEMENT...
!   _temp_2281 = _StringConst_76
	set	_StringConst_76,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2281  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	661,r13		! source line 661
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	662,r13		! source line 662
	mov	"\0\0BR",r10
	jmp	_Label_2272
! CASE 5...
_Label_2277:
! CALL STATEMENT...
!   _temp_2282 = _StringConst_77
	set	_StringConst_77,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_2282  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	664,r13		! source line 664
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	665,r13		! source line 665
	mov	"\0\0BR",r10
	jmp	_Label_2272
! DEFAULT CASE...
_Label_2271:
! CALL STATEMENT...
!   _temp_2283 = _StringConst_78
	set	_StringConst_78,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_2283  sizeInBytes=4
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
_Label_2272:
! CALL STATEMENT...
!   _temp_2284 = _StringConst_79
	set	_StringConst_79,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_2284  sizeInBytes=4
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
!   _temp_2285 = _StringConst_80
	set	_StringConst_80,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_2285  sizeInBytes=4
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
!   _temp_2290 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2291 = 14		(4 bytes)
	mov	14,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2290  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+-192]
_Label_2286:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2291 then goto _Label_2289		
	load	[r14+-192],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2289
_Label_2287:
	mov	673,r13		! source line 673
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2292 = _StringConst_81
	set	_StringConst_81,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_2292  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	674,r13		! source line 674
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2293 = i + 1		(int)
	load	[r14+-192],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2293  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	675,r13		! source line 675
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2294 = _StringConst_82
	set	_StringConst_82,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_2294  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	676,r13		! source line 676
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2296 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_2296 [i ] into _temp_2297
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
!   Data Move: _temp_2295 = *_temp_2297  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_2295  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	677,r13		! source line 677
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2298 = _StringConst_83
	set	_StringConst_83,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2298  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	678,r13		! source line 678
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2300 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-20]
!   Move address of _temp_2300 [i ] into _temp_2301
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
!   Data Move: _temp_2299 = *_temp_2301  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2299  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	679,r13		! source line 679
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2302 = _StringConst_84
	set	_StringConst_84,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2302  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	680,r13		! source line 680
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_2288:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_2286
! END FOR
_Label_2289:
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
	.word	_Label_2303
	.word	4		! total size of parameters
	.word	196		! frame size = 196
	.word	_Label_2304
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2305
	.word	-12
	.word	4
	.word	_Label_2306
	.word	-16
	.word	4
	.word	_Label_2307
	.word	-20
	.word	4
	.word	_Label_2308
	.word	-24
	.word	4
	.word	_Label_2309
	.word	-28
	.word	4
	.word	_Label_2310
	.word	-32
	.word	4
	.word	_Label_2311
	.word	-36
	.word	4
	.word	_Label_2312
	.word	-40
	.word	4
	.word	_Label_2313
	.word	-44
	.word	4
	.word	_Label_2314
	.word	-48
	.word	4
	.word	_Label_2315
	.word	-52
	.word	4
	.word	_Label_2316
	.word	-56
	.word	4
	.word	_Label_2317
	.word	-60
	.word	4
	.word	_Label_2318
	.word	-64
	.word	4
	.word	_Label_2319
	.word	-68
	.word	4
	.word	_Label_2320
	.word	-72
	.word	4
	.word	_Label_2321
	.word	-76
	.word	4
	.word	_Label_2322
	.word	-80
	.word	4
	.word	_Label_2323
	.word	-84
	.word	4
	.word	_Label_2324
	.word	-88
	.word	4
	.word	_Label_2325
	.word	-92
	.word	4
	.word	_Label_2326
	.word	-96
	.word	4
	.word	_Label_2327
	.word	-100
	.word	4
	.word	_Label_2328
	.word	-104
	.word	4
	.word	_Label_2329
	.word	-108
	.word	4
	.word	_Label_2330
	.word	-112
	.word	4
	.word	_Label_2331
	.word	-116
	.word	4
	.word	_Label_2332
	.word	-120
	.word	4
	.word	_Label_2333
	.word	-124
	.word	4
	.word	_Label_2334
	.word	-128
	.word	4
	.word	_Label_2335
	.word	-132
	.word	4
	.word	_Label_2336
	.word	-136
	.word	4
	.word	_Label_2337
	.word	-140
	.word	4
	.word	_Label_2338
	.word	-144
	.word	4
	.word	_Label_2339
	.word	-148
	.word	4
	.word	_Label_2340
	.word	-152
	.word	4
	.word	_Label_2341
	.word	-156
	.word	4
	.word	_Label_2342
	.word	-160
	.word	4
	.word	_Label_2343
	.word	-164
	.word	4
	.word	_Label_2344
	.word	-168
	.word	4
	.word	_Label_2345
	.word	-172
	.word	4
	.word	_Label_2346
	.word	-176
	.word	4
	.word	_Label_2347
	.word	-180
	.word	4
	.word	_Label_2348
	.word	-184
	.word	4
	.word	_Label_2349
	.word	-188
	.word	4
	.word	_Label_2350
	.word	-192
	.word	4
	.word	_Label_2351
	.word	-196
	.word	4
	.word	0
_Label_2303:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2304:
	.ascii	"Pself\0"
	.align
_Label_2305:
	.byte	'?'
	.ascii	"_temp_2302\0"
	.align
_Label_2306:
	.byte	'?'
	.ascii	"_temp_2301\0"
	.align
_Label_2307:
	.byte	'?'
	.ascii	"_temp_2300\0"
	.align
_Label_2308:
	.byte	'?'
	.ascii	"_temp_2299\0"
	.align
_Label_2309:
	.byte	'?'
	.ascii	"_temp_2298\0"
	.align
_Label_2310:
	.byte	'?'
	.ascii	"_temp_2297\0"
	.align
_Label_2311:
	.byte	'?'
	.ascii	"_temp_2296\0"
	.align
_Label_2312:
	.byte	'?'
	.ascii	"_temp_2295\0"
	.align
_Label_2313:
	.byte	'?'
	.ascii	"_temp_2294\0"
	.align
_Label_2314:
	.byte	'?'
	.ascii	"_temp_2293\0"
	.align
_Label_2315:
	.byte	'?'
	.ascii	"_temp_2292\0"
	.align
_Label_2316:
	.byte	'?'
	.ascii	"_temp_2291\0"
	.align
_Label_2317:
	.byte	'?'
	.ascii	"_temp_2290\0"
	.align
_Label_2318:
	.byte	'?'
	.ascii	"_temp_2285\0"
	.align
_Label_2319:
	.byte	'?'
	.ascii	"_temp_2284\0"
	.align
_Label_2320:
	.byte	'?'
	.ascii	"_temp_2283\0"
	.align
_Label_2321:
	.byte	'?'
	.ascii	"_temp_2282\0"
	.align
_Label_2322:
	.byte	'?'
	.ascii	"_temp_2281\0"
	.align
_Label_2323:
	.byte	'?'
	.ascii	"_temp_2280\0"
	.align
_Label_2324:
	.byte	'?'
	.ascii	"_temp_2279\0"
	.align
_Label_2325:
	.byte	'?'
	.ascii	"_temp_2278\0"
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
	.ascii	"_temp_2247\0"
	.align
_Label_2346:
	.byte	'?'
	.ascii	"_temp_2246\0"
	.align
_Label_2347:
	.byte	'?'
	.ascii	"_temp_2245\0"
	.align
_Label_2348:
	.byte	'?'
	.ascii	"_temp_2244\0"
	.align
_Label_2349:
	.byte	'?'
	.ascii	"_temp_2243\0"
	.align
_Label_2350:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2351:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  CLASS ThreadManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ThreadManager:
	.word	_Label_2352
	jmp	_Method_P_Kernel_ThreadManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ThreadManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ThreadManager_3	! 12:	GetANewThread
	jmp	_Method_P_Kernel_ThreadManager_4	! 16:	FreeThread
	.word	0
! 
! Class descriptor:
! 
_Label_2352:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2353
	.word	_sourceFileName
	.word	226		! line number
	.word	41696		! size of instances, in bytes
	.word	_P_Kernel_ThreadManager
	.word	_P_System_Object
	.word	0
_Label_2353:
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
_Label_4430:
	push	r0
	sub	r1,1,r1
	bne	_Label_4430
	mov	737,r13		! source line 737
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	743,r13		! source line 743
	mov	"\0\0AS",r10
!   _temp_2354 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	set	-45904,r2
	store	r1,[r14+r2]
!   NEW ARRAY Constructor...
!   _temp_2356 = &_temp_2355
	set	-45900,r1
	add	r14,r1,r1
	store	r1,[r14+-4256]
!   _temp_2356 = _temp_2356 + 4
	load	[r14+-4256],r1
	add	r1,4,r1
	store	r1,[r14+-4256]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2358 = zeros  (sizeInBytes=4164)
	add	r14,-4248,r4
	mov	1041,r3
_Label_4431:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4431
!   _temp_2358 = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	store	r1,[r14+-4248]
	mov	10,r1
	store	r1,[r14+-4252]
_Label_2360:
!   Data Move: *_temp_2356 = _temp_2358  (sizeInBytes=4164)
	add	r14,-4248,r5
	load	[r14+-4256],r4
	mov	1041,r3
_Label_4432:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4432
!   _temp_2356 = _temp_2356 + 4164
	load	[r14+-4256],r1
	add	r1,4164,r1
	store	r1,[r14+-4256]
!   _temp_2357 = _temp_2357 + -1
	load	[r14+-4252],r1
	add	r1,-1,r1
	store	r1,[r14+-4252]
!   if intNotZero (_temp_2357) then goto _Label_2360
	load	[r14+-4252],r1
	cmp	r1,r0
	bne	_Label_2360
!   Initialize the array size...
	mov	10,r1
	set	-45900,r2
	store	r1,[r14+r2]
!   _temp_2361 = &_temp_2355
	set	-45900,r1
	add	r14,r1,r1
	store	r1,[r14+-80]
!   make sure array has size 10
	set	-45904,r1
	load	[r14+r1],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_4433
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4433:
!   make sure array has size 10
	load	[r14+-80],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2354 = *_temp_2361  (sizeInBytes=41644)
	load	[r14+-80],r5
	set	-45904,r4
	load	[r14+r4],r4
	mov	10411,r3
_Label_4434:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4434
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
!   _temp_2369 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2370 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2369  (sizeInBytes=4)
	load	[r14+-64],r1
	set	-45908,r2
	store	r1,[r14+r2]
_Label_2365:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2370 then goto _Label_2368		
	set	-45908,r1
	load	[r14+r1],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2368
_Label_2366:
	mov	747,r13		! source line 747
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	748,r13		! source line 748
	mov	"\0\0SE",r10
!   _temp_2371 = _StringConst_85
	set	_StringConst_85,r1
	store	r1,[r14+-56]
!   _temp_2372 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   Move address of _temp_2372 [i ] into _temp_2373
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
!   Prepare Argument: offset=12  value=_temp_2371  sizeInBytes=4
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
!   _temp_2374 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_2374 [i ] into _temp_2375
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
!   _temp_2376 = _temp_2375 + 76
	load	[r14+-40],r1
	add	r1,76,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_2376 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-36],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	750,r13		! source line 750
	mov	"\0\0SE",r10
!   _temp_2378 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_2378 [i ] into _temp_2379
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
!   _temp_2377 = _temp_2379		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-32]
!   _temp_2380 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_2377  sizeInBytes=4
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
_Label_2367:
!   i = i + 1
	set	-45908,r1
	load	[r14+r1],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	set	-45908,r2
	store	r1,[r14+r2]
	jmp	_Label_2365
! END FOR
_Label_2368:
! SEND STATEMENT...
	mov	752,r13		! source line 752
	mov	"\0\0SE",r10
!   _temp_2381 = &threadManagerLock
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
!   _temp_2382 = &aThreadIsAvailable
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
	.word	_Label_2383
	.word	4		! total size of parameters
	.word	45908		! frame size = 45908
	.word	_Label_2384
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2385
	.word	-12
	.word	4
	.word	_Label_2386
	.word	-16
	.word	4
	.word	_Label_2387
	.word	-20
	.word	4
	.word	_Label_2388
	.word	-24
	.word	4
	.word	_Label_2389
	.word	-28
	.word	4
	.word	_Label_2390
	.word	-32
	.word	4
	.word	_Label_2391
	.word	-36
	.word	4
	.word	_Label_2392
	.word	-40
	.word	4
	.word	_Label_2393
	.word	-44
	.word	4
	.word	_Label_2394
	.word	-48
	.word	4
	.word	_Label_2395
	.word	-52
	.word	4
	.word	_Label_2396
	.word	-56
	.word	4
	.word	_Label_2397
	.word	-60
	.word	4
	.word	_Label_2398
	.word	-64
	.word	4
	.word	_Label_2399
	.word	-68
	.word	4
	.word	_Label_2400
	.word	-72
	.word	4
	.word	_Label_2401
	.word	-76
	.word	4
	.word	_Label_2402
	.word	-80
	.word	4
	.word	_Label_2403
	.word	-84
	.word	4
	.word	_Label_2404
	.word	-4248
	.word	4164
	.word	_Label_2405
	.word	-4252
	.word	4
	.word	_Label_2406
	.word	-4256
	.word	4
	.word	_Label_2407
	.word	-45900
	.word	41644
	.word	_Label_2408
	.word	-45904
	.word	4
	.word	_Label_2409
	.word	-45908
	.word	4
	.word	0
_Label_2383:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2384:
	.ascii	"Pself\0"
	.align
_Label_2385:
	.byte	'?'
	.ascii	"_temp_2382\0"
	.align
_Label_2386:
	.byte	'?'
	.ascii	"_temp_2381\0"
	.align
_Label_2387:
	.byte	'?'
	.ascii	"_temp_2380\0"
	.align
_Label_2388:
	.byte	'?'
	.ascii	"_temp_2379\0"
	.align
_Label_2389:
	.byte	'?'
	.ascii	"_temp_2378\0"
	.align
_Label_2390:
	.byte	'?'
	.ascii	"_temp_2377\0"
	.align
_Label_2391:
	.byte	'?'
	.ascii	"_temp_2376\0"
	.align
_Label_2392:
	.byte	'?'
	.ascii	"_temp_2375\0"
	.align
_Label_2393:
	.byte	'?'
	.ascii	"_temp_2374\0"
	.align
_Label_2394:
	.byte	'?'
	.ascii	"_temp_2373\0"
	.align
_Label_2395:
	.byte	'?'
	.ascii	"_temp_2372\0"
	.align
_Label_2396:
	.byte	'?'
	.ascii	"_temp_2371\0"
	.align
_Label_2397:
	.byte	'?'
	.ascii	"_temp_2370\0"
	.align
_Label_2398:
	.byte	'?'
	.ascii	"_temp_2369\0"
	.align
_Label_2399:
	.byte	'?'
	.ascii	"_temp_2364\0"
	.align
_Label_2400:
	.byte	'?'
	.ascii	"_temp_2363\0"
	.align
_Label_2401:
	.byte	'?'
	.ascii	"_temp_2362\0"
	.align
_Label_2402:
	.byte	'?'
	.ascii	"_temp_2361\0"
	.align
_Label_2403:
	.byte	'?'
	.ascii	"_temp_2359\0"
	.align
_Label_2404:
	.byte	'?'
	.ascii	"_temp_2358\0"
	.align
_Label_2405:
	.byte	'?'
	.ascii	"_temp_2357\0"
	.align
_Label_2406:
	.byte	'?'
	.ascii	"_temp_2356\0"
	.align
_Label_2407:
	.byte	'?'
	.ascii	"_temp_2355\0"
	.align
_Label_2408:
	.byte	'?'
	.ascii	"_temp_2354\0"
	.align
_Label_2409:
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
_Label_4435:
	push	r0
	sub	r1,1,r1
	bne	_Label_4435
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
!   _temp_2410 = _StringConst_86
	set	_StringConst_86,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_2410  sizeInBytes=4
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
!   _temp_2415 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2416 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2415  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-56]
_Label_2411:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2416 then goto _Label_2414		
	load	[r14+-56],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2414
_Label_2412:
	mov	767,r13		! source line 767
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2417 = _StringConst_87
	set	_StringConst_87,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_2417  sizeInBytes=4
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
!   _temp_2418 = _StringConst_88
	set	_StringConst_88,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2418  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	770,r13		! source line 770
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2420 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_2420 [i ] into _temp_2421
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
!   _temp_2419 = _temp_2421		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2419  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	771,r13		! source line 771
	mov	"\0\0CA",r10
	call	_function_194_ThreadPrintShort
!   Increment the FOR-LOOP index variable and jump back
_Label_2413:
!   i = i + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_2411
! END FOR
_Label_2414:
! CALL STATEMENT...
!   _temp_2422 = _StringConst_89
	set	_StringConst_89,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2422  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	773,r13		! source line 773
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	774,r13		! source line 774
	mov	"\0\0SE",r10
!   _temp_2423 = _function_193_PrintObjectAddr
	set	_function_193_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_2424 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2423  sizeInBytes=4
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
	.word	_Label_2425
	.word	4		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_2426
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2427
	.word	-12
	.word	4
	.word	_Label_2428
	.word	-16
	.word	4
	.word	_Label_2429
	.word	-20
	.word	4
	.word	_Label_2430
	.word	-24
	.word	4
	.word	_Label_2431
	.word	-28
	.word	4
	.word	_Label_2432
	.word	-32
	.word	4
	.word	_Label_2433
	.word	-36
	.word	4
	.word	_Label_2434
	.word	-40
	.word	4
	.word	_Label_2435
	.word	-44
	.word	4
	.word	_Label_2436
	.word	-48
	.word	4
	.word	_Label_2437
	.word	-52
	.word	4
	.word	_Label_2438
	.word	-56
	.word	4
	.word	_Label_2439
	.word	-60
	.word	4
	.word	0
_Label_2425:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2426:
	.ascii	"Pself\0"
	.align
_Label_2427:
	.byte	'?'
	.ascii	"_temp_2424\0"
	.align
_Label_2428:
	.byte	'?'
	.ascii	"_temp_2423\0"
	.align
_Label_2429:
	.byte	'?'
	.ascii	"_temp_2422\0"
	.align
_Label_2430:
	.byte	'?'
	.ascii	"_temp_2421\0"
	.align
_Label_2431:
	.byte	'?'
	.ascii	"_temp_2420\0"
	.align
_Label_2432:
	.byte	'?'
	.ascii	"_temp_2419\0"
	.align
_Label_2433:
	.byte	'?'
	.ascii	"_temp_2418\0"
	.align
_Label_2434:
	.byte	'?'
	.ascii	"_temp_2417\0"
	.align
_Label_2435:
	.byte	'?'
	.ascii	"_temp_2416\0"
	.align
_Label_2436:
	.byte	'?'
	.ascii	"_temp_2415\0"
	.align
_Label_2437:
	.byte	'?'
	.ascii	"_temp_2410\0"
	.align
_Label_2438:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2439:
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
_Label_4436:
	push	r0
	sub	r1,1,r1
	bne	_Label_4436
	mov	781,r13		! source line 781
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	787,r13		! source line 787
	mov	"\0\0SE",r10
!   _temp_2440 = &threadManagerLock
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
_Label_2441:
	mov	788,r13		! source line 788
	mov	"\0\0SE",r10
!   _temp_2444 = &freeList
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
!   if result==true then goto _Label_2442 else goto _Label_2443
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2443
	jmp	_Label_2442
_Label_2442:
	mov	788,r13		! source line 788
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	789,r13		! source line 789
	mov	"\0\0SE",r10
!   _temp_2445 = &threadManagerLock
	set	41676,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-28]
!   _temp_2446 = &aThreadIsAvailable
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_2445  sizeInBytes=4
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
	jmp	_Label_2441
_Label_2443:
! ASSIGNMENT STATEMENT...
	mov	791,r13		! source line 791
	mov	"\0\0AS",r10
	mov	791,r13		! source line 791
	mov	"\0\0SE",r10
!   _temp_2447 = &freeList
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
!   _temp_2448 = availableThreadPtr + 76
	load	[r14+-40],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2448 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	793,r13		! source line 793
	mov	"\0\0SE",r10
!   _temp_2449 = &threadManagerLock
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
	.word	_Label_2450
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_2451
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2452
	.word	-12
	.word	4
	.word	_Label_2453
	.word	-16
	.word	4
	.word	_Label_2454
	.word	-20
	.word	4
	.word	_Label_2455
	.word	-24
	.word	4
	.word	_Label_2456
	.word	-28
	.word	4
	.word	_Label_2457
	.word	-32
	.word	4
	.word	_Label_2458
	.word	-36
	.word	4
	.word	_Label_2459
	.word	-40
	.word	4
	.word	0
_Label_2450:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"GetANewThread\0"
	.align
_Label_2451:
	.ascii	"Pself\0"
	.align
_Label_2452:
	.byte	'?'
	.ascii	"_temp_2449\0"
	.align
_Label_2453:
	.byte	'?'
	.ascii	"_temp_2448\0"
	.align
_Label_2454:
	.byte	'?'
	.ascii	"_temp_2447\0"
	.align
_Label_2455:
	.byte	'?'
	.ascii	"_temp_2446\0"
	.align
_Label_2456:
	.byte	'?'
	.ascii	"_temp_2445\0"
	.align
_Label_2457:
	.byte	'?'
	.ascii	"_temp_2444\0"
	.align
_Label_2458:
	.byte	'?'
	.ascii	"_temp_2440\0"
	.align
_Label_2459:
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
_Label_4437:
	push	r0
	sub	r1,1,r1
	bne	_Label_4437
	mov	799,r13		! source line 799
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	803,r13		! source line 803
	mov	"\0\0SE",r10
!   _temp_2460 = &threadManagerLock
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
!   _temp_2461 = th + 76
	load	[r14+12],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2461 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	805,r13		! source line 805
	mov	"\0\0SE",r10
!   _temp_2462 = &freeList
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
!   _temp_2463 = &threadManagerLock
	set	41676,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-20]
!   _temp_2464 = &aThreadIsAvailable
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2463  sizeInBytes=4
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
!   _temp_2465 = &threadManagerLock
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
	.word	_Label_2466
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_2467
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2468
	.word	12
	.word	4
	.word	_Label_2469
	.word	-12
	.word	4
	.word	_Label_2470
	.word	-16
	.word	4
	.word	_Label_2471
	.word	-20
	.word	4
	.word	_Label_2472
	.word	-24
	.word	4
	.word	_Label_2473
	.word	-28
	.word	4
	.word	_Label_2474
	.word	-32
	.word	4
	.word	0
_Label_2466:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"FreeThread\0"
	.align
_Label_2467:
	.ascii	"Pself\0"
	.align
_Label_2468:
	.byte	'P'
	.ascii	"th\0"
	.align
_Label_2469:
	.byte	'?'
	.ascii	"_temp_2465\0"
	.align
_Label_2470:
	.byte	'?'
	.ascii	"_temp_2464\0"
	.align
_Label_2471:
	.byte	'?'
	.ascii	"_temp_2463\0"
	.align
_Label_2472:
	.byte	'?'
	.ascii	"_temp_2462\0"
	.align
_Label_2473:
	.byte	'?'
	.ascii	"_temp_2461\0"
	.align
_Label_2474:
	.byte	'?'
	.ascii	"_temp_2460\0"
	.align
! 
! ===============  CLASS ProcessControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessControlBlock:
	.word	_Label_2475
	jmp	_Method_P_Kernel_ProcessControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessControlBlock_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessControlBlock_3	! 12:	PrintShort
	.word	0
! 
! Class descriptor:
! 
_Label_2475:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2476
	.word	_sourceFileName
	.word	247		! line number
	.word	168		! size of instances, in bytes
	.word	_P_Kernel_ProcessControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_2476:
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
_Label_4438:
	push	r0
	sub	r1,1,r1
	bne	_Label_4438
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
_Label_4439:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4439
!   addrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! SEND STATEMENT...
	mov	824,r13		! source line 824
	mov	"\0\0SE",r10
!   _temp_2478 = &addrSpace
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
!   _temp_2479 = &fileDescriptor
	load	[r14+8],r1
	add	r1,124,r1
	store	r1,[r14+-68]
!   NEW ARRAY Constructor...
!   _temp_2481 = &_temp_2480
	add	r14,-64,r1
	store	r1,[r14+-20]
!   _temp_2481 = _temp_2481 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	10,r1
	store	r1,[r14+-16]
_Label_2483:
!   Data Move: *_temp_2481 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_2481 = _temp_2481 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_2482 = _temp_2482 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_2482) then goto _Label_2483
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_2483
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-64]
!   _temp_2484 = &_temp_2480
	add	r14,-64,r1
	store	r1,[r14+-12]
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_4440
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4440:
!   make sure array has size 10
	load	[r14+-12],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2479 = *_temp_2484  (sizeInBytes=44)
	load	[r14+-12],r5
	load	[r14+-68],r4
	mov	11,r3
_Label_4441:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4441
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
	.word	_Label_2485
	.word	4		! total size of parameters
	.word	72		! frame size = 72
	.word	_Label_2486
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2487
	.word	-12
	.word	4
	.word	_Label_2488
	.word	-16
	.word	4
	.word	_Label_2489
	.word	-20
	.word	4
	.word	_Label_2490
	.word	-64
	.word	44
	.word	_Label_2491
	.word	-68
	.word	4
	.word	_Label_2492
	.word	-72
	.word	4
	.word	_Label_2493
	.word	-76
	.word	4
	.word	0
_Label_2485:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2486:
	.ascii	"Pself\0"
	.align
_Label_2487:
	.byte	'?'
	.ascii	"_temp_2484\0"
	.align
_Label_2488:
	.byte	'?'
	.ascii	"_temp_2482\0"
	.align
_Label_2489:
	.byte	'?'
	.ascii	"_temp_2481\0"
	.align
_Label_2490:
	.byte	'?'
	.ascii	"_temp_2480\0"
	.align
_Label_2491:
	.byte	'?'
	.ascii	"_temp_2479\0"
	.align
_Label_2492:
	.byte	'?'
	.ascii	"_temp_2478\0"
	.align
_Label_2493:
	.byte	'?'
	.ascii	"_temp_2477\0"
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
_Label_4442:
	push	r0
	sub	r1,1,r1
	bne	_Label_4442
	mov	831,r13		! source line 831
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	836,r13		! source line 836
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2494) then goto _runtimeErrorNullPointer
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
!   _temp_2495 = _StringConst_90
	set	_StringConst_90,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2495  sizeInBytes=4
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
	.word	_Label_2496
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_2497
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2498
	.word	-12
	.word	4
	.word	_Label_2499
	.word	-16
	.word	4
	.word	0
_Label_2496:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2497:
	.ascii	"Pself\0"
	.align
_Label_2498:
	.byte	'?'
	.ascii	"_temp_2495\0"
	.align
_Label_2499:
	.byte	'?'
	.ascii	"_temp_2494\0"
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
_Label_4443:
	push	r0
	sub	r1,1,r1
	bne	_Label_4443
	mov	855,r13		! source line 855
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2500 = _StringConst_91
	set	_StringConst_91,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2500  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	859,r13		! source line 859
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_2501  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	860,r13		! source line 860
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2502 = _StringConst_92
	set	_StringConst_92,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_2502  sizeInBytes=4
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
!   _temp_2503 = _StringConst_93
	set	_StringConst_93,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2503  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	863,r13		! source line 863
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	864,r13		! source line 864
	mov	"\0\0IF",r10
!   if status != 1 then goto _Label_2505		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_2505
!	jmp	_Label_2504
_Label_2504:
! THEN...
	mov	865,r13		! source line 865
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2506 = _StringConst_94
	set	_StringConst_94,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2506  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	865,r13		! source line 865
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2507
_Label_2505:
! ELSE...
	mov	866,r13		! source line 866
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	866,r13		! source line 866
	mov	"\0\0IF",r10
!   if status != 2 then goto _Label_2509		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_2509
!	jmp	_Label_2508
_Label_2508:
! THEN...
	mov	867,r13		! source line 867
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2510 = _StringConst_95
	set	_StringConst_95,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2510  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	867,r13		! source line 867
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2511
_Label_2509:
! ELSE...
	mov	868,r13		! source line 868
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	868,r13		! source line 868
	mov	"\0\0IF",r10
!   if status != 3 then goto _Label_2513		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_2513
!	jmp	_Label_2512
_Label_2512:
! THEN...
	mov	869,r13		! source line 869
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2514 = _StringConst_96
	set	_StringConst_96,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2514  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	869,r13		! source line 869
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2515
_Label_2513:
! ELSE...
	mov	871,r13		! source line 871
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2516 = _StringConst_97
	set	_StringConst_97,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2516  sizeInBytes=4
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
_Label_2515:
! END IF...
_Label_2511:
! END IF...
_Label_2507:
! CALL STATEMENT...
!   _temp_2517 = _StringConst_98
	set	_StringConst_98,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2517  sizeInBytes=4
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
!   _temp_2518 = _StringConst_99
	set	_StringConst_99,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2518  sizeInBytes=4
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
	.word	_Label_2519
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_2520
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2521
	.word	-12
	.word	4
	.word	_Label_2522
	.word	-16
	.word	4
	.word	_Label_2523
	.word	-20
	.word	4
	.word	_Label_2524
	.word	-24
	.word	4
	.word	_Label_2525
	.word	-28
	.word	4
	.word	_Label_2526
	.word	-32
	.word	4
	.word	_Label_2527
	.word	-36
	.word	4
	.word	_Label_2528
	.word	-40
	.word	4
	.word	_Label_2529
	.word	-44
	.word	4
	.word	_Label_2530
	.word	-48
	.word	4
	.word	0
_Label_2519:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_2520:
	.ascii	"Pself\0"
	.align
_Label_2521:
	.byte	'?'
	.ascii	"_temp_2518\0"
	.align
_Label_2522:
	.byte	'?'
	.ascii	"_temp_2517\0"
	.align
_Label_2523:
	.byte	'?'
	.ascii	"_temp_2516\0"
	.align
_Label_2524:
	.byte	'?'
	.ascii	"_temp_2514\0"
	.align
_Label_2525:
	.byte	'?'
	.ascii	"_temp_2510\0"
	.align
_Label_2526:
	.byte	'?'
	.ascii	"_temp_2506\0"
	.align
_Label_2527:
	.byte	'?'
	.ascii	"_temp_2503\0"
	.align
_Label_2528:
	.byte	'?'
	.ascii	"_temp_2502\0"
	.align
_Label_2529:
	.byte	'?'
	.ascii	"_temp_2501\0"
	.align
_Label_2530:
	.byte	'?'
	.ascii	"_temp_2500\0"
	.align
! 
! ===============  CLASS ProcessManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessManager:
	.word	_Label_2531
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
_Label_2531:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2532
	.word	_sourceFileName
	.word	267		! line number
	.word	1756		! size of instances, in bytes
	.word	_P_Kernel_ProcessManager
	.word	_P_System_Object
	.word	0
_Label_2532:
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
_Label_4444:
	push	r0
	sub	r1,1,r1
	bne	_Label_4444
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
!   _temp_2534 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-1948]
!   NEW ARRAY Constructor...
!   _temp_2536 = &_temp_2535
	add	r14,-1944,r1
	store	r1,[r14+-260]
!   _temp_2536 = _temp_2536 + 4
	load	[r14+-260],r1
	add	r1,4,r1
	store	r1,[r14+-260]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2538 = zeros  (sizeInBytes=168)
	add	r14,-252,r4
	mov	42,r3
_Label_4445:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4445
!   _temp_2538 = _P_Kernel_ProcessControlBlock
	set	_P_Kernel_ProcessControlBlock,r1
	store	r1,[r14+-252]
	mov	10,r1
	store	r1,[r14+-256]
_Label_2540:
!   Data Move: *_temp_2536 = _temp_2538  (sizeInBytes=168)
	add	r14,-252,r5
	load	[r14+-260],r4
	mov	42,r3
_Label_4446:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4446
!   _temp_2536 = _temp_2536 + 168
	load	[r14+-260],r1
	add	r1,168,r1
	store	r1,[r14+-260]
!   _temp_2537 = _temp_2537 + -1
	load	[r14+-256],r1
	add	r1,-1,r1
	store	r1,[r14+-256]
!   if intNotZero (_temp_2537) then goto _Label_2540
	load	[r14+-256],r1
	cmp	r1,r0
	bne	_Label_2540
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-1944]
!   _temp_2541 = &_temp_2535
	add	r14,-1944,r1
	store	r1,[r14+-80]
!   make sure array has size 10
	load	[r14+-1948],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_4447
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4447:
!   make sure array has size 10
	load	[r14+-80],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2534 = *_temp_2541  (sizeInBytes=1684)
	load	[r14+-80],r5
	load	[r14+-1948],r4
	mov	421,r3
_Label_4448:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4448
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
!   _temp_2549 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2550 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2549  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-1956]
_Label_2545:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2550 then goto _Label_2548		
	load	[r14+-1956],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2548
_Label_2546:
	mov	899,r13		! source line 899
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	900,r13		! source line 900
	mov	"\0\0SE",r10
!   _temp_2551 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   Move address of _temp_2551 [i ] into _temp_2552
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
!   _temp_2554 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_2554 [i ] into _temp_2555
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
!   _temp_2553 = _temp_2555		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   _temp_2556 = &freeList
	load	[r14+8],r1
	add	r1,1724,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_2553  sizeInBytes=4
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
!   _temp_2557 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Move address of _temp_2557 [i ] into _temp_2558
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
!   _temp_2559 = _temp_2558 + 20
	load	[r14+-28],r1
	add	r1,20,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2559 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-24],r2
	store	r1,[r2]
!   Increment the FOR-LOOP index variable and jump back
_Label_2547:
!   i = i + 1
	load	[r14+-1956],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-1956]
	jmp	_Label_2545
! END FOR
_Label_2548:
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
!   _temp_2560 = &processManagerLock
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
!   _temp_2561 = &aProcessBecameFree
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
!   _temp_2562 = &aProcessDied
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
	.word	_Label_2563
	.word	4		! total size of parameters
	.word	1956		! frame size = 1956
	.word	_Label_2564
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2565
	.word	-12
	.word	4
	.word	_Label_2566
	.word	-16
	.word	4
	.word	_Label_2567
	.word	-20
	.word	4
	.word	_Label_2568
	.word	-24
	.word	4
	.word	_Label_2569
	.word	-28
	.word	4
	.word	_Label_2570
	.word	-32
	.word	4
	.word	_Label_2571
	.word	-36
	.word	4
	.word	_Label_2572
	.word	-40
	.word	4
	.word	_Label_2573
	.word	-44
	.word	4
	.word	_Label_2574
	.word	-48
	.word	4
	.word	_Label_2575
	.word	-52
	.word	4
	.word	_Label_2576
	.word	-56
	.word	4
	.word	_Label_2577
	.word	-60
	.word	4
	.word	_Label_2578
	.word	-64
	.word	4
	.word	_Label_2579
	.word	-68
	.word	4
	.word	_Label_2580
	.word	-72
	.word	4
	.word	_Label_2581
	.word	-76
	.word	4
	.word	_Label_2582
	.word	-80
	.word	4
	.word	_Label_2583
	.word	-84
	.word	4
	.word	_Label_2584
	.word	-252
	.word	168
	.word	_Label_2585
	.word	-256
	.word	4
	.word	_Label_2586
	.word	-260
	.word	4
	.word	_Label_2587
	.word	-1944
	.word	1684
	.word	_Label_2588
	.word	-1948
	.word	4
	.word	_Label_2589
	.word	-1952
	.word	4
	.word	_Label_2590
	.word	-1956
	.word	4
	.word	0
_Label_2563:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2564:
	.ascii	"Pself\0"
	.align
_Label_2565:
	.byte	'?'
	.ascii	"_temp_2562\0"
	.align
_Label_2566:
	.byte	'?'
	.ascii	"_temp_2561\0"
	.align
_Label_2567:
	.byte	'?'
	.ascii	"_temp_2560\0"
	.align
_Label_2568:
	.byte	'?'
	.ascii	"_temp_2559\0"
	.align
_Label_2569:
	.byte	'?'
	.ascii	"_temp_2558\0"
	.align
_Label_2570:
	.byte	'?'
	.ascii	"_temp_2557\0"
	.align
_Label_2571:
	.byte	'?'
	.ascii	"_temp_2556\0"
	.align
_Label_2572:
	.byte	'?'
	.ascii	"_temp_2555\0"
	.align
_Label_2573:
	.byte	'?'
	.ascii	"_temp_2554\0"
	.align
_Label_2574:
	.byte	'?'
	.ascii	"_temp_2553\0"
	.align
_Label_2575:
	.byte	'?'
	.ascii	"_temp_2552\0"
	.align
_Label_2576:
	.byte	'?'
	.ascii	"_temp_2551\0"
	.align
_Label_2577:
	.byte	'?'
	.ascii	"_temp_2550\0"
	.align
_Label_2578:
	.byte	'?'
	.ascii	"_temp_2549\0"
	.align
_Label_2579:
	.byte	'?'
	.ascii	"_temp_2544\0"
	.align
_Label_2580:
	.byte	'?'
	.ascii	"_temp_2543\0"
	.align
_Label_2581:
	.byte	'?'
	.ascii	"_temp_2542\0"
	.align
_Label_2582:
	.byte	'?'
	.ascii	"_temp_2541\0"
	.align
_Label_2583:
	.byte	'?'
	.ascii	"_temp_2539\0"
	.align
_Label_2584:
	.byte	'?'
	.ascii	"_temp_2538\0"
	.align
_Label_2585:
	.byte	'?'
	.ascii	"_temp_2537\0"
	.align
_Label_2586:
	.byte	'?'
	.ascii	"_temp_2536\0"
	.align
_Label_2587:
	.byte	'?'
	.ascii	"_temp_2535\0"
	.align
_Label_2588:
	.byte	'?'
	.ascii	"_temp_2534\0"
	.align
_Label_2589:
	.byte	'?'
	.ascii	"_temp_2533\0"
	.align
_Label_2590:
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
_Label_4449:
	push	r0
	sub	r1,1,r1
	bne	_Label_4449
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
!   _temp_2591 = _StringConst_100
	set	_StringConst_100,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2591  sizeInBytes=4
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
!   _temp_2596 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2597 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2596  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-52]
_Label_2592:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2597 then goto _Label_2595		
	load	[r14+-52],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2595
_Label_2593:
	mov	921,r13		! source line 921
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2598 = _StringConst_101
	set	_StringConst_101,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2598  sizeInBytes=4
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
!   _temp_2599 = _StringConst_102
	set	_StringConst_102,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2599  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	924,r13		! source line 924
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	925,r13		! source line 925
	mov	"\0\0SE",r10
!   _temp_2600 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_2600 [i ] into _temp_2601
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
_Label_2594:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_2592
! END FOR
_Label_2595:
! CALL STATEMENT...
!   _temp_2602 = _StringConst_103
	set	_StringConst_103,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2602  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	927,r13		! source line 927
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	928,r13		! source line 928
	mov	"\0\0SE",r10
!   _temp_2603 = _function_193_PrintObjectAddr
	set	_function_193_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_2604 = &freeList
	load	[r14+8],r1
	add	r1,1724,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2603  sizeInBytes=4
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
	.word	_Label_2605
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_2606
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2607
	.word	-12
	.word	4
	.word	_Label_2608
	.word	-16
	.word	4
	.word	_Label_2609
	.word	-20
	.word	4
	.word	_Label_2610
	.word	-24
	.word	4
	.word	_Label_2611
	.word	-28
	.word	4
	.word	_Label_2612
	.word	-32
	.word	4
	.word	_Label_2613
	.word	-36
	.word	4
	.word	_Label_2614
	.word	-40
	.word	4
	.word	_Label_2615
	.word	-44
	.word	4
	.word	_Label_2616
	.word	-48
	.word	4
	.word	_Label_2617
	.word	-52
	.word	4
	.word	_Label_2618
	.word	-56
	.word	4
	.word	0
_Label_2605:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2606:
	.ascii	"Pself\0"
	.align
_Label_2607:
	.byte	'?'
	.ascii	"_temp_2604\0"
	.align
_Label_2608:
	.byte	'?'
	.ascii	"_temp_2603\0"
	.align
_Label_2609:
	.byte	'?'
	.ascii	"_temp_2602\0"
	.align
_Label_2610:
	.byte	'?'
	.ascii	"_temp_2601\0"
	.align
_Label_2611:
	.byte	'?'
	.ascii	"_temp_2600\0"
	.align
_Label_2612:
	.byte	'?'
	.ascii	"_temp_2599\0"
	.align
_Label_2613:
	.byte	'?'
	.ascii	"_temp_2598\0"
	.align
_Label_2614:
	.byte	'?'
	.ascii	"_temp_2597\0"
	.align
_Label_2615:
	.byte	'?'
	.ascii	"_temp_2596\0"
	.align
_Label_2616:
	.byte	'?'
	.ascii	"_temp_2591\0"
	.align
_Label_2617:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2618:
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
_Label_4450:
	push	r0
	sub	r1,1,r1
	bne	_Label_4450
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
!   _temp_2619 = _StringConst_104
	set	_StringConst_104,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_2619  sizeInBytes=4
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
!   _temp_2624 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2625 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2624  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-48]
_Label_2620:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2625 then goto _Label_2623		
	load	[r14+-48],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2623
_Label_2621:
	mov	944,r13		! source line 944
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2626 = _StringConst_105
	set	_StringConst_105,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2626  sizeInBytes=4
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
!   _temp_2627 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_2627 [i ] into _temp_2628
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
_Label_2622:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_2620
! END FOR
_Label_2623:
! CALL STATEMENT...
!   _temp_2629 = _StringConst_106
	set	_StringConst_106,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2629  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	949,r13		! source line 949
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	950,r13		! source line 950
	mov	"\0\0SE",r10
!   _temp_2630 = _function_193_PrintObjectAddr
	set	_function_193_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_2631 = &freeList
	load	[r14+8],r1
	add	r1,1724,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2630  sizeInBytes=4
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
	.word	_Label_2632
	.word	4		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2633
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2634
	.word	-12
	.word	4
	.word	_Label_2635
	.word	-16
	.word	4
	.word	_Label_2636
	.word	-20
	.word	4
	.word	_Label_2637
	.word	-24
	.word	4
	.word	_Label_2638
	.word	-28
	.word	4
	.word	_Label_2639
	.word	-32
	.word	4
	.word	_Label_2640
	.word	-36
	.word	4
	.word	_Label_2641
	.word	-40
	.word	4
	.word	_Label_2642
	.word	-44
	.word	4
	.word	_Label_2643
	.word	-48
	.word	4
	.word	_Label_2644
	.word	-52
	.word	4
	.word	0
_Label_2632:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_2633:
	.ascii	"Pself\0"
	.align
_Label_2634:
	.byte	'?'
	.ascii	"_temp_2631\0"
	.align
_Label_2635:
	.byte	'?'
	.ascii	"_temp_2630\0"
	.align
_Label_2636:
	.byte	'?'
	.ascii	"_temp_2629\0"
	.align
_Label_2637:
	.byte	'?'
	.ascii	"_temp_2628\0"
	.align
_Label_2638:
	.byte	'?'
	.ascii	"_temp_2627\0"
	.align
_Label_2639:
	.byte	'?'
	.ascii	"_temp_2626\0"
	.align
_Label_2640:
	.byte	'?'
	.ascii	"_temp_2625\0"
	.align
_Label_2641:
	.byte	'?'
	.ascii	"_temp_2624\0"
	.align
_Label_2642:
	.byte	'?'
	.ascii	"_temp_2619\0"
	.align
_Label_2643:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2644:
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
_Label_4451:
	push	r0
	sub	r1,1,r1
	bne	_Label_4451
	mov	957,r13		! source line 957
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	964,r13		! source line 964
	mov	"\0\0SE",r10
!   _temp_2645 = &processManagerLock
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
_Label_2646:
	mov	965,r13		! source line 965
	mov	"\0\0SE",r10
!   _temp_2649 = &freeList
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
!   if result==true then goto _Label_2647 else goto _Label_2648
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2648
	jmp	_Label_2647
_Label_2647:
	mov	965,r13		! source line 965
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	966,r13		! source line 966
	mov	"\0\0SE",r10
!   _temp_2650 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-32]
!   _temp_2651 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1708,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_2650  sizeInBytes=4
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
	jmp	_Label_2646
_Label_2648:
! ASSIGNMENT STATEMENT...
	mov	968,r13		! source line 968
	mov	"\0\0AS",r10
	mov	968,r13		! source line 968
	mov	"\0\0SE",r10
!   _temp_2652 = &freeList
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
!   _temp_2653 = nextProcessPtr + 12
	load	[r14+-44],r1
	add	r1,12,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2653 = nextPid  (sizeInBytes=4)
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
!   _temp_2654 = nextProcessPtr + 20
	load	[r14+-44],r1
	add	r1,20,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2654 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	972,r13		! source line 972
	mov	"\0\0SE",r10
!   _temp_2655 = &processManagerLock
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
	.word	_Label_2656
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_2657
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2658
	.word	-12
	.word	4
	.word	_Label_2659
	.word	-16
	.word	4
	.word	_Label_2660
	.word	-20
	.word	4
	.word	_Label_2661
	.word	-24
	.word	4
	.word	_Label_2662
	.word	-28
	.word	4
	.word	_Label_2663
	.word	-32
	.word	4
	.word	_Label_2664
	.word	-36
	.word	4
	.word	_Label_2665
	.word	-40
	.word	4
	.word	_Label_2666
	.word	-44
	.word	4
	.word	0
_Label_2656:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"GetANewProcess\0"
	.align
_Label_2657:
	.ascii	"Pself\0"
	.align
_Label_2658:
	.byte	'?'
	.ascii	"_temp_2655\0"
	.align
_Label_2659:
	.byte	'?'
	.ascii	"_temp_2654\0"
	.align
_Label_2660:
	.byte	'?'
	.ascii	"_temp_2653\0"
	.align
_Label_2661:
	.byte	'?'
	.ascii	"_temp_2652\0"
	.align
_Label_2662:
	.byte	'?'
	.ascii	"_temp_2651\0"
	.align
_Label_2663:
	.byte	'?'
	.ascii	"_temp_2650\0"
	.align
_Label_2664:
	.byte	'?'
	.ascii	"_temp_2649\0"
	.align
_Label_2665:
	.byte	'?'
	.ascii	"_temp_2645\0"
	.align
_Label_2666:
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
_Label_4452:
	push	r0
	sub	r1,1,r1
	bne	_Label_4452
	mov	978,r13		! source line 978
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	982,r13		! source line 982
	mov	"\0\0SE",r10
!   _temp_2667 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-244]
!   _temp_2668 = _temp_2667 + 1688
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
!   _temp_2673 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-236]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2674 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-232]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2673  (sizeInBytes=4)
	load	[r14+-236],r1
	store	r1,[r14+-248]
_Label_2669:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2674 then goto _Label_2672		
	load	[r14+-248],r1
	load	[r14+-232],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2672
_Label_2670:
	mov	985,r13		! source line 985
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	986,r13		! source line 986
	mov	"\0\0IF",r10
!   _temp_2678 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-224]
!   _temp_2679 = _temp_2678 + 4
	load	[r14+-224],r1
	add	r1,4,r1
	store	r1,[r14+-220]
!   Move address of _temp_2679 [i ] into _temp_2680
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
!   _temp_2681 = _temp_2680 + 12
	load	[r14+-216],r1
	add	r1,12,r1
	store	r1,[r14+-212]
!   Data Move: _temp_2677 = *_temp_2681  (sizeInBytes=4)
	load	[r14+-212],r1
	load	[r1],r1
	store	r1,[r14+-228]
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2683 = p + 16
	load	[r14+12],r1
	add	r1,16,r1
	store	r1,[r14+-204]
!   Data Move: _temp_2682 = *_temp_2683  (sizeInBytes=4)
	load	[r14+-204],r1
	load	[r1],r1
	store	r1,[r14+-208]
!   if _temp_2677 != _temp_2682 then goto _Label_2676		(int)
	load	[r14+-228],r1
	load	[r14+-208],r2
	cmp	r1,r2
	bne	_Label_2676
!	jmp	_Label_2675
_Label_2675:
! THEN...
	mov	987,r13		! source line 987
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	987,r13		! source line 987
	mov	"\0\0AS",r10
!   _temp_2684 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-200]
!   _temp_2685 = _temp_2684 + 4
	load	[r14+-200],r1
	add	r1,4,r1
	store	r1,[r14+-196]
!   Move address of _temp_2685 [i ] into _temp_2686
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
!   parentPcb = _temp_2686		(4 bytes)
	load	[r14+-192],r1
	store	r1,[r14+-252]
! END IF...
_Label_2676:
! IF STATEMENT...
	mov	989,r13		! source line 989
	mov	"\0\0IF",r10
!   _temp_2691 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-184]
!   _temp_2692 = _temp_2691 + 4
	load	[r14+-184],r1
	add	r1,4,r1
	store	r1,[r14+-180]
!   Move address of _temp_2692 [i ] into _temp_2693
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
!   _temp_2694 = _temp_2693 + 20
	load	[r14+-176],r1
	add	r1,20,r1
	store	r1,[r14+-172]
!   Data Move: _temp_2690 = *_temp_2694  (sizeInBytes=4)
	load	[r14+-172],r1
	load	[r1],r1
	store	r1,[r14+-188]
!   if _temp_2690 != 2 then goto _Label_2688		(int)
	load	[r14+-188],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_2688
!	jmp	_Label_2689
_Label_2689:
!   _temp_2696 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-164]
!   _temp_2697 = _temp_2696 + 4
	load	[r14+-164],r1
	add	r1,4,r1
	store	r1,[r14+-160]
!   Move address of _temp_2697 [i ] into _temp_2698
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
!   _temp_2699 = _temp_2698 + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-152]
!   Data Move: _temp_2695 = *_temp_2699  (sizeInBytes=4)
	load	[r14+-152],r1
	load	[r1],r1
	store	r1,[r14+-168]
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2701 = p + 12
	load	[r14+12],r1
	add	r1,12,r1
	store	r1,[r14+-144]
!   Data Move: _temp_2700 = *_temp_2701  (sizeInBytes=4)
	load	[r14+-144],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   if _temp_2695 != _temp_2700 then goto _Label_2688		(int)
	load	[r14+-168],r1
	load	[r14+-148],r2
	cmp	r1,r2
	bne	_Label_2688
!	jmp	_Label_2687
_Label_2687:
! THEN...
	mov	990,r13		! source line 990
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	990,r13		! source line 990
	mov	"\0\0AS",r10
!   _temp_2702 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-140]
!   _temp_2703 = _temp_2702 + 4
	load	[r14+-140],r1
	add	r1,4,r1
	store	r1,[r14+-136]
!   Move address of _temp_2703 [i ] into _temp_2704
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
!   _temp_2705 = _temp_2704 + 20
	load	[r14+-132],r1
	add	r1,20,r1
	store	r1,[r14+-128]
!   Data Move: *_temp_2705 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-128],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	991,r13		! source line 991
	mov	"\0\0SE",r10
!   _temp_2707 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-120]
!   _temp_2708 = _temp_2707 + 4
	load	[r14+-120],r1
	add	r1,4,r1
	store	r1,[r14+-116]
!   Move address of _temp_2708 [i ] into _temp_2709
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
!   _temp_2706 = _temp_2709		(4 bytes)
	load	[r14+-112],r1
	store	r1,[r14+-124]
!   _temp_2710 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-108]
!   _temp_2711 = _temp_2710 + 1724
	load	[r14+-108],r1
	add	r1,1724,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=12  value=_temp_2706  sizeInBytes=4
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
!   _temp_2713 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-96]
!   _temp_2714 = _temp_2713 + 1688
	load	[r14+-96],r1
	add	r1,1688,r1
	store	r1,[r14+-92]
!   _temp_2712 = _temp_2714		(4 bytes)
	load	[r14+-92],r1
	store	r1,[r14+-100]
!   _temp_2715 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-88]
!   _temp_2716 = _temp_2715 + 1708
	load	[r14+-88],r1
	add	r1,1708,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=12  value=_temp_2712  sizeInBytes=4
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
_Label_2688:
!   Increment the FOR-LOOP index variable and jump back
_Label_2671:
!   i = i + 1
	load	[r14+-248],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-248]
	jmp	_Label_2669
! END FOR
_Label_2672:
! IF STATEMENT...
	mov	997,r13		! source line 997
	mov	"\0\0IF",r10
!   if intIsZero (parentPcb) then goto _Label_2718
	load	[r14+-252],r1
	cmp	r1,r0
	be	_Label_2718
!	jmp	_Label_2719
_Label_2719:
!   if intIsZero (parentPcb) then goto _runtimeErrorNullPointer
	load	[r14+-252],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2721 = parentPcb + 20
	load	[r14+-252],r1
	add	r1,20,r1
	store	r1,[r14+-76]
!   Data Move: _temp_2720 = *_temp_2721  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_2720 != 1 then goto _Label_2718		(int)
	load	[r14+-80],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_2718
!	jmp	_Label_2717
_Label_2717:
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
!   _temp_2722 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-72]
!   Data Move: *_temp_2722 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-72],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	999,r13		! source line 999
	mov	"\0\0SE",r10
!   _temp_2724 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-64]
!   _temp_2725 = _temp_2724 + 1688
	load	[r14+-64],r1
	add	r1,1688,r1
	store	r1,[r14+-60]
!   _temp_2723 = _temp_2725		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-68]
!   _temp_2726 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-56]
!   _temp_2727 = _temp_2726 + 1736
	load	[r14+-56],r1
	add	r1,1736,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_2723  sizeInBytes=4
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
	jmp	_Label_2728
_Label_2718:
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
!   _temp_2729 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_2729 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1002,r13		! source line 1002
	mov	"\0\0SE",r10
!   _temp_2730 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-44]
!   _temp_2731 = _temp_2730 + 1724
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
!   _temp_2733 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-32]
!   _temp_2734 = _temp_2733 + 1688
	load	[r14+-32],r1
	add	r1,1688,r1
	store	r1,[r14+-28]
!   _temp_2732 = _temp_2734		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   _temp_2735 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-24]
!   _temp_2736 = _temp_2735 + 1708
	load	[r14+-24],r1
	add	r1,1708,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_2732  sizeInBytes=4
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
_Label_2728:
! SEND STATEMENT...
	mov	1006,r13		! source line 1006
	mov	"\0\0SE",r10
!   _temp_2737 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-16]
!   _temp_2738 = _temp_2737 + 1688
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
	.word	_Label_2739
	.word	8		! total size of parameters
	.word	252		! frame size = 252
	.word	_Label_2740
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2741
	.word	12
	.word	4
	.word	_Label_2742
	.word	-12
	.word	4
	.word	_Label_2743
	.word	-16
	.word	4
	.word	_Label_2744
	.word	-20
	.word	4
	.word	_Label_2745
	.word	-24
	.word	4
	.word	_Label_2746
	.word	-28
	.word	4
	.word	_Label_2747
	.word	-32
	.word	4
	.word	_Label_2748
	.word	-36
	.word	4
	.word	_Label_2749
	.word	-40
	.word	4
	.word	_Label_2750
	.word	-44
	.word	4
	.word	_Label_2751
	.word	-48
	.word	4
	.word	_Label_2752
	.word	-52
	.word	4
	.word	_Label_2753
	.word	-56
	.word	4
	.word	_Label_2754
	.word	-60
	.word	4
	.word	_Label_2755
	.word	-64
	.word	4
	.word	_Label_2756
	.word	-68
	.word	4
	.word	_Label_2757
	.word	-72
	.word	4
	.word	_Label_2758
	.word	-76
	.word	4
	.word	_Label_2759
	.word	-80
	.word	4
	.word	_Label_2760
	.word	-84
	.word	4
	.word	_Label_2761
	.word	-88
	.word	4
	.word	_Label_2762
	.word	-92
	.word	4
	.word	_Label_2763
	.word	-96
	.word	4
	.word	_Label_2764
	.word	-100
	.word	4
	.word	_Label_2765
	.word	-104
	.word	4
	.word	_Label_2766
	.word	-108
	.word	4
	.word	_Label_2767
	.word	-112
	.word	4
	.word	_Label_2768
	.word	-116
	.word	4
	.word	_Label_2769
	.word	-120
	.word	4
	.word	_Label_2770
	.word	-124
	.word	4
	.word	_Label_2771
	.word	-128
	.word	4
	.word	_Label_2772
	.word	-132
	.word	4
	.word	_Label_2773
	.word	-136
	.word	4
	.word	_Label_2774
	.word	-140
	.word	4
	.word	_Label_2775
	.word	-144
	.word	4
	.word	_Label_2776
	.word	-148
	.word	4
	.word	_Label_2777
	.word	-152
	.word	4
	.word	_Label_2778
	.word	-156
	.word	4
	.word	_Label_2779
	.word	-160
	.word	4
	.word	_Label_2780
	.word	-164
	.word	4
	.word	_Label_2781
	.word	-168
	.word	4
	.word	_Label_2782
	.word	-172
	.word	4
	.word	_Label_2783
	.word	-176
	.word	4
	.word	_Label_2784
	.word	-180
	.word	4
	.word	_Label_2785
	.word	-184
	.word	4
	.word	_Label_2786
	.word	-188
	.word	4
	.word	_Label_2787
	.word	-192
	.word	4
	.word	_Label_2788
	.word	-196
	.word	4
	.word	_Label_2789
	.word	-200
	.word	4
	.word	_Label_2790
	.word	-204
	.word	4
	.word	_Label_2791
	.word	-208
	.word	4
	.word	_Label_2792
	.word	-212
	.word	4
	.word	_Label_2793
	.word	-216
	.word	4
	.word	_Label_2794
	.word	-220
	.word	4
	.word	_Label_2795
	.word	-224
	.word	4
	.word	_Label_2796
	.word	-228
	.word	4
	.word	_Label_2797
	.word	-232
	.word	4
	.word	_Label_2798
	.word	-236
	.word	4
	.word	_Label_2799
	.word	-240
	.word	4
	.word	_Label_2800
	.word	-244
	.word	4
	.word	_Label_2801
	.word	-248
	.word	4
	.word	_Label_2802
	.word	-252
	.word	4
	.word	0
_Label_2739:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"TurnIntoZombie\0"
	.align
_Label_2740:
	.ascii	"Pself\0"
	.align
_Label_2741:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_2742:
	.byte	'?'
	.ascii	"_temp_2738\0"
	.align
_Label_2743:
	.byte	'?'
	.ascii	"_temp_2737\0"
	.align
_Label_2744:
	.byte	'?'
	.ascii	"_temp_2736\0"
	.align
_Label_2745:
	.byte	'?'
	.ascii	"_temp_2735\0"
	.align
_Label_2746:
	.byte	'?'
	.ascii	"_temp_2734\0"
	.align
_Label_2747:
	.byte	'?'
	.ascii	"_temp_2733\0"
	.align
_Label_2748:
	.byte	'?'
	.ascii	"_temp_2732\0"
	.align
_Label_2749:
	.byte	'?'
	.ascii	"_temp_2731\0"
	.align
_Label_2750:
	.byte	'?'
	.ascii	"_temp_2730\0"
	.align
_Label_2751:
	.byte	'?'
	.ascii	"_temp_2729\0"
	.align
_Label_2752:
	.byte	'?'
	.ascii	"_temp_2727\0"
	.align
_Label_2753:
	.byte	'?'
	.ascii	"_temp_2726\0"
	.align
_Label_2754:
	.byte	'?'
	.ascii	"_temp_2725\0"
	.align
_Label_2755:
	.byte	'?'
	.ascii	"_temp_2724\0"
	.align
_Label_2756:
	.byte	'?'
	.ascii	"_temp_2723\0"
	.align
_Label_2757:
	.byte	'?'
	.ascii	"_temp_2722\0"
	.align
_Label_2758:
	.byte	'?'
	.ascii	"_temp_2721\0"
	.align
_Label_2759:
	.byte	'?'
	.ascii	"_temp_2720\0"
	.align
_Label_2760:
	.byte	'?'
	.ascii	"_temp_2716\0"
	.align
_Label_2761:
	.byte	'?'
	.ascii	"_temp_2715\0"
	.align
_Label_2762:
	.byte	'?'
	.ascii	"_temp_2714\0"
	.align
_Label_2763:
	.byte	'?'
	.ascii	"_temp_2713\0"
	.align
_Label_2764:
	.byte	'?'
	.ascii	"_temp_2712\0"
	.align
_Label_2765:
	.byte	'?'
	.ascii	"_temp_2711\0"
	.align
_Label_2766:
	.byte	'?'
	.ascii	"_temp_2710\0"
	.align
_Label_2767:
	.byte	'?'
	.ascii	"_temp_2709\0"
	.align
_Label_2768:
	.byte	'?'
	.ascii	"_temp_2708\0"
	.align
_Label_2769:
	.byte	'?'
	.ascii	"_temp_2707\0"
	.align
_Label_2770:
	.byte	'?'
	.ascii	"_temp_2706\0"
	.align
_Label_2771:
	.byte	'?'
	.ascii	"_temp_2705\0"
	.align
_Label_2772:
	.byte	'?'
	.ascii	"_temp_2704\0"
	.align
_Label_2773:
	.byte	'?'
	.ascii	"_temp_2703\0"
	.align
_Label_2774:
	.byte	'?'
	.ascii	"_temp_2702\0"
	.align
_Label_2775:
	.byte	'?'
	.ascii	"_temp_2701\0"
	.align
_Label_2776:
	.byte	'?'
	.ascii	"_temp_2700\0"
	.align
_Label_2777:
	.byte	'?'
	.ascii	"_temp_2699\0"
	.align
_Label_2778:
	.byte	'?'
	.ascii	"_temp_2698\0"
	.align
_Label_2779:
	.byte	'?'
	.ascii	"_temp_2697\0"
	.align
_Label_2780:
	.byte	'?'
	.ascii	"_temp_2696\0"
	.align
_Label_2781:
	.byte	'?'
	.ascii	"_temp_2695\0"
	.align
_Label_2782:
	.byte	'?'
	.ascii	"_temp_2694\0"
	.align
_Label_2783:
	.byte	'?'
	.ascii	"_temp_2693\0"
	.align
_Label_2784:
	.byte	'?'
	.ascii	"_temp_2692\0"
	.align
_Label_2785:
	.byte	'?'
	.ascii	"_temp_2691\0"
	.align
_Label_2786:
	.byte	'?'
	.ascii	"_temp_2690\0"
	.align
_Label_2787:
	.byte	'?'
	.ascii	"_temp_2686\0"
	.align
_Label_2788:
	.byte	'?'
	.ascii	"_temp_2685\0"
	.align
_Label_2789:
	.byte	'?'
	.ascii	"_temp_2684\0"
	.align
_Label_2790:
	.byte	'?'
	.ascii	"_temp_2683\0"
	.align
_Label_2791:
	.byte	'?'
	.ascii	"_temp_2682\0"
	.align
_Label_2792:
	.byte	'?'
	.ascii	"_temp_2681\0"
	.align
_Label_2793:
	.byte	'?'
	.ascii	"_temp_2680\0"
	.align
_Label_2794:
	.byte	'?'
	.ascii	"_temp_2679\0"
	.align
_Label_2795:
	.byte	'?'
	.ascii	"_temp_2678\0"
	.align
_Label_2796:
	.byte	'?'
	.ascii	"_temp_2677\0"
	.align
_Label_2797:
	.byte	'?'
	.ascii	"_temp_2674\0"
	.align
_Label_2798:
	.byte	'?'
	.ascii	"_temp_2673\0"
	.align
_Label_2799:
	.byte	'?'
	.ascii	"_temp_2668\0"
	.align
_Label_2800:
	.byte	'?'
	.ascii	"_temp_2667\0"
	.align
_Label_2801:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2802:
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
_Label_4453:
	push	r0
	sub	r1,1,r1
	bne	_Label_4453
	mov	1012,r13		! source line 1012
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1016,r13		! source line 1016
	mov	"\0\0SE",r10
!   _temp_2803 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-88]
!   _temp_2804 = _temp_2803 + 1688
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
_Label_2805:
!   if intIsZero (proc) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2809 = proc + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-76]
!   Data Move: _temp_2808 = *_temp_2809  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_2808 == 2 then goto _Label_2807		(int)
	load	[r14+-80],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_2807
!	jmp	_Label_2806
_Label_2806:
	mov	1018,r13		! source line 1018
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1019,r13		! source line 1019
	mov	"\0\0SE",r10
!   _temp_2811 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-68]
!   _temp_2812 = _temp_2811 + 1688
	load	[r14+-68],r1
	add	r1,1688,r1
	store	r1,[r14+-64]
!   _temp_2810 = _temp_2812		(4 bytes)
	load	[r14+-64],r1
	store	r1,[r14+-72]
!   _temp_2813 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-60]
!   _temp_2814 = _temp_2813 + 1736
	load	[r14+-60],r1
	add	r1,1736,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=12  value=_temp_2810  sizeInBytes=4
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
	jmp	_Label_2805
_Label_2807:
! ASSIGNMENT STATEMENT...
	mov	1022,r13		! source line 1022
	mov	"\0\0AS",r10
!   if intIsZero (proc) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2815 = proc + 28
	load	[r14+12],r1
	add	r1,28,r1
	store	r1,[r14+-52]
!   Data Move: procExitStatus = *_temp_2815  (sizeInBytes=4)
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
!   _temp_2816 = proc + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_2816 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1024,r13		! source line 1024
	mov	"\0\0SE",r10
!   _temp_2817 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-44]
!   _temp_2818 = _temp_2817 + 1724
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
!   _temp_2820 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-32]
!   _temp_2821 = _temp_2820 + 1688
	load	[r14+-32],r1
	add	r1,1688,r1
	store	r1,[r14+-28]
!   _temp_2819 = _temp_2821		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   _temp_2822 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-24]
!   _temp_2823 = _temp_2822 + 1708
	load	[r14+-24],r1
	add	r1,1708,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_2819  sizeInBytes=4
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
!   _temp_2824 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-16]
!   _temp_2825 = _temp_2824 + 1688
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
	.word	_Label_2826
	.word	8		! total size of parameters
	.word	92		! frame size = 92
	.word	_Label_2827
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2828
	.word	12
	.word	4
	.word	_Label_2829
	.word	-12
	.word	4
	.word	_Label_2830
	.word	-16
	.word	4
	.word	_Label_2831
	.word	-20
	.word	4
	.word	_Label_2832
	.word	-24
	.word	4
	.word	_Label_2833
	.word	-28
	.word	4
	.word	_Label_2834
	.word	-32
	.word	4
	.word	_Label_2835
	.word	-36
	.word	4
	.word	_Label_2836
	.word	-40
	.word	4
	.word	_Label_2837
	.word	-44
	.word	4
	.word	_Label_2838
	.word	-48
	.word	4
	.word	_Label_2839
	.word	-52
	.word	4
	.word	_Label_2840
	.word	-56
	.word	4
	.word	_Label_2841
	.word	-60
	.word	4
	.word	_Label_2842
	.word	-64
	.word	4
	.word	_Label_2843
	.word	-68
	.word	4
	.word	_Label_2844
	.word	-72
	.word	4
	.word	_Label_2845
	.word	-76
	.word	4
	.word	_Label_2846
	.word	-80
	.word	4
	.word	_Label_2847
	.word	-84
	.word	4
	.word	_Label_2848
	.word	-88
	.word	4
	.word	_Label_2849
	.word	-92
	.word	4
	.word	0
_Label_2826:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"WaitForZombie\0"
	.align
_Label_2827:
	.ascii	"Pself\0"
	.align
_Label_2828:
	.byte	'P'
	.ascii	"proc\0"
	.align
_Label_2829:
	.byte	'?'
	.ascii	"_temp_2825\0"
	.align
_Label_2830:
	.byte	'?'
	.ascii	"_temp_2824\0"
	.align
_Label_2831:
	.byte	'?'
	.ascii	"_temp_2823\0"
	.align
_Label_2832:
	.byte	'?'
	.ascii	"_temp_2822\0"
	.align
_Label_2833:
	.byte	'?'
	.ascii	"_temp_2821\0"
	.align
_Label_2834:
	.byte	'?'
	.ascii	"_temp_2820\0"
	.align
_Label_2835:
	.byte	'?'
	.ascii	"_temp_2819\0"
	.align
_Label_2836:
	.byte	'?'
	.ascii	"_temp_2818\0"
	.align
_Label_2837:
	.byte	'?'
	.ascii	"_temp_2817\0"
	.align
_Label_2838:
	.byte	'?'
	.ascii	"_temp_2816\0"
	.align
_Label_2839:
	.byte	'?'
	.ascii	"_temp_2815\0"
	.align
_Label_2840:
	.byte	'?'
	.ascii	"_temp_2814\0"
	.align
_Label_2841:
	.byte	'?'
	.ascii	"_temp_2813\0"
	.align
_Label_2842:
	.byte	'?'
	.ascii	"_temp_2812\0"
	.align
_Label_2843:
	.byte	'?'
	.ascii	"_temp_2811\0"
	.align
_Label_2844:
	.byte	'?'
	.ascii	"_temp_2810\0"
	.align
_Label_2845:
	.byte	'?'
	.ascii	"_temp_2809\0"
	.align
_Label_2846:
	.byte	'?'
	.ascii	"_temp_2808\0"
	.align
_Label_2847:
	.byte	'?'
	.ascii	"_temp_2804\0"
	.align
_Label_2848:
	.byte	'?'
	.ascii	"_temp_2803\0"
	.align
_Label_2849:
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
_Label_4454:
	push	r0
	sub	r1,1,r1
	bne	_Label_4454
	mov	1033,r13		! source line 1033
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1037,r13		! source line 1037
	mov	"\0\0SE",r10
!   _temp_2850 = &processManagerLock
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
!   _temp_2851 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2851 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1039,r13		! source line 1039
	mov	"\0\0SE",r10
!   _temp_2852 = &freeList
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
!   _temp_2853 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-20]
!   _temp_2854 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1708,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2853  sizeInBytes=4
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
!   _temp_2855 = &processManagerLock
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
	.word	_Label_2856
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_2857
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2858
	.word	12
	.word	4
	.word	_Label_2859
	.word	-12
	.word	4
	.word	_Label_2860
	.word	-16
	.word	4
	.word	_Label_2861
	.word	-20
	.word	4
	.word	_Label_2862
	.word	-24
	.word	4
	.word	_Label_2863
	.word	-28
	.word	4
	.word	_Label_2864
	.word	-32
	.word	4
	.word	0
_Label_2856:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"FreeProcess\0"
	.align
_Label_2857:
	.ascii	"Pself\0"
	.align
_Label_2858:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_2859:
	.byte	'?'
	.ascii	"_temp_2855\0"
	.align
_Label_2860:
	.byte	'?'
	.ascii	"_temp_2854\0"
	.align
_Label_2861:
	.byte	'?'
	.ascii	"_temp_2853\0"
	.align
_Label_2862:
	.byte	'?'
	.ascii	"_temp_2852\0"
	.align
_Label_2863:
	.byte	'?'
	.ascii	"_temp_2851\0"
	.align
_Label_2864:
	.byte	'?'
	.ascii	"_temp_2850\0"
	.align
! 
! ===============  CLASS FrameManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FrameManager:
	.word	_Label_2865
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
_Label_2865:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2866
	.word	_sourceFileName
	.word	290		! line number
	.word	56		! size of instances, in bytes
	.word	_P_Kernel_FrameManager
	.word	_P_System_Object
	.word	0
_Label_2866:
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
_Label_4455:
	push	r0
	sub	r1,1,r1
	bne	_Label_4455
	mov	1090,r13		! source line 1090
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2867 = _StringConst_107
	set	_StringConst_107,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_2867  sizeInBytes=4
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
!   _temp_2869 = &framesInUse
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
!   _temp_2871 = &frameManagerLock
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
!   _temp_2873 = &newFramesAvailable
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
!   _temp_2878 = 1048576		(4 bytes)
	set	1048576,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2879 = 1048876		(4 bytes)
	set	1048876,r1
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2878  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-56]
_Label_2874:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2879 then goto _Label_2877		
	load	[r14+-56],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2877
_Label_2875:
	mov	1109,r13		! source line 1109
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1112,r13		! source line 1112
	mov	"\0\0IF",r10
!   if intIsZero (i) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2882 = *i  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2882) then goto _Label_2881
	load	[r14+-16],r1
	cmp	r1,r0
	be	_Label_2881
!	jmp	_Label_2880
_Label_2880:
! THEN...
	mov	1113,r13		! source line 1113
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2883 = _StringConst_108
	set	_StringConst_108,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2883  sizeInBytes=4
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
_Label_2881:
!   Increment the FOR-LOOP index variable and jump back
_Label_2876:
!   i = i + 4
	load	[r14+-56],r1
	add	r1,4,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_2874
! END FOR
_Label_2877:
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
	.word	_Label_2884
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_2885
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2886
	.word	-12
	.word	4
	.word	_Label_2887
	.word	-16
	.word	4
	.word	_Label_2888
	.word	-20
	.word	4
	.word	_Label_2889
	.word	-24
	.word	4
	.word	_Label_2890
	.word	-28
	.word	4
	.word	_Label_2891
	.word	-32
	.word	4
	.word	_Label_2892
	.word	-36
	.word	4
	.word	_Label_2893
	.word	-40
	.word	4
	.word	_Label_2894
	.word	-44
	.word	4
	.word	_Label_2895
	.word	-48
	.word	4
	.word	_Label_2896
	.word	-52
	.word	4
	.word	_Label_2897
	.word	-56
	.word	4
	.word	0
_Label_2884:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2885:
	.ascii	"Pself\0"
	.align
_Label_2886:
	.byte	'?'
	.ascii	"_temp_2883\0"
	.align
_Label_2887:
	.byte	'?'
	.ascii	"_temp_2882\0"
	.align
_Label_2888:
	.byte	'?'
	.ascii	"_temp_2879\0"
	.align
_Label_2889:
	.byte	'?'
	.ascii	"_temp_2878\0"
	.align
_Label_2890:
	.byte	'?'
	.ascii	"_temp_2873\0"
	.align
_Label_2891:
	.byte	'?'
	.ascii	"_temp_2872\0"
	.align
_Label_2892:
	.byte	'?'
	.ascii	"_temp_2871\0"
	.align
_Label_2893:
	.byte	'?'
	.ascii	"_temp_2870\0"
	.align
_Label_2894:
	.byte	'?'
	.ascii	"_temp_2869\0"
	.align
_Label_2895:
	.byte	'?'
	.ascii	"_temp_2868\0"
	.align
_Label_2896:
	.byte	'?'
	.ascii	"_temp_2867\0"
	.align
_Label_2897:
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
_Label_4456:
	push	r0
	sub	r1,1,r1
	bne	_Label_4456
	mov	1120,r13		! source line 1120
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1124,r13		! source line 1124
	mov	"\0\0SE",r10
!   _temp_2898 = &frameManagerLock
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
!   _temp_2899 = _StringConst_109
	set	_StringConst_109,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2899  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1125,r13		! source line 1125
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2900 = _StringConst_110
	set	_StringConst_110,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2900  sizeInBytes=4
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
!   _temp_2901 = _StringConst_111
	set	_StringConst_111,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2901  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1127,r13		! source line 1127
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1128,r13		! source line 1128
	mov	"\0\0SE",r10
!   _temp_2902 = &framesInUse
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
!   _temp_2903 = &frameManagerLock
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
	.word	_Label_2904
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_2905
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2906
	.word	-12
	.word	4
	.word	_Label_2907
	.word	-16
	.word	4
	.word	_Label_2908
	.word	-20
	.word	4
	.word	_Label_2909
	.word	-24
	.word	4
	.word	_Label_2910
	.word	-28
	.word	4
	.word	_Label_2911
	.word	-32
	.word	4
	.word	0
_Label_2904:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2905:
	.ascii	"Pself\0"
	.align
_Label_2906:
	.byte	'?'
	.ascii	"_temp_2903\0"
	.align
_Label_2907:
	.byte	'?'
	.ascii	"_temp_2902\0"
	.align
_Label_2908:
	.byte	'?'
	.ascii	"_temp_2901\0"
	.align
_Label_2909:
	.byte	'?'
	.ascii	"_temp_2900\0"
	.align
_Label_2910:
	.byte	'?'
	.ascii	"_temp_2899\0"
	.align
_Label_2911:
	.byte	'?'
	.ascii	"_temp_2898\0"
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
_Label_4457:
	push	r0
	sub	r1,1,r1
	bne	_Label_4457
	mov	1134,r13		! source line 1134
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1141,r13		! source line 1141
	mov	"\0\0SE",r10
!   _temp_2912 = &frameManagerLock
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
_Label_2913:
!   if numberFreeFrames >= 1 then goto _Label_2915		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2915
!	jmp	_Label_2914
_Label_2914:
	mov	1144,r13		! source line 1144
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1145,r13		! source line 1145
	mov	"\0\0SE",r10
!   _temp_2916 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   _temp_2917 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_2916  sizeInBytes=4
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
	jmp	_Label_2913
_Label_2915:
! ASSIGNMENT STATEMENT...
	mov	1149,r13		! source line 1149
	mov	"\0\0AS",r10
	mov	1149,r13		! source line 1149
	mov	"\0\0SE",r10
!   _temp_2918 = &framesInUse
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
!   _temp_2919 = &frameManagerLock
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
!   _temp_2920 = f * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   frameAddr = 1048576 + _temp_2920		(int)
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
	.word	_Label_2921
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_2922
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2923
	.word	-12
	.word	4
	.word	_Label_2924
	.word	-16
	.word	4
	.word	_Label_2925
	.word	-20
	.word	4
	.word	_Label_2926
	.word	-24
	.word	4
	.word	_Label_2927
	.word	-28
	.word	4
	.word	_Label_2928
	.word	-32
	.word	4
	.word	_Label_2929
	.word	-36
	.word	4
	.word	_Label_2930
	.word	-40
	.word	4
	.word	0
_Label_2921:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetAFrame\0"
	.align
_Label_2922:
	.ascii	"Pself\0"
	.align
_Label_2923:
	.byte	'?'
	.ascii	"_temp_2920\0"
	.align
_Label_2924:
	.byte	'?'
	.ascii	"_temp_2919\0"
	.align
_Label_2925:
	.byte	'?'
	.ascii	"_temp_2918\0"
	.align
_Label_2926:
	.byte	'?'
	.ascii	"_temp_2917\0"
	.align
_Label_2927:
	.byte	'?'
	.ascii	"_temp_2916\0"
	.align
_Label_2928:
	.byte	'?'
	.ascii	"_temp_2912\0"
	.align
_Label_2929:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_2930:
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
_Label_4458:
	push	r0
	sub	r1,1,r1
	bne	_Label_4458
	mov	1161,r13		! source line 1161
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1168,r13		! source line 1168
	mov	"\0\0AS",r10
	mov	1168,r13		! source line 1168
	mov	"\0\0SE",r10
!   _temp_2931 = &framesInUse
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
!   _temp_2932 = f * 8192		(int)
	load	[r14+-20],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   frameAddr = 1048576 + _temp_2932		(int)
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
	.word	_Label_2933
	.word	4		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2934
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2935
	.word	-12
	.word	4
	.word	_Label_2936
	.word	-16
	.word	4
	.word	_Label_2937
	.word	-20
	.word	4
	.word	_Label_2938
	.word	-24
	.word	4
	.word	0
_Label_2933:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetAFrame2\0"
	.align
_Label_2934:
	.ascii	"Pself\0"
	.align
_Label_2935:
	.byte	'?'
	.ascii	"_temp_2932\0"
	.align
_Label_2936:
	.byte	'?'
	.ascii	"_temp_2931\0"
	.align
_Label_2937:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_2938:
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
_Label_4459:
	push	r0
	sub	r1,1,r1
	bne	_Label_4459
	mov	1178,r13		! source line 1178
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1182,r13		! source line 1182
	mov	"\0\0SE",r10
!   _temp_2939 = &frameManagerLock
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
_Label_2940:
!   if numberFreeFrames >= numFramesNeeded then goto _Label_2942		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2942
!	jmp	_Label_2941
_Label_2941:
	mov	1183,r13		! source line 1183
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1184,r13		! source line 1184
	mov	"\0\0SE",r10
!   _temp_2943 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   _temp_2944 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_2943  sizeInBytes=4
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
	jmp	_Label_2940
_Label_2942:
! FOR STATEMENT...
	mov	1186,r13		! source line 1186
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2949 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-28]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2950 = numFramesNeeded - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2949  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+-44]
_Label_2945:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2950 then goto _Label_2948		
	load	[r14+-44],r1
	load	[r14+-24],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2948
_Label_2946:
	mov	1186,r13		! source line 1186
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1187,r13		! source line 1187
	mov	"\0\0AS",r10
	mov	1187,r13		! source line 1187
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_2951) then goto _runtimeErrorNullPointer
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
_Label_2947:
!   i = i + 1
	load	[r14+-44],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
	jmp	_Label_2945
! END FOR
_Label_2948:
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
!   _temp_2952 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2952 = numFramesNeeded  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1192,r13		! source line 1192
	mov	"\0\0SE",r10
!   _temp_2953 = &frameManagerLock
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
	.word	_Label_2954
	.word	12		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2955
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2956
	.word	12
	.word	4
	.word	_Label_2957
	.word	16
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
	.word	_Label_2964
	.word	-36
	.word	4
	.word	_Label_2965
	.word	-40
	.word	4
	.word	_Label_2966
	.word	-44
	.word	4
	.word	_Label_2967
	.word	-48
	.word	4
	.word	0
_Label_2954:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetNewFrames\0"
	.align
_Label_2955:
	.ascii	"Pself\0"
	.align
_Label_2956:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_2957:
	.byte	'I'
	.ascii	"numFramesNeeded\0"
	.align
_Label_2958:
	.byte	'?'
	.ascii	"_temp_2953\0"
	.align
_Label_2959:
	.byte	'?'
	.ascii	"_temp_2952\0"
	.align
_Label_2960:
	.byte	'?'
	.ascii	"_temp_2951\0"
	.align
_Label_2961:
	.byte	'?'
	.ascii	"_temp_2950\0"
	.align
_Label_2962:
	.byte	'?'
	.ascii	"_temp_2949\0"
	.align
_Label_2963:
	.byte	'?'
	.ascii	"_temp_2944\0"
	.align
_Label_2964:
	.byte	'?'
	.ascii	"_temp_2943\0"
	.align
_Label_2965:
	.byte	'?'
	.ascii	"_temp_2939\0"
	.align
_Label_2966:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2967:
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
_Label_4460:
	push	r0
	sub	r1,1,r1
	bne	_Label_4460
	mov	1197,r13		! source line 1197
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1202,r13		! source line 1202
	mov	"\0\0SE",r10
!   _temp_2968 = &frameManagerLock
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
!   _temp_2973 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-52]
!   Calculate and save the FOR-LOOP ending value
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2976 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Data Move: _temp_2975 = *_temp_2976  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_2974 = _temp_2975 - 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2973  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+-60]
_Label_2969:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2974 then goto _Label_2972		
	load	[r14+-60],r1
	load	[r14+-48],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2972
_Label_2970:
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
!   _temp_2977 = frameAddr - 1048576		(int)
	load	[r14+-68],r1
	set	1048576,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   bitIndex = _temp_2977 div 8192		(int)
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
!   _temp_2978 = &framesInUse
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
_Label_2971:
!   i = i + 1
	load	[r14+-60],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
	jmp	_Label_2969
! END FOR
_Label_2972:
! ASSIGNMENT STATEMENT...
	mov	1208,r13		! source line 1208
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2980 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Data Move: _temp_2979 = *_temp_2980  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   numberFreeFrames = numberFreeFrames + _temp_2979		(int)
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
!   _temp_2981 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   _temp_2982 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2981  sizeInBytes=4
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
!   _temp_2983 = &frameManagerLock
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
	.word	_Label_2984
	.word	8		! total size of parameters
	.word	68		! frame size = 68
	.word	_Label_2985
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2986
	.word	12
	.word	4
	.word	_Label_2987
	.word	-12
	.word	4
	.word	_Label_2988
	.word	-16
	.word	4
	.word	_Label_2989
	.word	-20
	.word	4
	.word	_Label_2990
	.word	-24
	.word	4
	.word	_Label_2991
	.word	-28
	.word	4
	.word	_Label_2992
	.word	-32
	.word	4
	.word	_Label_2993
	.word	-36
	.word	4
	.word	_Label_2994
	.word	-40
	.word	4
	.word	_Label_2995
	.word	-44
	.word	4
	.word	_Label_2996
	.word	-48
	.word	4
	.word	_Label_2997
	.word	-52
	.word	4
	.word	_Label_2998
	.word	-56
	.word	4
	.word	_Label_2999
	.word	-60
	.word	4
	.word	_Label_3000
	.word	-64
	.word	4
	.word	_Label_3001
	.word	-68
	.word	4
	.word	0
_Label_2984:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"ReturnAllFrames\0"
	.align
_Label_2985:
	.ascii	"Pself\0"
	.align
_Label_2986:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_2987:
	.byte	'?'
	.ascii	"_temp_2983\0"
	.align
_Label_2988:
	.byte	'?'
	.ascii	"_temp_2982\0"
	.align
_Label_2989:
	.byte	'?'
	.ascii	"_temp_2981\0"
	.align
_Label_2990:
	.byte	'?'
	.ascii	"_temp_2980\0"
	.align
_Label_2991:
	.byte	'?'
	.ascii	"_temp_2979\0"
	.align
_Label_2992:
	.byte	'?'
	.ascii	"_temp_2978\0"
	.align
_Label_2993:
	.byte	'?'
	.ascii	"_temp_2977\0"
	.align
_Label_2994:
	.byte	'?'
	.ascii	"_temp_2976\0"
	.align
_Label_2995:
	.byte	'?'
	.ascii	"_temp_2975\0"
	.align
_Label_2996:
	.byte	'?'
	.ascii	"_temp_2974\0"
	.align
_Label_2997:
	.byte	'?'
	.ascii	"_temp_2973\0"
	.align
_Label_2998:
	.byte	'?'
	.ascii	"_temp_2968\0"
	.align
_Label_2999:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_3000:
	.byte	'I'
	.ascii	"bitIndex\0"
	.align
_Label_3001:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
! 
! ===============  CLASS AddrSpace  ===============
! 
! Dispatch Table:
! 
_P_Kernel_AddrSpace:
	.word	_Label_3002
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
_Label_3002:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3003
	.word	_sourceFileName
	.word	310		! line number
	.word	92		! size of instances, in bytes
	.word	_P_Kernel_AddrSpace
	.word	_P_System_Object
	.word	0
_Label_3003:
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
_Label_4461:
	push	r0
	sub	r1,1,r1
	bne	_Label_4461
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
!   _temp_3004 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-108]
!   NEW ARRAY Constructor...
!   _temp_3006 = &_temp_3005
	add	r14,-104,r1
	store	r1,[r14+-20]
!   _temp_3006 = _temp_3006 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	20,r1
	store	r1,[r14+-16]
_Label_3008:
!   Data Move: *_temp_3006 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_3006 = _temp_3006 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_3007 = _temp_3007 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_3007) then goto _Label_3008
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_3008
!   Initialize the array size...
	mov	20,r1
	store	r1,[r14+-104]
!   _temp_3009 = &_temp_3005
	add	r14,-104,r1
	store	r1,[r14+-12]
!   make sure array has size 20
	load	[r14+-108],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,0
	be	_Label_4462
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4462:
!   make sure array has size 20
	load	[r14+-12],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_3004 = *_temp_3009  (sizeInBytes=84)
	load	[r14+-12],r5
	load	[r14+-108],r4
	mov	21,r3
_Label_4463:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4463
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
	.word	_Label_3010
	.word	4		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_3011
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3012
	.word	-12
	.word	4
	.word	_Label_3013
	.word	-16
	.word	4
	.word	_Label_3014
	.word	-20
	.word	4
	.word	_Label_3015
	.word	-104
	.word	84
	.word	_Label_3016
	.word	-108
	.word	4
	.word	0
_Label_3010:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_3011:
	.ascii	"Pself\0"
	.align
_Label_3012:
	.byte	'?'
	.ascii	"_temp_3009\0"
	.align
_Label_3013:
	.byte	'?'
	.ascii	"_temp_3007\0"
	.align
_Label_3014:
	.byte	'?'
	.ascii	"_temp_3006\0"
	.align
_Label_3015:
	.byte	'?'
	.ascii	"_temp_3005\0"
	.align
_Label_3016:
	.byte	'?'
	.ascii	"_temp_3004\0"
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
_Label_4464:
	push	r0
	sub	r1,1,r1
	bne	_Label_4464
	mov	1231,r13		! source line 1231
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3017 = _StringConst_112
	set	_StringConst_112,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_3017  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	1236,r13		! source line 1236
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_3018 = _StringConst_113
	set	_StringConst_113,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_3018  sizeInBytes=4
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
!   _temp_3023 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-156]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3024 = numberOfPages - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3023  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+-168]
_Label_3019:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3024 then goto _Label_3022		
	load	[r14+-168],r1
	load	[r14+-152],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3022
_Label_3020:
	mov	1238,r13		! source line 1238
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_3025 = _StringConst_114
	set	_StringConst_114,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_3025  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	1239,r13		! source line 1239
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_3027 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-140]
!   Move address of _temp_3027 [i ] into _temp_3028
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
!   _temp_3026 = _temp_3028		(4 bytes)
	load	[r14+-136],r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_3026  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	1240,r13		! source line 1240
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_3029 = _StringConst_115
	set	_StringConst_115,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_3029  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	1241,r13		! source line 1241
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_3031 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-124]
!   Move address of _temp_3031 [i ] into _temp_3032
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
!   Data Move: _temp_3030 = *_temp_3032  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_3030  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	1242,r13		! source line 1242
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_3033 = _StringConst_116
	set	_StringConst_116,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_3033  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	1243,r13		! source line 1243
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_3034 = i * 8192		(int)
	load	[r14+-168],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_3034  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	1244,r13		! source line 1244
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_3035 = _StringConst_117
	set	_StringConst_117,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_3035  sizeInBytes=4
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
!   if intIsZero (_temp_3037) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3036  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_3036  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	1246,r13		! source line 1246
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_3038 = _StringConst_118
	set	_StringConst_118,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_3038  sizeInBytes=4
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
!   if intIsZero (_temp_3042) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3041  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_3041) then goto _Label_3040
	load	[r14+-92],r1
	cmp	r1,r0
	be	_Label_3040
!	jmp	_Label_3039
_Label_3039:
! THEN...
	mov	1249,r13		! source line 1249
	mov	"\0\0TN",r10
! CALL STATEMENT...
	mov	1249,r13		! source line 1249
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_3044) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3043  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_3043  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	1249,r13		! source line 1249
	mov	"\0\0CE",r10
	call	printHex
	jmp	_Label_3045
_Label_3040:
! ELSE...
	mov	1251,r13		! source line 1251
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_3046 = _StringConst_119
	set	_StringConst_119,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_3046  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	1251,r13		! source line 1251
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_3045:
! CALL STATEMENT...
!   _temp_3047 = _StringConst_120
	set	_StringConst_120,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_3047  sizeInBytes=4
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
!   if intIsZero (_temp_3050) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_3048 else goto _Label_3049
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_3049
	jmp	_Label_3048
_Label_3048:
! THEN...
	mov	1255,r13		! source line 1255
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3051 = _StringConst_121
	set	_StringConst_121,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_3051  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	1255,r13		! source line 1255
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_3052
_Label_3049:
! ELSE...
	mov	1257,r13		! source line 1257
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_3053 = _StringConst_122
	set	_StringConst_122,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_3053  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1257,r13		! source line 1257
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_3052:
! CALL STATEMENT...
!   _temp_3054 = _StringConst_123
	set	_StringConst_123,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_3054  sizeInBytes=4
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
!   if intIsZero (_temp_3057) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_3055 else goto _Label_3056
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_3056
	jmp	_Label_3055
_Label_3055:
! THEN...
	mov	1261,r13		! source line 1261
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3058 = _StringConst_124
	set	_StringConst_124,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_3058  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1261,r13		! source line 1261
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_3059
_Label_3056:
! ELSE...
	mov	1263,r13		! source line 1263
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_3060 = _StringConst_125
	set	_StringConst_125,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_3060  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1263,r13		! source line 1263
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_3059:
! CALL STATEMENT...
!   _temp_3061 = _StringConst_126
	set	_StringConst_126,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_3061  sizeInBytes=4
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
!   if intIsZero (_temp_3064) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_3062 else goto _Label_3063
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_3063
	jmp	_Label_3062
_Label_3062:
! THEN...
	mov	1267,r13		! source line 1267
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3065 = _StringConst_127
	set	_StringConst_127,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_3065  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1267,r13		! source line 1267
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_3066
_Label_3063:
! ELSE...
	mov	1269,r13		! source line 1269
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_3067 = _StringConst_128
	set	_StringConst_128,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_3067  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1269,r13		! source line 1269
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_3066:
! CALL STATEMENT...
!   _temp_3068 = _StringConst_129
	set	_StringConst_129,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3068  sizeInBytes=4
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
!   if intIsZero (_temp_3071) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_3069 else goto _Label_3070
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_3070
	jmp	_Label_3069
_Label_3069:
! THEN...
	mov	1273,r13		! source line 1273
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3072 = _StringConst_130
	set	_StringConst_130,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3072  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1273,r13		! source line 1273
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_3073
_Label_3070:
! ELSE...
	mov	1275,r13		! source line 1275
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_3074 = _StringConst_131
	set	_StringConst_131,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3074  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1275,r13		! source line 1275
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_3073:
! CALL STATEMENT...
!   Call the function
	mov	1277,r13		! source line 1277
	mov	"\0\0CA",r10
	call	_P_System_nl
!   Increment the FOR-LOOP index variable and jump back
_Label_3021:
!   i = i + 1
	load	[r14+-168],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-168]
	jmp	_Label_3019
! END FOR
_Label_3022:
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
	.word	_Label_3075
	.word	4		! total size of parameters
	.word	168		! frame size = 168
	.word	_Label_3076
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3077
	.word	-12
	.word	4
	.word	_Label_3078
	.word	-16
	.word	4
	.word	_Label_3079
	.word	-20
	.word	4
	.word	_Label_3080
	.word	-24
	.word	4
	.word	_Label_3081
	.word	-28
	.word	4
	.word	_Label_3082
	.word	-32
	.word	4
	.word	_Label_3083
	.word	-36
	.word	4
	.word	_Label_3084
	.word	-40
	.word	4
	.word	_Label_3085
	.word	-44
	.word	4
	.word	_Label_3086
	.word	-48
	.word	4
	.word	_Label_3087
	.word	-52
	.word	4
	.word	_Label_3088
	.word	-56
	.word	4
	.word	_Label_3089
	.word	-60
	.word	4
	.word	_Label_3090
	.word	-64
	.word	4
	.word	_Label_3091
	.word	-68
	.word	4
	.word	_Label_3092
	.word	-72
	.word	4
	.word	_Label_3093
	.word	-76
	.word	4
	.word	_Label_3094
	.word	-80
	.word	4
	.word	_Label_3095
	.word	-84
	.word	4
	.word	_Label_3096
	.word	-88
	.word	4
	.word	_Label_3097
	.word	-92
	.word	4
	.word	_Label_3098
	.word	-96
	.word	4
	.word	_Label_3099
	.word	-100
	.word	4
	.word	_Label_3100
	.word	-104
	.word	4
	.word	_Label_3101
	.word	-108
	.word	4
	.word	_Label_3102
	.word	-112
	.word	4
	.word	_Label_3103
	.word	-116
	.word	4
	.word	_Label_3104
	.word	-120
	.word	4
	.word	_Label_3105
	.word	-124
	.word	4
	.word	_Label_3106
	.word	-128
	.word	4
	.word	_Label_3107
	.word	-132
	.word	4
	.word	_Label_3108
	.word	-136
	.word	4
	.word	_Label_3109
	.word	-140
	.word	4
	.word	_Label_3110
	.word	-144
	.word	4
	.word	_Label_3111
	.word	-148
	.word	4
	.word	_Label_3112
	.word	-152
	.word	4
	.word	_Label_3113
	.word	-156
	.word	4
	.word	_Label_3114
	.word	-160
	.word	4
	.word	_Label_3115
	.word	-164
	.word	4
	.word	_Label_3116
	.word	-168
	.word	4
	.word	0
_Label_3075:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_3076:
	.ascii	"Pself\0"
	.align
_Label_3077:
	.byte	'?'
	.ascii	"_temp_3074\0"
	.align
_Label_3078:
	.byte	'?'
	.ascii	"_temp_3072\0"
	.align
_Label_3079:
	.byte	'?'
	.ascii	"_temp_3071\0"
	.align
_Label_3080:
	.byte	'?'
	.ascii	"_temp_3068\0"
	.align
_Label_3081:
	.byte	'?'
	.ascii	"_temp_3067\0"
	.align
_Label_3082:
	.byte	'?'
	.ascii	"_temp_3065\0"
	.align
_Label_3083:
	.byte	'?'
	.ascii	"_temp_3064\0"
	.align
_Label_3084:
	.byte	'?'
	.ascii	"_temp_3061\0"
	.align
_Label_3085:
	.byte	'?'
	.ascii	"_temp_3060\0"
	.align
_Label_3086:
	.byte	'?'
	.ascii	"_temp_3058\0"
	.align
_Label_3087:
	.byte	'?'
	.ascii	"_temp_3057\0"
	.align
_Label_3088:
	.byte	'?'
	.ascii	"_temp_3054\0"
	.align
_Label_3089:
	.byte	'?'
	.ascii	"_temp_3053\0"
	.align
_Label_3090:
	.byte	'?'
	.ascii	"_temp_3051\0"
	.align
_Label_3091:
	.byte	'?'
	.ascii	"_temp_3050\0"
	.align
_Label_3092:
	.byte	'?'
	.ascii	"_temp_3047\0"
	.align
_Label_3093:
	.byte	'?'
	.ascii	"_temp_3046\0"
	.align
_Label_3094:
	.byte	'?'
	.ascii	"_temp_3044\0"
	.align
_Label_3095:
	.byte	'?'
	.ascii	"_temp_3043\0"
	.align
_Label_3096:
	.byte	'?'
	.ascii	"_temp_3042\0"
	.align
_Label_3097:
	.byte	'?'
	.ascii	"_temp_3041\0"
	.align
_Label_3098:
	.byte	'?'
	.ascii	"_temp_3038\0"
	.align
_Label_3099:
	.byte	'?'
	.ascii	"_temp_3037\0"
	.align
_Label_3100:
	.byte	'?'
	.ascii	"_temp_3036\0"
	.align
_Label_3101:
	.byte	'?'
	.ascii	"_temp_3035\0"
	.align
_Label_3102:
	.byte	'?'
	.ascii	"_temp_3034\0"
	.align
_Label_3103:
	.byte	'?'
	.ascii	"_temp_3033\0"
	.align
_Label_3104:
	.byte	'?'
	.ascii	"_temp_3032\0"
	.align
_Label_3105:
	.byte	'?'
	.ascii	"_temp_3031\0"
	.align
_Label_3106:
	.byte	'?'
	.ascii	"_temp_3030\0"
	.align
_Label_3107:
	.byte	'?'
	.ascii	"_temp_3029\0"
	.align
_Label_3108:
	.byte	'?'
	.ascii	"_temp_3028\0"
	.align
_Label_3109:
	.byte	'?'
	.ascii	"_temp_3027\0"
	.align
_Label_3110:
	.byte	'?'
	.ascii	"_temp_3026\0"
	.align
_Label_3111:
	.byte	'?'
	.ascii	"_temp_3025\0"
	.align
_Label_3112:
	.byte	'?'
	.ascii	"_temp_3024\0"
	.align
_Label_3113:
	.byte	'?'
	.ascii	"_temp_3023\0"
	.align
_Label_3114:
	.byte	'?'
	.ascii	"_temp_3018\0"
	.align
_Label_3115:
	.byte	'?'
	.ascii	"_temp_3017\0"
	.align
_Label_3116:
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
_Label_4465:
	push	r0
	sub	r1,1,r1
	bne	_Label_4465
	mov	1283,r13		! source line 1283
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1288,r13		! source line 1288
	mov	"\0\0RE",r10
!   _temp_3119 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_3119 [entry ] into _temp_3120
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
!   Data Move: _temp_3118 = *_temp_3120  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_3117 = _temp_3118 AND -8192		(int)
	load	[r14+-20],r1
	mov	-8192,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_3117  (sizeInBytes=4)
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
	.word	_Label_3121
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_3122
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3123
	.word	12
	.word	4
	.word	_Label_3124
	.word	-12
	.word	4
	.word	_Label_3125
	.word	-16
	.word	4
	.word	_Label_3126
	.word	-20
	.word	4
	.word	_Label_3127
	.word	-24
	.word	4
	.word	0
_Label_3121:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractFrameAddr\0"
	.align
_Label_3122:
	.ascii	"Pself\0"
	.align
_Label_3123:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3124:
	.byte	'?'
	.ascii	"_temp_3120\0"
	.align
_Label_3125:
	.byte	'?'
	.ascii	"_temp_3119\0"
	.align
_Label_3126:
	.byte	'?'
	.ascii	"_temp_3118\0"
	.align
_Label_3127:
	.byte	'?'
	.ascii	"_temp_3117\0"
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
_Label_4466:
	push	r0
	sub	r1,1,r1
	bne	_Label_4466
	mov	1293,r13		! source line 1293
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1297,r13		! source line 1297
	mov	"\0\0RE",r10
!   _temp_3130 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_3130 [entry ] into _temp_3131
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
!   Data Move: _temp_3129 = *_temp_3131  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_3128 = _temp_3129 AND 8176		(int)
	load	[r14+-20],r1
	mov	8176,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_3128  (sizeInBytes=4)
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
	.word	_Label_3132
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_3133
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3134
	.word	12
	.word	4
	.word	_Label_3135
	.word	-12
	.word	4
	.word	_Label_3136
	.word	-16
	.word	4
	.word	_Label_3137
	.word	-20
	.word	4
	.word	_Label_3138
	.word	-24
	.word	4
	.word	0
_Label_3132:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractUndefinedBits\0"
	.align
_Label_3133:
	.ascii	"Pself\0"
	.align
_Label_3134:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3135:
	.byte	'?'
	.ascii	"_temp_3131\0"
	.align
_Label_3136:
	.byte	'?'
	.ascii	"_temp_3130\0"
	.align
_Label_3137:
	.byte	'?'
	.ascii	"_temp_3129\0"
	.align
_Label_3138:
	.byte	'?'
	.ascii	"_temp_3128\0"
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
_Label_4467:
	push	r0
	sub	r1,1,r1
	bne	_Label_4467
	mov	1302,r13		! source line 1302
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1307,r13		! source line 1307
	mov	"\0\0AS",r10
!   _temp_3139 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-36]
!   Move address of _temp_3139 [entry ] into _temp_3140
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
!   _temp_3144 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_3144 [entry ] into _temp_3145
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
!   Data Move: _temp_3143 = *_temp_3145  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_3142 = _temp_3143 AND 8191		(int)
	load	[r14+-20],r1
	mov	8191,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   _temp_3141 = _temp_3142 OR frameAddr		(int)
	load	[r14+-24],r1
	load	[r14+16],r2
	or	r1,r2,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_3140 = _temp_3141  (sizeInBytes=4)
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
	.word	_Label_3146
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_3147
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3148
	.word	12
	.word	4
	.word	_Label_3149
	.word	16
	.word	4
	.word	_Label_3150
	.word	-12
	.word	4
	.word	_Label_3151
	.word	-16
	.word	4
	.word	_Label_3152
	.word	-20
	.word	4
	.word	_Label_3153
	.word	-24
	.word	4
	.word	_Label_3154
	.word	-28
	.word	4
	.word	_Label_3155
	.word	-32
	.word	4
	.word	_Label_3156
	.word	-36
	.word	4
	.word	0
_Label_3146:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetFrameAddr\0"
	.align
_Label_3147:
	.ascii	"Pself\0"
	.align
_Label_3148:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3149:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_3150:
	.byte	'?'
	.ascii	"_temp_3145\0"
	.align
_Label_3151:
	.byte	'?'
	.ascii	"_temp_3144\0"
	.align
_Label_3152:
	.byte	'?'
	.ascii	"_temp_3143\0"
	.align
_Label_3153:
	.byte	'?'
	.ascii	"_temp_3142\0"
	.align
_Label_3154:
	.byte	'?'
	.ascii	"_temp_3141\0"
	.align
_Label_3155:
	.byte	'?'
	.ascii	"_temp_3140\0"
	.align
_Label_3156:
	.byte	'?'
	.ascii	"_temp_3139\0"
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
_Label_4468:
	push	r0
	sub	r1,1,r1
	bne	_Label_4468
	mov	1312,r13		! source line 1312
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1316,r13		! source line 1316
	mov	"\0\0RE",r10
!   _temp_3160 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_3160 [entry ] into _temp_3161
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
!   Data Move: _temp_3159 = *_temp_3161  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_3158 = _temp_3159 AND 8		(int)
	load	[r14+-24],r1
	mov	8,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_3158) then goto _Label_3162
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_3162
!   _temp_3157 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_3163
_Label_3162:
!   _temp_3157 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_3163:
!   ReturnResult: _temp_3157  (sizeInBytes=1)
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
	.word	_Label_3164
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_3165
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3166
	.word	12
	.word	4
	.word	_Label_3167
	.word	-16
	.word	4
	.word	_Label_3168
	.word	-20
	.word	4
	.word	_Label_3169
	.word	-24
	.word	4
	.word	_Label_3170
	.word	-28
	.word	4
	.word	_Label_3171
	.word	-9
	.word	1
	.word	0
_Label_3164:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsDirty\0"
	.align
_Label_3165:
	.ascii	"Pself\0"
	.align
_Label_3166:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3167:
	.byte	'?'
	.ascii	"_temp_3161\0"
	.align
_Label_3168:
	.byte	'?'
	.ascii	"_temp_3160\0"
	.align
_Label_3169:
	.byte	'?'
	.ascii	"_temp_3159\0"
	.align
_Label_3170:
	.byte	'?'
	.ascii	"_temp_3158\0"
	.align
_Label_3171:
	.byte	'C'
	.ascii	"_temp_3157\0"
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
_Label_4469:
	push	r0
	sub	r1,1,r1
	bne	_Label_4469
	mov	1321,r13		! source line 1321
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1325,r13		! source line 1325
	mov	"\0\0RE",r10
!   _temp_3175 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_3175 [entry ] into _temp_3176
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
!   Data Move: _temp_3174 = *_temp_3176  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_3173 = _temp_3174 AND 4		(int)
	load	[r14+-24],r1
	mov	4,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_3173) then goto _Label_3177
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_3177
!   _temp_3172 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_3178
_Label_3177:
!   _temp_3172 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_3178:
!   ReturnResult: _temp_3172  (sizeInBytes=1)
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
	.word	_Label_3179
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_3180
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3181
	.word	12
	.word	4
	.word	_Label_3182
	.word	-16
	.word	4
	.word	_Label_3183
	.word	-20
	.word	4
	.word	_Label_3184
	.word	-24
	.word	4
	.word	_Label_3185
	.word	-28
	.word	4
	.word	_Label_3186
	.word	-9
	.word	1
	.word	0
_Label_3179:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsReferenced\0"
	.align
_Label_3180:
	.ascii	"Pself\0"
	.align
_Label_3181:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3182:
	.byte	'?'
	.ascii	"_temp_3176\0"
	.align
_Label_3183:
	.byte	'?'
	.ascii	"_temp_3175\0"
	.align
_Label_3184:
	.byte	'?'
	.ascii	"_temp_3174\0"
	.align
_Label_3185:
	.byte	'?'
	.ascii	"_temp_3173\0"
	.align
_Label_3186:
	.byte	'C'
	.ascii	"_temp_3172\0"
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
_Label_4470:
	push	r0
	sub	r1,1,r1
	bne	_Label_4470
	mov	1330,r13		! source line 1330
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1334,r13		! source line 1334
	mov	"\0\0RE",r10
!   _temp_3190 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_3190 [entry ] into _temp_3191
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
!   Data Move: _temp_3189 = *_temp_3191  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_3188 = _temp_3189 AND 2		(int)
	load	[r14+-24],r1
	mov	2,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_3188) then goto _Label_3192
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_3192
!   _temp_3187 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_3193
_Label_3192:
!   _temp_3187 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_3193:
!   ReturnResult: _temp_3187  (sizeInBytes=1)
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
	.word	_Label_3194
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_3195
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3196
	.word	12
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
	.word	-9
	.word	1
	.word	0
_Label_3194:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsWritable\0"
	.align
_Label_3195:
	.ascii	"Pself\0"
	.align
_Label_3196:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3197:
	.byte	'?'
	.ascii	"_temp_3191\0"
	.align
_Label_3198:
	.byte	'?'
	.ascii	"_temp_3190\0"
	.align
_Label_3199:
	.byte	'?'
	.ascii	"_temp_3189\0"
	.align
_Label_3200:
	.byte	'?'
	.ascii	"_temp_3188\0"
	.align
_Label_3201:
	.byte	'C'
	.ascii	"_temp_3187\0"
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
_Label_4471:
	push	r0
	sub	r1,1,r1
	bne	_Label_4471
	mov	1339,r13		! source line 1339
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1343,r13		! source line 1343
	mov	"\0\0RE",r10
!   _temp_3205 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_3205 [entry ] into _temp_3206
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
!   Data Move: _temp_3204 = *_temp_3206  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_3203 = _temp_3204 AND 1		(int)
	load	[r14+-24],r1
	mov	1,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_3203) then goto _Label_3207
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_3207
!   _temp_3202 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_3208
_Label_3207:
!   _temp_3202 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_3208:
!   ReturnResult: _temp_3202  (sizeInBytes=1)
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
	.word	_Label_3209
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_3210
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3211
	.word	12
	.word	4
	.word	_Label_3212
	.word	-16
	.word	4
	.word	_Label_3213
	.word	-20
	.word	4
	.word	_Label_3214
	.word	-24
	.word	4
	.word	_Label_3215
	.word	-28
	.word	4
	.word	_Label_3216
	.word	-9
	.word	1
	.word	0
_Label_3209:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsValid\0"
	.align
_Label_3210:
	.ascii	"Pself\0"
	.align
_Label_3211:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3212:
	.byte	'?'
	.ascii	"_temp_3206\0"
	.align
_Label_3213:
	.byte	'?'
	.ascii	"_temp_3205\0"
	.align
_Label_3214:
	.byte	'?'
	.ascii	"_temp_3204\0"
	.align
_Label_3215:
	.byte	'?'
	.ascii	"_temp_3203\0"
	.align
_Label_3216:
	.byte	'C'
	.ascii	"_temp_3202\0"
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
_Label_4472:
	push	r0
	sub	r1,1,r1
	bne	_Label_4472
	mov	1348,r13		! source line 1348
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1352,r13		! source line 1352
	mov	"\0\0AS",r10
!   _temp_3217 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_3217 [entry ] into _temp_3218
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
!   _temp_3221 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_3221 [entry ] into _temp_3222
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
!   Data Move: _temp_3220 = *_temp_3222  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_3219 = _temp_3220 OR 8		(int)
	load	[r14+-20],r1
	mov	8,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3218 = _temp_3219  (sizeInBytes=4)
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
	.word	_Label_3223
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_3224
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3225
	.word	12
	.word	4
	.word	_Label_3226
	.word	-12
	.word	4
	.word	_Label_3227
	.word	-16
	.word	4
	.word	_Label_3228
	.word	-20
	.word	4
	.word	_Label_3229
	.word	-24
	.word	4
	.word	_Label_3230
	.word	-28
	.word	4
	.word	_Label_3231
	.word	-32
	.word	4
	.word	0
_Label_3223:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetDirty\0"
	.align
_Label_3224:
	.ascii	"Pself\0"
	.align
_Label_3225:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3226:
	.byte	'?'
	.ascii	"_temp_3222\0"
	.align
_Label_3227:
	.byte	'?'
	.ascii	"_temp_3221\0"
	.align
_Label_3228:
	.byte	'?'
	.ascii	"_temp_3220\0"
	.align
_Label_3229:
	.byte	'?'
	.ascii	"_temp_3219\0"
	.align
_Label_3230:
	.byte	'?'
	.ascii	"_temp_3218\0"
	.align
_Label_3231:
	.byte	'?'
	.ascii	"_temp_3217\0"
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
_Label_4473:
	push	r0
	sub	r1,1,r1
	bne	_Label_4473
	mov	1357,r13		! source line 1357
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1361,r13		! source line 1361
	mov	"\0\0AS",r10
!   _temp_3232 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_3232 [entry ] into _temp_3233
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
!   _temp_3236 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_3236 [entry ] into _temp_3237
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
!   Data Move: _temp_3235 = *_temp_3237  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_3234 = _temp_3235 OR 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3233 = _temp_3234  (sizeInBytes=4)
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
	.word	_Label_3238
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_3239
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3240
	.word	12
	.word	4
	.word	_Label_3241
	.word	-12
	.word	4
	.word	_Label_3242
	.word	-16
	.word	4
	.word	_Label_3243
	.word	-20
	.word	4
	.word	_Label_3244
	.word	-24
	.word	4
	.word	_Label_3245
	.word	-28
	.word	4
	.word	_Label_3246
	.word	-32
	.word	4
	.word	0
_Label_3238:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetReferenced\0"
	.align
_Label_3239:
	.ascii	"Pself\0"
	.align
_Label_3240:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3241:
	.byte	'?'
	.ascii	"_temp_3237\0"
	.align
_Label_3242:
	.byte	'?'
	.ascii	"_temp_3236\0"
	.align
_Label_3243:
	.byte	'?'
	.ascii	"_temp_3235\0"
	.align
_Label_3244:
	.byte	'?'
	.ascii	"_temp_3234\0"
	.align
_Label_3245:
	.byte	'?'
	.ascii	"_temp_3233\0"
	.align
_Label_3246:
	.byte	'?'
	.ascii	"_temp_3232\0"
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
_Label_4474:
	push	r0
	sub	r1,1,r1
	bne	_Label_4474
	mov	1366,r13		! source line 1366
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1370,r13		! source line 1370
	mov	"\0\0AS",r10
!   _temp_3247 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_3247 [entry ] into _temp_3248
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
!   _temp_3251 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_3251 [entry ] into _temp_3252
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
!   Data Move: _temp_3250 = *_temp_3252  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_3249 = _temp_3250 OR 2		(int)
	load	[r14+-20],r1
	mov	2,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3248 = _temp_3249  (sizeInBytes=4)
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
	.word	_Label_3253
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_3254
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3255
	.word	12
	.word	4
	.word	_Label_3256
	.word	-12
	.word	4
	.word	_Label_3257
	.word	-16
	.word	4
	.word	_Label_3258
	.word	-20
	.word	4
	.word	_Label_3259
	.word	-24
	.word	4
	.word	_Label_3260
	.word	-28
	.word	4
	.word	_Label_3261
	.word	-32
	.word	4
	.word	0
_Label_3253:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetWritable\0"
	.align
_Label_3254:
	.ascii	"Pself\0"
	.align
_Label_3255:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3256:
	.byte	'?'
	.ascii	"_temp_3252\0"
	.align
_Label_3257:
	.byte	'?'
	.ascii	"_temp_3251\0"
	.align
_Label_3258:
	.byte	'?'
	.ascii	"_temp_3250\0"
	.align
_Label_3259:
	.byte	'?'
	.ascii	"_temp_3249\0"
	.align
_Label_3260:
	.byte	'?'
	.ascii	"_temp_3248\0"
	.align
_Label_3261:
	.byte	'?'
	.ascii	"_temp_3247\0"
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
_Label_4475:
	push	r0
	sub	r1,1,r1
	bne	_Label_4475
	mov	1375,r13		! source line 1375
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1379,r13		! source line 1379
	mov	"\0\0AS",r10
!   _temp_3262 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_3262 [entry ] into _temp_3263
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
!   _temp_3266 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_3266 [entry ] into _temp_3267
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
!   Data Move: _temp_3265 = *_temp_3267  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_3264 = _temp_3265 OR 1		(int)
	load	[r14+-20],r1
	mov	1,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3263 = _temp_3264  (sizeInBytes=4)
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
	.word	_Label_3268
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_3269
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3270
	.word	12
	.word	4
	.word	_Label_3271
	.word	-12
	.word	4
	.word	_Label_3272
	.word	-16
	.word	4
	.word	_Label_3273
	.word	-20
	.word	4
	.word	_Label_3274
	.word	-24
	.word	4
	.word	_Label_3275
	.word	-28
	.word	4
	.word	_Label_3276
	.word	-32
	.word	4
	.word	0
_Label_3268:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetValid\0"
	.align
_Label_3269:
	.ascii	"Pself\0"
	.align
_Label_3270:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3271:
	.byte	'?'
	.ascii	"_temp_3267\0"
	.align
_Label_3272:
	.byte	'?'
	.ascii	"_temp_3266\0"
	.align
_Label_3273:
	.byte	'?'
	.ascii	"_temp_3265\0"
	.align
_Label_3274:
	.byte	'?'
	.ascii	"_temp_3264\0"
	.align
_Label_3275:
	.byte	'?'
	.ascii	"_temp_3263\0"
	.align
_Label_3276:
	.byte	'?'
	.ascii	"_temp_3262\0"
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
_Label_4476:
	push	r0
	sub	r1,1,r1
	bne	_Label_4476
	mov	1384,r13		! source line 1384
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1388,r13		! source line 1388
	mov	"\0\0AS",r10
!   _temp_3277 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_3277 [entry ] into _temp_3278
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
!   _temp_3281 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_3281 [entry ] into _temp_3282
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
!   Data Move: _temp_3280 = *_temp_3282  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_3279 = _temp_3280 AND -9		(int)
	load	[r14+-20],r1
	mov	-9,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3278 = _temp_3279  (sizeInBytes=4)
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
	.word	_Label_3283
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_3284
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3285
	.word	12
	.word	4
	.word	_Label_3286
	.word	-12
	.word	4
	.word	_Label_3287
	.word	-16
	.word	4
	.word	_Label_3288
	.word	-20
	.word	4
	.word	_Label_3289
	.word	-24
	.word	4
	.word	_Label_3290
	.word	-28
	.word	4
	.word	_Label_3291
	.word	-32
	.word	4
	.word	0
_Label_3283:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearDirty\0"
	.align
_Label_3284:
	.ascii	"Pself\0"
	.align
_Label_3285:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3286:
	.byte	'?'
	.ascii	"_temp_3282\0"
	.align
_Label_3287:
	.byte	'?'
	.ascii	"_temp_3281\0"
	.align
_Label_3288:
	.byte	'?'
	.ascii	"_temp_3280\0"
	.align
_Label_3289:
	.byte	'?'
	.ascii	"_temp_3279\0"
	.align
_Label_3290:
	.byte	'?'
	.ascii	"_temp_3278\0"
	.align
_Label_3291:
	.byte	'?'
	.ascii	"_temp_3277\0"
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
_Label_4477:
	push	r0
	sub	r1,1,r1
	bne	_Label_4477
	mov	1393,r13		! source line 1393
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1397,r13		! source line 1397
	mov	"\0\0AS",r10
!   _temp_3292 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_3292 [entry ] into _temp_3293
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
!   _temp_3296 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_3296 [entry ] into _temp_3297
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
!   Data Move: _temp_3295 = *_temp_3297  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_3294 = _temp_3295 AND -5		(int)
	load	[r14+-20],r1
	mov	-5,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3293 = _temp_3294  (sizeInBytes=4)
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
	.word	_Label_3298
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_3299
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3300
	.word	12
	.word	4
	.word	_Label_3301
	.word	-12
	.word	4
	.word	_Label_3302
	.word	-16
	.word	4
	.word	_Label_3303
	.word	-20
	.word	4
	.word	_Label_3304
	.word	-24
	.word	4
	.word	_Label_3305
	.word	-28
	.word	4
	.word	_Label_3306
	.word	-32
	.word	4
	.word	0
_Label_3298:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearReferenced\0"
	.align
_Label_3299:
	.ascii	"Pself\0"
	.align
_Label_3300:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3301:
	.byte	'?'
	.ascii	"_temp_3297\0"
	.align
_Label_3302:
	.byte	'?'
	.ascii	"_temp_3296\0"
	.align
_Label_3303:
	.byte	'?'
	.ascii	"_temp_3295\0"
	.align
_Label_3304:
	.byte	'?'
	.ascii	"_temp_3294\0"
	.align
_Label_3305:
	.byte	'?'
	.ascii	"_temp_3293\0"
	.align
_Label_3306:
	.byte	'?'
	.ascii	"_temp_3292\0"
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
_Label_4478:
	push	r0
	sub	r1,1,r1
	bne	_Label_4478
	mov	1402,r13		! source line 1402
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1406,r13		! source line 1406
	mov	"\0\0AS",r10
!   _temp_3307 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_3307 [entry ] into _temp_3308
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
!   _temp_3311 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_3311 [entry ] into _temp_3312
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
!   Data Move: _temp_3310 = *_temp_3312  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_3309 = _temp_3310 AND -3		(int)
	load	[r14+-20],r1
	mov	-3,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3308 = _temp_3309  (sizeInBytes=4)
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
	.word	_Label_3313
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_3314
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3315
	.word	12
	.word	4
	.word	_Label_3316
	.word	-12
	.word	4
	.word	_Label_3317
	.word	-16
	.word	4
	.word	_Label_3318
	.word	-20
	.word	4
	.word	_Label_3319
	.word	-24
	.word	4
	.word	_Label_3320
	.word	-28
	.word	4
	.word	_Label_3321
	.word	-32
	.word	4
	.word	0
_Label_3313:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearWritable\0"
	.align
_Label_3314:
	.ascii	"Pself\0"
	.align
_Label_3315:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3316:
	.byte	'?'
	.ascii	"_temp_3312\0"
	.align
_Label_3317:
	.byte	'?'
	.ascii	"_temp_3311\0"
	.align
_Label_3318:
	.byte	'?'
	.ascii	"_temp_3310\0"
	.align
_Label_3319:
	.byte	'?'
	.ascii	"_temp_3309\0"
	.align
_Label_3320:
	.byte	'?'
	.ascii	"_temp_3308\0"
	.align
_Label_3321:
	.byte	'?'
	.ascii	"_temp_3307\0"
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
_Label_4479:
	push	r0
	sub	r1,1,r1
	bne	_Label_4479
	mov	1411,r13		! source line 1411
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1415,r13		! source line 1415
	mov	"\0\0AS",r10
!   _temp_3322 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_3322 [entry ] into _temp_3323
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
!   _temp_3326 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_3326 [entry ] into _temp_3327
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
!   Data Move: _temp_3325 = *_temp_3327  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_3324 = _temp_3325 AND -2		(int)
	load	[r14+-20],r1
	mov	-2,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3323 = _temp_3324  (sizeInBytes=4)
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
	.word	_Label_3328
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_3329
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3330
	.word	12
	.word	4
	.word	_Label_3331
	.word	-12
	.word	4
	.word	_Label_3332
	.word	-16
	.word	4
	.word	_Label_3333
	.word	-20
	.word	4
	.word	_Label_3334
	.word	-24
	.word	4
	.word	_Label_3335
	.word	-28
	.word	4
	.word	_Label_3336
	.word	-32
	.word	4
	.word	0
_Label_3328:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearValid\0"
	.align
_Label_3329:
	.ascii	"Pself\0"
	.align
_Label_3330:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3331:
	.byte	'?'
	.ascii	"_temp_3327\0"
	.align
_Label_3332:
	.byte	'?'
	.ascii	"_temp_3326\0"
	.align
_Label_3333:
	.byte	'?'
	.ascii	"_temp_3325\0"
	.align
_Label_3334:
	.byte	'?'
	.ascii	"_temp_3324\0"
	.align
_Label_3335:
	.byte	'?'
	.ascii	"_temp_3323\0"
	.align
_Label_3336:
	.byte	'?'
	.ascii	"_temp_3322\0"
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
_Label_4480:
	push	r0
	sub	r1,1,r1
	bne	_Label_4480
	mov	1420,r13		! source line 1420
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3338 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_3338 [0 ] into _temp_3339
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
!   _temp_3337 = _temp_3339		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_3340 = numberOfPages * 4		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	4,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3337  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_3340  sizeInBytes=4
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
	.word	_Label_3341
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_3342
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3343
	.word	-12
	.word	4
	.word	_Label_3344
	.word	-16
	.word	4
	.word	_Label_3345
	.word	-20
	.word	4
	.word	_Label_3346
	.word	-24
	.word	4
	.word	0
_Label_3341:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetToThisPageTable\0"
	.align
_Label_3342:
	.ascii	"Pself\0"
	.align
_Label_3343:
	.byte	'?'
	.ascii	"_temp_3340\0"
	.align
_Label_3344:
	.byte	'?'
	.ascii	"_temp_3339\0"
	.align
_Label_3345:
	.byte	'?'
	.ascii	"_temp_3338\0"
	.align
_Label_3346:
	.byte	'?'
	.ascii	"_temp_3337\0"
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
_Label_4481:
	push	r0
	sub	r1,1,r1
	bne	_Label_4481
	mov	1431,r13		! source line 1431
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1446,r13		! source line 1446
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_3347
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_3347
	jmp	_Label_3348
_Label_3347:
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
	jmp	_Label_3349
_Label_3348:
! ELSE...
	mov	1448,r13		! source line 1448
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1448,r13		! source line 1448
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_3351		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3351
!	jmp	_Label_3350
_Label_3350:
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
_Label_3351:
! END IF...
_Label_3349:
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
_Label_3352:
!	jmp	_Label_3353
_Label_3353:
	mov	1455,r13		! source line 1455
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1456,r13		! source line 1456
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_3356		(int)
	load	[r14+-40],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_3356
!	jmp	_Label_3355
_Label_3355:
! THEN...
	mov	1457,r13		! source line 1457
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3357 = _StringConst_132
	set	_StringConst_132,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_3357  sizeInBytes=4
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
_Label_3356:
! IF STATEMENT...
	mov	1460,r13		! source line 1460
	mov	"\0\0IF",r10
	mov	1460,r13		! source line 1460
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_3361) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3360  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_3360 then goto _Label_3359 else goto _Label_3358
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3358
	jmp	_Label_3359
_Label_3358:
! THEN...
	mov	1461,r13		! source line 1461
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3362 = _StringConst_133
	set	_StringConst_133,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3362  sizeInBytes=4
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
_Label_3359:
! ASSIGNMENT STATEMENT...
	mov	1464,r13		! source line 1464
	mov	"\0\0AS",r10
	mov	1464,r13		! source line 1464
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_3364) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3363  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   fromAddr = _temp_3363 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! WHILE STATEMENT...
	mov	1466,r13		! source line 1466
	mov	"\0\0WH",r10
_Label_3365:
!   if offset >= 8192 then goto _Label_3367		(int)
	load	[r14+-44],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3367
!	jmp	_Label_3366
_Label_3366:
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
!   Data Move: _temp_3368 = *fromAddr  (sizeInBytes=1)
	load	[r14+-48],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *kernelAddr = _temp_3368  (sizeInBytes=1)
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
!   if copiedSoFar != numBytes then goto _Label_3370		(int)
	load	[r14+-36],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_3370
!	jmp	_Label_3369
_Label_3369:
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
_Label_3370:
! END WHILE...
	jmp	_Label_3365
_Label_3367:
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
	jmp	_Label_3352
_Label_3354:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_19:
	.word	_sourceFileName
	.word	_Label_3371
	.word	16		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_3372
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3373
	.word	12
	.word	4
	.word	_Label_3374
	.word	16
	.word	4
	.word	_Label_3375
	.word	20
	.word	4
	.word	_Label_3376
	.word	-9
	.word	1
	.word	_Label_3377
	.word	-16
	.word	4
	.word	_Label_3378
	.word	-20
	.word	4
	.word	_Label_3379
	.word	-24
	.word	4
	.word	_Label_3380
	.word	-28
	.word	4
	.word	_Label_3381
	.word	-10
	.word	1
	.word	_Label_3382
	.word	-32
	.word	4
	.word	_Label_3383
	.word	-36
	.word	4
	.word	_Label_3384
	.word	-40
	.word	4
	.word	_Label_3385
	.word	-44
	.word	4
	.word	_Label_3386
	.word	-48
	.word	4
	.word	0
_Label_3371:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesFromVirtual\0"
	.align
_Label_3372:
	.ascii	"Pself\0"
	.align
_Label_3373:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_3374:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_3375:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3376:
	.byte	'C'
	.ascii	"_temp_3368\0"
	.align
_Label_3377:
	.byte	'?'
	.ascii	"_temp_3364\0"
	.align
_Label_3378:
	.byte	'?'
	.ascii	"_temp_3363\0"
	.align
_Label_3379:
	.byte	'?'
	.ascii	"_temp_3362\0"
	.align
_Label_3380:
	.byte	'?'
	.ascii	"_temp_3361\0"
	.align
_Label_3381:
	.byte	'C'
	.ascii	"_temp_3360\0"
	.align
_Label_3382:
	.byte	'?'
	.ascii	"_temp_3357\0"
	.align
_Label_3383:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_3384:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_3385:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_3386:
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
_Label_4482:
	push	r0
	sub	r1,1,r1
	bne	_Label_4482
	mov	1485,r13		! source line 1485
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1496,r13		! source line 1496
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_3387
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_3387
	jmp	_Label_3388
_Label_3387:
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
	jmp	_Label_3389
_Label_3388:
! ELSE...
	mov	1498,r13		! source line 1498
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1498,r13		! source line 1498
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_3391		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3391
!	jmp	_Label_3390
_Label_3390:
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
_Label_3391:
! END IF...
_Label_3389:
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
_Label_3392:
!	jmp	_Label_3393
_Label_3393:
	mov	1503,r13		! source line 1503
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1504,r13		! source line 1504
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_3398		(int)
	load	[r14+-36],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_3398
	jmp	_Label_3395
_Label_3398:
	mov	1505,r13		! source line 1505
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_3400) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3399  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_3399 then goto _Label_3397 else goto _Label_3395
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_3395
	jmp	_Label_3397
_Label_3397:
	mov	1506,r13		! source line 1506
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_3402) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3401  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_3401 then goto _Label_3396 else goto _Label_3395
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3395
	jmp	_Label_3396
_Label_3395:
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
_Label_3396:
! ASSIGNMENT STATEMENT...
	mov	1509,r13		! source line 1509
	mov	"\0\0AS",r10
	mov	1509,r13		! source line 1509
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_3404) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3403  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   destAddr = _temp_3403 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-40],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1510,r13		! source line 1510
	mov	"\0\0WH",r10
_Label_3405:
!   if offset >= 8192 then goto _Label_3407		(int)
	load	[r14+-40],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3407
!	jmp	_Label_3406
_Label_3406:
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
!   Data Move: _temp_3408 = *kernelAddr  (sizeInBytes=1)
	load	[r14+16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *destAddr = _temp_3408  (sizeInBytes=1)
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
!   if copiedSoFar != numBytes then goto _Label_3410		(int)
	load	[r14+-32],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_3410
!	jmp	_Label_3409
_Label_3409:
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
_Label_3410:
! END WHILE...
	jmp	_Label_3405
_Label_3407:
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
	jmp	_Label_3392
_Label_3394:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_20:
	.word	_sourceFileName
	.word	_Label_3411
	.word	16		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_3412
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3413
	.word	12
	.word	4
	.word	_Label_3414
	.word	16
	.word	4
	.word	_Label_3415
	.word	20
	.word	4
	.word	_Label_3416
	.word	-9
	.word	1
	.word	_Label_3417
	.word	-16
	.word	4
	.word	_Label_3418
	.word	-20
	.word	4
	.word	_Label_3419
	.word	-24
	.word	4
	.word	_Label_3420
	.word	-10
	.word	1
	.word	_Label_3421
	.word	-28
	.word	4
	.word	_Label_3422
	.word	-11
	.word	1
	.word	_Label_3423
	.word	-32
	.word	4
	.word	_Label_3424
	.word	-36
	.word	4
	.word	_Label_3425
	.word	-40
	.word	4
	.word	_Label_3426
	.word	-44
	.word	4
	.word	0
_Label_3411:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesToVirtual\0"
	.align
_Label_3412:
	.ascii	"Pself\0"
	.align
_Label_3413:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_3414:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_3415:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3416:
	.byte	'C'
	.ascii	"_temp_3408\0"
	.align
_Label_3417:
	.byte	'?'
	.ascii	"_temp_3404\0"
	.align
_Label_3418:
	.byte	'?'
	.ascii	"_temp_3403\0"
	.align
_Label_3419:
	.byte	'?'
	.ascii	"_temp_3402\0"
	.align
_Label_3420:
	.byte	'C'
	.ascii	"_temp_3401\0"
	.align
_Label_3421:
	.byte	'?'
	.ascii	"_temp_3400\0"
	.align
_Label_3422:
	.byte	'C'
	.ascii	"_temp_3399\0"
	.align
_Label_3423:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_3424:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_3425:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_3426:
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
_Label_4483:
	push	r0
	sub	r1,1,r1
	bne	_Label_4483
	mov	1527,r13		! source line 1527
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1551,r13		! source line 1551
	mov	"\0\0IF",r10
	mov	1551,r13		! source line 1551
	mov	"\0\0SE",r10
!   _temp_3430 = &sourceSize
	add	r14,-44,r1
	store	r1,[r14+-36]
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_3431) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_3430  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_3429  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   if _temp_3429 >= 4 then goto _Label_3428		(int)
	load	[r14+-40],r1
	mov	4,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3428
!	jmp	_Label_3427
_Label_3427:
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
_Label_3428:
! IF STATEMENT...
	mov	1558,r13		! source line 1558
	mov	"\0\0IF",r10
!   if sourceSize <= maxSize then goto _Label_3433		(int)
	load	[r14+-44],r1
	load	[r14+20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3433
!	jmp	_Label_3432
_Label_3432:
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
_Label_3433:
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
!   _temp_3436 = kernelAddr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-20]
!   _temp_3435 = _temp_3436 + 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   _temp_3437 = virtAddr + 4		(int)
	load	[r14+16],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
	load	[r14+8],r1
	store	r1,[r14+-12]
!   if intIsZero (_temp_3438) then goto _runtimeErrorNullPointer
	load	[r14+-12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_3435  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_3437  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_3434  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_3434  (sizeInBytes=4)
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
	.word	_Label_3439
	.word	16		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_3440
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3441
	.word	12
	.word	4
	.word	_Label_3442
	.word	16
	.word	4
	.word	_Label_3443
	.word	20
	.word	4
	.word	_Label_3444
	.word	-12
	.word	4
	.word	_Label_3445
	.word	-16
	.word	4
	.word	_Label_3446
	.word	-20
	.word	4
	.word	_Label_3447
	.word	-24
	.word	4
	.word	_Label_3448
	.word	-28
	.word	4
	.word	_Label_3449
	.word	-32
	.word	4
	.word	_Label_3450
	.word	-36
	.word	4
	.word	_Label_3451
	.word	-40
	.word	4
	.word	_Label_3452
	.word	-44
	.word	4
	.word	0
_Label_3439:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"GetStringFromVirtual\0"
	.align
_Label_3440:
	.ascii	"Pself\0"
	.align
_Label_3441:
	.byte	'P'
	.ascii	"kernelAddr\0"
	.align
_Label_3442:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_3443:
	.byte	'I'
	.ascii	"maxSize\0"
	.align
_Label_3444:
	.byte	'?'
	.ascii	"_temp_3438\0"
	.align
_Label_3445:
	.byte	'?'
	.ascii	"_temp_3437\0"
	.align
_Label_3446:
	.byte	'?'
	.ascii	"_temp_3436\0"
	.align
_Label_3447:
	.byte	'?'
	.ascii	"_temp_3435\0"
	.align
_Label_3448:
	.byte	'?'
	.ascii	"_temp_3434\0"
	.align
_Label_3449:
	.byte	'?'
	.ascii	"_temp_3431\0"
	.align
_Label_3450:
	.byte	'?'
	.ascii	"_temp_3430\0"
	.align
_Label_3451:
	.byte	'?'
	.ascii	"_temp_3429\0"
	.align
_Label_3452:
	.byte	'I'
	.ascii	"sourceSize\0"
	.align
! 
! ===============  CLASS DiskDriver  ===============
! 
! Dispatch Table:
! 
_P_Kernel_DiskDriver:
	.word	_Label_3453
	jmp	_Method_P_Kernel_DiskDriver_1	! 4:	Init
	jmp	_Method_P_Kernel_DiskDriver_2	! 8:	SynchReadSector
	jmp	_Method_P_Kernel_DiskDriver_3	! 12:	StartReadSector
	jmp	_Method_P_Kernel_DiskDriver_4	! 16:	SynchWriteSector
	jmp	_Method_P_Kernel_DiskDriver_5	! 20:	StartWriteSector
	.word	0
! 
! Class descriptor:
! 
_Label_3453:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3454
	.word	_sourceFileName
	.word	343		! line number
	.word	68		! size of instances, in bytes
	.word	_P_Kernel_DiskDriver
	.word	_P_System_Object
	.word	0
_Label_3454:
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
_Label_4484:
	push	r0
	sub	r1,1,r1
	bne	_Label_4484
	mov	2305,r13		! source line 2305
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3455 = _StringConst_134
	set	_StringConst_134,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_3455  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2306,r13		! source line 2306
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2307,r13		! source line 2307
	mov	"\0\0AS",r10
!   DISK_STATUS_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	2308,r13		! source line 2308
	mov	"\0\0AS",r10
!   DISK_COMMAND_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! ASSIGNMENT STATEMENT...
	mov	2309,r13		! source line 2309
	mov	"\0\0AS",r10
!   DISK_MEMORY_ADDRESS_REGISTER = 16776972		(4 bytes)
	set	16776972,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	2310,r13		! source line 2310
	mov	"\0\0AS",r10
!   DISK_SECTOR_NUMBER_REGISTER = 16776976		(4 bytes)
	set	16776976,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2311,r13		! source line 2311
	mov	"\0\0AS",r10
!   DISK_SECTOR_COUNT_REGISTER = 16776980		(4 bytes)
	set	16776980,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	2312,r13		! source line 2312
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2313,r13		! source line 2313
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
	mov	2314,r13		! source line 2314
	mov	"\0\0SE",r10
!   _temp_3457 = &semUsedInSynchMethods
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
	mov	2315,r13		! source line 2315
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
	mov	2316,r13		! source line 2316
	mov	"\0\0SE",r10
!   _temp_3459 = &diskBusy
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
	mov	2316,r13		! source line 2316
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
	.word	_Label_3460
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_3461
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3462
	.word	-12
	.word	4
	.word	_Label_3463
	.word	-16
	.word	4
	.word	_Label_3464
	.word	-20
	.word	4
	.word	_Label_3465
	.word	-24
	.word	4
	.word	_Label_3466
	.word	-28
	.word	4
	.word	0
_Label_3460:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_3461:
	.ascii	"Pself\0"
	.align
_Label_3462:
	.byte	'?'
	.ascii	"_temp_3459\0"
	.align
_Label_3463:
	.byte	'?'
	.ascii	"_temp_3458\0"
	.align
_Label_3464:
	.byte	'?'
	.ascii	"_temp_3457\0"
	.align
_Label_3465:
	.byte	'?'
	.ascii	"_temp_3456\0"
	.align
_Label_3466:
	.byte	'?'
	.ascii	"_temp_3455\0"
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
_Label_4485:
	push	r0
	sub	r1,1,r1
	bne	_Label_4485
	mov	2321,r13		! source line 2321
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2334,r13		! source line 2334
	mov	"\0\0SE",r10
!   _temp_3467 = &diskBusy
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
	mov	2335,r13		! source line 2335
	mov	"\0\0WH",r10
_Label_3468:
!	jmp	_Label_3469
_Label_3469:
	mov	2335,r13		! source line 2335
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2337,r13		! source line 2337
	mov	"\0\0SE",r10
!   _temp_3471 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_3472) then goto _runtimeErrorNullPointer
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
!   Prepare Argument: offset=24  value=_temp_3471  sizeInBytes=4
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
	mov	2339,r13		! source line 2339
	mov	"\0\0SE",r10
!   _temp_3473 = &semUsedInSynchMethods
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
	mov	2342,r13		! source line 2342
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_3482 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_3476
	cmp	r1,2
	be	_Label_3477
	cmp	r1,3
	be	_Label_3478
	cmp	r1,4
	be	_Label_3479
	cmp	r1,5
	be	_Label_3480
	cmp	r1,6
	be	_Label_3481
	jmp	_Label_3474
! CASE 1...
_Label_3476:
! SEND STATEMENT...
	mov	2344,r13		! source line 2344
	mov	"\0\0SE",r10
!   _temp_3483 = &diskBusy
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
	mov	2345,r13		! source line 2345
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_3477:
! CALL STATEMENT...
!   _temp_3484 = _StringConst_135
	set	_StringConst_135,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_3484  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2347,r13		! source line 2347
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_3478:
! CALL STATEMENT...
!   _temp_3485 = _StringConst_136
	set	_StringConst_136,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3485  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2349,r13		! source line 2349
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_3479:
! CALL STATEMENT...
!   _temp_3486 = _StringConst_137
	set	_StringConst_137,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3486  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2351,r13		! source line 2351
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_3480:
! BREAK STATEMENT...
	mov	2355,r13		! source line 2355
	mov	"\0\0BR",r10
	jmp	_Label_3475
! CASE 6...
_Label_3481:
! CALL STATEMENT...
!   _temp_3487 = _StringConst_138
	set	_StringConst_138,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3487  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2357,r13		! source line 2357
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_3474:
! CALL STATEMENT...
!   _temp_3488 = _StringConst_139
	set	_StringConst_139,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3488  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2359,r13		! source line 2359
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_3475:
! END WHILE...
	jmp	_Label_3468
_Label_3470:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_2:
	.word	_sourceFileName
	.word	_Label_3489
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_3490
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3491
	.word	12
	.word	4
	.word	_Label_3492
	.word	16
	.word	4
	.word	_Label_3493
	.word	20
	.word	4
	.word	_Label_3494
	.word	-12
	.word	4
	.word	_Label_3495
	.word	-16
	.word	4
	.word	_Label_3496
	.word	-20
	.word	4
	.word	_Label_3497
	.word	-24
	.word	4
	.word	_Label_3498
	.word	-28
	.word	4
	.word	_Label_3499
	.word	-32
	.word	4
	.word	_Label_3500
	.word	-36
	.word	4
	.word	_Label_3501
	.word	-40
	.word	4
	.word	_Label_3502
	.word	-44
	.word	4
	.word	_Label_3503
	.word	-48
	.word	4
	.word	_Label_3504
	.word	-52
	.word	4
	.word	0
_Label_3489:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchReadSector\0"
	.align
_Label_3490:
	.ascii	"Pself\0"
	.align
_Label_3491:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_3492:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_3493:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_3494:
	.byte	'?'
	.ascii	"_temp_3488\0"
	.align
_Label_3495:
	.byte	'?'
	.ascii	"_temp_3487\0"
	.align
_Label_3496:
	.byte	'?'
	.ascii	"_temp_3486\0"
	.align
_Label_3497:
	.byte	'?'
	.ascii	"_temp_3485\0"
	.align
_Label_3498:
	.byte	'?'
	.ascii	"_temp_3484\0"
	.align
_Label_3499:
	.byte	'?'
	.ascii	"_temp_3483\0"
	.align
_Label_3500:
	.byte	'?'
	.ascii	"_temp_3482\0"
	.align
_Label_3501:
	.byte	'?'
	.ascii	"_temp_3473\0"
	.align
_Label_3502:
	.byte	'?'
	.ascii	"_temp_3472\0"
	.align
_Label_3503:
	.byte	'?'
	.ascii	"_temp_3471\0"
	.align
_Label_3504:
	.byte	'?'
	.ascii	"_temp_3467\0"
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
	mov	2368,r13		! source line 2368
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2383,r13		! source line 2383
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2386,r13		! source line 2386
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
	mov	2387,r13		! source line 2387
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
	mov	2388,r13		! source line 2388
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
	mov	2389,r13		! source line 2389
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
	mov	2389,r13		! source line 2389
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
	.word	_Label_3505
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_3506
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3507
	.word	12
	.word	4
	.word	_Label_3508
	.word	16
	.word	4
	.word	_Label_3509
	.word	20
	.word	4
	.word	_Label_3510
	.word	24
	.word	4
	.word	0
_Label_3505:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartReadSector\0"
	.align
_Label_3506:
	.ascii	"Pself\0"
	.align
_Label_3507:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_3508:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_3509:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_3510:
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
_Label_4486:
	push	r0
	sub	r1,1,r1
	bne	_Label_4486
	mov	2394,r13		! source line 2394
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2406,r13		! source line 2406
	mov	"\0\0SE",r10
!   _temp_3511 = &diskBusy
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
	mov	2407,r13		! source line 2407
	mov	"\0\0WH",r10
_Label_3512:
!	jmp	_Label_3513
_Label_3513:
	mov	2407,r13		! source line 2407
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2408,r13		! source line 2408
	mov	"\0\0SE",r10
!   _temp_3515 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_3516) then goto _runtimeErrorNullPointer
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
!   Prepare Argument: offset=24  value=_temp_3515  sizeInBytes=4
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
	mov	2410,r13		! source line 2410
	mov	"\0\0SE",r10
!   _temp_3517 = &semUsedInSynchMethods
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
	mov	2413,r13		! source line 2413
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_3526 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_3520
	cmp	r1,2
	be	_Label_3521
	cmp	r1,3
	be	_Label_3522
	cmp	r1,4
	be	_Label_3523
	cmp	r1,5
	be	_Label_3524
	cmp	r1,6
	be	_Label_3525
	jmp	_Label_3518
! CASE 1...
_Label_3520:
! SEND STATEMENT...
	mov	2415,r13		! source line 2415
	mov	"\0\0SE",r10
!   _temp_3527 = &diskBusy
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
	mov	2416,r13		! source line 2416
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_3521:
! CALL STATEMENT...
!   _temp_3528 = _StringConst_140
	set	_StringConst_140,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_3528  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2418,r13		! source line 2418
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_3522:
! CALL STATEMENT...
!   _temp_3529 = _StringConst_141
	set	_StringConst_141,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3529  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2420,r13		! source line 2420
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_3523:
! CALL STATEMENT...
!   _temp_3530 = _StringConst_142
	set	_StringConst_142,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3530  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2422,r13		! source line 2422
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_3524:
! BREAK STATEMENT...
	mov	2426,r13		! source line 2426
	mov	"\0\0BR",r10
	jmp	_Label_3519
! CASE 6...
_Label_3525:
! CALL STATEMENT...
!   _temp_3531 = _StringConst_143
	set	_StringConst_143,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3531  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2428,r13		! source line 2428
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_3518:
! CALL STATEMENT...
!   _temp_3532 = _StringConst_144
	set	_StringConst_144,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3532  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2430,r13		! source line 2430
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_3519:
! END WHILE...
	jmp	_Label_3512
_Label_3514:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_4:
	.word	_sourceFileName
	.word	_Label_3533
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_3534
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3535
	.word	12
	.word	4
	.word	_Label_3536
	.word	16
	.word	4
	.word	_Label_3537
	.word	20
	.word	4
	.word	_Label_3538
	.word	-12
	.word	4
	.word	_Label_3539
	.word	-16
	.word	4
	.word	_Label_3540
	.word	-20
	.word	4
	.word	_Label_3541
	.word	-24
	.word	4
	.word	_Label_3542
	.word	-28
	.word	4
	.word	_Label_3543
	.word	-32
	.word	4
	.word	_Label_3544
	.word	-36
	.word	4
	.word	_Label_3545
	.word	-40
	.word	4
	.word	_Label_3546
	.word	-44
	.word	4
	.word	_Label_3547
	.word	-48
	.word	4
	.word	_Label_3548
	.word	-52
	.word	4
	.word	0
_Label_3533:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchWriteSector\0"
	.align
_Label_3534:
	.ascii	"Pself\0"
	.align
_Label_3535:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_3536:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_3537:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_3538:
	.byte	'?'
	.ascii	"_temp_3532\0"
	.align
_Label_3539:
	.byte	'?'
	.ascii	"_temp_3531\0"
	.align
_Label_3540:
	.byte	'?'
	.ascii	"_temp_3530\0"
	.align
_Label_3541:
	.byte	'?'
	.ascii	"_temp_3529\0"
	.align
_Label_3542:
	.byte	'?'
	.ascii	"_temp_3528\0"
	.align
_Label_3543:
	.byte	'?'
	.ascii	"_temp_3527\0"
	.align
_Label_3544:
	.byte	'?'
	.ascii	"_temp_3526\0"
	.align
_Label_3545:
	.byte	'?'
	.ascii	"_temp_3517\0"
	.align
_Label_3546:
	.byte	'?'
	.ascii	"_temp_3516\0"
	.align
_Label_3547:
	.byte	'?'
	.ascii	"_temp_3515\0"
	.align
_Label_3548:
	.byte	'?'
	.ascii	"_temp_3511\0"
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
	mov	2439,r13		! source line 2439
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2454,r13		! source line 2454
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2456,r13		! source line 2456
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
	mov	2457,r13		! source line 2457
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
	mov	2458,r13		! source line 2458
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
	mov	2459,r13		! source line 2459
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
	mov	2459,r13		! source line 2459
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
	.word	_Label_3549
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_3550
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3551
	.word	12
	.word	4
	.word	_Label_3552
	.word	16
	.word	4
	.word	_Label_3553
	.word	20
	.word	4
	.word	_Label_3554
	.word	24
	.word	4
	.word	0
_Label_3549:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartWriteSector\0"
	.align
_Label_3550:
	.ascii	"Pself\0"
	.align
_Label_3551:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_3552:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_3553:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_3554:
	.byte	'P'
	.ascii	"whoCares\0"
	.align
! 
! ===============  CLASS FileManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileManager:
	.word	_Label_3555
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
_Label_3555:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3556
	.word	_sourceFileName
	.word	366		! line number
	.word	800		! size of instances, in bytes
	.word	_P_Kernel_FileManager
	.word	_P_System_Object
	.word	0
_Label_3556:
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
_Label_4487:
	push	r0
	sub	r1,1,r1
	bne	_Label_4487
	mov	2470,r13		! source line 2470
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3557 = _StringConst_145
	set	_StringConst_145,r1
	store	r1,[r14+-940]
!   Prepare Argument: offset=8  value=_temp_3557  sizeInBytes=4
	load	[r14+-940],r1
	store	r1,[r15+0]
!   Call the function
	mov	2477,r13		! source line 2477
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2478,r13		! source line 2478
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
	mov	2479,r13		! source line 2479
	mov	"\0\0SE",r10
!   _temp_3559 = &fileManagerLock
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
	mov	2482,r13		! source line 2482
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
	mov	2483,r13		! source line 2483
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
	mov	2484,r13		! source line 2484
	mov	"\0\0SE",r10
!   _temp_3562 = &anFCBBecameFree
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
	mov	2485,r13		! source line 2485
	mov	"\0\0AS",r10
!   _temp_3563 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-916]
!   NEW ARRAY Constructor...
!   _temp_3565 = &_temp_3564
	add	r14,-912,r1
	store	r1,[r14+-508]
!   _temp_3565 = _temp_3565 + 4
	load	[r14+-508],r1
	add	r1,4,r1
	store	r1,[r14+-508]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_3567 = zeros  (sizeInBytes=40)
	add	r14,-500,r4
	mov	10,r3
_Label_4488:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4488
!   _temp_3567 = _P_Kernel_FileControlBlock
	set	_P_Kernel_FileControlBlock,r1
	store	r1,[r14+-500]
	mov	10,r1
	store	r1,[r14+-504]
_Label_3569:
!   Data Move: *_temp_3565 = _temp_3567  (sizeInBytes=40)
	add	r14,-500,r5
	load	[r14+-508],r4
	mov	10,r3
_Label_4489:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4489
!   _temp_3565 = _temp_3565 + 40
	load	[r14+-508],r1
	add	r1,40,r1
	store	r1,[r14+-508]
!   _temp_3566 = _temp_3566 + -1
	load	[r14+-504],r1
	add	r1,-1,r1
	store	r1,[r14+-504]
!   if intNotZero (_temp_3566) then goto _Label_3569
	load	[r14+-504],r1
	cmp	r1,r0
	bne	_Label_3569
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-912]
!   _temp_3570 = &_temp_3564
	add	r14,-912,r1
	store	r1,[r14+-456]
!   make sure array has size 10
	load	[r14+-916],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_4490
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4490:
!   make sure array has size 10
	load	[r14+-456],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_3563 = *_temp_3570  (sizeInBytes=404)
	load	[r14+-456],r5
	load	[r14+-916],r4
	mov	101,r3
_Label_4491:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4491
! FOR STATEMENT...
	mov	2487,r13		! source line 2487
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3575 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-452]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3576 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-448]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3575  (sizeInBytes=4)
	load	[r14+-452],r1
	store	r1,[r14+-944]
_Label_3571:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3576 then goto _Label_3574		
	load	[r14+-944],r1
	load	[r14+-448],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3574
_Label_3572:
	mov	2487,r13		! source line 2487
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2488,r13		! source line 2488
	mov	"\0\0AS",r10
!   _temp_3577 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-444]
!   Move address of _temp_3577 [i ] into _temp_3578
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
!   _temp_3579 = _temp_3578 + 12
	load	[r14+-440],r1
	add	r1,12,r1
	store	r1,[r14+-436]
!   Data Move: *_temp_3579 = i  (sizeInBytes=4)
	load	[r14+-944],r1
	load	[r14+-436],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2489,r13		! source line 2489
	mov	"\0\0SE",r10
!   _temp_3580 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-432]
!   Move address of _temp_3580 [i ] into _temp_3581
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
	mov	2490,r13		! source line 2490
	mov	"\0\0SE",r10
!   _temp_3583 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-420]
!   Move address of _temp_3583 [i ] into _temp_3584
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
!   _temp_3582 = _temp_3584		(4 bytes)
	load	[r14+-416],r1
	store	r1,[r14+-424]
!   _temp_3585 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-412]
!   Prepare Argument: offset=12  value=_temp_3582  sizeInBytes=4
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
_Label_3573:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_3571
! END FOR
_Label_3574:
! ASSIGNMENT STATEMENT...
	mov	2494,r13		! source line 2494
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
	mov	2495,r13		! source line 2495
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
	mov	2496,r13		! source line 2496
	mov	"\0\0SE",r10
!   _temp_3588 = &anOpenFileBecameFree
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
	mov	2497,r13		! source line 2497
	mov	"\0\0AS",r10
!   _temp_3589 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-396]
!   NEW ARRAY Constructor...
!   _temp_3591 = &_temp_3590
	add	r14,-392,r1
	store	r1,[r14+-108]
!   _temp_3591 = _temp_3591 + 4
	load	[r14+-108],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_3593 = zeros  (sizeInBytes=28)
	add	r14,-100,r4
	mov	7,r3
_Label_4492:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4492
!   _temp_3593 = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	store	r1,[r14+-100]
	mov	10,r1
	store	r1,[r14+-104]
_Label_3595:
!   Data Move: *_temp_3591 = _temp_3593  (sizeInBytes=28)
	add	r14,-100,r5
	load	[r14+-108],r4
	mov	7,r3
_Label_4493:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4493
!   _temp_3591 = _temp_3591 + 28
	load	[r14+-108],r1
	add	r1,28,r1
	store	r1,[r14+-108]
!   _temp_3592 = _temp_3592 + -1
	load	[r14+-104],r1
	add	r1,-1,r1
	store	r1,[r14+-104]
!   if intNotZero (_temp_3592) then goto _Label_3595
	load	[r14+-104],r1
	cmp	r1,r0
	bne	_Label_3595
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-392]
!   _temp_3596 = &_temp_3590
	add	r14,-392,r1
	store	r1,[r14+-68]
!   make sure array has size 10
	load	[r14+-396],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_4494
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4494:
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_3589 = *_temp_3596  (sizeInBytes=284)
	load	[r14+-68],r5
	load	[r14+-396],r4
	mov	71,r3
_Label_4495:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4495
! FOR STATEMENT...
	mov	2499,r13		! source line 2499
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3601 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3602 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3601  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-944]
_Label_3597:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3602 then goto _Label_3600		
	load	[r14+-944],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3600
_Label_3598:
	mov	2499,r13		! source line 2499
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2500,r13		! source line 2500
	mov	"\0\0AS",r10
!   _temp_3603 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-56]
!   Move address of _temp_3603 [i ] into _temp_3604
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
!   _temp_3605 = _temp_3604 + 12
	load	[r14+-52],r1
	add	r1,12,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_3605 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2501,r13		! source line 2501
	mov	"\0\0SE",r10
!   _temp_3607 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-40]
!   Move address of _temp_3607 [i ] into _temp_3608
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
!   _temp_3606 = _temp_3608		(4 bytes)
	load	[r14+-36],r1
	store	r1,[r14+-44]
!   _temp_3609 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_3606  sizeInBytes=4
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
_Label_3599:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_3597
! END FOR
_Label_3600:
! ASSIGNMENT STATEMENT...
	mov	2505,r13		! source line 2505
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: serialTerminalFile = zeros  (sizeInBytes=28)
	load	[r14+8],r4
	add	r4,772,r4
	mov	7,r3
_Label_4496:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4496
!   serialTerminalFile = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	load	[r14+8],r2
	store	r1,[r2+772]
! ASSIGNMENT STATEMENT...
	mov	2506,r13		! source line 2506
	mov	"\0\0AS",r10
!   _temp_3611 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-24]
!   _temp_3612 = _temp_3611 + 12
	load	[r14+-24],r1
	add	r1,12,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_3612 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2511,r13		! source line 2511
	mov	"\0\0AS",r10
	mov	2511,r13		! source line 2511
	mov	"\0\0SE",r10
!   _temp_3613 = &_P_Kernel_frameManager
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
	mov	2512,r13		! source line 2512
	mov	"\0\0SE",r10
!   _temp_3614 = &_P_Kernel_diskDriver
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
	mov	2512,r13		! source line 2512
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
	.word	_Label_3615
	.word	4		! total size of parameters
	.word	952		! frame size = 952
	.word	_Label_3616
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3617
	.word	-12
	.word	4
	.word	_Label_3618
	.word	-16
	.word	4
	.word	_Label_3619
	.word	-20
	.word	4
	.word	_Label_3620
	.word	-24
	.word	4
	.word	_Label_3621
	.word	-28
	.word	4
	.word	_Label_3622
	.word	-32
	.word	4
	.word	_Label_3623
	.word	-36
	.word	4
	.word	_Label_3624
	.word	-40
	.word	4
	.word	_Label_3625
	.word	-44
	.word	4
	.word	_Label_3626
	.word	-48
	.word	4
	.word	_Label_3627
	.word	-52
	.word	4
	.word	_Label_3628
	.word	-56
	.word	4
	.word	_Label_3629
	.word	-60
	.word	4
	.word	_Label_3630
	.word	-64
	.word	4
	.word	_Label_3631
	.word	-68
	.word	4
	.word	_Label_3632
	.word	-72
	.word	4
	.word	_Label_3633
	.word	-100
	.word	28
	.word	_Label_3634
	.word	-104
	.word	4
	.word	_Label_3635
	.word	-108
	.word	4
	.word	_Label_3636
	.word	-392
	.word	284
	.word	_Label_3637
	.word	-396
	.word	4
	.word	_Label_3638
	.word	-400
	.word	4
	.word	_Label_3639
	.word	-404
	.word	4
	.word	_Label_3640
	.word	-408
	.word	4
	.word	_Label_3641
	.word	-412
	.word	4
	.word	_Label_3642
	.word	-416
	.word	4
	.word	_Label_3643
	.word	-420
	.word	4
	.word	_Label_3644
	.word	-424
	.word	4
	.word	_Label_3645
	.word	-428
	.word	4
	.word	_Label_3646
	.word	-432
	.word	4
	.word	_Label_3647
	.word	-436
	.word	4
	.word	_Label_3648
	.word	-440
	.word	4
	.word	_Label_3649
	.word	-444
	.word	4
	.word	_Label_3650
	.word	-448
	.word	4
	.word	_Label_3651
	.word	-452
	.word	4
	.word	_Label_3652
	.word	-456
	.word	4
	.word	_Label_3653
	.word	-460
	.word	4
	.word	_Label_3654
	.word	-500
	.word	40
	.word	_Label_3655
	.word	-504
	.word	4
	.word	_Label_3656
	.word	-508
	.word	4
	.word	_Label_3657
	.word	-912
	.word	404
	.word	_Label_3658
	.word	-916
	.word	4
	.word	_Label_3659
	.word	-920
	.word	4
	.word	_Label_3660
	.word	-924
	.word	4
	.word	_Label_3661
	.word	-928
	.word	4
	.word	_Label_3662
	.word	-932
	.word	4
	.word	_Label_3663
	.word	-936
	.word	4
	.word	_Label_3664
	.word	-940
	.word	4
	.word	_Label_3665
	.word	-944
	.word	4
	.word	0
_Label_3615:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_3616:
	.ascii	"Pself\0"
	.align
_Label_3617:
	.byte	'?'
	.ascii	"_temp_3614\0"
	.align
_Label_3618:
	.byte	'?'
	.ascii	"_temp_3613\0"
	.align
_Label_3619:
	.byte	'?'
	.ascii	"_temp_3612\0"
	.align
_Label_3620:
	.byte	'?'
	.ascii	"_temp_3611\0"
	.align
_Label_3621:
	.byte	'?'
	.ascii	"_temp_3610\0"
	.align
_Label_3622:
	.byte	'?'
	.ascii	"_temp_3609\0"
	.align
_Label_3623:
	.byte	'?'
	.ascii	"_temp_3608\0"
	.align
_Label_3624:
	.byte	'?'
	.ascii	"_temp_3607\0"
	.align
_Label_3625:
	.byte	'?'
	.ascii	"_temp_3606\0"
	.align
_Label_3626:
	.byte	'?'
	.ascii	"_temp_3605\0"
	.align
_Label_3627:
	.byte	'?'
	.ascii	"_temp_3604\0"
	.align
_Label_3628:
	.byte	'?'
	.ascii	"_temp_3603\0"
	.align
_Label_3629:
	.byte	'?'
	.ascii	"_temp_3602\0"
	.align
_Label_3630:
	.byte	'?'
	.ascii	"_temp_3601\0"
	.align
_Label_3631:
	.byte	'?'
	.ascii	"_temp_3596\0"
	.align
_Label_3632:
	.byte	'?'
	.ascii	"_temp_3594\0"
	.align
_Label_3633:
	.byte	'?'
	.ascii	"_temp_3593\0"
	.align
_Label_3634:
	.byte	'?'
	.ascii	"_temp_3592\0"
	.align
_Label_3635:
	.byte	'?'
	.ascii	"_temp_3591\0"
	.align
_Label_3636:
	.byte	'?'
	.ascii	"_temp_3590\0"
	.align
_Label_3637:
	.byte	'?'
	.ascii	"_temp_3589\0"
	.align
_Label_3638:
	.byte	'?'
	.ascii	"_temp_3588\0"
	.align
_Label_3639:
	.byte	'?'
	.ascii	"_temp_3587\0"
	.align
_Label_3640:
	.byte	'?'
	.ascii	"_temp_3586\0"
	.align
_Label_3641:
	.byte	'?'
	.ascii	"_temp_3585\0"
	.align
_Label_3642:
	.byte	'?'
	.ascii	"_temp_3584\0"
	.align
_Label_3643:
	.byte	'?'
	.ascii	"_temp_3583\0"
	.align
_Label_3644:
	.byte	'?'
	.ascii	"_temp_3582\0"
	.align
_Label_3645:
	.byte	'?'
	.ascii	"_temp_3581\0"
	.align
_Label_3646:
	.byte	'?'
	.ascii	"_temp_3580\0"
	.align
_Label_3647:
	.byte	'?'
	.ascii	"_temp_3579\0"
	.align
_Label_3648:
	.byte	'?'
	.ascii	"_temp_3578\0"
	.align
_Label_3649:
	.byte	'?'
	.ascii	"_temp_3577\0"
	.align
_Label_3650:
	.byte	'?'
	.ascii	"_temp_3576\0"
	.align
_Label_3651:
	.byte	'?'
	.ascii	"_temp_3575\0"
	.align
_Label_3652:
	.byte	'?'
	.ascii	"_temp_3570\0"
	.align
_Label_3653:
	.byte	'?'
	.ascii	"_temp_3568\0"
	.align
_Label_3654:
	.byte	'?'
	.ascii	"_temp_3567\0"
	.align
_Label_3655:
	.byte	'?'
	.ascii	"_temp_3566\0"
	.align
_Label_3656:
	.byte	'?'
	.ascii	"_temp_3565\0"
	.align
_Label_3657:
	.byte	'?'
	.ascii	"_temp_3564\0"
	.align
_Label_3658:
	.byte	'?'
	.ascii	"_temp_3563\0"
	.align
_Label_3659:
	.byte	'?'
	.ascii	"_temp_3562\0"
	.align
_Label_3660:
	.byte	'?'
	.ascii	"_temp_3561\0"
	.align
_Label_3661:
	.byte	'?'
	.ascii	"_temp_3560\0"
	.align
_Label_3662:
	.byte	'?'
	.ascii	"_temp_3559\0"
	.align
_Label_3663:
	.byte	'?'
	.ascii	"_temp_3558\0"
	.align
_Label_3664:
	.byte	'?'
	.ascii	"_temp_3557\0"
	.align
_Label_3665:
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
_Label_4497:
	push	r0
	sub	r1,1,r1
	bne	_Label_4497
	mov	2519,r13		! source line 2519
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2521,r13		! source line 2521
	mov	"\0\0SE",r10
!   _temp_3666 = &fileManagerLock
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
!   _temp_3667 = _StringConst_146
	set	_StringConst_146,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_3667  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	2522,r13		! source line 2522
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2523,r13		! source line 2523
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3672 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-104]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3673 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-100]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3672  (sizeInBytes=4)
	load	[r14+-104],r1
	store	r1,[r14+-116]
_Label_3668:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3673 then goto _Label_3671		
	load	[r14+-116],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3671
_Label_3669:
	mov	2523,r13		! source line 2523
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_3674 = _StringConst_147
	set	_StringConst_147,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_3674  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	2524,r13		! source line 2524
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2525,r13		! source line 2525
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3675 = _StringConst_148
	set	_StringConst_148,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_3675  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2526,r13		! source line 2526
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2527,r13		! source line 2527
	mov	"\0\0SE",r10
!   _temp_3676 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-88]
!   Move address of _temp_3676 [i ] into _temp_3677
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
_Label_3670:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_3668
! END FOR
_Label_3671:
! CALL STATEMENT...
!   _temp_3678 = _StringConst_149
	set	_StringConst_149,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_3678  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	2529,r13		! source line 2529
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2530,r13		! source line 2530
	mov	"\0\0SE",r10
!   _temp_3679 = _function_189_printFCB
	set	_function_189_printFCB,r1
	store	r1,[r14+-76]
!   _temp_3680 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_3679  sizeInBytes=4
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
	mov	2531,r13		! source line 2531
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_3681 = _StringConst_150
	set	_StringConst_150,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_3681  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	2532,r13		! source line 2532
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2533,r13		! source line 2533
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3686 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3687 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3686  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-116]
_Label_3682:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3687 then goto _Label_3685		
	load	[r14+-116],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3685
_Label_3683:
	mov	2533,r13		! source line 2533
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_3688 = _StringConst_151
	set	_StringConst_151,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_3688  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	2534,r13		! source line 2534
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2535,r13		! source line 2535
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3689 = _StringConst_152
	set	_StringConst_152,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_3689  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	2536,r13		! source line 2536
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_3691 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-44]
!   Move address of _temp_3691 [i ] into _temp_3692
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
!   _temp_3690 = _temp_3692		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_3690  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	2537,r13		! source line 2537
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_3693 = _StringConst_153
	set	_StringConst_153,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_3693  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2538,r13		! source line 2538
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2539,r13		! source line 2539
	mov	"\0\0SE",r10
!   _temp_3694 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-32]
!   Move address of _temp_3694 [i ] into _temp_3695
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
_Label_3684:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_3682
! END FOR
_Label_3685:
! CALL STATEMENT...
!   _temp_3696 = _StringConst_154
	set	_StringConst_154,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3696  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2541,r13		! source line 2541
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2542,r13		! source line 2542
	mov	"\0\0SE",r10
!   _temp_3697 = _function_188_printOpen
	set	_function_188_printOpen,r1
	store	r1,[r14+-20]
!   _temp_3698 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_3697  sizeInBytes=4
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
	mov	2543,r13		! source line 2543
	mov	"\0\0SE",r10
!   _temp_3699 = &fileManagerLock
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
	mov	2543,r13		! source line 2543
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
	.word	_Label_3700
	.word	4		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_3701
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3702
	.word	-12
	.word	4
	.word	_Label_3703
	.word	-16
	.word	4
	.word	_Label_3704
	.word	-20
	.word	4
	.word	_Label_3705
	.word	-24
	.word	4
	.word	_Label_3706
	.word	-28
	.word	4
	.word	_Label_3707
	.word	-32
	.word	4
	.word	_Label_3708
	.word	-36
	.word	4
	.word	_Label_3709
	.word	-40
	.word	4
	.word	_Label_3710
	.word	-44
	.word	4
	.word	_Label_3711
	.word	-48
	.word	4
	.word	_Label_3712
	.word	-52
	.word	4
	.word	_Label_3713
	.word	-56
	.word	4
	.word	_Label_3714
	.word	-60
	.word	4
	.word	_Label_3715
	.word	-64
	.word	4
	.word	_Label_3716
	.word	-68
	.word	4
	.word	_Label_3717
	.word	-72
	.word	4
	.word	_Label_3718
	.word	-76
	.word	4
	.word	_Label_3719
	.word	-80
	.word	4
	.word	_Label_3720
	.word	-84
	.word	4
	.word	_Label_3721
	.word	-88
	.word	4
	.word	_Label_3722
	.word	-92
	.word	4
	.word	_Label_3723
	.word	-96
	.word	4
	.word	_Label_3724
	.word	-100
	.word	4
	.word	_Label_3725
	.word	-104
	.word	4
	.word	_Label_3726
	.word	-108
	.word	4
	.word	_Label_3727
	.word	-112
	.word	4
	.word	_Label_3728
	.word	-116
	.word	4
	.word	0
_Label_3700:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_3701:
	.ascii	"Pself\0"
	.align
_Label_3702:
	.byte	'?'
	.ascii	"_temp_3699\0"
	.align
_Label_3703:
	.byte	'?'
	.ascii	"_temp_3698\0"
	.align
_Label_3704:
	.byte	'?'
	.ascii	"_temp_3697\0"
	.align
_Label_3705:
	.byte	'?'
	.ascii	"_temp_3696\0"
	.align
_Label_3706:
	.byte	'?'
	.ascii	"_temp_3695\0"
	.align
_Label_3707:
	.byte	'?'
	.ascii	"_temp_3694\0"
	.align
_Label_3708:
	.byte	'?'
	.ascii	"_temp_3693\0"
	.align
_Label_3709:
	.byte	'?'
	.ascii	"_temp_3692\0"
	.align
_Label_3710:
	.byte	'?'
	.ascii	"_temp_3691\0"
	.align
_Label_3711:
	.byte	'?'
	.ascii	"_temp_3690\0"
	.align
_Label_3712:
	.byte	'?'
	.ascii	"_temp_3689\0"
	.align
_Label_3713:
	.byte	'?'
	.ascii	"_temp_3688\0"
	.align
_Label_3714:
	.byte	'?'
	.ascii	"_temp_3687\0"
	.align
_Label_3715:
	.byte	'?'
	.ascii	"_temp_3686\0"
	.align
_Label_3716:
	.byte	'?'
	.ascii	"_temp_3681\0"
	.align
_Label_3717:
	.byte	'?'
	.ascii	"_temp_3680\0"
	.align
_Label_3718:
	.byte	'?'
	.ascii	"_temp_3679\0"
	.align
_Label_3719:
	.byte	'?'
	.ascii	"_temp_3678\0"
	.align
_Label_3720:
	.byte	'?'
	.ascii	"_temp_3677\0"
	.align
_Label_3721:
	.byte	'?'
	.ascii	"_temp_3676\0"
	.align
_Label_3722:
	.byte	'?'
	.ascii	"_temp_3675\0"
	.align
_Label_3723:
	.byte	'?'
	.ascii	"_temp_3674\0"
	.align
_Label_3724:
	.byte	'?'
	.ascii	"_temp_3673\0"
	.align
_Label_3725:
	.byte	'?'
	.ascii	"_temp_3672\0"
	.align
_Label_3726:
	.byte	'?'
	.ascii	"_temp_3667\0"
	.align
_Label_3727:
	.byte	'?'
	.ascii	"_temp_3666\0"
	.align
_Label_3728:
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
_Label_4498:
	push	r0
	sub	r1,1,r1
	bne	_Label_4498
	mov	2548,r13		! source line 2548
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2564,r13		! source line 2564
	mov	"\0\0AS",r10
	mov	2564,r13		! source line 2564
	mov	"\0\0SE",r10
!   _temp_3729 = &_P_Kernel_fileManager
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
	mov	2565,r13		! source line 2565
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _Label_3730
	load	[r14+-56],r1
	cmp	r1,r0
	be	_Label_3730
	jmp	_Label_3731
_Label_3730:
! THEN...
	mov	2566,r13		! source line 2566
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2566,r13		! source line 2566
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3731:
! SEND STATEMENT...
	mov	2570,r13		! source line 2570
	mov	"\0\0SE",r10
!   _temp_3732 = &fileManagerLock
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
	mov	2571,r13		! source line 2571
	mov	"\0\0WH",r10
_Label_3733:
	mov	2571,r13		! source line 2571
	mov	"\0\0SE",r10
!   _temp_3736 = &openFileFreeList
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
!   if result==true then goto _Label_3734 else goto _Label_3735
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_3735
	jmp	_Label_3734
_Label_3734:
	mov	2571,r13		! source line 2571
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2572,r13		! source line 2572
	mov	"\0\0SE",r10
!   _temp_3737 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   _temp_3738 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_3737  sizeInBytes=4
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
	jmp	_Label_3733
_Label_3735:
! ASSIGNMENT STATEMENT...
	mov	2574,r13		! source line 2574
	mov	"\0\0AS",r10
	mov	2574,r13		! source line 2574
	mov	"\0\0SE",r10
!   _temp_3739 = &openFileFreeList
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
	mov	2577,r13		! source line 2577
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3740 = open + 20
	load	[r14+-52],r1
	add	r1,20,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3740 = fcb  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2578,r13		! source line 2578
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3741 = open + 24
	load	[r14+-52],r1
	add	r1,24,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_3741 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2581,r13		! source line 2581
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3742 = open + 16
	load	[r14+-52],r1
	add	r1,16,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_3742 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2583,r13		! source line 2583
	mov	"\0\0SE",r10
!   _temp_3743 = &fileManagerLock
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
	mov	2584,r13		! source line 2584
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
	.word	_Label_3744
	.word	8		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_3745
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3746
	.word	12
	.word	4
	.word	_Label_3747
	.word	-12
	.word	4
	.word	_Label_3748
	.word	-16
	.word	4
	.word	_Label_3749
	.word	-20
	.word	4
	.word	_Label_3750
	.word	-24
	.word	4
	.word	_Label_3751
	.word	-28
	.word	4
	.word	_Label_3752
	.word	-32
	.word	4
	.word	_Label_3753
	.word	-36
	.word	4
	.word	_Label_3754
	.word	-40
	.word	4
	.word	_Label_3755
	.word	-44
	.word	4
	.word	_Label_3756
	.word	-48
	.word	4
	.word	_Label_3757
	.word	-52
	.word	4
	.word	_Label_3758
	.word	-56
	.word	4
	.word	0
_Label_3744:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Open\0"
	.align
_Label_3745:
	.ascii	"Pself\0"
	.align
_Label_3746:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_3747:
	.byte	'?'
	.ascii	"_temp_3743\0"
	.align
_Label_3748:
	.byte	'?'
	.ascii	"_temp_3742\0"
	.align
_Label_3749:
	.byte	'?'
	.ascii	"_temp_3741\0"
	.align
_Label_3750:
	.byte	'?'
	.ascii	"_temp_3740\0"
	.align
_Label_3751:
	.byte	'?'
	.ascii	"_temp_3739\0"
	.align
_Label_3752:
	.byte	'?'
	.ascii	"_temp_3738\0"
	.align
_Label_3753:
	.byte	'?'
	.ascii	"_temp_3737\0"
	.align
_Label_3754:
	.byte	'?'
	.ascii	"_temp_3736\0"
	.align
_Label_3755:
	.byte	'?'
	.ascii	"_temp_3732\0"
	.align
_Label_3756:
	.byte	'?'
	.ascii	"_temp_3729\0"
	.align
_Label_3757:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3758:
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
_Label_4499:
	push	r0
	sub	r1,1,r1
	bne	_Label_4499
	mov	2589,r13		! source line 2589
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2614,r13		! source line 2614
	mov	"\0\0AS",r10
!   p = directoryFrame		(4 bytes)
	load	[r14+8],r1
	load	[r1+768],r1
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2617,r13		! source line 2617
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
	mov	2618,r13		! source line 2618
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2619,r13		! source line 2619
	mov	"\0\0IF",r10
!   if i == 1937012066 then goto _Label_3760		(int)
	load	[r14+-136],r1
	set	1937012066,r2
	cmp	r1,r2
	be	_Label_3760
!	jmp	_Label_3759
_Label_3759:
! THEN...
	mov	2620,r13		! source line 2620
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3761 = _StringConst_155
	set	_StringConst_155,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_3761  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2620,r13		! source line 2620
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3760:
! ASSIGNMENT STATEMENT...
	mov	2624,r13		! source line 2624
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
	mov	2625,r13		! source line 2625
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2626,r13		! source line 2626
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
	mov	2627,r13		! source line 2627
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! WHILE STATEMENT...
	mov	2630,r13		! source line 2630
	mov	"\0\0WH",r10
_Label_3762:
!   if numFiles <= 0 then goto _Label_3764		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3764
!	jmp	_Label_3763
_Label_3763:
	mov	2630,r13		! source line 2630
	mov	"\0\0WB",r10
! CALL STATEMENT...
!   _temp_3765 = &start
	add	r14,-140,r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_3765  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2631,r13		! source line 2631
	mov	"\0\0CA",r10
	call	_function_190_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2632,r13		! source line 2632
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_3766 = &fileLen
	add	r14,-148,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=_temp_3766  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2633,r13		! source line 2633
	mov	"\0\0CA",r10
	call	_function_190_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2634,r13		! source line 2634
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_3767 = &fileNameLen
	add	r14,-152,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_3767  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2635,r13		! source line 2635
	mov	"\0\0CA",r10
	call	_function_190_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2636,r13		! source line 2636
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2637,r13		! source line 2637
	mov	"\0\0IF",r10
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_3771 = *filename  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if fileNameLen != _temp_3771 then goto _Label_3769		(int)
	load	[r14+-152],r1
	load	[r14+-116],r2
	cmp	r1,r2
	bne	_Label_3769
!	jmp	_Label_3770
_Label_3770:
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of filename [0 ] into _temp_3773
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
!   _temp_3772 = _temp_3773		(4 bytes)
	load	[r14+-108],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_3772  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=fileNameLen  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+8]
!   Call the function
	mov	2638,r13		! source line 2638
	mov	"\0\0CA",r10
	call	_P_System_MemoryEqual
!   if result==true then goto _Label_3768 else goto _Label_3769
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_3769
	jmp	_Label_3768
_Label_3768:
! THEN...
	mov	2639,r13		! source line 2639
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2639,r13		! source line 2639
	mov	"\0\0BR",r10
	jmp	_Label_3764
! END IF...
_Label_3769:
! ASSIGNMENT STATEMENT...
	mov	2641,r13		! source line 2641
	mov	"\0\0AS",r10
!   p = p + fileNameLen		(int)
	load	[r14+-160],r1
	load	[r14+-152],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2642,r13		! source line 2642
	mov	"\0\0AS",r10
!   numFiles = numFiles - 1		(int)
	load	[r14+-144],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
! END WHILE...
	jmp	_Label_3762
_Label_3764:
! IF STATEMENT...
	mov	2646,r13		! source line 2646
	mov	"\0\0IF",r10
!   if numFiles > 0 then goto _Label_3775		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3775
!	jmp	_Label_3774
_Label_3774:
! THEN...
	mov	2647,r13		! source line 2647
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2647,r13		! source line 2647
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3775:
! SEND STATEMENT...
	mov	2650,r13		! source line 2650
	mov	"\0\0SE",r10
!   _temp_3776 = &fileManagerLock
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
	mov	2652,r13		! source line 2652
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3781 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-100]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3782 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-96]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3781  (sizeInBytes=4)
	load	[r14+-100],r1
	store	r1,[r14+-136]
_Label_3777:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3782 then goto _Label_3780		
	load	[r14+-136],r1
	load	[r14+-96],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3780
_Label_3778:
	mov	2652,r13		! source line 2652
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2653,r13		! source line 2653
	mov	"\0\0AS",r10
!   _temp_3783 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-92]
!   Move address of _temp_3783 [i ] into _temp_3784
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
!   fcb = _temp_3784		(4 bytes)
	load	[r14+-88],r1
	store	r1,[r14+-156]
! IF STATEMENT...
	mov	2654,r13		! source line 2654
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3788 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-80]
!   Data Move: _temp_3787 = *_temp_3788  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if _temp_3787 != start then goto _Label_3786		(int)
	load	[r14+-84],r1
	load	[r14+-140],r2
	cmp	r1,r2
	bne	_Label_3786
!	jmp	_Label_3785
_Label_3785:
! THEN...
	mov	2655,r13		! source line 2655
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2655,r13		! source line 2655
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3789 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-76]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3792 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-64]
!   Data Move: _temp_3791 = *_temp_3792  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   _temp_3790 = _temp_3791 + 1		(int)
	load	[r14+-68],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
!   Data Move: *_temp_3789 = _temp_3790  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r14+-76],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2656,r13		! source line 2656
	mov	"\0\0SE",r10
!   _temp_3793 = &fileManagerLock
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
	mov	2657,r13		! source line 2657
	mov	"\0\0RE",r10
!   ReturnResult: fcb  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3786:
!   Increment the FOR-LOOP index variable and jump back
_Label_3779:
!   i = i + 1
	load	[r14+-136],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
	jmp	_Label_3777
! END FOR
_Label_3780:
! WHILE STATEMENT...
	mov	2662,r13		! source line 2662
	mov	"\0\0WH",r10
_Label_3794:
	mov	2662,r13		! source line 2662
	mov	"\0\0SE",r10
!   _temp_3797 = &fcbFreeList
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
!   if result==true then goto _Label_3795 else goto _Label_3796
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_3796
	jmp	_Label_3795
_Label_3795:
	mov	2662,r13		! source line 2662
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2663,r13		! source line 2663
	mov	"\0\0SE",r10
!   _temp_3798 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   _temp_3799 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_3798  sizeInBytes=4
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
	jmp	_Label_3794
_Label_3796:
! ASSIGNMENT STATEMENT...
	mov	2665,r13		! source line 2665
	mov	"\0\0AS",r10
	mov	2665,r13		! source line 2665
	mov	"\0\0SE",r10
!   _temp_3800 = &fcbFreeList
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
	mov	2668,r13		! source line 2668
	mov	"\0\0SE",r10
!   _temp_3801 = &fileManagerLock
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
	mov	2671,r13		! source line 2671
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3802 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_3802 = start  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2672,r13		! source line 2672
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3803 = fcb + 24
	load	[r14+-156],r1
	add	r1,24,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_3803 = fileLen  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2673,r13		! source line 2673
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3804 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_3804 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-28],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2674,r13		! source line 2674
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3809 = fcb + 32
	load	[r14+-156],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   Data Move: _temp_3808 = *_temp_3809  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_3808 < 0 then goto _Label_3807		(int)
	load	[r14+-24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_3807
	jmp	_Label_3805
_Label_3807:
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3810 = fcb + 36
	load	[r14+-156],r1
	add	r1,36,r1
	store	r1,[r14+-16]
!   if boolIsZero (_temp_3810 ) then goto _Label_3806		(int)
	load	[r14+-16],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_3806
!	jmp	_Label_3805
_Label_3805:
! THEN...
	mov	2675,r13		! source line 2675
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3811 = _StringConst_156
	set	_StringConst_156,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3811  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2675,r13		! source line 2675
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3806:
! RETURN STATEMENT...
	mov	2677,r13		! source line 2677
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
	.word	_Label_3812
	.word	8		! total size of parameters
	.word	164		! frame size = 164
	.word	_Label_3813
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3814
	.word	12
	.word	4
	.word	_Label_3815
	.word	-12
	.word	4
	.word	_Label_3816
	.word	-16
	.word	4
	.word	_Label_3817
	.word	-20
	.word	4
	.word	_Label_3818
	.word	-24
	.word	4
	.word	_Label_3819
	.word	-28
	.word	4
	.word	_Label_3820
	.word	-32
	.word	4
	.word	_Label_3821
	.word	-36
	.word	4
	.word	_Label_3822
	.word	-40
	.word	4
	.word	_Label_3823
	.word	-44
	.word	4
	.word	_Label_3824
	.word	-48
	.word	4
	.word	_Label_3825
	.word	-52
	.word	4
	.word	_Label_3826
	.word	-56
	.word	4
	.word	_Label_3827
	.word	-60
	.word	4
	.word	_Label_3828
	.word	-64
	.word	4
	.word	_Label_3829
	.word	-68
	.word	4
	.word	_Label_3830
	.word	-72
	.word	4
	.word	_Label_3831
	.word	-76
	.word	4
	.word	_Label_3832
	.word	-80
	.word	4
	.word	_Label_3833
	.word	-84
	.word	4
	.word	_Label_3834
	.word	-88
	.word	4
	.word	_Label_3835
	.word	-92
	.word	4
	.word	_Label_3836
	.word	-96
	.word	4
	.word	_Label_3837
	.word	-100
	.word	4
	.word	_Label_3838
	.word	-104
	.word	4
	.word	_Label_3839
	.word	-108
	.word	4
	.word	_Label_3840
	.word	-112
	.word	4
	.word	_Label_3841
	.word	-116
	.word	4
	.word	_Label_3842
	.word	-120
	.word	4
	.word	_Label_3843
	.word	-124
	.word	4
	.word	_Label_3844
	.word	-128
	.word	4
	.word	_Label_3845
	.word	-132
	.word	4
	.word	_Label_3846
	.word	-136
	.word	4
	.word	_Label_3847
	.word	-140
	.word	4
	.word	_Label_3848
	.word	-144
	.word	4
	.word	_Label_3849
	.word	-148
	.word	4
	.word	_Label_3850
	.word	-152
	.word	4
	.word	_Label_3851
	.word	-156
	.word	4
	.word	_Label_3852
	.word	-160
	.word	4
	.word	0
_Label_3812:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"FindFCB\0"
	.align
_Label_3813:
	.ascii	"Pself\0"
	.align
_Label_3814:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_3815:
	.byte	'?'
	.ascii	"_temp_3811\0"
	.align
_Label_3816:
	.byte	'?'
	.ascii	"_temp_3810\0"
	.align
_Label_3817:
	.byte	'?'
	.ascii	"_temp_3809\0"
	.align
_Label_3818:
	.byte	'?'
	.ascii	"_temp_3808\0"
	.align
_Label_3819:
	.byte	'?'
	.ascii	"_temp_3804\0"
	.align
_Label_3820:
	.byte	'?'
	.ascii	"_temp_3803\0"
	.align
_Label_3821:
	.byte	'?'
	.ascii	"_temp_3802\0"
	.align
_Label_3822:
	.byte	'?'
	.ascii	"_temp_3801\0"
	.align
_Label_3823:
	.byte	'?'
	.ascii	"_temp_3800\0"
	.align
_Label_3824:
	.byte	'?'
	.ascii	"_temp_3799\0"
	.align
_Label_3825:
	.byte	'?'
	.ascii	"_temp_3798\0"
	.align
_Label_3826:
	.byte	'?'
	.ascii	"_temp_3797\0"
	.align
_Label_3827:
	.byte	'?'
	.ascii	"_temp_3793\0"
	.align
_Label_3828:
	.byte	'?'
	.ascii	"_temp_3792\0"
	.align
_Label_3829:
	.byte	'?'
	.ascii	"_temp_3791\0"
	.align
_Label_3830:
	.byte	'?'
	.ascii	"_temp_3790\0"
	.align
_Label_3831:
	.byte	'?'
	.ascii	"_temp_3789\0"
	.align
_Label_3832:
	.byte	'?'
	.ascii	"_temp_3788\0"
	.align
_Label_3833:
	.byte	'?'
	.ascii	"_temp_3787\0"
	.align
_Label_3834:
	.byte	'?'
	.ascii	"_temp_3784\0"
	.align
_Label_3835:
	.byte	'?'
	.ascii	"_temp_3783\0"
	.align
_Label_3836:
	.byte	'?'
	.ascii	"_temp_3782\0"
	.align
_Label_3837:
	.byte	'?'
	.ascii	"_temp_3781\0"
	.align
_Label_3838:
	.byte	'?'
	.ascii	"_temp_3776\0"
	.align
_Label_3839:
	.byte	'?'
	.ascii	"_temp_3773\0"
	.align
_Label_3840:
	.byte	'?'
	.ascii	"_temp_3772\0"
	.align
_Label_3841:
	.byte	'?'
	.ascii	"_temp_3771\0"
	.align
_Label_3842:
	.byte	'?'
	.ascii	"_temp_3767\0"
	.align
_Label_3843:
	.byte	'?'
	.ascii	"_temp_3766\0"
	.align
_Label_3844:
	.byte	'?'
	.ascii	"_temp_3765\0"
	.align
_Label_3845:
	.byte	'?'
	.ascii	"_temp_3761\0"
	.align
_Label_3846:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_3847:
	.byte	'I'
	.ascii	"start\0"
	.align
_Label_3848:
	.byte	'I'
	.ascii	"numFiles\0"
	.align
_Label_3849:
	.byte	'I'
	.ascii	"fileLen\0"
	.align
_Label_3850:
	.byte	'I'
	.ascii	"fileNameLen\0"
	.align
_Label_3851:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_3852:
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
_Label_4500:
	push	r0
	sub	r1,1,r1
	bne	_Label_4500
	mov	2690,r13		! source line 2690
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2692,r13		! source line 2692
	mov	"\0\0IF",r10
!   _temp_3855 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-100]
!   if open != _temp_3855 then goto _Label_3854		(int)
	load	[r14+12],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bne	_Label_3854
!	jmp	_Label_3853
_Label_3853:
! THEN...
	mov	2693,r13		! source line 2693
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2693,r13		! source line 2693
	mov	"\0\0RE",r10
	add	r15,108,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3854:
! SEND STATEMENT...
	mov	2695,r13		! source line 2695
	mov	"\0\0SE",r10
!   _temp_3856 = &fileManagerLock
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
	mov	2696,r13		! source line 2696
	mov	"\0\0SE",r10
!   _temp_3857 = &_P_Kernel_fileManager
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
	mov	2697,r13		! source line 2697
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3858 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: fcb = *_temp_3858  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-104]
! ASSIGNMENT STATEMENT...
	mov	2698,r13		! source line 2698
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3859 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-84]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3862 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-72]
!   Data Move: _temp_3861 = *_temp_3862  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   _temp_3860 = _temp_3861 - 1		(int)
	load	[r14+-76],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
!   Data Move: *_temp_3859 = _temp_3860  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r14+-84],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2699,r13		! source line 2699
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3866 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-64]
!   Data Move: _temp_3865 = *_temp_3866  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if _temp_3865 > 0 then goto _Label_3864		(int)
	load	[r14+-68],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3864
!	jmp	_Label_3863
_Label_3863:
! THEN...
	mov	2700,r13		! source line 2700
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2700,r13		! source line 2700
	mov	"\0\0SE",r10
!   _temp_3867 = &openFileFreeList
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
	mov	2701,r13		! source line 2701
	mov	"\0\0SE",r10
!   _temp_3868 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   _temp_3869 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_3868  sizeInBytes=4
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
	mov	2702,r13		! source line 2702
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3870 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3873 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-36]
!   Data Move: _temp_3872 = *_temp_3873  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   _temp_3871 = _temp_3872 - 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
!   Data Move: *_temp_3870 = _temp_3871  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+-48],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2703,r13		! source line 2703
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3877 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: _temp_3876 = *_temp_3877  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_3876 > 0 then goto _Label_3875		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3875
!	jmp	_Label_3874
_Label_3874:
! THEN...
	mov	2704,r13		! source line 2704
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2704,r13		! source line 2704
	mov	"\0\0SE",r10
!   _temp_3878 = &fcbFreeList
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
	mov	2705,r13		! source line 2705
	mov	"\0\0SE",r10
!   _temp_3879 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_3880 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_3879  sizeInBytes=4
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
_Label_3875:
! END IF...
_Label_3864:
! SEND STATEMENT...
	mov	2708,r13		! source line 2708
	mov	"\0\0SE",r10
!   _temp_3881 = &fileManagerLock
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
	mov	2708,r13		! source line 2708
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
	.word	_Label_3882
	.word	8		! total size of parameters
	.word	104		! frame size = 104
	.word	_Label_3883
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3884
	.word	12
	.word	4
	.word	_Label_3885
	.word	-12
	.word	4
	.word	_Label_3886
	.word	-16
	.word	4
	.word	_Label_3887
	.word	-20
	.word	4
	.word	_Label_3888
	.word	-24
	.word	4
	.word	_Label_3889
	.word	-28
	.word	4
	.word	_Label_3890
	.word	-32
	.word	4
	.word	_Label_3891
	.word	-36
	.word	4
	.word	_Label_3892
	.word	-40
	.word	4
	.word	_Label_3893
	.word	-44
	.word	4
	.word	_Label_3894
	.word	-48
	.word	4
	.word	_Label_3895
	.word	-52
	.word	4
	.word	_Label_3896
	.word	-56
	.word	4
	.word	_Label_3897
	.word	-60
	.word	4
	.word	_Label_3898
	.word	-64
	.word	4
	.word	_Label_3899
	.word	-68
	.word	4
	.word	_Label_3900
	.word	-72
	.word	4
	.word	_Label_3901
	.word	-76
	.word	4
	.word	_Label_3902
	.word	-80
	.word	4
	.word	_Label_3903
	.word	-84
	.word	4
	.word	_Label_3904
	.word	-88
	.word	4
	.word	_Label_3905
	.word	-92
	.word	4
	.word	_Label_3906
	.word	-96
	.word	4
	.word	_Label_3907
	.word	-100
	.word	4
	.word	_Label_3908
	.word	-104
	.word	4
	.word	0
_Label_3882:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Close\0"
	.align
_Label_3883:
	.ascii	"Pself\0"
	.align
_Label_3884:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3885:
	.byte	'?'
	.ascii	"_temp_3881\0"
	.align
_Label_3886:
	.byte	'?'
	.ascii	"_temp_3880\0"
	.align
_Label_3887:
	.byte	'?'
	.ascii	"_temp_3879\0"
	.align
_Label_3888:
	.byte	'?'
	.ascii	"_temp_3878\0"
	.align
_Label_3889:
	.byte	'?'
	.ascii	"_temp_3877\0"
	.align
_Label_3890:
	.byte	'?'
	.ascii	"_temp_3876\0"
	.align
_Label_3891:
	.byte	'?'
	.ascii	"_temp_3873\0"
	.align
_Label_3892:
	.byte	'?'
	.ascii	"_temp_3872\0"
	.align
_Label_3893:
	.byte	'?'
	.ascii	"_temp_3871\0"
	.align
_Label_3894:
	.byte	'?'
	.ascii	"_temp_3870\0"
	.align
_Label_3895:
	.byte	'?'
	.ascii	"_temp_3869\0"
	.align
_Label_3896:
	.byte	'?'
	.ascii	"_temp_3868\0"
	.align
_Label_3897:
	.byte	'?'
	.ascii	"_temp_3867\0"
	.align
_Label_3898:
	.byte	'?'
	.ascii	"_temp_3866\0"
	.align
_Label_3899:
	.byte	'?'
	.ascii	"_temp_3865\0"
	.align
_Label_3900:
	.byte	'?'
	.ascii	"_temp_3862\0"
	.align
_Label_3901:
	.byte	'?'
	.ascii	"_temp_3861\0"
	.align
_Label_3902:
	.byte	'?'
	.ascii	"_temp_3860\0"
	.align
_Label_3903:
	.byte	'?'
	.ascii	"_temp_3859\0"
	.align
_Label_3904:
	.byte	'?'
	.ascii	"_temp_3858\0"
	.align
_Label_3905:
	.byte	'?'
	.ascii	"_temp_3857\0"
	.align
_Label_3906:
	.byte	'?'
	.ascii	"_temp_3856\0"
	.align
_Label_3907:
	.byte	'?'
	.ascii	"_temp_3855\0"
	.align
_Label_3908:
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
_Label_4501:
	push	r0
	sub	r1,1,r1
	bne	_Label_4501
	mov	2713,r13		! source line 2713
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2718,r13		! source line 2718
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _Label_3909
	load	[r14+12],r1
	cmp	r1,r0
	be	_Label_3909
	jmp	_Label_3910
_Label_3909:
! THEN...
	mov	2719,r13		! source line 2719
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3911 = _StringConst_157
	set	_StringConst_157,r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_3911  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	2719,r13		! source line 2719
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_3910:
! IF STATEMENT...
	mov	2721,r13		! source line 2721
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3915 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-104]
!   Data Move: _temp_3914 = *_temp_3915  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_3914) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3916 = _temp_3914 + 36
	load	[r14+-108],r1
	add	r1,36,r1
	store	r1,[r14+-100]
!   if boolIsZero (_temp_3916 ) then goto _Label_3913		(int)
	load	[r14+-100],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_3913
!	jmp	_Label_3912
_Label_3912:
! THEN...
	mov	2722,r13		! source line 2722
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	2722,r13		! source line 2722
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3921 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_3920 = *_temp_3921  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_3920) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3922 = _temp_3920 + 32
	load	[r14+-92],r1
	add	r1,32,r1
	store	r1,[r14+-84]
!   Data Move: _temp_3919 = *_temp_3922  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_3919 >= 0 then goto _Label_3918		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3918
!	jmp	_Label_3917
_Label_3917:
! THEN...
	mov	2723,r13		! source line 2723
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3923 = _StringConst_158
	set	_StringConst_158,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_3923  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2723,r13		! source line 2723
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3918:
! ASSIGNMENT STATEMENT...
	mov	2725,r13		! source line 2725
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3925 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-72]
!   Data Move: _temp_3924 = *_temp_3925  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_3924) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3926 = _temp_3924 + 36
	load	[r14+-76],r1
	add	r1,36,r1
	store	r1,[r14+-68]
!   Data Move: *_temp_3926 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-68],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	2726,r13		! source line 2726
	mov	"\0\0SE",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3930 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_3929 = *_temp_3930  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_3929) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3931 = _temp_3929 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   Data Move: _temp_3928 = *_temp_3931  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3934 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: _temp_3933 = *_temp_3934  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_3933) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3935 = _temp_3933 + 20
	load	[r14+-40],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: _temp_3932 = *_temp_3935  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_3927 = _temp_3928 + _temp_3932		(int)
	load	[r14+-60],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3938 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   Data Move: _temp_3937 = *_temp_3938  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_3937) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3939 = _temp_3937 + 28
	load	[r14+-24],r1
	add	r1,28,r1
	store	r1,[r14+-16]
!   Data Move: _temp_3936 = *_temp_3939  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   _temp_3940 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_3927  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_3936  sizeInBytes=4
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
_Label_3913:
! RETURN STATEMENT...
	mov	2721,r13		! source line 2721
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
	.word	_Label_3941
	.word	8		! total size of parameters
	.word	120		! frame size = 120
	.word	_Label_3942
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3943
	.word	12
	.word	4
	.word	_Label_3944
	.word	-12
	.word	4
	.word	_Label_3945
	.word	-16
	.word	4
	.word	_Label_3946
	.word	-20
	.word	4
	.word	_Label_3947
	.word	-24
	.word	4
	.word	_Label_3948
	.word	-28
	.word	4
	.word	_Label_3949
	.word	-32
	.word	4
	.word	_Label_3950
	.word	-36
	.word	4
	.word	_Label_3951
	.word	-40
	.word	4
	.word	_Label_3952
	.word	-44
	.word	4
	.word	_Label_3953
	.word	-48
	.word	4
	.word	_Label_3954
	.word	-52
	.word	4
	.word	_Label_3955
	.word	-56
	.word	4
	.word	_Label_3956
	.word	-60
	.word	4
	.word	_Label_3957
	.word	-64
	.word	4
	.word	_Label_3958
	.word	-68
	.word	4
	.word	_Label_3959
	.word	-72
	.word	4
	.word	_Label_3960
	.word	-76
	.word	4
	.word	_Label_3961
	.word	-80
	.word	4
	.word	_Label_3962
	.word	-84
	.word	4
	.word	_Label_3963
	.word	-88
	.word	4
	.word	_Label_3964
	.word	-92
	.word	4
	.word	_Label_3965
	.word	-96
	.word	4
	.word	_Label_3966
	.word	-100
	.word	4
	.word	_Label_3967
	.word	-104
	.word	4
	.word	_Label_3968
	.word	-108
	.word	4
	.word	_Label_3969
	.word	-112
	.word	4
	.word	0
_Label_3941:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Flush\0"
	.align
_Label_3942:
	.ascii	"Pself\0"
	.align
_Label_3943:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3944:
	.byte	'?'
	.ascii	"_temp_3940\0"
	.align
_Label_3945:
	.byte	'?'
	.ascii	"_temp_3939\0"
	.align
_Label_3946:
	.byte	'?'
	.ascii	"_temp_3938\0"
	.align
_Label_3947:
	.byte	'?'
	.ascii	"_temp_3937\0"
	.align
_Label_3948:
	.byte	'?'
	.ascii	"_temp_3936\0"
	.align
_Label_3949:
	.byte	'?'
	.ascii	"_temp_3935\0"
	.align
_Label_3950:
	.byte	'?'
	.ascii	"_temp_3934\0"
	.align
_Label_3951:
	.byte	'?'
	.ascii	"_temp_3933\0"
	.align
_Label_3952:
	.byte	'?'
	.ascii	"_temp_3932\0"
	.align
_Label_3953:
	.byte	'?'
	.ascii	"_temp_3931\0"
	.align
_Label_3954:
	.byte	'?'
	.ascii	"_temp_3930\0"
	.align
_Label_3955:
	.byte	'?'
	.ascii	"_temp_3929\0"
	.align
_Label_3956:
	.byte	'?'
	.ascii	"_temp_3928\0"
	.align
_Label_3957:
	.byte	'?'
	.ascii	"_temp_3927\0"
	.align
_Label_3958:
	.byte	'?'
	.ascii	"_temp_3926\0"
	.align
_Label_3959:
	.byte	'?'
	.ascii	"_temp_3925\0"
	.align
_Label_3960:
	.byte	'?'
	.ascii	"_temp_3924\0"
	.align
_Label_3961:
	.byte	'?'
	.ascii	"_temp_3923\0"
	.align
_Label_3962:
	.byte	'?'
	.ascii	"_temp_3922\0"
	.align
_Label_3963:
	.byte	'?'
	.ascii	"_temp_3921\0"
	.align
_Label_3964:
	.byte	'?'
	.ascii	"_temp_3920\0"
	.align
_Label_3965:
	.byte	'?'
	.ascii	"_temp_3919\0"
	.align
_Label_3966:
	.byte	'?'
	.ascii	"_temp_3916\0"
	.align
_Label_3967:
	.byte	'?'
	.ascii	"_temp_3915\0"
	.align
_Label_3968:
	.byte	'?'
	.ascii	"_temp_3914\0"
	.align
_Label_3969:
	.byte	'?'
	.ascii	"_temp_3911\0"
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
_Label_4502:
	push	r0
	sub	r1,1,r1
	bne	_Label_4502
	mov	2735,r13		! source line 2735
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2750,r13		! source line 2750
	mov	"\0\0SE",r10
!   _temp_3970 = &fileManagerLock
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
	mov	2751,r13		! source line 2751
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_3976		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3976
!   _temp_3975 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_3977
_Label_3976:
!   _temp_3975 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_3977:
!   if _temp_3975 then goto _Label_3974 else goto _Label_3971
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3971
	jmp	_Label_3974
_Label_3974:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3980 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-100]
!   Data Move: _temp_3979 = *_temp_3980  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_3979 == 0 then goto _Label_3981		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3981
!   _temp_3978 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_3982
_Label_3981:
!   _temp_3978 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_3982:
!   if _temp_3978 then goto _Label_3973 else goto _Label_3971
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3971
	jmp	_Label_3973
_Label_3973:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3985 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_3984 = *_temp_3985  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_3984) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3986 = _temp_3984 + 20
	load	[r14+-92],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: _temp_3983 = *_temp_3986  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_3983 >= 0 then goto _Label_3972		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3972
!	jmp	_Label_3971
_Label_3971:
! THEN...
	mov	2752,r13		! source line 2752
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3987 = _StringConst_159
	set	_StringConst_159,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_3987  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2752,r13		! source line 2752
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3972:
! ASSIGNMENT STATEMENT...
	mov	2754,r13		! source line 2754
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3988 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-76]
!   Data Move: fcb = *_temp_3988  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-128]
! WHILE STATEMENT...
	mov	2755,r13		! source line 2755
	mov	"\0\0WH",r10
_Label_3989:
!   if numBytes <= 0 then goto _Label_3991		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3991
!	jmp	_Label_3990
_Label_3990:
	mov	2755,r13		! source line 2755
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2764,r13		! source line 2764
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
	mov	2765,r13		! source line 2765
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
	mov	2769,r13		! source line 2769
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3995 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-68]
!   Data Move: _temp_3994 = *_temp_3995  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if _temp_3994 == sector then goto _Label_3993		(int)
	load	[r14+-72],r1
	load	[r14+-112],r2
	cmp	r1,r2
	be	_Label_3993
!	jmp	_Label_3992
_Label_3992:
! THEN...
	mov	2770,r13		! source line 2770
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2770,r13		! source line 2770
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_3996) then goto _runtimeErrorNullPointer
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
	mov	2772,r13		! source line 2772
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3999 = fcb + 20
	load	[r14+-128],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_3998 = *_temp_3999  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   _temp_3997 = sector + _temp_3998		(int)
	load	[r14+-112],r1
	load	[r14+-56],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4001 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-44]
!   Data Move: _temp_4000 = *_temp_4001  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_4002 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_3997  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_4000  sizeInBytes=4
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
	mov	2775,r13		! source line 2775
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4003 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_4003 = sector  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2776,r13		! source line 2776
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4004 = fcb + 36
	load	[r14+-128],r1
	add	r1,36,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_4004 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-32],r2
	storeb	r1,[r2]
! END IF...
_Label_3993:
! ASSIGNMENT STATEMENT...
	mov	2778,r13		! source line 2778
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4006 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-24]
!   Data Move: _temp_4005 = *_temp_4006  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   posInBuffer = _temp_4005 + offset		(int)
	load	[r14+-28],r1
	load	[r14+-116],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
! ASSIGNMENT STATEMENT...
	mov	2779,r13		! source line 2779
	mov	"\0\0AS",r10
!   _temp_4007 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-116],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_4007  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Call the function
	mov	2779,r13		! source line 2779
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
	mov	2783,r13		! source line 2783
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2784,r13		! source line 2784
	mov	"\0\0AS",r10
!   targetAddr = targetAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2785,r13		! source line 2785
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2786,r13		! source line 2786
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_3989
_Label_3991:
! SEND STATEMENT...
	mov	2793,r13		! source line 2793
	mov	"\0\0SE",r10
!   _temp_4008 = &fileManagerLock
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
	mov	2794,r13		! source line 2794
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
	.word	_Label_4009
	.word	20		! total size of parameters
	.word	136		! frame size = 136
	.word	_Label_4010
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_4011
	.word	12
	.word	4
	.word	_Label_4012
	.word	16
	.word	4
	.word	_Label_4013
	.word	20
	.word	4
	.word	_Label_4014
	.word	24
	.word	4
	.word	_Label_4015
	.word	-16
	.word	4
	.word	_Label_4016
	.word	-20
	.word	4
	.word	_Label_4017
	.word	-24
	.word	4
	.word	_Label_4018
	.word	-28
	.word	4
	.word	_Label_4019
	.word	-32
	.word	4
	.word	_Label_4020
	.word	-36
	.word	4
	.word	_Label_4021
	.word	-40
	.word	4
	.word	_Label_4022
	.word	-44
	.word	4
	.word	_Label_4023
	.word	-48
	.word	4
	.word	_Label_4024
	.word	-52
	.word	4
	.word	_Label_4025
	.word	-56
	.word	4
	.word	_Label_4026
	.word	-60
	.word	4
	.word	_Label_4027
	.word	-64
	.word	4
	.word	_Label_4028
	.word	-68
	.word	4
	.word	_Label_4029
	.word	-72
	.word	4
	.word	_Label_4030
	.word	-76
	.word	4
	.word	_Label_4031
	.word	-80
	.word	4
	.word	_Label_4032
	.word	-84
	.word	4
	.word	_Label_4033
	.word	-88
	.word	4
	.word	_Label_4034
	.word	-92
	.word	4
	.word	_Label_4035
	.word	-96
	.word	4
	.word	_Label_4036
	.word	-100
	.word	4
	.word	_Label_4037
	.word	-104
	.word	4
	.word	_Label_4038
	.word	-9
	.word	1
	.word	_Label_4039
	.word	-10
	.word	1
	.word	_Label_4040
	.word	-108
	.word	4
	.word	_Label_4041
	.word	-112
	.word	4
	.word	_Label_4042
	.word	-116
	.word	4
	.word	_Label_4043
	.word	-120
	.word	4
	.word	_Label_4044
	.word	-124
	.word	4
	.word	_Label_4045
	.word	-128
	.word	4
	.word	0
_Label_4009:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchRead\0"
	.align
_Label_4010:
	.ascii	"Pself\0"
	.align
_Label_4011:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_4012:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_4013:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_4014:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_4015:
	.byte	'?'
	.ascii	"_temp_4008\0"
	.align
_Label_4016:
	.byte	'?'
	.ascii	"_temp_4007\0"
	.align
_Label_4017:
	.byte	'?'
	.ascii	"_temp_4006\0"
	.align
_Label_4018:
	.byte	'?'
	.ascii	"_temp_4005\0"
	.align
_Label_4019:
	.byte	'?'
	.ascii	"_temp_4004\0"
	.align
_Label_4020:
	.byte	'?'
	.ascii	"_temp_4003\0"
	.align
_Label_4021:
	.byte	'?'
	.ascii	"_temp_4002\0"
	.align
_Label_4022:
	.byte	'?'
	.ascii	"_temp_4001\0"
	.align
_Label_4023:
	.byte	'?'
	.ascii	"_temp_4000\0"
	.align
_Label_4024:
	.byte	'?'
	.ascii	"_temp_3999\0"
	.align
_Label_4025:
	.byte	'?'
	.ascii	"_temp_3998\0"
	.align
_Label_4026:
	.byte	'?'
	.ascii	"_temp_3997\0"
	.align
_Label_4027:
	.byte	'?'
	.ascii	"_temp_3996\0"
	.align
_Label_4028:
	.byte	'?'
	.ascii	"_temp_3995\0"
	.align
_Label_4029:
	.byte	'?'
	.ascii	"_temp_3994\0"
	.align
_Label_4030:
	.byte	'?'
	.ascii	"_temp_3988\0"
	.align
_Label_4031:
	.byte	'?'
	.ascii	"_temp_3987\0"
	.align
_Label_4032:
	.byte	'?'
	.ascii	"_temp_3986\0"
	.align
_Label_4033:
	.byte	'?'
	.ascii	"_temp_3985\0"
	.align
_Label_4034:
	.byte	'?'
	.ascii	"_temp_3984\0"
	.align
_Label_4035:
	.byte	'?'
	.ascii	"_temp_3983\0"
	.align
_Label_4036:
	.byte	'?'
	.ascii	"_temp_3980\0"
	.align
_Label_4037:
	.byte	'?'
	.ascii	"_temp_3979\0"
	.align
_Label_4038:
	.byte	'C'
	.ascii	"_temp_3978\0"
	.align
_Label_4039:
	.byte	'C'
	.ascii	"_temp_3975\0"
	.align
_Label_4040:
	.byte	'?'
	.ascii	"_temp_3970\0"
	.align
_Label_4041:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_4042:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_4043:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_4044:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_4045:
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
_Label_4503:
	push	r0
	sub	r1,1,r1
	bne	_Label_4503
	mov	2799,r13		! source line 2799
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2815,r13		! source line 2815
	mov	"\0\0SE",r10
!   _temp_4046 = &fileManagerLock
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
	mov	2816,r13		! source line 2816
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_4052		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_4052
!   _temp_4051 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_4053
_Label_4052:
!   _temp_4051 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_4053:
!   if _temp_4051 then goto _Label_4050 else goto _Label_4047
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_4047
	jmp	_Label_4050
_Label_4050:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4056 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-108]
!   Data Move: _temp_4055 = *_temp_4056  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if _temp_4055 == 0 then goto _Label_4057		(int)
	load	[r14+-112],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_4057
!   _temp_4054 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_4058
_Label_4057:
!   _temp_4054 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_4058:
!   if _temp_4054 then goto _Label_4049 else goto _Label_4047
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_4047
	jmp	_Label_4049
_Label_4049:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4061 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-96]
!   Data Move: _temp_4060 = *_temp_4061  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_4060) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4062 = _temp_4060 + 20
	load	[r14+-100],r1
	add	r1,20,r1
	store	r1,[r14+-92]
!   Data Move: _temp_4059 = *_temp_4062  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_4059 >= 0 then goto _Label_4048		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_4048
!	jmp	_Label_4047
_Label_4047:
! THEN...
	mov	2817,r13		! source line 2817
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4063 = _StringConst_160
	set	_StringConst_160,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_4063  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2817,r13		! source line 2817
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_4048:
! ASSIGNMENT STATEMENT...
	mov	2819,r13		! source line 2819
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4064 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: fcb = *_temp_4064  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-136]
! WHILE STATEMENT...
	mov	2820,r13		! source line 2820
	mov	"\0\0WH",r10
_Label_4065:
!   if numBytes <= 0 then goto _Label_4067		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_4067
!	jmp	_Label_4066
_Label_4066:
	mov	2820,r13		! source line 2820
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2829,r13		! source line 2829
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
	mov	2830,r13		! source line 2830
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
	mov	2834,r13		! source line 2834
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4071 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-76]
!   Data Move: _temp_4070 = *_temp_4071  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_4070 == sector then goto _Label_4069		(int)
	load	[r14+-80],r1
	load	[r14+-120],r2
	cmp	r1,r2
	be	_Label_4069
!	jmp	_Label_4068
_Label_4068:
! THEN...
	mov	2836,r13		! source line 2836
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2836,r13		! source line 2836
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_4072) then goto _runtimeErrorNullPointer
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
_Label_4069:
! ASSIGNMENT STATEMENT...
	mov	2838,r13		! source line 2838
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4074 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-64]
!   Data Move: _temp_4073 = *_temp_4074  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   posInBuffer = _temp_4073 + offset		(int)
	load	[r14+-68],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
! ASSIGNMENT STATEMENT...
	mov	2839,r13		! source line 2839
	mov	"\0\0AS",r10
!   _temp_4075 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_4075  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Call the function
	mov	2839,r13		! source line 2839
	mov	"\0\0CA",r10
	call	_P_System_Min
!   Retrieve Result: targetName=bytesToMove  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-132]
! IF STATEMENT...
	mov	2840,r13		! source line 2840
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4079 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-52]
!   Data Move: _temp_4078 = *_temp_4079  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if _temp_4078 != sector then goto _Label_4077		(int)
	load	[r14+-56],r1
	load	[r14+-120],r2
	cmp	r1,r2
	bne	_Label_4077
!	jmp	_Label_4076
_Label_4076:
	jmp	_Label_4080
_Label_4077:
! ELSE...
	mov	2842,r13		! source line 2842
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	2842,r13		! source line 2842
	mov	"\0\0IF",r10
!   if intIsZero (offset) then goto _Label_4083
	load	[r14+-124],r1
	cmp	r1,r0
	be	_Label_4083
	jmp	_Label_4082
_Label_4083:
!   if bytesToMove != 8192 then goto _Label_4082		(int)
	load	[r14+-132],r1
	mov	8192,r2
	cmp	r1,r2
	bne	_Label_4082
!	jmp	_Label_4081
_Label_4081:
	jmp	_Label_4084
_Label_4082:
! ELSE...
	mov	2846,r13		! source line 2846
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	2846,r13		! source line 2846
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4087 = fcb + 20
	load	[r14+-136],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   Data Move: _temp_4086 = *_temp_4087  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_4085 = sector + _temp_4086		(int)
	load	[r14+-120],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4089 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-32]
!   Data Move: _temp_4088 = *_temp_4089  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   _temp_4090 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_4085  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_4088  sizeInBytes=4
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
_Label_4084:
! END IF...
_Label_4080:
! ASSIGNMENT STATEMENT...
	mov	2850,r13		! source line 2850
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4091 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_4091 = sector  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2851,r13		! source line 2851
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4092 = fcb + 36
	load	[r14+-136],r1
	add	r1,36,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_4092 = 1  (sizeInBytes=1)
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
	mov	2855,r13		! source line 2855
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2856,r13		! source line 2856
	mov	"\0\0AS",r10
!   sourceAddr = sourceAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2857,r13		! source line 2857
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2858,r13		! source line 2858
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-132],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_4065
_Label_4067:
! SEND STATEMENT...
	mov	2865,r13		! source line 2865
	mov	"\0\0SE",r10
!   _temp_4093 = &fileManagerLock
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
	mov	2867,r13		! source line 2867
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
	.word	_Label_4094
	.word	20		! total size of parameters
	.word	144		! frame size = 144
	.word	_Label_4095
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_4096
	.word	12
	.word	4
	.word	_Label_4097
	.word	16
	.word	4
	.word	_Label_4098
	.word	20
	.word	4
	.word	_Label_4099
	.word	24
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
	.word	_Label_4105
	.word	-36
	.word	4
	.word	_Label_4106
	.word	-40
	.word	4
	.word	_Label_4107
	.word	-44
	.word	4
	.word	_Label_4108
	.word	-48
	.word	4
	.word	_Label_4109
	.word	-52
	.word	4
	.word	_Label_4110
	.word	-56
	.word	4
	.word	_Label_4111
	.word	-60
	.word	4
	.word	_Label_4112
	.word	-64
	.word	4
	.word	_Label_4113
	.word	-68
	.word	4
	.word	_Label_4114
	.word	-72
	.word	4
	.word	_Label_4115
	.word	-76
	.word	4
	.word	_Label_4116
	.word	-80
	.word	4
	.word	_Label_4117
	.word	-84
	.word	4
	.word	_Label_4118
	.word	-88
	.word	4
	.word	_Label_4119
	.word	-92
	.word	4
	.word	_Label_4120
	.word	-96
	.word	4
	.word	_Label_4121
	.word	-100
	.word	4
	.word	_Label_4122
	.word	-104
	.word	4
	.word	_Label_4123
	.word	-108
	.word	4
	.word	_Label_4124
	.word	-112
	.word	4
	.word	_Label_4125
	.word	-9
	.word	1
	.word	_Label_4126
	.word	-10
	.word	1
	.word	_Label_4127
	.word	-116
	.word	4
	.word	_Label_4128
	.word	-120
	.word	4
	.word	_Label_4129
	.word	-124
	.word	4
	.word	_Label_4130
	.word	-128
	.word	4
	.word	_Label_4131
	.word	-132
	.word	4
	.word	_Label_4132
	.word	-136
	.word	4
	.word	0
_Label_4094:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchWrite\0"
	.align
_Label_4095:
	.ascii	"Pself\0"
	.align
_Label_4096:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_4097:
	.byte	'I'
	.ascii	"sourceAddr\0"
	.align
_Label_4098:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_4099:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_4100:
	.byte	'?'
	.ascii	"_temp_4093\0"
	.align
_Label_4101:
	.byte	'?'
	.ascii	"_temp_4092\0"
	.align
_Label_4102:
	.byte	'?'
	.ascii	"_temp_4091\0"
	.align
_Label_4103:
	.byte	'?'
	.ascii	"_temp_4090\0"
	.align
_Label_4104:
	.byte	'?'
	.ascii	"_temp_4089\0"
	.align
_Label_4105:
	.byte	'?'
	.ascii	"_temp_4088\0"
	.align
_Label_4106:
	.byte	'?'
	.ascii	"_temp_4087\0"
	.align
_Label_4107:
	.byte	'?'
	.ascii	"_temp_4086\0"
	.align
_Label_4108:
	.byte	'?'
	.ascii	"_temp_4085\0"
	.align
_Label_4109:
	.byte	'?'
	.ascii	"_temp_4079\0"
	.align
_Label_4110:
	.byte	'?'
	.ascii	"_temp_4078\0"
	.align
_Label_4111:
	.byte	'?'
	.ascii	"_temp_4075\0"
	.align
_Label_4112:
	.byte	'?'
	.ascii	"_temp_4074\0"
	.align
_Label_4113:
	.byte	'?'
	.ascii	"_temp_4073\0"
	.align
_Label_4114:
	.byte	'?'
	.ascii	"_temp_4072\0"
	.align
_Label_4115:
	.byte	'?'
	.ascii	"_temp_4071\0"
	.align
_Label_4116:
	.byte	'?'
	.ascii	"_temp_4070\0"
	.align
_Label_4117:
	.byte	'?'
	.ascii	"_temp_4064\0"
	.align
_Label_4118:
	.byte	'?'
	.ascii	"_temp_4063\0"
	.align
_Label_4119:
	.byte	'?'
	.ascii	"_temp_4062\0"
	.align
_Label_4120:
	.byte	'?'
	.ascii	"_temp_4061\0"
	.align
_Label_4121:
	.byte	'?'
	.ascii	"_temp_4060\0"
	.align
_Label_4122:
	.byte	'?'
	.ascii	"_temp_4059\0"
	.align
_Label_4123:
	.byte	'?'
	.ascii	"_temp_4056\0"
	.align
_Label_4124:
	.byte	'?'
	.ascii	"_temp_4055\0"
	.align
_Label_4125:
	.byte	'C'
	.ascii	"_temp_4054\0"
	.align
_Label_4126:
	.byte	'C'
	.ascii	"_temp_4051\0"
	.align
_Label_4127:
	.byte	'?'
	.ascii	"_temp_4046\0"
	.align
_Label_4128:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_4129:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_4130:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_4131:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_4132:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  CLASS FileControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileControlBlock:
	.word	_Label_4133
	jmp	_Method_P_Kernel_FileControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_FileControlBlock_2	! 8:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_4133:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_4134
	.word	_sourceFileName
	.word	391		! line number
	.word	40		! size of instances, in bytes
	.word	_P_Kernel_FileControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_4134:
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
_Label_4504:
	push	r0
	sub	r1,1,r1
	bne	_Label_4504
	mov	2903,r13		! source line 2903
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2904,r13		! source line 2904
	mov	"\0\0AS",r10
!   numberOfUsers = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2905,r13		! source line 2905
	mov	"\0\0AS",r10
	mov	2905,r13		! source line 2905
	mov	"\0\0SE",r10
!   _temp_4135 = &_P_Kernel_frameManager
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
	mov	2906,r13		! source line 2906
	mov	"\0\0AS",r10
!   relativeSectorInBuffer = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! ASSIGNMENT STATEMENT...
	mov	2907,r13		! source line 2907
	mov	"\0\0AS",r10
!   bufferIsDirty = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+36]
! ASSIGNMENT STATEMENT...
	mov	2908,r13		! source line 2908
	mov	"\0\0AS",r10
!   startingSectorOfFile = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! RETURN STATEMENT...
	mov	2908,r13		! source line 2908
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
	.word	_Label_4136
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_4137
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_4138
	.word	-12
	.word	4
	.word	0
_Label_4136:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_4137:
	.ascii	"Pself\0"
	.align
_Label_4138:
	.byte	'?'
	.ascii	"_temp_4135\0"
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
_Label_4505:
	push	r0
	sub	r1,1,r1
	bne	_Label_4505
	mov	2913,r13		! source line 2913
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_4139 = _StringConst_161
	set	_StringConst_161,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_4139  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2914,r13		! source line 2914
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fcbID  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2915,r13		! source line 2915
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_4140 = _StringConst_162
	set	_StringConst_162,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_4140  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2916,r13		! source line 2916
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=numberOfUsers  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2917,r13		! source line 2917
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_4141 = _StringConst_163
	set	_StringConst_163,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_4141  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2918,r13		! source line 2918
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=startingSectorOfFile  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2919,r13		! source line 2919
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_4142 = _StringConst_164
	set	_StringConst_164,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_4142  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2920,r13		! source line 2920
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeOfFileInBytes  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2921,r13		! source line 2921
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_4143 = _StringConst_165
	set	_StringConst_165,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_4143  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2922,r13		! source line 2922
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=bufferPtr  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2923,r13		! source line 2923
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_4144 = _StringConst_166
	set	_StringConst_166,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_4144  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2924,r13		! source line 2924
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=relativeSectorInBuffer  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2925,r13		! source line 2925
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2926,r13		! source line 2926
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2926,r13		! source line 2926
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
	.word	_Label_4145
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_4146
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_4147
	.word	-12
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
	.word	0
_Label_4145:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_4146:
	.ascii	"Pself\0"
	.align
_Label_4147:
	.byte	'?'
	.ascii	"_temp_4144\0"
	.align
_Label_4148:
	.byte	'?'
	.ascii	"_temp_4143\0"
	.align
_Label_4149:
	.byte	'?'
	.ascii	"_temp_4142\0"
	.align
_Label_4150:
	.byte	'?'
	.ascii	"_temp_4141\0"
	.align
_Label_4151:
	.byte	'?'
	.ascii	"_temp_4140\0"
	.align
_Label_4152:
	.byte	'?'
	.ascii	"_temp_4139\0"
	.align
! 
! ===============  CLASS OpenFile  ===============
! 
! Dispatch Table:
! 
_P_Kernel_OpenFile:
	.word	_Label_4153
	jmp	_Method_P_Kernel_OpenFile_1	! 4:	Print
	jmp	_Method_P_Kernel_OpenFile_2	! 8:	ReadBytes
	jmp	_Method_P_Kernel_OpenFile_3	! 12:	ReadInt
	jmp	_Method_P_Kernel_OpenFile_4	! 16:	LoadExecutable
	.word	0
! 
! Class descriptor:
! 
_Label_4153:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_4154
	.word	_sourceFileName
	.word	408		! line number
	.word	28		! size of instances, in bytes
	.word	_P_Kernel_OpenFile
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_4154:
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
_Label_4506:
	push	r0
	sub	r1,1,r1
	bne	_Label_4506
	mov	3044,r13		! source line 3044
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_4155 = _StringConst_167
	set	_StringConst_167,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_4155  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	3045,r13		! source line 3045
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=currentPos  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	3046,r13		! source line 3046
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_4156 = _StringConst_168
	set	_StringConst_168,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_4156  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	3047,r13		! source line 3047
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	3048,r13		! source line 3048
	mov	"\0\0IF",r10
!   if fcb == 0 then goto _Label_4158		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_4158
!	jmp	_Label_4157
_Label_4157:
! THEN...
	mov	3049,r13		! source line 3049
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	3049,r13		! source line 3049
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
	jmp	_Label_4159
_Label_4158:
! ELSE...
	mov	3051,r13		! source line 3051
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_4160 = _StringConst_169
	set	_StringConst_169,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_4160  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	3051,r13		! source line 3051
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_4159:
! RETURN STATEMENT...
	mov	3048,r13		! source line 3048
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
	.word	_Label_4161
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_4162
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_4163
	.word	-12
	.word	4
	.word	_Label_4164
	.word	-16
	.word	4
	.word	_Label_4165
	.word	-20
	.word	4
	.word	0
_Label_4161:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_4162:
	.ascii	"Pself\0"
	.align
_Label_4163:
	.byte	'?'
	.ascii	"_temp_4160\0"
	.align
_Label_4164:
	.byte	'?'
	.ascii	"_temp_4156\0"
	.align
_Label_4165:
	.byte	'?'
	.ascii	"_temp_4155\0"
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
_Label_4507:
	push	r0
	sub	r1,1,r1
	bne	_Label_4507
	mov	3057,r13		! source line 3057
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	3067,r13		! source line 3067
	mov	"\0\0SE",r10
!   _temp_4166 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-36]
!   _temp_4167 = _temp_4166 + 4
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
	mov	3068,r13		! source line 3068
	mov	"\0\0AS",r10
!   pos = currentPos		(4 bytes)
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	3069,r13		! source line 3069
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
	mov	3070,r13		! source line 3070
	mov	"\0\0SE",r10
!   _temp_4168 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   _temp_4169 = _temp_4168 + 4
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
	mov	3071,r13		! source line 3071
	mov	"\0\0RE",r10
	mov	3071,r13		! source line 3071
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   _temp_4172 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_4171  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_4170  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   ReturnResult: _temp_4170  (sizeInBytes=1)
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
	.word	_Label_4173
	.word	12		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_4174
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_4175
	.word	12
	.word	4
	.word	_Label_4176
	.word	16
	.word	4
	.word	_Label_4177
	.word	-16
	.word	4
	.word	_Label_4178
	.word	-20
	.word	4
	.word	_Label_4179
	.word	-9
	.word	1
	.word	_Label_4180
	.word	-24
	.word	4
	.word	_Label_4181
	.word	-28
	.word	4
	.word	_Label_4182
	.word	-32
	.word	4
	.word	_Label_4183
	.word	-36
	.word	4
	.word	_Label_4184
	.word	-40
	.word	4
	.word	0
_Label_4173:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadBytes\0"
	.align
_Label_4174:
	.ascii	"Pself\0"
	.align
_Label_4175:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_4176:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_4177:
	.byte	'?'
	.ascii	"_temp_4172\0"
	.align
_Label_4178:
	.byte	'?'
	.ascii	"_temp_4171\0"
	.align
_Label_4179:
	.byte	'C'
	.ascii	"_temp_4170\0"
	.align
_Label_4180:
	.byte	'?'
	.ascii	"_temp_4169\0"
	.align
_Label_4181:
	.byte	'?'
	.ascii	"_temp_4168\0"
	.align
_Label_4182:
	.byte	'?'
	.ascii	"_temp_4167\0"
	.align
_Label_4183:
	.byte	'?'
	.ascii	"_temp_4166\0"
	.align
_Label_4184:
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
_Label_4508:
	push	r0
	sub	r1,1,r1
	bne	_Label_4508
	mov	3076,r13		! source line 3076
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	3081,r13		! source line 3081
	mov	"\0\0IF",r10
	mov	3081,r13		! source line 3081
	mov	"\0\0SE",r10
!   _temp_4188 = &i
	add	r14,-28,r1
	store	r1,[r14+-24]
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_4189) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_4188  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_4187  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_4187 then goto _Label_4186 else goto _Label_4185
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_4185
	jmp	_Label_4186
_Label_4185:
! THEN...
	mov	3082,r13		! source line 3082
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4190 = _StringConst_170
	set	_StringConst_170,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_4190  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	3082,r13		! source line 3082
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_4186:
! RETURN STATEMENT...
	mov	3084,r13		! source line 3084
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
	.word	_Label_4191
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_4192
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_4193
	.word	-16
	.word	4
	.word	_Label_4194
	.word	-20
	.word	4
	.word	_Label_4195
	.word	-24
	.word	4
	.word	_Label_4196
	.word	-9
	.word	1
	.word	_Label_4197
	.word	-28
	.word	4
	.word	0
_Label_4191:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadInt\0"
	.align
_Label_4192:
	.ascii	"Pself\0"
	.align
_Label_4193:
	.byte	'?'
	.ascii	"_temp_4190\0"
	.align
_Label_4194:
	.byte	'?'
	.ascii	"_temp_4189\0"
	.align
_Label_4195:
	.byte	'?'
	.ascii	"_temp_4188\0"
	.align
_Label_4196:
	.byte	'C'
	.ascii	"_temp_4187\0"
	.align
_Label_4197:
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
_Label_4509:
	push	r0
	sub	r1,1,r1
	bne	_Label_4509
	mov	3089,r13		! source line 3089
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	3115,r13		! source line 3115
	mov	"\0\0IF",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4201 = addrSpace + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-216]
!   Data Move: _temp_4200 = *_temp_4201  (sizeInBytes=4)
	load	[r14+-216],r1
	load	[r1],r1
	store	r1,[r14+-220]
!   if intIsZero (_temp_4200) then goto _Label_4199
	load	[r14+-220],r1
	cmp	r1,r0
	be	_Label_4199
!	jmp	_Label_4198
_Label_4198:
! THEN...
	mov	3116,r13		! source line 3116
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4202 = _StringConst_171
	set	_StringConst_171,r1
	store	r1,[r14+-212]
!   Prepare Argument: offset=8  value=_temp_4202  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	3116,r13		! source line 3116
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_4199:
! IF STATEMENT...
	mov	3120,r13		! source line 3120
	mov	"\0\0IF",r10
	mov	3120,r13		! source line 3120
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-204]
!   if intIsZero (_temp_4206) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_4205  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-208]
!   if _temp_4205 == 1112300152 then goto _Label_4204		(int)
	load	[r14+-208],r1
	set	1112300152,r2
	cmp	r1,r2
	be	_Label_4204
!	jmp	_Label_4203
_Label_4203:
! THEN...
	mov	3121,r13		! source line 3121
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4207 = _StringConst_172
	set	_StringConst_172,r1
	store	r1,[r14+-200]
!   Prepare Argument: offset=8  value=_temp_4207  sizeInBytes=4
	load	[r14+-200],r1
	store	r1,[r15+0]
!   Call the function
	mov	3121,r13		! source line 3121
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3122,r13		! source line 3122
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4204:
! ASSIGNMENT STATEMENT...
	mov	3126,r13		! source line 3126
	mov	"\0\0AS",r10
	mov	3126,r13		! source line 3126
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-196]
!   if intIsZero (_temp_4208) then goto _runtimeErrorNullPointer
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
	mov	3127,r13		! source line 3127
	mov	"\0\0AS",r10
	mov	3127,r13		! source line 3127
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-192]
!   if intIsZero (_temp_4209) then goto _runtimeErrorNullPointer
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
	mov	3128,r13		! source line 3128
	mov	"\0\0AS",r10
	mov	3128,r13		! source line 3128
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_4210) then goto _runtimeErrorNullPointer
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
	mov	3129,r13		! source line 3129
	mov	"\0\0AS",r10
	mov	3129,r13		! source line 3129
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-184]
!   if intIsZero (_temp_4211) then goto _runtimeErrorNullPointer
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
	mov	3130,r13		! source line 3130
	mov	"\0\0AS",r10
	mov	3130,r13		! source line 3130
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-180]
!   if intIsZero (_temp_4212) then goto _runtimeErrorNullPointer
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
	mov	3131,r13		! source line 3131
	mov	"\0\0AS",r10
	mov	3131,r13		! source line 3131
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-176]
!   if intIsZero (_temp_4213) then goto _runtimeErrorNullPointer
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
	mov	3134,r13		! source line 3134
	mov	"\0\0IF",r10
!   _temp_4216 = textSize rem 8192		(int)
	load	[r14+-232],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-172]
!   if intIsZero (_temp_4216) then goto _Label_4215
	load	[r14+-172],r1
	cmp	r1,r0
	be	_Label_4215
!	jmp	_Label_4214
_Label_4214:
! THEN...
	mov	3135,r13		! source line 3135
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4217 = _StringConst_173
	set	_StringConst_173,r1
	store	r1,[r14+-168]
!   Prepare Argument: offset=8  value=_temp_4217  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+0]
!   Call the function
	mov	3135,r13		! source line 3135
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3136,r13		! source line 3136
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4215:
! ASSIGNMENT STATEMENT...
	mov	3138,r13		! source line 3138
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
	mov	3142,r13		! source line 3142
	mov	"\0\0IF",r10
!   if intIsZero (textStart) then goto _Label_4219
	load	[r14+-244],r1
	cmp	r1,r0
	be	_Label_4219
!	jmp	_Label_4218
_Label_4218:
! THEN...
	mov	3143,r13		! source line 3143
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4220 = _StringConst_174
	set	_StringConst_174,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_4220  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	3143,r13		! source line 3143
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3144,r13		! source line 3144
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4219:
! IF STATEMENT...
	mov	3148,r13		! source line 3148
	mov	"\0\0IF",r10
!   _temp_4223 = dataSize rem 8192		(int)
	load	[r14+-236],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
!   if intIsZero (_temp_4223) then goto _Label_4222
	load	[r14+-160],r1
	cmp	r1,r0
	be	_Label_4222
!	jmp	_Label_4221
_Label_4221:
! THEN...
	mov	3149,r13		! source line 3149
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4224 = _StringConst_175
	set	_StringConst_175,r1
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_4224  sizeInBytes=4
	load	[r14+-156],r1
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
_Label_4222:
! IF STATEMENT...
	mov	3152,r13		! source line 3152
	mov	"\0\0IF",r10
!   _temp_4227 = textStart + textSize		(int)
	load	[r14+-244],r1
	load	[r14+-232],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   if dataStart == _temp_4227 then goto _Label_4226		(int)
	load	[r14+-248],r1
	load	[r14+-152],r2
	cmp	r1,r2
	be	_Label_4226
!	jmp	_Label_4225
_Label_4225:
! THEN...
	mov	3153,r13		! source line 3153
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4228 = _StringConst_176
	set	_StringConst_176,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_4228  sizeInBytes=4
	load	[r14+-148],r1
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
_Label_4226:
! ASSIGNMENT STATEMENT...
	mov	3156,r13		! source line 3156
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
	mov	3159,r13		! source line 3159
	mov	"\0\0IF",r10
!   _temp_4231 = bssSize rem 8192		(int)
	load	[r14+-240],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
!   if intIsZero (_temp_4231) then goto _Label_4230
	load	[r14+-144],r1
	cmp	r1,r0
	be	_Label_4230
!	jmp	_Label_4229
_Label_4229:
! THEN...
	mov	3160,r13		! source line 3160
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4232 = _StringConst_177
	set	_StringConst_177,r1
	store	r1,[r14+-140]
!   Prepare Argument: offset=8  value=_temp_4232  sizeInBytes=4
	load	[r14+-140],r1
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
_Label_4230:
! IF STATEMENT...
	mov	3163,r13		! source line 3163
	mov	"\0\0IF",r10
!   _temp_4235 = dataStart + dataSize		(int)
	load	[r14+-248],r1
	load	[r14+-236],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
!   if bssStart == _temp_4235 then goto _Label_4234		(int)
	load	[r14+-252],r1
	load	[r14+-136],r2
	cmp	r1,r2
	be	_Label_4234
!	jmp	_Label_4233
_Label_4233:
! THEN...
	mov	3164,r13		! source line 3164
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4236 = _StringConst_178
	set	_StringConst_178,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_4236  sizeInBytes=4
	load	[r14+-132],r1
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
_Label_4234:
! ASSIGNMENT STATEMENT...
	mov	3167,r13		! source line 3167
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
	mov	3170,r13		! source line 3170
	mov	"\0\0AS",r10
!   _temp_4239 = textSizeInPages + dataSizeInPages		(int)
	load	[r14+-260],r1
	load	[r14+-264],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
!   _temp_4238 = _temp_4239 + bssSizeInPages		(int)
	load	[r14+-120],r1
	load	[r14+-268],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
!   _temp_4237 = _temp_4238 + 1		(int)
	load	[r14+-124],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
!   i = _temp_4237 + 0		(int)
	load	[r14+-128],r1
	mov	0,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
! IF STATEMENT...
	mov	3185,r13		! source line 3185
	mov	"\0\0IF",r10
!   if i <= 20 then goto _Label_4241		(int)
	load	[r14+-256],r1
	mov	20,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_4241
!	jmp	_Label_4240
_Label_4240:
! THEN...
	mov	3186,r13		! source line 3186
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4242 = _StringConst_179
	set	_StringConst_179,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_4242  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	3186,r13		! source line 3186
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_4243 = _StringConst_180
	set	_StringConst_180,r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_4243  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+4]
!   Call the function
	mov	3187,r13		! source line 3187
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_4244 = _StringConst_181
	set	_StringConst_181,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_4244  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+4]
!   Call the function
	mov	3188,r13		! source line 3188
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
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
_Label_4241:
! SEND STATEMENT...
	mov	3191,r13		! source line 3191
	mov	"\0\0SE",r10
!   _temp_4245 = &_P_Kernel_frameManager
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
	mov	3197,r13		! source line 3197
	mov	"\0\0IF",r10
	mov	3197,r13		! source line 3197
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-96]
!   if intIsZero (_temp_4249) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_4248  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-100]
!   if _temp_4248 == 707406378 then goto _Label_4247		(int)
	load	[r14+-100],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_4247
!	jmp	_Label_4246
_Label_4246:
! THEN...
	mov	3198,r13		! source line 3198
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4250 = _StringConst_182
	set	_StringConst_182,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_4250  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	3198,r13		! source line 3198
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3199,r13		! source line 3199
	mov	"\0\0SE",r10
!   _temp_4251 = &_P_Kernel_frameManager
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
_Label_4247:
! ASSIGNMENT STATEMENT...
	mov	3204,r13		! source line 3204
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
	mov	3205,r13		! source line 3205
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_4256 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-84]
!   Calculate and save the FOR-LOOP ending value
!   _temp_4257 = textSizeInPages		(4 bytes)
	load	[r14+-260],r1
	store	r1,[r14+-80]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_4256  (sizeInBytes=4)
	load	[r14+-84],r1
	store	r1,[r14+-256]
_Label_4252:
!   Perform the FOR-LOOP termination test
!   if i > _temp_4257 then goto _Label_4255		
	load	[r14+-256],r1
	load	[r14+-80],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_4255
_Label_4253:
	mov	3205,r13		! source line 3205
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	3206,r13		! source line 3206
	mov	"\0\0AS",r10
	mov	3206,r13		! source line 3206
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
	mov	3209,r13		! source line 3209
	mov	"\0\0IF",r10
	mov	3209,r13		! source line 3209
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_4261) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_4260  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_4260 then goto _Label_4259 else goto _Label_4258
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_4258
	jmp	_Label_4259
_Label_4258:
! THEN...
	mov	3210,r13		! source line 3210
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4262 = _StringConst_183
	set	_StringConst_183,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_4262  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	3210,r13		! source line 3210
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3211,r13		! source line 3211
	mov	"\0\0SE",r10
!   _temp_4263 = &_P_Kernel_frameManager
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
	mov	3212,r13		! source line 3212
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4259:
! SEND STATEMENT...
	mov	3214,r13		! source line 3214
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
	mov	3215,r13		! source line 3215
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_4254:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_4252
! END FOR
_Label_4255:
! IF STATEMENT...
	mov	3219,r13		! source line 3219
	mov	"\0\0IF",r10
	mov	3219,r13		! source line 3219
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_4267) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_4266  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
!   if _temp_4266 == 707406378 then goto _Label_4265		(int)
	load	[r14+-64],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_4265
!	jmp	_Label_4264
_Label_4264:
! THEN...
	mov	3220,r13		! source line 3220
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4268 = _StringConst_184
	set	_StringConst_184,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_4268  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	3220,r13		! source line 3220
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3221,r13		! source line 3221
	mov	"\0\0SE",r10
!   _temp_4269 = &_P_Kernel_frameManager
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
_Label_4265:
! FOR STATEMENT...
	mov	3226,r13		! source line 3226
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_4274 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_4275 = dataSizeInPages		(4 bytes)
	load	[r14+-264],r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_4274  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-256]
_Label_4270:
!   Perform the FOR-LOOP termination test
!   if i > _temp_4275 then goto _Label_4273		
	load	[r14+-256],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_4273
_Label_4271:
	mov	3226,r13		! source line 3226
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	3227,r13		! source line 3227
	mov	"\0\0AS",r10
	mov	3227,r13		! source line 3227
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
	mov	3230,r13		! source line 3230
	mov	"\0\0IF",r10
	mov	3230,r13		! source line 3230
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_4279) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_4278  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_4278 then goto _Label_4277 else goto _Label_4276
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_4276
	jmp	_Label_4277
_Label_4276:
! THEN...
	mov	3231,r13		! source line 3231
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4280 = _StringConst_185
	set	_StringConst_185,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_4280  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	3231,r13		! source line 3231
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3232,r13		! source line 3232
	mov	"\0\0SE",r10
!   _temp_4281 = &_P_Kernel_frameManager
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
_Label_4277:
! ASSIGNMENT STATEMENT...
	mov	3235,r13		! source line 3235
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_4272:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_4270
! END FOR
_Label_4273:
! IF STATEMENT...
	mov	3239,r13		! source line 3239
	mov	"\0\0IF",r10
	mov	3239,r13		! source line 3239
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_4285) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_4284  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   if _temp_4284 == 707406378 then goto _Label_4283		(int)
	load	[r14+-28],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_4283
!	jmp	_Label_4282
_Label_4282:
! THEN...
	mov	3240,r13		! source line 3240
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4286 = _StringConst_186
	set	_StringConst_186,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_4286  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	3240,r13		! source line 3240
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3241,r13		! source line 3241
	mov	"\0\0SE",r10
!   _temp_4287 = &_P_Kernel_frameManager
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
	mov	3242,r13		! source line 3242
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4283:
! ASSIGNMENT STATEMENT...
	mov	3246,r13		! source line 3246
	mov	"\0\0AS",r10
	mov	3246,r13		! source line 3246
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
	mov	3250,r13		! source line 3250
	mov	"\0\0CE",r10
	call	MemoryZero
! RETURN STATEMENT...
	mov	3253,r13		! source line 3253
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
	.word	_Label_4288
	.word	8		! total size of parameters
	.word	272		! frame size = 272
	.word	_Label_4289
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_4290
	.word	12
	.word	4
	.word	_Label_4291
	.word	-16
	.word	4
	.word	_Label_4292
	.word	-20
	.word	4
	.word	_Label_4293
	.word	-24
	.word	4
	.word	_Label_4294
	.word	-28
	.word	4
	.word	_Label_4295
	.word	-32
	.word	4
	.word	_Label_4296
	.word	-36
	.word	4
	.word	_Label_4297
	.word	-40
	.word	4
	.word	_Label_4298
	.word	-9
	.word	1
	.word	_Label_4299
	.word	-44
	.word	4
	.word	_Label_4300
	.word	-48
	.word	4
	.word	_Label_4301
	.word	-52
	.word	4
	.word	_Label_4302
	.word	-56
	.word	4
	.word	_Label_4303
	.word	-60
	.word	4
	.word	_Label_4304
	.word	-64
	.word	4
	.word	_Label_4305
	.word	-68
	.word	4
	.word	_Label_4306
	.word	-72
	.word	4
	.word	_Label_4307
	.word	-76
	.word	4
	.word	_Label_4308
	.word	-10
	.word	1
	.word	_Label_4309
	.word	-80
	.word	4
	.word	_Label_4310
	.word	-84
	.word	4
	.word	_Label_4311
	.word	-88
	.word	4
	.word	_Label_4312
	.word	-92
	.word	4
	.word	_Label_4313
	.word	-96
	.word	4
	.word	_Label_4314
	.word	-100
	.word	4
	.word	_Label_4315
	.word	-104
	.word	4
	.word	_Label_4316
	.word	-108
	.word	4
	.word	_Label_4317
	.word	-112
	.word	4
	.word	_Label_4318
	.word	-116
	.word	4
	.word	_Label_4319
	.word	-120
	.word	4
	.word	_Label_4320
	.word	-124
	.word	4
	.word	_Label_4321
	.word	-128
	.word	4
	.word	_Label_4322
	.word	-132
	.word	4
	.word	_Label_4323
	.word	-136
	.word	4
	.word	_Label_4324
	.word	-140
	.word	4
	.word	_Label_4325
	.word	-144
	.word	4
	.word	_Label_4326
	.word	-148
	.word	4
	.word	_Label_4327
	.word	-152
	.word	4
	.word	_Label_4328
	.word	-156
	.word	4
	.word	_Label_4329
	.word	-160
	.word	4
	.word	_Label_4330
	.word	-164
	.word	4
	.word	_Label_4331
	.word	-168
	.word	4
	.word	_Label_4332
	.word	-172
	.word	4
	.word	_Label_4333
	.word	-176
	.word	4
	.word	_Label_4334
	.word	-180
	.word	4
	.word	_Label_4335
	.word	-184
	.word	4
	.word	_Label_4336
	.word	-188
	.word	4
	.word	_Label_4337
	.word	-192
	.word	4
	.word	_Label_4338
	.word	-196
	.word	4
	.word	_Label_4339
	.word	-200
	.word	4
	.word	_Label_4340
	.word	-204
	.word	4
	.word	_Label_4341
	.word	-208
	.word	4
	.word	_Label_4342
	.word	-212
	.word	4
	.word	_Label_4343
	.word	-216
	.word	4
	.word	_Label_4344
	.word	-220
	.word	4
	.word	_Label_4345
	.word	-224
	.word	4
	.word	_Label_4346
	.word	-228
	.word	4
	.word	_Label_4347
	.word	-232
	.word	4
	.word	_Label_4348
	.word	-236
	.word	4
	.word	_Label_4349
	.word	-240
	.word	4
	.word	_Label_4350
	.word	-244
	.word	4
	.word	_Label_4351
	.word	-248
	.word	4
	.word	_Label_4352
	.word	-252
	.word	4
	.word	_Label_4353
	.word	-256
	.word	4
	.word	_Label_4354
	.word	-260
	.word	4
	.word	_Label_4355
	.word	-264
	.word	4
	.word	_Label_4356
	.word	-268
	.word	4
	.word	0
_Label_4288:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"LoadExecutable\0"
	.align
_Label_4289:
	.ascii	"Pself\0"
	.align
_Label_4290:
	.byte	'P'
	.ascii	"addrSpace\0"
	.align
_Label_4291:
	.byte	'?'
	.ascii	"_temp_4287\0"
	.align
_Label_4292:
	.byte	'?'
	.ascii	"_temp_4286\0"
	.align
_Label_4293:
	.byte	'?'
	.ascii	"_temp_4285\0"
	.align
_Label_4294:
	.byte	'?'
	.ascii	"_temp_4284\0"
	.align
_Label_4295:
	.byte	'?'
	.ascii	"_temp_4281\0"
	.align
_Label_4296:
	.byte	'?'
	.ascii	"_temp_4280\0"
	.align
_Label_4297:
	.byte	'?'
	.ascii	"_temp_4279\0"
	.align
_Label_4298:
	.byte	'C'
	.ascii	"_temp_4278\0"
	.align
_Label_4299:
	.byte	'?'
	.ascii	"_temp_4275\0"
	.align
_Label_4300:
	.byte	'?'
	.ascii	"_temp_4274\0"
	.align
_Label_4301:
	.byte	'?'
	.ascii	"_temp_4269\0"
	.align
_Label_4302:
	.byte	'?'
	.ascii	"_temp_4268\0"
	.align
_Label_4303:
	.byte	'?'
	.ascii	"_temp_4267\0"
	.align
_Label_4304:
	.byte	'?'
	.ascii	"_temp_4266\0"
	.align
_Label_4305:
	.byte	'?'
	.ascii	"_temp_4263\0"
	.align
_Label_4306:
	.byte	'?'
	.ascii	"_temp_4262\0"
	.align
_Label_4307:
	.byte	'?'
	.ascii	"_temp_4261\0"
	.align
_Label_4308:
	.byte	'C'
	.ascii	"_temp_4260\0"
	.align
_Label_4309:
	.byte	'?'
	.ascii	"_temp_4257\0"
	.align
_Label_4310:
	.byte	'?'
	.ascii	"_temp_4256\0"
	.align
_Label_4311:
	.byte	'?'
	.ascii	"_temp_4251\0"
	.align
_Label_4312:
	.byte	'?'
	.ascii	"_temp_4250\0"
	.align
_Label_4313:
	.byte	'?'
	.ascii	"_temp_4249\0"
	.align
_Label_4314:
	.byte	'?'
	.ascii	"_temp_4248\0"
	.align
_Label_4315:
	.byte	'?'
	.ascii	"_temp_4245\0"
	.align
_Label_4316:
	.byte	'?'
	.ascii	"_temp_4244\0"
	.align
_Label_4317:
	.byte	'?'
	.ascii	"_temp_4243\0"
	.align
_Label_4318:
	.byte	'?'
	.ascii	"_temp_4242\0"
	.align
_Label_4319:
	.byte	'?'
	.ascii	"_temp_4239\0"
	.align
_Label_4320:
	.byte	'?'
	.ascii	"_temp_4238\0"
	.align
_Label_4321:
	.byte	'?'
	.ascii	"_temp_4237\0"
	.align
_Label_4322:
	.byte	'?'
	.ascii	"_temp_4236\0"
	.align
_Label_4323:
	.byte	'?'
	.ascii	"_temp_4235\0"
	.align
_Label_4324:
	.byte	'?'
	.ascii	"_temp_4232\0"
	.align
_Label_4325:
	.byte	'?'
	.ascii	"_temp_4231\0"
	.align
_Label_4326:
	.byte	'?'
	.ascii	"_temp_4228\0"
	.align
_Label_4327:
	.byte	'?'
	.ascii	"_temp_4227\0"
	.align
_Label_4328:
	.byte	'?'
	.ascii	"_temp_4224\0"
	.align
_Label_4329:
	.byte	'?'
	.ascii	"_temp_4223\0"
	.align
_Label_4330:
	.byte	'?'
	.ascii	"_temp_4220\0"
	.align
_Label_4331:
	.byte	'?'
	.ascii	"_temp_4217\0"
	.align
_Label_4332:
	.byte	'?'
	.ascii	"_temp_4216\0"
	.align
_Label_4333:
	.byte	'?'
	.ascii	"_temp_4213\0"
	.align
_Label_4334:
	.byte	'?'
	.ascii	"_temp_4212\0"
	.align
_Label_4335:
	.byte	'?'
	.ascii	"_temp_4211\0"
	.align
_Label_4336:
	.byte	'?'
	.ascii	"_temp_4210\0"
	.align
_Label_4337:
	.byte	'?'
	.ascii	"_temp_4209\0"
	.align
_Label_4338:
	.byte	'?'
	.ascii	"_temp_4208\0"
	.align
_Label_4339:
	.byte	'?'
	.ascii	"_temp_4207\0"
	.align
_Label_4340:
	.byte	'?'
	.ascii	"_temp_4206\0"
	.align
_Label_4341:
	.byte	'?'
	.ascii	"_temp_4205\0"
	.align
_Label_4342:
	.byte	'?'
	.ascii	"_temp_4202\0"
	.align
_Label_4343:
	.byte	'?'
	.ascii	"_temp_4201\0"
	.align
_Label_4344:
	.byte	'?'
	.ascii	"_temp_4200\0"
	.align
_Label_4345:
	.byte	'I'
	.ascii	"nextVirtPage\0"
	.align
_Label_4346:
	.byte	'I'
	.ascii	"addr\0"
	.align
_Label_4347:
	.byte	'I'
	.ascii	"textSize\0"
	.align
_Label_4348:
	.byte	'I'
	.ascii	"dataSize\0"
	.align
_Label_4349:
	.byte	'I'
	.ascii	"bssSize\0"
	.align
_Label_4350:
	.byte	'I'
	.ascii	"textStart\0"
	.align
_Label_4351:
	.byte	'I'
	.ascii	"dataStart\0"
	.align
_Label_4352:
	.byte	'I'
	.ascii	"bssStart\0"
	.align
_Label_4353:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_4354:
	.byte	'I'
	.ascii	"textSizeInPages\0"
	.align
_Label_4355:
	.byte	'I'
	.ascii	"dataSizeInPages\0"
	.align
_Label_4356:
	.byte	'I'
	.ascii	"bssSizeInPages\0"
	.align
