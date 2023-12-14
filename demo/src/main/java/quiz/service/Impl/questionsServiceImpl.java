package quiz.service.Impl;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import quiz.mapper.questionsMapper;
import quiz.pojo.Answer;
import quiz.pojo.QuestionAns;
import quiz.pojo.Question;
import quiz.service.questionsService;

@Service
public class questionsServiceImpl implements questionsService{
    @Autowired
    private questionsMapper qMapper;

    public List<Question> questionList(){
        return qMapper.questionList();
    }

    public List<Answer> answerList(){
        return qMapper.answerList();
    }

    public List<QuestionAns> quizList(){

        List<QuestionAns> quesAnswers = new ArrayList<>();

        List<Question> questions = qMapper.questionList();
        List<Answer> answers = qMapper.answerList();

        questions.stream().forEach(element -> {
            List<Answer> elementAnswers;
            elementAnswers = answers.stream().filter(answer -> answer.getCorrespondsQId()==element.getId()).collect(Collectors.toList());
            quesAnswers.add(new QuestionAns(element, elementAnswers));
        });
        quesAnswers.stream().forEach(element -> {
            Collections.shuffle(element.getAnswers());     //make a random order of answers
        });
        Collections.shuffle(quesAnswers);                 //make a random order of questions
        return quesAnswers;
    }
}
