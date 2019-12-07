# 2019-advent-of-code
Advent of code in Perl

Doing the [2019 Advent of Code](https://adventofcode.com/2019) in Perl to bone up on some old Perl skills and learn some new modern Perl techniques.

## Specific goals

* Learn to write in idiomatic Perl (if that is even a thing), or at the very least settle on a style that feels right to me
* Learn some modern Perl techniques, including testing

## Learnings

### Day 1
Really just trying to refamiliarize myself with the syntax. One thing I need to get up and running soon is a test framework. I ended up debugging this with a ton of print statements and that felt pretty dirty, but I got it done.

Part 2 took multiple attempts because I didn't read the directions clearly enough. I was initially calculating the total fuel from the total module weight, not on the individual modules. RTFM, amirite.

### Day 2
This was a day when gravity just didn't seem to work.

I started out setting up [Test2](https://metacpan.org/pod/Test2) which I was pretty happy about. I started with a few simple assertions, like

```perl 
is(1,1, "Try out is assertion with fixed data, should pass");
isnt(1,2, "Try out isn't assertion with fixed data, should pass");
is(1,2, "Try out is assertion with fixed data, should fail");
```

I had some trouble figuring out how to compare arrays in my tests, so I decided to switch to [Test::More](https://perldoc.perl.org/Test/More.html) because I knew it had `is_deeply` which I knew would compare the full contents of the arrays, and I was getting pretty frustrated. I am excited to learn more about Test2 and have a pairing session set up with a coworker to experiment with it. But I just want to get some $hit done.

That seemed to boost my confidence, then I started in on the assignment. I immediately ran into trouble trying to assign values to a list, which you apparently can't do in perl, surprise, surprise. So I was having all kinds of trouble with [arrays and list context](https://perlmaven.com/scalar-and-list-context-in-perl) (I now know that's the right terminology). It was really useful to have the test framework in place, because it quickly exposed my misunderstand of how to handle arrays and lists, and when trying to reassign values in a list.

So it was a frustrating day, but I learned a lot.

I decided to bail on part 2 cause it's Saturday, and I had enough fun for a sunny day.

P.S. I also learned that if you use [require](https://perldoc.perl.org/functions/require.html) the required file must `return 1;`. Weird, right
> The file must return true as the last statement to indicate successful execution of any initialization code, so it's customary to end such a file with 1; unless you're sure it'll return true otherwise. But it's better just to put the 1; , in case you add more statements.
