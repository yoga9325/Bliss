const startBtn=document.querySelector('.start-btn');
const popupInfo=document.querySelector('.popup-info');
const exitBtn=document.querySelector('.exit-btn');
const main=document.querySelector('.main');
const continueBtn=document.querySelector('.continue-btn');
const quizSection=document.querySelector('.quiz-section');
const quizBox=document.querySelector('.quiz-box');
const resultBox=document.querySelector('.result-box');
const tryAgainBtn=document.querySelector('.tryAgain-btn');
const goHomeBtn=document.querySelector('.goHome-btn');

let progressEndValue = 0;

startBtn.onclick = () => {
    popupInfo.classList.add('active');
    main.classList.add('active');
}

exitBtn.onclick = () => {
    popupInfo.classList.remove('active');
    main.classList.remove('active');
}

continueBtn.onclick = () => {
    quizSection.classList.add('active');
    popupInfo.classList.remove('active');
    main.classList.remove('active');
    quizBox.classList.add('active');

    showQuestions(0);
    questionCounter(1);
}

tryAgainBtn.onclick = () => {
    quizBox.classList.add('active');
    nextBtn.classList.remove('active');
    resultBox.classList.remove('active');


    questionCount = 0;
    questionNumb = 1;
    userScore = 0;
    showQuestions(questionCount);
    questionCounter(questionNumb);
    questionRemining(questionNumb);

}

goHomeBtn.onclick = () => {
     
    let n=progressEndValue;
    if (n<=25)
    {
        location.href = "recommendation/recommendation1.html";
    }
   if (n>=26 && n<=50)
    {
        location.href = "recommendation/recommendation2.html";
    }
    if (n>=51 && n<=75)
    {
        location.href = "recommendation/recommendation3.html";
    }
   if (n>=76 && n<=100)
    {
        location.href = "recommendation/recommendation4.html";
    }
}


let questionCount = 0;
let questionNumb = 1;
let userScore = 0;


const nextBtn = document.querySelector('.next-btn');

nextBtn.onclick = () => {
    if (questionCount < questions.length -1) {
        questionCount++;
        showQuestions(questionCount);

        questionNumb++;
        questionCounter(questionNumb);
        questionRemining(questionNumb);

        nextBtn.classList.remove('active');
    }
   else {
        showResultBox();
   }
}

const optionList = document.querySelector('.option-list');

// getting questions and options from array 
function showQuestions(index) {
    const questionText = document.querySelector('.question-text')
    questionText.textContent = `${questions[index].numb}. ${questions[index].question}`;

    let optionTag = `<div class="option"><span>${questions[index].option[0]}</span></div>
        <div class="option"><span>${questions[index].option[1]}</span></div>
        <div class="option"><span>${questions[index].option[2]}</span></div>
        <div class="option"><span>${questions[index].option[3]}</span></div>`;

    optionList.innerHTML = optionTag;

    const option = document.querySelectorAll('.option');
    for(let i = 0; i < option.length; i++)
    {
        option[i].setAttribute('onclick', 'optionSelected(this)');
    }
}

function optionSelected(answer) {
    let userAnswer = answer.textContent;
    let correctAnswer = questions[questionCount].answer;
    let alloption =optionList.children.length;
    
    if(userAnswer == correctAnswer)
    {
        answer.classList.add('correct');
        userScore += 1;
       
    }
    else{
        answer.classList.add('incorrect');
    }

    for(let i = 0; i < alloption; i++)
    {
        optionList.children[i].classList.add('disabled');
    }

    nextBtn.classList.add('active');
}
function questionRemining(index) {
    const questionRemining = document.querySelector('.header-score');
    questionRemining.textContent = `Remining: ${index}/${questions.length}`;
}

function questionCounter(index) {
    const questionTotal = document.querySelector('.question-total');
    questionTotal.textContent = `${index} of ${questions.length} Questions`;
}



function showResultBox() {
    quizBox.classList.remove('active');
    resultBox.classList.add('active');

    const scoreText = document.querySelector('.score-text');
    scoreText.textContent = `Your stress level ${userScore} out of ${questions.length}`;

    const circularProgress = document.querySelector('.cricular-progress');
    const progressValue = document.querySelector('.progress-value');
    let progressStartValue = -1;
    progressEndValue = (userScore / questions.length) * 100;
    let speed = 20;

    let progress = setInterval(() => {
        progressStartValue++;
        
        progressValue.textContent = `${progressStartValue}%`;
        circularProgress.style.background = `conic-gradient(#5c8329ca ${progressStartValue * 3.6}deg, rgba(255, 255, 255, .1) 0deg)`;
        
        if (progressStartValue == progressEndValue) {
            clearInterval(progress);
        }
    }, speed);

}

