var languages = {
    english: "Hello!",
    french: "Bonjour!",
    notALanguage: 4,
    spanish: "Hola!"
};

// print hello in the 3 different languages
for (var options in languages) {
    if (typeof languages[options] === "string") {
        console.log(languages[options]);
    }
}
