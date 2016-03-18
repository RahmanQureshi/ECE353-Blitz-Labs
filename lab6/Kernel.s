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
	.skip	1316
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
_StringConst_196:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (3)\n"
	.align
_StringConst_195:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_194:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (2)\n"
	.align
_StringConst_193:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_192:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (1)\n"
	.align
_StringConst_191:
	.word	40			! length
	.ascii	"LoadExecutable: MAX_PAGES_PER_VIRT_SPACE"
	.align
_StringConst_190:
	.word	53			! length
	.ascii	"LoadExecutable: Number of pages in this address space"
	.align
_StringConst_189:
	.word	61			! length
	.ascii	"LoadExecutable: This virtual address space exceeds the limit\n"
	.align
_StringConst_188:
	.word	49			! length
	.ascii	"LoadExecutable: bssStart != dataStart + dataSize\n"
	.align
_StringConst_187:
	.word	65			! length
	.ascii	"LoadExecutable: The bss segment size not a multiple of page size\n"
	.align
_StringConst_186:
	.word	50			! length
	.ascii	"LoadExecutable: dataStart != textStart + textSize\n"
	.align
_StringConst_185:
	.word	66			! length
	.ascii	"LoadExecutable: The data segment size not a multiple of page size\n"
	.align
_StringConst_184:
	.word	95			! length
	.ascii	"LoadExecutable: The environment size does not match the \'loadAddr\' info supplied to the linker\n"
	.align
_StringConst_183:
	.word	66			! length
	.ascii	"LoadExecutable: The text segment size not a multiple of page size\n"
	.align
_StringConst_182:
	.word	33			! length
	.ascii	"LoadExecutable: Bad magic number\n"
	.align
_StringConst_181:
	.word	55			! length
	.ascii	"LoadExecutable: This virtual address space is not empty"
	.align
_StringConst_180:
	.word	32			! length
	.ascii	"Within ReadInt: ReadBytes failed"
	.align
_StringConst_179:
	.word	5			! length
	.ascii	"null\n"
	.align
_StringConst_178:
	.word	6			! length
	.ascii	", fcb="
	.align
_StringConst_177:
	.word	28			! length
	.ascii	"    OPEN FILE:   currentPos="
	.align
_StringConst_176:
	.word	26			! length
	.ascii	",  relativeSectorInBuffer="
	.align
_StringConst_175:
	.word	13			! length
	.ascii	",  bufferPtr="
	.align
_StringConst_174:
	.word	21			! length
	.ascii	",  sizeOfFileInBytes="
	.align
_StringConst_173:
	.word	18			! length
	.ascii	",  startingSector="
	.align
_StringConst_172:
	.word	17			! length
	.ascii	",  numberOfUsers="
	.align
_StringConst_171:
	.word	6			! length
	.ascii	"fcbID="
	.align
_StringConst_170:
	.word	48			! length
	.ascii	"FileManager.SynchWrite: file not properly opened"
	.align
_StringConst_169:
	.word	47			! length
	.ascii	"FileManager.SynchRead: file not properly opened"
	.align
_StringConst_168:
	.word	67			! length
	.ascii	"FileManager.Flush: buffer is dirty but relativeSectorInBuffer =  -1"
	.align
_StringConst_167:
	.word	72			! length
	.ascii	"In FileManager.Open: a free FCB appears not to have been closed properly"
	.align
_StringConst_166:
	.word	51			! length
	.ascii	"Magic number in sector 0 of stub file system is bad"
	.align
_StringConst_165:
	.word	36			! length
	.ascii	"Here is the FREE list of OpenFiles:\n"
	.align
_StringConst_164:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_163:
	.word	5			! length
	.ascii	":  0x"
	.align
_StringConst_162:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_161:
	.word	30			! length
	.ascii	"Here is the OpenFile table...\n"
	.align
_StringConst_160:
	.word	47			! length
	.ascii	"Here is the FREE list of FileControlBlocks:\n   "
	.align
_StringConst_159:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_158:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_157:
	.word	38			! length
	.ascii	"Here is the FileControlBlock table...\n"
	.align
_StringConst_156:
	.word	29			! length
	.ascii	"Initializing File Manager...\n"
	.align
_StringConst_155:
	.word	40			! length
	.ascii	"SynchWriteSector: Unexpected status code"
	.align
_StringConst_154:
	.word	52			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad command word"
	.align
_StringConst_153:
	.word	95			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_152:
	.word	76			! length
	.ascii	"Disk I/O error in SynchWriteSector: Attempt to access invalid memory address"
	.align
_StringConst_151:
	.word	99			! length
	.ascii	"Disk I/O error in SynchWriteSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_150:
	.word	39			! length
	.ascii	"SynchReadSector: Unexpected status code"
	.align
_StringConst_149:
	.word	51			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad command word"
	.align
_StringConst_148:
	.word	94			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_147:
	.word	75			! length
	.ascii	"Disk I/O error in SynchReadSector: Attempt to access invalid memory address"
	.align
_StringConst_146:
	.word	98			! length
	.ascii	"Disk I/O error in SynchReadSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_145:
	.word	28			! length
	.ascii	"Initializing Disk Driver...\n"
	.align
_StringConst_144:
	.word	38			! length
	.ascii	"  Virtual page is not marked VALID!!!\n"
	.align
_StringConst_143:
	.word	38			! length
	.ascii	"  Virtual page number is too large!!!\n"
	.align
_StringConst_142:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_141:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_140:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_139:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_138:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_137:
	.word	9			! length
	.ascii	"         "
	.align
_StringConst_136:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_135:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_134:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_133:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_132:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_131:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_130:
	.word	10			! length
	.ascii	"          "
	.align
_StringConst_129:
	.word	4			! length
	.ascii	"    "
	.align
_StringConst_128:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_127:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_126:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_125:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_124:
	.word	109			! length
	.ascii	"     ==========   ==========     ==========  ==========  ==============  =====  ==========  =========  =====\n"
	.align
_StringConst_123:
	.word	109			! length
	.ascii	"        addr        entry          Virtual    Physical   Undefined Bits  Dirty  Referenced  Writeable  Valid\n"
	.align
_StringConst_122:
	.word	35			! length
	.ascii	"  Here are the frames in use: \n    "
	.align
_StringConst_121:
	.word	18			! length
	.ascii	"  numberFreeFrames"
	.align
_StringConst_120:
	.word	15			! length
	.ascii	"FRAME MANAGER:\n"
	.align
_StringConst_119:
	.word	89			! length
	.ascii	"Kernel code size appears to have grown too large and is overflowing into the frame region"
	.align
_StringConst_118:
	.word	30			! length
	.ascii	"Initializing Frame Manager...\n"
	.align
_StringConst_117:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_116:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_115:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_114:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_113:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_112:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_111:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_110:
	.word	13			! length
	.ascii	", exitStatus="
	.align
_StringConst_109:
	.word	13			! length
	.ascii	", parentsPid="
	.align
_StringConst_108:
	.word	33			! length
	.ascii	"Bad status in ProcessControlBlock"
	.align
_StringConst_107:
	.word	4			! length
	.ascii	"FREE"
	.align
_StringConst_106:
	.word	6			! length
	.ascii	"ZOMBIE"
	.align
_StringConst_105:
	.word	6			! length
	.ascii	"ACTIVE"
	.align
_StringConst_104:
	.word	9			! length
	.ascii	", status="
	.align
_StringConst_103:
	.word	8			! length
	.ascii	")   pid="
	.align
_StringConst_102:
	.word	30			! length
	.ascii	"  ProcessControlBlock   (addr="
	.align
_StringConst_101:
	.word	15			! length
	.ascii	"    myThread = "
	.align
_StringConst_100:
	.word	37			! length
	.ascii	"Here is the FREE list of Threads:\n   "
	.align
_StringConst_99:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_98:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_97:
	.word	28			! length
	.ascii	"Here is the thread table...\n"
	.align
_StringConst_96:
	.word	14			! length
	.ascii	"ThreadNameHere"
	.align
_StringConst_95:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_94:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_93:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_92:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_91:
	.word	20			! length
	.ascii	"    user registers:\n"
	.align
_StringConst_90:
	.word	20			! length
	.ascii	"    is user thread: "
	.align
_StringConst_89:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_88:
	.word	20			! length
	.ascii	"    status = UNUSED\n"
	.align
_StringConst_87:
	.word	21			! length
	.ascii	"    status = BLOCKED\n"
	.align
_StringConst_86:
	.word	21			! length
	.ascii	"    status = RUNNING\n"
	.align
_StringConst_85:
	.word	19			! length
	.ascii	"    status = READY\n"
	.align
_StringConst_84:
	.word	26			! length
	.ascii	"    status = JUST_CREATED\n"
	.align
_StringConst_83:
	.word	23			! length
	.ascii	"    stack starting addr"
	.align
_StringConst_82:
	.word	12			! length
	.ascii	"    stackTop"
	.align
_StringConst_81:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_80:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_79:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_78:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_77:
	.word	19			! length
	.ascii	"    machine state:\n"
	.align
_StringConst_76:
	.word	2			! length
	.ascii	")\n"
	.align
_StringConst_75:
	.word	29			! length
	.ascii	"\"    (addr of Thread object: "
	.align
_StringConst_74:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_73:
	.word	32			! length
	.ascii	"System stack underflow detected!"
	.align
_StringConst_72:
	.word	31			! length
	.ascii	"System stack overflow detected!"
	.align
_StringConst_71:
	.word	48			! length
	.ascii	"Ready list should always contain the idle thread"
	.align
_StringConst_70:
	.word	31			! length
	.ascii	"In Sleep, self != currentThread"
	.align
_StringConst_69:
	.word	44			! length
	.ascii	"In Sleep, currentInterruptStatus != DISABLED"
	.align
_StringConst_68:
	.word	51			! length
	.ascii	"Status of current thread should be READY or RUNNING"
	.align
_StringConst_67:
	.word	31			! length
	.ascii	"In Yield, self != currentThread"
	.align
_StringConst_66:
	.word	54			! length
	.ascii	"Attempt to broadcast a condition when lock is not held"
	.align
_StringConst_65:
	.word	52			! length
	.ascii	"Attempt to signal a condition when mutex is not held"
	.align
_StringConst_64:
	.word	51			! length
	.ascii	"Attempt to wait on condition when mutex is not held"
	.align
_StringConst_63:
	.word	52			! length
	.ascii	"Attempt to unlock a mutex by a thread not holding it"
	.align
_StringConst_62:
	.word	54			! length
	.ascii	"Attempt to lock a mutex by a thread already holding it"
	.align
_StringConst_61:
	.word	51			! length
	.ascii	"Semaphore count underflowed during \'Down\' operation"
	.align
_StringConst_60:
	.word	48			! length
	.ascii	"Semaphore count overflowed during \'Up\' operation"
	.align
_StringConst_59:
	.word	39			! length
	.ascii	"Semaphore created with initialCount < 0"
	.align
_StringConst_58:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_57:
	.word	4			! length
	.ascii	"  0x"
	.align
_StringConst_56:
	.word	10			! length
	.ascii	"fileDesc: "
	.align
_StringConst_55:
	.word	25			! length
	.ascii	"Handle_Sys_Close invoked!"
	.align
_StringConst_54:
	.word	17			! length
	.ascii	"New current pos: "
	.align
_StringConst_53:
	.word	10			! length
	.ascii	"fileDesc: "
	.align
_StringConst_52:
	.word	24			! length
	.ascii	"Handle_Sys_Seek invoked!"
	.align
_StringConst_51:
	.word	15			! length
	.ascii	"Size in bytes: "
	.align
_StringConst_50:
	.word	27			! length
	.ascii	"Virtual address of buffer: "
	.align
_StringConst_49:
	.word	10			! length
	.ascii	"fileDesc: "
	.align
_StringConst_48:
	.word	25			! length
	.ascii	"Handle_Sys_Write invoked!"
	.align
_StringConst_47:
	.word	15			! length
	.ascii	"Size in bytes: "
	.align
_StringConst_46:
	.word	27			! length
	.ascii	"Virtual address of buffer: "
	.align
_StringConst_45:
	.word	10			! length
	.ascii	"fileDesc: "
	.align
_StringConst_44:
	.word	24			! length
	.ascii	"Handle_Sys_Read invoked!"
	.align
_StringConst_43:
	.word	10			! length
	.ascii	"Filename: "
	.align
_StringConst_42:
	.word	29			! length
	.ascii	"Virtual address of filename: "
	.align
_StringConst_41:
	.word	24			! length
	.ascii	"Handle_Sys_Open invoked!"
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
	.ascii	"TestProgram3"
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
	set	0xe387f8f2,r4		! myHashVal = -477628174
	cmp	r3,r4
	be	_Label_206
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
_Label_206:
	mov	0,r1
! Make sure _P_System_ has hash value 0x9e9d23b6 (decimal -1633868874)
	set	_packageName,r2
	set	0x9e9d23b6,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_207
! Make sure _P_BitMap_ has hash value 0xa596b1b5 (decimal -1516850763)
	set	_packageName,r2
	set	0xa596b1b5,r3
	call	_CheckVersion_P_BitMap_
	.import	_CheckVersion_P_BitMap_
	cmp	r1,0
	bne	_Label_207
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_207
_Label_207:
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
_Label_3357:
	push	r0
	sub	r1,1,r1
	bne	_Label_3357
	mov	6,r13		! source line 6
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	9,r13		! source line 9
	mov	"\0\0AS",r10
	mov	9,r13		! source line 9
	mov	"\0\0SE",r10
!   _temp_208 = &_P_Kernel_threadManager
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
!   _temp_209 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-16]
!   if intIsZero (threadPtr) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_209  sizeInBytes=4
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
!   _temp_210 = _function_205_StartUserProcess
	set	_function_205_StartUserProcess,r1
	store	r1,[r14+-12]
!   if intIsZero (threadPtr) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_210  sizeInBytes=4
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
	.word	_Label_211
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_212
	.word	-12
	.word	4
	.word	_Label_213
	.word	-16
	.word	4
	.word	_Label_214
	.word	-20
	.word	4
	.word	_Label_215
	.word	-24
	.word	4
	.word	0
_Label_211:
	.ascii	"InitFirstProcess\0"
	.align
_Label_212:
	.byte	'?'
	.ascii	"_temp_210\0"
	.align
_Label_213:
	.byte	'?'
	.ascii	"_temp_209\0"
	.align
_Label_214:
	.byte	'?'
	.ascii	"_temp_208\0"
	.align
_Label_215:
	.byte	'P'
	.ascii	"threadPtr\0"
	.align
! 
! ===============  FUNCTION StartUserProcess  ===============
! 
_function_205_StartUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_205_StartUserProcess,r1
	push	r1
	mov	25,r1
_Label_3358:
	push	r0
	sub	r1,1,r1
	bne	_Label_3358
	mov	14,r13		! source line 14
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	24,r13		! source line 24
	mov	"\0\0AS",r10
	mov	24,r13		! source line 24
	mov	"\0\0SE",r10
!   _temp_216 = &_P_Kernel_processManager
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
!   _temp_217 = pcb + 24
	load	[r14+-76],r1
	add	r1,24,r1
	store	r1,[r14+-68]
!   Data Move: *_temp_217 = _P_Kernel_currentThread  (sizeInBytes=4)
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
!   _temp_218 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-64]
!   Data Move: *_temp_218 = pcb  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r14+-64],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	30,r13		! source line 30
	mov	"\0\0AS",r10
	mov	30,r13		! source line 30
	mov	"\0\0SE",r10
!   _temp_219 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-60]
!   _temp_220 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=12  value=_temp_219  sizeInBytes=4
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
!   _temp_222 = pcb + 32
	load	[r14+-76],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   _temp_221 = _temp_222		(4 bytes)
	load	[r14+-48],r1
	store	r1,[r14+-52]
!   if intIsZero (openFilePtr) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_221  sizeInBytes=4
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
!   _temp_223 = &_P_Kernel_fileManager
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
!   _temp_225 = pcb + 32
	load	[r14+-76],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   _temp_226 = _temp_225 + 4
	load	[r14+-36],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Data Move: _temp_224 = *_temp_226  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   initUserStackTop = _temp_224 * 8192		(int)
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
!   _temp_227 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-28]
!   Move address of _temp_227 [999 ] into _temp_228
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
!   initSystemStackTop = _temp_228		(4 bytes)
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
!   _temp_229 = pcb + 32
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
!   _temp_230 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_230 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-16],r2
	storeb	r1,[r2]
! CALL STATEMENT...
!   _temp_231 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_231  sizeInBytes=4
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
_RoutineDescriptor__function_205_StartUserProcess:
	.word	_sourceFileName
	.word	_Label_232
	.word	4		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_233
	.word	8
	.word	4
	.word	_Label_234
	.word	-12
	.word	4
	.word	_Label_235
	.word	-16
	.word	4
	.word	_Label_236
	.word	-20
	.word	4
	.word	_Label_237
	.word	-24
	.word	4
	.word	_Label_238
	.word	-28
	.word	4
	.word	_Label_239
	.word	-32
	.word	4
	.word	_Label_240
	.word	-36
	.word	4
	.word	_Label_241
	.word	-40
	.word	4
	.word	_Label_242
	.word	-44
	.word	4
	.word	_Label_243
	.word	-48
	.word	4
	.word	_Label_244
	.word	-52
	.word	4
	.word	_Label_245
	.word	-56
	.word	4
	.word	_Label_246
	.word	-60
	.word	4
	.word	_Label_247
	.word	-64
	.word	4
	.word	_Label_248
	.word	-68
	.word	4
	.word	_Label_249
	.word	-72
	.word	4
	.word	_Label_250
	.word	-76
	.word	4
	.word	_Label_251
	.word	-80
	.word	4
	.word	_Label_252
	.word	-84
	.word	4
	.word	_Label_253
	.word	-88
	.word	4
	.word	_Label_254
	.word	-92
	.word	4
	.word	_Label_255
	.word	-96
	.word	4
	.word	0
_Label_232:
	.ascii	"StartUserProcess\0"
	.align
_Label_233:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_234:
	.byte	'?'
	.ascii	"_temp_231\0"
	.align
_Label_235:
	.byte	'?'
	.ascii	"_temp_230\0"
	.align
_Label_236:
	.byte	'?'
	.ascii	"_temp_229\0"
	.align
_Label_237:
	.byte	'?'
	.ascii	"_temp_228\0"
	.align
_Label_238:
	.byte	'?'
	.ascii	"_temp_227\0"
	.align
_Label_239:
	.byte	'?'
	.ascii	"_temp_226\0"
	.align
_Label_240:
	.byte	'?'
	.ascii	"_temp_225\0"
	.align
_Label_241:
	.byte	'?'
	.ascii	"_temp_224\0"
	.align
_Label_242:
	.byte	'?'
	.ascii	"_temp_223\0"
	.align
_Label_243:
	.byte	'?'
	.ascii	"_temp_222\0"
	.align
_Label_244:
	.byte	'?'
	.ascii	"_temp_221\0"
	.align
_Label_245:
	.byte	'?'
	.ascii	"_temp_220\0"
	.align
_Label_246:
	.byte	'?'
	.ascii	"_temp_219\0"
	.align
_Label_247:
	.byte	'?'
	.ascii	"_temp_218\0"
	.align
_Label_248:
	.byte	'?'
	.ascii	"_temp_217\0"
	.align
_Label_249:
	.byte	'?'
	.ascii	"_temp_216\0"
	.align
_Label_250:
	.byte	'P'
	.ascii	"pcb\0"
	.align
_Label_251:
	.byte	'P'
	.ascii	"openFilePtr\0"
	.align
_Label_252:
	.byte	'I'
	.ascii	"entryPoint\0"
	.align
_Label_253:
	.byte	'I'
	.ascii	"initUserStackTop\0"
	.align
_Label_254:
	.byte	'I'
	.ascii	"initSystemStackTop\0"
	.align
_Label_255:
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
_Label_3359:
	push	r0
	sub	r1,1,r1
	bne	_Label_3359
	mov	56,r13		! source line 56
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	63,r13		! source line 63
	mov	"\0\0CE",r10
	call	Cleari
! CALL STATEMENT...
!   _temp_256 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_256  sizeInBytes=4
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
_Label_3360:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3360
!   _P_Kernel_mainThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_mainThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	68,r13		! source line 68
	mov	"\0\0SE",r10
!   _temp_260 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-44]
!   _temp_261 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_260  sizeInBytes=4
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
!   _temp_262 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-36]
!   _temp_263 = _temp_262 + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_263 = 3  (sizeInBytes=4)
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
_Label_3361:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3361
!   _P_Kernel_idleThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_idleThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	71,r13		! source line 71
	mov	"\0\0SE",r10
!   _temp_265 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-24]
!   _temp_266 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_265  sizeInBytes=4
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
!   _temp_267 = _function_204_IdleFunction
	set	_function_204_IdleFunction,r1
	store	r1,[r14+-16]
!   _temp_268 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_267  sizeInBytes=4
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
	.word	_Label_269
	.word	0		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_270
	.word	-12
	.word	4
	.word	_Label_271
	.word	-16
	.word	4
	.word	_Label_272
	.word	-20
	.word	4
	.word	_Label_273
	.word	-24
	.word	4
	.word	_Label_274
	.word	-28
	.word	4
	.word	_Label_275
	.word	-32
	.word	4
	.word	_Label_276
	.word	-36
	.word	4
	.word	_Label_277
	.word	-40
	.word	4
	.word	_Label_278
	.word	-44
	.word	4
	.word	_Label_279
	.word	-48
	.word	4
	.word	_Label_280
	.word	-52
	.word	4
	.word	_Label_281
	.word	-56
	.word	4
	.word	_Label_282
	.word	-60
	.word	4
	.word	0
_Label_269:
	.ascii	"InitializeScheduler\0"
	.align
_Label_270:
	.byte	'?'
	.ascii	"_temp_268\0"
	.align
_Label_271:
	.byte	'?'
	.ascii	"_temp_267\0"
	.align
_Label_272:
	.byte	'?'
	.ascii	"_temp_266\0"
	.align
_Label_273:
	.byte	'?'
	.ascii	"_temp_265\0"
	.align
_Label_274:
	.byte	'?'
	.ascii	"_temp_264\0"
	.align
_Label_275:
	.byte	'?'
	.ascii	"_temp_263\0"
	.align
_Label_276:
	.byte	'?'
	.ascii	"_temp_262\0"
	.align
_Label_277:
	.byte	'?'
	.ascii	"_temp_261\0"
	.align
_Label_278:
	.byte	'?'
	.ascii	"_temp_260\0"
	.align
_Label_279:
	.byte	'?'
	.ascii	"_temp_259\0"
	.align
_Label_280:
	.byte	'?'
	.ascii	"_temp_258\0"
	.align
_Label_281:
	.byte	'?'
	.ascii	"_temp_257\0"
	.align
_Label_282:
	.byte	'?'
	.ascii	"_temp_256\0"
	.align
! 
! ===============  FUNCTION IdleFunction  ===============
! 
_function_204_IdleFunction:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_204_IdleFunction,r1
	push	r1
	mov	3,r1
_Label_3362:
	push	r0
	sub	r1,1,r1
	bne	_Label_3362
	mov	81,r13		! source line 81
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	91,r13		! source line 91
	mov	"\0\0WH",r10
_Label_283:
!	jmp	_Label_284
_Label_284:
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
!   _temp_288 = &_P_Kernel_readyList
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
!   if result==true then goto _Label_286 else goto _Label_287
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_287
	jmp	_Label_286
_Label_286:
! THEN...
	mov	94,r13		! source line 94
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Call the function
	mov	94,r13		! source line 94
	mov	"\0\0CE",r10
	call	Wait
	jmp	_Label_289
_Label_287:
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
_Label_289:
! END WHILE...
	jmp	_Label_283
_Label_285:
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_204_IdleFunction:
	.word	_sourceFileName
	.word	_Label_290
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_291
	.word	8
	.word	4
	.word	_Label_292
	.word	-12
	.word	4
	.word	_Label_293
	.word	-16
	.word	4
	.word	0
_Label_290:
	.ascii	"IdleFunction\0"
	.align
_Label_291:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_292:
	.byte	'?'
	.ascii	"_temp_288\0"
	.align
_Label_293:
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
_Label_3363:
	push	r0
	sub	r1,1,r1
	bne	_Label_3363
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
!   _temp_296 = prevThread + 4092
	load	[r14+-76],r1
	add	r1,4092,r1
	store	r1,[r14+-72]
!   if boolIsZero (_temp_296 ) then goto _Label_295		(int)
	load	[r14+-72],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_295
!	jmp	_Label_294
_Label_294:
! THEN...
	mov	120,r13		! source line 120
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_298 = prevThread + 4096
	load	[r14+-76],r1
	add	r1,4096,r1
	store	r1,[r14+-64]
!   Move address of _temp_298 [0 ] into _temp_299
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
!   _temp_297 = _temp_299		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_297  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	120,r13		! source line 120
	mov	"\0\0CE",r10
	call	SaveUserRegs
! END IF...
_Label_295:
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
!   _temp_300 = nextThread + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-56]
!   Data Move: *_temp_300 = 3  (sizeInBytes=4)
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
_Label_301:
	mov	133,r13		! source line 133
	mov	"\0\0SE",r10
!   _temp_305 = &_P_Kernel_threadsToBeDestroyed
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
!   Retrieve Result: targetName=_temp_304  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_304 then goto _Label_303 else goto _Label_302
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_302
	jmp	_Label_303
_Label_302:
	mov	133,r13		! source line 133
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	134,r13		! source line 134
	mov	"\0\0AS",r10
	mov	134,r13		! source line 134
	mov	"\0\0SE",r10
!   _temp_306 = &_P_Kernel_threadsToBeDestroyed
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
!   _temp_307 = &_P_Kernel_threadManager
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
	jmp	_Label_301
_Label_303:
! IF STATEMENT...
	mov	138,r13		! source line 138
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_310 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-40]
!   if boolIsZero (_temp_310 ) then goto _Label_309		(int)
	load	[r14+-40],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_309
!	jmp	_Label_308
_Label_308:
! THEN...
	mov	139,r13		! source line 139
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_312 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-32]
!   Move address of _temp_312 [0 ] into _temp_313
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
!   _temp_311 = _temp_313		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_311  sizeInBytes=4
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
!   _temp_315 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_314 = *_temp_315  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_314) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_316 = _temp_314 + 32
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
_Label_309:
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
	.word	_Label_317
	.word	4		! total size of parameters
	.word	80		! frame size = 80
	.word	_Label_318
	.word	8
	.word	4
	.word	_Label_319
	.word	-16
	.word	4
	.word	_Label_320
	.word	-20
	.word	4
	.word	_Label_321
	.word	-24
	.word	4
	.word	_Label_322
	.word	-28
	.word	4
	.word	_Label_323
	.word	-32
	.word	4
	.word	_Label_324
	.word	-36
	.word	4
	.word	_Label_325
	.word	-40
	.word	4
	.word	_Label_326
	.word	-44
	.word	4
	.word	_Label_327
	.word	-48
	.word	4
	.word	_Label_328
	.word	-52
	.word	4
	.word	_Label_329
	.word	-9
	.word	1
	.word	_Label_330
	.word	-56
	.word	4
	.word	_Label_331
	.word	-60
	.word	4
	.word	_Label_332
	.word	-64
	.word	4
	.word	_Label_333
	.word	-68
	.word	4
	.word	_Label_334
	.word	-72
	.word	4
	.word	_Label_335
	.word	-76
	.word	4
	.word	_Label_336
	.word	-80
	.word	4
	.word	0
_Label_317:
	.ascii	"Run\0"
	.align
_Label_318:
	.byte	'P'
	.ascii	"nextThread\0"
	.align
_Label_319:
	.byte	'?'
	.ascii	"_temp_316\0"
	.align
_Label_320:
	.byte	'?'
	.ascii	"_temp_315\0"
	.align
_Label_321:
	.byte	'?'
	.ascii	"_temp_314\0"
	.align
_Label_322:
	.byte	'?'
	.ascii	"_temp_313\0"
	.align
_Label_323:
	.byte	'?'
	.ascii	"_temp_312\0"
	.align
_Label_324:
	.byte	'?'
	.ascii	"_temp_311\0"
	.align
_Label_325:
	.byte	'?'
	.ascii	"_temp_310\0"
	.align
_Label_326:
	.byte	'?'
	.ascii	"_temp_307\0"
	.align
_Label_327:
	.byte	'?'
	.ascii	"_temp_306\0"
	.align
_Label_328:
	.byte	'?'
	.ascii	"_temp_305\0"
	.align
_Label_329:
	.byte	'C'
	.ascii	"_temp_304\0"
	.align
_Label_330:
	.byte	'?'
	.ascii	"_temp_300\0"
	.align
_Label_331:
	.byte	'?'
	.ascii	"_temp_299\0"
	.align
_Label_332:
	.byte	'?'
	.ascii	"_temp_298\0"
	.align
_Label_333:
	.byte	'?'
	.ascii	"_temp_297\0"
	.align
_Label_334:
	.byte	'?'
	.ascii	"_temp_296\0"
	.align
_Label_335:
	.byte	'P'
	.ascii	"prevThread\0"
	.align
_Label_336:
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
_Label_3364:
	push	r0
	sub	r1,1,r1
	bne	_Label_3364
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
!   _temp_337 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_337  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	154,r13		! source line 154
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	155,r13		! source line 155
	mov	"\0\0SE",r10
!   _temp_338 = _function_203_ThreadPrintShort
	set	_function_203_ThreadPrintShort,r1
	store	r1,[r14+-16]
!   _temp_339 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_338  sizeInBytes=4
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
	.word	_Label_340
	.word	0		! total size of parameters
	.word	24		! frame size = 24
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
	.word	0
_Label_340:
	.ascii	"PrintReadyList\0"
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
_Label_3365:
	push	r0
	sub	r1,1,r1
	bne	_Label_3365
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
!   _temp_345 = _P_Kernel_currentThread + 80
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,80,r1
	store	r1,[r14+-24]
!   Data Move: mainFun = *_temp_345  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_347 = _P_Kernel_currentThread + 84
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,84,r1
	store	r1,[r14+-16]
!   Data Move: _temp_346 = *_temp_347  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_346  sizeInBytes=4
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
!   _temp_348 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_348  sizeInBytes=4
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
	.word	_Label_349
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_350
	.word	-12
	.word	4
	.word	_Label_351
	.word	-16
	.word	4
	.word	_Label_352
	.word	-20
	.word	4
	.word	_Label_353
	.word	-24
	.word	4
	.word	_Label_354
	.word	-28
	.word	4
	.word	_Label_355
	.word	-32
	.word	4
	.word	0
_Label_349:
	.ascii	"ThreadStartMain\0"
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
	.byte	'?'
	.ascii	"_temp_346\0"
	.align
_Label_353:
	.byte	'?'
	.ascii	"_temp_345\0"
	.align
_Label_354:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_355:
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
_Label_3366:
	push	r0
	sub	r1,1,r1
	bne	_Label_3366
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
!   _temp_356 = &_P_Kernel_threadsToBeDestroyed
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
!   _temp_357 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_357  sizeInBytes=4
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
	.word	_Label_358
	.word	0		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_359
	.word	-12
	.word	4
	.word	_Label_360
	.word	-16
	.word	4
	.word	_Label_361
	.word	-20
	.word	4
	.word	0
_Label_358:
	.ascii	"ThreadFinish\0"
	.align
_Label_359:
	.byte	'?'
	.ascii	"_temp_357\0"
	.align
_Label_360:
	.byte	'?'
	.ascii	"_temp_356\0"
	.align
_Label_361:
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
_Label_3367:
	push	r0
	sub	r1,1,r1
	bne	_Label_3367
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
!   _temp_362 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_362  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	214,r13		! source line 214
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	215,r13		! source line 215
	mov	"\0\0IF",r10
!   if _P_Kernel_currentThread == 0 then goto _Label_364		(int)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_364
!	jmp	_Label_363
_Label_363:
! THEN...
	mov	216,r13		! source line 216
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_365 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_365  sizeInBytes=4
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
!   _temp_367 = _P_Kernel_currentThread + 72
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-24]
!   Data Move: _temp_366 = *_temp_367  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_366  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	217,r13		! source line 217
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_364:
! CALL STATEMENT...
!   _temp_368 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_368  sizeInBytes=4
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
!   _temp_369 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_369  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	221,r13		! source line 221
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_370 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_370  sizeInBytes=4
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
	.word	_Label_371
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_372
	.word	8
	.word	4
	.word	_Label_373
	.word	-12
	.word	4
	.word	_Label_374
	.word	-16
	.word	4
	.word	_Label_375
	.word	-20
	.word	4
	.word	_Label_376
	.word	-24
	.word	4
	.word	_Label_377
	.word	-28
	.word	4
	.word	_Label_378
	.word	-32
	.word	4
	.word	_Label_379
	.word	-36
	.word	4
	.word	_Label_380
	.word	-40
	.word	4
	.word	0
_Label_371:
	.ascii	"FatalError_ThreadVersion\0"
	.align
_Label_372:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_373:
	.byte	'?'
	.ascii	"_temp_370\0"
	.align
_Label_374:
	.byte	'?'
	.ascii	"_temp_369\0"
	.align
_Label_375:
	.byte	'?'
	.ascii	"_temp_368\0"
	.align
_Label_376:
	.byte	'?'
	.ascii	"_temp_367\0"
	.align
_Label_377:
	.byte	'?'
	.ascii	"_temp_366\0"
	.align
_Label_378:
	.byte	'?'
	.ascii	"_temp_365\0"
	.align
_Label_379:
	.byte	'?'
	.ascii	"_temp_362\0"
	.align
_Label_380:
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
_Label_3368:
	push	r0
	sub	r1,1,r1
	bne	_Label_3368
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
!   if newStatus != 1 then goto _Label_382		(int)
	load	[r14+8],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_382
!	jmp	_Label_381
_Label_381:
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
	jmp	_Label_383
_Label_382:
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
_Label_383:
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
	.word	_Label_384
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_385
	.word	8
	.word	4
	.word	_Label_386
	.word	-12
	.word	4
	.word	0
_Label_384:
	.ascii	"SetInterruptsTo\0"
	.align
_Label_385:
	.byte	'I'
	.ascii	"newStatus\0"
	.align
_Label_386:
	.byte	'I'
	.ascii	"oldStat\0"
	.align
! 
! ===============  FUNCTION ThreadPrintShort  ===============
! 
_function_203_ThreadPrintShort:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_203_ThreadPrintShort,r1
	push	r1
	mov	19,r1
_Label_3369:
	push	r0
	sub	r1,1,r1
	bne	_Label_3369
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
!   if t == 0 then goto _Label_390		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_390
!   _temp_389 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_391
_Label_390:
!   _temp_389 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_391:
!   if _temp_389 then goto _Label_388 else goto _Label_387
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_387
	jmp	_Label_388
_Label_387:
! THEN...
	mov	698,r13		! source line 698
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_392 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_392  sizeInBytes=4
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
_Label_388:
! CALL STATEMENT...
!   _temp_393 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_393  sizeInBytes=4
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
!   _temp_395 = t + 72
	load	[r14+8],r1
	add	r1,72,r1
	store	r1,[r14+-64]
!   Data Move: _temp_394 = *_temp_395  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_394  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	702,r13		! source line 702
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_396 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_396  sizeInBytes=4
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
!   _temp_405 = t + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-52]
!   Data Move: _temp_404 = *_temp_405  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   Branch to the right case label
	load	[r14+-56],r1
	cmp	r1,1
	be	_Label_399
	cmp	r1,2
	be	_Label_400
	cmp	r1,3
	be	_Label_401
	cmp	r1,4
	be	_Label_402
	cmp	r1,5
	be	_Label_403
	jmp	_Label_397
! CASE 1...
_Label_399:
! CALL STATEMENT...
!   _temp_406 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_406  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	706,r13		! source line 706
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	707,r13		! source line 707
	mov	"\0\0BR",r10
	jmp	_Label_398
! CASE 2...
_Label_400:
! CALL STATEMENT...
!   _temp_407 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_407  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	709,r13		! source line 709
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	710,r13		! source line 710
	mov	"\0\0BR",r10
	jmp	_Label_398
! CASE 3...
_Label_401:
! CALL STATEMENT...
!   _temp_408 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_408  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	712,r13		! source line 712
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	713,r13		! source line 713
	mov	"\0\0BR",r10
	jmp	_Label_398
! CASE 4...
_Label_402:
! CALL STATEMENT...
!   _temp_409 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_409  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	715,r13		! source line 715
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	716,r13		! source line 716
	mov	"\0\0BR",r10
	jmp	_Label_398
! CASE 5...
_Label_403:
! CALL STATEMENT...
!   _temp_410 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_410  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	718,r13		! source line 718
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	719,r13		! source line 719
	mov	"\0\0BR",r10
	jmp	_Label_398
! DEFAULT CASE...
_Label_397:
! CALL STATEMENT...
!   _temp_411 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_411  sizeInBytes=4
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
_Label_398:
! CALL STATEMENT...
!   _temp_412 = _StringConst_24
	set	_StringConst_24,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_412  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	723,r13		! source line 723
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_413 = t		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_413  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	724,r13		! source line 724
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_414 = _StringConst_25
	set	_StringConst_25,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_414  sizeInBytes=4
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
_RoutineDescriptor__function_203_ThreadPrintShort:
	.word	_sourceFileName
	.word	_Label_415
	.word	4		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_416
	.word	8
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
	.word	_Label_423
	.word	-40
	.word	4
	.word	_Label_424
	.word	-44
	.word	4
	.word	_Label_425
	.word	-48
	.word	4
	.word	_Label_426
	.word	-52
	.word	4
	.word	_Label_427
	.word	-56
	.word	4
	.word	_Label_428
	.word	-60
	.word	4
	.word	_Label_429
	.word	-64
	.word	4
	.word	_Label_430
	.word	-68
	.word	4
	.word	_Label_431
	.word	-72
	.word	4
	.word	_Label_432
	.word	-76
	.word	4
	.word	_Label_433
	.word	-9
	.word	1
	.word	_Label_434
	.word	-80
	.word	4
	.word	0
_Label_415:
	.ascii	"ThreadPrintShort\0"
	.align
_Label_416:
	.byte	'P'
	.ascii	"t\0"
	.align
_Label_417:
	.byte	'?'
	.ascii	"_temp_414\0"
	.align
_Label_418:
	.byte	'?'
	.ascii	"_temp_413\0"
	.align
_Label_419:
	.byte	'?'
	.ascii	"_temp_412\0"
	.align
_Label_420:
	.byte	'?'
	.ascii	"_temp_411\0"
	.align
_Label_421:
	.byte	'?'
	.ascii	"_temp_410\0"
	.align
_Label_422:
	.byte	'?'
	.ascii	"_temp_409\0"
	.align
_Label_423:
	.byte	'?'
	.ascii	"_temp_408\0"
	.align
_Label_424:
	.byte	'?'
	.ascii	"_temp_407\0"
	.align
_Label_425:
	.byte	'?'
	.ascii	"_temp_406\0"
	.align
_Label_426:
	.byte	'?'
	.ascii	"_temp_405\0"
	.align
_Label_427:
	.byte	'?'
	.ascii	"_temp_404\0"
	.align
_Label_428:
	.byte	'?'
	.ascii	"_temp_396\0"
	.align
_Label_429:
	.byte	'?'
	.ascii	"_temp_395\0"
	.align
_Label_430:
	.byte	'?'
	.ascii	"_temp_394\0"
	.align
_Label_431:
	.byte	'?'
	.ascii	"_temp_393\0"
	.align
_Label_432:
	.byte	'?'
	.ascii	"_temp_392\0"
	.align
_Label_433:
	.byte	'C'
	.ascii	"_temp_389\0"
	.align
_Label_434:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION PrintObjectAddr  ===============
! 
_function_202_PrintObjectAddr:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_202_PrintObjectAddr,r1
	push	r1
	mov	2,r1
_Label_3370:
	push	r0
	sub	r1,1,r1
	bne	_Label_3370
	mov	1051,r13		! source line 1051
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_435 = p		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_435  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1055,r13		! source line 1055
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	1056,r13		! source line 1056
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	1056,r13		! source line 1056
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_202_PrintObjectAddr:
	.word	_sourceFileName
	.word	_Label_436
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_437
	.word	8
	.word	4
	.word	_Label_438
	.word	-12
	.word	4
	.word	0
_Label_436:
	.ascii	"PrintObjectAddr\0"
	.align
_Label_437:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_438:
	.byte	'?'
	.ascii	"_temp_435\0"
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
	mov	19,r1
_Label_3371:
	push	r0
	sub	r1,1,r1
	bne	_Label_3371
	mov	1061,r13		! source line 1061
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1068,r13		! source line 1068
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_440 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-68]
!   Data Move: _temp_439 = *_temp_440  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_439) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_441 = _temp_439 + 28
	load	[r14+-72],r1
	add	r1,28,r1
	store	r1,[r14+-64]
!   Data Move: *_temp_441 = exitStatus  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r14+-64],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1069,r13		! source line 1069
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1069,r13		! source line 1069
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-76]
! ASSIGNMENT STATEMENT...
	mov	1070,r13		! source line 1070
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_442 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-60]
!   Data Move: *_temp_442 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-60],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1071,r13		! source line 1071
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStatus  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	1071,r13		! source line 1071
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-76]
! SEND STATEMENT...
	mov	1072,r13		! source line 1072
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_445 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-48]
!   Data Move: _temp_444 = *_temp_445  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_444) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_446 = _temp_444 + 32
	load	[r14+-52],r1
	add	r1,32,r1
	store	r1,[r14+-44]
!   _temp_443 = _temp_446		(4 bytes)
	load	[r14+-44],r1
	store	r1,[r14+-56]
!   _temp_447 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_443  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! SEND STATEMENT...
	mov	1073,r13		! source line 1073
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_449 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-32]
!   Data Move: _temp_448 = *_temp_449  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   _temp_450 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_448  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message TurnIntoZombie
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1074,r13		! source line 1074
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_452 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_451 = *_temp_452  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_451) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_453 = _temp_451 + 24
	load	[r14+-24],r1
	add	r1,24,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_453 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-16],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1075,r13		! source line 1075
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_454 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-12]
!   Data Move: *_temp_454 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-12],r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	1076,r13		! source line 1076
	mov	"\0\0CA",r10
	call	_P_Kernel_ThreadFinish
! RETURN STATEMENT...
	mov	1076,r13		! source line 1076
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ProcessFinish:
	.word	_sourceFileName
	.word	_Label_455
	.word	4		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_456
	.word	8
	.word	4
	.word	_Label_457
	.word	-12
	.word	4
	.word	_Label_458
	.word	-16
	.word	4
	.word	_Label_459
	.word	-20
	.word	4
	.word	_Label_460
	.word	-24
	.word	4
	.word	_Label_461
	.word	-28
	.word	4
	.word	_Label_462
	.word	-32
	.word	4
	.word	_Label_463
	.word	-36
	.word	4
	.word	_Label_464
	.word	-40
	.word	4
	.word	_Label_465
	.word	-44
	.word	4
	.word	_Label_466
	.word	-48
	.word	4
	.word	_Label_467
	.word	-52
	.word	4
	.word	_Label_468
	.word	-56
	.word	4
	.word	_Label_469
	.word	-60
	.word	4
	.word	_Label_470
	.word	-64
	.word	4
	.word	_Label_471
	.word	-68
	.word	4
	.word	_Label_472
	.word	-72
	.word	4
	.word	_Label_473
	.word	-76
	.word	4
	.word	0
_Label_455:
	.ascii	"ProcessFinish\0"
	.align
_Label_456:
	.byte	'I'
	.ascii	"exitStatus\0"
	.align
_Label_457:
	.byte	'?'
	.ascii	"_temp_454\0"
	.align
_Label_458:
	.byte	'?'
	.ascii	"_temp_453\0"
	.align
_Label_459:
	.byte	'?'
	.ascii	"_temp_452\0"
	.align
_Label_460:
	.byte	'?'
	.ascii	"_temp_451\0"
	.align
_Label_461:
	.byte	'?'
	.ascii	"_temp_450\0"
	.align
_Label_462:
	.byte	'?'
	.ascii	"_temp_449\0"
	.align
_Label_463:
	.byte	'?'
	.ascii	"_temp_448\0"
	.align
_Label_464:
	.byte	'?'
	.ascii	"_temp_447\0"
	.align
_Label_465:
	.byte	'?'
	.ascii	"_temp_446\0"
	.align
_Label_466:
	.byte	'?'
	.ascii	"_temp_445\0"
	.align
_Label_467:
	.byte	'?'
	.ascii	"_temp_444\0"
	.align
_Label_468:
	.byte	'?'
	.ascii	"_temp_443\0"
	.align
_Label_469:
	.byte	'?'
	.ascii	"_temp_442\0"
	.align
_Label_470:
	.byte	'?'
	.ascii	"_temp_441\0"
	.align
_Label_471:
	.byte	'?'
	.ascii	"_temp_440\0"
	.align
_Label_472:
	.byte	'?'
	.ascii	"_temp_439\0"
	.align
_Label_473:
	.byte	'I'
	.ascii	"oldIntStatus\0"
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
_Label_3372:
	push	r0
	sub	r1,1,r1
	bne	_Label_3372
	mov	1568,r13		! source line 1568
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1578,r13		! source line 1578
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1580,r13		! source line 1580
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
	mov	1581,r13		! source line 1581
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1581,r13		! source line 1581
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
	.word	_Label_474
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_474:
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
_Label_3373:
	push	r0
	sub	r1,1,r1
	bne	_Label_3373
	mov	1586,r13		! source line 1586
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1598,r13		! source line 1598
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! IF STATEMENT...
	mov	1600,r13		! source line 1600
	mov	"\0\0IF",r10
!   _temp_478 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   _temp_479 = _temp_478 + 24
	load	[r14+-28],r1
	add	r1,24,r1
	store	r1,[r14+-24]
!   Data Move: _temp_477 = *_temp_479  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_477 == 0 then goto _Label_476		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_476
!	jmp	_Label_475
_Label_475:
! THEN...
	mov	1601,r13		! source line 1601
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1601,r13		! source line 1601
	mov	"\0\0SE",r10
!   _temp_481 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-16]
!   _temp_482 = _temp_481 + 24
	load	[r14+-16],r1
	add	r1,24,r1
	store	r1,[r14+-12]
!   Data Move: _temp_480 = *_temp_482  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_480) then goto _runtimeErrorNullPointer
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
_Label_476:
! RETURN STATEMENT...
	mov	1600,r13		! source line 1600
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
	.word	_Label_483
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_484
	.word	-12
	.word	4
	.word	_Label_485
	.word	-16
	.word	4
	.word	_Label_486
	.word	-20
	.word	4
	.word	_Label_487
	.word	-24
	.word	4
	.word	_Label_488
	.word	-28
	.word	4
	.word	_Label_489
	.word	-32
	.word	4
	.word	0
_Label_483:
	.ascii	"DiskInterruptHandler\0"
	.align
_Label_484:
	.byte	'?'
	.ascii	"_temp_482\0"
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
	.ascii	"_temp_478\0"
	.align
_Label_489:
	.byte	'?'
	.ascii	"_temp_477\0"
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
	mov	1608,r13		! source line 1608
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1617,r13		! source line 1617
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1617,r13		! source line 1617
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
	.word	_Label_490
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_490:
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
_Label_3374:
	push	r0
	sub	r1,1,r1
	bne	_Label_3374
	mov	1622,r13		! source line 1622
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1628,r13		! source line 1628
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_491 = _StringConst_26
	set	_StringConst_26,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_491  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1629,r13		! source line 1629
	mov	"\0\0CA",r10
	call	_function_201_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1629,r13		! source line 1629
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
	.word	_Label_492
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_493
	.word	-12
	.word	4
	.word	0
_Label_492:
	.ascii	"IllegalInstructionHandler\0"
	.align
_Label_493:
	.byte	'?'
	.ascii	"_temp_491\0"
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
_Label_3375:
	push	r0
	sub	r1,1,r1
	bne	_Label_3375
	mov	1634,r13		! source line 1634
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1640,r13		! source line 1640
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_494 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_494  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1641,r13		! source line 1641
	mov	"\0\0CA",r10
	call	_function_201_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1641,r13		! source line 1641
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
	.word	_Label_495
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_496
	.word	-12
	.word	4
	.word	0
_Label_495:
	.ascii	"ArithmeticExceptionHandler\0"
	.align
_Label_496:
	.byte	'?'
	.ascii	"_temp_494\0"
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
_Label_3376:
	push	r0
	sub	r1,1,r1
	bne	_Label_3376
	mov	1646,r13		! source line 1646
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1652,r13		! source line 1652
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_497 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_497  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1653,r13		! source line 1653
	mov	"\0\0CA",r10
	call	_function_201_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1653,r13		! source line 1653
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
	.word	_Label_498
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_499
	.word	-12
	.word	4
	.word	0
_Label_498:
	.ascii	"AddressExceptionHandler\0"
	.align
_Label_499:
	.byte	'?'
	.ascii	"_temp_497\0"
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
_Label_3377:
	push	r0
	sub	r1,1,r1
	bne	_Label_3377
	mov	1658,r13		! source line 1658
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1664,r13		! source line 1664
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_500 = _StringConst_29
	set	_StringConst_29,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_500  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1665,r13		! source line 1665
	mov	"\0\0CA",r10
	call	_function_201_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1665,r13		! source line 1665
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
	.word	_Label_501
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_502
	.word	-12
	.word	4
	.word	0
_Label_501:
	.ascii	"PageInvalidExceptionHandler\0"
	.align
_Label_502:
	.byte	'?'
	.ascii	"_temp_500\0"
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
_Label_3378:
	push	r0
	sub	r1,1,r1
	bne	_Label_3378
	mov	1670,r13		! source line 1670
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1676,r13		! source line 1676
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_503 = _StringConst_30
	set	_StringConst_30,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_503  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1677,r13		! source line 1677
	mov	"\0\0CA",r10
	call	_function_201_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1677,r13		! source line 1677
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
	.word	_Label_504
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_505
	.word	-12
	.word	4
	.word	0
_Label_504:
	.ascii	"PageReadonlyExceptionHandler\0"
	.align
_Label_505:
	.byte	'?'
	.ascii	"_temp_503\0"
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
_Label_3379:
	push	r0
	sub	r1,1,r1
	bne	_Label_3379
	mov	1682,r13		! source line 1682
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1688,r13		! source line 1688
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_506 = _StringConst_31
	set	_StringConst_31,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_506  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1689,r13		! source line 1689
	mov	"\0\0CA",r10
	call	_function_201_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1689,r13		! source line 1689
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
	.word	_Label_507
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_508
	.word	-12
	.word	4
	.word	0
_Label_507:
	.ascii	"PrivilegedInstructionHandler\0"
	.align
_Label_508:
	.byte	'?'
	.ascii	"_temp_506\0"
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
_Label_3380:
	push	r0
	sub	r1,1,r1
	bne	_Label_3380
	mov	1694,r13		! source line 1694
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1700,r13		! source line 1700
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_509 = _StringConst_32
	set	_StringConst_32,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_509  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1701,r13		! source line 1701
	mov	"\0\0CA",r10
	call	_function_201_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1701,r13		! source line 1701
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
	.word	_Label_510
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_511
	.word	-12
	.word	4
	.word	0
_Label_510:
	.ascii	"AlignmentExceptionHandler\0"
	.align
_Label_511:
	.byte	'?'
	.ascii	"_temp_509\0"
	.align
! 
! ===============  FUNCTION ErrorInUserProcess  ===============
! 
_function_201_ErrorInUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_201_ErrorInUserProcess,r1
	push	r1
	mov	8,r1
_Label_3381:
	push	r0
	sub	r1,1,r1
	bne	_Label_3381
	mov	1706,r13		! source line 1706
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_512 = _StringConst_33
	set	_StringConst_33,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_512  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1711,r13		! source line 1711
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1712,r13		! source line 1712
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_513 = _StringConst_34
	set	_StringConst_34,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_513  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1713,r13		! source line 1713
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1716,r13		! source line 1716
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_517 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_516 = *_temp_517  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if _temp_516 == 0 then goto _Label_515		(int)
	load	[r14+-28],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_515
!	jmp	_Label_514
_Label_514:
! THEN...
	mov	1717,r13		! source line 1717
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1717,r13		! source line 1717
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_519 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-16]
!   Data Move: _temp_518 = *_temp_519  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_518) then goto _runtimeErrorNullPointer
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
	jmp	_Label_520
_Label_515:
! ELSE...
	mov	1719,r13		! source line 1719
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_521 = _StringConst_35
	set	_StringConst_35,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_521  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1719,r13		! source line 1719
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_520:
! SEND STATEMENT...
	mov	1721,r13		! source line 1721
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
	mov	1727,r13		! source line 1727
	mov	"\0\0CA",r10
	call	_P_Kernel_ProcessFinish
! RETURN STATEMENT...
	mov	1727,r13		! source line 1727
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_201_ErrorInUserProcess:
	.word	_sourceFileName
	.word	_Label_522
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_523
	.word	8
	.word	4
	.word	_Label_524
	.word	-12
	.word	4
	.word	_Label_525
	.word	-16
	.word	4
	.word	_Label_526
	.word	-20
	.word	4
	.word	_Label_527
	.word	-24
	.word	4
	.word	_Label_528
	.word	-28
	.word	4
	.word	_Label_529
	.word	-32
	.word	4
	.word	_Label_530
	.word	-36
	.word	4
	.word	0
_Label_522:
	.ascii	"ErrorInUserProcess\0"
	.align
_Label_523:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_524:
	.byte	'?'
	.ascii	"_temp_521\0"
	.align
_Label_525:
	.byte	'?'
	.ascii	"_temp_519\0"
	.align
_Label_526:
	.byte	'?'
	.ascii	"_temp_518\0"
	.align
_Label_527:
	.byte	'?'
	.ascii	"_temp_517\0"
	.align
_Label_528:
	.byte	'?'
	.ascii	"_temp_516\0"
	.align
_Label_529:
	.byte	'?'
	.ascii	"_temp_513\0"
	.align
_Label_530:
	.byte	'?'
	.ascii	"_temp_512\0"
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
_Label_3382:
	push	r0
	sub	r1,1,r1
	bne	_Label_3382
	mov	1732,r13		! source line 1732
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1739,r13		! source line 1739
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SWITCH STATEMENT (using an indirect jump table)...
	mov	1753,r13		! source line 1753
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
	load	[r14+8],r1
!   If syscallCodeNum is not within 16-bits goto default code
	srl	r1,15,r2
	cmp	r2,0
	be	_Label_3383
	set	0x1ffff,r3
	cmp	r2,r3
	bne	_Label_531
_Label_3383:
!   If syscallCodeNum is < 1 (==smallestCaseValue) goto default code
	cmp	r1,1
	bl	_Label_531
!   If syscallCodeNum is > 12 (==greatestCaseValue) goto default code
	cmp	r1,12
	bg	_Label_531
!   r1 = (r1-lowValue) * 4 + jumpTableAddr
	sub	r1,1,r1
	sll	r1,2,r1
	set	_Label_545,r2
	add	r1,r2,r1
!   Jump indirect through the jump table
	jmp	r1
!   Jump table
_Label_545:
	jmp	_Label_537	! 1:	
	jmp	_Label_544	! 2:	
	jmp	_Label_534	! 3:	
	jmp	_Label_533	! 4:	
	jmp	_Label_536	! 5:	
	jmp	_Label_535	! 6:	
	jmp	_Label_538	! 7:	
	jmp	_Label_539	! 8:	
	jmp	_Label_540	! 9:	
	jmp	_Label_541	! 10:	
	jmp	_Label_542	! 11:	
	jmp	_Label_543	! 12:	
! CASE 4...
_Label_533:
! RETURN STATEMENT...
	mov	1755,r13		! source line 1755
	mov	"\0\0RE",r10
!   Call the function
	mov	1755,r13		! source line 1755
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Fork
!   Retrieve Result: targetName=_temp_546  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
!   ReturnResult: _temp_546  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 3...
_Label_534:
! CALL STATEMENT...
!   Call the function
	mov	1757,r13		! source line 1757
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Yield
! RETURN STATEMENT...
	mov	1758,r13		! source line 1758
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 6...
_Label_535:
! RETURN STATEMENT...
	mov	1760,r13		! source line 1760
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1760,r13		! source line 1760
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exec
!   Retrieve Result: targetName=_temp_547  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
!   ReturnResult: _temp_547  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 5...
_Label_536:
! RETURN STATEMENT...
	mov	1762,r13		! source line 1762
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1762,r13		! source line 1762
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Join
!   Retrieve Result: targetName=_temp_548  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   ReturnResult: _temp_548  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 1...
_Label_537:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1764,r13		! source line 1764
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exit
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
! CASE 7...
_Label_538:
! RETURN STATEMENT...
	mov	1767,r13		! source line 1767
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1767,r13		! source line 1767
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Create
!   Retrieve Result: targetName=_temp_549  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
!   ReturnResult: _temp_549  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 8...
_Label_539:
! RETURN STATEMENT...
	mov	1769,r13		! source line 1769
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1769,r13		! source line 1769
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Open
!   Retrieve Result: targetName=_temp_550  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
!   ReturnResult: _temp_550  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 9...
_Label_540:
! RETURN STATEMENT...
	mov	1771,r13		! source line 1771
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
	mov	1771,r13		! source line 1771
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Read
!   Retrieve Result: targetName=_temp_551  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_551  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 10...
_Label_541:
! RETURN STATEMENT...
	mov	1773,r13		! source line 1773
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
	mov	1773,r13		! source line 1773
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Write
!   Retrieve Result: targetName=_temp_552  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_552  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 11...
_Label_542:
! RETURN STATEMENT...
	mov	1775,r13		! source line 1775
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1775,r13		! source line 1775
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Seek
!   Retrieve Result: targetName=_temp_553  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   ReturnResult: _temp_553  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 12...
_Label_543:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1777,r13		! source line 1777
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Close
! RETURN STATEMENT...
	mov	1778,r13		! source line 1778
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_544:
! CALL STATEMENT...
!   Call the function
	mov	1780,r13		! source line 1780
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Shutdown
! RETURN STATEMENT...
	mov	1781,r13		! source line 1781
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! DEFAULT CASE...
_Label_531:
! CALL STATEMENT...
!   _temp_554 = _StringConst_36
	set	_StringConst_36,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_554  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1783,r13		! source line 1783
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=syscallCodeNum  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1784,r13		! source line 1784
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1785,r13		! source line 1785
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_555 = _StringConst_37
	set	_StringConst_37,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_555  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1786,r13		! source line 1786
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_532:
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
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_SyscallTrapHandler:
	.word	_sourceFileName
	.word	_Label_556
	.word	20		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_557
	.word	8
	.word	4
	.word	_Label_558
	.word	12
	.word	4
	.word	_Label_559
	.word	16
	.word	4
	.word	_Label_560
	.word	20
	.word	4
	.word	_Label_561
	.word	24
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
	.word	_Label_569
	.word	-40
	.word	4
	.word	_Label_570
	.word	-44
	.word	4
	.word	_Label_571
	.word	-48
	.word	4
	.word	0
_Label_556:
	.ascii	"SyscallTrapHandler\0"
	.align
_Label_557:
	.byte	'I'
	.ascii	"syscallCodeNum\0"
	.align
_Label_558:
	.byte	'I'
	.ascii	"arg1\0"
	.align
_Label_559:
	.byte	'I'
	.ascii	"arg2\0"
	.align
_Label_560:
	.byte	'I'
	.ascii	"arg3\0"
	.align
_Label_561:
	.byte	'I'
	.ascii	"arg4\0"
	.align
_Label_562:
	.byte	'?'
	.ascii	"_temp_555\0"
	.align
_Label_563:
	.byte	'?'
	.ascii	"_temp_554\0"
	.align
_Label_564:
	.byte	'?'
	.ascii	"_temp_553\0"
	.align
_Label_565:
	.byte	'?'
	.ascii	"_temp_552\0"
	.align
_Label_566:
	.byte	'?'
	.ascii	"_temp_551\0"
	.align
_Label_567:
	.byte	'?'
	.ascii	"_temp_550\0"
	.align
_Label_568:
	.byte	'?'
	.ascii	"_temp_549\0"
	.align
_Label_569:
	.byte	'?'
	.ascii	"_temp_548\0"
	.align
_Label_570:
	.byte	'?'
	.ascii	"_temp_547\0"
	.align
_Label_571:
	.byte	'?'
	.ascii	"_temp_546\0"
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
_Label_3384:
	push	r0
	sub	r1,1,r1
	bne	_Label_3384
	mov	1793,r13		! source line 1793
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=returnStatus  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1794,r13		! source line 1794
	mov	"\0\0CA",r10
	call	_P_Kernel_ProcessFinish
! RETURN STATEMENT...
	mov	1794,r13		! source line 1794
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
	.word	_Label_572
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_573
	.word	8
	.word	4
	.word	0
_Label_572:
	.ascii	"Handle_Sys_Exit\0"
	.align
_Label_573:
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
	mov	1799,r13		! source line 1799
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1799,r13		! source line 1799
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
	.word	_Label_574
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_574:
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
_Label_3385:
	push	r0
	sub	r1,1,r1
	bne	_Label_3385
	mov	1805,r13		! source line 1805
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1806,r13		! source line 1806
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
	mov	1806,r13		! source line 1806
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
	.word	_Label_575
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_575:
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
	mov	55,r1
_Label_3386:
	push	r0
	sub	r1,1,r1
	bne	_Label_3386
	mov	1811,r13		! source line 1811
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1820,r13		! source line 1820
	mov	"\0\0AS",r10
	mov	1820,r13		! source line 1820
	mov	"\0\0SE",r10
!   _temp_576 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-196]
!   Send message GetANewThread
	load	[r14+-196],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=newThread  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-200]
! ASSIGNMENT STATEMENT...
	mov	1821,r13		! source line 1821
	mov	"\0\0AS",r10
	mov	1821,r13		! source line 1821
	mov	"\0\0SE",r10
!   _temp_577 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-192]
!   Send message GetANewProcess
	load	[r14+-192],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=newPCB  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-204]
! ASSIGNMENT STATEMENT...
	mov	1822,r13		! source line 1822
	mov	"\0\0AS",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-204],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_578 = newPCB + 24
	load	[r14+-204],r1
	add	r1,24,r1
	store	r1,[r14+-188]
!   Data Move: *_temp_578 = newThread  (sizeInBytes=4)
	load	[r14+-200],r1
	load	[r14+-188],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1823,r13		! source line 1823
	mov	"\0\0AS",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-204],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_579 = newPCB + 16
	load	[r14+-204],r1
	add	r1,16,r1
	store	r1,[r14+-184]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_582 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-172]
!   Data Move: _temp_581 = *_temp_582  (sizeInBytes=4)
	load	[r14+-172],r1
	load	[r1],r1
	store	r1,[r14+-176]
!   if intIsZero (_temp_581) then goto _runtimeErrorNullPointer
	load	[r14+-176],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_583 = _temp_581 + 12
	load	[r14+-176],r1
	add	r1,12,r1
	store	r1,[r14+-168]
!   Data Move: _temp_580 = *_temp_583  (sizeInBytes=4)
	load	[r14+-168],r1
	load	[r1],r1
	store	r1,[r14+-180]
!   Data Move: *_temp_579 = _temp_580  (sizeInBytes=4)
	load	[r14+-180],r1
	load	[r14+-184],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1824,r13		! source line 1824
	mov	"\0\0AS",r10
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-200],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_584 = newThread + 76
	load	[r14+-200],r1
	add	r1,76,r1
	store	r1,[r14+-164]
!   Data Move: *_temp_584 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-164],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1825,r13		! source line 1825
	mov	"\0\0AS",r10
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-200],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_585 = newThread + 4160
	load	[r14+-200],r1
	add	r1,4160,r1
	store	r1,[r14+-160]
!   Data Move: *_temp_585 = newPCB  (sizeInBytes=4)
	load	[r14+-204],r1
	load	[r14+-160],r2
	store	r1,[r2]
! CALL STATEMENT...
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-200],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_587 = newThread + 4096
	load	[r14+-200],r1
	add	r1,4096,r1
	store	r1,[r14+-152]
!   Move address of _temp_587 [0 ] into _temp_588
!     make sure index expr is >= 0
	mov	0,r2
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
!   _temp_586 = _temp_588		(4 bytes)
	load	[r14+-148],r1
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_586  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	1828,r13		! source line 1828
	mov	"\0\0CE",r10
	call	SaveUserRegs
! ASSIGNMENT STATEMENT...
	mov	1830,r13		! source line 1830
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	1830,r13		! source line 1830
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-208]
! ASSIGNMENT STATEMENT...
	mov	1833,r13		! source line 1833
	mov	"\0\0AS",r10
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-200],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_589 = newThread + 68
	load	[r14+-200],r1
	add	r1,68,r1
	store	r1,[r14+-144]
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-200],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_591 = newThread + 88
	load	[r14+-200],r1
	add	r1,88,r1
	store	r1,[r14+-136]
!   Move address of _temp_591 [999 ] into _temp_592
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
!   _temp_590 = _temp_592		(4 bytes)
	load	[r14+-132],r1
	store	r1,[r14+-140]
!   Data Move: *_temp_589 = _temp_590  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r14+-144],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1835,r13		! source line 1835
	mov	"\0\0SE",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-204],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_594 = newPCB + 32
	load	[r14+-204],r1
	add	r1,32,r1
	store	r1,[r14+-124]
!   _temp_593 = _temp_594		(4 bytes)
	load	[r14+-124],r1
	store	r1,[r14+-128]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_597 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-112]
!   Data Move: _temp_596 = *_temp_597  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if intIsZero (_temp_596) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_598 = _temp_596 + 32
	load	[r14+-116],r1
	add	r1,32,r1
	store	r1,[r14+-108]
!   _temp_599 = _temp_598 + 4
	load	[r14+-108],r1
	add	r1,4,r1
	store	r1,[r14+-104]
!   Data Move: _temp_595 = *_temp_599  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-120]
!   _temp_600 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-100]
!   Prepare Argument: offset=12  value=_temp_593  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_595  sizeInBytes=4
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
	mov	1836,r13		! source line 1836
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_605 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-96]
!   Calculate and save the FOR-LOOP ending value
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_609 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-80]
!   Data Move: _temp_608 = *_temp_609  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if intIsZero (_temp_608) then goto _runtimeErrorNullPointer
	load	[r14+-84],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_610 = _temp_608 + 32
	load	[r14+-84],r1
	add	r1,32,r1
	store	r1,[r14+-76]
!   _temp_611 = _temp_610 + 4
	load	[r14+-76],r1
	add	r1,4,r1
	store	r1,[r14+-72]
!   Data Move: _temp_607 = *_temp_611  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-88]
!   _temp_606 = _temp_607 - 1		(int)
	load	[r14+-88],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-92]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_605  (sizeInBytes=4)
	load	[r14+-96],r1
	store	r1,[r14+-212]
_Label_601:
!   Perform the FOR-LOOP termination test
!   if i > _temp_606 then goto _Label_604		
	load	[r14+-212],r1
	load	[r14+-92],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_604
_Label_602:
	mov	1836,r13		! source line 1836
	mov	"\0\0FB",r10
! CALL STATEMENT...
	mov	1837,r13		! source line 1837
	mov	"\0\0SE",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-204],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_613 = newPCB + 32
	load	[r14+-204],r1
	add	r1,32,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_612  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-68]
	mov	1837,r13		! source line 1837
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_616 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-52]
!   Data Move: _temp_615 = *_temp_616  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_615) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_617 = _temp_615 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_614  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_612  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_614  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=8192  sizeInBytes=4
	mov	8192,r1
	store	r1,[r15+8]
!   Call the function
	mov	1837,r13		! source line 1837
	mov	"\0\0CE",r10
	call	MemoryCopy
! IF STATEMENT...
	mov	1838,r13		! source line 1838
	mov	"\0\0IF",r10
	mov	1838,r13		! source line 1838
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_622 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-40]
!   Data Move: _temp_621 = *_temp_622  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_621) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_623 = _temp_621 + 32
	load	[r14+-44],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_620  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   _temp_624 = _temp_620 XOR 0		(bool)
	loadb	[r14+-10],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_624 then goto _Label_619 else goto _Label_618
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_618
	jmp	_Label_619
_Label_618:
! THEN...
	mov	1839,r13		! source line 1839
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1839,r13		! source line 1839
	mov	"\0\0SE",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-204],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_625 = newPCB + 32
	load	[r14+-204],r1
	add	r1,32,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+4]
!   Send message ClearWritable
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,64,r2
	call	r2
	jmp	_Label_626
_Label_619:
! ELSE...
	mov	1841,r13		! source line 1841
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	1841,r13		! source line 1841
	mov	"\0\0SE",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-204],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_627 = newPCB + 32
	load	[r14+-204],r1
	add	r1,32,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-212],r1
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
_Label_626:
!   Increment the FOR-LOOP index variable and jump back
_Label_603:
!   i = i + 1
	load	[r14+-212],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-212]
	jmp	_Label_601
! END FOR
_Label_604:
! ASSIGNMENT STATEMENT...
	mov	1846,r13		! source line 1846
	mov	"\0\0AS",r10
!   Call the function
	mov	1846,r13		! source line 1846
	mov	"\0\0CE",r10
	call	GetOldUserPCFromSystemStack
!   Retrieve Result: targetName=oldUserPC  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-216]
! SEND STATEMENT...
	mov	1847,r13		! source line 1847
	mov	"\0\0SE",r10
!   _temp_628 = _function_200_ResumeChildAfterFork
	set	_function_200_ResumeChildAfterFork,r1
	store	r1,[r14+-24]
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-200],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_628  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=oldUserPC  sizeInBytes=4
	load	[r14+-216],r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-200],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	1849,r13		! source line 1849
	mov	"\0\0RE",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-204],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_630 = newPCB + 12
	load	[r14+-204],r1
	add	r1,12,r1
	store	r1,[r14+-16]
!   Data Move: _temp_629 = *_temp_630  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   ReturnResult: _temp_629  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+8]
	add	r15,224,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Fork:
	.word	_sourceFileName
	.word	_Label_631
	.word	0		! total size of parameters
	.word	220		! frame size = 220
	.word	_Label_632
	.word	-16
	.word	4
	.word	_Label_633
	.word	-20
	.word	4
	.word	_Label_634
	.word	-24
	.word	4
	.word	_Label_635
	.word	-28
	.word	4
	.word	_Label_636
	.word	-32
	.word	4
	.word	_Label_637
	.word	-9
	.word	1
	.word	_Label_638
	.word	-36
	.word	4
	.word	_Label_639
	.word	-40
	.word	4
	.word	_Label_640
	.word	-44
	.word	4
	.word	_Label_641
	.word	-10
	.word	1
	.word	_Label_642
	.word	-48
	.word	4
	.word	_Label_643
	.word	-52
	.word	4
	.word	_Label_644
	.word	-56
	.word	4
	.word	_Label_645
	.word	-60
	.word	4
	.word	_Label_646
	.word	-64
	.word	4
	.word	_Label_647
	.word	-68
	.word	4
	.word	_Label_648
	.word	-72
	.word	4
	.word	_Label_649
	.word	-76
	.word	4
	.word	_Label_650
	.word	-80
	.word	4
	.word	_Label_651
	.word	-84
	.word	4
	.word	_Label_652
	.word	-88
	.word	4
	.word	_Label_653
	.word	-92
	.word	4
	.word	_Label_654
	.word	-96
	.word	4
	.word	_Label_655
	.word	-100
	.word	4
	.word	_Label_656
	.word	-104
	.word	4
	.word	_Label_657
	.word	-108
	.word	4
	.word	_Label_658
	.word	-112
	.word	4
	.word	_Label_659
	.word	-116
	.word	4
	.word	_Label_660
	.word	-120
	.word	4
	.word	_Label_661
	.word	-124
	.word	4
	.word	_Label_662
	.word	-128
	.word	4
	.word	_Label_663
	.word	-132
	.word	4
	.word	_Label_664
	.word	-136
	.word	4
	.word	_Label_665
	.word	-140
	.word	4
	.word	_Label_666
	.word	-144
	.word	4
	.word	_Label_667
	.word	-148
	.word	4
	.word	_Label_668
	.word	-152
	.word	4
	.word	_Label_669
	.word	-156
	.word	4
	.word	_Label_670
	.word	-160
	.word	4
	.word	_Label_671
	.word	-164
	.word	4
	.word	_Label_672
	.word	-168
	.word	4
	.word	_Label_673
	.word	-172
	.word	4
	.word	_Label_674
	.word	-176
	.word	4
	.word	_Label_675
	.word	-180
	.word	4
	.word	_Label_676
	.word	-184
	.word	4
	.word	_Label_677
	.word	-188
	.word	4
	.word	_Label_678
	.word	-192
	.word	4
	.word	_Label_679
	.word	-196
	.word	4
	.word	_Label_680
	.word	-200
	.word	4
	.word	_Label_681
	.word	-204
	.word	4
	.word	_Label_682
	.word	-208
	.word	4
	.word	_Label_683
	.word	-212
	.word	4
	.word	_Label_684
	.word	-216
	.word	4
	.word	0
_Label_631:
	.ascii	"Handle_Sys_Fork\0"
	.align
_Label_632:
	.byte	'?'
	.ascii	"_temp_630\0"
	.align
_Label_633:
	.byte	'?'
	.ascii	"_temp_629\0"
	.align
_Label_634:
	.byte	'?'
	.ascii	"_temp_628\0"
	.align
_Label_635:
	.byte	'?'
	.ascii	"_temp_627\0"
	.align
_Label_636:
	.byte	'?'
	.ascii	"_temp_625\0"
	.align
_Label_637:
	.byte	'C'
	.ascii	"_temp_624\0"
	.align
_Label_638:
	.byte	'?'
	.ascii	"_temp_623\0"
	.align
_Label_639:
	.byte	'?'
	.ascii	"_temp_622\0"
	.align
_Label_640:
	.byte	'?'
	.ascii	"_temp_621\0"
	.align
_Label_641:
	.byte	'C'
	.ascii	"_temp_620\0"
	.align
_Label_642:
	.byte	'?'
	.ascii	"_temp_617\0"
	.align
_Label_643:
	.byte	'?'
	.ascii	"_temp_616\0"
	.align
_Label_644:
	.byte	'?'
	.ascii	"_temp_615\0"
	.align
_Label_645:
	.byte	'?'
	.ascii	"_temp_614\0"
	.align
_Label_646:
	.byte	'?'
	.ascii	"_temp_613\0"
	.align
_Label_647:
	.byte	'?'
	.ascii	"_temp_612\0"
	.align
_Label_648:
	.byte	'?'
	.ascii	"_temp_611\0"
	.align
_Label_649:
	.byte	'?'
	.ascii	"_temp_610\0"
	.align
_Label_650:
	.byte	'?'
	.ascii	"_temp_609\0"
	.align
_Label_651:
	.byte	'?'
	.ascii	"_temp_608\0"
	.align
_Label_652:
	.byte	'?'
	.ascii	"_temp_607\0"
	.align
_Label_653:
	.byte	'?'
	.ascii	"_temp_606\0"
	.align
_Label_654:
	.byte	'?'
	.ascii	"_temp_605\0"
	.align
_Label_655:
	.byte	'?'
	.ascii	"_temp_600\0"
	.align
_Label_656:
	.byte	'?'
	.ascii	"_temp_599\0"
	.align
_Label_657:
	.byte	'?'
	.ascii	"_temp_598\0"
	.align
_Label_658:
	.byte	'?'
	.ascii	"_temp_597\0"
	.align
_Label_659:
	.byte	'?'
	.ascii	"_temp_596\0"
	.align
_Label_660:
	.byte	'?'
	.ascii	"_temp_595\0"
	.align
_Label_661:
	.byte	'?'
	.ascii	"_temp_594\0"
	.align
_Label_662:
	.byte	'?'
	.ascii	"_temp_593\0"
	.align
_Label_663:
	.byte	'?'
	.ascii	"_temp_592\0"
	.align
_Label_664:
	.byte	'?'
	.ascii	"_temp_591\0"
	.align
_Label_665:
	.byte	'?'
	.ascii	"_temp_590\0"
	.align
_Label_666:
	.byte	'?'
	.ascii	"_temp_589\0"
	.align
_Label_667:
	.byte	'?'
	.ascii	"_temp_588\0"
	.align
_Label_668:
	.byte	'?'
	.ascii	"_temp_587\0"
	.align
_Label_669:
	.byte	'?'
	.ascii	"_temp_586\0"
	.align
_Label_670:
	.byte	'?'
	.ascii	"_temp_585\0"
	.align
_Label_671:
	.byte	'?'
	.ascii	"_temp_584\0"
	.align
_Label_672:
	.byte	'?'
	.ascii	"_temp_583\0"
	.align
_Label_673:
	.byte	'?'
	.ascii	"_temp_582\0"
	.align
_Label_674:
	.byte	'?'
	.ascii	"_temp_581\0"
	.align
_Label_675:
	.byte	'?'
	.ascii	"_temp_580\0"
	.align
_Label_676:
	.byte	'?'
	.ascii	"_temp_579\0"
	.align
_Label_677:
	.byte	'?'
	.ascii	"_temp_578\0"
	.align
_Label_678:
	.byte	'?'
	.ascii	"_temp_577\0"
	.align
_Label_679:
	.byte	'?'
	.ascii	"_temp_576\0"
	.align
_Label_680:
	.byte	'P'
	.ascii	"newThread\0"
	.align
_Label_681:
	.byte	'P'
	.ascii	"newPCB\0"
	.align
_Label_682:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_683:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_684:
	.byte	'I'
	.ascii	"oldUserPC\0"
	.align
! 
! ===============  FUNCTION ResumeChildAfterFork  ===============
! 
_function_200_ResumeChildAfterFork:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_200_ResumeChildAfterFork,r1
	push	r1
	mov	17,r1
_Label_3387:
	push	r0
	sub	r1,1,r1
	bne	_Label_3387
	mov	1853,r13		! source line 1853
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1859,r13		! source line 1859
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1859,r13		! source line 1859
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! SEND STATEMENT...
	mov	1860,r13		! source line 1860
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_686 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-48]
!   Data Move: _temp_685 = *_temp_686  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_685) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_687 = _temp_685 + 32
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
!   _temp_689 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_689 [0 ] into _temp_690
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
!   _temp_688 = _temp_690		(4 bytes)
	load	[r14+-32],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_688  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1861,r13		! source line 1861
	mov	"\0\0CE",r10
	call	RestoreUserRegs
! ASSIGNMENT STATEMENT...
	mov	1862,r13		! source line 1862
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_691 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_691 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1863,r13		! source line 1863
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_692 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-24]
!   Move address of _temp_692 [14 ] into _temp_693
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
!   Data Move: initUserStackTop = *_temp_693  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-60]
! ASSIGNMENT STATEMENT...
	mov	1864,r13		! source line 1864
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_694 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-16]
!   Move address of _temp_694 [999 ] into _temp_695
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
!   initSystemStackTop = _temp_695		(4 bytes)
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
	mov	1865,r13		! source line 1865
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	1865,r13		! source line 1865
	mov	"\0\0RE",r10
	add	r15,72,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_200_ResumeChildAfterFork:
	.word	_sourceFileName
	.word	_Label_696
	.word	4		! total size of parameters
	.word	68		! frame size = 68
	.word	_Label_697
	.word	8
	.word	4
	.word	_Label_698
	.word	-12
	.word	4
	.word	_Label_699
	.word	-16
	.word	4
	.word	_Label_700
	.word	-20
	.word	4
	.word	_Label_701
	.word	-24
	.word	4
	.word	_Label_702
	.word	-28
	.word	4
	.word	_Label_703
	.word	-32
	.word	4
	.word	_Label_704
	.word	-36
	.word	4
	.word	_Label_705
	.word	-40
	.word	4
	.word	_Label_706
	.word	-44
	.word	4
	.word	_Label_707
	.word	-48
	.word	4
	.word	_Label_708
	.word	-52
	.word	4
	.word	_Label_709
	.word	-56
	.word	4
	.word	_Label_710
	.word	-60
	.word	4
	.word	_Label_711
	.word	-64
	.word	4
	.word	0
_Label_696:
	.ascii	"ResumeChildAfterFork\0"
	.align
_Label_697:
	.byte	'I'
	.ascii	"startPC\0"
	.align
_Label_698:
	.byte	'?'
	.ascii	"_temp_695\0"
	.align
_Label_699:
	.byte	'?'
	.ascii	"_temp_694\0"
	.align
_Label_700:
	.byte	'?'
	.ascii	"_temp_693\0"
	.align
_Label_701:
	.byte	'?'
	.ascii	"_temp_692\0"
	.align
_Label_702:
	.byte	'?'
	.ascii	"_temp_691\0"
	.align
_Label_703:
	.byte	'?'
	.ascii	"_temp_690\0"
	.align
_Label_704:
	.byte	'?'
	.ascii	"_temp_689\0"
	.align
_Label_705:
	.byte	'?'
	.ascii	"_temp_688\0"
	.align
_Label_706:
	.byte	'?'
	.ascii	"_temp_687\0"
	.align
_Label_707:
	.byte	'?'
	.ascii	"_temp_686\0"
	.align
_Label_708:
	.byte	'?'
	.ascii	"_temp_685\0"
	.align
_Label_709:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_710:
	.byte	'I'
	.ascii	"initUserStackTop\0"
	.align
_Label_711:
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
_Label_3388:
	push	r0
	sub	r1,1,r1
	bne	_Label_3388
	mov	1870,r13		! source line 1870
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! FOR STATEMENT...
	mov	1874,r13		! source line 1874
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_716 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-112]
!   Calculate and save the FOR-LOOP ending value
!   _temp_717 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-108]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_716  (sizeInBytes=4)
	load	[r14+-112],r1
	store	r1,[r14+-116]
_Label_712:
!   Perform the FOR-LOOP termination test
!   if i > _temp_717 then goto _Label_715		
	load	[r14+-116],r1
	load	[r14+-108],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_715
_Label_713:
	mov	1874,r13		! source line 1874
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1875,r13		! source line 1875
	mov	"\0\0IF",r10
!   _temp_723 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-100]
!   _temp_724 = _temp_723 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-96]
!   Move address of _temp_724 [i ] into _temp_725
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
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-92]
!   _temp_726 = _temp_725 + 12
	load	[r14+-92],r1
	add	r1,12,r1
	store	r1,[r14+-88]
!   Data Move: _temp_722 = *_temp_726  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_722 != processID then goto _Label_719		(int)
	load	[r14+-104],r1
	load	[r14+8],r2
	cmp	r1,r2
	bne	_Label_719
!	jmp	_Label_721
_Label_721:
!   _temp_728 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-80]
!   _temp_729 = _temp_728 + 4
	load	[r14+-80],r1
	add	r1,4,r1
	store	r1,[r14+-76]
!   Move address of _temp_729 [i ] into _temp_730
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
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-72]
!   _temp_731 = _temp_730 + 16
	load	[r14+-72],r1
	add	r1,16,r1
	store	r1,[r14+-68]
!   Data Move: _temp_727 = *_temp_731  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_734 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-56]
!   Data Move: _temp_733 = *_temp_734  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_733) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_735 = _temp_733 + 12
	load	[r14+-60],r1
	add	r1,12,r1
	store	r1,[r14+-52]
!   Data Move: _temp_732 = *_temp_735  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   if _temp_727 != _temp_732 then goto _Label_719		(int)
	load	[r14+-84],r1
	load	[r14+-64],r2
	cmp	r1,r2
	bne	_Label_719
!	jmp	_Label_720
_Label_720:
!   _temp_737 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-44]
!   _temp_738 = _temp_737 + 4
	load	[r14+-44],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Move address of _temp_738 [i ] into _temp_739
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
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-36]
!   _temp_740 = _temp_739 + 20
	load	[r14+-36],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: _temp_736 = *_temp_740  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   if _temp_736 == 3 then goto _Label_719		(int)
	load	[r14+-48],r1
	mov	3,r2
	cmp	r1,r2
	be	_Label_719
!	jmp	_Label_718
_Label_718:
! THEN...
	mov	1876,r13		! source line 1876
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1876,r13		! source line 1876
	mov	"\0\0AS",r10
	mov	1876,r13		! source line 1876
	mov	"\0\0SE",r10
!   _temp_742 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-24]
!   _temp_743 = _temp_742 + 4
	load	[r14+-24],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_743 [i ] into _temp_744
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
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   _temp_741 = _temp_744		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-28]
!   _temp_745 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_741  sizeInBytes=4
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
	mov	1877,r13		! source line 1877
	mov	"\0\0RE",r10
!   ReturnResult: childExitStatus  (sizeInBytes=4)
	load	[r14+-120],r1
	store	r1,[r14+8]
	add	r15,124,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_719:
!   Increment the FOR-LOOP index variable and jump back
_Label_714:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_712
! END FOR
_Label_715:
! RETURN STATEMENT...
	mov	1880,r13		! source line 1880
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
	.word	_Label_746
	.word	4		! total size of parameters
	.word	120		! frame size = 120
	.word	_Label_747
	.word	8
	.word	4
	.word	_Label_748
	.word	-12
	.word	4
	.word	_Label_749
	.word	-16
	.word	4
	.word	_Label_750
	.word	-20
	.word	4
	.word	_Label_751
	.word	-24
	.word	4
	.word	_Label_752
	.word	-28
	.word	4
	.word	_Label_753
	.word	-32
	.word	4
	.word	_Label_754
	.word	-36
	.word	4
	.word	_Label_755
	.word	-40
	.word	4
	.word	_Label_756
	.word	-44
	.word	4
	.word	_Label_757
	.word	-48
	.word	4
	.word	_Label_758
	.word	-52
	.word	4
	.word	_Label_759
	.word	-56
	.word	4
	.word	_Label_760
	.word	-60
	.word	4
	.word	_Label_761
	.word	-64
	.word	4
	.word	_Label_762
	.word	-68
	.word	4
	.word	_Label_763
	.word	-72
	.word	4
	.word	_Label_764
	.word	-76
	.word	4
	.word	_Label_765
	.word	-80
	.word	4
	.word	_Label_766
	.word	-84
	.word	4
	.word	_Label_767
	.word	-88
	.word	4
	.word	_Label_768
	.word	-92
	.word	4
	.word	_Label_769
	.word	-96
	.word	4
	.word	_Label_770
	.word	-100
	.word	4
	.word	_Label_771
	.word	-104
	.word	4
	.word	_Label_772
	.word	-108
	.word	4
	.word	_Label_773
	.word	-112
	.word	4
	.word	_Label_774
	.word	-116
	.word	4
	.word	_Label_775
	.word	-120
	.word	4
	.word	0
_Label_746:
	.ascii	"Handle_Sys_Join\0"
	.align
_Label_747:
	.byte	'I'
	.ascii	"processID\0"
	.align
_Label_748:
	.byte	'?'
	.ascii	"_temp_745\0"
	.align
_Label_749:
	.byte	'?'
	.ascii	"_temp_744\0"
	.align
_Label_750:
	.byte	'?'
	.ascii	"_temp_743\0"
	.align
_Label_751:
	.byte	'?'
	.ascii	"_temp_742\0"
	.align
_Label_752:
	.byte	'?'
	.ascii	"_temp_741\0"
	.align
_Label_753:
	.byte	'?'
	.ascii	"_temp_740\0"
	.align
_Label_754:
	.byte	'?'
	.ascii	"_temp_739\0"
	.align
_Label_755:
	.byte	'?'
	.ascii	"_temp_738\0"
	.align
_Label_756:
	.byte	'?'
	.ascii	"_temp_737\0"
	.align
_Label_757:
	.byte	'?'
	.ascii	"_temp_736\0"
	.align
_Label_758:
	.byte	'?'
	.ascii	"_temp_735\0"
	.align
_Label_759:
	.byte	'?'
	.ascii	"_temp_734\0"
	.align
_Label_760:
	.byte	'?'
	.ascii	"_temp_733\0"
	.align
_Label_761:
	.byte	'?'
	.ascii	"_temp_732\0"
	.align
_Label_762:
	.byte	'?'
	.ascii	"_temp_731\0"
	.align
_Label_763:
	.byte	'?'
	.ascii	"_temp_730\0"
	.align
_Label_764:
	.byte	'?'
	.ascii	"_temp_729\0"
	.align
_Label_765:
	.byte	'?'
	.ascii	"_temp_728\0"
	.align
_Label_766:
	.byte	'?'
	.ascii	"_temp_727\0"
	.align
_Label_767:
	.byte	'?'
	.ascii	"_temp_726\0"
	.align
_Label_768:
	.byte	'?'
	.ascii	"_temp_725\0"
	.align
_Label_769:
	.byte	'?'
	.ascii	"_temp_724\0"
	.align
_Label_770:
	.byte	'?'
	.ascii	"_temp_723\0"
	.align
_Label_771:
	.byte	'?'
	.ascii	"_temp_722\0"
	.align
_Label_772:
	.byte	'?'
	.ascii	"_temp_717\0"
	.align
_Label_773:
	.byte	'?'
	.ascii	"_temp_716\0"
	.align
_Label_774:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_775:
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
_Label_3389:
	push	r0
	sub	r1,1,r1
	bne	_Label_3389
	mov	1885,r13		! source line 1885
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! newAddrSpace
!   NEW CLASS Constructor...
!   ZeroMemory: newAddrSpace = zeros  (sizeInBytes=92)
	add	r14,-204,r4
	mov	23,r3
_Label_3390:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3390
!   newAddrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	store	r1,[r14+-204]
! ASSIGNMENT STATEMENT...
	mov	1895,r13		! source line 1895
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1895,r13		! source line 1895
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=temp  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-248]
! ASSIGNMENT STATEMENT...
	mov	1897,r13		! source line 1897
	mov	"\0\0AS",r10
	mov	1897,r13		! source line 1897
	mov	"\0\0SE",r10
!   _temp_777 = &kernalFileName
	add	r14,-228,r1
	store	r1,[r14+-108]
!   _temp_778 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-104]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_780 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-96]
!   Data Move: _temp_779 = *_temp_780  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_779) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_781 = _temp_779 + 32
	load	[r14+-100],r1
	add	r1,32,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=12  value=_temp_777  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_778  sizeInBytes=4
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
	mov	1898,r13		! source line 1898
	mov	"\0\0IF",r10
!   if temp >= 0 then goto _Label_783		(int)
	load	[r14+-248],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_783
!	jmp	_Label_782
_Label_782:
! THEN...
	mov	1899,r13		! source line 1899
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1899,r13		! source line 1899
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,260,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_783:
! SEND STATEMENT...
	mov	1902,r13		! source line 1902
	mov	"\0\0SE",r10
!   _temp_784 = &newAddrSpace
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
	mov	1904,r13		! source line 1904
	mov	"\0\0AS",r10
	mov	1904,r13		! source line 1904
	mov	"\0\0SE",r10
!   _temp_785 = &kernalFileName
	add	r14,-228,r1
	store	r1,[r14+-84]
!   _temp_786 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=12  value=_temp_785  sizeInBytes=4
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
	mov	1905,r13		! source line 1905
	mov	"\0\0IF",r10
!   if intIsZero (openFilePtr) then goto _Label_787
	load	[r14+-244],r1
	cmp	r1,r0
	be	_Label_787
	jmp	_Label_788
_Label_787:
! THEN...
	mov	1906,r13		! source line 1906
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1906,r13		! source line 1906
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,260,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_788:
! ASSIGNMENT STATEMENT...
	mov	1909,r13		! source line 1909
	mov	"\0\0AS",r10
	mov	1909,r13		! source line 1909
	mov	"\0\0SE",r10
!   _temp_789 = &newAddrSpace
	add	r14,-204,r1
	store	r1,[r14+-76]
!   if intIsZero (openFilePtr) then goto _runtimeErrorNullPointer
	load	[r14+-244],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_789  sizeInBytes=4
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
	mov	1910,r13		! source line 1910
	mov	"\0\0IF",r10
!   if entryPoint >= 0 then goto _Label_791		(int)
	load	[r14+-240],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_791
!	jmp	_Label_790
_Label_790:
! THEN...
	mov	1911,r13		! source line 1911
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1911,r13		! source line 1911
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,260,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_791:
! SEND STATEMENT...
	mov	1914,r13		! source line 1914
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_794 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-64]
!   Data Move: _temp_793 = *_temp_794  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_793) then goto _runtimeErrorNullPointer
	load	[r14+-68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_795 = _temp_793 + 32
	load	[r14+-68],r1
	add	r1,32,r1
	store	r1,[r14+-60]
!   _temp_792 = _temp_795		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-72]
!   _temp_796 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=12  value=_temp_792  sizeInBytes=4
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
	mov	1916,r13		! source line 1916
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_798 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-48]
!   Data Move: _temp_797 = *_temp_798  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_797) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_799 = _temp_797 + 32
	load	[r14+-52],r1
	add	r1,32,r1
	store	r1,[r14+-44]
!   Data Move: *_temp_799 = newAddrSpace  (sizeInBytes=92)
	add	r14,-204,r5
	load	[r14+-44],r4
	mov	23,r3
_Label_3391:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3391
! SEND STATEMENT...
	mov	1918,r13		! source line 1918
	mov	"\0\0SE",r10
!   _temp_800 = &_P_Kernel_fileManager
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
	mov	1919,r13		! source line 1919
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_801 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_801 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-36],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1921,r13		! source line 1921
	mov	"\0\0AS",r10
!   _temp_803 = &newAddrSpace
	add	r14,-204,r1
	store	r1,[r14+-28]
!   _temp_804 = _temp_803 + 4
	load	[r14+-28],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Data Move: _temp_802 = *_temp_804  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   initUserStackTop = _temp_802 * 8192		(int)
	load	[r14+-32],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-232]
! ASSIGNMENT STATEMENT...
	mov	1922,r13		! source line 1922
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_805 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_805 [999 ] into _temp_806
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
!   initSystemStackTop = _temp_806		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-236]
! SEND STATEMENT...
	mov	1924,r13		! source line 1924
	mov	"\0\0SE",r10
!   _temp_807 = &newAddrSpace
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
	mov	1925,r13		! source line 1925
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	1926,r13		! source line 1926
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
	.word	_Label_808
	.word	4		! total size of parameters
	.word	256		! frame size = 256
	.word	_Label_809
	.word	8
	.word	4
	.word	_Label_810
	.word	-12
	.word	4
	.word	_Label_811
	.word	-16
	.word	4
	.word	_Label_812
	.word	-20
	.word	4
	.word	_Label_813
	.word	-24
	.word	4
	.word	_Label_814
	.word	-28
	.word	4
	.word	_Label_815
	.word	-32
	.word	4
	.word	_Label_816
	.word	-36
	.word	4
	.word	_Label_817
	.word	-40
	.word	4
	.word	_Label_818
	.word	-44
	.word	4
	.word	_Label_819
	.word	-48
	.word	4
	.word	_Label_820
	.word	-52
	.word	4
	.word	_Label_821
	.word	-56
	.word	4
	.word	_Label_822
	.word	-60
	.word	4
	.word	_Label_823
	.word	-64
	.word	4
	.word	_Label_824
	.word	-68
	.word	4
	.word	_Label_825
	.word	-72
	.word	4
	.word	_Label_826
	.word	-76
	.word	4
	.word	_Label_827
	.word	-80
	.word	4
	.word	_Label_828
	.word	-84
	.word	4
	.word	_Label_829
	.word	-88
	.word	4
	.word	_Label_830
	.word	-92
	.word	4
	.word	_Label_831
	.word	-96
	.word	4
	.word	_Label_832
	.word	-100
	.word	4
	.word	_Label_833
	.word	-104
	.word	4
	.word	_Label_834
	.word	-108
	.word	4
	.word	_Label_835
	.word	-112
	.word	4
	.word	_Label_836
	.word	-204
	.word	92
	.word	_Label_837
	.word	-228
	.word	24
	.word	_Label_838
	.word	-232
	.word	4
	.word	_Label_839
	.word	-236
	.word	4
	.word	_Label_840
	.word	-240
	.word	4
	.word	_Label_841
	.word	-244
	.word	4
	.word	_Label_842
	.word	-248
	.word	4
	.word	0
_Label_808:
	.ascii	"Handle_Sys_Exec\0"
	.align
_Label_809:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_810:
	.byte	'?'
	.ascii	"_temp_807\0"
	.align
_Label_811:
	.byte	'?'
	.ascii	"_temp_806\0"
	.align
_Label_812:
	.byte	'?'
	.ascii	"_temp_805\0"
	.align
_Label_813:
	.byte	'?'
	.ascii	"_temp_804\0"
	.align
_Label_814:
	.byte	'?'
	.ascii	"_temp_803\0"
	.align
_Label_815:
	.byte	'?'
	.ascii	"_temp_802\0"
	.align
_Label_816:
	.byte	'?'
	.ascii	"_temp_801\0"
	.align
_Label_817:
	.byte	'?'
	.ascii	"_temp_800\0"
	.align
_Label_818:
	.byte	'?'
	.ascii	"_temp_799\0"
	.align
_Label_819:
	.byte	'?'
	.ascii	"_temp_798\0"
	.align
_Label_820:
	.byte	'?'
	.ascii	"_temp_797\0"
	.align
_Label_821:
	.byte	'?'
	.ascii	"_temp_796\0"
	.align
_Label_822:
	.byte	'?'
	.ascii	"_temp_795\0"
	.align
_Label_823:
	.byte	'?'
	.ascii	"_temp_794\0"
	.align
_Label_824:
	.byte	'?'
	.ascii	"_temp_793\0"
	.align
_Label_825:
	.byte	'?'
	.ascii	"_temp_792\0"
	.align
_Label_826:
	.byte	'?'
	.ascii	"_temp_789\0"
	.align
_Label_827:
	.byte	'?'
	.ascii	"_temp_786\0"
	.align
_Label_828:
	.byte	'?'
	.ascii	"_temp_785\0"
	.align
_Label_829:
	.byte	'?'
	.ascii	"_temp_784\0"
	.align
_Label_830:
	.byte	'?'
	.ascii	"_temp_781\0"
	.align
_Label_831:
	.byte	'?'
	.ascii	"_temp_780\0"
	.align
_Label_832:
	.byte	'?'
	.ascii	"_temp_779\0"
	.align
_Label_833:
	.byte	'?'
	.ascii	"_temp_778\0"
	.align
_Label_834:
	.byte	'?'
	.ascii	"_temp_777\0"
	.align
_Label_835:
	.byte	'?'
	.ascii	"_temp_776\0"
	.align
_Label_836:
	.byte	'O'
	.ascii	"newAddrSpace\0"
	.align
_Label_837:
	.byte	'A'
	.ascii	"kernalFileName\0"
	.align
_Label_838:
	.byte	'I'
	.ascii	"initUserStackTop\0"
	.align
_Label_839:
	.byte	'I'
	.ascii	"initSystemStackTop\0"
	.align
_Label_840:
	.byte	'I'
	.ascii	"entryPoint\0"
	.align
_Label_841:
	.byte	'P'
	.ascii	"openFilePtr\0"
	.align
_Label_842:
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
_Label_3392:
	push	r0
	sub	r1,1,r1
	bne	_Label_3392
	mov	1931,r13		! source line 1931
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1936,r13		! source line 1936
	mov	"\0\0AS",r10
	mov	1936,r13		! source line 1936
	mov	"\0\0SE",r10
!   _temp_843 = &kernalFileName
	add	r14,-76,r1
	store	r1,[r14+-48]
!   _temp_844 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_846 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-36]
!   Data Move: _temp_845 = *_temp_846  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_845) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_847 = _temp_845 + 32
	load	[r14+-40],r1
	add	r1,32,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_843  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_844  sizeInBytes=4
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
!   _temp_848 = _StringConst_38
	set	_StringConst_38,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_848  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1937,r13		! source line 1937
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1938,r13		! source line 1938
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_849 = _StringConst_39
	set	_StringConst_39,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_849  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1939,r13		! source line 1939
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_850 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_850  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1940,r13		! source line 1940
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Call the function
	mov	1941,r13		! source line 1941
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_851 = _StringConst_40
	set	_StringConst_40,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_851  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1942,r13		! source line 1942
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_852 = &kernalFileName
	add	r14,-76,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_852  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1943,r13		! source line 1943
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1944,r13		! source line 1944
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1945,r13		! source line 1945
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
	.word	_Label_853
	.word	4		! total size of parameters
	.word	84		! frame size = 84
	.word	_Label_854
	.word	8
	.word	4
	.word	_Label_855
	.word	-12
	.word	4
	.word	_Label_856
	.word	-16
	.word	4
	.word	_Label_857
	.word	-20
	.word	4
	.word	_Label_858
	.word	-24
	.word	4
	.word	_Label_859
	.word	-28
	.word	4
	.word	_Label_860
	.word	-32
	.word	4
	.word	_Label_861
	.word	-36
	.word	4
	.word	_Label_862
	.word	-40
	.word	4
	.word	_Label_863
	.word	-44
	.word	4
	.word	_Label_864
	.word	-48
	.word	4
	.word	_Label_865
	.word	-52
	.word	4
	.word	_Label_866
	.word	-76
	.word	24
	.word	0
_Label_853:
	.ascii	"Handle_Sys_Create\0"
	.align
_Label_854:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_855:
	.byte	'?'
	.ascii	"_temp_852\0"
	.align
_Label_856:
	.byte	'?'
	.ascii	"_temp_851\0"
	.align
_Label_857:
	.byte	'?'
	.ascii	"_temp_850\0"
	.align
_Label_858:
	.byte	'?'
	.ascii	"_temp_849\0"
	.align
_Label_859:
	.byte	'?'
	.ascii	"_temp_848\0"
	.align
_Label_860:
	.byte	'?'
	.ascii	"_temp_847\0"
	.align
_Label_861:
	.byte	'?'
	.ascii	"_temp_846\0"
	.align
_Label_862:
	.byte	'?'
	.ascii	"_temp_845\0"
	.align
_Label_863:
	.byte	'?'
	.ascii	"_temp_844\0"
	.align
_Label_864:
	.byte	'?'
	.ascii	"_temp_843\0"
	.align
_Label_865:
	.byte	'I'
	.ascii	"temp\0"
	.align
_Label_866:
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
	mov	21,r1
_Label_3393:
	push	r0
	sub	r1,1,r1
	bne	_Label_3393
	mov	1950,r13		! source line 1950
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1955,r13		! source line 1955
	mov	"\0\0AS",r10
	mov	1955,r13		! source line 1955
	mov	"\0\0SE",r10
!   _temp_867 = &kernalFileName
	add	r14,-76,r1
	store	r1,[r14+-48]
!   _temp_868 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_870 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-36]
!   Data Move: _temp_869 = *_temp_870  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_869) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_871 = _temp_869 + 32
	load	[r14+-40],r1
	add	r1,32,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_867  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_868  sizeInBytes=4
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
!   _temp_872 = _StringConst_41
	set	_StringConst_41,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_872  sizeInBytes=4
	load	[r14+-28],r1
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
! CALL STATEMENT...
!   _temp_873 = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_873  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1958,r13		! source line 1958
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_874 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_874  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1959,r13		! source line 1959
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Call the function
	mov	1960,r13		! source line 1960
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_875 = _StringConst_43
	set	_StringConst_43,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_875  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1961,r13		! source line 1961
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_876 = &kernalFileName
	add	r14,-76,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_876  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1962,r13		! source line 1962
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1963,r13		! source line 1963
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1964,r13		! source line 1964
	mov	"\0\0RE",r10
!   ReturnResult: 5000  (sizeInBytes=4)
	mov	5000,r1
	store	r1,[r14+8]
	add	r15,88,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Open:
	.word	_sourceFileName
	.word	_Label_877
	.word	4		! total size of parameters
	.word	84		! frame size = 84
	.word	_Label_878
	.word	8
	.word	4
	.word	_Label_879
	.word	-12
	.word	4
	.word	_Label_880
	.word	-16
	.word	4
	.word	_Label_881
	.word	-20
	.word	4
	.word	_Label_882
	.word	-24
	.word	4
	.word	_Label_883
	.word	-28
	.word	4
	.word	_Label_884
	.word	-32
	.word	4
	.word	_Label_885
	.word	-36
	.word	4
	.word	_Label_886
	.word	-40
	.word	4
	.word	_Label_887
	.word	-44
	.word	4
	.word	_Label_888
	.word	-48
	.word	4
	.word	_Label_889
	.word	-52
	.word	4
	.word	_Label_890
	.word	-76
	.word	24
	.word	0
_Label_877:
	.ascii	"Handle_Sys_Open\0"
	.align
_Label_878:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_879:
	.byte	'?'
	.ascii	"_temp_876\0"
	.align
_Label_880:
	.byte	'?'
	.ascii	"_temp_875\0"
	.align
_Label_881:
	.byte	'?'
	.ascii	"_temp_874\0"
	.align
_Label_882:
	.byte	'?'
	.ascii	"_temp_873\0"
	.align
_Label_883:
	.byte	'?'
	.ascii	"_temp_872\0"
	.align
_Label_884:
	.byte	'?'
	.ascii	"_temp_871\0"
	.align
_Label_885:
	.byte	'?'
	.ascii	"_temp_870\0"
	.align
_Label_886:
	.byte	'?'
	.ascii	"_temp_869\0"
	.align
_Label_887:
	.byte	'?'
	.ascii	"_temp_868\0"
	.align
_Label_888:
	.byte	'?'
	.ascii	"_temp_867\0"
	.align
_Label_889:
	.byte	'I'
	.ascii	"temp\0"
	.align
_Label_890:
	.byte	'A'
	.ascii	"kernalFileName\0"
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
	mov	21,r1
_Label_3394:
	push	r0
	sub	r1,1,r1
	bne	_Label_3394
	mov	1969,r13		! source line 1969
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1974,r13		! source line 1974
	mov	"\0\0AS",r10
	mov	1974,r13		! source line 1974
	mov	"\0\0SE",r10
!   _temp_891 = &kernalBufferCopy
	add	r14,-76,r1
	store	r1,[r14+-48]
!   _temp_892 = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-44]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_894 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-36]
!   Data Move: _temp_893 = *_temp_894  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_893) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_895 = _temp_893 + 32
	load	[r14+-40],r1
	add	r1,32,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_891  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_892  sizeInBytes=4
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
!   _temp_896 = _StringConst_44
	set	_StringConst_44,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_896  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1975,r13		! source line 1975
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1976,r13		! source line 1976
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_897 = _StringConst_45
	set	_StringConst_45,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_897  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1977,r13		! source line 1977
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1978,r13		! source line 1978
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1979,r13		! source line 1979
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_898 = _StringConst_46
	set	_StringConst_46,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_898  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1980,r13		! source line 1980
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_899 = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_899  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1981,r13		! source line 1981
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Call the function
	mov	1982,r13		! source line 1982
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_900 = _StringConst_47
	set	_StringConst_47,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_900  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1983,r13		! source line 1983
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeInBytes  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1984,r13		! source line 1984
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1985,r13		! source line 1985
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1986,r13		! source line 1986
	mov	"\0\0RE",r10
!   ReturnResult: 6000  (sizeInBytes=4)
	mov	6000,r1
	store	r1,[r14+8]
	add	r15,88,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Read:
	.word	_sourceFileName
	.word	_Label_901
	.word	12		! total size of parameters
	.word	84		! frame size = 84
	.word	_Label_902
	.word	8
	.word	4
	.word	_Label_903
	.word	12
	.word	4
	.word	_Label_904
	.word	16
	.word	4
	.word	_Label_905
	.word	-12
	.word	4
	.word	_Label_906
	.word	-16
	.word	4
	.word	_Label_907
	.word	-20
	.word	4
	.word	_Label_908
	.word	-24
	.word	4
	.word	_Label_909
	.word	-28
	.word	4
	.word	_Label_910
	.word	-32
	.word	4
	.word	_Label_911
	.word	-36
	.word	4
	.word	_Label_912
	.word	-40
	.word	4
	.word	_Label_913
	.word	-44
	.word	4
	.word	_Label_914
	.word	-48
	.word	4
	.word	_Label_915
	.word	-52
	.word	4
	.word	_Label_916
	.word	-76
	.word	24
	.word	0
_Label_901:
	.ascii	"Handle_Sys_Read\0"
	.align
_Label_902:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_903:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_904:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_905:
	.byte	'?'
	.ascii	"_temp_900\0"
	.align
_Label_906:
	.byte	'?'
	.ascii	"_temp_899\0"
	.align
_Label_907:
	.byte	'?'
	.ascii	"_temp_898\0"
	.align
_Label_908:
	.byte	'?'
	.ascii	"_temp_897\0"
	.align
_Label_909:
	.byte	'?'
	.ascii	"_temp_896\0"
	.align
_Label_910:
	.byte	'?'
	.ascii	"_temp_895\0"
	.align
_Label_911:
	.byte	'?'
	.ascii	"_temp_894\0"
	.align
_Label_912:
	.byte	'?'
	.ascii	"_temp_893\0"
	.align
_Label_913:
	.byte	'?'
	.ascii	"_temp_892\0"
	.align
_Label_914:
	.byte	'?'
	.ascii	"_temp_891\0"
	.align
_Label_915:
	.byte	'I'
	.ascii	"temp\0"
	.align
_Label_916:
	.byte	'A'
	.ascii	"kernalBufferCopy\0"
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
	mov	21,r1
_Label_3395:
	push	r0
	sub	r1,1,r1
	bne	_Label_3395
	mov	1991,r13		! source line 1991
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1996,r13		! source line 1996
	mov	"\0\0AS",r10
	mov	1996,r13		! source line 1996
	mov	"\0\0SE",r10
!   _temp_917 = &kernalBufferCopy
	add	r14,-76,r1
	store	r1,[r14+-48]
!   _temp_918 = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-44]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_920 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-36]
!   Data Move: _temp_919 = *_temp_920  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_919) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_921 = _temp_919 + 32
	load	[r14+-40],r1
	add	r1,32,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_917  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_918  sizeInBytes=4
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
!   _temp_922 = _StringConst_48
	set	_StringConst_48,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_922  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1997,r13		! source line 1997
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1998,r13		! source line 1998
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_923 = _StringConst_49
	set	_StringConst_49,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_923  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1999,r13		! source line 1999
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	2000,r13		! source line 2000
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2001,r13		! source line 2001
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_924 = _StringConst_50
	set	_StringConst_50,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_924  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2002,r13		! source line 2002
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_925 = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_925  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2003,r13		! source line 2003
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Call the function
	mov	2004,r13		! source line 2004
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_926 = _StringConst_51
	set	_StringConst_51,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_926  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2005,r13		! source line 2005
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeInBytes  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2006,r13		! source line 2006
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2007,r13		! source line 2007
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2008,r13		! source line 2008
	mov	"\0\0RE",r10
!   ReturnResult: 7000  (sizeInBytes=4)
	mov	7000,r1
	store	r1,[r14+8]
	add	r15,88,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Write:
	.word	_sourceFileName
	.word	_Label_927
	.word	12		! total size of parameters
	.word	84		! frame size = 84
	.word	_Label_928
	.word	8
	.word	4
	.word	_Label_929
	.word	12
	.word	4
	.word	_Label_930
	.word	16
	.word	4
	.word	_Label_931
	.word	-12
	.word	4
	.word	_Label_932
	.word	-16
	.word	4
	.word	_Label_933
	.word	-20
	.word	4
	.word	_Label_934
	.word	-24
	.word	4
	.word	_Label_935
	.word	-28
	.word	4
	.word	_Label_936
	.word	-32
	.word	4
	.word	_Label_937
	.word	-36
	.word	4
	.word	_Label_938
	.word	-40
	.word	4
	.word	_Label_939
	.word	-44
	.word	4
	.word	_Label_940
	.word	-48
	.word	4
	.word	_Label_941
	.word	-52
	.word	4
	.word	_Label_942
	.word	-76
	.word	24
	.word	0
_Label_927:
	.ascii	"Handle_Sys_Write\0"
	.align
_Label_928:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_929:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_930:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_931:
	.byte	'?'
	.ascii	"_temp_926\0"
	.align
_Label_932:
	.byte	'?'
	.ascii	"_temp_925\0"
	.align
_Label_933:
	.byte	'?'
	.ascii	"_temp_924\0"
	.align
_Label_934:
	.byte	'?'
	.ascii	"_temp_923\0"
	.align
_Label_935:
	.byte	'?'
	.ascii	"_temp_922\0"
	.align
_Label_936:
	.byte	'?'
	.ascii	"_temp_921\0"
	.align
_Label_937:
	.byte	'?'
	.ascii	"_temp_920\0"
	.align
_Label_938:
	.byte	'?'
	.ascii	"_temp_919\0"
	.align
_Label_939:
	.byte	'?'
	.ascii	"_temp_918\0"
	.align
_Label_940:
	.byte	'?'
	.ascii	"_temp_917\0"
	.align
_Label_941:
	.byte	'I'
	.ascii	"temp\0"
	.align
_Label_942:
	.byte	'A'
	.ascii	"kernalBufferCopy\0"
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
	mov	4,r1
_Label_3396:
	push	r0
	sub	r1,1,r1
	bne	_Label_3396
	mov	2013,r13		! source line 2013
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_943 = _StringConst_52
	set	_StringConst_52,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_943  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2015,r13		! source line 2015
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	2016,r13		! source line 2016
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_944 = _StringConst_53
	set	_StringConst_53,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_944  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2017,r13		! source line 2017
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	2018,r13		! source line 2018
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2019,r13		! source line 2019
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_945 = _StringConst_54
	set	_StringConst_54,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_945  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2020,r13		! source line 2020
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=newCurrentPos  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2021,r13		! source line 2021
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2022,r13		! source line 2022
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2023,r13		! source line 2023
	mov	"\0\0RE",r10
!   ReturnResult: 8000  (sizeInBytes=4)
	mov	8000,r1
	store	r1,[r14+8]
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Seek:
	.word	_sourceFileName
	.word	_Label_946
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_947
	.word	8
	.word	4
	.word	_Label_948
	.word	12
	.word	4
	.word	_Label_949
	.word	-12
	.word	4
	.word	_Label_950
	.word	-16
	.word	4
	.word	_Label_951
	.word	-20
	.word	4
	.word	0
_Label_946:
	.ascii	"Handle_Sys_Seek\0"
	.align
_Label_947:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_948:
	.byte	'I'
	.ascii	"newCurrentPos\0"
	.align
_Label_949:
	.byte	'?'
	.ascii	"_temp_945\0"
	.align
_Label_950:
	.byte	'?'
	.ascii	"_temp_944\0"
	.align
_Label_951:
	.byte	'?'
	.ascii	"_temp_943\0"
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
	mov	3,r1
_Label_3397:
	push	r0
	sub	r1,1,r1
	bne	_Label_3397
	mov	2028,r13		! source line 2028
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_952 = _StringConst_55
	set	_StringConst_55,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_952  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2030,r13		! source line 2030
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	2031,r13		! source line 2031
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_953 = _StringConst_56
	set	_StringConst_56,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_953  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2032,r13		! source line 2032
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	2033,r13		! source line 2033
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2034,r13		! source line 2034
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2034,r13		! source line 2034
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Close:
	.word	_sourceFileName
	.word	_Label_954
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_955
	.word	8
	.word	4
	.word	_Label_956
	.word	-12
	.word	4
	.word	_Label_957
	.word	-16
	.word	4
	.word	0
_Label_954:
	.ascii	"Handle_Sys_Close\0"
	.align
_Label_955:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_956:
	.byte	'?'
	.ascii	"_temp_953\0"
	.align
_Label_957:
	.byte	'?'
	.ascii	"_temp_952\0"
	.align
! 
! ===============  FUNCTION copyUnalignedWord  ===============
! 
_function_199_copyUnalignedWord:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_199_copyUnalignedWord,r1
	push	r1
	mov	9,r1
_Label_3398:
	push	r0
	sub	r1,1,r1
	bne	_Label_3398
	mov	2625,r13		! source line 2625
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2627,r13		! source line 2627
	mov	"\0\0AS",r10
!   from = fromPtr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2628,r13		! source line 2628
	mov	"\0\0AS",r10
!   dest = destPtr		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	2629,r13		! source line 2629
	mov	"\0\0AS",r10
!   if intIsZero (dest) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (from) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_958 = *from  (sizeInBytes=1)
	load	[r14+-40],r1
	loadb	[r1],r1
	storeb	r1,[r14+-12]
!   Data Move: *dest = _temp_958  (sizeInBytes=1)
	loadb	[r14+-12],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2630,r13		! source line 2630
	mov	"\0\0AS",r10
!   _temp_959 = dest + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   if intIsZero (_temp_959) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_961 = from + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   if intIsZero (_temp_961) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_960 = *_temp_961  (sizeInBytes=1)
	load	[r14+-32],r1
	loadb	[r1],r1
	storeb	r1,[r14+-11]
!   Data Move: *_temp_959 = _temp_960  (sizeInBytes=1)
	loadb	[r14+-11],r1
	load	[r14+-36],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2631,r13		! source line 2631
	mov	"\0\0AS",r10
!   _temp_962 = dest + 2		(int)
	load	[r14+-44],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   if intIsZero (_temp_962) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_964 = from + 2		(int)
	load	[r14+-40],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   if intIsZero (_temp_964) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_963 = *_temp_964  (sizeInBytes=1)
	load	[r14+-24],r1
	loadb	[r1],r1
	storeb	r1,[r14+-10]
!   Data Move: *_temp_962 = _temp_963  (sizeInBytes=1)
	loadb	[r14+-10],r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2632,r13		! source line 2632
	mov	"\0\0AS",r10
!   _temp_965 = dest + 3		(int)
	load	[r14+-44],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   if intIsZero (_temp_965) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_967 = from + 3		(int)
	load	[r14+-40],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
!   if intIsZero (_temp_967) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_966 = *_temp_967  (sizeInBytes=1)
	load	[r14+-16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *_temp_965 = _temp_966  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! RETURN STATEMENT...
	mov	2632,r13		! source line 2632
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_199_copyUnalignedWord:
	.word	_sourceFileName
	.word	_Label_968
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_969
	.word	8
	.word	4
	.word	_Label_970
	.word	12
	.word	4
	.word	_Label_971
	.word	-16
	.word	4
	.word	_Label_972
	.word	-9
	.word	1
	.word	_Label_973
	.word	-20
	.word	4
	.word	_Label_974
	.word	-24
	.word	4
	.word	_Label_975
	.word	-10
	.word	1
	.word	_Label_976
	.word	-28
	.word	4
	.word	_Label_977
	.word	-32
	.word	4
	.word	_Label_978
	.word	-11
	.word	1
	.word	_Label_979
	.word	-36
	.word	4
	.word	_Label_980
	.word	-12
	.word	1
	.word	_Label_981
	.word	-40
	.word	4
	.word	_Label_982
	.word	-44
	.word	4
	.word	0
_Label_968:
	.ascii	"copyUnalignedWord\0"
	.align
_Label_969:
	.byte	'P'
	.ascii	"destPtr\0"
	.align
_Label_970:
	.byte	'P'
	.ascii	"fromPtr\0"
	.align
_Label_971:
	.byte	'?'
	.ascii	"_temp_967\0"
	.align
_Label_972:
	.byte	'C'
	.ascii	"_temp_966\0"
	.align
_Label_973:
	.byte	'?'
	.ascii	"_temp_965\0"
	.align
_Label_974:
	.byte	'?'
	.ascii	"_temp_964\0"
	.align
_Label_975:
	.byte	'C'
	.ascii	"_temp_963\0"
	.align
_Label_976:
	.byte	'?'
	.ascii	"_temp_962\0"
	.align
_Label_977:
	.byte	'?'
	.ascii	"_temp_961\0"
	.align
_Label_978:
	.byte	'C'
	.ascii	"_temp_960\0"
	.align
_Label_979:
	.byte	'?'
	.ascii	"_temp_959\0"
	.align
_Label_980:
	.byte	'C'
	.ascii	"_temp_958\0"
	.align
_Label_981:
	.byte	'P'
	.ascii	"from\0"
	.align
_Label_982:
	.byte	'P'
	.ascii	"dest\0"
	.align
! 
! ===============  FUNCTION printFCB  ===============
! 
_function_198_printFCB:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_198_printFCB,r1
	push	r1
	mov	3,r1
_Label_3399:
	push	r0
	sub	r1,1,r1
	bne	_Label_3399
	mov	2635,r13		! source line 2635
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_984 = fcb + 12
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-12]
!   Data Move: _temp_983 = *_temp_984  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_983  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2636,r13		! source line 2636
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	2637,r13		! source line 2637
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	2637,r13		! source line 2637
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_198_printFCB:
	.word	_sourceFileName
	.word	_Label_985
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_986
	.word	8
	.word	4
	.word	_Label_987
	.word	-12
	.word	4
	.word	_Label_988
	.word	-16
	.word	4
	.word	0
_Label_985:
	.ascii	"printFCB\0"
	.align
_Label_986:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_987:
	.byte	'?'
	.ascii	"_temp_984\0"
	.align
_Label_988:
	.byte	'?'
	.ascii	"_temp_983\0"
	.align
! 
! ===============  FUNCTION printOpen  ===============
! 
_function_197_printOpen:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_197_printOpen,r1
	push	r1
	mov	4,r1
_Label_3400:
	push	r0
	sub	r1,1,r1
	bne	_Label_3400
	mov	2640,r13		! source line 2640
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_989 = _StringConst_57
	set	_StringConst_57,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_989  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2641,r13		! source line 2641
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_990 = open		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_990  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2642,r13		! source line 2642
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_991 = _StringConst_58
	set	_StringConst_58,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_991  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2643,r13		! source line 2643
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2644,r13		! source line 2644
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
	mov	2644,r13		! source line 2644
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_197_printOpen:
	.word	_sourceFileName
	.word	_Label_992
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_993
	.word	8
	.word	4
	.word	_Label_994
	.word	-12
	.word	4
	.word	_Label_995
	.word	-16
	.word	4
	.word	_Label_996
	.word	-20
	.word	4
	.word	0
_Label_992:
	.ascii	"printOpen\0"
	.align
_Label_993:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_994:
	.byte	'?'
	.ascii	"_temp_991\0"
	.align
_Label_995:
	.byte	'?'
	.ascii	"_temp_990\0"
	.align
_Label_996:
	.byte	'?'
	.ascii	"_temp_989\0"
	.align
! 
! ===============  CLASS Semaphore  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Semaphore:
	.word	_Label_997
	jmp	_Method_P_Kernel_Semaphore_1	! 4:	Init
	jmp	_Method_P_Kernel_Semaphore_3	! 8:	Down
	jmp	_Method_P_Kernel_Semaphore_2	! 12:	Up
	.word	0
! 
! Class descriptor:
! 
_Label_997:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_998
	.word	_sourceFileName
	.word	125		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Semaphore
	.word	_P_System_Object
	.word	0
_Label_998:
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
_Label_3401:
	push	r0
	sub	r1,1,r1
	bne	_Label_3401
	mov	279,r13		! source line 279
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	280,r13		! source line 280
	mov	"\0\0IF",r10
!   if initialCount >= 0 then goto _Label_1000		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1000
!	jmp	_Label_999
_Label_999:
! THEN...
	mov	281,r13		! source line 281
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1001 = _StringConst_59
	set	_StringConst_59,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1001  sizeInBytes=4
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
_Label_1000:
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
	.word	_Label_1003
	.word	8		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1004
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1005
	.word	12
	.word	4
	.word	_Label_1006
	.word	-12
	.word	4
	.word	_Label_1007
	.word	-16
	.word	4
	.word	0
_Label_1003:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1004:
	.ascii	"Pself\0"
	.align
_Label_1005:
	.byte	'I'
	.ascii	"initialCount\0"
	.align
_Label_1006:
	.byte	'?'
	.ascii	"_temp_1002\0"
	.align
_Label_1007:
	.byte	'?'
	.ascii	"_temp_1001\0"
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
_Label_3402:
	push	r0
	sub	r1,1,r1
	bne	_Label_3402
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
!   if count != 2147483647 then goto _Label_1009		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	2147483647,r2
	cmp	r1,r2
	bne	_Label_1009
!	jmp	_Label_1008
_Label_1008:
! THEN...
	mov	295,r13		! source line 295
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1010 = _StringConst_60
	set	_StringConst_60,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1010  sizeInBytes=4
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
_Label_1009:
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
!   if count > 0 then goto _Label_1012		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1012
!	jmp	_Label_1011
_Label_1011:
! THEN...
	mov	299,r13		! source line 299
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	299,r13		! source line 299
	mov	"\0\0AS",r10
	mov	299,r13		! source line 299
	mov	"\0\0SE",r10
!   _temp_1013 = &waitingThreads
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
!   _temp_1014 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1014 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	301,r13		! source line 301
	mov	"\0\0SE",r10
!   _temp_1015 = &_P_Kernel_readyList
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
_Label_1012:
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
	.word	_Label_1016
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1017
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1018
	.word	-12
	.word	4
	.word	_Label_1019
	.word	-16
	.word	4
	.word	_Label_1020
	.word	-20
	.word	4
	.word	_Label_1021
	.word	-24
	.word	4
	.word	_Label_1022
	.word	-28
	.word	4
	.word	_Label_1023
	.word	-32
	.word	4
	.word	0
_Label_1016:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Up\0"
	.align
_Label_1017:
	.ascii	"Pself\0"
	.align
_Label_1018:
	.byte	'?'
	.ascii	"_temp_1015\0"
	.align
_Label_1019:
	.byte	'?'
	.ascii	"_temp_1014\0"
	.align
_Label_1020:
	.byte	'?'
	.ascii	"_temp_1013\0"
	.align
_Label_1021:
	.byte	'?'
	.ascii	"_temp_1010\0"
	.align
_Label_1022:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1023:
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
_Label_3403:
	push	r0
	sub	r1,1,r1
	bne	_Label_3403
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
!   if count != -2147483648 then goto _Label_1025		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	0x80000000,r2
	cmp	r1,r2
	bne	_Label_1025
!	jmp	_Label_1024
_Label_1024:
! THEN...
	mov	313,r13		! source line 313
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1026 = _StringConst_61
	set	_StringConst_61,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1026  sizeInBytes=4
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
_Label_1025:
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
!   if count >= 0 then goto _Label_1028		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1028
!	jmp	_Label_1027
_Label_1027:
! THEN...
	mov	317,r13		! source line 317
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	317,r13		! source line 317
	mov	"\0\0SE",r10
!   _temp_1029 = &waitingThreads
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
_Label_1028:
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
	.word	_Label_1030
	.word	4		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1031
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1032
	.word	-12
	.word	4
	.word	_Label_1033
	.word	-16
	.word	4
	.word	_Label_1034
	.word	-20
	.word	4
	.word	0
_Label_1030:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Down\0"
	.align
_Label_1031:
	.ascii	"Pself\0"
	.align
_Label_1032:
	.byte	'?'
	.ascii	"_temp_1029\0"
	.align
_Label_1033:
	.byte	'?'
	.ascii	"_temp_1026\0"
	.align
_Label_1034:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Mutex  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Mutex:
	.word	_Label_1035
	jmp	_Method_P_Kernel_Mutex_1	! 4:	Init
	jmp	_Method_P_Kernel_Mutex_2	! 8:	Lock
	jmp	_Method_P_Kernel_Mutex_3	! 12:	Unlock
	jmp	_Method_P_Kernel_Mutex_4	! 16:	IsHeldByCurrentThread
	.word	0
! 
! Class descriptor:
! 
_Label_1035:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1036
	.word	_sourceFileName
	.word	138		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Mutex
	.word	_P_System_Object
	.word	0
_Label_1036:
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
_Label_3404:
	push	r0
	sub	r1,1,r1
	bne	_Label_3404
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
	.word	_Label_1038
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1039
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1040
	.word	-12
	.word	4
	.word	0
_Label_1038:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1039:
	.ascii	"Pself\0"
	.align
_Label_1040:
	.byte	'?'
	.ascii	"_temp_1037\0"
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
_Label_3405:
	push	r0
	sub	r1,1,r1
	bne	_Label_3405
	mov	349,r13		! source line 349
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	352,r13		! source line 352
	mov	"\0\0IF",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_1042		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_1042
!	jmp	_Label_1041
_Label_1041:
! THEN...
	mov	353,r13		! source line 353
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1043 = _StringConst_62
	set	_StringConst_62,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1043  sizeInBytes=4
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
_Label_1042:
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
!   if heldBy == 0 then goto _Label_1047		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1047
!   _temp_1046 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1048
_Label_1047:
!   _temp_1046 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1048:
!   if _temp_1046 then goto _Label_1045 else goto _Label_1044
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1044
	jmp	_Label_1045
_Label_1044:
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
	jmp	_Label_1049
_Label_1045:
! ELSE...
	mov	359,r13		! source line 359
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	359,r13		! source line 359
	mov	"\0\0SE",r10
!   _temp_1050 = &waitingThreads
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
_Label_1049:
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
	.word	_Label_1051
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1052
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1053
	.word	-16
	.word	4
	.word	_Label_1054
	.word	-9
	.word	1
	.word	_Label_1055
	.word	-20
	.word	4
	.word	_Label_1056
	.word	-24
	.word	4
	.word	0
_Label_1051:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_1052:
	.ascii	"Pself\0"
	.align
_Label_1053:
	.byte	'?'
	.ascii	"_temp_1050\0"
	.align
_Label_1054:
	.byte	'C'
	.ascii	"_temp_1046\0"
	.align
_Label_1055:
	.byte	'?'
	.ascii	"_temp_1043\0"
	.align
_Label_1056:
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
_Label_3406:
	push	r0
	sub	r1,1,r1
	bne	_Label_3406
	mov	367,r13		! source line 367
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	371,r13		! source line 371
	mov	"\0\0IF",r10
!   if heldBy == _P_Kernel_currentThread then goto _Label_1058		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1058
!	jmp	_Label_1057
_Label_1057:
! THEN...
	mov	372,r13		! source line 372
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1059 = _StringConst_63
	set	_StringConst_63,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1059  sizeInBytes=4
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
_Label_1058:
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
!   _temp_1060 = &waitingThreads
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
!   if t == 0 then goto _Label_1062		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1062
!	jmp	_Label_1061
_Label_1061:
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
!   _temp_1063 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1063 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	378,r13		! source line 378
	mov	"\0\0SE",r10
!   _temp_1064 = &_P_Kernel_readyList
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
	jmp	_Label_1065
_Label_1062:
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
_Label_1065:
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
	.word	_Label_1066
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1067
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1068
	.word	-12
	.word	4
	.word	_Label_1069
	.word	-16
	.word	4
	.word	_Label_1070
	.word	-20
	.word	4
	.word	_Label_1071
	.word	-24
	.word	4
	.word	_Label_1072
	.word	-28
	.word	4
	.word	_Label_1073
	.word	-32
	.word	4
	.word	0
_Label_1066:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_1067:
	.ascii	"Pself\0"
	.align
_Label_1068:
	.byte	'?'
	.ascii	"_temp_1064\0"
	.align
_Label_1069:
	.byte	'?'
	.ascii	"_temp_1063\0"
	.align
_Label_1070:
	.byte	'?'
	.ascii	"_temp_1060\0"
	.align
_Label_1071:
	.byte	'?'
	.ascii	"_temp_1059\0"
	.align
_Label_1072:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1073:
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
_Label_3407:
	push	r0
	sub	r1,1,r1
	bne	_Label_3407
	mov	388,r13		! source line 388
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	389,r13		! source line 389
	mov	"\0\0RE",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_1076		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_1076
!	jmp	_Label_1075
_Label_1075:
!   _temp_1074 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1077
_Label_1076:
!   _temp_1074 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1077:
!   ReturnResult: _temp_1074  (sizeInBytes=1)
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
	.word	_Label_1078
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1079
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1080
	.word	-9
	.word	1
	.word	0
_Label_1078:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_1079:
	.ascii	"Pself\0"
	.align
_Label_1080:
	.byte	'C'
	.ascii	"_temp_1074\0"
	.align
! 
! ===============  CLASS Condition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Condition:
	.word	_Label_1081
	jmp	_Method_P_Kernel_Condition_1	! 4:	Init
	jmp	_Method_P_Kernel_Condition_2	! 8:	Wait
	jmp	_Method_P_Kernel_Condition_3	! 12:	Signal
	jmp	_Method_P_Kernel_Condition_4	! 16:	Broadcast
	.word	0
! 
! Class descriptor:
! 
_Label_1081:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1082
	.word	_sourceFileName
	.word	152		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Kernel_Condition
	.word	_P_System_Object
	.word	0
_Label_1082:
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
_Label_3408:
	push	r0
	sub	r1,1,r1
	bne	_Label_3408
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
	.word	_Label_1084
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1085
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1086
	.word	-12
	.word	4
	.word	0
_Label_1084:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1085:
	.ascii	"Pself\0"
	.align
_Label_1086:
	.byte	'?'
	.ascii	"_temp_1083\0"
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
_Label_3409:
	push	r0
	sub	r1,1,r1
	bne	_Label_3409
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
!   Retrieve Result: targetName=_temp_1089  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1089 then goto _Label_1088 else goto _Label_1087
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1087
	jmp	_Label_1088
_Label_1087:
! THEN...
	mov	439,r13		! source line 439
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1090 = _StringConst_64
	set	_StringConst_64,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1090  sizeInBytes=4
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
_Label_1088:
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
!   _temp_1091 = &waitingThreads
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
	.word	_Label_1092
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1093
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1094
	.word	12
	.word	4
	.word	_Label_1095
	.word	-16
	.word	4
	.word	_Label_1096
	.word	-20
	.word	4
	.word	_Label_1097
	.word	-9
	.word	1
	.word	_Label_1098
	.word	-24
	.word	4
	.word	0
_Label_1092:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_1093:
	.ascii	"Pself\0"
	.align
_Label_1094:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1095:
	.byte	'?'
	.ascii	"_temp_1091\0"
	.align
_Label_1096:
	.byte	'?'
	.ascii	"_temp_1090\0"
	.align
_Label_1097:
	.byte	'C'
	.ascii	"_temp_1089\0"
	.align
_Label_1098:
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
_Label_3410:
	push	r0
	sub	r1,1,r1
	bne	_Label_3410
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
!   Retrieve Result: targetName=_temp_1101  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1101 then goto _Label_1100 else goto _Label_1099
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1099
	jmp	_Label_1100
_Label_1099:
! THEN...
	mov	456,r13		! source line 456
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1102 = _StringConst_65
	set	_StringConst_65,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1102  sizeInBytes=4
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
_Label_1100:
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
!   _temp_1103 = &waitingThreads
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
!   if t == 0 then goto _Label_1105		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1105
!	jmp	_Label_1104
_Label_1104:
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
!   _temp_1106 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1106 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	462,r13		! source line 462
	mov	"\0\0SE",r10
!   _temp_1107 = &_P_Kernel_readyList
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
_Label_1105:
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
	.word	_Label_1108
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1109
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1110
	.word	12
	.word	4
	.word	_Label_1111
	.word	-16
	.word	4
	.word	_Label_1112
	.word	-20
	.word	4
	.word	_Label_1113
	.word	-24
	.word	4
	.word	_Label_1114
	.word	-28
	.word	4
	.word	_Label_1115
	.word	-9
	.word	1
	.word	_Label_1116
	.word	-32
	.word	4
	.word	_Label_1117
	.word	-36
	.word	4
	.word	0
_Label_1108:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_1109:
	.ascii	"Pself\0"
	.align
_Label_1110:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1111:
	.byte	'?'
	.ascii	"_temp_1107\0"
	.align
_Label_1112:
	.byte	'?'
	.ascii	"_temp_1106\0"
	.align
_Label_1113:
	.byte	'?'
	.ascii	"_temp_1103\0"
	.align
_Label_1114:
	.byte	'?'
	.ascii	"_temp_1102\0"
	.align
_Label_1115:
	.byte	'C'
	.ascii	"_temp_1101\0"
	.align
_Label_1116:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1117:
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
_Label_3411:
	push	r0
	sub	r1,1,r1
	bne	_Label_3411
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
!   Retrieve Result: targetName=_temp_1120  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1120 then goto _Label_1119 else goto _Label_1118
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1118
	jmp	_Label_1119
_Label_1118:
! THEN...
	mov	474,r13		! source line 474
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1121 = _StringConst_66
	set	_StringConst_66,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1121  sizeInBytes=4
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
_Label_1119:
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
_Label_1122:
!	jmp	_Label_1123
_Label_1123:
	mov	477,r13		! source line 477
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	478,r13		! source line 478
	mov	"\0\0AS",r10
	mov	478,r13		! source line 478
	mov	"\0\0SE",r10
!   _temp_1125 = &waitingThreads
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
!   if intIsZero (t) then goto _Label_1126
	load	[r14+-36],r1
	cmp	r1,r0
	be	_Label_1126
	jmp	_Label_1127
_Label_1126:
! THEN...
	mov	480,r13		! source line 480
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	480,r13		! source line 480
	mov	"\0\0BR",r10
	jmp	_Label_1124
! END IF...
_Label_1127:
! ASSIGNMENT STATEMENT...
	mov	482,r13		! source line 482
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1128 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1128 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	483,r13		! source line 483
	mov	"\0\0SE",r10
!   _temp_1129 = &_P_Kernel_readyList
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
	jmp	_Label_1122
_Label_1124:
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
	.word	_Label_1130
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1131
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1132
	.word	12
	.word	4
	.word	_Label_1133
	.word	-16
	.word	4
	.word	_Label_1134
	.word	-20
	.word	4
	.word	_Label_1135
	.word	-24
	.word	4
	.word	_Label_1136
	.word	-28
	.word	4
	.word	_Label_1137
	.word	-9
	.word	1
	.word	_Label_1138
	.word	-32
	.word	4
	.word	_Label_1139
	.word	-36
	.word	4
	.word	0
_Label_1130:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Broadcast\0"
	.align
_Label_1131:
	.ascii	"Pself\0"
	.align
_Label_1132:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1133:
	.byte	'?'
	.ascii	"_temp_1129\0"
	.align
_Label_1134:
	.byte	'?'
	.ascii	"_temp_1128\0"
	.align
_Label_1135:
	.byte	'?'
	.ascii	"_temp_1125\0"
	.align
_Label_1136:
	.byte	'?'
	.ascii	"_temp_1121\0"
	.align
_Label_1137:
	.byte	'C'
	.ascii	"_temp_1120\0"
	.align
_Label_1138:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1139:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  CLASS Thread  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Thread:
	.word	_Label_1140
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
_Label_1140:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1141
	.word	_sourceFileName
	.word	165		! line number
	.word	4164		! size of instances, in bytes
	.word	_P_Kernel_Thread
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_1141:
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
_Label_3412:
	push	r0
	sub	r1,1,r1
	bne	_Label_3412
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
!   _temp_1142 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_1142) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_1142 = 1000  (sizeInBytes=4)
	mov	1000,r1
	load	[r14+-188],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	505,r13		! source line 505
	mov	"\0\0AS",r10
!   _temp_1143 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-184]
!   Move address of _temp_1143 [0 ] into _temp_1144
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
!   Data Move: *_temp_1144 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-180],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	506,r13		! source line 506
	mov	"\0\0AS",r10
!   _temp_1145 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-176]
!   Move address of _temp_1145 [999 ] into _temp_1146
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
!   Data Move: *_temp_1146 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-172],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	507,r13		! source line 507
	mov	"\0\0AS",r10
!   _temp_1147 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-168]
!   Move address of _temp_1147 [999 ] into _temp_1148
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
!   stackTop = _temp_1148		(4 bytes)
	load	[r14+-164],r1
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	508,r13		! source line 508
	mov	"\0\0AS",r10
!   _temp_1149 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-160]
!   NEW ARRAY Constructor...
!   _temp_1151 = &_temp_1150
	add	r14,-156,r1
	store	r1,[r14+-100]
!   _temp_1151 = _temp_1151 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Next value...
	mov	13,r1
	store	r1,[r14+-96]
_Label_1153:
!   Data Move: *_temp_1151 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-100],r2
	store	r1,[r2]
!   _temp_1151 = _temp_1151 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   _temp_1152 = _temp_1152 + -1
	load	[r14+-96],r1
	add	r1,-1,r1
	store	r1,[r14+-96]
!   if intNotZero (_temp_1152) then goto _Label_1153
	load	[r14+-96],r1
	cmp	r1,r0
	bne	_Label_1153
!   Initialize the array size...
	mov	13,r1
	store	r1,[r14+-156]
!   _temp_1154 = &_temp_1150
	add	r14,-156,r1
	store	r1,[r14+-92]
!   make sure array has size 13
	load	[r14+-160],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,0
	be	_Label_3413
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3413:
!   make sure array has size 13
	load	[r14+-92],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1149 = *_temp_1154  (sizeInBytes=56)
	load	[r14+-92],r5
	load	[r14+-160],r4
	mov	14,r3
_Label_3414:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3414
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
!   _temp_1155 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-88]
!   NEW ARRAY Constructor...
!   _temp_1157 = &_temp_1156
	add	r14,-84,r1
	store	r1,[r14+-20]
!   _temp_1157 = _temp_1157 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	15,r1
	store	r1,[r14+-16]
_Label_1159:
!   Data Move: *_temp_1157 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1157 = _temp_1157 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1158 = _temp_1158 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1158) then goto _Label_1159
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1159
!   Initialize the array size...
	mov	15,r1
	store	r1,[r14+-84]
!   _temp_1160 = &_temp_1156
	add	r14,-84,r1
	store	r1,[r14+-12]
!   make sure array has size 15
	load	[r14+-88],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,0
	be	_Label_3415
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3415:
!   make sure array has size 15
	load	[r14+-12],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1155 = *_temp_1160  (sizeInBytes=64)
	load	[r14+-12],r5
	load	[r14+-88],r4
	mov	16,r3
_Label_3416:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3416
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
	.word	_Label_1161
	.word	8		! total size of parameters
	.word	180		! frame size = 180
	.word	_Label_1162
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1163
	.word	12
	.word	4
	.word	_Label_1164
	.word	-12
	.word	4
	.word	_Label_1165
	.word	-16
	.word	4
	.word	_Label_1166
	.word	-20
	.word	4
	.word	_Label_1167
	.word	-84
	.word	64
	.word	_Label_1168
	.word	-88
	.word	4
	.word	_Label_1169
	.word	-92
	.word	4
	.word	_Label_1170
	.word	-96
	.word	4
	.word	_Label_1171
	.word	-100
	.word	4
	.word	_Label_1172
	.word	-156
	.word	56
	.word	_Label_1173
	.word	-160
	.word	4
	.word	_Label_1174
	.word	-164
	.word	4
	.word	_Label_1175
	.word	-168
	.word	4
	.word	_Label_1176
	.word	-172
	.word	4
	.word	_Label_1177
	.word	-176
	.word	4
	.word	_Label_1178
	.word	-180
	.word	4
	.word	_Label_1179
	.word	-184
	.word	4
	.word	_Label_1180
	.word	-188
	.word	4
	.word	0
_Label_1161:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1162:
	.ascii	"Pself\0"
	.align
_Label_1163:
	.byte	'P'
	.ascii	"n\0"
	.align
_Label_1164:
	.byte	'?'
	.ascii	"_temp_1160\0"
	.align
_Label_1165:
	.byte	'?'
	.ascii	"_temp_1158\0"
	.align
_Label_1166:
	.byte	'?'
	.ascii	"_temp_1157\0"
	.align
_Label_1167:
	.byte	'?'
	.ascii	"_temp_1156\0"
	.align
_Label_1168:
	.byte	'?'
	.ascii	"_temp_1155\0"
	.align
_Label_1169:
	.byte	'?'
	.ascii	"_temp_1154\0"
	.align
_Label_1170:
	.byte	'?'
	.ascii	"_temp_1152\0"
	.align
_Label_1171:
	.byte	'?'
	.ascii	"_temp_1151\0"
	.align
_Label_1172:
	.byte	'?'
	.ascii	"_temp_1150\0"
	.align
_Label_1173:
	.byte	'?'
	.ascii	"_temp_1149\0"
	.align
_Label_1174:
	.byte	'?'
	.ascii	"_temp_1148\0"
	.align
_Label_1175:
	.byte	'?'
	.ascii	"_temp_1147\0"
	.align
_Label_1176:
	.byte	'?'
	.ascii	"_temp_1146\0"
	.align
_Label_1177:
	.byte	'?'
	.ascii	"_temp_1145\0"
	.align
_Label_1178:
	.byte	'?'
	.ascii	"_temp_1144\0"
	.align
_Label_1179:
	.byte	'?'
	.ascii	"_temp_1143\0"
	.align
_Label_1180:
	.byte	'?'
	.ascii	"_temp_1142\0"
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
_Label_3417:
	push	r0
	sub	r1,1,r1
	bne	_Label_3417
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
!   _temp_1181 = ThreadStartUp
	set	ThreadStartUp,r1
	store	r1,[r14+-20]
!   Data Move: *stackTop = _temp_1181  (sizeInBytes=4)
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
!   _temp_1183 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1182  sizeInBytes=4
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
	.word	_Label_1184
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1185
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1186
	.word	12
	.word	4
	.word	_Label_1187
	.word	16
	.word	4
	.word	_Label_1188
	.word	-12
	.word	4
	.word	_Label_1189
	.word	-16
	.word	4
	.word	_Label_1190
	.word	-20
	.word	4
	.word	_Label_1191
	.word	-24
	.word	4
	.word	_Label_1192
	.word	-28
	.word	4
	.word	0
_Label_1184:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Fork\0"
	.align
_Label_1185:
	.ascii	"Pself\0"
	.align
_Label_1186:
	.byte	'P'
	.ascii	"fun\0"
	.align
_Label_1187:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_1188:
	.byte	'?'
	.ascii	"_temp_1183\0"
	.align
_Label_1189:
	.byte	'?'
	.ascii	"_temp_1182\0"
	.align
_Label_1190:
	.byte	'?'
	.ascii	"_temp_1181\0"
	.align
_Label_1191:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1192:
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
_Label_3418:
	push	r0
	sub	r1,1,r1
	bne	_Label_3418
	mov	539,r13		! source line 539
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	555,r13		! source line 555
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if _temp_1195 == _P_Kernel_currentThread then goto _Label_1194		(int)
	load	[r14+-32],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1194
!	jmp	_Label_1193
_Label_1193:
! THEN...
	mov	556,r13		! source line 556
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1196 = _StringConst_67
	set	_StringConst_67,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1196  sizeInBytes=4
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
_Label_1194:
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
!   _temp_1197 = &_P_Kernel_readyList
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
!   if nextTh == 0 then goto _Label_1199		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1199
!	jmp	_Label_1198
_Label_1198:
! THEN...
	mov	567,r13		! source line 567
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	567,r13		! source line 567
	mov	"\0\0IF",r10
!   if status != 4 then goto _Label_1201		(int)
	load	[r14+8],r1
	load	[r1+76],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_1201
!	jmp	_Label_1200
_Label_1200:
! THEN...
	mov	568,r13		! source line 568
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1202 = _StringConst_68
	set	_StringConst_68,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1202  sizeInBytes=4
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
_Label_1201:
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
!   _temp_1204 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1203  sizeInBytes=4
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
_Label_1199:
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
	.word	_Label_1205
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1206
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1207
	.word	-12
	.word	4
	.word	_Label_1208
	.word	-16
	.word	4
	.word	_Label_1209
	.word	-20
	.word	4
	.word	_Label_1210
	.word	-24
	.word	4
	.word	_Label_1211
	.word	-28
	.word	4
	.word	_Label_1212
	.word	-32
	.word	4
	.word	_Label_1213
	.word	-36
	.word	4
	.word	_Label_1214
	.word	-40
	.word	4
	.word	_Label_1215
	.word	-44
	.word	4
	.word	0
_Label_1205:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Yield\0"
	.align
_Label_1206:
	.ascii	"Pself\0"
	.align
_Label_1207:
	.byte	'?'
	.ascii	"_temp_1204\0"
	.align
_Label_1208:
	.byte	'?'
	.ascii	"_temp_1203\0"
	.align
_Label_1209:
	.byte	'?'
	.ascii	"_temp_1202\0"
	.align
_Label_1210:
	.byte	'?'
	.ascii	"_temp_1197\0"
	.align
_Label_1211:
	.byte	'?'
	.ascii	"_temp_1196\0"
	.align
_Label_1212:
	.byte	'?'
	.ascii	"_temp_1195\0"
	.align
_Label_1213:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
_Label_1214:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1215:
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
_Label_3419:
	push	r0
	sub	r1,1,r1
	bne	_Label_3419
	mov	579,r13		! source line 579
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	591,r13		! source line 591
	mov	"\0\0IF",r10
!   if _P_Kernel_currentInterruptStatus == 2 then goto _Label_1217		(int)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_1217
!	jmp	_Label_1216
_Label_1216:
! THEN...
	mov	592,r13		! source line 592
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1218 = _StringConst_69
	set	_StringConst_69,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1218  sizeInBytes=4
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
_Label_1217:
! IF STATEMENT...
	mov	595,r13		! source line 595
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if _temp_1221 == _P_Kernel_currentThread then goto _Label_1220		(int)
	load	[r14+-24],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1220
!	jmp	_Label_1219
_Label_1219:
! THEN...
	mov	596,r13		! source line 596
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1222 = _StringConst_70
	set	_StringConst_70,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1222  sizeInBytes=4
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
_Label_1220:
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
!   _temp_1223 = &_P_Kernel_readyList
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
!   if intIsZero (nextTh) then goto _Label_1224
	load	[r14+-32],r1
	cmp	r1,r0
	be	_Label_1224
	jmp	_Label_1225
_Label_1224:
! THEN...
	mov	604,r13		! source line 604
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1226 = _StringConst_71
	set	_StringConst_71,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1226  sizeInBytes=4
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
_Label_1225:
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
	.word	_Label_1227
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1228
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1229
	.word	-12
	.word	4
	.word	_Label_1230
	.word	-16
	.word	4
	.word	_Label_1231
	.word	-20
	.word	4
	.word	_Label_1232
	.word	-24
	.word	4
	.word	_Label_1233
	.word	-28
	.word	4
	.word	_Label_1234
	.word	-32
	.word	4
	.word	0
_Label_1227:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Sleep\0"
	.align
_Label_1228:
	.ascii	"Pself\0"
	.align
_Label_1229:
	.byte	'?'
	.ascii	"_temp_1226\0"
	.align
_Label_1230:
	.byte	'?'
	.ascii	"_temp_1223\0"
	.align
_Label_1231:
	.byte	'?'
	.ascii	"_temp_1222\0"
	.align
_Label_1232:
	.byte	'?'
	.ascii	"_temp_1221\0"
	.align
_Label_1233:
	.byte	'?'
	.ascii	"_temp_1218\0"
	.align
_Label_1234:
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
_Label_3420:
	push	r0
	sub	r1,1,r1
	bne	_Label_3420
	mov	611,r13		! source line 611
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	617,r13		! source line 617
	mov	"\0\0IF",r10
!   _temp_1238 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-36]
!   Move address of _temp_1238 [0 ] into _temp_1239
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
!   Data Move: _temp_1237 = *_temp_1239  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if _temp_1237 == 606348324 then goto _Label_1236		(int)
	load	[r14+-40],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1236
!	jmp	_Label_1235
_Label_1235:
! THEN...
	mov	618,r13		! source line 618
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1240 = _StringConst_72
	set	_StringConst_72,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1240  sizeInBytes=4
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
	jmp	_Label_1241
_Label_1236:
! ELSE...
	mov	619,r13		! source line 619
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	619,r13		! source line 619
	mov	"\0\0IF",r10
!   _temp_1245 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_1245 [999 ] into _temp_1246
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
!   Data Move: _temp_1244 = *_temp_1246  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_1244 == 606348324 then goto _Label_1243		(int)
	load	[r14+-24],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1243
!	jmp	_Label_1242
_Label_1242:
! THEN...
	mov	620,r13		! source line 620
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1247 = _StringConst_73
	set	_StringConst_73,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1247  sizeInBytes=4
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
_Label_1243:
! END IF...
_Label_1241:
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
	.word	_Label_1248
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1249
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1250
	.word	-12
	.word	4
	.word	_Label_1251
	.word	-16
	.word	4
	.word	_Label_1252
	.word	-20
	.word	4
	.word	_Label_1253
	.word	-24
	.word	4
	.word	_Label_1254
	.word	-28
	.word	4
	.word	_Label_1255
	.word	-32
	.word	4
	.word	_Label_1256
	.word	-36
	.word	4
	.word	_Label_1257
	.word	-40
	.word	4
	.word	0
_Label_1248:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"CheckOverflow\0"
	.align
_Label_1249:
	.ascii	"Pself\0"
	.align
_Label_1250:
	.byte	'?'
	.ascii	"_temp_1247\0"
	.align
_Label_1251:
	.byte	'?'
	.ascii	"_temp_1246\0"
	.align
_Label_1252:
	.byte	'?'
	.ascii	"_temp_1245\0"
	.align
_Label_1253:
	.byte	'?'
	.ascii	"_temp_1244\0"
	.align
_Label_1254:
	.byte	'?'
	.ascii	"_temp_1240\0"
	.align
_Label_1255:
	.byte	'?'
	.ascii	"_temp_1239\0"
	.align
_Label_1256:
	.byte	'?'
	.ascii	"_temp_1238\0"
	.align
_Label_1257:
	.byte	'?'
	.ascii	"_temp_1237\0"
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
_Label_3421:
	push	r0
	sub	r1,1,r1
	bne	_Label_3421
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
!   _temp_1258 = _StringConst_74
	set	_StringConst_74,r1
	store	r1,[r14+-188]
!   Prepare Argument: offset=8  value=_temp_1258  sizeInBytes=4
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
!   _temp_1259 = _StringConst_75
	set	_StringConst_75,r1
	store	r1,[r14+-184]
!   Prepare Argument: offset=8  value=_temp_1259  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Call the function
	mov	635,r13		! source line 635
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_1260  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Call the function
	mov	636,r13		! source line 636
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1261 = _StringConst_76
	set	_StringConst_76,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=8  value=_temp_1261  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Call the function
	mov	637,r13		! source line 637
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1262 = _StringConst_77
	set	_StringConst_77,r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=8  value=_temp_1262  sizeInBytes=4
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
!   _temp_1267 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-168]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1268 = 12		(4 bytes)
	mov	12,r1
	store	r1,[r14+-164]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1267  (sizeInBytes=4)
	load	[r14+-168],r1
	store	r1,[r14+-192]
_Label_1263:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1268 then goto _Label_1266		
	load	[r14+-192],r1
	load	[r14+-164],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1266
_Label_1264:
	mov	639,r13		! source line 639
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1269 = _StringConst_78
	set	_StringConst_78,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1269  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	640,r13		! source line 640
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1270 = i + 2		(int)
	load	[r14+-192],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_1270  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	641,r13		! source line 641
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1271 = _StringConst_79
	set	_StringConst_79,r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=8  value=_temp_1271  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Call the function
	mov	642,r13		! source line 642
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1273 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-144]
!   Move address of _temp_1273 [i ] into _temp_1274
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
!   Data Move: _temp_1272 = *_temp_1274  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1272  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	643,r13		! source line 643
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1275 = _StringConst_80
	set	_StringConst_80,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_1275  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	644,r13		! source line 644
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1277 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-128]
!   Move address of _temp_1277 [i ] into _temp_1278
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
!   Data Move: _temp_1276 = *_temp_1278  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1276  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	645,r13		! source line 645
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1279 = _StringConst_81
	set	_StringConst_81,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_1279  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	646,r13		! source line 646
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1265:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1263
! END FOR
_Label_1266:
! CALL STATEMENT...
!   _temp_1280 = _StringConst_82
	set	_StringConst_82,r1
	store	r1,[r14+-116]
!   _temp_1281 = stackTop		(4 bytes)
	load	[r14+8],r1
	load	[r1+68],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1280  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1281  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Call the function
	mov	648,r13		! source line 648
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_1282 = _StringConst_83
	set	_StringConst_83,r1
	store	r1,[r14+-108]
!   _temp_1284 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-100]
!   Move address of _temp_1284 [0 ] into _temp_1285
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
!   _temp_1283 = _temp_1285		(4 bytes)
	load	[r14+-96],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1282  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1283  sizeInBytes=4
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
	be	_Label_1288
	cmp	r1,2
	be	_Label_1289
	cmp	r1,3
	be	_Label_1290
	cmp	r1,4
	be	_Label_1291
	cmp	r1,5
	be	_Label_1292
	jmp	_Label_1286
! CASE 1...
_Label_1288:
! CALL STATEMENT...
!   _temp_1293 = _StringConst_84
	set	_StringConst_84,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_1293  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	652,r13		! source line 652
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	653,r13		! source line 653
	mov	"\0\0BR",r10
	jmp	_Label_1287
! CASE 2...
_Label_1289:
! CALL STATEMENT...
!   _temp_1294 = _StringConst_85
	set	_StringConst_85,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_1294  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	655,r13		! source line 655
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	656,r13		! source line 656
	mov	"\0\0BR",r10
	jmp	_Label_1287
! CASE 3...
_Label_1290:
! CALL STATEMENT...
!   _temp_1295 = _StringConst_86
	set	_StringConst_86,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1295  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	658,r13		! source line 658
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	659,r13		! source line 659
	mov	"\0\0BR",r10
	jmp	_Label_1287
! CASE 4...
_Label_1291:
! CALL STATEMENT...
!   _temp_1296 = _StringConst_87
	set	_StringConst_87,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_1296  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	661,r13		! source line 661
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	662,r13		! source line 662
	mov	"\0\0BR",r10
	jmp	_Label_1287
! CASE 5...
_Label_1292:
! CALL STATEMENT...
!   _temp_1297 = _StringConst_88
	set	_StringConst_88,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1297  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	664,r13		! source line 664
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	665,r13		! source line 665
	mov	"\0\0BR",r10
	jmp	_Label_1287
! DEFAULT CASE...
_Label_1286:
! CALL STATEMENT...
!   _temp_1298 = _StringConst_89
	set	_StringConst_89,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1298  sizeInBytes=4
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
_Label_1287:
! CALL STATEMENT...
!   _temp_1299 = _StringConst_90
	set	_StringConst_90,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_1299  sizeInBytes=4
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
!   _temp_1300 = _StringConst_91
	set	_StringConst_91,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1300  sizeInBytes=4
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
!   _temp_1305 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1306 = 14		(4 bytes)
	mov	14,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1305  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+-192]
_Label_1301:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1306 then goto _Label_1304		
	load	[r14+-192],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1304
_Label_1302:
	mov	673,r13		! source line 673
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1307 = _StringConst_92
	set	_StringConst_92,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1307  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	674,r13		! source line 674
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1308 = i + 1		(int)
	load	[r14+-192],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1308  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	675,r13		! source line 675
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1309 = _StringConst_93
	set	_StringConst_93,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1309  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	676,r13		! source line 676
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1311 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_1311 [i ] into _temp_1312
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
!   Data Move: _temp_1310 = *_temp_1312  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1310  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	677,r13		! source line 677
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1313 = _StringConst_94
	set	_StringConst_94,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1313  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	678,r13		! source line 678
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1315 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-20]
!   Move address of _temp_1315 [i ] into _temp_1316
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
!   Data Move: _temp_1314 = *_temp_1316  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1314  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	679,r13		! source line 679
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1317 = _StringConst_95
	set	_StringConst_95,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1317  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	680,r13		! source line 680
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1303:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1301
! END FOR
_Label_1304:
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
	.word	_Label_1318
	.word	4		! total size of parameters
	.word	196		! frame size = 196
	.word	_Label_1319
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1320
	.word	-12
	.word	4
	.word	_Label_1321
	.word	-16
	.word	4
	.word	_Label_1322
	.word	-20
	.word	4
	.word	_Label_1323
	.word	-24
	.word	4
	.word	_Label_1324
	.word	-28
	.word	4
	.word	_Label_1325
	.word	-32
	.word	4
	.word	_Label_1326
	.word	-36
	.word	4
	.word	_Label_1327
	.word	-40
	.word	4
	.word	_Label_1328
	.word	-44
	.word	4
	.word	_Label_1329
	.word	-48
	.word	4
	.word	_Label_1330
	.word	-52
	.word	4
	.word	_Label_1331
	.word	-56
	.word	4
	.word	_Label_1332
	.word	-60
	.word	4
	.word	_Label_1333
	.word	-64
	.word	4
	.word	_Label_1334
	.word	-68
	.word	4
	.word	_Label_1335
	.word	-72
	.word	4
	.word	_Label_1336
	.word	-76
	.word	4
	.word	_Label_1337
	.word	-80
	.word	4
	.word	_Label_1338
	.word	-84
	.word	4
	.word	_Label_1339
	.word	-88
	.word	4
	.word	_Label_1340
	.word	-92
	.word	4
	.word	_Label_1341
	.word	-96
	.word	4
	.word	_Label_1342
	.word	-100
	.word	4
	.word	_Label_1343
	.word	-104
	.word	4
	.word	_Label_1344
	.word	-108
	.word	4
	.word	_Label_1345
	.word	-112
	.word	4
	.word	_Label_1346
	.word	-116
	.word	4
	.word	_Label_1347
	.word	-120
	.word	4
	.word	_Label_1348
	.word	-124
	.word	4
	.word	_Label_1349
	.word	-128
	.word	4
	.word	_Label_1350
	.word	-132
	.word	4
	.word	_Label_1351
	.word	-136
	.word	4
	.word	_Label_1352
	.word	-140
	.word	4
	.word	_Label_1353
	.word	-144
	.word	4
	.word	_Label_1354
	.word	-148
	.word	4
	.word	_Label_1355
	.word	-152
	.word	4
	.word	_Label_1356
	.word	-156
	.word	4
	.word	_Label_1357
	.word	-160
	.word	4
	.word	_Label_1358
	.word	-164
	.word	4
	.word	_Label_1359
	.word	-168
	.word	4
	.word	_Label_1360
	.word	-172
	.word	4
	.word	_Label_1361
	.word	-176
	.word	4
	.word	_Label_1362
	.word	-180
	.word	4
	.word	_Label_1363
	.word	-184
	.word	4
	.word	_Label_1364
	.word	-188
	.word	4
	.word	_Label_1365
	.word	-192
	.word	4
	.word	_Label_1366
	.word	-196
	.word	4
	.word	0
_Label_1318:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1319:
	.ascii	"Pself\0"
	.align
_Label_1320:
	.byte	'?'
	.ascii	"_temp_1317\0"
	.align
_Label_1321:
	.byte	'?'
	.ascii	"_temp_1316\0"
	.align
_Label_1322:
	.byte	'?'
	.ascii	"_temp_1315\0"
	.align
_Label_1323:
	.byte	'?'
	.ascii	"_temp_1314\0"
	.align
_Label_1324:
	.byte	'?'
	.ascii	"_temp_1313\0"
	.align
_Label_1325:
	.byte	'?'
	.ascii	"_temp_1312\0"
	.align
_Label_1326:
	.byte	'?'
	.ascii	"_temp_1311\0"
	.align
_Label_1327:
	.byte	'?'
	.ascii	"_temp_1310\0"
	.align
_Label_1328:
	.byte	'?'
	.ascii	"_temp_1309\0"
	.align
_Label_1329:
	.byte	'?'
	.ascii	"_temp_1308\0"
	.align
_Label_1330:
	.byte	'?'
	.ascii	"_temp_1307\0"
	.align
_Label_1331:
	.byte	'?'
	.ascii	"_temp_1306\0"
	.align
_Label_1332:
	.byte	'?'
	.ascii	"_temp_1305\0"
	.align
_Label_1333:
	.byte	'?'
	.ascii	"_temp_1300\0"
	.align
_Label_1334:
	.byte	'?'
	.ascii	"_temp_1299\0"
	.align
_Label_1335:
	.byte	'?'
	.ascii	"_temp_1298\0"
	.align
_Label_1336:
	.byte	'?'
	.ascii	"_temp_1297\0"
	.align
_Label_1337:
	.byte	'?'
	.ascii	"_temp_1296\0"
	.align
_Label_1338:
	.byte	'?'
	.ascii	"_temp_1295\0"
	.align
_Label_1339:
	.byte	'?'
	.ascii	"_temp_1294\0"
	.align
_Label_1340:
	.byte	'?'
	.ascii	"_temp_1293\0"
	.align
_Label_1341:
	.byte	'?'
	.ascii	"_temp_1285\0"
	.align
_Label_1342:
	.byte	'?'
	.ascii	"_temp_1284\0"
	.align
_Label_1343:
	.byte	'?'
	.ascii	"_temp_1283\0"
	.align
_Label_1344:
	.byte	'?'
	.ascii	"_temp_1282\0"
	.align
_Label_1345:
	.byte	'?'
	.ascii	"_temp_1281\0"
	.align
_Label_1346:
	.byte	'?'
	.ascii	"_temp_1280\0"
	.align
_Label_1347:
	.byte	'?'
	.ascii	"_temp_1279\0"
	.align
_Label_1348:
	.byte	'?'
	.ascii	"_temp_1278\0"
	.align
_Label_1349:
	.byte	'?'
	.ascii	"_temp_1277\0"
	.align
_Label_1350:
	.byte	'?'
	.ascii	"_temp_1276\0"
	.align
_Label_1351:
	.byte	'?'
	.ascii	"_temp_1275\0"
	.align
_Label_1352:
	.byte	'?'
	.ascii	"_temp_1274\0"
	.align
_Label_1353:
	.byte	'?'
	.ascii	"_temp_1273\0"
	.align
_Label_1354:
	.byte	'?'
	.ascii	"_temp_1272\0"
	.align
_Label_1355:
	.byte	'?'
	.ascii	"_temp_1271\0"
	.align
_Label_1356:
	.byte	'?'
	.ascii	"_temp_1270\0"
	.align
_Label_1357:
	.byte	'?'
	.ascii	"_temp_1269\0"
	.align
_Label_1358:
	.byte	'?'
	.ascii	"_temp_1268\0"
	.align
_Label_1359:
	.byte	'?'
	.ascii	"_temp_1267\0"
	.align
_Label_1360:
	.byte	'?'
	.ascii	"_temp_1262\0"
	.align
_Label_1361:
	.byte	'?'
	.ascii	"_temp_1261\0"
	.align
_Label_1362:
	.byte	'?'
	.ascii	"_temp_1260\0"
	.align
_Label_1363:
	.byte	'?'
	.ascii	"_temp_1259\0"
	.align
_Label_1364:
	.byte	'?'
	.ascii	"_temp_1258\0"
	.align
_Label_1365:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1366:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  CLASS ThreadManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ThreadManager:
	.word	_Label_1367
	jmp	_Method_P_Kernel_ThreadManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ThreadManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ThreadManager_3	! 12:	GetANewThread
	jmp	_Method_P_Kernel_ThreadManager_4	! 16:	FreeThread
	.word	0
! 
! Class descriptor:
! 
_Label_1367:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1368
	.word	_sourceFileName
	.word	192		! line number
	.word	41696		! size of instances, in bytes
	.word	_P_Kernel_ThreadManager
	.word	_P_System_Object
	.word	0
_Label_1368:
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
_Label_3422:
	push	r0
	sub	r1,1,r1
	bne	_Label_3422
	mov	737,r13		! source line 737
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	743,r13		! source line 743
	mov	"\0\0AS",r10
!   _temp_1369 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	set	-45904,r2
	store	r1,[r14+r2]
!   NEW ARRAY Constructor...
!   _temp_1371 = &_temp_1370
	set	-45900,r1
	add	r14,r1,r1
	store	r1,[r14+-4256]
!   _temp_1371 = _temp_1371 + 4
	load	[r14+-4256],r1
	add	r1,4,r1
	store	r1,[r14+-4256]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1373 = zeros  (sizeInBytes=4164)
	add	r14,-4248,r4
	mov	1041,r3
_Label_3423:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3423
!   _temp_1373 = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	store	r1,[r14+-4248]
	mov	10,r1
	store	r1,[r14+-4252]
_Label_1375:
!   Data Move: *_temp_1371 = _temp_1373  (sizeInBytes=4164)
	add	r14,-4248,r5
	load	[r14+-4256],r4
	mov	1041,r3
_Label_3424:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3424
!   _temp_1371 = _temp_1371 + 4164
	load	[r14+-4256],r1
	add	r1,4164,r1
	store	r1,[r14+-4256]
!   _temp_1372 = _temp_1372 + -1
	load	[r14+-4252],r1
	add	r1,-1,r1
	store	r1,[r14+-4252]
!   if intNotZero (_temp_1372) then goto _Label_1375
	load	[r14+-4252],r1
	cmp	r1,r0
	bne	_Label_1375
!   Initialize the array size...
	mov	10,r1
	set	-45900,r2
	store	r1,[r14+r2]
!   _temp_1376 = &_temp_1370
	set	-45900,r1
	add	r14,r1,r1
	store	r1,[r14+-80]
!   make sure array has size 10
	set	-45904,r1
	load	[r14+r1],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3425
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3425:
!   make sure array has size 10
	load	[r14+-80],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1369 = *_temp_1376  (sizeInBytes=41644)
	load	[r14+-80],r5
	set	-45904,r4
	load	[r14+r4],r4
	mov	10411,r3
_Label_3426:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3426
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
!   _temp_1384 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1385 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1384  (sizeInBytes=4)
	load	[r14+-64],r1
	set	-45908,r2
	store	r1,[r14+r2]
_Label_1380:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1385 then goto _Label_1383		
	set	-45908,r1
	load	[r14+r1],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1383
_Label_1381:
	mov	747,r13		! source line 747
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	748,r13		! source line 748
	mov	"\0\0SE",r10
!   _temp_1386 = _StringConst_96
	set	_StringConst_96,r1
	store	r1,[r14+-56]
!   _temp_1387 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   Move address of _temp_1387 [i ] into _temp_1388
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
!   Prepare Argument: offset=12  value=_temp_1386  sizeInBytes=4
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
!   _temp_1389 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_1389 [i ] into _temp_1390
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
!   _temp_1391 = _temp_1390 + 76
	load	[r14+-40],r1
	add	r1,76,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_1391 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-36],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	750,r13		! source line 750
	mov	"\0\0SE",r10
!   _temp_1393 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1393 [i ] into _temp_1394
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
!   _temp_1392 = _temp_1394		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-32]
!   _temp_1395 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_1392  sizeInBytes=4
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
_Label_1382:
!   i = i + 1
	set	-45908,r1
	load	[r14+r1],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	set	-45908,r2
	store	r1,[r14+r2]
	jmp	_Label_1380
! END FOR
_Label_1383:
! SEND STATEMENT...
	mov	752,r13		! source line 752
	mov	"\0\0SE",r10
!   _temp_1396 = &threadManagerLock
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
!   _temp_1397 = &aThreadIsAvailable
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
	.word	_Label_1398
	.word	4		! total size of parameters
	.word	45908		! frame size = 45908
	.word	_Label_1399
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1400
	.word	-12
	.word	4
	.word	_Label_1401
	.word	-16
	.word	4
	.word	_Label_1402
	.word	-20
	.word	4
	.word	_Label_1403
	.word	-24
	.word	4
	.word	_Label_1404
	.word	-28
	.word	4
	.word	_Label_1405
	.word	-32
	.word	4
	.word	_Label_1406
	.word	-36
	.word	4
	.word	_Label_1407
	.word	-40
	.word	4
	.word	_Label_1408
	.word	-44
	.word	4
	.word	_Label_1409
	.word	-48
	.word	4
	.word	_Label_1410
	.word	-52
	.word	4
	.word	_Label_1411
	.word	-56
	.word	4
	.word	_Label_1412
	.word	-60
	.word	4
	.word	_Label_1413
	.word	-64
	.word	4
	.word	_Label_1414
	.word	-68
	.word	4
	.word	_Label_1415
	.word	-72
	.word	4
	.word	_Label_1416
	.word	-76
	.word	4
	.word	_Label_1417
	.word	-80
	.word	4
	.word	_Label_1418
	.word	-84
	.word	4
	.word	_Label_1419
	.word	-4248
	.word	4164
	.word	_Label_1420
	.word	-4252
	.word	4
	.word	_Label_1421
	.word	-4256
	.word	4
	.word	_Label_1422
	.word	-45900
	.word	41644
	.word	_Label_1423
	.word	-45904
	.word	4
	.word	_Label_1424
	.word	-45908
	.word	4
	.word	0
_Label_1398:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1399:
	.ascii	"Pself\0"
	.align
_Label_1400:
	.byte	'?'
	.ascii	"_temp_1397\0"
	.align
_Label_1401:
	.byte	'?'
	.ascii	"_temp_1396\0"
	.align
_Label_1402:
	.byte	'?'
	.ascii	"_temp_1395\0"
	.align
_Label_1403:
	.byte	'?'
	.ascii	"_temp_1394\0"
	.align
_Label_1404:
	.byte	'?'
	.ascii	"_temp_1393\0"
	.align
_Label_1405:
	.byte	'?'
	.ascii	"_temp_1392\0"
	.align
_Label_1406:
	.byte	'?'
	.ascii	"_temp_1391\0"
	.align
_Label_1407:
	.byte	'?'
	.ascii	"_temp_1390\0"
	.align
_Label_1408:
	.byte	'?'
	.ascii	"_temp_1389\0"
	.align
_Label_1409:
	.byte	'?'
	.ascii	"_temp_1388\0"
	.align
_Label_1410:
	.byte	'?'
	.ascii	"_temp_1387\0"
	.align
_Label_1411:
	.byte	'?'
	.ascii	"_temp_1386\0"
	.align
_Label_1412:
	.byte	'?'
	.ascii	"_temp_1385\0"
	.align
_Label_1413:
	.byte	'?'
	.ascii	"_temp_1384\0"
	.align
_Label_1414:
	.byte	'?'
	.ascii	"_temp_1379\0"
	.align
_Label_1415:
	.byte	'?'
	.ascii	"_temp_1378\0"
	.align
_Label_1416:
	.byte	'?'
	.ascii	"_temp_1377\0"
	.align
_Label_1417:
	.byte	'?'
	.ascii	"_temp_1376\0"
	.align
_Label_1418:
	.byte	'?'
	.ascii	"_temp_1374\0"
	.align
_Label_1419:
	.byte	'?'
	.ascii	"_temp_1373\0"
	.align
_Label_1420:
	.byte	'?'
	.ascii	"_temp_1372\0"
	.align
_Label_1421:
	.byte	'?'
	.ascii	"_temp_1371\0"
	.align
_Label_1422:
	.byte	'?'
	.ascii	"_temp_1370\0"
	.align
_Label_1423:
	.byte	'?'
	.ascii	"_temp_1369\0"
	.align
_Label_1424:
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
_Label_3427:
	push	r0
	sub	r1,1,r1
	bne	_Label_3427
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
!   _temp_1425 = _StringConst_97
	set	_StringConst_97,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1425  sizeInBytes=4
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
!   _temp_1430 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1431 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1430  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-56]
_Label_1426:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1431 then goto _Label_1429		
	load	[r14+-56],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1429
_Label_1427:
	mov	767,r13		! source line 767
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1432 = _StringConst_98
	set	_StringConst_98,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1432  sizeInBytes=4
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
!   _temp_1433 = _StringConst_99
	set	_StringConst_99,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1433  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	770,r13		! source line 770
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1435 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1435 [i ] into _temp_1436
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
!   _temp_1434 = _temp_1436		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1434  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	771,r13		! source line 771
	mov	"\0\0CA",r10
	call	_function_203_ThreadPrintShort
!   Increment the FOR-LOOP index variable and jump back
_Label_1428:
!   i = i + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1426
! END FOR
_Label_1429:
! CALL STATEMENT...
!   _temp_1437 = _StringConst_100
	set	_StringConst_100,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1437  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	773,r13		! source line 773
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	774,r13		! source line 774
	mov	"\0\0SE",r10
!   _temp_1438 = _function_202_PrintObjectAddr
	set	_function_202_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1439 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1438  sizeInBytes=4
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
	.word	_Label_1440
	.word	4		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1441
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1442
	.word	-12
	.word	4
	.word	_Label_1443
	.word	-16
	.word	4
	.word	_Label_1444
	.word	-20
	.word	4
	.word	_Label_1445
	.word	-24
	.word	4
	.word	_Label_1446
	.word	-28
	.word	4
	.word	_Label_1447
	.word	-32
	.word	4
	.word	_Label_1448
	.word	-36
	.word	4
	.word	_Label_1449
	.word	-40
	.word	4
	.word	_Label_1450
	.word	-44
	.word	4
	.word	_Label_1451
	.word	-48
	.word	4
	.word	_Label_1452
	.word	-52
	.word	4
	.word	_Label_1453
	.word	-56
	.word	4
	.word	_Label_1454
	.word	-60
	.word	4
	.word	0
_Label_1440:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1441:
	.ascii	"Pself\0"
	.align
_Label_1442:
	.byte	'?'
	.ascii	"_temp_1439\0"
	.align
_Label_1443:
	.byte	'?'
	.ascii	"_temp_1438\0"
	.align
_Label_1444:
	.byte	'?'
	.ascii	"_temp_1437\0"
	.align
_Label_1445:
	.byte	'?'
	.ascii	"_temp_1436\0"
	.align
_Label_1446:
	.byte	'?'
	.ascii	"_temp_1435\0"
	.align
_Label_1447:
	.byte	'?'
	.ascii	"_temp_1434\0"
	.align
_Label_1448:
	.byte	'?'
	.ascii	"_temp_1433\0"
	.align
_Label_1449:
	.byte	'?'
	.ascii	"_temp_1432\0"
	.align
_Label_1450:
	.byte	'?'
	.ascii	"_temp_1431\0"
	.align
_Label_1451:
	.byte	'?'
	.ascii	"_temp_1430\0"
	.align
_Label_1452:
	.byte	'?'
	.ascii	"_temp_1425\0"
	.align
_Label_1453:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1454:
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
_Label_3428:
	push	r0
	sub	r1,1,r1
	bne	_Label_3428
	mov	781,r13		! source line 781
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	787,r13		! source line 787
	mov	"\0\0SE",r10
!   _temp_1455 = &threadManagerLock
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
_Label_1456:
	mov	788,r13		! source line 788
	mov	"\0\0SE",r10
!   _temp_1459 = &freeList
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
!   if result==true then goto _Label_1457 else goto _Label_1458
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1458
	jmp	_Label_1457
_Label_1457:
	mov	788,r13		! source line 788
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	789,r13		! source line 789
	mov	"\0\0SE",r10
!   _temp_1460 = &threadManagerLock
	set	41676,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-28]
!   _temp_1461 = &aThreadIsAvailable
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1460  sizeInBytes=4
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
	jmp	_Label_1456
_Label_1458:
! ASSIGNMENT STATEMENT...
	mov	791,r13		! source line 791
	mov	"\0\0AS",r10
	mov	791,r13		! source line 791
	mov	"\0\0SE",r10
!   _temp_1462 = &freeList
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
!   _temp_1463 = availableThreadPtr + 76
	load	[r14+-40],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1463 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	793,r13		! source line 793
	mov	"\0\0SE",r10
!   _temp_1464 = &threadManagerLock
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
	.word	_Label_1465
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_1466
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1467
	.word	-12
	.word	4
	.word	_Label_1468
	.word	-16
	.word	4
	.word	_Label_1469
	.word	-20
	.word	4
	.word	_Label_1470
	.word	-24
	.word	4
	.word	_Label_1471
	.word	-28
	.word	4
	.word	_Label_1472
	.word	-32
	.word	4
	.word	_Label_1473
	.word	-36
	.word	4
	.word	_Label_1474
	.word	-40
	.word	4
	.word	0
_Label_1465:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"GetANewThread\0"
	.align
_Label_1466:
	.ascii	"Pself\0"
	.align
_Label_1467:
	.byte	'?'
	.ascii	"_temp_1464\0"
	.align
_Label_1468:
	.byte	'?'
	.ascii	"_temp_1463\0"
	.align
_Label_1469:
	.byte	'?'
	.ascii	"_temp_1462\0"
	.align
_Label_1470:
	.byte	'?'
	.ascii	"_temp_1461\0"
	.align
_Label_1471:
	.byte	'?'
	.ascii	"_temp_1460\0"
	.align
_Label_1472:
	.byte	'?'
	.ascii	"_temp_1459\0"
	.align
_Label_1473:
	.byte	'?'
	.ascii	"_temp_1455\0"
	.align
_Label_1474:
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
_Label_3429:
	push	r0
	sub	r1,1,r1
	bne	_Label_3429
	mov	799,r13		! source line 799
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	803,r13		! source line 803
	mov	"\0\0SE",r10
!   _temp_1475 = &threadManagerLock
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
!   _temp_1476 = th + 76
	load	[r14+12],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1476 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	805,r13		! source line 805
	mov	"\0\0SE",r10
!   _temp_1477 = &freeList
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
!   _temp_1478 = &threadManagerLock
	set	41676,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-20]
!   _temp_1479 = &aThreadIsAvailable
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1478  sizeInBytes=4
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
!   _temp_1480 = &threadManagerLock
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
	.word	_Label_1481
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1482
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1483
	.word	12
	.word	4
	.word	_Label_1484
	.word	-12
	.word	4
	.word	_Label_1485
	.word	-16
	.word	4
	.word	_Label_1486
	.word	-20
	.word	4
	.word	_Label_1487
	.word	-24
	.word	4
	.word	_Label_1488
	.word	-28
	.word	4
	.word	_Label_1489
	.word	-32
	.word	4
	.word	0
_Label_1481:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"FreeThread\0"
	.align
_Label_1482:
	.ascii	"Pself\0"
	.align
_Label_1483:
	.byte	'P'
	.ascii	"th\0"
	.align
_Label_1484:
	.byte	'?'
	.ascii	"_temp_1480\0"
	.align
_Label_1485:
	.byte	'?'
	.ascii	"_temp_1479\0"
	.align
_Label_1486:
	.byte	'?'
	.ascii	"_temp_1478\0"
	.align
_Label_1487:
	.byte	'?'
	.ascii	"_temp_1477\0"
	.align
_Label_1488:
	.byte	'?'
	.ascii	"_temp_1476\0"
	.align
_Label_1489:
	.byte	'?'
	.ascii	"_temp_1475\0"
	.align
! 
! ===============  CLASS ProcessControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessControlBlock:
	.word	_Label_1490
	jmp	_Method_P_Kernel_ProcessControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessControlBlock_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessControlBlock_3	! 12:	PrintShort
	.word	0
! 
! Class descriptor:
! 
_Label_1490:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1491
	.word	_sourceFileName
	.word	213		! line number
	.word	124		! size of instances, in bytes
	.word	_P_Kernel_ProcessControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_1491:
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
_Label_3430:
	push	r0
	sub	r1,1,r1
	bne	_Label_3430
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
_Label_3431:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3431
!   addrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! SEND STATEMENT...
	mov	824,r13		! source line 824
	mov	"\0\0SE",r10
!   _temp_1493 = &addrSpace
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
	mov	824,r13		! source line 824
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
	.word	_Label_1494
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1495
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1496
	.word	-12
	.word	4
	.word	_Label_1497
	.word	-16
	.word	4
	.word	0
_Label_1494:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1495:
	.ascii	"Pself\0"
	.align
_Label_1496:
	.byte	'?'
	.ascii	"_temp_1493\0"
	.align
_Label_1497:
	.byte	'?'
	.ascii	"_temp_1492\0"
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
_Label_3432:
	push	r0
	sub	r1,1,r1
	bne	_Label_3432
	mov	834,r13		! source line 834
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	839,r13		! source line 839
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1498) then goto _runtimeErrorNullPointer
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
!   _temp_1499 = _StringConst_101
	set	_StringConst_101,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1499  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	842,r13		! source line 842
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=myThread  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	843,r13		! source line 843
	mov	"\0\0CA",r10
	call	_function_203_ThreadPrintShort
! CALL STATEMENT...
!   Call the function
	mov	853,r13		! source line 853
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	853,r13		! source line 853
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
	.word	_Label_1500
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1501
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1502
	.word	-12
	.word	4
	.word	_Label_1503
	.word	-16
	.word	4
	.word	0
_Label_1500:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1501:
	.ascii	"Pself\0"
	.align
_Label_1502:
	.byte	'?'
	.ascii	"_temp_1499\0"
	.align
_Label_1503:
	.byte	'?'
	.ascii	"_temp_1498\0"
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
_Label_3433:
	push	r0
	sub	r1,1,r1
	bne	_Label_3433
	mov	858,r13		! source line 858
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1504 = _StringConst_102
	set	_StringConst_102,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1504  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	862,r13		! source line 862
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1505  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	863,r13		! source line 863
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1506 = _StringConst_103
	set	_StringConst_103,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1506  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	864,r13		! source line 864
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=pid  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	865,r13		! source line 865
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1507 = _StringConst_104
	set	_StringConst_104,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1507  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	866,r13		! source line 866
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	867,r13		! source line 867
	mov	"\0\0IF",r10
!   if status != 1 then goto _Label_1509		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_1509
!	jmp	_Label_1508
_Label_1508:
! THEN...
	mov	868,r13		! source line 868
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1510 = _StringConst_105
	set	_StringConst_105,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1510  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	868,r13		! source line 868
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1511
_Label_1509:
! ELSE...
	mov	869,r13		! source line 869
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	869,r13		! source line 869
	mov	"\0\0IF",r10
!   if status != 2 then goto _Label_1513		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1513
!	jmp	_Label_1512
_Label_1512:
! THEN...
	mov	870,r13		! source line 870
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1514 = _StringConst_106
	set	_StringConst_106,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1514  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	870,r13		! source line 870
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1515
_Label_1513:
! ELSE...
	mov	871,r13		! source line 871
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	871,r13		! source line 871
	mov	"\0\0IF",r10
!   if status != 3 then goto _Label_1517		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_1517
!	jmp	_Label_1516
_Label_1516:
! THEN...
	mov	872,r13		! source line 872
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1518 = _StringConst_107
	set	_StringConst_107,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1518  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	872,r13		! source line 872
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1519
_Label_1517:
! ELSE...
	mov	874,r13		! source line 874
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1520 = _StringConst_108
	set	_StringConst_108,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1520  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	874,r13		! source line 874
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1519:
! END IF...
_Label_1515:
! END IF...
_Label_1511:
! CALL STATEMENT...
!   _temp_1521 = _StringConst_109
	set	_StringConst_109,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1521  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	876,r13		! source line 876
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=parentsPid  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	877,r13		! source line 877
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1522 = _StringConst_110
	set	_StringConst_110,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1522  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	878,r13		! source line 878
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=exitStatus  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	879,r13		! source line 879
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	880,r13		! source line 880
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	880,r13		! source line 880
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
	.word	_Label_1523
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1524
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1525
	.word	-12
	.word	4
	.word	_Label_1526
	.word	-16
	.word	4
	.word	_Label_1527
	.word	-20
	.word	4
	.word	_Label_1528
	.word	-24
	.word	4
	.word	_Label_1529
	.word	-28
	.word	4
	.word	_Label_1530
	.word	-32
	.word	4
	.word	_Label_1531
	.word	-36
	.word	4
	.word	_Label_1532
	.word	-40
	.word	4
	.word	_Label_1533
	.word	-44
	.word	4
	.word	_Label_1534
	.word	-48
	.word	4
	.word	0
_Label_1523:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1524:
	.ascii	"Pself\0"
	.align
_Label_1525:
	.byte	'?'
	.ascii	"_temp_1522\0"
	.align
_Label_1526:
	.byte	'?'
	.ascii	"_temp_1521\0"
	.align
_Label_1527:
	.byte	'?'
	.ascii	"_temp_1520\0"
	.align
_Label_1528:
	.byte	'?'
	.ascii	"_temp_1518\0"
	.align
_Label_1529:
	.byte	'?'
	.ascii	"_temp_1514\0"
	.align
_Label_1530:
	.byte	'?'
	.ascii	"_temp_1510\0"
	.align
_Label_1531:
	.byte	'?'
	.ascii	"_temp_1507\0"
	.align
_Label_1532:
	.byte	'?'
	.ascii	"_temp_1506\0"
	.align
_Label_1533:
	.byte	'?'
	.ascii	"_temp_1505\0"
	.align
_Label_1534:
	.byte	'?'
	.ascii	"_temp_1504\0"
	.align
! 
! ===============  CLASS ProcessManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessManager:
	.word	_Label_1535
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
_Label_1535:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1536
	.word	_sourceFileName
	.word	233		! line number
	.word	1316		! size of instances, in bytes
	.word	_P_Kernel_ProcessManager
	.word	_P_System_Object
	.word	0
_Label_1536:
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
	mov	368,r1
_Label_3434:
	push	r0
	sub	r1,1,r1
	bne	_Label_3434
	mov	891,r13		! source line 891
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	897,r13		! source line 897
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
	mov	898,r13		! source line 898
	mov	"\0\0AS",r10
!   _temp_1538 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-1464]
!   NEW ARRAY Constructor...
!   _temp_1540 = &_temp_1539
	add	r14,-1460,r1
	store	r1,[r14+-216]
!   _temp_1540 = _temp_1540 + 4
	load	[r14+-216],r1
	add	r1,4,r1
	store	r1,[r14+-216]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1542 = zeros  (sizeInBytes=124)
	add	r14,-208,r4
	mov	31,r3
_Label_3435:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3435
!   _temp_1542 = _P_Kernel_ProcessControlBlock
	set	_P_Kernel_ProcessControlBlock,r1
	store	r1,[r14+-208]
	mov	10,r1
	store	r1,[r14+-212]
_Label_1544:
!   Data Move: *_temp_1540 = _temp_1542  (sizeInBytes=124)
	add	r14,-208,r5
	load	[r14+-216],r4
	mov	31,r3
_Label_3436:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3436
!   _temp_1540 = _temp_1540 + 124
	load	[r14+-216],r1
	add	r1,124,r1
	store	r1,[r14+-216]
!   _temp_1541 = _temp_1541 + -1
	load	[r14+-212],r1
	add	r1,-1,r1
	store	r1,[r14+-212]
!   if intNotZero (_temp_1541) then goto _Label_1544
	load	[r14+-212],r1
	cmp	r1,r0
	bne	_Label_1544
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-1460]
!   _temp_1545 = &_temp_1539
	add	r14,-1460,r1
	store	r1,[r14+-80]
!   make sure array has size 10
	load	[r14+-1464],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3437
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3437:
!   make sure array has size 10
	load	[r14+-80],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1538 = *_temp_1545  (sizeInBytes=1244)
	load	[r14+-80],r5
	load	[r14+-1464],r4
	mov	311,r3
_Label_3438:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3438
! ASSIGNMENT STATEMENT...
	mov	899,r13		! source line 899
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
	mov	900,r13		! source line 900
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
	mov	901,r13		! source line 901
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
	mov	902,r13		! source line 902
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1553 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1554 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1553  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-1472]
_Label_1549:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1554 then goto _Label_1552		
	load	[r14+-1472],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1552
_Label_1550:
	mov	902,r13		! source line 902
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	903,r13		! source line 903
	mov	"\0\0SE",r10
!   _temp_1555 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   Move address of _temp_1555 [i ] into _temp_1556
!     make sure index expr is >= 0
	load	[r14+-1472],r2
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
	set	124,r3
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
	mov	904,r13		! source line 904
	mov	"\0\0SE",r10
!   _temp_1558 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_1558 [i ] into _temp_1559
!     make sure index expr is >= 0
	load	[r14+-1472],r2
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
!   _temp_1557 = _temp_1559		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   _temp_1560 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_1557  sizeInBytes=4
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
	mov	905,r13		! source line 905
	mov	"\0\0AS",r10
!   _temp_1561 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Move address of _temp_1561 [i ] into _temp_1562
!     make sure index expr is >= 0
	load	[r14+-1472],r2
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
!   _temp_1563 = _temp_1562 + 20
	load	[r14+-28],r1
	add	r1,20,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1563 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-24],r2
	store	r1,[r2]
!   Increment the FOR-LOOP index variable and jump back
_Label_1551:
!   i = i + 1
	load	[r14+-1472],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-1472]
	jmp	_Label_1549
! END FOR
_Label_1552:
! ASSIGNMENT STATEMENT...
	mov	907,r13		! source line 907
	mov	"\0\0AS",r10
!   nextPid = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+1312]
! SEND STATEMENT...
	mov	908,r13		! source line 908
	mov	"\0\0SE",r10
!   _temp_1564 = &processManagerLock
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
	mov	909,r13		! source line 909
	mov	"\0\0SE",r10
!   _temp_1565 = &aProcessBecameFree
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
	mov	910,r13		! source line 910
	mov	"\0\0SE",r10
!   _temp_1566 = &aProcessDied
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
	mov	910,r13		! source line 910
	mov	"\0\0RE",r10
	add	r15,1476,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_1:
	.word	_sourceFileName
	.word	_Label_1567
	.word	4		! total size of parameters
	.word	1472		! frame size = 1472
	.word	_Label_1568
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1569
	.word	-12
	.word	4
	.word	_Label_1570
	.word	-16
	.word	4
	.word	_Label_1571
	.word	-20
	.word	4
	.word	_Label_1572
	.word	-24
	.word	4
	.word	_Label_1573
	.word	-28
	.word	4
	.word	_Label_1574
	.word	-32
	.word	4
	.word	_Label_1575
	.word	-36
	.word	4
	.word	_Label_1576
	.word	-40
	.word	4
	.word	_Label_1577
	.word	-44
	.word	4
	.word	_Label_1578
	.word	-48
	.word	4
	.word	_Label_1579
	.word	-52
	.word	4
	.word	_Label_1580
	.word	-56
	.word	4
	.word	_Label_1581
	.word	-60
	.word	4
	.word	_Label_1582
	.word	-64
	.word	4
	.word	_Label_1583
	.word	-68
	.word	4
	.word	_Label_1584
	.word	-72
	.word	4
	.word	_Label_1585
	.word	-76
	.word	4
	.word	_Label_1586
	.word	-80
	.word	4
	.word	_Label_1587
	.word	-84
	.word	4
	.word	_Label_1588
	.word	-208
	.word	124
	.word	_Label_1589
	.word	-212
	.word	4
	.word	_Label_1590
	.word	-216
	.word	4
	.word	_Label_1591
	.word	-1460
	.word	1244
	.word	_Label_1592
	.word	-1464
	.word	4
	.word	_Label_1593
	.word	-1468
	.word	4
	.word	_Label_1594
	.word	-1472
	.word	4
	.word	0
_Label_1567:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1568:
	.ascii	"Pself\0"
	.align
_Label_1569:
	.byte	'?'
	.ascii	"_temp_1566\0"
	.align
_Label_1570:
	.byte	'?'
	.ascii	"_temp_1565\0"
	.align
_Label_1571:
	.byte	'?'
	.ascii	"_temp_1564\0"
	.align
_Label_1572:
	.byte	'?'
	.ascii	"_temp_1563\0"
	.align
_Label_1573:
	.byte	'?'
	.ascii	"_temp_1562\0"
	.align
_Label_1574:
	.byte	'?'
	.ascii	"_temp_1561\0"
	.align
_Label_1575:
	.byte	'?'
	.ascii	"_temp_1560\0"
	.align
_Label_1576:
	.byte	'?'
	.ascii	"_temp_1559\0"
	.align
_Label_1577:
	.byte	'?'
	.ascii	"_temp_1558\0"
	.align
_Label_1578:
	.byte	'?'
	.ascii	"_temp_1557\0"
	.align
_Label_1579:
	.byte	'?'
	.ascii	"_temp_1556\0"
	.align
_Label_1580:
	.byte	'?'
	.ascii	"_temp_1555\0"
	.align
_Label_1581:
	.byte	'?'
	.ascii	"_temp_1554\0"
	.align
_Label_1582:
	.byte	'?'
	.ascii	"_temp_1553\0"
	.align
_Label_1583:
	.byte	'?'
	.ascii	"_temp_1548\0"
	.align
_Label_1584:
	.byte	'?'
	.ascii	"_temp_1547\0"
	.align
_Label_1585:
	.byte	'?'
	.ascii	"_temp_1546\0"
	.align
_Label_1586:
	.byte	'?'
	.ascii	"_temp_1545\0"
	.align
_Label_1587:
	.byte	'?'
	.ascii	"_temp_1543\0"
	.align
_Label_1588:
	.byte	'?'
	.ascii	"_temp_1542\0"
	.align
_Label_1589:
	.byte	'?'
	.ascii	"_temp_1541\0"
	.align
_Label_1590:
	.byte	'?'
	.ascii	"_temp_1540\0"
	.align
_Label_1591:
	.byte	'?'
	.ascii	"_temp_1539\0"
	.align
_Label_1592:
	.byte	'?'
	.ascii	"_temp_1538\0"
	.align
_Label_1593:
	.byte	'?'
	.ascii	"_temp_1537\0"
	.align
_Label_1594:
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
_Label_3439:
	push	r0
	sub	r1,1,r1
	bne	_Label_3439
	mov	915,r13		! source line 915
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	922,r13		! source line 922
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	922,r13		! source line 922
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! CALL STATEMENT...
!   _temp_1595 = _StringConst_111
	set	_StringConst_111,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1595  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	923,r13		! source line 923
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	924,r13		! source line 924
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1600 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1601 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1600  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-52]
_Label_1596:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1601 then goto _Label_1599		
	load	[r14+-52],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1599
_Label_1597:
	mov	924,r13		! source line 924
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1602 = _StringConst_112
	set	_StringConst_112,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1602  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	925,r13		! source line 925
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	926,r13		! source line 926
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1603 = _StringConst_113
	set	_StringConst_113,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1603  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	927,r13		! source line 927
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	928,r13		! source line 928
	mov	"\0\0SE",r10
!   _temp_1604 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1604 [i ] into _temp_1605
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
_Label_1598:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_1596
! END FOR
_Label_1599:
! CALL STATEMENT...
!   _temp_1606 = _StringConst_114
	set	_StringConst_114,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1606  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	930,r13		! source line 930
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	931,r13		! source line 931
	mov	"\0\0SE",r10
!   _temp_1607 = _function_202_PrintObjectAddr
	set	_function_202_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1608 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1607  sizeInBytes=4
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
	mov	932,r13		! source line 932
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	933,r13		! source line 933
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	933,r13		! source line 933
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! RETURN STATEMENT...
	mov	933,r13		! source line 933
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
	.word	_Label_1609
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1610
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1611
	.word	-12
	.word	4
	.word	_Label_1612
	.word	-16
	.word	4
	.word	_Label_1613
	.word	-20
	.word	4
	.word	_Label_1614
	.word	-24
	.word	4
	.word	_Label_1615
	.word	-28
	.word	4
	.word	_Label_1616
	.word	-32
	.word	4
	.word	_Label_1617
	.word	-36
	.word	4
	.word	_Label_1618
	.word	-40
	.word	4
	.word	_Label_1619
	.word	-44
	.word	4
	.word	_Label_1620
	.word	-48
	.word	4
	.word	_Label_1621
	.word	-52
	.word	4
	.word	_Label_1622
	.word	-56
	.word	4
	.word	0
_Label_1609:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1610:
	.ascii	"Pself\0"
	.align
_Label_1611:
	.byte	'?'
	.ascii	"_temp_1608\0"
	.align
_Label_1612:
	.byte	'?'
	.ascii	"_temp_1607\0"
	.align
_Label_1613:
	.byte	'?'
	.ascii	"_temp_1606\0"
	.align
_Label_1614:
	.byte	'?'
	.ascii	"_temp_1605\0"
	.align
_Label_1615:
	.byte	'?'
	.ascii	"_temp_1604\0"
	.align
_Label_1616:
	.byte	'?'
	.ascii	"_temp_1603\0"
	.align
_Label_1617:
	.byte	'?'
	.ascii	"_temp_1602\0"
	.align
_Label_1618:
	.byte	'?'
	.ascii	"_temp_1601\0"
	.align
_Label_1619:
	.byte	'?'
	.ascii	"_temp_1600\0"
	.align
_Label_1620:
	.byte	'?'
	.ascii	"_temp_1595\0"
	.align
_Label_1621:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1622:
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
_Label_3440:
	push	r0
	sub	r1,1,r1
	bne	_Label_3440
	mov	938,r13		! source line 938
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	945,r13		! source line 945
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	945,r13		! source line 945
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! CALL STATEMENT...
!   _temp_1623 = _StringConst_115
	set	_StringConst_115,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1623  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	946,r13		! source line 946
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	947,r13		! source line 947
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1628 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1629 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1628  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-48]
_Label_1624:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1629 then goto _Label_1627		
	load	[r14+-48],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1627
_Label_1625:
	mov	947,r13		! source line 947
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1630 = _StringConst_116
	set	_StringConst_116,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1630  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	948,r13		! source line 948
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	949,r13		! source line 949
	mov	"\0\0CE",r10
	call	printInt
! SEND STATEMENT...
	mov	950,r13		! source line 950
	mov	"\0\0SE",r10
!   _temp_1631 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1631 [i ] into _temp_1632
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
_Label_1626:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_1624
! END FOR
_Label_1627:
! CALL STATEMENT...
!   _temp_1633 = _StringConst_117
	set	_StringConst_117,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1633  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	952,r13		! source line 952
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	953,r13		! source line 953
	mov	"\0\0SE",r10
!   _temp_1634 = _function_202_PrintObjectAddr
	set	_function_202_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1635 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1634  sizeInBytes=4
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
	mov	954,r13		! source line 954
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	955,r13		! source line 955
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	955,r13		! source line 955
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! RETURN STATEMENT...
	mov	955,r13		! source line 955
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
	.word	_Label_1636
	.word	4		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_1637
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1638
	.word	-12
	.word	4
	.word	_Label_1639
	.word	-16
	.word	4
	.word	_Label_1640
	.word	-20
	.word	4
	.word	_Label_1641
	.word	-24
	.word	4
	.word	_Label_1642
	.word	-28
	.word	4
	.word	_Label_1643
	.word	-32
	.word	4
	.word	_Label_1644
	.word	-36
	.word	4
	.word	_Label_1645
	.word	-40
	.word	4
	.word	_Label_1646
	.word	-44
	.word	4
	.word	_Label_1647
	.word	-48
	.word	4
	.word	_Label_1648
	.word	-52
	.word	4
	.word	0
_Label_1636:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1637:
	.ascii	"Pself\0"
	.align
_Label_1638:
	.byte	'?'
	.ascii	"_temp_1635\0"
	.align
_Label_1639:
	.byte	'?'
	.ascii	"_temp_1634\0"
	.align
_Label_1640:
	.byte	'?'
	.ascii	"_temp_1633\0"
	.align
_Label_1641:
	.byte	'?'
	.ascii	"_temp_1632\0"
	.align
_Label_1642:
	.byte	'?'
	.ascii	"_temp_1631\0"
	.align
_Label_1643:
	.byte	'?'
	.ascii	"_temp_1630\0"
	.align
_Label_1644:
	.byte	'?'
	.ascii	"_temp_1629\0"
	.align
_Label_1645:
	.byte	'?'
	.ascii	"_temp_1628\0"
	.align
_Label_1646:
	.byte	'?'
	.ascii	"_temp_1623\0"
	.align
_Label_1647:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1648:
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
_Label_3441:
	push	r0
	sub	r1,1,r1
	bne	_Label_3441
	mov	960,r13		! source line 960
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	967,r13		! source line 967
	mov	"\0\0SE",r10
!   _temp_1649 = &processManagerLock
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
	mov	968,r13		! source line 968
	mov	"\0\0WH",r10
_Label_1650:
	mov	968,r13		! source line 968
	mov	"\0\0SE",r10
!   _temp_1653 = &freeList
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
!   if result==true then goto _Label_1651 else goto _Label_1652
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1652
	jmp	_Label_1651
_Label_1651:
	mov	968,r13		! source line 968
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	969,r13		! source line 969
	mov	"\0\0SE",r10
!   _temp_1654 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-32]
!   _temp_1655 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_1654  sizeInBytes=4
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
	jmp	_Label_1650
_Label_1652:
! ASSIGNMENT STATEMENT...
	mov	971,r13		! source line 971
	mov	"\0\0AS",r10
	mov	971,r13		! source line 971
	mov	"\0\0SE",r10
!   _temp_1656 = &freeList
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
	mov	972,r13		! source line 972
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
	mov	973,r13		! source line 973
	mov	"\0\0AS",r10
!   if intIsZero (nextProcessPtr) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1657 = nextProcessPtr + 12
	load	[r14+-44],r1
	add	r1,12,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1657 = nextPid  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+1312],r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	974,r13		! source line 974
	mov	"\0\0AS",r10
!   if intIsZero (nextProcessPtr) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1658 = nextProcessPtr + 20
	load	[r14+-44],r1
	add	r1,20,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1658 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	975,r13		! source line 975
	mov	"\0\0SE",r10
!   _temp_1659 = &processManagerLock
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
	mov	976,r13		! source line 976
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
	.word	_Label_1660
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1661
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1662
	.word	-12
	.word	4
	.word	_Label_1663
	.word	-16
	.word	4
	.word	_Label_1664
	.word	-20
	.word	4
	.word	_Label_1665
	.word	-24
	.word	4
	.word	_Label_1666
	.word	-28
	.word	4
	.word	_Label_1667
	.word	-32
	.word	4
	.word	_Label_1668
	.word	-36
	.word	4
	.word	_Label_1669
	.word	-40
	.word	4
	.word	_Label_1670
	.word	-44
	.word	4
	.word	0
_Label_1660:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"GetANewProcess\0"
	.align
_Label_1661:
	.ascii	"Pself\0"
	.align
_Label_1662:
	.byte	'?'
	.ascii	"_temp_1659\0"
	.align
_Label_1663:
	.byte	'?'
	.ascii	"_temp_1658\0"
	.align
_Label_1664:
	.byte	'?'
	.ascii	"_temp_1657\0"
	.align
_Label_1665:
	.byte	'?'
	.ascii	"_temp_1656\0"
	.align
_Label_1666:
	.byte	'?'
	.ascii	"_temp_1655\0"
	.align
_Label_1667:
	.byte	'?'
	.ascii	"_temp_1654\0"
	.align
_Label_1668:
	.byte	'?'
	.ascii	"_temp_1653\0"
	.align
_Label_1669:
	.byte	'?'
	.ascii	"_temp_1649\0"
	.align
_Label_1670:
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
_Label_3442:
	push	r0
	sub	r1,1,r1
	bne	_Label_3442
	mov	981,r13		! source line 981
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	985,r13		! source line 985
	mov	"\0\0SE",r10
!   _temp_1671 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-244]
!   _temp_1672 = _temp_1671 + 1248
	load	[r14+-244],r1
	add	r1,1248,r1
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
	mov	988,r13		! source line 988
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1677 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-236]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1678 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-232]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1677  (sizeInBytes=4)
	load	[r14+-236],r1
	store	r1,[r14+-248]
_Label_1673:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1678 then goto _Label_1676		
	load	[r14+-248],r1
	load	[r14+-232],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1676
_Label_1674:
	mov	988,r13		! source line 988
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	989,r13		! source line 989
	mov	"\0\0IF",r10
!   _temp_1682 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-224]
!   _temp_1683 = _temp_1682 + 4
	load	[r14+-224],r1
	add	r1,4,r1
	store	r1,[r14+-220]
!   Move address of _temp_1683 [i ] into _temp_1684
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
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-216]
!   _temp_1685 = _temp_1684 + 12
	load	[r14+-216],r1
	add	r1,12,r1
	store	r1,[r14+-212]
!   Data Move: _temp_1681 = *_temp_1685  (sizeInBytes=4)
	load	[r14+-212],r1
	load	[r1],r1
	store	r1,[r14+-228]
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1687 = p + 16
	load	[r14+12],r1
	add	r1,16,r1
	store	r1,[r14+-204]
!   Data Move: _temp_1686 = *_temp_1687  (sizeInBytes=4)
	load	[r14+-204],r1
	load	[r1],r1
	store	r1,[r14+-208]
!   if _temp_1681 != _temp_1686 then goto _Label_1680		(int)
	load	[r14+-228],r1
	load	[r14+-208],r2
	cmp	r1,r2
	bne	_Label_1680
!	jmp	_Label_1679
_Label_1679:
! THEN...
	mov	990,r13		! source line 990
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	990,r13		! source line 990
	mov	"\0\0AS",r10
!   _temp_1688 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-200]
!   _temp_1689 = _temp_1688 + 4
	load	[r14+-200],r1
	add	r1,4,r1
	store	r1,[r14+-196]
!   Move address of _temp_1689 [i ] into _temp_1690
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
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-192]
!   parentPcb = _temp_1690		(4 bytes)
	load	[r14+-192],r1
	store	r1,[r14+-252]
! END IF...
_Label_1680:
! IF STATEMENT...
	mov	992,r13		! source line 992
	mov	"\0\0IF",r10
!   _temp_1695 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-184]
!   _temp_1696 = _temp_1695 + 4
	load	[r14+-184],r1
	add	r1,4,r1
	store	r1,[r14+-180]
!   Move address of _temp_1696 [i ] into _temp_1697
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
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-176]
!   _temp_1698 = _temp_1697 + 20
	load	[r14+-176],r1
	add	r1,20,r1
	store	r1,[r14+-172]
!   Data Move: _temp_1694 = *_temp_1698  (sizeInBytes=4)
	load	[r14+-172],r1
	load	[r1],r1
	store	r1,[r14+-188]
!   if _temp_1694 != 2 then goto _Label_1692		(int)
	load	[r14+-188],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1692
!	jmp	_Label_1693
_Label_1693:
!   _temp_1700 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-164]
!   _temp_1701 = _temp_1700 + 4
	load	[r14+-164],r1
	add	r1,4,r1
	store	r1,[r14+-160]
!   Move address of _temp_1701 [i ] into _temp_1702
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
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-156]
!   _temp_1703 = _temp_1702 + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-152]
!   Data Move: _temp_1699 = *_temp_1703  (sizeInBytes=4)
	load	[r14+-152],r1
	load	[r1],r1
	store	r1,[r14+-168]
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1705 = p + 12
	load	[r14+12],r1
	add	r1,12,r1
	store	r1,[r14+-144]
!   Data Move: _temp_1704 = *_temp_1705  (sizeInBytes=4)
	load	[r14+-144],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   if _temp_1699 != _temp_1704 then goto _Label_1692		(int)
	load	[r14+-168],r1
	load	[r14+-148],r2
	cmp	r1,r2
	bne	_Label_1692
!	jmp	_Label_1691
_Label_1691:
! THEN...
	mov	993,r13		! source line 993
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	993,r13		! source line 993
	mov	"\0\0AS",r10
!   _temp_1706 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-140]
!   _temp_1707 = _temp_1706 + 4
	load	[r14+-140],r1
	add	r1,4,r1
	store	r1,[r14+-136]
!   Move address of _temp_1707 [i ] into _temp_1708
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
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-132]
!   _temp_1709 = _temp_1708 + 20
	load	[r14+-132],r1
	add	r1,20,r1
	store	r1,[r14+-128]
!   Data Move: *_temp_1709 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-128],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	994,r13		! source line 994
	mov	"\0\0SE",r10
!   _temp_1711 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-120]
!   _temp_1712 = _temp_1711 + 4
	load	[r14+-120],r1
	add	r1,4,r1
	store	r1,[r14+-116]
!   Move address of _temp_1712 [i ] into _temp_1713
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
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-112]
!   _temp_1710 = _temp_1713		(4 bytes)
	load	[r14+-112],r1
	store	r1,[r14+-124]
!   _temp_1714 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-108]
!   _temp_1715 = _temp_1714 + 1284
	load	[r14+-108],r1
	add	r1,1284,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=12  value=_temp_1710  sizeInBytes=4
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
	mov	995,r13		! source line 995
	mov	"\0\0SE",r10
!   _temp_1717 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-96]
!   _temp_1718 = _temp_1717 + 1248
	load	[r14+-96],r1
	add	r1,1248,r1
	store	r1,[r14+-92]
!   _temp_1716 = _temp_1718		(4 bytes)
	load	[r14+-92],r1
	store	r1,[r14+-100]
!   _temp_1719 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-88]
!   _temp_1720 = _temp_1719 + 1268
	load	[r14+-88],r1
	add	r1,1268,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=12  value=_temp_1716  sizeInBytes=4
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
_Label_1692:
!   Increment the FOR-LOOP index variable and jump back
_Label_1675:
!   i = i + 1
	load	[r14+-248],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-248]
	jmp	_Label_1673
! END FOR
_Label_1676:
! IF STATEMENT...
	mov	1000,r13		! source line 1000
	mov	"\0\0IF",r10
!   if intIsZero (parentPcb) then goto _Label_1722
	load	[r14+-252],r1
	cmp	r1,r0
	be	_Label_1722
!	jmp	_Label_1723
_Label_1723:
!   if intIsZero (parentPcb) then goto _runtimeErrorNullPointer
	load	[r14+-252],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1725 = parentPcb + 20
	load	[r14+-252],r1
	add	r1,20,r1
	store	r1,[r14+-76]
!   Data Move: _temp_1724 = *_temp_1725  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_1724 != 1 then goto _Label_1722		(int)
	load	[r14+-80],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_1722
!	jmp	_Label_1721
_Label_1721:
! THEN...
	mov	1001,r13		! source line 1001
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1001,r13		! source line 1001
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1726 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-72]
!   Data Move: *_temp_1726 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-72],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1002,r13		! source line 1002
	mov	"\0\0SE",r10
!   _temp_1728 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-64]
!   _temp_1729 = _temp_1728 + 1248
	load	[r14+-64],r1
	add	r1,1248,r1
	store	r1,[r14+-60]
!   _temp_1727 = _temp_1729		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-68]
!   _temp_1730 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-56]
!   _temp_1731 = _temp_1730 + 1296
	load	[r14+-56],r1
	add	r1,1296,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_1727  sizeInBytes=4
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
	jmp	_Label_1732
_Label_1722:
! ELSE...
	mov	1004,r13		! source line 1004
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	1004,r13		! source line 1004
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1733 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_1733 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1005,r13		! source line 1005
	mov	"\0\0SE",r10
!   _temp_1734 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-44]
!   _temp_1735 = _temp_1734 + 1284
	load	[r14+-44],r1
	add	r1,1284,r1
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
	mov	1006,r13		! source line 1006
	mov	"\0\0SE",r10
!   _temp_1737 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-32]
!   _temp_1738 = _temp_1737 + 1248
	load	[r14+-32],r1
	add	r1,1248,r1
	store	r1,[r14+-28]
!   _temp_1736 = _temp_1738		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   _temp_1739 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-24]
!   _temp_1740 = _temp_1739 + 1268
	load	[r14+-24],r1
	add	r1,1268,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_1736  sizeInBytes=4
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
_Label_1732:
! SEND STATEMENT...
	mov	1009,r13		! source line 1009
	mov	"\0\0SE",r10
!   _temp_1741 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-16]
!   _temp_1742 = _temp_1741 + 1248
	load	[r14+-16],r1
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
	mov	1009,r13		! source line 1009
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
	.word	_Label_1743
	.word	8		! total size of parameters
	.word	252		! frame size = 252
	.word	_Label_1744
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1745
	.word	12
	.word	4
	.word	_Label_1746
	.word	-12
	.word	4
	.word	_Label_1747
	.word	-16
	.word	4
	.word	_Label_1748
	.word	-20
	.word	4
	.word	_Label_1749
	.word	-24
	.word	4
	.word	_Label_1750
	.word	-28
	.word	4
	.word	_Label_1751
	.word	-32
	.word	4
	.word	_Label_1752
	.word	-36
	.word	4
	.word	_Label_1753
	.word	-40
	.word	4
	.word	_Label_1754
	.word	-44
	.word	4
	.word	_Label_1755
	.word	-48
	.word	4
	.word	_Label_1756
	.word	-52
	.word	4
	.word	_Label_1757
	.word	-56
	.word	4
	.word	_Label_1758
	.word	-60
	.word	4
	.word	_Label_1759
	.word	-64
	.word	4
	.word	_Label_1760
	.word	-68
	.word	4
	.word	_Label_1761
	.word	-72
	.word	4
	.word	_Label_1762
	.word	-76
	.word	4
	.word	_Label_1763
	.word	-80
	.word	4
	.word	_Label_1764
	.word	-84
	.word	4
	.word	_Label_1765
	.word	-88
	.word	4
	.word	_Label_1766
	.word	-92
	.word	4
	.word	_Label_1767
	.word	-96
	.word	4
	.word	_Label_1768
	.word	-100
	.word	4
	.word	_Label_1769
	.word	-104
	.word	4
	.word	_Label_1770
	.word	-108
	.word	4
	.word	_Label_1771
	.word	-112
	.word	4
	.word	_Label_1772
	.word	-116
	.word	4
	.word	_Label_1773
	.word	-120
	.word	4
	.word	_Label_1774
	.word	-124
	.word	4
	.word	_Label_1775
	.word	-128
	.word	4
	.word	_Label_1776
	.word	-132
	.word	4
	.word	_Label_1777
	.word	-136
	.word	4
	.word	_Label_1778
	.word	-140
	.word	4
	.word	_Label_1779
	.word	-144
	.word	4
	.word	_Label_1780
	.word	-148
	.word	4
	.word	_Label_1781
	.word	-152
	.word	4
	.word	_Label_1782
	.word	-156
	.word	4
	.word	_Label_1783
	.word	-160
	.word	4
	.word	_Label_1784
	.word	-164
	.word	4
	.word	_Label_1785
	.word	-168
	.word	4
	.word	_Label_1786
	.word	-172
	.word	4
	.word	_Label_1787
	.word	-176
	.word	4
	.word	_Label_1788
	.word	-180
	.word	4
	.word	_Label_1789
	.word	-184
	.word	4
	.word	_Label_1790
	.word	-188
	.word	4
	.word	_Label_1791
	.word	-192
	.word	4
	.word	_Label_1792
	.word	-196
	.word	4
	.word	_Label_1793
	.word	-200
	.word	4
	.word	_Label_1794
	.word	-204
	.word	4
	.word	_Label_1795
	.word	-208
	.word	4
	.word	_Label_1796
	.word	-212
	.word	4
	.word	_Label_1797
	.word	-216
	.word	4
	.word	_Label_1798
	.word	-220
	.word	4
	.word	_Label_1799
	.word	-224
	.word	4
	.word	_Label_1800
	.word	-228
	.word	4
	.word	_Label_1801
	.word	-232
	.word	4
	.word	_Label_1802
	.word	-236
	.word	4
	.word	_Label_1803
	.word	-240
	.word	4
	.word	_Label_1804
	.word	-244
	.word	4
	.word	_Label_1805
	.word	-248
	.word	4
	.word	_Label_1806
	.word	-252
	.word	4
	.word	0
_Label_1743:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"TurnIntoZombie\0"
	.align
_Label_1744:
	.ascii	"Pself\0"
	.align
_Label_1745:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_1746:
	.byte	'?'
	.ascii	"_temp_1742\0"
	.align
_Label_1747:
	.byte	'?'
	.ascii	"_temp_1741\0"
	.align
_Label_1748:
	.byte	'?'
	.ascii	"_temp_1740\0"
	.align
_Label_1749:
	.byte	'?'
	.ascii	"_temp_1739\0"
	.align
_Label_1750:
	.byte	'?'
	.ascii	"_temp_1738\0"
	.align
_Label_1751:
	.byte	'?'
	.ascii	"_temp_1737\0"
	.align
_Label_1752:
	.byte	'?'
	.ascii	"_temp_1736\0"
	.align
_Label_1753:
	.byte	'?'
	.ascii	"_temp_1735\0"
	.align
_Label_1754:
	.byte	'?'
	.ascii	"_temp_1734\0"
	.align
_Label_1755:
	.byte	'?'
	.ascii	"_temp_1733\0"
	.align
_Label_1756:
	.byte	'?'
	.ascii	"_temp_1731\0"
	.align
_Label_1757:
	.byte	'?'
	.ascii	"_temp_1730\0"
	.align
_Label_1758:
	.byte	'?'
	.ascii	"_temp_1729\0"
	.align
_Label_1759:
	.byte	'?'
	.ascii	"_temp_1728\0"
	.align
_Label_1760:
	.byte	'?'
	.ascii	"_temp_1727\0"
	.align
_Label_1761:
	.byte	'?'
	.ascii	"_temp_1726\0"
	.align
_Label_1762:
	.byte	'?'
	.ascii	"_temp_1725\0"
	.align
_Label_1763:
	.byte	'?'
	.ascii	"_temp_1724\0"
	.align
_Label_1764:
	.byte	'?'
	.ascii	"_temp_1720\0"
	.align
_Label_1765:
	.byte	'?'
	.ascii	"_temp_1719\0"
	.align
_Label_1766:
	.byte	'?'
	.ascii	"_temp_1718\0"
	.align
_Label_1767:
	.byte	'?'
	.ascii	"_temp_1717\0"
	.align
_Label_1768:
	.byte	'?'
	.ascii	"_temp_1716\0"
	.align
_Label_1769:
	.byte	'?'
	.ascii	"_temp_1715\0"
	.align
_Label_1770:
	.byte	'?'
	.ascii	"_temp_1714\0"
	.align
_Label_1771:
	.byte	'?'
	.ascii	"_temp_1713\0"
	.align
_Label_1772:
	.byte	'?'
	.ascii	"_temp_1712\0"
	.align
_Label_1773:
	.byte	'?'
	.ascii	"_temp_1711\0"
	.align
_Label_1774:
	.byte	'?'
	.ascii	"_temp_1710\0"
	.align
_Label_1775:
	.byte	'?'
	.ascii	"_temp_1709\0"
	.align
_Label_1776:
	.byte	'?'
	.ascii	"_temp_1708\0"
	.align
_Label_1777:
	.byte	'?'
	.ascii	"_temp_1707\0"
	.align
_Label_1778:
	.byte	'?'
	.ascii	"_temp_1706\0"
	.align
_Label_1779:
	.byte	'?'
	.ascii	"_temp_1705\0"
	.align
_Label_1780:
	.byte	'?'
	.ascii	"_temp_1704\0"
	.align
_Label_1781:
	.byte	'?'
	.ascii	"_temp_1703\0"
	.align
_Label_1782:
	.byte	'?'
	.ascii	"_temp_1702\0"
	.align
_Label_1783:
	.byte	'?'
	.ascii	"_temp_1701\0"
	.align
_Label_1784:
	.byte	'?'
	.ascii	"_temp_1700\0"
	.align
_Label_1785:
	.byte	'?'
	.ascii	"_temp_1699\0"
	.align
_Label_1786:
	.byte	'?'
	.ascii	"_temp_1698\0"
	.align
_Label_1787:
	.byte	'?'
	.ascii	"_temp_1697\0"
	.align
_Label_1788:
	.byte	'?'
	.ascii	"_temp_1696\0"
	.align
_Label_1789:
	.byte	'?'
	.ascii	"_temp_1695\0"
	.align
_Label_1790:
	.byte	'?'
	.ascii	"_temp_1694\0"
	.align
_Label_1791:
	.byte	'?'
	.ascii	"_temp_1690\0"
	.align
_Label_1792:
	.byte	'?'
	.ascii	"_temp_1689\0"
	.align
_Label_1793:
	.byte	'?'
	.ascii	"_temp_1688\0"
	.align
_Label_1794:
	.byte	'?'
	.ascii	"_temp_1687\0"
	.align
_Label_1795:
	.byte	'?'
	.ascii	"_temp_1686\0"
	.align
_Label_1796:
	.byte	'?'
	.ascii	"_temp_1685\0"
	.align
_Label_1797:
	.byte	'?'
	.ascii	"_temp_1684\0"
	.align
_Label_1798:
	.byte	'?'
	.ascii	"_temp_1683\0"
	.align
_Label_1799:
	.byte	'?'
	.ascii	"_temp_1682\0"
	.align
_Label_1800:
	.byte	'?'
	.ascii	"_temp_1681\0"
	.align
_Label_1801:
	.byte	'?'
	.ascii	"_temp_1678\0"
	.align
_Label_1802:
	.byte	'?'
	.ascii	"_temp_1677\0"
	.align
_Label_1803:
	.byte	'?'
	.ascii	"_temp_1672\0"
	.align
_Label_1804:
	.byte	'?'
	.ascii	"_temp_1671\0"
	.align
_Label_1805:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1806:
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
_Label_3443:
	push	r0
	sub	r1,1,r1
	bne	_Label_3443
	mov	1015,r13		! source line 1015
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1019,r13		! source line 1019
	mov	"\0\0SE",r10
!   _temp_1807 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-88]
!   _temp_1808 = _temp_1807 + 1248
	load	[r14+-88],r1
	add	r1,1248,r1
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
	mov	1021,r13		! source line 1021
	mov	"\0\0WH",r10
_Label_1809:
!   if intIsZero (proc) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1813 = proc + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-76]
!   Data Move: _temp_1812 = *_temp_1813  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_1812 == 2 then goto _Label_1811		(int)
	load	[r14+-80],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_1811
!	jmp	_Label_1810
_Label_1810:
	mov	1021,r13		! source line 1021
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1022,r13		! source line 1022
	mov	"\0\0SE",r10
!   _temp_1815 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-68]
!   _temp_1816 = _temp_1815 + 1248
	load	[r14+-68],r1
	add	r1,1248,r1
	store	r1,[r14+-64]
!   _temp_1814 = _temp_1816		(4 bytes)
	load	[r14+-64],r1
	store	r1,[r14+-72]
!   _temp_1817 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-60]
!   _temp_1818 = _temp_1817 + 1296
	load	[r14+-60],r1
	add	r1,1296,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=12  value=_temp_1814  sizeInBytes=4
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
	jmp	_Label_1809
_Label_1811:
! ASSIGNMENT STATEMENT...
	mov	1025,r13		! source line 1025
	mov	"\0\0AS",r10
!   if intIsZero (proc) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1819 = proc + 28
	load	[r14+12],r1
	add	r1,28,r1
	store	r1,[r14+-52]
!   Data Move: procExitStatus = *_temp_1819  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-92]
! ASSIGNMENT STATEMENT...
	mov	1026,r13		! source line 1026
	mov	"\0\0AS",r10
!   if intIsZero (proc) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1820 = proc + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_1820 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1027,r13		! source line 1027
	mov	"\0\0SE",r10
!   _temp_1821 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-44]
!   _temp_1822 = _temp_1821 + 1284
	load	[r14+-44],r1
	add	r1,1284,r1
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
	mov	1028,r13		! source line 1028
	mov	"\0\0SE",r10
!   _temp_1824 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-32]
!   _temp_1825 = _temp_1824 + 1248
	load	[r14+-32],r1
	add	r1,1248,r1
	store	r1,[r14+-28]
!   _temp_1823 = _temp_1825		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   _temp_1826 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-24]
!   _temp_1827 = _temp_1826 + 1268
	load	[r14+-24],r1
	add	r1,1268,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_1823  sizeInBytes=4
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
	mov	1030,r13		! source line 1030
	mov	"\0\0SE",r10
!   _temp_1828 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-16]
!   _temp_1829 = _temp_1828 + 1248
	load	[r14+-16],r1
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
	mov	1031,r13		! source line 1031
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
	.word	_Label_1830
	.word	8		! total size of parameters
	.word	92		! frame size = 92
	.word	_Label_1831
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1832
	.word	12
	.word	4
	.word	_Label_1833
	.word	-12
	.word	4
	.word	_Label_1834
	.word	-16
	.word	4
	.word	_Label_1835
	.word	-20
	.word	4
	.word	_Label_1836
	.word	-24
	.word	4
	.word	_Label_1837
	.word	-28
	.word	4
	.word	_Label_1838
	.word	-32
	.word	4
	.word	_Label_1839
	.word	-36
	.word	4
	.word	_Label_1840
	.word	-40
	.word	4
	.word	_Label_1841
	.word	-44
	.word	4
	.word	_Label_1842
	.word	-48
	.word	4
	.word	_Label_1843
	.word	-52
	.word	4
	.word	_Label_1844
	.word	-56
	.word	4
	.word	_Label_1845
	.word	-60
	.word	4
	.word	_Label_1846
	.word	-64
	.word	4
	.word	_Label_1847
	.word	-68
	.word	4
	.word	_Label_1848
	.word	-72
	.word	4
	.word	_Label_1849
	.word	-76
	.word	4
	.word	_Label_1850
	.word	-80
	.word	4
	.word	_Label_1851
	.word	-84
	.word	4
	.word	_Label_1852
	.word	-88
	.word	4
	.word	_Label_1853
	.word	-92
	.word	4
	.word	0
_Label_1830:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"WaitForZombie\0"
	.align
_Label_1831:
	.ascii	"Pself\0"
	.align
_Label_1832:
	.byte	'P'
	.ascii	"proc\0"
	.align
_Label_1833:
	.byte	'?'
	.ascii	"_temp_1829\0"
	.align
_Label_1834:
	.byte	'?'
	.ascii	"_temp_1828\0"
	.align
_Label_1835:
	.byte	'?'
	.ascii	"_temp_1827\0"
	.align
_Label_1836:
	.byte	'?'
	.ascii	"_temp_1826\0"
	.align
_Label_1837:
	.byte	'?'
	.ascii	"_temp_1825\0"
	.align
_Label_1838:
	.byte	'?'
	.ascii	"_temp_1824\0"
	.align
_Label_1839:
	.byte	'?'
	.ascii	"_temp_1823\0"
	.align
_Label_1840:
	.byte	'?'
	.ascii	"_temp_1822\0"
	.align
_Label_1841:
	.byte	'?'
	.ascii	"_temp_1821\0"
	.align
_Label_1842:
	.byte	'?'
	.ascii	"_temp_1820\0"
	.align
_Label_1843:
	.byte	'?'
	.ascii	"_temp_1819\0"
	.align
_Label_1844:
	.byte	'?'
	.ascii	"_temp_1818\0"
	.align
_Label_1845:
	.byte	'?'
	.ascii	"_temp_1817\0"
	.align
_Label_1846:
	.byte	'?'
	.ascii	"_temp_1816\0"
	.align
_Label_1847:
	.byte	'?'
	.ascii	"_temp_1815\0"
	.align
_Label_1848:
	.byte	'?'
	.ascii	"_temp_1814\0"
	.align
_Label_1849:
	.byte	'?'
	.ascii	"_temp_1813\0"
	.align
_Label_1850:
	.byte	'?'
	.ascii	"_temp_1812\0"
	.align
_Label_1851:
	.byte	'?'
	.ascii	"_temp_1808\0"
	.align
_Label_1852:
	.byte	'?'
	.ascii	"_temp_1807\0"
	.align
_Label_1853:
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
_Label_3444:
	push	r0
	sub	r1,1,r1
	bne	_Label_3444
	mov	1036,r13		! source line 1036
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1040,r13		! source line 1040
	mov	"\0\0SE",r10
!   _temp_1854 = &processManagerLock
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
	mov	1041,r13		! source line 1041
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1855 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1855 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1042,r13		! source line 1042
	mov	"\0\0SE",r10
!   _temp_1856 = &freeList
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
	mov	1043,r13		! source line 1043
	mov	"\0\0SE",r10
!   _temp_1857 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-20]
!   _temp_1858 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1857  sizeInBytes=4
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
	mov	1044,r13		! source line 1044
	mov	"\0\0SE",r10
!   _temp_1859 = &processManagerLock
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
	mov	1044,r13		! source line 1044
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
	.word	_Label_1860
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1861
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1862
	.word	12
	.word	4
	.word	_Label_1863
	.word	-12
	.word	4
	.word	_Label_1864
	.word	-16
	.word	4
	.word	_Label_1865
	.word	-20
	.word	4
	.word	_Label_1866
	.word	-24
	.word	4
	.word	_Label_1867
	.word	-28
	.word	4
	.word	_Label_1868
	.word	-32
	.word	4
	.word	0
_Label_1860:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"FreeProcess\0"
	.align
_Label_1861:
	.ascii	"Pself\0"
	.align
_Label_1862:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_1863:
	.byte	'?'
	.ascii	"_temp_1859\0"
	.align
_Label_1864:
	.byte	'?'
	.ascii	"_temp_1858\0"
	.align
_Label_1865:
	.byte	'?'
	.ascii	"_temp_1857\0"
	.align
_Label_1866:
	.byte	'?'
	.ascii	"_temp_1856\0"
	.align
_Label_1867:
	.byte	'?'
	.ascii	"_temp_1855\0"
	.align
_Label_1868:
	.byte	'?'
	.ascii	"_temp_1854\0"
	.align
! 
! ===============  CLASS FrameManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FrameManager:
	.word	_Label_1869
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
_Label_1869:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1870
	.word	_sourceFileName
	.word	256		! line number
	.word	56		! size of instances, in bytes
	.word	_P_Kernel_FrameManager
	.word	_P_System_Object
	.word	0
_Label_1870:
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
_Label_3445:
	push	r0
	sub	r1,1,r1
	bne	_Label_3445
	mov	1085,r13		! source line 1085
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1871 = _StringConst_118
	set	_StringConst_118,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1871  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	1091,r13		! source line 1091
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1092,r13		! source line 1092
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
	mov	1093,r13		! source line 1093
	mov	"\0\0SE",r10
!   _temp_1873 = &framesInUse
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
	mov	1094,r13		! source line 1094
	mov	"\0\0AS",r10
!   numberFreeFrames = 512		(4 bytes)
	mov	512,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1095,r13		! source line 1095
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
	mov	1096,r13		! source line 1096
	mov	"\0\0SE",r10
!   _temp_1875 = &frameManagerLock
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
	mov	1097,r13		! source line 1097
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
	mov	1098,r13		! source line 1098
	mov	"\0\0SE",r10
!   _temp_1877 = &newFramesAvailable
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
	mov	1104,r13		! source line 1104
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1882 = 1048576		(4 bytes)
	set	1048576,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1883 = 1048876		(4 bytes)
	set	1048876,r1
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1882  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-56]
_Label_1878:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1883 then goto _Label_1881		
	load	[r14+-56],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1881
_Label_1879:
	mov	1104,r13		! source line 1104
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1107,r13		! source line 1107
	mov	"\0\0IF",r10
!   if intIsZero (i) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1886 = *i  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1886) then goto _Label_1885
	load	[r14+-16],r1
	cmp	r1,r0
	be	_Label_1885
!	jmp	_Label_1884
_Label_1884:
! THEN...
	mov	1108,r13		! source line 1108
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1887 = _StringConst_119
	set	_StringConst_119,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1887  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1108,r13		! source line 1108
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1885:
!   Increment the FOR-LOOP index variable and jump back
_Label_1880:
!   i = i + 4
	load	[r14+-56],r1
	add	r1,4,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1878
! END FOR
_Label_1881:
! RETURN STATEMENT...
	mov	1104,r13		! source line 1104
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
	.word	_Label_1888
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1889
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1890
	.word	-12
	.word	4
	.word	_Label_1891
	.word	-16
	.word	4
	.word	_Label_1892
	.word	-20
	.word	4
	.word	_Label_1893
	.word	-24
	.word	4
	.word	_Label_1894
	.word	-28
	.word	4
	.word	_Label_1895
	.word	-32
	.word	4
	.word	_Label_1896
	.word	-36
	.word	4
	.word	_Label_1897
	.word	-40
	.word	4
	.word	_Label_1898
	.word	-44
	.word	4
	.word	_Label_1899
	.word	-48
	.word	4
	.word	_Label_1900
	.word	-52
	.word	4
	.word	_Label_1901
	.word	-56
	.word	4
	.word	0
_Label_1888:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1889:
	.ascii	"Pself\0"
	.align
_Label_1890:
	.byte	'?'
	.ascii	"_temp_1887\0"
	.align
_Label_1891:
	.byte	'?'
	.ascii	"_temp_1886\0"
	.align
_Label_1892:
	.byte	'?'
	.ascii	"_temp_1883\0"
	.align
_Label_1893:
	.byte	'?'
	.ascii	"_temp_1882\0"
	.align
_Label_1894:
	.byte	'?'
	.ascii	"_temp_1877\0"
	.align
_Label_1895:
	.byte	'?'
	.ascii	"_temp_1876\0"
	.align
_Label_1896:
	.byte	'?'
	.ascii	"_temp_1875\0"
	.align
_Label_1897:
	.byte	'?'
	.ascii	"_temp_1874\0"
	.align
_Label_1898:
	.byte	'?'
	.ascii	"_temp_1873\0"
	.align
_Label_1899:
	.byte	'?'
	.ascii	"_temp_1872\0"
	.align
_Label_1900:
	.byte	'?'
	.ascii	"_temp_1871\0"
	.align
_Label_1901:
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
_Label_3446:
	push	r0
	sub	r1,1,r1
	bne	_Label_3446
	mov	1115,r13		! source line 1115
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1119,r13		! source line 1119
	mov	"\0\0SE",r10
!   _temp_1902 = &frameManagerLock
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
!   _temp_1903 = _StringConst_120
	set	_StringConst_120,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1903  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1120,r13		! source line 1120
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1904 = _StringConst_121
	set	_StringConst_121,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1904  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=numberFreeFrames  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1121,r13		! source line 1121
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_1905 = _StringConst_122
	set	_StringConst_122,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1905  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1122,r13		! source line 1122
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1123,r13		! source line 1123
	mov	"\0\0SE",r10
!   _temp_1906 = &framesInUse
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
	mov	1124,r13		! source line 1124
	mov	"\0\0SE",r10
!   _temp_1907 = &frameManagerLock
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
	mov	1124,r13		! source line 1124
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
	.word	_Label_1908
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1909
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1910
	.word	-12
	.word	4
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
	.word	0
_Label_1908:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1909:
	.ascii	"Pself\0"
	.align
_Label_1910:
	.byte	'?'
	.ascii	"_temp_1907\0"
	.align
_Label_1911:
	.byte	'?'
	.ascii	"_temp_1906\0"
	.align
_Label_1912:
	.byte	'?'
	.ascii	"_temp_1905\0"
	.align
_Label_1913:
	.byte	'?'
	.ascii	"_temp_1904\0"
	.align
_Label_1914:
	.byte	'?'
	.ascii	"_temp_1903\0"
	.align
_Label_1915:
	.byte	'?'
	.ascii	"_temp_1902\0"
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
_Label_3447:
	push	r0
	sub	r1,1,r1
	bne	_Label_3447
	mov	1129,r13		! source line 1129
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1136,r13		! source line 1136
	mov	"\0\0SE",r10
!   _temp_1916 = &frameManagerLock
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
	mov	1139,r13		! source line 1139
	mov	"\0\0WH",r10
_Label_1917:
!   if numberFreeFrames >= 1 then goto _Label_1919		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1919
!	jmp	_Label_1918
_Label_1918:
	mov	1139,r13		! source line 1139
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1140,r13		! source line 1140
	mov	"\0\0SE",r10
!   _temp_1920 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   _temp_1921 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1920  sizeInBytes=4
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
	jmp	_Label_1917
_Label_1919:
! ASSIGNMENT STATEMENT...
	mov	1144,r13		! source line 1144
	mov	"\0\0AS",r10
	mov	1144,r13		! source line 1144
	mov	"\0\0SE",r10
!   _temp_1922 = &framesInUse
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
	mov	1145,r13		! source line 1145
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
	mov	1148,r13		! source line 1148
	mov	"\0\0SE",r10
!   _temp_1923 = &frameManagerLock
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
	mov	1151,r13		! source line 1151
	mov	"\0\0AS",r10
!   _temp_1924 = f * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   frameAddr = 1048576 + _temp_1924		(int)
	set	1048576,r1
	load	[r14+-12],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! RETURN STATEMENT...
	mov	1153,r13		! source line 1153
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
	.word	_Label_1925
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_1926
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1927
	.word	-12
	.word	4
	.word	_Label_1928
	.word	-16
	.word	4
	.word	_Label_1929
	.word	-20
	.word	4
	.word	_Label_1930
	.word	-24
	.word	4
	.word	_Label_1931
	.word	-28
	.word	4
	.word	_Label_1932
	.word	-32
	.word	4
	.word	_Label_1933
	.word	-36
	.word	4
	.word	_Label_1934
	.word	-40
	.word	4
	.word	0
_Label_1925:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetAFrame\0"
	.align
_Label_1926:
	.ascii	"Pself\0"
	.align
_Label_1927:
	.byte	'?'
	.ascii	"_temp_1924\0"
	.align
_Label_1928:
	.byte	'?'
	.ascii	"_temp_1923\0"
	.align
_Label_1929:
	.byte	'?'
	.ascii	"_temp_1922\0"
	.align
_Label_1930:
	.byte	'?'
	.ascii	"_temp_1921\0"
	.align
_Label_1931:
	.byte	'?'
	.ascii	"_temp_1920\0"
	.align
_Label_1932:
	.byte	'?'
	.ascii	"_temp_1916\0"
	.align
_Label_1933:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_1934:
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
_Label_3448:
	push	r0
	sub	r1,1,r1
	bne	_Label_3448
	mov	1156,r13		! source line 1156
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1163,r13		! source line 1163
	mov	"\0\0AS",r10
	mov	1163,r13		! source line 1163
	mov	"\0\0SE",r10
!   _temp_1935 = &framesInUse
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
	mov	1166,r13		! source line 1166
	mov	"\0\0AS",r10
!   _temp_1936 = f * 8192		(int)
	load	[r14+-20],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   frameAddr = 1048576 + _temp_1936		(int)
	set	1048576,r1
	load	[r14+-12],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	1168,r13		! source line 1168
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
	.word	_Label_1937
	.word	4		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1938
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1939
	.word	-12
	.word	4
	.word	_Label_1940
	.word	-16
	.word	4
	.word	_Label_1941
	.word	-20
	.word	4
	.word	_Label_1942
	.word	-24
	.word	4
	.word	0
_Label_1937:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetAFrame2\0"
	.align
_Label_1938:
	.ascii	"Pself\0"
	.align
_Label_1939:
	.byte	'?'
	.ascii	"_temp_1936\0"
	.align
_Label_1940:
	.byte	'?'
	.ascii	"_temp_1935\0"
	.align
_Label_1941:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_1942:
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
_Label_3449:
	push	r0
	sub	r1,1,r1
	bne	_Label_3449
	mov	1173,r13		! source line 1173
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1177,r13		! source line 1177
	mov	"\0\0SE",r10
!   _temp_1943 = &frameManagerLock
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
	mov	1178,r13		! source line 1178
	mov	"\0\0WH",r10
_Label_1944:
!   if numberFreeFrames >= numFramesNeeded then goto _Label_1946		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1946
!	jmp	_Label_1945
_Label_1945:
	mov	1178,r13		! source line 1178
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1179,r13		! source line 1179
	mov	"\0\0SE",r10
!   _temp_1947 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   _temp_1948 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_1947  sizeInBytes=4
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
	jmp	_Label_1944
_Label_1946:
! FOR STATEMENT...
	mov	1181,r13		! source line 1181
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1953 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-28]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1954 = numFramesNeeded - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1953  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+-44]
_Label_1949:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1954 then goto _Label_1952		
	load	[r14+-44],r1
	load	[r14+-24],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1952
_Label_1950:
	mov	1181,r13		! source line 1181
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1182,r13		! source line 1182
	mov	"\0\0AS",r10
	mov	1182,r13		! source line 1182
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1955) then goto _runtimeErrorNullPointer
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
	mov	1183,r13		! source line 1183
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
_Label_1951:
!   i = i + 1
	load	[r14+-44],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
	jmp	_Label_1949
! END FOR
_Label_1952:
! ASSIGNMENT STATEMENT...
	mov	1185,r13		! source line 1185
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
	mov	1186,r13		! source line 1186
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1956 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1956 = numFramesNeeded  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1187,r13		! source line 1187
	mov	"\0\0SE",r10
!   _temp_1957 = &frameManagerLock
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
	mov	1187,r13		! source line 1187
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
	.word	_Label_1958
	.word	12		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_1959
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1960
	.word	12
	.word	4
	.word	_Label_1961
	.word	16
	.word	4
	.word	_Label_1962
	.word	-12
	.word	4
	.word	_Label_1963
	.word	-16
	.word	4
	.word	_Label_1964
	.word	-20
	.word	4
	.word	_Label_1965
	.word	-24
	.word	4
	.word	_Label_1966
	.word	-28
	.word	4
	.word	_Label_1967
	.word	-32
	.word	4
	.word	_Label_1968
	.word	-36
	.word	4
	.word	_Label_1969
	.word	-40
	.word	4
	.word	_Label_1970
	.word	-44
	.word	4
	.word	_Label_1971
	.word	-48
	.word	4
	.word	0
_Label_1958:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetNewFrames\0"
	.align
_Label_1959:
	.ascii	"Pself\0"
	.align
_Label_1960:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1961:
	.byte	'I'
	.ascii	"numFramesNeeded\0"
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
	.ascii	"_temp_1948\0"
	.align
_Label_1968:
	.byte	'?'
	.ascii	"_temp_1947\0"
	.align
_Label_1969:
	.byte	'?'
	.ascii	"_temp_1943\0"
	.align
_Label_1970:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1971:
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
_Label_3450:
	push	r0
	sub	r1,1,r1
	bne	_Label_3450
	mov	1192,r13		! source line 1192
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1197,r13		! source line 1197
	mov	"\0\0SE",r10
!   _temp_1972 = &frameManagerLock
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
	mov	1198,r13		! source line 1198
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1977 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-52]
!   Calculate and save the FOR-LOOP ending value
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1980 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Data Move: _temp_1979 = *_temp_1980  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_1978 = _temp_1979 - 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1977  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+-60]
_Label_1973:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1978 then goto _Label_1976		
	load	[r14+-60],r1
	load	[r14+-48],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1976
_Label_1974:
	mov	1198,r13		! source line 1198
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1199,r13		! source line 1199
	mov	"\0\0AS",r10
	mov	1199,r13		! source line 1199
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
	mov	1200,r13		! source line 1200
	mov	"\0\0AS",r10
!   _temp_1981 = frameAddr - 1048576		(int)
	load	[r14+-68],r1
	set	1048576,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   bitIndex = _temp_1981 div 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
! SEND STATEMENT...
	mov	1201,r13		! source line 1201
	mov	"\0\0SE",r10
!   _temp_1982 = &framesInUse
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
_Label_1975:
!   i = i + 1
	load	[r14+-60],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
	jmp	_Label_1973
! END FOR
_Label_1976:
! ASSIGNMENT STATEMENT...
	mov	1203,r13		! source line 1203
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1984 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Data Move: _temp_1983 = *_temp_1984  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   numberFreeFrames = numberFreeFrames + _temp_1983		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+-28],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! SEND STATEMENT...
	mov	1204,r13		! source line 1204
	mov	"\0\0SE",r10
!   _temp_1985 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   _temp_1986 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1985  sizeInBytes=4
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
	mov	1205,r13		! source line 1205
	mov	"\0\0SE",r10
!   _temp_1987 = &frameManagerLock
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
	mov	1205,r13		! source line 1205
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
	.word	_Label_1988
	.word	8		! total size of parameters
	.word	68		! frame size = 68
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
	.word	_Label_1993
	.word	-20
	.word	4
	.word	_Label_1994
	.word	-24
	.word	4
	.word	_Label_1995
	.word	-28
	.word	4
	.word	_Label_1996
	.word	-32
	.word	4
	.word	_Label_1997
	.word	-36
	.word	4
	.word	_Label_1998
	.word	-40
	.word	4
	.word	_Label_1999
	.word	-44
	.word	4
	.word	_Label_2000
	.word	-48
	.word	4
	.word	_Label_2001
	.word	-52
	.word	4
	.word	_Label_2002
	.word	-56
	.word	4
	.word	_Label_2003
	.word	-60
	.word	4
	.word	_Label_2004
	.word	-64
	.word	4
	.word	_Label_2005
	.word	-68
	.word	4
	.word	0
_Label_1988:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"ReturnAllFrames\0"
	.align
_Label_1989:
	.ascii	"Pself\0"
	.align
_Label_1990:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1991:
	.byte	'?'
	.ascii	"_temp_1987\0"
	.align
_Label_1992:
	.byte	'?'
	.ascii	"_temp_1986\0"
	.align
_Label_1993:
	.byte	'?'
	.ascii	"_temp_1985\0"
	.align
_Label_1994:
	.byte	'?'
	.ascii	"_temp_1984\0"
	.align
_Label_1995:
	.byte	'?'
	.ascii	"_temp_1983\0"
	.align
_Label_1996:
	.byte	'?'
	.ascii	"_temp_1982\0"
	.align
_Label_1997:
	.byte	'?'
	.ascii	"_temp_1981\0"
	.align
_Label_1998:
	.byte	'?'
	.ascii	"_temp_1980\0"
	.align
_Label_1999:
	.byte	'?'
	.ascii	"_temp_1979\0"
	.align
_Label_2000:
	.byte	'?'
	.ascii	"_temp_1978\0"
	.align
_Label_2001:
	.byte	'?'
	.ascii	"_temp_1977\0"
	.align
_Label_2002:
	.byte	'?'
	.ascii	"_temp_1972\0"
	.align
_Label_2003:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2004:
	.byte	'I'
	.ascii	"bitIndex\0"
	.align
_Label_2005:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
! 
! ===============  CLASS AddrSpace  ===============
! 
! Dispatch Table:
! 
_P_Kernel_AddrSpace:
	.word	_Label_2006
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
_Label_2006:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2007
	.word	_sourceFileName
	.word	276		! line number
	.word	92		! size of instances, in bytes
	.word	_P_Kernel_AddrSpace
	.word	_P_System_Object
	.word	0
_Label_2007:
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
_Label_3451:
	push	r0
	sub	r1,1,r1
	bne	_Label_3451
	mov	1216,r13		! source line 1216
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1220,r13		! source line 1220
	mov	"\0\0AS",r10
!   numberOfPages = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	1221,r13		! source line 1221
	mov	"\0\0AS",r10
!   _temp_2008 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-108]
!   NEW ARRAY Constructor...
!   _temp_2010 = &_temp_2009
	add	r14,-104,r1
	store	r1,[r14+-20]
!   _temp_2010 = _temp_2010 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	20,r1
	store	r1,[r14+-16]
_Label_2012:
!   Data Move: *_temp_2010 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_2010 = _temp_2010 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_2011 = _temp_2011 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_2011) then goto _Label_2012
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_2012
!   Initialize the array size...
	mov	20,r1
	store	r1,[r14+-104]
!   _temp_2013 = &_temp_2009
	add	r14,-104,r1
	store	r1,[r14+-12]
!   make sure array has size 20
	load	[r14+-108],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,0
	be	_Label_3452
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3452:
!   make sure array has size 20
	load	[r14+-12],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2008 = *_temp_2013  (sizeInBytes=84)
	load	[r14+-12],r5
	load	[r14+-108],r4
	mov	21,r3
_Label_3453:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3453
! RETURN STATEMENT...
	mov	1221,r13		! source line 1221
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
	.word	_Label_2014
	.word	4		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_2015
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2016
	.word	-12
	.word	4
	.word	_Label_2017
	.word	-16
	.word	4
	.word	_Label_2018
	.word	-20
	.word	4
	.word	_Label_2019
	.word	-104
	.word	84
	.word	_Label_2020
	.word	-108
	.word	4
	.word	0
_Label_2014:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2015:
	.ascii	"Pself\0"
	.align
_Label_2016:
	.byte	'?'
	.ascii	"_temp_2013\0"
	.align
_Label_2017:
	.byte	'?'
	.ascii	"_temp_2011\0"
	.align
_Label_2018:
	.byte	'?'
	.ascii	"_temp_2010\0"
	.align
_Label_2019:
	.byte	'?'
	.ascii	"_temp_2009\0"
	.align
_Label_2020:
	.byte	'?'
	.ascii	"_temp_2008\0"
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
_Label_3454:
	push	r0
	sub	r1,1,r1
	bne	_Label_3454
	mov	1226,r13		! source line 1226
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2021 = _StringConst_123
	set	_StringConst_123,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_2021  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	1231,r13		! source line 1231
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2022 = _StringConst_124
	set	_StringConst_124,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_2022  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	1232,r13		! source line 1232
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1233,r13		! source line 1233
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2027 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-156]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2028 = numberOfPages - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2027  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+-168]
_Label_2023:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2028 then goto _Label_2026		
	load	[r14+-168],r1
	load	[r14+-152],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2026
_Label_2024:
	mov	1233,r13		! source line 1233
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2029 = _StringConst_125
	set	_StringConst_125,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_2029  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	1234,r13		! source line 1234
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2031 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-140]
!   Move address of _temp_2031 [i ] into _temp_2032
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
!   _temp_2030 = _temp_2032		(4 bytes)
	load	[r14+-136],r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_2030  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	1235,r13		! source line 1235
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2033 = _StringConst_126
	set	_StringConst_126,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2033  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	1236,r13		! source line 1236
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2035 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-124]
!   Move address of _temp_2035 [i ] into _temp_2036
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
!   Data Move: _temp_2034 = *_temp_2036  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_2034  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	1237,r13		! source line 1237
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2037 = _StringConst_127
	set	_StringConst_127,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_2037  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	1238,r13		! source line 1238
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2038 = i * 8192		(int)
	load	[r14+-168],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_2038  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	1239,r13		! source line 1239
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2039 = _StringConst_128
	set	_StringConst_128,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_2039  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	1240,r13		! source line 1240
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	mov	1241,r13		! source line 1241
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_2041) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2040  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_2040  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	1241,r13		! source line 1241
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2042 = _StringConst_129
	set	_StringConst_129,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_2042  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	1242,r13		! source line 1242
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1243,r13		! source line 1243
	mov	"\0\0IF",r10
	mov	1243,r13		! source line 1243
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-88]
!   if intIsZero (_temp_2046) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2045  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2045) then goto _Label_2044
	load	[r14+-92],r1
	cmp	r1,r0
	be	_Label_2044
!	jmp	_Label_2043
_Label_2043:
! THEN...
	mov	1244,r13		! source line 1244
	mov	"\0\0TN",r10
! CALL STATEMENT...
	mov	1244,r13		! source line 1244
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_2048) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2047  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_2047  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	1244,r13		! source line 1244
	mov	"\0\0CE",r10
	call	printHex
	jmp	_Label_2049
_Label_2044:
! ELSE...
	mov	1246,r13		! source line 1246
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2050 = _StringConst_130
	set	_StringConst_130,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_2050  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	1246,r13		! source line 1246
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2049:
! CALL STATEMENT...
!   _temp_2051 = _StringConst_131
	set	_StringConst_131,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_2051  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	1248,r13		! source line 1248
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1249,r13		! source line 1249
	mov	"\0\0IF",r10
	mov	1249,r13		! source line 1249
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_2054) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2052 else goto _Label_2053
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2053
	jmp	_Label_2052
_Label_2052:
! THEN...
	mov	1250,r13		! source line 1250
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2055 = _StringConst_132
	set	_StringConst_132,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_2055  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	1250,r13		! source line 1250
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2056
_Label_2053:
! ELSE...
	mov	1252,r13		! source line 1252
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2057 = _StringConst_133
	set	_StringConst_133,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_2057  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1252,r13		! source line 1252
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2056:
! CALL STATEMENT...
!   _temp_2058 = _StringConst_134
	set	_StringConst_134,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2058  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	1254,r13		! source line 1254
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1255,r13		! source line 1255
	mov	"\0\0IF",r10
	mov	1255,r13		! source line 1255
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_2061) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2059 else goto _Label_2060
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2060
	jmp	_Label_2059
_Label_2059:
! THEN...
	mov	1256,r13		! source line 1256
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2062 = _StringConst_135
	set	_StringConst_135,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2062  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1256,r13		! source line 1256
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2063
_Label_2060:
! ELSE...
	mov	1258,r13		! source line 1258
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2064 = _StringConst_136
	set	_StringConst_136,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_2064  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1258,r13		! source line 1258
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2063:
! CALL STATEMENT...
!   _temp_2065 = _StringConst_137
	set	_StringConst_137,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_2065  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1260,r13		! source line 1260
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1261,r13		! source line 1261
	mov	"\0\0IF",r10
	mov	1261,r13		! source line 1261
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_2068) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2066 else goto _Label_2067
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2067
	jmp	_Label_2066
_Label_2066:
! THEN...
	mov	1262,r13		! source line 1262
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2069 = _StringConst_138
	set	_StringConst_138,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2069  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1262,r13		! source line 1262
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2070
_Label_2067:
! ELSE...
	mov	1264,r13		! source line 1264
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2071 = _StringConst_139
	set	_StringConst_139,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2071  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1264,r13		! source line 1264
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2070:
! CALL STATEMENT...
!   _temp_2072 = _StringConst_140
	set	_StringConst_140,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2072  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1266,r13		! source line 1266
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1267,r13		! source line 1267
	mov	"\0\0IF",r10
	mov	1267,r13		! source line 1267
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_2075) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2073 else goto _Label_2074
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2074
	jmp	_Label_2073
_Label_2073:
! THEN...
	mov	1268,r13		! source line 1268
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2076 = _StringConst_141
	set	_StringConst_141,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2076  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1268,r13		! source line 1268
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2077
_Label_2074:
! ELSE...
	mov	1270,r13		! source line 1270
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2078 = _StringConst_142
	set	_StringConst_142,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2078  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1270,r13		! source line 1270
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2077:
! CALL STATEMENT...
!   Call the function
	mov	1272,r13		! source line 1272
	mov	"\0\0CA",r10
	call	_P_System_nl
!   Increment the FOR-LOOP index variable and jump back
_Label_2025:
!   i = i + 1
	load	[r14+-168],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-168]
	jmp	_Label_2023
! END FOR
_Label_2026:
! RETURN STATEMENT...
	mov	1233,r13		! source line 1233
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
	.word	_Label_2079
	.word	4		! total size of parameters
	.word	168		! frame size = 168
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
	.word	_Label_2091
	.word	-52
	.word	4
	.word	_Label_2092
	.word	-56
	.word	4
	.word	_Label_2093
	.word	-60
	.word	4
	.word	_Label_2094
	.word	-64
	.word	4
	.word	_Label_2095
	.word	-68
	.word	4
	.word	_Label_2096
	.word	-72
	.word	4
	.word	_Label_2097
	.word	-76
	.word	4
	.word	_Label_2098
	.word	-80
	.word	4
	.word	_Label_2099
	.word	-84
	.word	4
	.word	_Label_2100
	.word	-88
	.word	4
	.word	_Label_2101
	.word	-92
	.word	4
	.word	_Label_2102
	.word	-96
	.word	4
	.word	_Label_2103
	.word	-100
	.word	4
	.word	_Label_2104
	.word	-104
	.word	4
	.word	_Label_2105
	.word	-108
	.word	4
	.word	_Label_2106
	.word	-112
	.word	4
	.word	_Label_2107
	.word	-116
	.word	4
	.word	_Label_2108
	.word	-120
	.word	4
	.word	_Label_2109
	.word	-124
	.word	4
	.word	_Label_2110
	.word	-128
	.word	4
	.word	_Label_2111
	.word	-132
	.word	4
	.word	_Label_2112
	.word	-136
	.word	4
	.word	_Label_2113
	.word	-140
	.word	4
	.word	_Label_2114
	.word	-144
	.word	4
	.word	_Label_2115
	.word	-148
	.word	4
	.word	_Label_2116
	.word	-152
	.word	4
	.word	_Label_2117
	.word	-156
	.word	4
	.word	_Label_2118
	.word	-160
	.word	4
	.word	_Label_2119
	.word	-164
	.word	4
	.word	_Label_2120
	.word	-168
	.word	4
	.word	0
_Label_2079:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Print\0"
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
	.ascii	"_temp_2076\0"
	.align
_Label_2083:
	.byte	'?'
	.ascii	"_temp_2075\0"
	.align
_Label_2084:
	.byte	'?'
	.ascii	"_temp_2072\0"
	.align
_Label_2085:
	.byte	'?'
	.ascii	"_temp_2071\0"
	.align
_Label_2086:
	.byte	'?'
	.ascii	"_temp_2069\0"
	.align
_Label_2087:
	.byte	'?'
	.ascii	"_temp_2068\0"
	.align
_Label_2088:
	.byte	'?'
	.ascii	"_temp_2065\0"
	.align
_Label_2089:
	.byte	'?'
	.ascii	"_temp_2064\0"
	.align
_Label_2090:
	.byte	'?'
	.ascii	"_temp_2062\0"
	.align
_Label_2091:
	.byte	'?'
	.ascii	"_temp_2061\0"
	.align
_Label_2092:
	.byte	'?'
	.ascii	"_temp_2058\0"
	.align
_Label_2093:
	.byte	'?'
	.ascii	"_temp_2057\0"
	.align
_Label_2094:
	.byte	'?'
	.ascii	"_temp_2055\0"
	.align
_Label_2095:
	.byte	'?'
	.ascii	"_temp_2054\0"
	.align
_Label_2096:
	.byte	'?'
	.ascii	"_temp_2051\0"
	.align
_Label_2097:
	.byte	'?'
	.ascii	"_temp_2050\0"
	.align
_Label_2098:
	.byte	'?'
	.ascii	"_temp_2048\0"
	.align
_Label_2099:
	.byte	'?'
	.ascii	"_temp_2047\0"
	.align
_Label_2100:
	.byte	'?'
	.ascii	"_temp_2046\0"
	.align
_Label_2101:
	.byte	'?'
	.ascii	"_temp_2045\0"
	.align
_Label_2102:
	.byte	'?'
	.ascii	"_temp_2042\0"
	.align
_Label_2103:
	.byte	'?'
	.ascii	"_temp_2041\0"
	.align
_Label_2104:
	.byte	'?'
	.ascii	"_temp_2040\0"
	.align
_Label_2105:
	.byte	'?'
	.ascii	"_temp_2039\0"
	.align
_Label_2106:
	.byte	'?'
	.ascii	"_temp_2038\0"
	.align
_Label_2107:
	.byte	'?'
	.ascii	"_temp_2037\0"
	.align
_Label_2108:
	.byte	'?'
	.ascii	"_temp_2036\0"
	.align
_Label_2109:
	.byte	'?'
	.ascii	"_temp_2035\0"
	.align
_Label_2110:
	.byte	'?'
	.ascii	"_temp_2034\0"
	.align
_Label_2111:
	.byte	'?'
	.ascii	"_temp_2033\0"
	.align
_Label_2112:
	.byte	'?'
	.ascii	"_temp_2032\0"
	.align
_Label_2113:
	.byte	'?'
	.ascii	"_temp_2031\0"
	.align
_Label_2114:
	.byte	'?'
	.ascii	"_temp_2030\0"
	.align
_Label_2115:
	.byte	'?'
	.ascii	"_temp_2029\0"
	.align
_Label_2116:
	.byte	'?'
	.ascii	"_temp_2028\0"
	.align
_Label_2117:
	.byte	'?'
	.ascii	"_temp_2027\0"
	.align
_Label_2118:
	.byte	'?'
	.ascii	"_temp_2022\0"
	.align
_Label_2119:
	.byte	'?'
	.ascii	"_temp_2021\0"
	.align
_Label_2120:
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
_Label_3455:
	push	r0
	sub	r1,1,r1
	bne	_Label_3455
	mov	1278,r13		! source line 1278
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1283,r13		! source line 1283
	mov	"\0\0RE",r10
!   _temp_2123 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2123 [entry ] into _temp_2124
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
!   Data Move: _temp_2122 = *_temp_2124  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2121 = _temp_2122 AND -8192		(int)
	load	[r14+-20],r1
	mov	-8192,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_2121  (sizeInBytes=4)
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
	.word	_Label_2125
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2126
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2127
	.word	12
	.word	4
	.word	_Label_2128
	.word	-12
	.word	4
	.word	_Label_2129
	.word	-16
	.word	4
	.word	_Label_2130
	.word	-20
	.word	4
	.word	_Label_2131
	.word	-24
	.word	4
	.word	0
_Label_2125:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractFrameAddr\0"
	.align
_Label_2126:
	.ascii	"Pself\0"
	.align
_Label_2127:
	.byte	'I'
	.ascii	"entry\0"
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
	.byte	'?'
	.ascii	"_temp_2122\0"
	.align
_Label_2131:
	.byte	'?'
	.ascii	"_temp_2121\0"
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
_Label_3456:
	push	r0
	sub	r1,1,r1
	bne	_Label_3456
	mov	1288,r13		! source line 1288
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1292,r13		! source line 1292
	mov	"\0\0RE",r10
!   _temp_2134 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2134 [entry ] into _temp_2135
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
!   Data Move: _temp_2133 = *_temp_2135  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2132 = _temp_2133 AND 8176		(int)
	load	[r14+-20],r1
	mov	8176,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_2132  (sizeInBytes=4)
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
	.word	_Label_2136
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2137
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2138
	.word	12
	.word	4
	.word	_Label_2139
	.word	-12
	.word	4
	.word	_Label_2140
	.word	-16
	.word	4
	.word	_Label_2141
	.word	-20
	.word	4
	.word	_Label_2142
	.word	-24
	.word	4
	.word	0
_Label_2136:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractUndefinedBits\0"
	.align
_Label_2137:
	.ascii	"Pself\0"
	.align
_Label_2138:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2139:
	.byte	'?'
	.ascii	"_temp_2135\0"
	.align
_Label_2140:
	.byte	'?'
	.ascii	"_temp_2134\0"
	.align
_Label_2141:
	.byte	'?'
	.ascii	"_temp_2133\0"
	.align
_Label_2142:
	.byte	'?'
	.ascii	"_temp_2132\0"
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
_Label_3457:
	push	r0
	sub	r1,1,r1
	bne	_Label_3457
	mov	1297,r13		! source line 1297
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1302,r13		! source line 1302
	mov	"\0\0AS",r10
!   _temp_2143 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-36]
!   Move address of _temp_2143 [entry ] into _temp_2144
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
!   _temp_2148 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2148 [entry ] into _temp_2149
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
!   Data Move: _temp_2147 = *_temp_2149  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2146 = _temp_2147 AND 8191		(int)
	load	[r14+-20],r1
	mov	8191,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   _temp_2145 = _temp_2146 OR frameAddr		(int)
	load	[r14+-24],r1
	load	[r14+16],r2
	or	r1,r2,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2144 = _temp_2145  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r14+-32],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1302,r13		! source line 1302
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
	.word	_Label_2150
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2151
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2152
	.word	12
	.word	4
	.word	_Label_2153
	.word	16
	.word	4
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
	.word	0
_Label_2150:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetFrameAddr\0"
	.align
_Label_2151:
	.ascii	"Pself\0"
	.align
_Label_2152:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2153:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_2154:
	.byte	'?'
	.ascii	"_temp_2149\0"
	.align
_Label_2155:
	.byte	'?'
	.ascii	"_temp_2148\0"
	.align
_Label_2156:
	.byte	'?'
	.ascii	"_temp_2147\0"
	.align
_Label_2157:
	.byte	'?'
	.ascii	"_temp_2146\0"
	.align
_Label_2158:
	.byte	'?'
	.ascii	"_temp_2145\0"
	.align
_Label_2159:
	.byte	'?'
	.ascii	"_temp_2144\0"
	.align
_Label_2160:
	.byte	'?'
	.ascii	"_temp_2143\0"
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
_Label_3458:
	push	r0
	sub	r1,1,r1
	bne	_Label_3458
	mov	1307,r13		! source line 1307
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1311,r13		! source line 1311
	mov	"\0\0RE",r10
!   _temp_2164 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2164 [entry ] into _temp_2165
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
!   Data Move: _temp_2163 = *_temp_2165  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2162 = _temp_2163 AND 8		(int)
	load	[r14+-24],r1
	mov	8,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2162) then goto _Label_2166
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2166
!   _temp_2161 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2167
_Label_2166:
!   _temp_2161 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2167:
!   ReturnResult: _temp_2161  (sizeInBytes=1)
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
	.word	_Label_2168
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2169
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2170
	.word	12
	.word	4
	.word	_Label_2171
	.word	-16
	.word	4
	.word	_Label_2172
	.word	-20
	.word	4
	.word	_Label_2173
	.word	-24
	.word	4
	.word	_Label_2174
	.word	-28
	.word	4
	.word	_Label_2175
	.word	-9
	.word	1
	.word	0
_Label_2168:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsDirty\0"
	.align
_Label_2169:
	.ascii	"Pself\0"
	.align
_Label_2170:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2171:
	.byte	'?'
	.ascii	"_temp_2165\0"
	.align
_Label_2172:
	.byte	'?'
	.ascii	"_temp_2164\0"
	.align
_Label_2173:
	.byte	'?'
	.ascii	"_temp_2163\0"
	.align
_Label_2174:
	.byte	'?'
	.ascii	"_temp_2162\0"
	.align
_Label_2175:
	.byte	'C'
	.ascii	"_temp_2161\0"
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
_Label_3459:
	push	r0
	sub	r1,1,r1
	bne	_Label_3459
	mov	1316,r13		! source line 1316
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1320,r13		! source line 1320
	mov	"\0\0RE",r10
!   _temp_2179 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2179 [entry ] into _temp_2180
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
!   Data Move: _temp_2178 = *_temp_2180  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2177 = _temp_2178 AND 4		(int)
	load	[r14+-24],r1
	mov	4,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2177) then goto _Label_2181
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2181
!   _temp_2176 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2182
_Label_2181:
!   _temp_2176 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2182:
!   ReturnResult: _temp_2176  (sizeInBytes=1)
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
	.word	_Label_2183
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2184
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2185
	.word	12
	.word	4
	.word	_Label_2186
	.word	-16
	.word	4
	.word	_Label_2187
	.word	-20
	.word	4
	.word	_Label_2188
	.word	-24
	.word	4
	.word	_Label_2189
	.word	-28
	.word	4
	.word	_Label_2190
	.word	-9
	.word	1
	.word	0
_Label_2183:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsReferenced\0"
	.align
_Label_2184:
	.ascii	"Pself\0"
	.align
_Label_2185:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2186:
	.byte	'?'
	.ascii	"_temp_2180\0"
	.align
_Label_2187:
	.byte	'?'
	.ascii	"_temp_2179\0"
	.align
_Label_2188:
	.byte	'?'
	.ascii	"_temp_2178\0"
	.align
_Label_2189:
	.byte	'?'
	.ascii	"_temp_2177\0"
	.align
_Label_2190:
	.byte	'C'
	.ascii	"_temp_2176\0"
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
_Label_3460:
	push	r0
	sub	r1,1,r1
	bne	_Label_3460
	mov	1325,r13		! source line 1325
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1329,r13		! source line 1329
	mov	"\0\0RE",r10
!   _temp_2194 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2194 [entry ] into _temp_2195
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
!   Data Move: _temp_2193 = *_temp_2195  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2192 = _temp_2193 AND 2		(int)
	load	[r14+-24],r1
	mov	2,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2192) then goto _Label_2196
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2196
!   _temp_2191 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2197
_Label_2196:
!   _temp_2191 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2197:
!   ReturnResult: _temp_2191  (sizeInBytes=1)
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
	.word	_Label_2198
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2199
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2200
	.word	12
	.word	4
	.word	_Label_2201
	.word	-16
	.word	4
	.word	_Label_2202
	.word	-20
	.word	4
	.word	_Label_2203
	.word	-24
	.word	4
	.word	_Label_2204
	.word	-28
	.word	4
	.word	_Label_2205
	.word	-9
	.word	1
	.word	0
_Label_2198:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsWritable\0"
	.align
_Label_2199:
	.ascii	"Pself\0"
	.align
_Label_2200:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2201:
	.byte	'?'
	.ascii	"_temp_2195\0"
	.align
_Label_2202:
	.byte	'?'
	.ascii	"_temp_2194\0"
	.align
_Label_2203:
	.byte	'?'
	.ascii	"_temp_2193\0"
	.align
_Label_2204:
	.byte	'?'
	.ascii	"_temp_2192\0"
	.align
_Label_2205:
	.byte	'C'
	.ascii	"_temp_2191\0"
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
_Label_3461:
	push	r0
	sub	r1,1,r1
	bne	_Label_3461
	mov	1334,r13		! source line 1334
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1338,r13		! source line 1338
	mov	"\0\0RE",r10
!   _temp_2209 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2209 [entry ] into _temp_2210
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
!   Data Move: _temp_2208 = *_temp_2210  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2207 = _temp_2208 AND 1		(int)
	load	[r14+-24],r1
	mov	1,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2207) then goto _Label_2211
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2211
!   _temp_2206 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2212
_Label_2211:
!   _temp_2206 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2212:
!   ReturnResult: _temp_2206  (sizeInBytes=1)
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
	.word	_Label_2213
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2214
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2215
	.word	12
	.word	4
	.word	_Label_2216
	.word	-16
	.word	4
	.word	_Label_2217
	.word	-20
	.word	4
	.word	_Label_2218
	.word	-24
	.word	4
	.word	_Label_2219
	.word	-28
	.word	4
	.word	_Label_2220
	.word	-9
	.word	1
	.word	0
_Label_2213:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsValid\0"
	.align
_Label_2214:
	.ascii	"Pself\0"
	.align
_Label_2215:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2216:
	.byte	'?'
	.ascii	"_temp_2210\0"
	.align
_Label_2217:
	.byte	'?'
	.ascii	"_temp_2209\0"
	.align
_Label_2218:
	.byte	'?'
	.ascii	"_temp_2208\0"
	.align
_Label_2219:
	.byte	'?'
	.ascii	"_temp_2207\0"
	.align
_Label_2220:
	.byte	'C'
	.ascii	"_temp_2206\0"
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
_Label_3462:
	push	r0
	sub	r1,1,r1
	bne	_Label_3462
	mov	1343,r13		! source line 1343
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1347,r13		! source line 1347
	mov	"\0\0AS",r10
!   _temp_2221 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2221 [entry ] into _temp_2222
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
!   _temp_2225 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2225 [entry ] into _temp_2226
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
!   Data Move: _temp_2224 = *_temp_2226  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2223 = _temp_2224 OR 8		(int)
	load	[r14+-20],r1
	mov	8,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2222 = _temp_2223  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1347,r13		! source line 1347
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
	.word	_Label_2227
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2228
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2229
	.word	12
	.word	4
	.word	_Label_2230
	.word	-12
	.word	4
	.word	_Label_2231
	.word	-16
	.word	4
	.word	_Label_2232
	.word	-20
	.word	4
	.word	_Label_2233
	.word	-24
	.word	4
	.word	_Label_2234
	.word	-28
	.word	4
	.word	_Label_2235
	.word	-32
	.word	4
	.word	0
_Label_2227:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetDirty\0"
	.align
_Label_2228:
	.ascii	"Pself\0"
	.align
_Label_2229:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2230:
	.byte	'?'
	.ascii	"_temp_2226\0"
	.align
_Label_2231:
	.byte	'?'
	.ascii	"_temp_2225\0"
	.align
_Label_2232:
	.byte	'?'
	.ascii	"_temp_2224\0"
	.align
_Label_2233:
	.byte	'?'
	.ascii	"_temp_2223\0"
	.align
_Label_2234:
	.byte	'?'
	.ascii	"_temp_2222\0"
	.align
_Label_2235:
	.byte	'?'
	.ascii	"_temp_2221\0"
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
_Label_3463:
	push	r0
	sub	r1,1,r1
	bne	_Label_3463
	mov	1352,r13		! source line 1352
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1356,r13		! source line 1356
	mov	"\0\0AS",r10
!   _temp_2236 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2236 [entry ] into _temp_2237
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
!   _temp_2240 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2240 [entry ] into _temp_2241
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
!   Data Move: _temp_2239 = *_temp_2241  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2238 = _temp_2239 OR 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2237 = _temp_2238  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1356,r13		! source line 1356
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
	.word	_Label_2242
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2243
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2244
	.word	12
	.word	4
	.word	_Label_2245
	.word	-12
	.word	4
	.word	_Label_2246
	.word	-16
	.word	4
	.word	_Label_2247
	.word	-20
	.word	4
	.word	_Label_2248
	.word	-24
	.word	4
	.word	_Label_2249
	.word	-28
	.word	4
	.word	_Label_2250
	.word	-32
	.word	4
	.word	0
_Label_2242:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetReferenced\0"
	.align
_Label_2243:
	.ascii	"Pself\0"
	.align
_Label_2244:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2245:
	.byte	'?'
	.ascii	"_temp_2241\0"
	.align
_Label_2246:
	.byte	'?'
	.ascii	"_temp_2240\0"
	.align
_Label_2247:
	.byte	'?'
	.ascii	"_temp_2239\0"
	.align
_Label_2248:
	.byte	'?'
	.ascii	"_temp_2238\0"
	.align
_Label_2249:
	.byte	'?'
	.ascii	"_temp_2237\0"
	.align
_Label_2250:
	.byte	'?'
	.ascii	"_temp_2236\0"
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
_Label_3464:
	push	r0
	sub	r1,1,r1
	bne	_Label_3464
	mov	1361,r13		! source line 1361
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1365,r13		! source line 1365
	mov	"\0\0AS",r10
!   _temp_2251 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2251 [entry ] into _temp_2252
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
!   _temp_2255 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2255 [entry ] into _temp_2256
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
!   Data Move: _temp_2254 = *_temp_2256  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2253 = _temp_2254 OR 2		(int)
	load	[r14+-20],r1
	mov	2,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2252 = _temp_2253  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1365,r13		! source line 1365
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
	.word	_Label_2257
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2258
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2259
	.word	12
	.word	4
	.word	_Label_2260
	.word	-12
	.word	4
	.word	_Label_2261
	.word	-16
	.word	4
	.word	_Label_2262
	.word	-20
	.word	4
	.word	_Label_2263
	.word	-24
	.word	4
	.word	_Label_2264
	.word	-28
	.word	4
	.word	_Label_2265
	.word	-32
	.word	4
	.word	0
_Label_2257:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetWritable\0"
	.align
_Label_2258:
	.ascii	"Pself\0"
	.align
_Label_2259:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2260:
	.byte	'?'
	.ascii	"_temp_2256\0"
	.align
_Label_2261:
	.byte	'?'
	.ascii	"_temp_2255\0"
	.align
_Label_2262:
	.byte	'?'
	.ascii	"_temp_2254\0"
	.align
_Label_2263:
	.byte	'?'
	.ascii	"_temp_2253\0"
	.align
_Label_2264:
	.byte	'?'
	.ascii	"_temp_2252\0"
	.align
_Label_2265:
	.byte	'?'
	.ascii	"_temp_2251\0"
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
_Label_3465:
	push	r0
	sub	r1,1,r1
	bne	_Label_3465
	mov	1370,r13		! source line 1370
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1374,r13		! source line 1374
	mov	"\0\0AS",r10
!   _temp_2266 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2266 [entry ] into _temp_2267
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
!   _temp_2270 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2270 [entry ] into _temp_2271
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
!   Data Move: _temp_2269 = *_temp_2271  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2268 = _temp_2269 OR 1		(int)
	load	[r14+-20],r1
	mov	1,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2267 = _temp_2268  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1374,r13		! source line 1374
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
	.word	_Label_2272
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2273
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2274
	.word	12
	.word	4
	.word	_Label_2275
	.word	-12
	.word	4
	.word	_Label_2276
	.word	-16
	.word	4
	.word	_Label_2277
	.word	-20
	.word	4
	.word	_Label_2278
	.word	-24
	.word	4
	.word	_Label_2279
	.word	-28
	.word	4
	.word	_Label_2280
	.word	-32
	.word	4
	.word	0
_Label_2272:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetValid\0"
	.align
_Label_2273:
	.ascii	"Pself\0"
	.align
_Label_2274:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2275:
	.byte	'?'
	.ascii	"_temp_2271\0"
	.align
_Label_2276:
	.byte	'?'
	.ascii	"_temp_2270\0"
	.align
_Label_2277:
	.byte	'?'
	.ascii	"_temp_2269\0"
	.align
_Label_2278:
	.byte	'?'
	.ascii	"_temp_2268\0"
	.align
_Label_2279:
	.byte	'?'
	.ascii	"_temp_2267\0"
	.align
_Label_2280:
	.byte	'?'
	.ascii	"_temp_2266\0"
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
_Label_3466:
	push	r0
	sub	r1,1,r1
	bne	_Label_3466
	mov	1379,r13		! source line 1379
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1383,r13		! source line 1383
	mov	"\0\0AS",r10
!   _temp_2281 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2281 [entry ] into _temp_2282
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
!   _temp_2285 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2285 [entry ] into _temp_2286
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
!   Data Move: _temp_2284 = *_temp_2286  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2283 = _temp_2284 AND -9		(int)
	load	[r14+-20],r1
	mov	-9,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2282 = _temp_2283  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1383,r13		! source line 1383
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
	.word	_Label_2287
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2288
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2289
	.word	12
	.word	4
	.word	_Label_2290
	.word	-12
	.word	4
	.word	_Label_2291
	.word	-16
	.word	4
	.word	_Label_2292
	.word	-20
	.word	4
	.word	_Label_2293
	.word	-24
	.word	4
	.word	_Label_2294
	.word	-28
	.word	4
	.word	_Label_2295
	.word	-32
	.word	4
	.word	0
_Label_2287:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearDirty\0"
	.align
_Label_2288:
	.ascii	"Pself\0"
	.align
_Label_2289:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2290:
	.byte	'?'
	.ascii	"_temp_2286\0"
	.align
_Label_2291:
	.byte	'?'
	.ascii	"_temp_2285\0"
	.align
_Label_2292:
	.byte	'?'
	.ascii	"_temp_2284\0"
	.align
_Label_2293:
	.byte	'?'
	.ascii	"_temp_2283\0"
	.align
_Label_2294:
	.byte	'?'
	.ascii	"_temp_2282\0"
	.align
_Label_2295:
	.byte	'?'
	.ascii	"_temp_2281\0"
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
_Label_3467:
	push	r0
	sub	r1,1,r1
	bne	_Label_3467
	mov	1388,r13		! source line 1388
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1392,r13		! source line 1392
	mov	"\0\0AS",r10
!   _temp_2296 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2296 [entry ] into _temp_2297
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
!   _temp_2300 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2300 [entry ] into _temp_2301
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
!   Data Move: _temp_2299 = *_temp_2301  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2298 = _temp_2299 AND -5		(int)
	load	[r14+-20],r1
	mov	-5,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2297 = _temp_2298  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1392,r13		! source line 1392
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
	.word	_Label_2302
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2303
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2304
	.word	12
	.word	4
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
	.word	0
_Label_2302:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearReferenced\0"
	.align
_Label_2303:
	.ascii	"Pself\0"
	.align
_Label_2304:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2305:
	.byte	'?'
	.ascii	"_temp_2301\0"
	.align
_Label_2306:
	.byte	'?'
	.ascii	"_temp_2300\0"
	.align
_Label_2307:
	.byte	'?'
	.ascii	"_temp_2299\0"
	.align
_Label_2308:
	.byte	'?'
	.ascii	"_temp_2298\0"
	.align
_Label_2309:
	.byte	'?'
	.ascii	"_temp_2297\0"
	.align
_Label_2310:
	.byte	'?'
	.ascii	"_temp_2296\0"
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
_Label_3468:
	push	r0
	sub	r1,1,r1
	bne	_Label_3468
	mov	1397,r13		! source line 1397
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1401,r13		! source line 1401
	mov	"\0\0AS",r10
!   _temp_2311 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2311 [entry ] into _temp_2312
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
!   _temp_2315 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2315 [entry ] into _temp_2316
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
!   Data Move: _temp_2314 = *_temp_2316  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2313 = _temp_2314 AND -3		(int)
	load	[r14+-20],r1
	mov	-3,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2312 = _temp_2313  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1401,r13		! source line 1401
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
	.word	_Label_2317
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2318
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2319
	.word	12
	.word	4
	.word	_Label_2320
	.word	-12
	.word	4
	.word	_Label_2321
	.word	-16
	.word	4
	.word	_Label_2322
	.word	-20
	.word	4
	.word	_Label_2323
	.word	-24
	.word	4
	.word	_Label_2324
	.word	-28
	.word	4
	.word	_Label_2325
	.word	-32
	.word	4
	.word	0
_Label_2317:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearWritable\0"
	.align
_Label_2318:
	.ascii	"Pself\0"
	.align
_Label_2319:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2320:
	.byte	'?'
	.ascii	"_temp_2316\0"
	.align
_Label_2321:
	.byte	'?'
	.ascii	"_temp_2315\0"
	.align
_Label_2322:
	.byte	'?'
	.ascii	"_temp_2314\0"
	.align
_Label_2323:
	.byte	'?'
	.ascii	"_temp_2313\0"
	.align
_Label_2324:
	.byte	'?'
	.ascii	"_temp_2312\0"
	.align
_Label_2325:
	.byte	'?'
	.ascii	"_temp_2311\0"
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
_Label_3469:
	push	r0
	sub	r1,1,r1
	bne	_Label_3469
	mov	1406,r13		! source line 1406
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1410,r13		! source line 1410
	mov	"\0\0AS",r10
!   _temp_2326 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2326 [entry ] into _temp_2327
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
!   _temp_2330 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2330 [entry ] into _temp_2331
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
!   Data Move: _temp_2329 = *_temp_2331  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2328 = _temp_2329 AND -2		(int)
	load	[r14+-20],r1
	mov	-2,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2327 = _temp_2328  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1410,r13		! source line 1410
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
	.word	_Label_2332
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2333
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2334
	.word	12
	.word	4
	.word	_Label_2335
	.word	-12
	.word	4
	.word	_Label_2336
	.word	-16
	.word	4
	.word	_Label_2337
	.word	-20
	.word	4
	.word	_Label_2338
	.word	-24
	.word	4
	.word	_Label_2339
	.word	-28
	.word	4
	.word	_Label_2340
	.word	-32
	.word	4
	.word	0
_Label_2332:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearValid\0"
	.align
_Label_2333:
	.ascii	"Pself\0"
	.align
_Label_2334:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2335:
	.byte	'?'
	.ascii	"_temp_2331\0"
	.align
_Label_2336:
	.byte	'?'
	.ascii	"_temp_2330\0"
	.align
_Label_2337:
	.byte	'?'
	.ascii	"_temp_2329\0"
	.align
_Label_2338:
	.byte	'?'
	.ascii	"_temp_2328\0"
	.align
_Label_2339:
	.byte	'?'
	.ascii	"_temp_2327\0"
	.align
_Label_2340:
	.byte	'?'
	.ascii	"_temp_2326\0"
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
_Label_3470:
	push	r0
	sub	r1,1,r1
	bne	_Label_3470
	mov	1415,r13		! source line 1415
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2342 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2342 [0 ] into _temp_2343
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
!   _temp_2341 = _temp_2343		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_2344 = numberOfPages * 4		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	4,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2341  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2344  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Call the function
	mov	1421,r13		! source line 1421
	mov	"\0\0CE",r10
	call	LoadPageTableRegs
! RETURN STATEMENT...
	mov	1421,r13		! source line 1421
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
	.word	_Label_2345
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2346
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2347
	.word	-12
	.word	4
	.word	_Label_2348
	.word	-16
	.word	4
	.word	_Label_2349
	.word	-20
	.word	4
	.word	_Label_2350
	.word	-24
	.word	4
	.word	0
_Label_2345:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetToThisPageTable\0"
	.align
_Label_2346:
	.ascii	"Pself\0"
	.align
_Label_2347:
	.byte	'?'
	.ascii	"_temp_2344\0"
	.align
_Label_2348:
	.byte	'?'
	.ascii	"_temp_2343\0"
	.align
_Label_2349:
	.byte	'?'
	.ascii	"_temp_2342\0"
	.align
_Label_2350:
	.byte	'?'
	.ascii	"_temp_2341\0"
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
_Label_3471:
	push	r0
	sub	r1,1,r1
	bne	_Label_3471
	mov	1426,r13		! source line 1426
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1441,r13		! source line 1441
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_2351
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_2351
	jmp	_Label_2352
_Label_2351:
! THEN...
	mov	1442,r13		! source line 1442
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1442,r13		! source line 1442
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_2353
_Label_2352:
! ELSE...
	mov	1443,r13		! source line 1443
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1443,r13		! source line 1443
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_2355		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2355
!	jmp	_Label_2354
_Label_2354:
! THEN...
	mov	1444,r13		! source line 1444
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1444,r13		! source line 1444
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2355:
! END IF...
_Label_2353:
! ASSIGNMENT STATEMENT...
	mov	1446,r13		! source line 1446
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
	mov	1447,r13		! source line 1447
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
	mov	1450,r13		! source line 1450
	mov	"\0\0WH",r10
_Label_2356:
!	jmp	_Label_2357
_Label_2357:
	mov	1450,r13		! source line 1450
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1451,r13		! source line 1451
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_2360		(int)
	load	[r14+-40],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2360
!	jmp	_Label_2359
_Label_2359:
! THEN...
	mov	1452,r13		! source line 1452
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2361 = _StringConst_143
	set	_StringConst_143,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2361  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1452,r13		! source line 1452
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1453,r13		! source line 1453
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2360:
! IF STATEMENT...
	mov	1455,r13		! source line 1455
	mov	"\0\0IF",r10
	mov	1455,r13		! source line 1455
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2365) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2364  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2364 then goto _Label_2363 else goto _Label_2362
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2362
	jmp	_Label_2363
_Label_2362:
! THEN...
	mov	1456,r13		! source line 1456
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2366 = _StringConst_144
	set	_StringConst_144,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2366  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1456,r13		! source line 1456
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1457,r13		! source line 1457
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2363:
! ASSIGNMENT STATEMENT...
	mov	1459,r13		! source line 1459
	mov	"\0\0AS",r10
	mov	1459,r13		! source line 1459
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2368) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2367  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   fromAddr = _temp_2367 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! WHILE STATEMENT...
	mov	1461,r13		! source line 1461
	mov	"\0\0WH",r10
_Label_2369:
!   if offset >= 8192 then goto _Label_2371		(int)
	load	[r14+-44],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2371
!	jmp	_Label_2370
_Label_2370:
	mov	1461,r13		! source line 1461
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1464,r13		! source line 1464
	mov	"\0\0AS",r10
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (fromAddr) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2372 = *fromAddr  (sizeInBytes=1)
	load	[r14+-48],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *kernelAddr = _temp_2372  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+12],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1465,r13		! source line 1465
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1466,r13		! source line 1466
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+12],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+12]
! ASSIGNMENT STATEMENT...
	mov	1467,r13		! source line 1467
	mov	"\0\0AS",r10
!   fromAddr = fromAddr + 1		(int)
	load	[r14+-48],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! ASSIGNMENT STATEMENT...
	mov	1468,r13		! source line 1468
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	1469,r13		! source line 1469
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_2374		(int)
	load	[r14+-36],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_2374
!	jmp	_Label_2373
_Label_2373:
! THEN...
	mov	1470,r13		! source line 1470
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1470,r13		! source line 1470
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2374:
! END WHILE...
	jmp	_Label_2369
_Label_2371:
! ASSIGNMENT STATEMENT...
	mov	1473,r13		! source line 1473
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1474,r13		! source line 1474
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
! END WHILE...
	jmp	_Label_2356
_Label_2358:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_19:
	.word	_sourceFileName
	.word	_Label_2375
	.word	16		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_2376
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2377
	.word	12
	.word	4
	.word	_Label_2378
	.word	16
	.word	4
	.word	_Label_2379
	.word	20
	.word	4
	.word	_Label_2380
	.word	-9
	.word	1
	.word	_Label_2381
	.word	-16
	.word	4
	.word	_Label_2382
	.word	-20
	.word	4
	.word	_Label_2383
	.word	-24
	.word	4
	.word	_Label_2384
	.word	-28
	.word	4
	.word	_Label_2385
	.word	-10
	.word	1
	.word	_Label_2386
	.word	-32
	.word	4
	.word	_Label_2387
	.word	-36
	.word	4
	.word	_Label_2388
	.word	-40
	.word	4
	.word	_Label_2389
	.word	-44
	.word	4
	.word	_Label_2390
	.word	-48
	.word	4
	.word	0
_Label_2375:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesFromVirtual\0"
	.align
_Label_2376:
	.ascii	"Pself\0"
	.align
_Label_2377:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_2378:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2379:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2380:
	.byte	'C'
	.ascii	"_temp_2372\0"
	.align
_Label_2381:
	.byte	'?'
	.ascii	"_temp_2368\0"
	.align
_Label_2382:
	.byte	'?'
	.ascii	"_temp_2367\0"
	.align
_Label_2383:
	.byte	'?'
	.ascii	"_temp_2366\0"
	.align
_Label_2384:
	.byte	'?'
	.ascii	"_temp_2365\0"
	.align
_Label_2385:
	.byte	'C'
	.ascii	"_temp_2364\0"
	.align
_Label_2386:
	.byte	'?'
	.ascii	"_temp_2361\0"
	.align
_Label_2387:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_2388:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_2389:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2390:
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
_Label_3472:
	push	r0
	sub	r1,1,r1
	bne	_Label_3472
	mov	1480,r13		! source line 1480
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1491,r13		! source line 1491
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_2391
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_2391
	jmp	_Label_2392
_Label_2391:
! THEN...
	mov	1492,r13		! source line 1492
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1492,r13		! source line 1492
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_2393
_Label_2392:
! ELSE...
	mov	1493,r13		! source line 1493
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1493,r13		! source line 1493
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_2395		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2395
!	jmp	_Label_2394
_Label_2394:
! THEN...
	mov	1494,r13		! source line 1494
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1494,r13		! source line 1494
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2395:
! END IF...
_Label_2393:
! ASSIGNMENT STATEMENT...
	mov	1496,r13		! source line 1496
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
	mov	1497,r13		! source line 1497
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
	mov	1498,r13		! source line 1498
	mov	"\0\0WH",r10
_Label_2396:
!	jmp	_Label_2397
_Label_2397:
	mov	1498,r13		! source line 1498
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1499,r13		! source line 1499
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_2402		(int)
	load	[r14+-36],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2402
	jmp	_Label_2399
_Label_2402:
	mov	1500,r13		! source line 1500
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2404) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2403  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_2403 then goto _Label_2401 else goto _Label_2399
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_2399
	jmp	_Label_2401
_Label_2401:
	mov	1501,r13		! source line 1501
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2406) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2405  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2405 then goto _Label_2400 else goto _Label_2399
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2399
	jmp	_Label_2400
_Label_2399:
! THEN...
	mov	1502,r13		! source line 1502
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1502,r13		! source line 1502
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2400:
! ASSIGNMENT STATEMENT...
	mov	1504,r13		! source line 1504
	mov	"\0\0AS",r10
	mov	1504,r13		! source line 1504
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2408) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2407  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   destAddr = _temp_2407 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-40],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1505,r13		! source line 1505
	mov	"\0\0WH",r10
_Label_2409:
!   if offset >= 8192 then goto _Label_2411		(int)
	load	[r14+-40],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2411
!	jmp	_Label_2410
_Label_2410:
	mov	1505,r13		! source line 1505
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1506,r13		! source line 1506
	mov	"\0\0AS",r10
!   if intIsZero (destAddr) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2412 = *kernelAddr  (sizeInBytes=1)
	load	[r14+16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *destAddr = _temp_2412  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1507,r13		! source line 1507
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1508,r13		! source line 1508
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+16],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	1509,r13		! source line 1509
	mov	"\0\0AS",r10
!   destAddr = destAddr + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1510,r13		! source line 1510
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-32],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	1511,r13		! source line 1511
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_2414		(int)
	load	[r14+-32],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_2414
!	jmp	_Label_2413
_Label_2413:
! THEN...
	mov	1512,r13		! source line 1512
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1512,r13		! source line 1512
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2414:
! END WHILE...
	jmp	_Label_2409
_Label_2411:
! ASSIGNMENT STATEMENT...
	mov	1515,r13		! source line 1515
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1516,r13		! source line 1516
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
! END WHILE...
	jmp	_Label_2396
_Label_2398:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_20:
	.word	_sourceFileName
	.word	_Label_2415
	.word	16		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_2416
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2417
	.word	12
	.word	4
	.word	_Label_2418
	.word	16
	.word	4
	.word	_Label_2419
	.word	20
	.word	4
	.word	_Label_2420
	.word	-9
	.word	1
	.word	_Label_2421
	.word	-16
	.word	4
	.word	_Label_2422
	.word	-20
	.word	4
	.word	_Label_2423
	.word	-24
	.word	4
	.word	_Label_2424
	.word	-10
	.word	1
	.word	_Label_2425
	.word	-28
	.word	4
	.word	_Label_2426
	.word	-11
	.word	1
	.word	_Label_2427
	.word	-32
	.word	4
	.word	_Label_2428
	.word	-36
	.word	4
	.word	_Label_2429
	.word	-40
	.word	4
	.word	_Label_2430
	.word	-44
	.word	4
	.word	0
_Label_2415:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesToVirtual\0"
	.align
_Label_2416:
	.ascii	"Pself\0"
	.align
_Label_2417:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2418:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_2419:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2420:
	.byte	'C'
	.ascii	"_temp_2412\0"
	.align
_Label_2421:
	.byte	'?'
	.ascii	"_temp_2408\0"
	.align
_Label_2422:
	.byte	'?'
	.ascii	"_temp_2407\0"
	.align
_Label_2423:
	.byte	'?'
	.ascii	"_temp_2406\0"
	.align
_Label_2424:
	.byte	'C'
	.ascii	"_temp_2405\0"
	.align
_Label_2425:
	.byte	'?'
	.ascii	"_temp_2404\0"
	.align
_Label_2426:
	.byte	'C'
	.ascii	"_temp_2403\0"
	.align
_Label_2427:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_2428:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_2429:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2430:
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
_Label_3473:
	push	r0
	sub	r1,1,r1
	bne	_Label_3473
	mov	1522,r13		! source line 1522
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1546,r13		! source line 1546
	mov	"\0\0IF",r10
	mov	1546,r13		! source line 1546
	mov	"\0\0SE",r10
!   _temp_2434 = &sourceSize
	add	r14,-44,r1
	store	r1,[r14+-36]
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_2435) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2434  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_2433  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   if _temp_2433 >= 4 then goto _Label_2432		(int)
	load	[r14+-40],r1
	mov	4,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2432
!	jmp	_Label_2431
_Label_2431:
! THEN...
	mov	1549,r13		! source line 1549
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1549,r13		! source line 1549
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2432:
! IF STATEMENT...
	mov	1553,r13		! source line 1553
	mov	"\0\0IF",r10
!   if sourceSize <= maxSize then goto _Label_2437		(int)
	load	[r14+-44],r1
	load	[r14+20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2437
!	jmp	_Label_2436
_Label_2436:
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
_Label_2437:
! ASSIGNMENT STATEMENT...
	mov	1557,r13		! source line 1557
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
	mov	1559,r13		! source line 1559
	mov	"\0\0RE",r10
	mov	1559,r13		! source line 1559
	mov	"\0\0SE",r10
!   _temp_2440 = kernelAddr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-20]
!   _temp_2439 = _temp_2440 + 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   _temp_2441 = virtAddr + 4		(int)
	load	[r14+16],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
	load	[r14+8],r1
	store	r1,[r14+-12]
!   if intIsZero (_temp_2442) then goto _runtimeErrorNullPointer
	load	[r14+-12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2439  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_2441  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_2438  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_2438  (sizeInBytes=4)
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
	.word	_Label_2443
	.word	16		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2444
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2445
	.word	12
	.word	4
	.word	_Label_2446
	.word	16
	.word	4
	.word	_Label_2447
	.word	20
	.word	4
	.word	_Label_2448
	.word	-12
	.word	4
	.word	_Label_2449
	.word	-16
	.word	4
	.word	_Label_2450
	.word	-20
	.word	4
	.word	_Label_2451
	.word	-24
	.word	4
	.word	_Label_2452
	.word	-28
	.word	4
	.word	_Label_2453
	.word	-32
	.word	4
	.word	_Label_2454
	.word	-36
	.word	4
	.word	_Label_2455
	.word	-40
	.word	4
	.word	_Label_2456
	.word	-44
	.word	4
	.word	0
_Label_2443:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"GetStringFromVirtual\0"
	.align
_Label_2444:
	.ascii	"Pself\0"
	.align
_Label_2445:
	.byte	'P'
	.ascii	"kernelAddr\0"
	.align
_Label_2446:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2447:
	.byte	'I'
	.ascii	"maxSize\0"
	.align
_Label_2448:
	.byte	'?'
	.ascii	"_temp_2442\0"
	.align
_Label_2449:
	.byte	'?'
	.ascii	"_temp_2441\0"
	.align
_Label_2450:
	.byte	'?'
	.ascii	"_temp_2440\0"
	.align
_Label_2451:
	.byte	'?'
	.ascii	"_temp_2439\0"
	.align
_Label_2452:
	.byte	'?'
	.ascii	"_temp_2438\0"
	.align
_Label_2453:
	.byte	'?'
	.ascii	"_temp_2435\0"
	.align
_Label_2454:
	.byte	'?'
	.ascii	"_temp_2434\0"
	.align
_Label_2455:
	.byte	'?'
	.ascii	"_temp_2433\0"
	.align
_Label_2456:
	.byte	'I'
	.ascii	"sourceSize\0"
	.align
! 
! ===============  CLASS DiskDriver  ===============
! 
! Dispatch Table:
! 
_P_Kernel_DiskDriver:
	.word	_Label_2457
	jmp	_Method_P_Kernel_DiskDriver_1	! 4:	Init
	jmp	_Method_P_Kernel_DiskDriver_2	! 8:	SynchReadSector
	jmp	_Method_P_Kernel_DiskDriver_3	! 12:	StartReadSector
	jmp	_Method_P_Kernel_DiskDriver_4	! 16:	SynchWriteSector
	jmp	_Method_P_Kernel_DiskDriver_5	! 20:	StartWriteSector
	.word	0
! 
! Class descriptor:
! 
_Label_2457:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2458
	.word	_sourceFileName
	.word	309		! line number
	.word	68		! size of instances, in bytes
	.word	_P_Kernel_DiskDriver
	.word	_P_System_Object
	.word	0
_Label_2458:
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
_Label_3474:
	push	r0
	sub	r1,1,r1
	bne	_Label_3474
	mov	2061,r13		! source line 2061
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2459 = _StringConst_145
	set	_StringConst_145,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2459  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2062,r13		! source line 2062
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2063,r13		! source line 2063
	mov	"\0\0AS",r10
!   DISK_STATUS_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	2064,r13		! source line 2064
	mov	"\0\0AS",r10
!   DISK_COMMAND_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! ASSIGNMENT STATEMENT...
	mov	2065,r13		! source line 2065
	mov	"\0\0AS",r10
!   DISK_MEMORY_ADDRESS_REGISTER = 16776972		(4 bytes)
	set	16776972,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	2066,r13		! source line 2066
	mov	"\0\0AS",r10
!   DISK_SECTOR_NUMBER_REGISTER = 16776976		(4 bytes)
	set	16776976,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2067,r13		! source line 2067
	mov	"\0\0AS",r10
!   DISK_SECTOR_COUNT_REGISTER = 16776980		(4 bytes)
	set	16776980,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	2068,r13		! source line 2068
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2069,r13		! source line 2069
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
	mov	2070,r13		! source line 2070
	mov	"\0\0SE",r10
!   _temp_2461 = &semUsedInSynchMethods
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
	mov	2071,r13		! source line 2071
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
	mov	2072,r13		! source line 2072
	mov	"\0\0SE",r10
!   _temp_2463 = &diskBusy
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
	mov	2072,r13		! source line 2072
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
	.word	_Label_2464
	.word	4		! total size of parameters
	.word	28		! frame size = 28
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
	.word	0
_Label_2464:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"Init\0"
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
_Label_3475:
	push	r0
	sub	r1,1,r1
	bne	_Label_3475
	mov	2077,r13		! source line 2077
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2090,r13		! source line 2090
	mov	"\0\0SE",r10
!   _temp_2471 = &diskBusy
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
	mov	2091,r13		! source line 2091
	mov	"\0\0WH",r10
_Label_2472:
!	jmp	_Label_2473
_Label_2473:
	mov	2091,r13		! source line 2091
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2093,r13		! source line 2093
	mov	"\0\0SE",r10
!   _temp_2475 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_2476) then goto _runtimeErrorNullPointer
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
!   Prepare Argument: offset=24  value=_temp_2475  sizeInBytes=4
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
	mov	2095,r13		! source line 2095
	mov	"\0\0SE",r10
!   _temp_2477 = &semUsedInSynchMethods
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
	mov	2098,r13		! source line 2098
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2486 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_2480
	cmp	r1,2
	be	_Label_2481
	cmp	r1,3
	be	_Label_2482
	cmp	r1,4
	be	_Label_2483
	cmp	r1,5
	be	_Label_2484
	cmp	r1,6
	be	_Label_2485
	jmp	_Label_2478
! CASE 1...
_Label_2480:
! SEND STATEMENT...
	mov	2100,r13		! source line 2100
	mov	"\0\0SE",r10
!   _temp_2487 = &diskBusy
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
	mov	2101,r13		! source line 2101
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_2481:
! CALL STATEMENT...
!   _temp_2488 = _StringConst_146
	set	_StringConst_146,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2488  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2103,r13		! source line 2103
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_2482:
! CALL STATEMENT...
!   _temp_2489 = _StringConst_147
	set	_StringConst_147,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2489  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2105,r13		! source line 2105
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_2483:
! CALL STATEMENT...
!   _temp_2490 = _StringConst_148
	set	_StringConst_148,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2490  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2107,r13		! source line 2107
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_2484:
! BREAK STATEMENT...
	mov	2111,r13		! source line 2111
	mov	"\0\0BR",r10
	jmp	_Label_2479
! CASE 6...
_Label_2485:
! CALL STATEMENT...
!   _temp_2491 = _StringConst_149
	set	_StringConst_149,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2491  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2113,r13		! source line 2113
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_2478:
! CALL STATEMENT...
!   _temp_2492 = _StringConst_150
	set	_StringConst_150,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2492  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2115,r13		! source line 2115
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_2479:
! END WHILE...
	jmp	_Label_2472
_Label_2474:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_2:
	.word	_sourceFileName
	.word	_Label_2493
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_2494
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2495
	.word	12
	.word	4
	.word	_Label_2496
	.word	16
	.word	4
	.word	_Label_2497
	.word	20
	.word	4
	.word	_Label_2498
	.word	-12
	.word	4
	.word	_Label_2499
	.word	-16
	.word	4
	.word	_Label_2500
	.word	-20
	.word	4
	.word	_Label_2501
	.word	-24
	.word	4
	.word	_Label_2502
	.word	-28
	.word	4
	.word	_Label_2503
	.word	-32
	.word	4
	.word	_Label_2504
	.word	-36
	.word	4
	.word	_Label_2505
	.word	-40
	.word	4
	.word	_Label_2506
	.word	-44
	.word	4
	.word	_Label_2507
	.word	-48
	.word	4
	.word	_Label_2508
	.word	-52
	.word	4
	.word	0
_Label_2493:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchReadSector\0"
	.align
_Label_2494:
	.ascii	"Pself\0"
	.align
_Label_2495:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2496:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2497:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2498:
	.byte	'?'
	.ascii	"_temp_2492\0"
	.align
_Label_2499:
	.byte	'?'
	.ascii	"_temp_2491\0"
	.align
_Label_2500:
	.byte	'?'
	.ascii	"_temp_2490\0"
	.align
_Label_2501:
	.byte	'?'
	.ascii	"_temp_2489\0"
	.align
_Label_2502:
	.byte	'?'
	.ascii	"_temp_2488\0"
	.align
_Label_2503:
	.byte	'?'
	.ascii	"_temp_2487\0"
	.align
_Label_2504:
	.byte	'?'
	.ascii	"_temp_2486\0"
	.align
_Label_2505:
	.byte	'?'
	.ascii	"_temp_2477\0"
	.align
_Label_2506:
	.byte	'?'
	.ascii	"_temp_2476\0"
	.align
_Label_2507:
	.byte	'?'
	.ascii	"_temp_2475\0"
	.align
_Label_2508:
	.byte	'?'
	.ascii	"_temp_2471\0"
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
	mov	2124,r13		! source line 2124
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2139,r13		! source line 2139
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2142,r13		! source line 2142
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
	mov	2143,r13		! source line 2143
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
	mov	2144,r13		! source line 2144
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
	mov	2145,r13		! source line 2145
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
	mov	2145,r13		! source line 2145
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
	.word	_Label_2509
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_2510
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2511
	.word	12
	.word	4
	.word	_Label_2512
	.word	16
	.word	4
	.word	_Label_2513
	.word	20
	.word	4
	.word	_Label_2514
	.word	24
	.word	4
	.word	0
_Label_2509:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartReadSector\0"
	.align
_Label_2510:
	.ascii	"Pself\0"
	.align
_Label_2511:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2512:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2513:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2514:
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
_Label_3476:
	push	r0
	sub	r1,1,r1
	bne	_Label_3476
	mov	2150,r13		! source line 2150
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2162,r13		! source line 2162
	mov	"\0\0SE",r10
!   _temp_2515 = &diskBusy
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
	mov	2163,r13		! source line 2163
	mov	"\0\0WH",r10
_Label_2516:
!	jmp	_Label_2517
_Label_2517:
	mov	2163,r13		! source line 2163
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2164,r13		! source line 2164
	mov	"\0\0SE",r10
!   _temp_2519 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_2520) then goto _runtimeErrorNullPointer
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
!   Prepare Argument: offset=24  value=_temp_2519  sizeInBytes=4
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
	mov	2166,r13		! source line 2166
	mov	"\0\0SE",r10
!   _temp_2521 = &semUsedInSynchMethods
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
	mov	2169,r13		! source line 2169
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2530 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_2524
	cmp	r1,2
	be	_Label_2525
	cmp	r1,3
	be	_Label_2526
	cmp	r1,4
	be	_Label_2527
	cmp	r1,5
	be	_Label_2528
	cmp	r1,6
	be	_Label_2529
	jmp	_Label_2522
! CASE 1...
_Label_2524:
! SEND STATEMENT...
	mov	2171,r13		! source line 2171
	mov	"\0\0SE",r10
!   _temp_2531 = &diskBusy
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
	mov	2172,r13		! source line 2172
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_2525:
! CALL STATEMENT...
!   _temp_2532 = _StringConst_151
	set	_StringConst_151,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2532  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2174,r13		! source line 2174
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_2526:
! CALL STATEMENT...
!   _temp_2533 = _StringConst_152
	set	_StringConst_152,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2533  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2176,r13		! source line 2176
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_2527:
! CALL STATEMENT...
!   _temp_2534 = _StringConst_153
	set	_StringConst_153,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2534  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2178,r13		! source line 2178
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_2528:
! BREAK STATEMENT...
	mov	2182,r13		! source line 2182
	mov	"\0\0BR",r10
	jmp	_Label_2523
! CASE 6...
_Label_2529:
! CALL STATEMENT...
!   _temp_2535 = _StringConst_154
	set	_StringConst_154,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2535  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2184,r13		! source line 2184
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_2522:
! CALL STATEMENT...
!   _temp_2536 = _StringConst_155
	set	_StringConst_155,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2536  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2186,r13		! source line 2186
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_2523:
! END WHILE...
	jmp	_Label_2516
_Label_2518:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_4:
	.word	_sourceFileName
	.word	_Label_2537
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_2538
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2539
	.word	12
	.word	4
	.word	_Label_2540
	.word	16
	.word	4
	.word	_Label_2541
	.word	20
	.word	4
	.word	_Label_2542
	.word	-12
	.word	4
	.word	_Label_2543
	.word	-16
	.word	4
	.word	_Label_2544
	.word	-20
	.word	4
	.word	_Label_2545
	.word	-24
	.word	4
	.word	_Label_2546
	.word	-28
	.word	4
	.word	_Label_2547
	.word	-32
	.word	4
	.word	_Label_2548
	.word	-36
	.word	4
	.word	_Label_2549
	.word	-40
	.word	4
	.word	_Label_2550
	.word	-44
	.word	4
	.word	_Label_2551
	.word	-48
	.word	4
	.word	_Label_2552
	.word	-52
	.word	4
	.word	0
_Label_2537:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchWriteSector\0"
	.align
_Label_2538:
	.ascii	"Pself\0"
	.align
_Label_2539:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2540:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2541:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2542:
	.byte	'?'
	.ascii	"_temp_2536\0"
	.align
_Label_2543:
	.byte	'?'
	.ascii	"_temp_2535\0"
	.align
_Label_2544:
	.byte	'?'
	.ascii	"_temp_2534\0"
	.align
_Label_2545:
	.byte	'?'
	.ascii	"_temp_2533\0"
	.align
_Label_2546:
	.byte	'?'
	.ascii	"_temp_2532\0"
	.align
_Label_2547:
	.byte	'?'
	.ascii	"_temp_2531\0"
	.align
_Label_2548:
	.byte	'?'
	.ascii	"_temp_2530\0"
	.align
_Label_2549:
	.byte	'?'
	.ascii	"_temp_2521\0"
	.align
_Label_2550:
	.byte	'?'
	.ascii	"_temp_2520\0"
	.align
_Label_2551:
	.byte	'?'
	.ascii	"_temp_2519\0"
	.align
_Label_2552:
	.byte	'?'
	.ascii	"_temp_2515\0"
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
	mov	2195,r13		! source line 2195
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2210,r13		! source line 2210
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2212,r13		! source line 2212
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
	mov	2213,r13		! source line 2213
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
	mov	2214,r13		! source line 2214
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
	mov	2215,r13		! source line 2215
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
	mov	2215,r13		! source line 2215
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
	.word	_Label_2553
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_2554
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2555
	.word	12
	.word	4
	.word	_Label_2556
	.word	16
	.word	4
	.word	_Label_2557
	.word	20
	.word	4
	.word	_Label_2558
	.word	24
	.word	4
	.word	0
_Label_2553:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartWriteSector\0"
	.align
_Label_2554:
	.ascii	"Pself\0"
	.align
_Label_2555:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2556:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2557:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2558:
	.byte	'P'
	.ascii	"whoCares\0"
	.align
! 
! ===============  CLASS FileManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileManager:
	.word	_Label_2559
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
_Label_2559:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2560
	.word	_sourceFileName
	.word	332		! line number
	.word	800		! size of instances, in bytes
	.word	_P_Kernel_FileManager
	.word	_P_System_Object
	.word	0
_Label_2560:
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
_Label_3477:
	push	r0
	sub	r1,1,r1
	bne	_Label_3477
	mov	2226,r13		! source line 2226
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2561 = _StringConst_156
	set	_StringConst_156,r1
	store	r1,[r14+-940]
!   Prepare Argument: offset=8  value=_temp_2561  sizeInBytes=4
	load	[r14+-940],r1
	store	r1,[r15+0]
!   Call the function
	mov	2233,r13		! source line 2233
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2234,r13		! source line 2234
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
	mov	2235,r13		! source line 2235
	mov	"\0\0SE",r10
!   _temp_2563 = &fileManagerLock
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
	mov	2238,r13		! source line 2238
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
	mov	2239,r13		! source line 2239
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
	mov	2240,r13		! source line 2240
	mov	"\0\0SE",r10
!   _temp_2566 = &anFCBBecameFree
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
	mov	2241,r13		! source line 2241
	mov	"\0\0AS",r10
!   _temp_2567 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-916]
!   NEW ARRAY Constructor...
!   _temp_2569 = &_temp_2568
	add	r14,-912,r1
	store	r1,[r14+-508]
!   _temp_2569 = _temp_2569 + 4
	load	[r14+-508],r1
	add	r1,4,r1
	store	r1,[r14+-508]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2571 = zeros  (sizeInBytes=40)
	add	r14,-500,r4
	mov	10,r3
_Label_3478:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3478
!   _temp_2571 = _P_Kernel_FileControlBlock
	set	_P_Kernel_FileControlBlock,r1
	store	r1,[r14+-500]
	mov	10,r1
	store	r1,[r14+-504]
_Label_2573:
!   Data Move: *_temp_2569 = _temp_2571  (sizeInBytes=40)
	add	r14,-500,r5
	load	[r14+-508],r4
	mov	10,r3
_Label_3479:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3479
!   _temp_2569 = _temp_2569 + 40
	load	[r14+-508],r1
	add	r1,40,r1
	store	r1,[r14+-508]
!   _temp_2570 = _temp_2570 + -1
	load	[r14+-504],r1
	add	r1,-1,r1
	store	r1,[r14+-504]
!   if intNotZero (_temp_2570) then goto _Label_2573
	load	[r14+-504],r1
	cmp	r1,r0
	bne	_Label_2573
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-912]
!   _temp_2574 = &_temp_2568
	add	r14,-912,r1
	store	r1,[r14+-456]
!   make sure array has size 10
	load	[r14+-916],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3480
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3480:
!   make sure array has size 10
	load	[r14+-456],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2567 = *_temp_2574  (sizeInBytes=404)
	load	[r14+-456],r5
	load	[r14+-916],r4
	mov	101,r3
_Label_3481:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3481
! FOR STATEMENT...
	mov	2243,r13		! source line 2243
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2579 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-452]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2580 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-448]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2579  (sizeInBytes=4)
	load	[r14+-452],r1
	store	r1,[r14+-944]
_Label_2575:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2580 then goto _Label_2578		
	load	[r14+-944],r1
	load	[r14+-448],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2578
_Label_2576:
	mov	2243,r13		! source line 2243
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2244,r13		! source line 2244
	mov	"\0\0AS",r10
!   _temp_2581 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-444]
!   Move address of _temp_2581 [i ] into _temp_2582
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
!   _temp_2583 = _temp_2582 + 12
	load	[r14+-440],r1
	add	r1,12,r1
	store	r1,[r14+-436]
!   Data Move: *_temp_2583 = i  (sizeInBytes=4)
	load	[r14+-944],r1
	load	[r14+-436],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2245,r13		! source line 2245
	mov	"\0\0SE",r10
!   _temp_2584 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-432]
!   Move address of _temp_2584 [i ] into _temp_2585
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
	mov	2246,r13		! source line 2246
	mov	"\0\0SE",r10
!   _temp_2587 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-420]
!   Move address of _temp_2587 [i ] into _temp_2588
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
!   _temp_2586 = _temp_2588		(4 bytes)
	load	[r14+-416],r1
	store	r1,[r14+-424]
!   _temp_2589 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-412]
!   Prepare Argument: offset=12  value=_temp_2586  sizeInBytes=4
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
_Label_2577:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_2575
! END FOR
_Label_2578:
! ASSIGNMENT STATEMENT...
	mov	2250,r13		! source line 2250
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
	mov	2251,r13		! source line 2251
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
	mov	2252,r13		! source line 2252
	mov	"\0\0SE",r10
!   _temp_2592 = &anOpenFileBecameFree
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
	mov	2253,r13		! source line 2253
	mov	"\0\0AS",r10
!   _temp_2593 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-396]
!   NEW ARRAY Constructor...
!   _temp_2595 = &_temp_2594
	add	r14,-392,r1
	store	r1,[r14+-108]
!   _temp_2595 = _temp_2595 + 4
	load	[r14+-108],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2597 = zeros  (sizeInBytes=28)
	add	r14,-100,r4
	mov	7,r3
_Label_3482:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3482
!   _temp_2597 = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	store	r1,[r14+-100]
	mov	10,r1
	store	r1,[r14+-104]
_Label_2599:
!   Data Move: *_temp_2595 = _temp_2597  (sizeInBytes=28)
	add	r14,-100,r5
	load	[r14+-108],r4
	mov	7,r3
_Label_3483:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3483
!   _temp_2595 = _temp_2595 + 28
	load	[r14+-108],r1
	add	r1,28,r1
	store	r1,[r14+-108]
!   _temp_2596 = _temp_2596 + -1
	load	[r14+-104],r1
	add	r1,-1,r1
	store	r1,[r14+-104]
!   if intNotZero (_temp_2596) then goto _Label_2599
	load	[r14+-104],r1
	cmp	r1,r0
	bne	_Label_2599
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-392]
!   _temp_2600 = &_temp_2594
	add	r14,-392,r1
	store	r1,[r14+-68]
!   make sure array has size 10
	load	[r14+-396],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3484
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3484:
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2593 = *_temp_2600  (sizeInBytes=284)
	load	[r14+-68],r5
	load	[r14+-396],r4
	mov	71,r3
_Label_3485:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3485
! FOR STATEMENT...
	mov	2255,r13		! source line 2255
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2605 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2606 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2605  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-944]
_Label_2601:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2606 then goto _Label_2604		
	load	[r14+-944],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2604
_Label_2602:
	mov	2255,r13		! source line 2255
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2256,r13		! source line 2256
	mov	"\0\0AS",r10
!   _temp_2607 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-56]
!   Move address of _temp_2607 [i ] into _temp_2608
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
!   _temp_2609 = _temp_2608 + 12
	load	[r14+-52],r1
	add	r1,12,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_2609 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2257,r13		! source line 2257
	mov	"\0\0SE",r10
!   _temp_2611 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-40]
!   Move address of _temp_2611 [i ] into _temp_2612
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
!   _temp_2610 = _temp_2612		(4 bytes)
	load	[r14+-36],r1
	store	r1,[r14+-44]
!   _temp_2613 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_2610  sizeInBytes=4
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
_Label_2603:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_2601
! END FOR
_Label_2604:
! ASSIGNMENT STATEMENT...
	mov	2261,r13		! source line 2261
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: serialTerminalFile = zeros  (sizeInBytes=28)
	load	[r14+8],r4
	add	r4,772,r4
	mov	7,r3
_Label_3486:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3486
!   serialTerminalFile = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	load	[r14+8],r2
	store	r1,[r2+772]
! ASSIGNMENT STATEMENT...
	mov	2262,r13		! source line 2262
	mov	"\0\0AS",r10
!   _temp_2615 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-24]
!   _temp_2616 = _temp_2615 + 12
	load	[r14+-24],r1
	add	r1,12,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2616 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2267,r13		! source line 2267
	mov	"\0\0AS",r10
	mov	2267,r13		! source line 2267
	mov	"\0\0SE",r10
!   _temp_2617 = &_P_Kernel_frameManager
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
	mov	2268,r13		! source line 2268
	mov	"\0\0SE",r10
!   _temp_2618 = &_P_Kernel_diskDriver
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
	mov	2268,r13		! source line 2268
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
	.word	_Label_2619
	.word	4		! total size of parameters
	.word	952		! frame size = 952
	.word	_Label_2620
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2621
	.word	-12
	.word	4
	.word	_Label_2622
	.word	-16
	.word	4
	.word	_Label_2623
	.word	-20
	.word	4
	.word	_Label_2624
	.word	-24
	.word	4
	.word	_Label_2625
	.word	-28
	.word	4
	.word	_Label_2626
	.word	-32
	.word	4
	.word	_Label_2627
	.word	-36
	.word	4
	.word	_Label_2628
	.word	-40
	.word	4
	.word	_Label_2629
	.word	-44
	.word	4
	.word	_Label_2630
	.word	-48
	.word	4
	.word	_Label_2631
	.word	-52
	.word	4
	.word	_Label_2632
	.word	-56
	.word	4
	.word	_Label_2633
	.word	-60
	.word	4
	.word	_Label_2634
	.word	-64
	.word	4
	.word	_Label_2635
	.word	-68
	.word	4
	.word	_Label_2636
	.word	-72
	.word	4
	.word	_Label_2637
	.word	-100
	.word	28
	.word	_Label_2638
	.word	-104
	.word	4
	.word	_Label_2639
	.word	-108
	.word	4
	.word	_Label_2640
	.word	-392
	.word	284
	.word	_Label_2641
	.word	-396
	.word	4
	.word	_Label_2642
	.word	-400
	.word	4
	.word	_Label_2643
	.word	-404
	.word	4
	.word	_Label_2644
	.word	-408
	.word	4
	.word	_Label_2645
	.word	-412
	.word	4
	.word	_Label_2646
	.word	-416
	.word	4
	.word	_Label_2647
	.word	-420
	.word	4
	.word	_Label_2648
	.word	-424
	.word	4
	.word	_Label_2649
	.word	-428
	.word	4
	.word	_Label_2650
	.word	-432
	.word	4
	.word	_Label_2651
	.word	-436
	.word	4
	.word	_Label_2652
	.word	-440
	.word	4
	.word	_Label_2653
	.word	-444
	.word	4
	.word	_Label_2654
	.word	-448
	.word	4
	.word	_Label_2655
	.word	-452
	.word	4
	.word	_Label_2656
	.word	-456
	.word	4
	.word	_Label_2657
	.word	-460
	.word	4
	.word	_Label_2658
	.word	-500
	.word	40
	.word	_Label_2659
	.word	-504
	.word	4
	.word	_Label_2660
	.word	-508
	.word	4
	.word	_Label_2661
	.word	-912
	.word	404
	.word	_Label_2662
	.word	-916
	.word	4
	.word	_Label_2663
	.word	-920
	.word	4
	.word	_Label_2664
	.word	-924
	.word	4
	.word	_Label_2665
	.word	-928
	.word	4
	.word	_Label_2666
	.word	-932
	.word	4
	.word	_Label_2667
	.word	-936
	.word	4
	.word	_Label_2668
	.word	-940
	.word	4
	.word	_Label_2669
	.word	-944
	.word	4
	.word	0
_Label_2619:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2620:
	.ascii	"Pself\0"
	.align
_Label_2621:
	.byte	'?'
	.ascii	"_temp_2618\0"
	.align
_Label_2622:
	.byte	'?'
	.ascii	"_temp_2617\0"
	.align
_Label_2623:
	.byte	'?'
	.ascii	"_temp_2616\0"
	.align
_Label_2624:
	.byte	'?'
	.ascii	"_temp_2615\0"
	.align
_Label_2625:
	.byte	'?'
	.ascii	"_temp_2614\0"
	.align
_Label_2626:
	.byte	'?'
	.ascii	"_temp_2613\0"
	.align
_Label_2627:
	.byte	'?'
	.ascii	"_temp_2612\0"
	.align
_Label_2628:
	.byte	'?'
	.ascii	"_temp_2611\0"
	.align
_Label_2629:
	.byte	'?'
	.ascii	"_temp_2610\0"
	.align
_Label_2630:
	.byte	'?'
	.ascii	"_temp_2609\0"
	.align
_Label_2631:
	.byte	'?'
	.ascii	"_temp_2608\0"
	.align
_Label_2632:
	.byte	'?'
	.ascii	"_temp_2607\0"
	.align
_Label_2633:
	.byte	'?'
	.ascii	"_temp_2606\0"
	.align
_Label_2634:
	.byte	'?'
	.ascii	"_temp_2605\0"
	.align
_Label_2635:
	.byte	'?'
	.ascii	"_temp_2600\0"
	.align
_Label_2636:
	.byte	'?'
	.ascii	"_temp_2598\0"
	.align
_Label_2637:
	.byte	'?'
	.ascii	"_temp_2597\0"
	.align
_Label_2638:
	.byte	'?'
	.ascii	"_temp_2596\0"
	.align
_Label_2639:
	.byte	'?'
	.ascii	"_temp_2595\0"
	.align
_Label_2640:
	.byte	'?'
	.ascii	"_temp_2594\0"
	.align
_Label_2641:
	.byte	'?'
	.ascii	"_temp_2593\0"
	.align
_Label_2642:
	.byte	'?'
	.ascii	"_temp_2592\0"
	.align
_Label_2643:
	.byte	'?'
	.ascii	"_temp_2591\0"
	.align
_Label_2644:
	.byte	'?'
	.ascii	"_temp_2590\0"
	.align
_Label_2645:
	.byte	'?'
	.ascii	"_temp_2589\0"
	.align
_Label_2646:
	.byte	'?'
	.ascii	"_temp_2588\0"
	.align
_Label_2647:
	.byte	'?'
	.ascii	"_temp_2587\0"
	.align
_Label_2648:
	.byte	'?'
	.ascii	"_temp_2586\0"
	.align
_Label_2649:
	.byte	'?'
	.ascii	"_temp_2585\0"
	.align
_Label_2650:
	.byte	'?'
	.ascii	"_temp_2584\0"
	.align
_Label_2651:
	.byte	'?'
	.ascii	"_temp_2583\0"
	.align
_Label_2652:
	.byte	'?'
	.ascii	"_temp_2582\0"
	.align
_Label_2653:
	.byte	'?'
	.ascii	"_temp_2581\0"
	.align
_Label_2654:
	.byte	'?'
	.ascii	"_temp_2580\0"
	.align
_Label_2655:
	.byte	'?'
	.ascii	"_temp_2579\0"
	.align
_Label_2656:
	.byte	'?'
	.ascii	"_temp_2574\0"
	.align
_Label_2657:
	.byte	'?'
	.ascii	"_temp_2572\0"
	.align
_Label_2658:
	.byte	'?'
	.ascii	"_temp_2571\0"
	.align
_Label_2659:
	.byte	'?'
	.ascii	"_temp_2570\0"
	.align
_Label_2660:
	.byte	'?'
	.ascii	"_temp_2569\0"
	.align
_Label_2661:
	.byte	'?'
	.ascii	"_temp_2568\0"
	.align
_Label_2662:
	.byte	'?'
	.ascii	"_temp_2567\0"
	.align
_Label_2663:
	.byte	'?'
	.ascii	"_temp_2566\0"
	.align
_Label_2664:
	.byte	'?'
	.ascii	"_temp_2565\0"
	.align
_Label_2665:
	.byte	'?'
	.ascii	"_temp_2564\0"
	.align
_Label_2666:
	.byte	'?'
	.ascii	"_temp_2563\0"
	.align
_Label_2667:
	.byte	'?'
	.ascii	"_temp_2562\0"
	.align
_Label_2668:
	.byte	'?'
	.ascii	"_temp_2561\0"
	.align
_Label_2669:
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
_Label_3487:
	push	r0
	sub	r1,1,r1
	bne	_Label_3487
	mov	2275,r13		! source line 2275
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2277,r13		! source line 2277
	mov	"\0\0SE",r10
!   _temp_2670 = &fileManagerLock
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
!   _temp_2671 = _StringConst_157
	set	_StringConst_157,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_2671  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	2278,r13		! source line 2278
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2279,r13		! source line 2279
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2676 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-104]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2677 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-100]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2676  (sizeInBytes=4)
	load	[r14+-104],r1
	store	r1,[r14+-116]
_Label_2672:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2677 then goto _Label_2675		
	load	[r14+-116],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2675
_Label_2673:
	mov	2279,r13		! source line 2279
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2678 = _StringConst_158
	set	_StringConst_158,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_2678  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	2280,r13		! source line 2280
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2281,r13		! source line 2281
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2679 = _StringConst_159
	set	_StringConst_159,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_2679  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2282,r13		! source line 2282
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2283,r13		! source line 2283
	mov	"\0\0SE",r10
!   _temp_2680 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-88]
!   Move address of _temp_2680 [i ] into _temp_2681
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
_Label_2674:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_2672
! END FOR
_Label_2675:
! CALL STATEMENT...
!   _temp_2682 = _StringConst_160
	set	_StringConst_160,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2682  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	2285,r13		! source line 2285
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2286,r13		! source line 2286
	mov	"\0\0SE",r10
!   _temp_2683 = _function_198_printFCB
	set	_function_198_printFCB,r1
	store	r1,[r14+-76]
!   _temp_2684 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_2683  sizeInBytes=4
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
	mov	2287,r13		! source line 2287
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_2685 = _StringConst_161
	set	_StringConst_161,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_2685  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	2288,r13		! source line 2288
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2289,r13		! source line 2289
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2690 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2691 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2690  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-116]
_Label_2686:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2691 then goto _Label_2689		
	load	[r14+-116],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2689
_Label_2687:
	mov	2289,r13		! source line 2289
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2692 = _StringConst_162
	set	_StringConst_162,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2692  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	2290,r13		! source line 2290
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2291,r13		! source line 2291
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2693 = _StringConst_163
	set	_StringConst_163,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_2693  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	2292,r13		! source line 2292
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2695 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-44]
!   Move address of _temp_2695 [i ] into _temp_2696
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
!   _temp_2694 = _temp_2696		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2694  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	2293,r13		! source line 2293
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2697 = _StringConst_164
	set	_StringConst_164,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2697  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2294,r13		! source line 2294
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2295,r13		! source line 2295
	mov	"\0\0SE",r10
!   _temp_2698 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-32]
!   Move address of _temp_2698 [i ] into _temp_2699
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
_Label_2688:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_2686
! END FOR
_Label_2689:
! CALL STATEMENT...
!   _temp_2700 = _StringConst_165
	set	_StringConst_165,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2700  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2297,r13		! source line 2297
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2298,r13		! source line 2298
	mov	"\0\0SE",r10
!   _temp_2701 = _function_197_printOpen
	set	_function_197_printOpen,r1
	store	r1,[r14+-20]
!   _temp_2702 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2701  sizeInBytes=4
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
	mov	2299,r13		! source line 2299
	mov	"\0\0SE",r10
!   _temp_2703 = &fileManagerLock
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
	mov	2299,r13		! source line 2299
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
	.word	_Label_2704
	.word	4		! total size of parameters
	.word	116		! frame size = 116
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
	.word	_Label_2715
	.word	-48
	.word	4
	.word	_Label_2716
	.word	-52
	.word	4
	.word	_Label_2717
	.word	-56
	.word	4
	.word	_Label_2718
	.word	-60
	.word	4
	.word	_Label_2719
	.word	-64
	.word	4
	.word	_Label_2720
	.word	-68
	.word	4
	.word	_Label_2721
	.word	-72
	.word	4
	.word	_Label_2722
	.word	-76
	.word	4
	.word	_Label_2723
	.word	-80
	.word	4
	.word	_Label_2724
	.word	-84
	.word	4
	.word	_Label_2725
	.word	-88
	.word	4
	.word	_Label_2726
	.word	-92
	.word	4
	.word	_Label_2727
	.word	-96
	.word	4
	.word	_Label_2728
	.word	-100
	.word	4
	.word	_Label_2729
	.word	-104
	.word	4
	.word	_Label_2730
	.word	-108
	.word	4
	.word	_Label_2731
	.word	-112
	.word	4
	.word	_Label_2732
	.word	-116
	.word	4
	.word	0
_Label_2704:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Print\0"
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
	.ascii	"_temp_2696\0"
	.align
_Label_2714:
	.byte	'?'
	.ascii	"_temp_2695\0"
	.align
_Label_2715:
	.byte	'?'
	.ascii	"_temp_2694\0"
	.align
_Label_2716:
	.byte	'?'
	.ascii	"_temp_2693\0"
	.align
_Label_2717:
	.byte	'?'
	.ascii	"_temp_2692\0"
	.align
_Label_2718:
	.byte	'?'
	.ascii	"_temp_2691\0"
	.align
_Label_2719:
	.byte	'?'
	.ascii	"_temp_2690\0"
	.align
_Label_2720:
	.byte	'?'
	.ascii	"_temp_2685\0"
	.align
_Label_2721:
	.byte	'?'
	.ascii	"_temp_2684\0"
	.align
_Label_2722:
	.byte	'?'
	.ascii	"_temp_2683\0"
	.align
_Label_2723:
	.byte	'?'
	.ascii	"_temp_2682\0"
	.align
_Label_2724:
	.byte	'?'
	.ascii	"_temp_2681\0"
	.align
_Label_2725:
	.byte	'?'
	.ascii	"_temp_2680\0"
	.align
_Label_2726:
	.byte	'?'
	.ascii	"_temp_2679\0"
	.align
_Label_2727:
	.byte	'?'
	.ascii	"_temp_2678\0"
	.align
_Label_2728:
	.byte	'?'
	.ascii	"_temp_2677\0"
	.align
_Label_2729:
	.byte	'?'
	.ascii	"_temp_2676\0"
	.align
_Label_2730:
	.byte	'?'
	.ascii	"_temp_2671\0"
	.align
_Label_2731:
	.byte	'?'
	.ascii	"_temp_2670\0"
	.align
_Label_2732:
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
_Label_3488:
	push	r0
	sub	r1,1,r1
	bne	_Label_3488
	mov	2304,r13		! source line 2304
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2320,r13		! source line 2320
	mov	"\0\0AS",r10
	mov	2320,r13		! source line 2320
	mov	"\0\0SE",r10
!   _temp_2733 = &_P_Kernel_fileManager
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
	mov	2321,r13		! source line 2321
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _Label_2734
	load	[r14+-56],r1
	cmp	r1,r0
	be	_Label_2734
	jmp	_Label_2735
_Label_2734:
! THEN...
	mov	2322,r13		! source line 2322
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2322,r13		! source line 2322
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2735:
! SEND STATEMENT...
	mov	2326,r13		! source line 2326
	mov	"\0\0SE",r10
!   _temp_2736 = &fileManagerLock
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
	mov	2327,r13		! source line 2327
	mov	"\0\0WH",r10
_Label_2737:
	mov	2327,r13		! source line 2327
	mov	"\0\0SE",r10
!   _temp_2740 = &openFileFreeList
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
!   if result==true then goto _Label_2738 else goto _Label_2739
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2739
	jmp	_Label_2738
_Label_2738:
	mov	2327,r13		! source line 2327
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2328,r13		! source line 2328
	mov	"\0\0SE",r10
!   _temp_2741 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   _temp_2742 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_2741  sizeInBytes=4
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
	jmp	_Label_2737
_Label_2739:
! ASSIGNMENT STATEMENT...
	mov	2330,r13		! source line 2330
	mov	"\0\0AS",r10
	mov	2330,r13		! source line 2330
	mov	"\0\0SE",r10
!   _temp_2743 = &openFileFreeList
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
	mov	2333,r13		! source line 2333
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2744 = open + 20
	load	[r14+-52],r1
	add	r1,20,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2744 = fcb  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2334,r13		! source line 2334
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2745 = open + 24
	load	[r14+-52],r1
	add	r1,24,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2745 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2337,r13		! source line 2337
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2746 = open + 16
	load	[r14+-52],r1
	add	r1,16,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2746 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2339,r13		! source line 2339
	mov	"\0\0SE",r10
!   _temp_2747 = &fileManagerLock
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
	mov	2340,r13		! source line 2340
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
	.word	_Label_2748
	.word	8		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_2749
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2750
	.word	12
	.word	4
	.word	_Label_2751
	.word	-12
	.word	4
	.word	_Label_2752
	.word	-16
	.word	4
	.word	_Label_2753
	.word	-20
	.word	4
	.word	_Label_2754
	.word	-24
	.word	4
	.word	_Label_2755
	.word	-28
	.word	4
	.word	_Label_2756
	.word	-32
	.word	4
	.word	_Label_2757
	.word	-36
	.word	4
	.word	_Label_2758
	.word	-40
	.word	4
	.word	_Label_2759
	.word	-44
	.word	4
	.word	_Label_2760
	.word	-48
	.word	4
	.word	_Label_2761
	.word	-52
	.word	4
	.word	_Label_2762
	.word	-56
	.word	4
	.word	0
_Label_2748:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Open\0"
	.align
_Label_2749:
	.ascii	"Pself\0"
	.align
_Label_2750:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_2751:
	.byte	'?'
	.ascii	"_temp_2747\0"
	.align
_Label_2752:
	.byte	'?'
	.ascii	"_temp_2746\0"
	.align
_Label_2753:
	.byte	'?'
	.ascii	"_temp_2745\0"
	.align
_Label_2754:
	.byte	'?'
	.ascii	"_temp_2744\0"
	.align
_Label_2755:
	.byte	'?'
	.ascii	"_temp_2743\0"
	.align
_Label_2756:
	.byte	'?'
	.ascii	"_temp_2742\0"
	.align
_Label_2757:
	.byte	'?'
	.ascii	"_temp_2741\0"
	.align
_Label_2758:
	.byte	'?'
	.ascii	"_temp_2740\0"
	.align
_Label_2759:
	.byte	'?'
	.ascii	"_temp_2736\0"
	.align
_Label_2760:
	.byte	'?'
	.ascii	"_temp_2733\0"
	.align
_Label_2761:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2762:
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
_Label_3489:
	push	r0
	sub	r1,1,r1
	bne	_Label_3489
	mov	2345,r13		! source line 2345
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2370,r13		! source line 2370
	mov	"\0\0AS",r10
!   p = directoryFrame		(4 bytes)
	load	[r14+8],r1
	load	[r1+768],r1
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2373,r13		! source line 2373
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
	mov	2374,r13		! source line 2374
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2375,r13		! source line 2375
	mov	"\0\0IF",r10
!   if i == 1937012066 then goto _Label_2764		(int)
	load	[r14+-136],r1
	set	1937012066,r2
	cmp	r1,r2
	be	_Label_2764
!	jmp	_Label_2763
_Label_2763:
! THEN...
	mov	2376,r13		! source line 2376
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2765 = _StringConst_166
	set	_StringConst_166,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2765  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2376,r13		! source line 2376
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2764:
! ASSIGNMENT STATEMENT...
	mov	2380,r13		! source line 2380
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
	mov	2381,r13		! source line 2381
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2382,r13		! source line 2382
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
	mov	2383,r13		! source line 2383
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! WHILE STATEMENT...
	mov	2386,r13		! source line 2386
	mov	"\0\0WH",r10
_Label_2766:
!   if numFiles <= 0 then goto _Label_2768		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2768
!	jmp	_Label_2767
_Label_2767:
	mov	2386,r13		! source line 2386
	mov	"\0\0WB",r10
! CALL STATEMENT...
!   _temp_2769 = &start
	add	r14,-140,r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_2769  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2387,r13		! source line 2387
	mov	"\0\0CA",r10
	call	_function_199_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2388,r13		! source line 2388
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_2770 = &fileLen
	add	r14,-148,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=_temp_2770  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2389,r13		! source line 2389
	mov	"\0\0CA",r10
	call	_function_199_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2390,r13		! source line 2390
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_2771 = &fileNameLen
	add	r14,-152,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_2771  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2391,r13		! source line 2391
	mov	"\0\0CA",r10
	call	_function_199_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2392,r13		! source line 2392
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2393,r13		! source line 2393
	mov	"\0\0IF",r10
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2775 = *filename  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if fileNameLen != _temp_2775 then goto _Label_2773		(int)
	load	[r14+-152],r1
	load	[r14+-116],r2
	cmp	r1,r2
	bne	_Label_2773
!	jmp	_Label_2774
_Label_2774:
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of filename [0 ] into _temp_2777
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
!   _temp_2776 = _temp_2777		(4 bytes)
	load	[r14+-108],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2776  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=fileNameLen  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+8]
!   Call the function
	mov	2394,r13		! source line 2394
	mov	"\0\0CA",r10
	call	_P_System_MemoryEqual
!   if result==true then goto _Label_2772 else goto _Label_2773
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2773
	jmp	_Label_2772
_Label_2772:
! THEN...
	mov	2395,r13		! source line 2395
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2395,r13		! source line 2395
	mov	"\0\0BR",r10
	jmp	_Label_2768
! END IF...
_Label_2773:
! ASSIGNMENT STATEMENT...
	mov	2397,r13		! source line 2397
	mov	"\0\0AS",r10
!   p = p + fileNameLen		(int)
	load	[r14+-160],r1
	load	[r14+-152],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2398,r13		! source line 2398
	mov	"\0\0AS",r10
!   numFiles = numFiles - 1		(int)
	load	[r14+-144],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
! END WHILE...
	jmp	_Label_2766
_Label_2768:
! IF STATEMENT...
	mov	2402,r13		! source line 2402
	mov	"\0\0IF",r10
!   if numFiles > 0 then goto _Label_2779		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2779
!	jmp	_Label_2778
_Label_2778:
! THEN...
	mov	2403,r13		! source line 2403
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2403,r13		! source line 2403
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2779:
! SEND STATEMENT...
	mov	2406,r13		! source line 2406
	mov	"\0\0SE",r10
!   _temp_2780 = &fileManagerLock
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
	mov	2408,r13		! source line 2408
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2785 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-100]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2786 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-96]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2785  (sizeInBytes=4)
	load	[r14+-100],r1
	store	r1,[r14+-136]
_Label_2781:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2786 then goto _Label_2784		
	load	[r14+-136],r1
	load	[r14+-96],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2784
_Label_2782:
	mov	2408,r13		! source line 2408
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2409,r13		! source line 2409
	mov	"\0\0AS",r10
!   _temp_2787 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-92]
!   Move address of _temp_2787 [i ] into _temp_2788
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
!   fcb = _temp_2788		(4 bytes)
	load	[r14+-88],r1
	store	r1,[r14+-156]
! IF STATEMENT...
	mov	2410,r13		! source line 2410
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2792 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-80]
!   Data Move: _temp_2791 = *_temp_2792  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if _temp_2791 != start then goto _Label_2790		(int)
	load	[r14+-84],r1
	load	[r14+-140],r2
	cmp	r1,r2
	bne	_Label_2790
!	jmp	_Label_2789
_Label_2789:
! THEN...
	mov	2411,r13		! source line 2411
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2411,r13		! source line 2411
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2793 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-76]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2796 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2795 = *_temp_2796  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   _temp_2794 = _temp_2795 + 1		(int)
	load	[r14+-68],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
!   Data Move: *_temp_2793 = _temp_2794  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r14+-76],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2412,r13		! source line 2412
	mov	"\0\0SE",r10
!   _temp_2797 = &fileManagerLock
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
	mov	2413,r13		! source line 2413
	mov	"\0\0RE",r10
!   ReturnResult: fcb  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2790:
!   Increment the FOR-LOOP index variable and jump back
_Label_2783:
!   i = i + 1
	load	[r14+-136],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
	jmp	_Label_2781
! END FOR
_Label_2784:
! WHILE STATEMENT...
	mov	2418,r13		! source line 2418
	mov	"\0\0WH",r10
_Label_2798:
	mov	2418,r13		! source line 2418
	mov	"\0\0SE",r10
!   _temp_2801 = &fcbFreeList
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
!   if result==true then goto _Label_2799 else goto _Label_2800
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2800
	jmp	_Label_2799
_Label_2799:
	mov	2418,r13		! source line 2418
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2419,r13		! source line 2419
	mov	"\0\0SE",r10
!   _temp_2802 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   _temp_2803 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_2802  sizeInBytes=4
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
	jmp	_Label_2798
_Label_2800:
! ASSIGNMENT STATEMENT...
	mov	2421,r13		! source line 2421
	mov	"\0\0AS",r10
	mov	2421,r13		! source line 2421
	mov	"\0\0SE",r10
!   _temp_2804 = &fcbFreeList
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
	mov	2424,r13		! source line 2424
	mov	"\0\0SE",r10
!   _temp_2805 = &fileManagerLock
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
	mov	2427,r13		! source line 2427
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2806 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_2806 = start  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2428,r13		! source line 2428
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2807 = fcb + 24
	load	[r14+-156],r1
	add	r1,24,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_2807 = fileLen  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2429,r13		! source line 2429
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2808 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2808 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-28],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2430,r13		! source line 2430
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2813 = fcb + 32
	load	[r14+-156],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   Data Move: _temp_2812 = *_temp_2813  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_2812 < 0 then goto _Label_2811		(int)
	load	[r14+-24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2811
	jmp	_Label_2809
_Label_2811:
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2814 = fcb + 36
	load	[r14+-156],r1
	add	r1,36,r1
	store	r1,[r14+-16]
!   if boolIsZero (_temp_2814 ) then goto _Label_2810		(int)
	load	[r14+-16],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_2810
!	jmp	_Label_2809
_Label_2809:
! THEN...
	mov	2431,r13		! source line 2431
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2815 = _StringConst_167
	set	_StringConst_167,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2815  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2431,r13		! source line 2431
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2810:
! RETURN STATEMENT...
	mov	2433,r13		! source line 2433
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
	.word	_Label_2816
	.word	8		! total size of parameters
	.word	164		! frame size = 164
	.word	_Label_2817
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2818
	.word	12
	.word	4
	.word	_Label_2819
	.word	-12
	.word	4
	.word	_Label_2820
	.word	-16
	.word	4
	.word	_Label_2821
	.word	-20
	.word	4
	.word	_Label_2822
	.word	-24
	.word	4
	.word	_Label_2823
	.word	-28
	.word	4
	.word	_Label_2824
	.word	-32
	.word	4
	.word	_Label_2825
	.word	-36
	.word	4
	.word	_Label_2826
	.word	-40
	.word	4
	.word	_Label_2827
	.word	-44
	.word	4
	.word	_Label_2828
	.word	-48
	.word	4
	.word	_Label_2829
	.word	-52
	.word	4
	.word	_Label_2830
	.word	-56
	.word	4
	.word	_Label_2831
	.word	-60
	.word	4
	.word	_Label_2832
	.word	-64
	.word	4
	.word	_Label_2833
	.word	-68
	.word	4
	.word	_Label_2834
	.word	-72
	.word	4
	.word	_Label_2835
	.word	-76
	.word	4
	.word	_Label_2836
	.word	-80
	.word	4
	.word	_Label_2837
	.word	-84
	.word	4
	.word	_Label_2838
	.word	-88
	.word	4
	.word	_Label_2839
	.word	-92
	.word	4
	.word	_Label_2840
	.word	-96
	.word	4
	.word	_Label_2841
	.word	-100
	.word	4
	.word	_Label_2842
	.word	-104
	.word	4
	.word	_Label_2843
	.word	-108
	.word	4
	.word	_Label_2844
	.word	-112
	.word	4
	.word	_Label_2845
	.word	-116
	.word	4
	.word	_Label_2846
	.word	-120
	.word	4
	.word	_Label_2847
	.word	-124
	.word	4
	.word	_Label_2848
	.word	-128
	.word	4
	.word	_Label_2849
	.word	-132
	.word	4
	.word	_Label_2850
	.word	-136
	.word	4
	.word	_Label_2851
	.word	-140
	.word	4
	.word	_Label_2852
	.word	-144
	.word	4
	.word	_Label_2853
	.word	-148
	.word	4
	.word	_Label_2854
	.word	-152
	.word	4
	.word	_Label_2855
	.word	-156
	.word	4
	.word	_Label_2856
	.word	-160
	.word	4
	.word	0
_Label_2816:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"FindFCB\0"
	.align
_Label_2817:
	.ascii	"Pself\0"
	.align
_Label_2818:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_2819:
	.byte	'?'
	.ascii	"_temp_2815\0"
	.align
_Label_2820:
	.byte	'?'
	.ascii	"_temp_2814\0"
	.align
_Label_2821:
	.byte	'?'
	.ascii	"_temp_2813\0"
	.align
_Label_2822:
	.byte	'?'
	.ascii	"_temp_2812\0"
	.align
_Label_2823:
	.byte	'?'
	.ascii	"_temp_2808\0"
	.align
_Label_2824:
	.byte	'?'
	.ascii	"_temp_2807\0"
	.align
_Label_2825:
	.byte	'?'
	.ascii	"_temp_2806\0"
	.align
_Label_2826:
	.byte	'?'
	.ascii	"_temp_2805\0"
	.align
_Label_2827:
	.byte	'?'
	.ascii	"_temp_2804\0"
	.align
_Label_2828:
	.byte	'?'
	.ascii	"_temp_2803\0"
	.align
_Label_2829:
	.byte	'?'
	.ascii	"_temp_2802\0"
	.align
_Label_2830:
	.byte	'?'
	.ascii	"_temp_2801\0"
	.align
_Label_2831:
	.byte	'?'
	.ascii	"_temp_2797\0"
	.align
_Label_2832:
	.byte	'?'
	.ascii	"_temp_2796\0"
	.align
_Label_2833:
	.byte	'?'
	.ascii	"_temp_2795\0"
	.align
_Label_2834:
	.byte	'?'
	.ascii	"_temp_2794\0"
	.align
_Label_2835:
	.byte	'?'
	.ascii	"_temp_2793\0"
	.align
_Label_2836:
	.byte	'?'
	.ascii	"_temp_2792\0"
	.align
_Label_2837:
	.byte	'?'
	.ascii	"_temp_2791\0"
	.align
_Label_2838:
	.byte	'?'
	.ascii	"_temp_2788\0"
	.align
_Label_2839:
	.byte	'?'
	.ascii	"_temp_2787\0"
	.align
_Label_2840:
	.byte	'?'
	.ascii	"_temp_2786\0"
	.align
_Label_2841:
	.byte	'?'
	.ascii	"_temp_2785\0"
	.align
_Label_2842:
	.byte	'?'
	.ascii	"_temp_2780\0"
	.align
_Label_2843:
	.byte	'?'
	.ascii	"_temp_2777\0"
	.align
_Label_2844:
	.byte	'?'
	.ascii	"_temp_2776\0"
	.align
_Label_2845:
	.byte	'?'
	.ascii	"_temp_2775\0"
	.align
_Label_2846:
	.byte	'?'
	.ascii	"_temp_2771\0"
	.align
_Label_2847:
	.byte	'?'
	.ascii	"_temp_2770\0"
	.align
_Label_2848:
	.byte	'?'
	.ascii	"_temp_2769\0"
	.align
_Label_2849:
	.byte	'?'
	.ascii	"_temp_2765\0"
	.align
_Label_2850:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2851:
	.byte	'I'
	.ascii	"start\0"
	.align
_Label_2852:
	.byte	'I'
	.ascii	"numFiles\0"
	.align
_Label_2853:
	.byte	'I'
	.ascii	"fileLen\0"
	.align
_Label_2854:
	.byte	'I'
	.ascii	"fileNameLen\0"
	.align
_Label_2855:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_2856:
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
_Label_3490:
	push	r0
	sub	r1,1,r1
	bne	_Label_3490
	mov	2446,r13		! source line 2446
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2448,r13		! source line 2448
	mov	"\0\0IF",r10
!   _temp_2859 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-100]
!   if open != _temp_2859 then goto _Label_2858		(int)
	load	[r14+12],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bne	_Label_2858
!	jmp	_Label_2857
_Label_2857:
! THEN...
	mov	2449,r13		! source line 2449
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2449,r13		! source line 2449
	mov	"\0\0RE",r10
	add	r15,108,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2858:
! SEND STATEMENT...
	mov	2451,r13		! source line 2451
	mov	"\0\0SE",r10
!   _temp_2860 = &fileManagerLock
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
	mov	2452,r13		! source line 2452
	mov	"\0\0SE",r10
!   _temp_2861 = &_P_Kernel_fileManager
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
	mov	2453,r13		! source line 2453
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2862 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: fcb = *_temp_2862  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-104]
! ASSIGNMENT STATEMENT...
	mov	2454,r13		! source line 2454
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2863 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-84]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2866 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-72]
!   Data Move: _temp_2865 = *_temp_2866  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   _temp_2864 = _temp_2865 - 1		(int)
	load	[r14+-76],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
!   Data Move: *_temp_2863 = _temp_2864  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r14+-84],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2455,r13		! source line 2455
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2870 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2869 = *_temp_2870  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if _temp_2869 > 0 then goto _Label_2868		(int)
	load	[r14+-68],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2868
!	jmp	_Label_2867
_Label_2867:
! THEN...
	mov	2456,r13		! source line 2456
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2456,r13		! source line 2456
	mov	"\0\0SE",r10
!   _temp_2871 = &openFileFreeList
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
	mov	2457,r13		! source line 2457
	mov	"\0\0SE",r10
!   _temp_2872 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   _temp_2873 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_2872  sizeInBytes=4
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
	mov	2458,r13		! source line 2458
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2874 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2877 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-36]
!   Data Move: _temp_2876 = *_temp_2877  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   _temp_2875 = _temp_2876 - 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
!   Data Move: *_temp_2874 = _temp_2875  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+-48],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2459,r13		! source line 2459
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2881 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: _temp_2880 = *_temp_2881  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_2880 > 0 then goto _Label_2879		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2879
!	jmp	_Label_2878
_Label_2878:
! THEN...
	mov	2460,r13		! source line 2460
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2460,r13		! source line 2460
	mov	"\0\0SE",r10
!   _temp_2882 = &fcbFreeList
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
	mov	2461,r13		! source line 2461
	mov	"\0\0SE",r10
!   _temp_2883 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_2884 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2883  sizeInBytes=4
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
_Label_2879:
! END IF...
_Label_2868:
! SEND STATEMENT...
	mov	2464,r13		! source line 2464
	mov	"\0\0SE",r10
!   _temp_2885 = &fileManagerLock
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
	mov	2464,r13		! source line 2464
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
	.word	_Label_2886
	.word	8		! total size of parameters
	.word	104		! frame size = 104
	.word	_Label_2887
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2888
	.word	12
	.word	4
	.word	_Label_2889
	.word	-12
	.word	4
	.word	_Label_2890
	.word	-16
	.word	4
	.word	_Label_2891
	.word	-20
	.word	4
	.word	_Label_2892
	.word	-24
	.word	4
	.word	_Label_2893
	.word	-28
	.word	4
	.word	_Label_2894
	.word	-32
	.word	4
	.word	_Label_2895
	.word	-36
	.word	4
	.word	_Label_2896
	.word	-40
	.word	4
	.word	_Label_2897
	.word	-44
	.word	4
	.word	_Label_2898
	.word	-48
	.word	4
	.word	_Label_2899
	.word	-52
	.word	4
	.word	_Label_2900
	.word	-56
	.word	4
	.word	_Label_2901
	.word	-60
	.word	4
	.word	_Label_2902
	.word	-64
	.word	4
	.word	_Label_2903
	.word	-68
	.word	4
	.word	_Label_2904
	.word	-72
	.word	4
	.word	_Label_2905
	.word	-76
	.word	4
	.word	_Label_2906
	.word	-80
	.word	4
	.word	_Label_2907
	.word	-84
	.word	4
	.word	_Label_2908
	.word	-88
	.word	4
	.word	_Label_2909
	.word	-92
	.word	4
	.word	_Label_2910
	.word	-96
	.word	4
	.word	_Label_2911
	.word	-100
	.word	4
	.word	_Label_2912
	.word	-104
	.word	4
	.word	0
_Label_2886:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Close\0"
	.align
_Label_2887:
	.ascii	"Pself\0"
	.align
_Label_2888:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2889:
	.byte	'?'
	.ascii	"_temp_2885\0"
	.align
_Label_2890:
	.byte	'?'
	.ascii	"_temp_2884\0"
	.align
_Label_2891:
	.byte	'?'
	.ascii	"_temp_2883\0"
	.align
_Label_2892:
	.byte	'?'
	.ascii	"_temp_2882\0"
	.align
_Label_2893:
	.byte	'?'
	.ascii	"_temp_2881\0"
	.align
_Label_2894:
	.byte	'?'
	.ascii	"_temp_2880\0"
	.align
_Label_2895:
	.byte	'?'
	.ascii	"_temp_2877\0"
	.align
_Label_2896:
	.byte	'?'
	.ascii	"_temp_2876\0"
	.align
_Label_2897:
	.byte	'?'
	.ascii	"_temp_2875\0"
	.align
_Label_2898:
	.byte	'?'
	.ascii	"_temp_2874\0"
	.align
_Label_2899:
	.byte	'?'
	.ascii	"_temp_2873\0"
	.align
_Label_2900:
	.byte	'?'
	.ascii	"_temp_2872\0"
	.align
_Label_2901:
	.byte	'?'
	.ascii	"_temp_2871\0"
	.align
_Label_2902:
	.byte	'?'
	.ascii	"_temp_2870\0"
	.align
_Label_2903:
	.byte	'?'
	.ascii	"_temp_2869\0"
	.align
_Label_2904:
	.byte	'?'
	.ascii	"_temp_2866\0"
	.align
_Label_2905:
	.byte	'?'
	.ascii	"_temp_2865\0"
	.align
_Label_2906:
	.byte	'?'
	.ascii	"_temp_2864\0"
	.align
_Label_2907:
	.byte	'?'
	.ascii	"_temp_2863\0"
	.align
_Label_2908:
	.byte	'?'
	.ascii	"_temp_2862\0"
	.align
_Label_2909:
	.byte	'?'
	.ascii	"_temp_2861\0"
	.align
_Label_2910:
	.byte	'?'
	.ascii	"_temp_2860\0"
	.align
_Label_2911:
	.byte	'?'
	.ascii	"_temp_2859\0"
	.align
_Label_2912:
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
	mov	29,r1
_Label_3491:
	push	r0
	sub	r1,1,r1
	bne	_Label_3491
	mov	2469,r13		! source line 2469
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2474,r13		! source line 2474
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2916 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-104]
!   Data Move: _temp_2915 = *_temp_2916  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_2915) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2917 = _temp_2915 + 36
	load	[r14+-108],r1
	add	r1,36,r1
	store	r1,[r14+-100]
!   if boolIsZero (_temp_2917 ) then goto _Label_2914		(int)
	load	[r14+-100],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_2914
!	jmp	_Label_2913
_Label_2913:
! THEN...
	mov	2475,r13		! source line 2475
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	2475,r13		! source line 2475
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2922 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_2921 = *_temp_2922  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2921) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2923 = _temp_2921 + 32
	load	[r14+-92],r1
	add	r1,32,r1
	store	r1,[r14+-84]
!   Data Move: _temp_2920 = *_temp_2923  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_2920 >= 0 then goto _Label_2919		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2919
!	jmp	_Label_2918
_Label_2918:
! THEN...
	mov	2476,r13		! source line 2476
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2924 = _StringConst_168
	set	_StringConst_168,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2924  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2476,r13		! source line 2476
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2919:
! ASSIGNMENT STATEMENT...
	mov	2478,r13		! source line 2478
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2926 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-72]
!   Data Move: _temp_2925 = *_temp_2926  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_2925) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2927 = _temp_2925 + 36
	load	[r14+-76],r1
	add	r1,36,r1
	store	r1,[r14+-68]
!   Data Move: *_temp_2927 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-68],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	2479,r13		! source line 2479
	mov	"\0\0SE",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2931 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2930 = *_temp_2931  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_2930) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2932 = _temp_2930 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   Data Move: _temp_2929 = *_temp_2932  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2935 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: _temp_2934 = *_temp_2935  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_2934) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2936 = _temp_2934 + 20
	load	[r14+-40],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: _temp_2933 = *_temp_2936  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_2928 = _temp_2929 + _temp_2933		(int)
	load	[r14+-60],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2939 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   Data Move: _temp_2938 = *_temp_2939  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2938) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2940 = _temp_2938 + 28
	load	[r14+-24],r1
	add	r1,28,r1
	store	r1,[r14+-16]
!   Data Move: _temp_2937 = *_temp_2940  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   _temp_2941 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2928  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2937  sizeInBytes=4
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
_Label_2914:
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
_RoutineDescriptor__Method_P_Kernel_FileManager_6:
	.word	_sourceFileName
	.word	_Label_2942
	.word	8		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_2943
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2944
	.word	12
	.word	4
	.word	_Label_2945
	.word	-12
	.word	4
	.word	_Label_2946
	.word	-16
	.word	4
	.word	_Label_2947
	.word	-20
	.word	4
	.word	_Label_2948
	.word	-24
	.word	4
	.word	_Label_2949
	.word	-28
	.word	4
	.word	_Label_2950
	.word	-32
	.word	4
	.word	_Label_2951
	.word	-36
	.word	4
	.word	_Label_2952
	.word	-40
	.word	4
	.word	_Label_2953
	.word	-44
	.word	4
	.word	_Label_2954
	.word	-48
	.word	4
	.word	_Label_2955
	.word	-52
	.word	4
	.word	_Label_2956
	.word	-56
	.word	4
	.word	_Label_2957
	.word	-60
	.word	4
	.word	_Label_2958
	.word	-64
	.word	4
	.word	_Label_2959
	.word	-68
	.word	4
	.word	_Label_2960
	.word	-72
	.word	4
	.word	_Label_2961
	.word	-76
	.word	4
	.word	_Label_2962
	.word	-80
	.word	4
	.word	_Label_2963
	.word	-84
	.word	4
	.word	_Label_2964
	.word	-88
	.word	4
	.word	_Label_2965
	.word	-92
	.word	4
	.word	_Label_2966
	.word	-96
	.word	4
	.word	_Label_2967
	.word	-100
	.word	4
	.word	_Label_2968
	.word	-104
	.word	4
	.word	_Label_2969
	.word	-108
	.word	4
	.word	0
_Label_2942:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Flush\0"
	.align
_Label_2943:
	.ascii	"Pself\0"
	.align
_Label_2944:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2945:
	.byte	'?'
	.ascii	"_temp_2941\0"
	.align
_Label_2946:
	.byte	'?'
	.ascii	"_temp_2940\0"
	.align
_Label_2947:
	.byte	'?'
	.ascii	"_temp_2939\0"
	.align
_Label_2948:
	.byte	'?'
	.ascii	"_temp_2938\0"
	.align
_Label_2949:
	.byte	'?'
	.ascii	"_temp_2937\0"
	.align
_Label_2950:
	.byte	'?'
	.ascii	"_temp_2936\0"
	.align
_Label_2951:
	.byte	'?'
	.ascii	"_temp_2935\0"
	.align
_Label_2952:
	.byte	'?'
	.ascii	"_temp_2934\0"
	.align
_Label_2953:
	.byte	'?'
	.ascii	"_temp_2933\0"
	.align
_Label_2954:
	.byte	'?'
	.ascii	"_temp_2932\0"
	.align
_Label_2955:
	.byte	'?'
	.ascii	"_temp_2931\0"
	.align
_Label_2956:
	.byte	'?'
	.ascii	"_temp_2930\0"
	.align
_Label_2957:
	.byte	'?'
	.ascii	"_temp_2929\0"
	.align
_Label_2958:
	.byte	'?'
	.ascii	"_temp_2928\0"
	.align
_Label_2959:
	.byte	'?'
	.ascii	"_temp_2927\0"
	.align
_Label_2960:
	.byte	'?'
	.ascii	"_temp_2926\0"
	.align
_Label_2961:
	.byte	'?'
	.ascii	"_temp_2925\0"
	.align
_Label_2962:
	.byte	'?'
	.ascii	"_temp_2924\0"
	.align
_Label_2963:
	.byte	'?'
	.ascii	"_temp_2923\0"
	.align
_Label_2964:
	.byte	'?'
	.ascii	"_temp_2922\0"
	.align
_Label_2965:
	.byte	'?'
	.ascii	"_temp_2921\0"
	.align
_Label_2966:
	.byte	'?'
	.ascii	"_temp_2920\0"
	.align
_Label_2967:
	.byte	'?'
	.ascii	"_temp_2917\0"
	.align
_Label_2968:
	.byte	'?'
	.ascii	"_temp_2916\0"
	.align
_Label_2969:
	.byte	'?'
	.ascii	"_temp_2915\0"
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
_Label_3492:
	push	r0
	sub	r1,1,r1
	bne	_Label_3492
	mov	2488,r13		! source line 2488
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2503,r13		! source line 2503
	mov	"\0\0SE",r10
!   _temp_2970 = &fileManagerLock
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
	mov	2504,r13		! source line 2504
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_2976		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2976
!   _temp_2975 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_2977
_Label_2976:
!   _temp_2975 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_2977:
!   if _temp_2975 then goto _Label_2974 else goto _Label_2971
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2971
	jmp	_Label_2974
_Label_2974:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2980 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-100]
!   Data Move: _temp_2979 = *_temp_2980  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_2979 == 0 then goto _Label_2981		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2981
!   _temp_2978 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2982
_Label_2981:
!   _temp_2978 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2982:
!   if _temp_2978 then goto _Label_2973 else goto _Label_2971
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2971
	jmp	_Label_2973
_Label_2973:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2985 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_2984 = *_temp_2985  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2984) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2986 = _temp_2984 + 20
	load	[r14+-92],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: _temp_2983 = *_temp_2986  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_2983 >= 0 then goto _Label_2972		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2972
!	jmp	_Label_2971
_Label_2971:
! THEN...
	mov	2505,r13		! source line 2505
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2987 = _StringConst_169
	set	_StringConst_169,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2987  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2505,r13		! source line 2505
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2972:
! ASSIGNMENT STATEMENT...
	mov	2507,r13		! source line 2507
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2988 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-76]
!   Data Move: fcb = *_temp_2988  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-128]
! WHILE STATEMENT...
	mov	2508,r13		! source line 2508
	mov	"\0\0WH",r10
_Label_2989:
!   if numBytes <= 0 then goto _Label_2991		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2991
!	jmp	_Label_2990
_Label_2990:
	mov	2508,r13		! source line 2508
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2517,r13		! source line 2517
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
	mov	2518,r13		! source line 2518
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
	mov	2522,r13		! source line 2522
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2995 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-68]
!   Data Move: _temp_2994 = *_temp_2995  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if _temp_2994 == sector then goto _Label_2993		(int)
	load	[r14+-72],r1
	load	[r14+-112],r2
	cmp	r1,r2
	be	_Label_2993
!	jmp	_Label_2992
_Label_2992:
! THEN...
	mov	2523,r13		! source line 2523
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2523,r13		! source line 2523
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_2996) then goto _runtimeErrorNullPointer
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
	mov	2525,r13		! source line 2525
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2999 = fcb + 20
	load	[r14+-128],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2998 = *_temp_2999  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   _temp_2997 = sector + _temp_2998		(int)
	load	[r14+-112],r1
	load	[r14+-56],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3001 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-44]
!   Data Move: _temp_3000 = *_temp_3001  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_3002 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_2997  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_3000  sizeInBytes=4
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
	mov	2528,r13		! source line 2528
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3003 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_3003 = sector  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2529,r13		! source line 2529
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3004 = fcb + 36
	load	[r14+-128],r1
	add	r1,36,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_3004 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-32],r2
	storeb	r1,[r2]
! END IF...
_Label_2993:
! ASSIGNMENT STATEMENT...
	mov	2531,r13		! source line 2531
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3006 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-24]
!   Data Move: _temp_3005 = *_temp_3006  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   posInBuffer = _temp_3005 + offset		(int)
	load	[r14+-28],r1
	load	[r14+-116],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
! ASSIGNMENT STATEMENT...
	mov	2532,r13		! source line 2532
	mov	"\0\0AS",r10
!   _temp_3007 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-116],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_3007  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Call the function
	mov	2532,r13		! source line 2532
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
	mov	2536,r13		! source line 2536
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2537,r13		! source line 2537
	mov	"\0\0AS",r10
!   targetAddr = targetAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2538,r13		! source line 2538
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2539,r13		! source line 2539
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_2989
_Label_2991:
! SEND STATEMENT...
	mov	2546,r13		! source line 2546
	mov	"\0\0SE",r10
!   _temp_3008 = &fileManagerLock
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
	mov	2547,r13		! source line 2547
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
	.word	_Label_3009
	.word	20		! total size of parameters
	.word	136		! frame size = 136
	.word	_Label_3010
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3011
	.word	12
	.word	4
	.word	_Label_3012
	.word	16
	.word	4
	.word	_Label_3013
	.word	20
	.word	4
	.word	_Label_3014
	.word	24
	.word	4
	.word	_Label_3015
	.word	-16
	.word	4
	.word	_Label_3016
	.word	-20
	.word	4
	.word	_Label_3017
	.word	-24
	.word	4
	.word	_Label_3018
	.word	-28
	.word	4
	.word	_Label_3019
	.word	-32
	.word	4
	.word	_Label_3020
	.word	-36
	.word	4
	.word	_Label_3021
	.word	-40
	.word	4
	.word	_Label_3022
	.word	-44
	.word	4
	.word	_Label_3023
	.word	-48
	.word	4
	.word	_Label_3024
	.word	-52
	.word	4
	.word	_Label_3025
	.word	-56
	.word	4
	.word	_Label_3026
	.word	-60
	.word	4
	.word	_Label_3027
	.word	-64
	.word	4
	.word	_Label_3028
	.word	-68
	.word	4
	.word	_Label_3029
	.word	-72
	.word	4
	.word	_Label_3030
	.word	-76
	.word	4
	.word	_Label_3031
	.word	-80
	.word	4
	.word	_Label_3032
	.word	-84
	.word	4
	.word	_Label_3033
	.word	-88
	.word	4
	.word	_Label_3034
	.word	-92
	.word	4
	.word	_Label_3035
	.word	-96
	.word	4
	.word	_Label_3036
	.word	-100
	.word	4
	.word	_Label_3037
	.word	-104
	.word	4
	.word	_Label_3038
	.word	-9
	.word	1
	.word	_Label_3039
	.word	-10
	.word	1
	.word	_Label_3040
	.word	-108
	.word	4
	.word	_Label_3041
	.word	-112
	.word	4
	.word	_Label_3042
	.word	-116
	.word	4
	.word	_Label_3043
	.word	-120
	.word	4
	.word	_Label_3044
	.word	-124
	.word	4
	.word	_Label_3045
	.word	-128
	.word	4
	.word	0
_Label_3009:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchRead\0"
	.align
_Label_3010:
	.ascii	"Pself\0"
	.align
_Label_3011:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3012:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_3013:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_3014:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3015:
	.byte	'?'
	.ascii	"_temp_3008\0"
	.align
_Label_3016:
	.byte	'?'
	.ascii	"_temp_3007\0"
	.align
_Label_3017:
	.byte	'?'
	.ascii	"_temp_3006\0"
	.align
_Label_3018:
	.byte	'?'
	.ascii	"_temp_3005\0"
	.align
_Label_3019:
	.byte	'?'
	.ascii	"_temp_3004\0"
	.align
_Label_3020:
	.byte	'?'
	.ascii	"_temp_3003\0"
	.align
_Label_3021:
	.byte	'?'
	.ascii	"_temp_3002\0"
	.align
_Label_3022:
	.byte	'?'
	.ascii	"_temp_3001\0"
	.align
_Label_3023:
	.byte	'?'
	.ascii	"_temp_3000\0"
	.align
_Label_3024:
	.byte	'?'
	.ascii	"_temp_2999\0"
	.align
_Label_3025:
	.byte	'?'
	.ascii	"_temp_2998\0"
	.align
_Label_3026:
	.byte	'?'
	.ascii	"_temp_2997\0"
	.align
_Label_3027:
	.byte	'?'
	.ascii	"_temp_2996\0"
	.align
_Label_3028:
	.byte	'?'
	.ascii	"_temp_2995\0"
	.align
_Label_3029:
	.byte	'?'
	.ascii	"_temp_2994\0"
	.align
_Label_3030:
	.byte	'?'
	.ascii	"_temp_2988\0"
	.align
_Label_3031:
	.byte	'?'
	.ascii	"_temp_2987\0"
	.align
_Label_3032:
	.byte	'?'
	.ascii	"_temp_2986\0"
	.align
_Label_3033:
	.byte	'?'
	.ascii	"_temp_2985\0"
	.align
_Label_3034:
	.byte	'?'
	.ascii	"_temp_2984\0"
	.align
_Label_3035:
	.byte	'?'
	.ascii	"_temp_2983\0"
	.align
_Label_3036:
	.byte	'?'
	.ascii	"_temp_2980\0"
	.align
_Label_3037:
	.byte	'?'
	.ascii	"_temp_2979\0"
	.align
_Label_3038:
	.byte	'C'
	.ascii	"_temp_2978\0"
	.align
_Label_3039:
	.byte	'C'
	.ascii	"_temp_2975\0"
	.align
_Label_3040:
	.byte	'?'
	.ascii	"_temp_2970\0"
	.align
_Label_3041:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_3042:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_3043:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_3044:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_3045:
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
_Label_3493:
	push	r0
	sub	r1,1,r1
	bne	_Label_3493
	mov	2552,r13		! source line 2552
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2568,r13		! source line 2568
	mov	"\0\0SE",r10
!   _temp_3046 = &fileManagerLock
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
	mov	2569,r13		! source line 2569
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_3052		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3052
!   _temp_3051 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_3053
_Label_3052:
!   _temp_3051 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_3053:
!   if _temp_3051 then goto _Label_3050 else goto _Label_3047
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3047
	jmp	_Label_3050
_Label_3050:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3056 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-108]
!   Data Move: _temp_3055 = *_temp_3056  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if _temp_3055 == 0 then goto _Label_3057		(int)
	load	[r14+-112],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3057
!   _temp_3054 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_3058
_Label_3057:
!   _temp_3054 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_3058:
!   if _temp_3054 then goto _Label_3049 else goto _Label_3047
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3047
	jmp	_Label_3049
_Label_3049:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3061 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-96]
!   Data Move: _temp_3060 = *_temp_3061  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_3060) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3062 = _temp_3060 + 20
	load	[r14+-100],r1
	add	r1,20,r1
	store	r1,[r14+-92]
!   Data Move: _temp_3059 = *_temp_3062  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_3059 >= 0 then goto _Label_3048		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3048
!	jmp	_Label_3047
_Label_3047:
! THEN...
	mov	2570,r13		! source line 2570
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3063 = _StringConst_170
	set	_StringConst_170,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_3063  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2570,r13		! source line 2570
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3048:
! ASSIGNMENT STATEMENT...
	mov	2572,r13		! source line 2572
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3064 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: fcb = *_temp_3064  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-136]
! WHILE STATEMENT...
	mov	2573,r13		! source line 2573
	mov	"\0\0WH",r10
_Label_3065:
!   if numBytes <= 0 then goto _Label_3067		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3067
!	jmp	_Label_3066
_Label_3066:
	mov	2573,r13		! source line 2573
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2582,r13		! source line 2582
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
	mov	2583,r13		! source line 2583
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
	mov	2587,r13		! source line 2587
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3071 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-76]
!   Data Move: _temp_3070 = *_temp_3071  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_3070 == sector then goto _Label_3069		(int)
	load	[r14+-80],r1
	load	[r14+-120],r2
	cmp	r1,r2
	be	_Label_3069
!	jmp	_Label_3068
_Label_3068:
! THEN...
	mov	2589,r13		! source line 2589
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2589,r13		! source line 2589
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_3072) then goto _runtimeErrorNullPointer
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
_Label_3069:
! ASSIGNMENT STATEMENT...
	mov	2591,r13		! source line 2591
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3074 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-64]
!   Data Move: _temp_3073 = *_temp_3074  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   posInBuffer = _temp_3073 + offset		(int)
	load	[r14+-68],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
! ASSIGNMENT STATEMENT...
	mov	2592,r13		! source line 2592
	mov	"\0\0AS",r10
!   _temp_3075 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_3075  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Call the function
	mov	2592,r13		! source line 2592
	mov	"\0\0CA",r10
	call	_P_System_Min
!   Retrieve Result: targetName=bytesToMove  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-132]
! IF STATEMENT...
	mov	2593,r13		! source line 2593
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3079 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-52]
!   Data Move: _temp_3078 = *_temp_3079  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if _temp_3078 != sector then goto _Label_3077		(int)
	load	[r14+-56],r1
	load	[r14+-120],r2
	cmp	r1,r2
	bne	_Label_3077
!	jmp	_Label_3076
_Label_3076:
	jmp	_Label_3080
_Label_3077:
! ELSE...
	mov	2595,r13		! source line 2595
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	2595,r13		! source line 2595
	mov	"\0\0IF",r10
!   if intIsZero (offset) then goto _Label_3083
	load	[r14+-124],r1
	cmp	r1,r0
	be	_Label_3083
	jmp	_Label_3082
_Label_3083:
!   if bytesToMove != 8192 then goto _Label_3082		(int)
	load	[r14+-132],r1
	mov	8192,r2
	cmp	r1,r2
	bne	_Label_3082
!	jmp	_Label_3081
_Label_3081:
	jmp	_Label_3084
_Label_3082:
! ELSE...
	mov	2599,r13		! source line 2599
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	2599,r13		! source line 2599
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3087 = fcb + 20
	load	[r14+-136],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   Data Move: _temp_3086 = *_temp_3087  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_3085 = sector + _temp_3086		(int)
	load	[r14+-120],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3089 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-32]
!   Data Move: _temp_3088 = *_temp_3089  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   _temp_3090 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_3085  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_3088  sizeInBytes=4
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
_Label_3084:
! END IF...
_Label_3080:
! ASSIGNMENT STATEMENT...
	mov	2603,r13		! source line 2603
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3091 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3091 = sector  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2604,r13		! source line 2604
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3092 = fcb + 36
	load	[r14+-136],r1
	add	r1,36,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_3092 = 1  (sizeInBytes=1)
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
	mov	2608,r13		! source line 2608
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2609,r13		! source line 2609
	mov	"\0\0AS",r10
!   sourceAddr = sourceAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2610,r13		! source line 2610
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2611,r13		! source line 2611
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-132],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_3065
_Label_3067:
! SEND STATEMENT...
	mov	2618,r13		! source line 2618
	mov	"\0\0SE",r10
!   _temp_3093 = &fileManagerLock
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
	mov	2620,r13		! source line 2620
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
	.word	_Label_3094
	.word	20		! total size of parameters
	.word	144		! frame size = 144
	.word	_Label_3095
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3096
	.word	12
	.word	4
	.word	_Label_3097
	.word	16
	.word	4
	.word	_Label_3098
	.word	20
	.word	4
	.word	_Label_3099
	.word	24
	.word	4
	.word	_Label_3100
	.word	-16
	.word	4
	.word	_Label_3101
	.word	-20
	.word	4
	.word	_Label_3102
	.word	-24
	.word	4
	.word	_Label_3103
	.word	-28
	.word	4
	.word	_Label_3104
	.word	-32
	.word	4
	.word	_Label_3105
	.word	-36
	.word	4
	.word	_Label_3106
	.word	-40
	.word	4
	.word	_Label_3107
	.word	-44
	.word	4
	.word	_Label_3108
	.word	-48
	.word	4
	.word	_Label_3109
	.word	-52
	.word	4
	.word	_Label_3110
	.word	-56
	.word	4
	.word	_Label_3111
	.word	-60
	.word	4
	.word	_Label_3112
	.word	-64
	.word	4
	.word	_Label_3113
	.word	-68
	.word	4
	.word	_Label_3114
	.word	-72
	.word	4
	.word	_Label_3115
	.word	-76
	.word	4
	.word	_Label_3116
	.word	-80
	.word	4
	.word	_Label_3117
	.word	-84
	.word	4
	.word	_Label_3118
	.word	-88
	.word	4
	.word	_Label_3119
	.word	-92
	.word	4
	.word	_Label_3120
	.word	-96
	.word	4
	.word	_Label_3121
	.word	-100
	.word	4
	.word	_Label_3122
	.word	-104
	.word	4
	.word	_Label_3123
	.word	-108
	.word	4
	.word	_Label_3124
	.word	-112
	.word	4
	.word	_Label_3125
	.word	-9
	.word	1
	.word	_Label_3126
	.word	-10
	.word	1
	.word	_Label_3127
	.word	-116
	.word	4
	.word	_Label_3128
	.word	-120
	.word	4
	.word	_Label_3129
	.word	-124
	.word	4
	.word	_Label_3130
	.word	-128
	.word	4
	.word	_Label_3131
	.word	-132
	.word	4
	.word	_Label_3132
	.word	-136
	.word	4
	.word	0
_Label_3094:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchWrite\0"
	.align
_Label_3095:
	.ascii	"Pself\0"
	.align
_Label_3096:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3097:
	.byte	'I'
	.ascii	"sourceAddr\0"
	.align
_Label_3098:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_3099:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3100:
	.byte	'?'
	.ascii	"_temp_3093\0"
	.align
_Label_3101:
	.byte	'?'
	.ascii	"_temp_3092\0"
	.align
_Label_3102:
	.byte	'?'
	.ascii	"_temp_3091\0"
	.align
_Label_3103:
	.byte	'?'
	.ascii	"_temp_3090\0"
	.align
_Label_3104:
	.byte	'?'
	.ascii	"_temp_3089\0"
	.align
_Label_3105:
	.byte	'?'
	.ascii	"_temp_3088\0"
	.align
_Label_3106:
	.byte	'?'
	.ascii	"_temp_3087\0"
	.align
_Label_3107:
	.byte	'?'
	.ascii	"_temp_3086\0"
	.align
_Label_3108:
	.byte	'?'
	.ascii	"_temp_3085\0"
	.align
_Label_3109:
	.byte	'?'
	.ascii	"_temp_3079\0"
	.align
_Label_3110:
	.byte	'?'
	.ascii	"_temp_3078\0"
	.align
_Label_3111:
	.byte	'?'
	.ascii	"_temp_3075\0"
	.align
_Label_3112:
	.byte	'?'
	.ascii	"_temp_3074\0"
	.align
_Label_3113:
	.byte	'?'
	.ascii	"_temp_3073\0"
	.align
_Label_3114:
	.byte	'?'
	.ascii	"_temp_3072\0"
	.align
_Label_3115:
	.byte	'?'
	.ascii	"_temp_3071\0"
	.align
_Label_3116:
	.byte	'?'
	.ascii	"_temp_3070\0"
	.align
_Label_3117:
	.byte	'?'
	.ascii	"_temp_3064\0"
	.align
_Label_3118:
	.byte	'?'
	.ascii	"_temp_3063\0"
	.align
_Label_3119:
	.byte	'?'
	.ascii	"_temp_3062\0"
	.align
_Label_3120:
	.byte	'?'
	.ascii	"_temp_3061\0"
	.align
_Label_3121:
	.byte	'?'
	.ascii	"_temp_3060\0"
	.align
_Label_3122:
	.byte	'?'
	.ascii	"_temp_3059\0"
	.align
_Label_3123:
	.byte	'?'
	.ascii	"_temp_3056\0"
	.align
_Label_3124:
	.byte	'?'
	.ascii	"_temp_3055\0"
	.align
_Label_3125:
	.byte	'C'
	.ascii	"_temp_3054\0"
	.align
_Label_3126:
	.byte	'C'
	.ascii	"_temp_3051\0"
	.align
_Label_3127:
	.byte	'?'
	.ascii	"_temp_3046\0"
	.align
_Label_3128:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_3129:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_3130:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_3131:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_3132:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  CLASS FileControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileControlBlock:
	.word	_Label_3133
	jmp	_Method_P_Kernel_FileControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_FileControlBlock_2	! 8:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_3133:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3134
	.word	_sourceFileName
	.word	357		! line number
	.word	40		! size of instances, in bytes
	.word	_P_Kernel_FileControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_3134:
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
_Label_3494:
	push	r0
	sub	r1,1,r1
	bne	_Label_3494
	mov	2656,r13		! source line 2656
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2657,r13		! source line 2657
	mov	"\0\0AS",r10
!   numberOfUsers = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2658,r13		! source line 2658
	mov	"\0\0AS",r10
	mov	2658,r13		! source line 2658
	mov	"\0\0SE",r10
!   _temp_3135 = &_P_Kernel_frameManager
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
	mov	2659,r13		! source line 2659
	mov	"\0\0AS",r10
!   relativeSectorInBuffer = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! ASSIGNMENT STATEMENT...
	mov	2660,r13		! source line 2660
	mov	"\0\0AS",r10
!   bufferIsDirty = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+36]
! ASSIGNMENT STATEMENT...
	mov	2661,r13		! source line 2661
	mov	"\0\0AS",r10
!   startingSectorOfFile = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! RETURN STATEMENT...
	mov	2661,r13		! source line 2661
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
	.word	_Label_3136
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_3137
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3138
	.word	-12
	.word	4
	.word	0
_Label_3136:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_3137:
	.ascii	"Pself\0"
	.align
_Label_3138:
	.byte	'?'
	.ascii	"_temp_3135\0"
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
_Label_3495:
	push	r0
	sub	r1,1,r1
	bne	_Label_3495
	mov	2666,r13		! source line 2666
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3139 = _StringConst_171
	set	_StringConst_171,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_3139  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2667,r13		! source line 2667
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fcbID  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2668,r13		! source line 2668
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3140 = _StringConst_172
	set	_StringConst_172,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_3140  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2669,r13		! source line 2669
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=numberOfUsers  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2670,r13		! source line 2670
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3141 = _StringConst_173
	set	_StringConst_173,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3141  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2671,r13		! source line 2671
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=startingSectorOfFile  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2672,r13		! source line 2672
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3142 = _StringConst_174
	set	_StringConst_174,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3142  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2673,r13		! source line 2673
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeOfFileInBytes  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2674,r13		! source line 2674
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3143 = _StringConst_175
	set	_StringConst_175,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3143  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2675,r13		! source line 2675
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=bufferPtr  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2676,r13		! source line 2676
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_3144 = _StringConst_176
	set	_StringConst_176,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3144  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2677,r13		! source line 2677
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=relativeSectorInBuffer  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2678,r13		! source line 2678
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2679,r13		! source line 2679
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2679,r13		! source line 2679
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
	.word	_Label_3145
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_3146
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3147
	.word	-12
	.word	4
	.word	_Label_3148
	.word	-16
	.word	4
	.word	_Label_3149
	.word	-20
	.word	4
	.word	_Label_3150
	.word	-24
	.word	4
	.word	_Label_3151
	.word	-28
	.word	4
	.word	_Label_3152
	.word	-32
	.word	4
	.word	0
_Label_3145:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_3146:
	.ascii	"Pself\0"
	.align
_Label_3147:
	.byte	'?'
	.ascii	"_temp_3144\0"
	.align
_Label_3148:
	.byte	'?'
	.ascii	"_temp_3143\0"
	.align
_Label_3149:
	.byte	'?'
	.ascii	"_temp_3142\0"
	.align
_Label_3150:
	.byte	'?'
	.ascii	"_temp_3141\0"
	.align
_Label_3151:
	.byte	'?'
	.ascii	"_temp_3140\0"
	.align
_Label_3152:
	.byte	'?'
	.ascii	"_temp_3139\0"
	.align
! 
! ===============  CLASS OpenFile  ===============
! 
! Dispatch Table:
! 
_P_Kernel_OpenFile:
	.word	_Label_3153
	jmp	_Method_P_Kernel_OpenFile_1	! 4:	Print
	jmp	_Method_P_Kernel_OpenFile_2	! 8:	ReadBytes
	jmp	_Method_P_Kernel_OpenFile_3	! 12:	ReadInt
	jmp	_Method_P_Kernel_OpenFile_4	! 16:	LoadExecutable
	.word	0
! 
! Class descriptor:
! 
_Label_3153:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3154
	.word	_sourceFileName
	.word	374		! line number
	.word	28		! size of instances, in bytes
	.word	_P_Kernel_OpenFile
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_3154:
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
_Label_3496:
	push	r0
	sub	r1,1,r1
	bne	_Label_3496
	mov	2690,r13		! source line 2690
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3155 = _StringConst_177
	set	_StringConst_177,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3155  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2691,r13		! source line 2691
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=currentPos  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2692,r13		! source line 2692
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3156 = _StringConst_178
	set	_StringConst_178,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3156  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2693,r13		! source line 2693
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	2694,r13		! source line 2694
	mov	"\0\0IF",r10
!   if fcb == 0 then goto _Label_3158		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3158
!	jmp	_Label_3157
_Label_3157:
! THEN...
	mov	2695,r13		! source line 2695
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2695,r13		! source line 2695
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
	jmp	_Label_3159
_Label_3158:
! ELSE...
	mov	2697,r13		! source line 2697
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_3160 = _StringConst_179
	set	_StringConst_179,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3160  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2697,r13		! source line 2697
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_3159:
! RETURN STATEMENT...
	mov	2694,r13		! source line 2694
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
	.word	_Label_3161
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_3162
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3163
	.word	-12
	.word	4
	.word	_Label_3164
	.word	-16
	.word	4
	.word	_Label_3165
	.word	-20
	.word	4
	.word	0
_Label_3161:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_3162:
	.ascii	"Pself\0"
	.align
_Label_3163:
	.byte	'?'
	.ascii	"_temp_3160\0"
	.align
_Label_3164:
	.byte	'?'
	.ascii	"_temp_3156\0"
	.align
_Label_3165:
	.byte	'?'
	.ascii	"_temp_3155\0"
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
_Label_3497:
	push	r0
	sub	r1,1,r1
	bne	_Label_3497
	mov	2703,r13		! source line 2703
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2713,r13		! source line 2713
	mov	"\0\0SE",r10
!   _temp_3166 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-36]
!   _temp_3167 = _temp_3166 + 4
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
	mov	2714,r13		! source line 2714
	mov	"\0\0AS",r10
!   pos = currentPos		(4 bytes)
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2715,r13		! source line 2715
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
	mov	2716,r13		! source line 2716
	mov	"\0\0SE",r10
!   _temp_3168 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   _temp_3169 = _temp_3168 + 4
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
	mov	2717,r13		! source line 2717
	mov	"\0\0RE",r10
	mov	2717,r13		! source line 2717
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   _temp_3172 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_3171  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_3170  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   ReturnResult: _temp_3170  (sizeInBytes=1)
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
	.word	_Label_3173
	.word	12		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_3174
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3175
	.word	12
	.word	4
	.word	_Label_3176
	.word	16
	.word	4
	.word	_Label_3177
	.word	-16
	.word	4
	.word	_Label_3178
	.word	-20
	.word	4
	.word	_Label_3179
	.word	-9
	.word	1
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
	.word	0
_Label_3173:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadBytes\0"
	.align
_Label_3174:
	.ascii	"Pself\0"
	.align
_Label_3175:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_3176:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3177:
	.byte	'?'
	.ascii	"_temp_3172\0"
	.align
_Label_3178:
	.byte	'?'
	.ascii	"_temp_3171\0"
	.align
_Label_3179:
	.byte	'C'
	.ascii	"_temp_3170\0"
	.align
_Label_3180:
	.byte	'?'
	.ascii	"_temp_3169\0"
	.align
_Label_3181:
	.byte	'?'
	.ascii	"_temp_3168\0"
	.align
_Label_3182:
	.byte	'?'
	.ascii	"_temp_3167\0"
	.align
_Label_3183:
	.byte	'?'
	.ascii	"_temp_3166\0"
	.align
_Label_3184:
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
_Label_3498:
	push	r0
	sub	r1,1,r1
	bne	_Label_3498
	mov	2722,r13		! source line 2722
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2727,r13		! source line 2727
	mov	"\0\0IF",r10
	mov	2727,r13		! source line 2727
	mov	"\0\0SE",r10
!   _temp_3188 = &i
	add	r14,-28,r1
	store	r1,[r14+-24]
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_3189) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_3188  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_3187  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_3187 then goto _Label_3186 else goto _Label_3185
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3185
	jmp	_Label_3186
_Label_3185:
! THEN...
	mov	2728,r13		! source line 2728
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3190 = _StringConst_180
	set	_StringConst_180,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3190  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2728,r13		! source line 2728
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3186:
! RETURN STATEMENT...
	mov	2730,r13		! source line 2730
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
	.word	_Label_3191
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_3192
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3193
	.word	-16
	.word	4
	.word	_Label_3194
	.word	-20
	.word	4
	.word	_Label_3195
	.word	-24
	.word	4
	.word	_Label_3196
	.word	-9
	.word	1
	.word	_Label_3197
	.word	-28
	.word	4
	.word	0
_Label_3191:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadInt\0"
	.align
_Label_3192:
	.ascii	"Pself\0"
	.align
_Label_3193:
	.byte	'?'
	.ascii	"_temp_3190\0"
	.align
_Label_3194:
	.byte	'?'
	.ascii	"_temp_3189\0"
	.align
_Label_3195:
	.byte	'?'
	.ascii	"_temp_3188\0"
	.align
_Label_3196:
	.byte	'C'
	.ascii	"_temp_3187\0"
	.align
_Label_3197:
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
_Label_3499:
	push	r0
	sub	r1,1,r1
	bne	_Label_3499
	mov	2735,r13		! source line 2735
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2761,r13		! source line 2761
	mov	"\0\0IF",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3201 = addrSpace + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-216]
!   Data Move: _temp_3200 = *_temp_3201  (sizeInBytes=4)
	load	[r14+-216],r1
	load	[r1],r1
	store	r1,[r14+-220]
!   if intIsZero (_temp_3200) then goto _Label_3199
	load	[r14+-220],r1
	cmp	r1,r0
	be	_Label_3199
!	jmp	_Label_3198
_Label_3198:
! THEN...
	mov	2762,r13		! source line 2762
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3202 = _StringConst_181
	set	_StringConst_181,r1
	store	r1,[r14+-212]
!   Prepare Argument: offset=8  value=_temp_3202  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2762,r13		! source line 2762
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3199:
! IF STATEMENT...
	mov	2766,r13		! source line 2766
	mov	"\0\0IF",r10
	mov	2766,r13		! source line 2766
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-204]
!   if intIsZero (_temp_3206) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3205  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-208]
!   if _temp_3205 == 1112300152 then goto _Label_3204		(int)
	load	[r14+-208],r1
	set	1112300152,r2
	cmp	r1,r2
	be	_Label_3204
!	jmp	_Label_3203
_Label_3203:
! THEN...
	mov	2767,r13		! source line 2767
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3207 = _StringConst_182
	set	_StringConst_182,r1
	store	r1,[r14+-200]
!   Prepare Argument: offset=8  value=_temp_3207  sizeInBytes=4
	load	[r14+-200],r1
	store	r1,[r15+0]
!   Call the function
	mov	2767,r13		! source line 2767
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2768,r13		! source line 2768
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3204:
! ASSIGNMENT STATEMENT...
	mov	2772,r13		! source line 2772
	mov	"\0\0AS",r10
	mov	2772,r13		! source line 2772
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-196]
!   if intIsZero (_temp_3208) then goto _runtimeErrorNullPointer
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
	mov	2773,r13		! source line 2773
	mov	"\0\0AS",r10
	mov	2773,r13		! source line 2773
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-192]
!   if intIsZero (_temp_3209) then goto _runtimeErrorNullPointer
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
	mov	2774,r13		! source line 2774
	mov	"\0\0AS",r10
	mov	2774,r13		! source line 2774
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_3210) then goto _runtimeErrorNullPointer
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
	mov	2775,r13		! source line 2775
	mov	"\0\0AS",r10
	mov	2775,r13		! source line 2775
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-184]
!   if intIsZero (_temp_3211) then goto _runtimeErrorNullPointer
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
	mov	2776,r13		! source line 2776
	mov	"\0\0AS",r10
	mov	2776,r13		! source line 2776
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-180]
!   if intIsZero (_temp_3212) then goto _runtimeErrorNullPointer
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
	mov	2777,r13		! source line 2777
	mov	"\0\0AS",r10
	mov	2777,r13		! source line 2777
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-176]
!   if intIsZero (_temp_3213) then goto _runtimeErrorNullPointer
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
	mov	2780,r13		! source line 2780
	mov	"\0\0IF",r10
!   _temp_3216 = textSize rem 8192		(int)
	load	[r14+-232],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-172]
!   if intIsZero (_temp_3216) then goto _Label_3215
	load	[r14+-172],r1
	cmp	r1,r0
	be	_Label_3215
!	jmp	_Label_3214
_Label_3214:
! THEN...
	mov	2781,r13		! source line 2781
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3217 = _StringConst_183
	set	_StringConst_183,r1
	store	r1,[r14+-168]
!   Prepare Argument: offset=8  value=_temp_3217  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+0]
!   Call the function
	mov	2781,r13		! source line 2781
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2782,r13		! source line 2782
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3215:
! ASSIGNMENT STATEMENT...
	mov	2784,r13		! source line 2784
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
	mov	2788,r13		! source line 2788
	mov	"\0\0IF",r10
!   if intIsZero (textStart) then goto _Label_3219
	load	[r14+-244],r1
	cmp	r1,r0
	be	_Label_3219
!	jmp	_Label_3218
_Label_3218:
! THEN...
	mov	2789,r13		! source line 2789
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3220 = _StringConst_184
	set	_StringConst_184,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_3220  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	2789,r13		! source line 2789
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2790,r13		! source line 2790
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3219:
! IF STATEMENT...
	mov	2794,r13		! source line 2794
	mov	"\0\0IF",r10
!   _temp_3223 = dataSize rem 8192		(int)
	load	[r14+-236],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
!   if intIsZero (_temp_3223) then goto _Label_3222
	load	[r14+-160],r1
	cmp	r1,r0
	be	_Label_3222
!	jmp	_Label_3221
_Label_3221:
! THEN...
	mov	2795,r13		! source line 2795
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3224 = _StringConst_185
	set	_StringConst_185,r1
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_3224  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	2795,r13		! source line 2795
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2796,r13		! source line 2796
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3222:
! IF STATEMENT...
	mov	2798,r13		! source line 2798
	mov	"\0\0IF",r10
!   _temp_3227 = textStart + textSize		(int)
	load	[r14+-244],r1
	load	[r14+-232],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   if dataStart == _temp_3227 then goto _Label_3226		(int)
	load	[r14+-248],r1
	load	[r14+-152],r2
	cmp	r1,r2
	be	_Label_3226
!	jmp	_Label_3225
_Label_3225:
! THEN...
	mov	2799,r13		! source line 2799
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3228 = _StringConst_186
	set	_StringConst_186,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_3228  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	2799,r13		! source line 2799
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2800,r13		! source line 2800
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3226:
! ASSIGNMENT STATEMENT...
	mov	2802,r13		! source line 2802
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
	mov	2805,r13		! source line 2805
	mov	"\0\0IF",r10
!   _temp_3231 = bssSize rem 8192		(int)
	load	[r14+-240],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
!   if intIsZero (_temp_3231) then goto _Label_3230
	load	[r14+-144],r1
	cmp	r1,r0
	be	_Label_3230
!	jmp	_Label_3229
_Label_3229:
! THEN...
	mov	2806,r13		! source line 2806
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3232 = _StringConst_187
	set	_StringConst_187,r1
	store	r1,[r14+-140]
!   Prepare Argument: offset=8  value=_temp_3232  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+0]
!   Call the function
	mov	2806,r13		! source line 2806
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2807,r13		! source line 2807
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3230:
! IF STATEMENT...
	mov	2809,r13		! source line 2809
	mov	"\0\0IF",r10
!   _temp_3235 = dataStart + dataSize		(int)
	load	[r14+-248],r1
	load	[r14+-236],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
!   if bssStart == _temp_3235 then goto _Label_3234		(int)
	load	[r14+-252],r1
	load	[r14+-136],r2
	cmp	r1,r2
	be	_Label_3234
!	jmp	_Label_3233
_Label_3233:
! THEN...
	mov	2810,r13		! source line 2810
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3236 = _StringConst_188
	set	_StringConst_188,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_3236  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	2810,r13		! source line 2810
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2811,r13		! source line 2811
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3234:
! ASSIGNMENT STATEMENT...
	mov	2813,r13		! source line 2813
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
	mov	2816,r13		! source line 2816
	mov	"\0\0AS",r10
!   _temp_3239 = textSizeInPages + dataSizeInPages		(int)
	load	[r14+-260],r1
	load	[r14+-264],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
!   _temp_3238 = _temp_3239 + bssSizeInPages		(int)
	load	[r14+-120],r1
	load	[r14+-268],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
!   _temp_3237 = _temp_3238 + 1		(int)
	load	[r14+-124],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
!   i = _temp_3237 + 0		(int)
	load	[r14+-128],r1
	mov	0,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
! IF STATEMENT...
	mov	2831,r13		! source line 2831
	mov	"\0\0IF",r10
!   if i <= 20 then goto _Label_3241		(int)
	load	[r14+-256],r1
	mov	20,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3241
!	jmp	_Label_3240
_Label_3240:
! THEN...
	mov	2832,r13		! source line 2832
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3242 = _StringConst_189
	set	_StringConst_189,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_3242  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2832,r13		! source line 2832
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_3243 = _StringConst_190
	set	_StringConst_190,r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_3243  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+4]
!   Call the function
	mov	2833,r13		! source line 2833
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_3244 = _StringConst_191
	set	_StringConst_191,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_3244  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+4]
!   Call the function
	mov	2834,r13		! source line 2834
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! RETURN STATEMENT...
	mov	2835,r13		! source line 2835
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3241:
! SEND STATEMENT...
	mov	2837,r13		! source line 2837
	mov	"\0\0SE",r10
!   _temp_3245 = &_P_Kernel_frameManager
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
	mov	2843,r13		! source line 2843
	mov	"\0\0IF",r10
	mov	2843,r13		! source line 2843
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-96]
!   if intIsZero (_temp_3249) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3248  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-100]
!   if _temp_3248 == 707406378 then goto _Label_3247		(int)
	load	[r14+-100],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3247
!	jmp	_Label_3246
_Label_3246:
! THEN...
	mov	2844,r13		! source line 2844
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3250 = _StringConst_192
	set	_StringConst_192,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_3250  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2844,r13		! source line 2844
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2845,r13		! source line 2845
	mov	"\0\0SE",r10
!   _temp_3251 = &_P_Kernel_frameManager
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
	mov	2846,r13		! source line 2846
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3247:
! ASSIGNMENT STATEMENT...
	mov	2850,r13		! source line 2850
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
	mov	2851,r13		! source line 2851
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3256 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-84]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3257 = textSizeInPages		(4 bytes)
	load	[r14+-260],r1
	store	r1,[r14+-80]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3256  (sizeInBytes=4)
	load	[r14+-84],r1
	store	r1,[r14+-256]
_Label_3252:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3257 then goto _Label_3255		
	load	[r14+-256],r1
	load	[r14+-80],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3255
_Label_3253:
	mov	2851,r13		! source line 2851
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2852,r13		! source line 2852
	mov	"\0\0AS",r10
	mov	2852,r13		! source line 2852
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
	mov	2855,r13		! source line 2855
	mov	"\0\0IF",r10
	mov	2855,r13		! source line 2855
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_3261) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3260  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_3260 then goto _Label_3259 else goto _Label_3258
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3258
	jmp	_Label_3259
_Label_3258:
! THEN...
	mov	2856,r13		! source line 2856
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3262 = _StringConst_193
	set	_StringConst_193,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_3262  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	2856,r13		! source line 2856
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2857,r13		! source line 2857
	mov	"\0\0SE",r10
!   _temp_3263 = &_P_Kernel_frameManager
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
	mov	2858,r13		! source line 2858
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3259:
! SEND STATEMENT...
	mov	2860,r13		! source line 2860
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
	mov	2861,r13		! source line 2861
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_3254:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_3252
! END FOR
_Label_3255:
! IF STATEMENT...
	mov	2865,r13		! source line 2865
	mov	"\0\0IF",r10
	mov	2865,r13		! source line 2865
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_3267) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3266  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
!   if _temp_3266 == 707406378 then goto _Label_3265		(int)
	load	[r14+-64],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3265
!	jmp	_Label_3264
_Label_3264:
! THEN...
	mov	2866,r13		! source line 2866
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3268 = _StringConst_194
	set	_StringConst_194,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_3268  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	2866,r13		! source line 2866
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2867,r13		! source line 2867
	mov	"\0\0SE",r10
!   _temp_3269 = &_P_Kernel_frameManager
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
	mov	2868,r13		! source line 2868
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3265:
! FOR STATEMENT...
	mov	2872,r13		! source line 2872
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3274 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3275 = dataSizeInPages		(4 bytes)
	load	[r14+-264],r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3274  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-256]
_Label_3270:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3275 then goto _Label_3273		
	load	[r14+-256],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3273
_Label_3271:
	mov	2872,r13		! source line 2872
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2873,r13		! source line 2873
	mov	"\0\0AS",r10
	mov	2873,r13		! source line 2873
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
	mov	2876,r13		! source line 2876
	mov	"\0\0IF",r10
	mov	2876,r13		! source line 2876
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_3279) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3278  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_3278 then goto _Label_3277 else goto _Label_3276
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3276
	jmp	_Label_3277
_Label_3276:
! THEN...
	mov	2877,r13		! source line 2877
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3280 = _StringConst_195
	set	_StringConst_195,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_3280  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2877,r13		! source line 2877
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2878,r13		! source line 2878
	mov	"\0\0SE",r10
!   _temp_3281 = &_P_Kernel_frameManager
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
	mov	2879,r13		! source line 2879
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3277:
! ASSIGNMENT STATEMENT...
	mov	2881,r13		! source line 2881
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_3272:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_3270
! END FOR
_Label_3273:
! IF STATEMENT...
	mov	2885,r13		! source line 2885
	mov	"\0\0IF",r10
	mov	2885,r13		! source line 2885
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_3285) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3284  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   if _temp_3284 == 707406378 then goto _Label_3283		(int)
	load	[r14+-28],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3283
!	jmp	_Label_3282
_Label_3282:
! THEN...
	mov	2886,r13		! source line 2886
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3286 = _StringConst_196
	set	_StringConst_196,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3286  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2886,r13		! source line 2886
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2887,r13		! source line 2887
	mov	"\0\0SE",r10
!   _temp_3287 = &_P_Kernel_frameManager
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
	mov	2888,r13		! source line 2888
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3283:
! ASSIGNMENT STATEMENT...
	mov	2892,r13		! source line 2892
	mov	"\0\0AS",r10
	mov	2892,r13		! source line 2892
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
	mov	2896,r13		! source line 2896
	mov	"\0\0CE",r10
	call	MemoryZero
! RETURN STATEMENT...
	mov	2899,r13		! source line 2899
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
	.word	_Label_3288
	.word	8		! total size of parameters
	.word	272		! frame size = 272
	.word	_Label_3289
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3290
	.word	12
	.word	4
	.word	_Label_3291
	.word	-16
	.word	4
	.word	_Label_3292
	.word	-20
	.word	4
	.word	_Label_3293
	.word	-24
	.word	4
	.word	_Label_3294
	.word	-28
	.word	4
	.word	_Label_3295
	.word	-32
	.word	4
	.word	_Label_3296
	.word	-36
	.word	4
	.word	_Label_3297
	.word	-40
	.word	4
	.word	_Label_3298
	.word	-9
	.word	1
	.word	_Label_3299
	.word	-44
	.word	4
	.word	_Label_3300
	.word	-48
	.word	4
	.word	_Label_3301
	.word	-52
	.word	4
	.word	_Label_3302
	.word	-56
	.word	4
	.word	_Label_3303
	.word	-60
	.word	4
	.word	_Label_3304
	.word	-64
	.word	4
	.word	_Label_3305
	.word	-68
	.word	4
	.word	_Label_3306
	.word	-72
	.word	4
	.word	_Label_3307
	.word	-76
	.word	4
	.word	_Label_3308
	.word	-10
	.word	1
	.word	_Label_3309
	.word	-80
	.word	4
	.word	_Label_3310
	.word	-84
	.word	4
	.word	_Label_3311
	.word	-88
	.word	4
	.word	_Label_3312
	.word	-92
	.word	4
	.word	_Label_3313
	.word	-96
	.word	4
	.word	_Label_3314
	.word	-100
	.word	4
	.word	_Label_3315
	.word	-104
	.word	4
	.word	_Label_3316
	.word	-108
	.word	4
	.word	_Label_3317
	.word	-112
	.word	4
	.word	_Label_3318
	.word	-116
	.word	4
	.word	_Label_3319
	.word	-120
	.word	4
	.word	_Label_3320
	.word	-124
	.word	4
	.word	_Label_3321
	.word	-128
	.word	4
	.word	_Label_3322
	.word	-132
	.word	4
	.word	_Label_3323
	.word	-136
	.word	4
	.word	_Label_3324
	.word	-140
	.word	4
	.word	_Label_3325
	.word	-144
	.word	4
	.word	_Label_3326
	.word	-148
	.word	4
	.word	_Label_3327
	.word	-152
	.word	4
	.word	_Label_3328
	.word	-156
	.word	4
	.word	_Label_3329
	.word	-160
	.word	4
	.word	_Label_3330
	.word	-164
	.word	4
	.word	_Label_3331
	.word	-168
	.word	4
	.word	_Label_3332
	.word	-172
	.word	4
	.word	_Label_3333
	.word	-176
	.word	4
	.word	_Label_3334
	.word	-180
	.word	4
	.word	_Label_3335
	.word	-184
	.word	4
	.word	_Label_3336
	.word	-188
	.word	4
	.word	_Label_3337
	.word	-192
	.word	4
	.word	_Label_3338
	.word	-196
	.word	4
	.word	_Label_3339
	.word	-200
	.word	4
	.word	_Label_3340
	.word	-204
	.word	4
	.word	_Label_3341
	.word	-208
	.word	4
	.word	_Label_3342
	.word	-212
	.word	4
	.word	_Label_3343
	.word	-216
	.word	4
	.word	_Label_3344
	.word	-220
	.word	4
	.word	_Label_3345
	.word	-224
	.word	4
	.word	_Label_3346
	.word	-228
	.word	4
	.word	_Label_3347
	.word	-232
	.word	4
	.word	_Label_3348
	.word	-236
	.word	4
	.word	_Label_3349
	.word	-240
	.word	4
	.word	_Label_3350
	.word	-244
	.word	4
	.word	_Label_3351
	.word	-248
	.word	4
	.word	_Label_3352
	.word	-252
	.word	4
	.word	_Label_3353
	.word	-256
	.word	4
	.word	_Label_3354
	.word	-260
	.word	4
	.word	_Label_3355
	.word	-264
	.word	4
	.word	_Label_3356
	.word	-268
	.word	4
	.word	0
_Label_3288:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"LoadExecutable\0"
	.align
_Label_3289:
	.ascii	"Pself\0"
	.align
_Label_3290:
	.byte	'P'
	.ascii	"addrSpace\0"
	.align
_Label_3291:
	.byte	'?'
	.ascii	"_temp_3287\0"
	.align
_Label_3292:
	.byte	'?'
	.ascii	"_temp_3286\0"
	.align
_Label_3293:
	.byte	'?'
	.ascii	"_temp_3285\0"
	.align
_Label_3294:
	.byte	'?'
	.ascii	"_temp_3284\0"
	.align
_Label_3295:
	.byte	'?'
	.ascii	"_temp_3281\0"
	.align
_Label_3296:
	.byte	'?'
	.ascii	"_temp_3280\0"
	.align
_Label_3297:
	.byte	'?'
	.ascii	"_temp_3279\0"
	.align
_Label_3298:
	.byte	'C'
	.ascii	"_temp_3278\0"
	.align
_Label_3299:
	.byte	'?'
	.ascii	"_temp_3275\0"
	.align
_Label_3300:
	.byte	'?'
	.ascii	"_temp_3274\0"
	.align
_Label_3301:
	.byte	'?'
	.ascii	"_temp_3269\0"
	.align
_Label_3302:
	.byte	'?'
	.ascii	"_temp_3268\0"
	.align
_Label_3303:
	.byte	'?'
	.ascii	"_temp_3267\0"
	.align
_Label_3304:
	.byte	'?'
	.ascii	"_temp_3266\0"
	.align
_Label_3305:
	.byte	'?'
	.ascii	"_temp_3263\0"
	.align
_Label_3306:
	.byte	'?'
	.ascii	"_temp_3262\0"
	.align
_Label_3307:
	.byte	'?'
	.ascii	"_temp_3261\0"
	.align
_Label_3308:
	.byte	'C'
	.ascii	"_temp_3260\0"
	.align
_Label_3309:
	.byte	'?'
	.ascii	"_temp_3257\0"
	.align
_Label_3310:
	.byte	'?'
	.ascii	"_temp_3256\0"
	.align
_Label_3311:
	.byte	'?'
	.ascii	"_temp_3251\0"
	.align
_Label_3312:
	.byte	'?'
	.ascii	"_temp_3250\0"
	.align
_Label_3313:
	.byte	'?'
	.ascii	"_temp_3249\0"
	.align
_Label_3314:
	.byte	'?'
	.ascii	"_temp_3248\0"
	.align
_Label_3315:
	.byte	'?'
	.ascii	"_temp_3245\0"
	.align
_Label_3316:
	.byte	'?'
	.ascii	"_temp_3244\0"
	.align
_Label_3317:
	.byte	'?'
	.ascii	"_temp_3243\0"
	.align
_Label_3318:
	.byte	'?'
	.ascii	"_temp_3242\0"
	.align
_Label_3319:
	.byte	'?'
	.ascii	"_temp_3239\0"
	.align
_Label_3320:
	.byte	'?'
	.ascii	"_temp_3238\0"
	.align
_Label_3321:
	.byte	'?'
	.ascii	"_temp_3237\0"
	.align
_Label_3322:
	.byte	'?'
	.ascii	"_temp_3236\0"
	.align
_Label_3323:
	.byte	'?'
	.ascii	"_temp_3235\0"
	.align
_Label_3324:
	.byte	'?'
	.ascii	"_temp_3232\0"
	.align
_Label_3325:
	.byte	'?'
	.ascii	"_temp_3231\0"
	.align
_Label_3326:
	.byte	'?'
	.ascii	"_temp_3228\0"
	.align
_Label_3327:
	.byte	'?'
	.ascii	"_temp_3227\0"
	.align
_Label_3328:
	.byte	'?'
	.ascii	"_temp_3224\0"
	.align
_Label_3329:
	.byte	'?'
	.ascii	"_temp_3223\0"
	.align
_Label_3330:
	.byte	'?'
	.ascii	"_temp_3220\0"
	.align
_Label_3331:
	.byte	'?'
	.ascii	"_temp_3217\0"
	.align
_Label_3332:
	.byte	'?'
	.ascii	"_temp_3216\0"
	.align
_Label_3333:
	.byte	'?'
	.ascii	"_temp_3213\0"
	.align
_Label_3334:
	.byte	'?'
	.ascii	"_temp_3212\0"
	.align
_Label_3335:
	.byte	'?'
	.ascii	"_temp_3211\0"
	.align
_Label_3336:
	.byte	'?'
	.ascii	"_temp_3210\0"
	.align
_Label_3337:
	.byte	'?'
	.ascii	"_temp_3209\0"
	.align
_Label_3338:
	.byte	'?'
	.ascii	"_temp_3208\0"
	.align
_Label_3339:
	.byte	'?'
	.ascii	"_temp_3207\0"
	.align
_Label_3340:
	.byte	'?'
	.ascii	"_temp_3206\0"
	.align
_Label_3341:
	.byte	'?'
	.ascii	"_temp_3205\0"
	.align
_Label_3342:
	.byte	'?'
	.ascii	"_temp_3202\0"
	.align
_Label_3343:
	.byte	'?'
	.ascii	"_temp_3201\0"
	.align
_Label_3344:
	.byte	'?'
	.ascii	"_temp_3200\0"
	.align
_Label_3345:
	.byte	'I'
	.ascii	"nextVirtPage\0"
	.align
_Label_3346:
	.byte	'I'
	.ascii	"addr\0"
	.align
_Label_3347:
	.byte	'I'
	.ascii	"textSize\0"
	.align
_Label_3348:
	.byte	'I'
	.ascii	"dataSize\0"
	.align
_Label_3349:
	.byte	'I'
	.ascii	"bssSize\0"
	.align
_Label_3350:
	.byte	'I'
	.ascii	"textStart\0"
	.align
_Label_3351:
	.byte	'I'
	.ascii	"dataStart\0"
	.align
_Label_3352:
	.byte	'I'
	.ascii	"bssStart\0"
	.align
_Label_3353:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_3354:
	.byte	'I'
	.ascii	"textSizeInPages\0"
	.align
_Label_3355:
	.byte	'I'
	.ascii	"dataSizeInPages\0"
	.align
_Label_3356:
	.byte	'I'
	.ascii	"bssSizeInPages\0"
	.align
