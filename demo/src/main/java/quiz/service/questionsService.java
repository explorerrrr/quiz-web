package quiz.service;
import java.util.List;

import quiz.pojo.Answer;
import quiz.pojo.Question;
import quiz.pojo.QuestionAns;;

public interface questionsService {
    // query all Questions and Answers;
    List<Question> questionList();
    List<Answer> answerList();
    List<QuestionAns> quizList();
}
