# - Knock knock.
# - Who's there?
# - Oscar.
# - Oscar who?
# - Oscar silly question, get a silly answer.
#
# These aren't bugs per se but undesirable behaviour arising when you wish GAP
# could magically do certain things.


# Computing AbelianInvariants requires factorizing, which is a problem if you
# have exponential growth of torsion in homology: in our example we use
# snappy.Manifold('v2983(3,4)').fundamental_group().gap_string()
G := CallFuncList(function() local F, a, b; F := FreeGroup("a", "b"); a := F.1; b := F.2;   return F/[a*a*b*a*a*b*a*a*a*b^-1*b^-1*a*a*a*b^-1*b^-1*a*a*a*b^-1*b^-1*a*a*a*b, a*a*b*a*a*b*b*b*a*a*b*a*a*b*a*a*b*b*b*a*a*b*a*a*b*a*a*b*b*b*a*a*b*a*a*b*a*a*a*a*a*b]; end,[]);
H := DerivedSubgroup(G);
Display(AbelianInvariants(H));
# Error, sorry,  cannot factor [ 10988587951480353303077 ]


# "Syllable representation" of words goes unary... I don't know a good
# solution to working with the group Z
F := FreeGroup(1);
x := ObjByExtRep(FamilyObj(One(F)), [1, 10^9, 1, -10^9]);
# Error, reached the pre-set memory limit
