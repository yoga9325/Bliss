const quizData =[
    {
        question:"1. Do you have trouble staying focused on the present moment?",
        a:"Never",
        b:"Sometimes",
        c:"Often",
        d:"Almost Always",
        correct:"c",

    },
   
    {
        question:"2.Do you struggle to fall asleep at night? ",
        a:"Never",
        b:"Sometimes",
        c:"Often",
        d:"Almost Always",
        correct:"c",

    },
    {
        question:"3. Do you experience headaches or muscle tension?",
        a:"Never",
        b:"Sometimes",
        c:"Often",
        d:"Almost Always",
        correct:"c",

    },
   
    {
        question:"4. Do you feel irritable, annoyed, or angry over trivial issues? ",
        a:"Never",
        b:"Sometimes",
        c:"Often",
        d:"Almost Always",
        correct:"c",

    },

    {
        question:"5. Do you feel like withdrawing from family, friends, and isolating yourself? ",
        a:"Never",
        b:"Sometimes",
        c:"Often",
        d:"Almost Always",
        correct:"c",

    },
     
   {
        question:"6. Felt confident about your ability to handle your personal problems?",
        a:"Never",
        b:"Sometimes",
        c:"Often",
        d:"Almost Always",
        correct:"c",

    },
   
     {
        question:"7. I found myself getting impatient when I was delayed in any way, like by elevators, traffic lights, or people who kept me waiting.",
        a:"Never",
        b:"Sometimes",
        c:"Often",
        d:"Almost Always",
        correct:"c",

    },
  
     {
        question:"8. Been angered because of things that happened that were out of your control?",
        a:"Never",
        b:"Sometimes",
        c:"Often",
        d:"Almost Always",
        correct:"c",

    },
 
     {
        question:"9. I tended to overreact to situations.",
        a:"Never",
        b:"Sometimes",
        c:"Often",
        d:"Almost Always",
        correct:"c",

    },
   
    {
        question:"10. I perspired noticeably, like with sweaty palms, even when I wasn't doing anything physical.",
        a:"Never",
        b:"Sometimes",
        c:"Often",
        d:"Almost Always",
        correct:"c",

    },
  
    
];
const quiz=document.getElementById('quiz')
const answerEls=document.querySelectorAll('.answer')
const questionEl=document.getElementById('question')
const a_text=document.getElementById('a_text')
const b_text=document.getElementById('b_text')
const c_text=document.getElementById('c_text')
const d_text=document.getElementById('d_text')
const submitBtn=document.getElementById('submit')

let currentQuiz=0
let score=0

loadQuiz()

function loadQuiz(){
deselectAnswers()
const currentQuizData=quizData[currentQuiz]
questionEl.innerText=currentQuizData.question
a_text.innerText=currentQuizData.a
b_text.innerText=currentQuizData.b
c_text.innerText=currentQuizData.c
d_text.innerText=currentQuizData.d



}
function deselectAnswers(){

answerEls.forEach(answerEl=>answerEl.checked=false)

}

function getSelected(){

let answer
answerEls.forEach(answerEl=>{
if(answerEl.checked){
    answer =answerEl.id
}

})
return answer

}

submitBtn.addEventListener('click',()=>{
const answer=getSelected()
if(answer){
    if(answer===quizData[currentQuiz].correct){
        score++
    }
    currentQuiz++
    if(currentQuiz < quizData.length){

    loadQuiz()

    }
    else{

        quiz.innerHTML=`
        <h2>You answered ${score}/${quizData.length} questions correctly</h2> 
        <button onclick="location.reload()">Reload</button>
         `
    
}
}

})
