threading.Thread() is constructor for Thread object. Pass callable to constructor or override run() to establish what Thread will do. Call .start() on object to start thread. .join() will wait for joined thread to terminate normally or through an unhandled exception.
threading.Lock() will create a lock. .acquire() on it will aquire and .release will release it.
threading.local() will hold thread-local data
Semaphors are locks with counts decremented by each acquire, which ar enever allowed to go below 0. In python, threading.Semaphore(value=1)
threading.Event is sort of the opposite of a lock. Lets threads communicate by waiting on an event flag from other threads. .set sets flag to true, .clear clears, .wait waits for flag to be true. is_set tells you if flag is set without blocking.
thread.Timer(interval,function,args=None,kwargs=None), and has .cancel() method. interval in seconds, may not be exact. Cancel won't work if function has started. kwargs are keyword args. Changed in Python3.3 to a class from a factory.
threading.Barrier(parties, action=None, timeout=None), like MPI_BARRIER, parties is num threads to wait on, threads sync when they all call .wait()
exceptions: in try ... finally blocks, finally doesn't catch specific exception (would need except) but will always run regardless of whether the try block succeeded, and when the finally block is done an exception in try is raised again UNLESS you end it with either break or return. So finally is a way to, for example, make sure certain cleanup happens even if there was an error.
The queue class implements locking semantics so useful for thread communication or tasks
queue.Queue is FIFO, queue.LifoQueue is LIFO, queue.PriorityQueue. exception queue.Empty, queue.Full. Functions: .qsize() .empty() .full() .put() .get() , plus some additional calls and parameters to support using queue for *threading tasks*. .get_nowait(), .put_nowait(), .task_done(), .join()
multiprocessing offers local and remote concurrency, bypassing global process lock. multiprocessing.Process is the class. Process(target, args), then .start() to start, and .join() to join. PID functions are os.getpid() and os.getppid().  multiprocessing.set_start_method('spawn' or 'fork' or 'forkserver') sets the kind of process starting mechanism. spawn is default on windows but does not have parent process vars, I think. fork is problematic if trying to fork a multithreaded process. forkserver creates single-threaded process to fork from. Not clear to me whether that has same values as parent. multiprocessing.Queue is process-safe way to communicate, as is multiprocessing.Pipe.
any(iterable) returns true on first discovering that a value from the iterator is true
all(iterable) returns true iff all elements of iterable are truthy
collections.OrderedDict() is a dictionary that ALSO keeps track of the order in which elements were added. Has OrderedDict.popitem(last=True) and OrderedDict.move_to_end(key,last=True). Overwriting an existing key will not move to end, but deleting and adding a new key will.
~ operator in python3 is overloaded with "def __inverse__(self)". It is a unary operator borrowed from C that does bitwise inversion, is called the "invert" or "complement" operation (like a bitwise NOT, but don't confuse with logical NOT). When operating on integers, it returns the bitwise inverse which will also be equal to ( -x - 1), because two's complement works that way.
