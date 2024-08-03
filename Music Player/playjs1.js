
const playBtn = document.getElementById('play');
const nextBtn = document.getElementById('next');
const previousBtn = document.getElementById('previous');
let index = 1;
let path = './Songs1/' + index + '.mp3';
let audioElement = new Audio(path);

playBtn.addEventListener('click', () => {
    if (audioElement.paused || audioElement.currentTime <= 0) {
        audioElement.play();
        
    }
    else {
        audioElement.pause();

    }
})


nextBtn.addEventListener('click', () => {
    index = index + 1;
    let path = './Songs1/' + index + '.mp3';
    audioElement = new Audio(path);
    if (audioElement.paused || audioElement.currentTime <= 0) {
        audioElement.play();
    }
    else {
        audioElement.pause();
    }
})


previousBtn.addEventListener('click', () => {
    index = index - 1;
    let path = './Songs1/' + index + '.mp3';
    audioElement = new Audio(path);
    if (audioElement.paused || audioElement.currentTime <= 0) {
        audioElement.play();

    }
    else {
        audioElement.pause();


    }
})






