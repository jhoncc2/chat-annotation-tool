# chat-annotation-tool

## Dependencies

```
[
    EpMonitor current disable.
    Metacello new
        baseline: 'Brick';
        repository: 'github://pharo-graphics/Brick/src';
        load
] ensure: [ EpMonitor current enable ]
```

(Optional) DiscordSt library is utilized for annotating data from Discord.

```
Metacello new
    baseline: #DiscordSt;
    repository: 'github://JurajKubelka/DiscordSt/src';
    load.
```


## Installation

Clone from github: git@github.com:jhoncc2/chat-annotation-tool.git