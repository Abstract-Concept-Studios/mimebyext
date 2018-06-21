import ballerina/test;
import ballerina/io;

@test:Config
function testFunction () {
    test:assertTrue(getMIME("txt") == "text/plain" , msg = "Could not lookup `txt` MIME type!");

    var failedMIME = getMIME("not an ext");

    match failedMIME {
        string failed => {
            test:assertTrue(false, msg = "Error not returned as expected!");
        }
        error success => {
            test:assertTrue(true, msg = "This cannot fail");
        }
    }
}
