SetPackageInfo(rec(
    PackageName := "hilux",
    Version := "0.1",
    Dependencies := rec(
        GAP       := "4.5",
        SuggestedOtherPackages := [ ],
    ),
    AvailabilityTest := ReturnTrue,
    TestFile := "tst/testall.g",
));
