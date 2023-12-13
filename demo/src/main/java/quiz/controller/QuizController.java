package quiz.controller;
import java.util.List;

import org.springframework.web.bind.annotation.RestController;

import lombok.extern.slf4j.Slf4j;

import quiz.service.questionsService;
import quiz.pojo.Result;
import quiz.pojo.Answer;
import quiz.pojo.Question;
import quiz.pojo.QuestionAns;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;


@RestController
@Slf4j
public class QuizController {
    @Autowired
    private questionsService qService;
    private int i = 0;
    @GetMapping("/questions")
    public Result questions(){
        
        log.info("query all questions and answers");
        List<QuestionAns> data = qService.quizList();
        
        data.stream().forEach(result -> {
            System.out.println(result);
            i++;
            System.out.println(i);
        });

        return Result.success(data);
    }
}
