import ballerina/test;
import ballerina/io;

@test:Config
function testFunction () {
    test:assertTrue(getMIME("txt") == "text/plain" , msg = "Could not lookup `txt` MIME type!");

    test:assertTrue((getMIME("not an ext") ?: "failed") == "failed" , msg = "Lookup didn't fail when it should've!");
}
