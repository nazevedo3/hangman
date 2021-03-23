import HangmanSocket from "./hangman_socket.js"

window.onload = function () {
    new HangmanSocket()
    let hangman = new HangmanSocket()

    hangman.connect_to_hangman()
}