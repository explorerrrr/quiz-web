package quiz.controller;
import java.util.List;

import org.springframework.web.bind.annotation.RestController;

import lombok.extern.slf4j.Slf4j;

import quiz.service.questionsService;
import quiz.pojo.Result;
import quiz.pojo.QuizAnswers;
import quiz.pojo.Answer;
import quiz.pojo.Question;
import quiz.pojo.QuestionAns;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;


@RestController
@Slf4j
public class QuizController {
    @Autowired
    private questionsService qService;
    
    @GetMapping("/questions")
    public Result questions(){    //query all questions and answers
        
        log.info("query all questions and answers");
        List<QuestionAns> data = qService.quizList();
        
        data.stream().forEach(result -> {
            System.out.println(result);
        });

        return Result.success(data);
    }

    @PostMapping("/quizResult")
    public Result quizResult(@RequestBody QuizAnswers quizAnswer){    //receive quiz result and create a session
        
        return Result.success();
    }
}
