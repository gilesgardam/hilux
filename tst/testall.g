# This runs the tests. Since it is referenced in PackageInfo.g you can just run
#     gap> TestPackage("hilux");
LoadPackage("hilux");
TestDirectory(
    DirectoriesPackageLibrary("hilux", "tst"),
    rec(
        exitGAP := true,
        testOptions := rec(compareFunction := "uptowhitespace"),
    )
);
# Should never get here
FORCE_QUIT_GAP(1);
