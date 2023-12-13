package quiz.service;

import quiz.pojo.Answer;
import quiz.pojo.Question;
import quiz.pojo.Result;

public interface quizResultService {
    public Answer answerById(Integer id);
    public Question questionById(Integer id);
    public Result wrongResultList(Integer[] answerId);
}
