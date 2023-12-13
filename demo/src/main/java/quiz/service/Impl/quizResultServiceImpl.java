package quiz.service.Impl;

import java.util.ArrayList;
import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import quiz.mapper.questionsMapper;
import quiz.pojo.Answer;
import quiz.pojo.Question;
import quiz.pojo.Result;
import quiz.pojo.ResultWrong;
import quiz.service.quizResultService;

@Service
public class quizResultServiceImpl implements quizResultService{
    @Autowired
    private questionsMapper qMapper;

    @Override
    public Answer answerById(Integer id) {
        
        return qMapper.answerById(id);
    }

    @Override
    public Question questionById(Integer id) {
        
        return qMapper.questionById(id);
    }

    @Override
    public Result wrongResultList(Integer[] answerIds) {
        Question question;
        Answer answer;
        Integer totalScore = 0;
        List<ResultWrong> wrongResultList = new ArrayList<>();
        for (int i=0; i<answerIds.length; i++) {
            if(answerIds[i]!=null){
                answer = qMapper.answerById(answerIds[i]);
                question = qMapper.questionById(answer.getCorrespondsQId());
                if(answer.getId()!=question.getCorrectAnswerId()){
                    wrongResultList.add(new ResultWrong(question, qMapper.answerById(question.getCorrectAnswerId())));
                
                }
                else{
                    totalScore += question.getScore();
                }
            }
           
        }
        Result re = new Result(totalScore, "success", wrongResultList);
        return re;
    }

    
}
