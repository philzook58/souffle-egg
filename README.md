So what is the lesson here.

run.sh to use interpreter
run_comp.sh to compile
I wonder if we could statically link?


Really really forcing rebuilding is better
I can't really do seminaive unless I do it manually.

I'm not even using a datalog anymore.



Correctness is questionable. If it partially normalizes before killing the union find, will it still be correct?

Maybe I need as many rebuilds as there is depth in my ast? That would kind of make sense.
So I need 9 rebuilds for 1+...+9
I am not geting seminaive for free.

It isn't really a datalog anymore. I have removed all fixed points and lifted them up to bash
so... why not sqllite?

Manual seminaive.
But also 

guarding under dirty?

whether we let the nonnedative rewrite rules play out is orthogonal to what happened here
What happened here is emphasis on the importance of quickly rebuilding.

I could control it via C++ api. Avoid serialization overhead, maintains union find.
Does this road eventually lead to a C++ implementation of egg?

Kind of what is the point. egglog0 already worked?
Well, souffle is rich.

could serialize the union find maybe?


lambda datalog
Toplevel lambdas = locally nameless open?

Provenance skolemization:
exists(x \ F) :- 

foo :- forall(x \ bar(x)).


forall(x \ baz(x) => bar(x)) // this could work

bar(t) :- baz(t). (* rule database. Getting a ton of rules isn't great. need to search for rules *)


biz :- bar(fresh). // this will never happen
foo :- biz

:- ( :- forall

The instantiated current pattern is a nice environment type of sorts.

```

#define ITERLIM 5

add_iter(x,y,z,0) :- add0(x,y,z).

add_iter(@findnode(x), @findnode(y), @findnode(z),n) :- add_iter(x,y,z,n).
add_iter(@findnode(x),@findNode(y),@unionnide(z,z1),max(n,n1)+1) :- add(x,y,z,n), add(x,y,z1,n2), z != z1.
//add_iter(x,y,@unionfind(z), n+1) :- add_iter(x,y,z,n), n < ITERLIM.
// maybe I don't even need iterlim. This might just terminate.
// ehhh. Pretty fishy. Relies on certain ordering of subsumption events I think.

add_iter(x,y,z,_) <= add_iter(@findNode(x),@findNode(y), @findNode(z), _) :- true.

add(x,y,z) :- add_iter(x,y,z,0).
dadd(x,y,z) :- add_iter(x,y,z,n), n > 0.
```

Could I pipeline the files such that rebuild is in parallel receiving from 

I could still seperate out the new node vs reuse node rules to get the terminating subset of egglog

gen.dl
rewrite.dl
rebuild.dl

mix and match as you please.

SQLlite with in process C unionfind?

I guess I could compress it into a single straitifed program now.
And you just run it over and over.


Counting on souffle ooeprational ordering is radically wrong
However, souffle _does_ respect stratification
