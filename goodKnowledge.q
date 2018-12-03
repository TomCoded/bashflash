Time for dynamic programming solution = #subproblems * (time/subproblem) + O(1) for memoization lookup
Do memoization dynamic programming problem bottom-up from dependencies to optimize. Same as doing TOPOLOGICAL SORT OF DEPENDENCY DIAGRAM. Might let you keep only the results of the tops of local dependency trees, i.e. the results you still need.
For dynamic programming to work, SUBPROBLEM DEPENDENCIES MUST BE ACYCLIC.
To make acyclic graph algorithms work with cyclic graphics, calculate total weights such that paths use LESS THAN k EDGES.
When doing dynamic programming and making guesses, remember which guess was best and cache it.
5 Key Steps to DP: (1) define subproblems (#) (2) guess (part of solution) (#), (3) Recurrence (time/subproblem), (4) recursive+memoize/bottom-up (check acyclic and do topological sort of dependency diagram), (5) solve original problem.
When doing dynamic programming, you usually do NOT use suffixes and prefixes todather but rather need substrings if both show up in your subproblem.
Recursive problem: Edit Distance. subproblem is edit distance on x[i:]&y[j:] for all i,j, so number of subproblems = theta(|x||y|)
Recursive problem: Knapsack problem. Subproblem = suffix i: of items & Remaining capcity X<=S (S is total size). Pseudopolynomial time (polynomial in na nd in the integers in your input?)
Recursive Programming: When subproblems don't work, you can add more subproblems to your guessing step.
Tetris: NP complete without narrow assumptions. DP proramming helps with narrow assumptions. Care about suffix and problem height.
Super Mario: Given level n, can solve with Dynamic programming. "Configuration" is everything on screen. Add mario velocity, score, time, screen versus level location.
Complexity Classes:  P in NP in EXP in R. P="Problems Solveable in Polynomial Time." NP="Problems solveable in polynomial time if you make a lucky guess e.g. nondeterministic model / problems where the solution can be checked in polynomial time" EXP="Problems solveable in exponential time, e.g. 2^n^k" R="problems solveable in Finite time (i.e. solveable problems".
Negative Weight Cycle Detection CONTAINED IN Complexity Class P
nxn chess CONTAINED IN complexity class EXP and NOT IN complexity class P
go CONTAINED IN complexity class EXP and NOT IN compleixty class P
tetris (without narrow constraints, e.g. with future pieces unknown) CONTAINED IN complexity class EXP and UNKNOWN whether contained in complexity class P (we think not). Know is in NP because given solution, can check the moves and see if they fit.
Halting Problem NOT CONTAINED IN complexity class R (i.e. not solveable in finite time)
Most Decision Problems are NOT in complexity class R, i.e. are unsolveable. Almost any problem is unsolveable by any program. Because Program==bitstring which is in N. But decision problems are functions from input to YES/NO. Input is a binary string in N. A decision problem is an infinite string of bits, but we assume a program is a finte string of bits. So decision problems in R but programs in N, decision problems uncontably infinite but programs countably infinite, so almost any problem is unsolveable by any program. ... that proof sounds a little off, but intuitively close to accurate.
P=NP quotes: "Can't engineer luck" "solving problems is harder than checking solutions" "harder to generate proof of a theorem than it is to check it"
Tetris is NP-Hard and NP-Complete
NP-Hard: At least as hard as any problem in NP, i.e. the hardest problem in NP and harder problems outside NP
NP-Complete: NP-Hard INTERSECT NP, i.e. the hardest problems in NP.
Reductions: converting problem A to problem B, then if you can solve B you can solve A. Useful for proving Tetris is NP-hard (Eric Dremaine proved 3-partition problem is isomorphic to Tetris)
[Karp] Three-petition problem is NP-hard. Can you divide numbers into 3 sets s.t. the sums are equal? Eric Dremaine used to prove Tetris is NP-hard.
NP-Complete Problems: [Eric Dremaine] Tetris. [Karp] Three-Petition Problem. Travelling Salesman. Longest Common Subsequence of n substrings. Minesweeper. Sudoku. "SAT": (x or y) and not x (is this the boolean satisfiability problem?). shortest path in 3D. Knapsack. Foldability (given a crease pattern, is it foldable?). [Bulteau] Pancake Sort.
EXECUTION MIGRATION--where it is faster to move the program * context between processors than it is to move the data between the processors. Makes this a ONE-WAY trip for the program, rather than ROUND-TRIP movement of data.
Converting 3D shape to 2D crease pattern is in complexity class P, but optimal design is NP-complete. (TOM ASIDE: for NN, does complexity of pattern-making imply that TRAINING is NP-Complete but that testing or extrapolating 2D set is in P?)
THETA, O, and Omega. g(x)=THETA(f(x)) means g(x) is bound on bottom by c1f(x) and on top by c2f(x). Remember it because Theta is putting a line in the middle of the O, i.e. bounding the function on both sides in the middle.
Python Multithreading? Sync? Spawn? Join?
Multithreading as DAG: vertices are "threads"--maximal sequences of instructions, not including parallel control (no spawn, sync, return). EDGES are parallell control: spawn, Return, Continuation.
Parallell metrics: T_p = running time on p proccessors. T_1 = work = serial running time. T_infinite = "Critical path length" = longest path in DAG. T1/T_p=Speedup on P Processors.
Superlinear speedup in parallel execution is not possible except with funky caching.
immutability (i.e. replacing an entire object instead of mutating it) has several main advantages: it is easy to tell if an object has been changed, and it can be used to ensure consistent state and/or for history/auditing/time-travel.

