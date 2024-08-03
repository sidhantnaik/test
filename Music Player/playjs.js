
let songIndex = 0;
//let audioElement = new Audio('./Songs1/1.mp3');
let playButton = document.getElementById('palyButton');
let myProgressBar = document.getElementById('myProgressBar');
let gif = document.getElementById('gif');
let masterSongName = document.getElementById('masterSongName');
let songItems = Array.from(document.getElementsByClassName('songItem'));
let audioElement = new Audio('./Songs1/1.mp3');
let playBtn = document.getElementById('play');

let songs = [

    { songName: "Passori", filePath: "Songs1/1.mp3" },
    { songName: "Bin Tere Sanam", filePath: "Songs1/2.mp3" },
    { songName: "Mazya dolyatil kajal", filePath: "Songs1/3.mp3" },
    { songName: "Zingaat", filePath: "Songs1/4.mp3" },
    { songName: "Shri Hari Stotram", filePath: "Songs1/5.mp3" },
    { songName: "Raanjhanaa", filePath: "Songs1/6.mp3" },
    { songName: "Ek Din Teri Raahon", filePath: "Songs1/7.mp3" }


]

//Code for display song Information
songItems.forEach((element, i) => {
    element.getElementsByTagName("img")[0].src = "~\Images\musiclogo.png";
    element.getElementsByClassName("songName")[0].innerText = songs[i].songName;
});

//audioElement.play();

//Listener Events
// Song Play and Pause
/*playButton.addEventListener('click', () => {
    if (audioElement.paused || audioElement.currentTime <= 0) {
        audioElement.play();
        playButton.classList.remove('fa-circle-play');
        playButton.classList.add('fa-circle-pause');
        gif.style.opacity = 1;
    }
    else {
        audioElement.pause();
        playButton.classList.remove('fa-circle-pause');
        playButton.classList.add('fa-circle-play');
        gif.style.opacity = 0;
        makeAllPlays();

    }
})
*/
//Update Progress Bar
audioElement.addEventListener('timeupdate', () => {

    progress = parseInt((audioElement.currentTime / audioElement.duration) * 100);
    myProgressBar.value = progress;
})

myProgressBar.addEventListener('change', () => {
    audioElement.currentTime = myProgressBar.value * audioElement.duration / 100;
})

//Play Logo Working
const makeAllPlays = () => {
    Array.from(document.getElementsByClassName('songItemPlay')).forEach((element) => {
        element.classList.remove('fa-circle-pause');
        element.classList.add('fa-circle-play');

    })
}

Array.from(document.getElementsByClassName('songItemPlay')).forEach((element) => {
    element.addEventListener('click', (e) => {
        makeAllPlays();
        songIndex = parseInt(e.target.id);
        e.target.classList.remove('fa-circle-play');
        e.target.classList.add('fa-circle-pause');

        audioElement.src = 'Songs/' + songIndex
            + '.mp3';

        masterSongName.innerText = songs[songIndex - 1].songName;

        audioElement.currentTime = 0;
        audioElement.play();
        gif.style.opacity = 1;
        playButton.classList.remove('fa-circle-play');
        playButton.classList.add('fa-circle-pause');

    })
})


//Code for next button
document.getElementById('next').addEventListener('click', () => {
    if (songIndex >= 10) {
        songIndex = 0;
    }
    else {
        songIndex += 1;
    }

    audioElement.src = 'Songs1/' + (songIndex + 1)
        + '.mp3';
    masterSongName.innerText = songs[songIndex].songName;
    audioElement.currentTime = 0;
    audioElement.play();
    playButton.classList.remove('fa-circle-play');
    playButton.classList.add('fa-circle-pause');
    makeAllPlays();
})

//Code for previous button
document.getElementById('previous').addEventListener('click', () => {
    if (songIndex < 0) {
        songIndex = 10;
    }
    else {
        songIndex -= 1;
    }

    audioElement.src = 'Songs1/' + (songIndex + 1)
        + '.mp3';
    masterSongName.innerText = songs[songIndex].songName;
    audioElement.currentTime = 0;
    audioElement.play();
    playButton.classList.remove('fa-circle-play');
    playButton.classList.add('fa-circle-pause');
    makeAllPlays();
})




playBtn.addEventListener('click', () => {
    if (audioElement.paused || audioElement.currentTime <= 0) {
        audioElement.play();
        playButton.classList.remove('fa-circle-play');
        playButton.classList.add('fa-circle-pause');
        gif.style.opacity = 1;
    }
    else {
        audioElement.pause();
        playButton.classList.remove('fa-circle-pause');
        playButton.classList.add('fa-circle-play');
        gif.style.opacity = 0;
        makeAllPlays();

    }
})

