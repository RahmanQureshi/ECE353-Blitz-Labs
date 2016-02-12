code Main

  -- OS Class: Project 3
  --
  -- <PUT YOUR NAME HERE>
  --

  -- This package contains the following:
  --     Dining Philospohers
-----------------------------  Main  ---------------------------------

	function main ()
	-- Uncomment below to run Dining Philosophers
		InitializeScheduler ()
		--DiningPhilosophers ()
		--ThreadFinish()
		--FatalError ("Need to implement")

	-- Uncomment below to run Sleeping Barber
		TheSleepingBarber()
		ThreadFinish()	
    
	-- Uncomment below for gaming parlor
		--TheGamingParlor()
		--ThreadFinish()

	endFunction

-----------------------------  Dining Philosophers  ----------------------------

  -- This code is an implementation of the Dining Philosophers problem.  Each
  -- philosopher is simulated with a thread.  Each philosopher thinks for a while
  -- and then wants to eat.  Before eating, he must pick up both his forks.
  -- After eating, he puts down his forks.  Each fork is shared between
  -- two philosophers and there are 5 philosophers and 5 forks arranged in a
  -- circle.
  --
  -- Since the forks are shared, access to them is controlled by a monitor
  -- called "ForkMonitor".  The monitor is an object with two "entry" methods:
  --     PickupForks (phil)
  --     PutDownForks (phil)
  -- The philsophers are numbered 0 to 4 and each of these methods is passed an 
  -- integer indicating which philospher wants to pickup (or put down) the forks.
  -- The call to "PickUpForks" will wait until both of his forks are
  -- available.  The call to "PutDownForks" will never wait and may also
  -- wake up threads (i.e., philosophers) who are waiting.
  --
  -- Each philospher is in exactly one state: HUNGRY, EATING, or THINKING.  Each
  -- time a philosopher's state changes, a line of output is printed.  The 
  -- output is organized so that each philosopher has column of output with the
  -- following code letters:
  --           E    --  eating
  --           .    --  thinking
  --         blank  --  hungry (i.e., waiting for forks)
  -- By reading down a column, you can see the history of a philosopher.
  --
  -- The forks are not modeled explicitly.  A fork is only picked up
  -- by a philosopher if he can pick up both forks at the same time and begin
  -- eating.  To know whether a fork is available, it is sufficient to simply
  -- look at the status's of the two adjacent philosophers.  (Another way to 
  -- state the problem is to forget about the forks altogether and stipulate 
  -- that a philosopher may only eat when his two neighbors are not eating.)

  enum HUNGRY, EATING, THINKING
  var
    mon: ForkMonitor
    philospher: array [5] of Thread = new array of Thread {5 of new Thread }

  function DiningPhilosophers ()

      print ("Plato\n")
      print ("    Sartre\n")
      print ("        Kant\n")
      print ("            Nietzsche\n")
      print ("                Aristotle\n")

      mon = new ForkMonitor
      mon.Init ()
      mon.PrintAllStatus ()

      philospher[0].Init ("Plato")
      philospher[0].Fork (PhilosphizeAndEat, 0)

      philospher[1].Init ("Sartre")
      philospher[1].Fork (PhilosphizeAndEat, 1)

      philospher[2].Init ("Kant")
      philospher[2].Fork (PhilosphizeAndEat, 2)

      philospher[3].Init ("Nietzsche")
      philospher[3].Fork (PhilosphizeAndEat, 3)

      philospher[4].Init ("Aristotle")
      philospher[4].Fork (PhilosphizeAndEat, 4)

     endFunction

  function PhilosphizeAndEat (p: int)
    -- The parameter "p" identifies which philosopher this is.
    -- In a loop, he will think, acquire his forks, eat, and
    -- put down his forks.
      var
        i: int
      for i = 1 to 7
        -- Now he is thinking
        mon.PickupForks (p)
        -- Now he is eating
        mon.PutDownForks (p)
      endFor
    endFunction

  class ForkMonitor
    superclass Object
    fields
      -- Let 1 = HUNGRY, 2 = EATING, 3 = THINKING
      status: array [5] of int -- For each philosopher: HUNGRY, EATING, or THINKING
      mutex: Mutex
      condition: Condition
    methods
      Init ()
      PickupForks (p: int) 
      PutDownForks (p: int)
      PrintAllStatus ()
  endClass

  behavior ForkMonitor

    method Init ()
	mutex = new Mutex
        condition = new Condition
	mutex.Init()
	condition.Init()
	status = new array of int {5 of 3}
      endMethod

    method PickupForks (p: int)
	var
	 left: int
	 right: int
	mutex.Lock()
	status[p] = HUNGRY
	mon.PrintAllStatus()
	left = (p+4)%5
	right = (p+1)%5
	while status[left]==EATING || status[right]==EATING
	  condition.Wait(&mutex)
	endWhile
	status[p] = EATING
	mon.PrintAllStatus()
	mutex.Unlock()
      endMethod

    method PutDownForks (p: int)
	mutex.Lock()
	status[p] = THINKING
	mon.PrintAllStatus()
	-- Alternatively, use an array of 5 conditions to only wake up neighbors if the other fork is also available
	condition.Broadcast(&mutex)
	mutex.Unlock()
      endMethod

    method PrintAllStatus ()
      -- Print a single line showing the status of all philosophers.
      --      '.' means thinking
      --      ' ' means hungry
      --      'E' means eating
      -- Note that this method is internal to the monitor.  Thus, when
      -- it is called, the monitor lock will already have been acquired
      -- by the thread.  Therefore, this method can never be re-entered,
      -- since only one thread at a time may execute within the monitor.
      -- Consequently, printing is safe.  This method calls the "print"
      -- routine several times to print a single line, but these will all
      -- happen without interuption.
        var
          p: int
        for p = 0 to 4
          switch status [p]
            case HUNGRY:
              print ("    ")
              break
            case EATING:
              print ("E   ")
              break
            case THINKING:
              print (".   ")
              break
          endSwitch
        endFor
        nl ()
      endMethod

  endBehavior

-----------------------------  The Sleeping Barber  ----------------------------

	const
		NUM_CHAIRS = 5
	var
		numWaitingCustomers: int
		waitingCustomers: Semaphore
		barberSem: Semaphore
		access_lock: Mutex
		numCustomers: int
		cuttingHair: Semaphore
		doneCutting:Semaphore

	function TheSleepingBarber()
				
		var 
		  barber: Thread
		  customers: array[8] of Thread = new array of Thread{8 of new Thread}

		numCustomers = 8
		waitingCustomers = new Semaphore
		waitingCustomers.Init(0)
		numWaitingCustomers = 0
		barberSem = new Semaphore
		barberSem.Init(0)
		cuttingHair = new Semaphore
		cuttingHair.Init(0)
		doneCutting = new Semaphore
		doneCutting.Init(0)
	
		print("RUNNING THE SLEEPING BARBER")
		nl()
		PrintHeader()

		access_lock = new Mutex
		access_lock.Init()

		barber = new Thread
		barber.Init("B")
		barber.Fork(GiveHairCuts, NUM_CHAIRS)

		customers[0].Init ("1")
		customers[0].Fork(GetHairCut, 2)
		customers[1].Init ("2")
		customers[1].Fork(GetHairCut, 1)
		customers[2].Init ("3")
		customers[2].Fork(GetHairCut, 1)
		customers[3].Init ("4")
		customers[3].Fork(GetHairCut, 1)
		customers[4].Init ("5")
		customers[4].Fork(GetHairCut, 1)
		customers[5].Init ("6")
		customers[5].Fork(GetHairCut, 1)
		customers[6].Init ("7")
		customers[6].Fork(GetHairCut, 1)
		customers[7].Init ("8")
		customers[7].Fork(GetHairCut, 1)

	endFunction

	function GetHairCut(numCuts: int)
		var
			cutsReceived: int
		cutsReceived = 0
		while(cutsReceived < numCuts)
			cutsReceived = cutsReceived + 1
			access_lock.Lock()
			PrintCustomerState(charToInt(currentThread.name[0]) - charToInt('0'), "E")
			if numWaitingCustomers < NUM_CHAIRS
				numWaitingCustomers = numWaitingCustomers+1
				PrintCustomerState(charToInt(currentThread.name[0]) - charToInt('0'), "S")
				access_lock.Unlock()
				waitingCustomers.Up()
				barberSem.Down() -- Get the barber or go to sleep, waiting until barber is ready
				PrintCustomerState(charToInt(currentThread.name[0]) - charToInt('0'), "B")
				cuttingHair.Up()
				currentThread.Yield() -- get_haircut()
		                    PrintCustomerState(charToInt(currentThread.name[0]) - charToInt('0'), "F")
		                    cuttingHair.Up()
				doneCutting.Down() -- wait for barber to end
			else
				access_lock.Unlock()
			endIf
			PrintCustomerState(charToInt(currentThread.name[0]) - charToInt('0'), "L")
		endWhile
	endFunction

	function GiveHairCuts(numChairs: int)
		while true
			waitingCustomers.Down()
			access_lock.Lock()
			numWaitingCustomers = numWaitingCustomers - 1
			access_lock.Unlock()
			PrintBarberStart()
			barberSem.Up() -- barber is ready
			cuttingHair.Down() -- wait for customer to begin
			currentThread.Yield() -- cut_hair() 
			cuttingHair.Down() -- wait for customer to end
			PrintBarberEnd()
			doneCutting.Up()
		endWhile
	endFunction

	function PrintBarberStart()
		-- Called when barber starts cutting a customer's hair. Prints 6 characters.
		var
			oldStatus: int
		oldStatus = SetInterruptsTo (DISABLED)		
		PrintChairs()
		print(" START")
		nl()
		oldStatus = SetInterruptsTo (oldStatus)
	endFunction

	function PrintHeader()
		var
			i:int
		for i = 0 to NUM_CHAIRS by 1
			print(" ")
		endFor
		print(" BARBER ")
		for i = 1 to numCustomers by 1
			printInt(i)
			print(" ")
		endFor
		nl()
	endFunction

	function PrintBarberEnd()
		-- Called when barber starts cutting a customer's hair. Prints 6 characters.
		var
			oldStatus: int
		oldStatus = SetInterruptsTo (DISABLED)		
		PrintChairs()
		print(" End   ")
		nl()
		oldStatus = SetInterruptsTo (oldStatus)
	endFunction

	function PrintChairs()
		var
			i:int
		for i = 1 to numWaitingCustomers by 1
			print("X")
		endFor
		for i = 1 to (NUM_CHAIRS-numWaitingCustomers) by 1
			print("-")
		endFor
	endFunction
	
	function PrintCustomerState(customerNumber: int, customerState: ptr to array of char)
		var
			i:int
			oldStatus: int
		oldStatus = SetInterruptsTo (DISABLED)
		PrintChairs()
		print("      ") -- six characters for BARBER column
		print(" ") -- one space between columns
		for i = 1 to customerNumber
			print("  ")	-- two spaces per customer	
		endFor
		print(customerState)
		nl()
		oldStatus = SetInterruptsTo (oldStatus)
	endFunction


-------------------------- The Gaming Parlor ---------------------------------------

	var
		gameAvailable: Condition
		frontDesk: Mutex		
		numDice: int

	function TheGamingParlor()
		var
			customers: array[8] of Thread = new array of Thread{8 of new Thread}
	
		numDice = 8
		frontDesk = new Mutex
		frontDesk.Init()
		gameAvailable = new Condition
		gameAvailable.Init()

		customers[0].Init ("A")
		customers[0].Fork(PlayGame, 0)
		customers[1].Init ("B")
		customers[1].Fork(PlayGame, 0)
		customers[2].Init ("C")
		customers[2].Fork(PlayGame, 1)
		customers[3].Init ("D")
		customers[3].Fork(PlayGame, 1)
		customers[4].Init ("E")
		customers[4].Fork(PlayGame, 2)
		customers[5].Init ("F")
		customers[5].Fork(PlayGame, 2)
		customers[6].Init ("G")
		customers[6].Fork(PlayGame, 3)
		customers[7].Init ("H")
		customers[7].Fork(PlayGame, 3)
	endFunction

	function PlayGame(game:int)
		var
			numPlays: int
		numPlays = 0
		while numPlays < 5
			numPlays = numPlays + 1
			if (game == 0)
				Request(4)
				currentThread.Yield()
				Return(4)
			elseIf (game == 1)
				Request(5)
				currentThread.Yield()
				Return(5)
			elseIf (game == 2)
				Request(2)
				currentThread.Yield()
				Return(2)
			elseIf (game == 3)
				Request(1)
				currentThread.Yield()
				Return(1)
			endIf
		endWhile
	endFunction
		
	function PrintRequest(n:int)
		print(currentThread.name)
		print(" requests ")
		printInt(n)
		nl()
		PrintAvailableDice()
	endFunction

	function PrintAvailableDice()
		print("Num Dice Available: ")
		printInt(numDice)
		nl()	
	endFunction
	
	function PrintProceeds(n:int)
		print(currentThread.name)
		print(" proceeds with ")
		printInt(n)
		nl()
		PrintAvailableDice()
	endFunction

	function PrintReturn(n:int)
		print(currentThread.name)
		print(" returns ")
		printInt(n)
		nl()
		PrintAvailableDice()
	endFunction

	function Request(numDiceRequested:int)
		frontDesk.Lock()
		PrintRequest(numDiceRequested)
		while numDiceRequested > numDice
			gameAvailable.Wait(&frontDesk)
		endWhile
		numDice = numDice - numDiceRequested
		PrintProceeds(numDiceRequested)
		frontDesk.Unlock()
	endFunction

	function Return(numDiceReturned:int)
		frontDesk.Lock()
		numDice = numDice + numDiceReturned
		PrintReturn(numDiceReturned)
		gameAvailable.Broadcast(&frontDesk)
		frontDesk.Unlock()
	endFunction

endCode
