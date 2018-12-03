Design Pattern: Abstract Factory: provides an interfacec for creating families of related or dependent objects without specifying their concrete classes.
Design Pattern: Builder: Separates the construction of a complex object from its representation, allowing the same construction process to create various representations. A separate "Builder" object creates and assembles the parts of a complex object, and a class delegates object creation to the Builder object isntead of creating the objects directly. A Class may delegate to different "Builder" objects to create different representations of a complex object.
Design Pattern: Dependency Injection: A class accepts the objects it requires from an injector instead of creating the objects directly.
Design Pattern: Factory Method: Defines an interface for creating a *single* object but lets subclasses decide which class to instantiate. This lets a class defer instantiation to subclasses.
Design Pattern: Lazy initialization / Virtual Proxy: delay creation of object, calculation of value, or other expensive process until needed.
Design Pattern: Multiton: Ensure a class has only named instances, and provide a global access point to them. cf. Singleton
Design Pattern: Object Pool: Avoid expensive acquisition and release of resources by recycling objects that are no longer in use. Can be a generalization of connection pool and thread pool patterns.
Design Pattern: Prototype: Specify the kinds of objects to create using a prototypical instance, and create new objects from the 'skeleton' of an existing object, thus boosting performance and keeping memory footprints to a minimum. 
Design Pattern: Resource Acquisition is Initialization(RAII): Ensure that resources are properly released by tying them to the lifespan of suitable objects.
Design Pattern: Singleton: Ensure a class only has one instance, and provide a global point of access to it. Possible Example: Scene class in graphics engine
Design Pattern: Adapter, Wrapper, or Translator: Convert the interface of a class into another interface clients expect. The enterprise integration pattern equivalent is the Translator.
Design Pattern: Bridge: Decouple an abstraction from its implementation allowing the two to vary independently.
Design Pattern: Composite: Compose objects into tree structures to represent part-whole hierarchies. Composite lets clients treat individual objects and compositions of objects uniformly. Possible Example: libTomFun
Design Pattern: Decorator: Attach additional responsibilities to an object dynamically keeping the same interface. Decorators provide a flexible alternative to subclassing for extending functionality.
Design Pattern: Extension object: Adding functionality to a hierarchy without chaning the hierarchy.
Design Pattern: Facade: Provide a unified interface to a set of interfaces in a subsystem. Facade defines a higher-level interface that makes the subsystem easier to use.
Design Pattern: Flyweight: Use sharing to support large numbers of similar objects efficiently.
Design Pattern: Front controller: Provide a centralized entry point for handling requests.
Design Pattern: Marker: Empty interface to associate metadata with a class.
Design Pattern: Module: Group several related elements, such as classes, singletons, and methods, that are globally used, into a single conceptual entity.
Design Pattern: Proxy: provide a surrogate or placeholder for another object to control access to it. Example: Using a proxy to achieve lazy initialization.
Design Pattern: Twin: model multiple inheritance in programming languages that do nto support it.??
Design Pattern: Blackboard: AI pattern for combining disparate sources of data (see blackboard system)??
Design Pattern: Chain of Responsibility: Avoid coupling the sender of a request to its receiver by giving more than one object a chance to handle the request. Chain the receiving objects and pass the request along the chain until an object handles it. (Example: middleware with an error condition to skip the rest)
Design Pattern: Command: Encapsulate a request as an object, thereby allowing the parameterization of clients with different requests and the queueing or logging of requests, and support of undoable operations.
Design Pattern: Interpreter: Given a language, define a representation for its grammar along with an interpreter that uses the representation to interpret sentences in the language.
Design Pattern: Iterator: Provide a way to access the elements of an aggregate object sequentially without exposing its underlying representation.
Design Pattern: Mediator: Define an object that encapsulates how a set of objects interact. Mediator promotes loose coupling by keeping objects from referring to each other explicitly, and thus allows their interaction to vary independently.
Design Pattern: Memento: Without violating encapsulation, capture and externalize an object's internal state, allowing the object to be restored to this state later.
Design Pattern: Null Object: Avoid null references by providing a default object.
Design Pattern: Observer or Publish/subscribe: Define a one-to-many dependency between objects where a state change in one object results in all its dependents being notified and updated automatically.
Design Pattern: Servant: Define common functionality for a group of classes?? (on Wikipedia. Not sure what they mean.)
Design Pattern: Specification: Recombinable business logic in a Boolean fashion.
Design Pattern: State: Allow an object to alter its behavior when its internal state changes. The object will appear to change its class. (i.e. Stateful behavior)
Design Pattern: Strategy: Define a family of algorithms, encapsulate each one, and make them interchangeable. Strategy lets the algorithm vary independently from clients that use it. E.g. how python selects which integer sort to use, I believe.
Design Pattern: Template Method: Define the skeleton of an aglorithm in operation, deferring some steps to subclasses. Template method lets subclasses redefine certain steps of an algorithm without changing the algorithm's structure.
Design Pattern: Visitor: Represent an operation to be performed on the elements of an object structure. Visitor lets a new operation be defined without changing the classes of the elements on which it operates.
Design Pattern: (Concurrency Pattern): Active Object: Decouples method execution from method invocation that reside in their own thread fo control. The goal is to introduce concurrency, by using asynchronous method invocation and a scheduler for handling requests.
Design Pattern: (Concurrency Pattern): Balking: Only execute an action on an object when the object is in a particular state.
Design Pattern: (Concurrency Pattern): Binding properties: Combining multiple observers to force properties in different objects to be synchronized or coordinated in some way.
Design Pattern: (Concurrency Pattern): Compute Kernel: The same calculation many times in parallel, differing by integer parameters used with non-branching pointer math into shared arrays, such as GPU-optimized Matrix multiplication or Convolutional neural networks.
Design Pattern: (Concurrency Pattern): Double-checked locking: Reduce the overhead of acquiring a lock by first testing the locking criterion (the 'lock hint') in an unsafe manner; only if that succeeds does the actual locking logic proceed. Can be UNSAFE when implemented in some language/hardware combinations, and is sometimes considered an anti-pattern.
Design Pattern: (Concurrency Pattern): Event-based asynchronous: Addresses some problems with non-event-based asynchronous programs.
Design Pattern: (Concurrency Pattern): Guarded suspension: Manager operations that require both a lock to be acquired and a precondition to be satisfied before the operation can be executed.
Design Pattern: (Concurrency Pattern): Join: a way to write concurrent, parallel, and distributed programs by message passing. This is a high level programming model compared to the use of locks and threads. ???
Design Pattern: (Concurrency Pattern): Lock: One thread puts a "lock" on a resource, preventing other threads form accessing or modifying it.
Design Pattern: (Concurrency Pattern): Messaging design pattern (MDP): Allows the interchange of messages between components and applications.
Design Pattern: (Concurrency Pattern): Monitor Object: An object whose methods are subject to mutual exclusion, thus preventing multiple objects from erroneously trying to use it at the same time.
Design Pattern: (Concurrency Pattern): Reactor: provides asynchronous interface to resources that must be handled synchronously.
Design Pattern: (Concurrency Pattern): Read-write lock: Allows concurrent read access to an object, but required exclusive access for write operations.
Design Pattern: (Concurrency Pattern): Scheduler: explicitly control when threads may execute single-threaded code.
Design Pattern: (Concurrency Pattern): Thread Pool: A number of threads are created to perform a number of tasks, which are usually organized in a queue. Typically, there are many more tasks than threads. Can be considered a special case of the object pool pattern.
Design Pattern: (Concurrency Pattern): Thread-specific storage: Static or "global" memory local to a thread.
A factory pattern is used where you want to at run-time produce or return or use one of a series of objects from the same hierarchy, i.e. children of the same superclass. So, e.g., pick "dog" from "animals".
Multiple if statements or switch statements, each selecting a different class from the same hierarchy, are a good sign that maybe you should be using the Factory Pattern.
Abstract Factory: like a Factory Pattern, but EVERYTHING is encapsulated. lets you create families of related objects without specifying a concrete class. Use when you have many objects that can be added or changed dynamically during runtime. The fields in the abstract classes created in the abstract factory pattern are themselves objects and may (possibly are required to be) be themselves generated by factories. Upside: models anything and creates common interfaces. Downside: gets complicated. I.e. the CLASSES that the factor produces are abstract too.
