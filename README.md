# Elf
Spiritual successor of Elm


![wow](hqdefault.jpg)

## Stronger than ever with SwiftUI
Same concepts carry over for reference type.

However SwiftUI use struct to conform to View, which needs some work.

By adding a model type as Redux store (did not require store before), we can have an elegant Elm-Flow.

[Elf](https://gist.github.com/jimlai586/6c9fb7fb828777a50860be2b9ae05fe0)

Actions and effects are still present, with effects being a sink.


## There is ReSwift

But I find it cubersome to work with. 

Global state is impractical. No way to determine all possible states in advance, 

not to mention specs are chaning all the time. Also the number of states increase exponentially.

My approach is to use per-view-controller store without explicit states.

**should track actions.**


## There is RxSwift

But it sucks. Its premise does not hold. 

Treating everything as stream of events is dumb and only makes things difficult.

In static dispatch, you expect something to happen, define the exact type, and set proper callback.

It even tries to hide side effects from developer, claiming it works because it eliminates them.

Every real world project is full of side effects. Every one.

Redux would be a lot more useful than FRP. 

## Elm 

Elm is a functional programming language. You cannot be more functional than that.

The way it handles side effects is where Redux draws its inspiration.

My approach is to make it perfectly balanced, as all things should be.

Highlight and manage side effects, using POP. 

Apply simple functional paradigms on actions.

Also make shorthands so that it incurs little overheads. 

That is the gist of it, and this repo is the attempt so far.




