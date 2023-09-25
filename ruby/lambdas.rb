:begin
Open/Closed Principle
The open/closed principle states that code should be closed for modification, yet open for extension. 
That means you should be able to add new functionality to an object or method without altering it.

One way to achieve this is by using a lambda, which by nature is lazily bound to the lexical context. 
Until you call a lambda, it is just a piece of data you can pass around.

Task at hand
Implement 3 lambdas that alter a message based on emotion:

spoken    =->(greeting) { ... } # "hello WORLD" --> "Hello world."
shouted   =->(greeting) { ... } # "Hello world" --> "HELLO WORLD!"
whispered =->(greeting) { ... } # "HELLO WORLD" --> "hello world."

Then create a fourth lambda, this one will take one of the above lambdas and a message, 
and the last lambda will delegate the emotion and the message up the chain.

greet =->(style, msg) { ... }
Input
Input message contains only ASCII alphabets and spaces.
:end

spoken = lambda {|s| s.capitalize + '.'}
shouted = lambda {|s| s.upcase + '!'}
whispered = lambda {|s| s.downcase + '.'}
greet = lambda {|greet, str| greet.call(str)}
