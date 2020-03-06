/*jshint multistr:true */

var text = "Suspendisse pulvinar William risus quis purus sagittis, id condimentum elit William pellentesque. Nunc a felis pretium, faucibus urna dapibus, vulputate justo";
var myName = "William";
var hits = [];

console.log(myName.length);

for (i = 0; i < text.length; i++) {
    if (text[i] === "W") {
        for (j = i; j < (i + myName.length); j++) {
            hits.push(text[j]);
        }
    }
}

if (hits.length === 0) {
    console.log("Your name wasn't found!");
}
else {
    console.log(hits);
}
