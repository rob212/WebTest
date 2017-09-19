function callNativeApp () {
    try {
        webkit.messageHandlers.callbackHandler.postMessage("Hello I'm the JavaScript on the Web Page");
    } catch(err) {
        console.log('The native context does not exist yet');
    }
}

setTimeout(function () {
    callNativeApp();
}, 5000);

function redHeader() {
    setTimeout(function () {
               document.querySelector('h1').style.color = "red";
               }, 2000);
    
}
