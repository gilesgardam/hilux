# Writing this xrange Iterator was mostly a warm up exercise.

xrangeIsDone := function(iter)
    # this deals with negative steps as well
    return (iter!.stop - iter!.next) * iter!.step <= 0;
end;

xrangeNextIterator := function(iter)
    local res;
    res := iter!.next;
    iter!.next := iter!.next + iter!.step;
    return res;
end;

xrangeShallowCopy := function(iter)
    return rec(next := iter!.next, stop := iter!.stop, step := iter!.step);
end;

# Return an iterator over the integers from start (inclusive) to stop
# (exclusive) going by step, as in python.
InstallGlobalFunction(xrange,
function(start, stop, step)
    return IteratorByFunctions(rec(
        IsDoneIterator := xrangeIsDone,
        NextIterator := xrangeNextIterator,
        ShallowCopy := xrangeShallowCopy,
        next := start,
        stop := stop,
        step := step
    ));
end);

# Returns an iterator over the words in F of length in xrange(start, stop).
InstallGlobalFunction(Fxrange,
function(F, start, stop)
    local it;
    # Warning: this depends on the implementation of:
    it := Iterator(F);

    if start > 0 then
        it!.word := [1, start];
        it!.counter := Concatenation(List([1..start], x -> 1), [0]);
        it!.length := start;
        it!.exp := start;
    fi;
    it!.IsDoneIterator := iter -> iter!.length >= stop;
    return it;
end);

# Returns the sphere of a given radius in the free group F as a list.
InstallGlobalFunction(Sphere,
function(F, radius)
    # Note: there is also an implementation in the package FR.
    return List(Fxrange(F, radius, radius+1));
end);

# Returns the ball of a given radius in the free group F as a list.
InstallGlobalFunction(Ball,
function(F, radius)
    # Note: there is also an implementation in the package FR.
    return List(Fxrange(F, 0, radius + 1));
end);
