# pipeband-music
Collection of lilypond files for a pipeband.

It concerns pipes and three types of drums (bass, tenor and snare (or side)).
To this end, you will need the bagpipe.ly normally included by lilypond aswell as the lilydrum package ([lyp-package](https://github.com/lyp-packages/lilydrum/) / [git](https://github.com/kastdeur/lilydrum)).

For most tunes there are at least pipe and snare scores + a "full" score containing both.
If I play standards/stock scores to a tune, it is not included.
The same holds for tenor and bass scores.

Although this is my personal collection, quite a few tunes are used for my pipeband [The Seaforth Highlanders of Holland Memorial Pipes and Drums](https://seaforth.nl).

## How to compile a score
You can use the `./build` script for this.
It is a bash wrapper script for lilypond.
Inspect this file first, to link lilydrum and review options you want.

With the `-dno-strip-output-dir` setting, files will be compiled in their respective folders.

## How to add a new score
In `./templates` you can find templates for the various permutations of instruments and their scores.
These can be used as a starting point for a new score. 
You will need at least `./templates/config.ily` to define the title, meter, time signature, etc
