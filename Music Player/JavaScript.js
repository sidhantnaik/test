
const playBtn = document.getElementById('play');
const nextBtn = document.getElementById('next');
const previousBtn = document.getElementById('previous');
let myProgressBar = document.getElementById('myProgressBar');

let filelength = ('./Songs1').toString.length;
let index = 1;
let path = './Songs1/' + index + '.mp3';
let audioElement = new Audio(path);


//Play Button code
playBtn.addEventListener('click', () => {
    
    alert(path);
    if (audioElement.paused || audioElement.currentTime <= 0) {
        audioElement.play();

    }
    else {
        audioElement.pause();

    }
})

//Update Progress Bar
audioElement.addEventListener('timeupdate', () => {

    progress = parseInt((audioElement.currentTime / audioElement.duration) * 100);
    myProgressBar.value = progress;
})

myProgressBar.addEventListener('change', () => {
    audioElement.currentTime = myProgressBar.value * audioElement.duration / 100;
})


//Next Button Code
nextBtn.addEventListener('click', () => {
    alert(path);
    audioElement.pause();

    if (index >= filelength) {
        index = 1;
    }
    else {
        index += 1;
    }

    let path = './Songs1/' + index + '.mp3';
    audioElement = new Audio(path);
    audioElement.currentTime = 0;
    audioElement.play(); 

   
})

//Previous Button Code
previousBtn.addEventListener('click', () => {
    audioElement.pause();
    if (index <= 1) {
        index = filelength;
    }
    else {
        index -= 1;
    }

    let path = './Songs1/' + index + '.mp3';
    audioElement = new Audio(path);
    audioElement.currentTime = 0;
    audioElement.play();
})



