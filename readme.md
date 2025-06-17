## Implement a Multiple-choice Quiz application in a language/framework of java/vue.js, springboot, mybatis

### The application has the following features:

* it has a Web UI with vue.js
* it starts by printing the rules of the quiz and ask the user for a confirmation (yes/no)
* it goes through a list of predefined questions with 4 possible answers (marked by a, b, c, d)
* after each question is showed, the application waits for the answer (must click the button to one of the possible answers)
* if an unacceptable choice is entered(empty choice for a question), a message is shown that it must be one of the possible answers (a, b, c, d)
* each question is scored between 10 and 100
* the total score of all asked questions must equal 1000
* total of 20 questions are asked:
    * 3 questions with score 100
    * 4 questions with score 75
    * 5 questions with score 40
    * 8 questions with score 25
* after all questions are answered, the application prints the result:
    * total score
    * number of correct answers
    * number of wrong answers
    * percentage of correct answers
    * the list of wrong answers (question + correct answer)
    * pass/fail message (pass if sum score of correctly answered questions is greater than 600)

### technical points:

* rest API
* web UI
* database
* random questions on each run
* random order of answers on each run
