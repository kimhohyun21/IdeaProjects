/**
 * Created by sist on 2016-09-23.
 */
function log(msg){
    var consoleWeb=document.getElementById("debug");
    if(consoleWeb!=null){
        consoleWeb.innerHTML+=msg+"<br/>";
    }
};