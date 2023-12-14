package quiz.controller;
import java.util.Arrays;
import java.util.List;

import org.springframework.web.bind.annotation.RestController;

import jakarta.servlet.http.HttpSession;
import lombok.extern.slf4j.Slf4j;

import quiz.service.questionsService;
import quiz.service.quizResultService;
import quiz.pojo.Result;
import quiz.pojo.QuizAnswers;
import quiz.pojo.QuestionAns;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;


@RestController
@Slf4j
public class QuizController {
    @Autowired
    private questionsService qService;
    @Autowired
    private quizResultService quizService;
    
    @GetMapping("/questions")
    public Result questions(){    //query all questions and answers
        
        log.info("query all questions and answers");
        List<QuestionAns> data = qService.quizList();
        
        // data.stream().forEach(result -> {
        //     System.out.println(result);
        // });

        return Result.success(data);
    }

    @PostMapping("/quizResult")
    public Result quizResult(@RequestBody QuizAnswers quizAnswer, HttpSession session){    //receive quiz result and create a session
        session.setAttribute("answerId", quizAnswer.getAnswerId());
        System.out.println(Arrays.toString(quizAnswer.getAnswerId()));
        System.out.println(quizAnswer.getAnswerId());
        
        return Result.success();
    }
    
    @GetMapping("/resultList")
    public Result resultList(HttpSession session){
        Integer[] answerId =(Integer[]) session.getAttribute("answerId");
        System.out.println(answerId[19]);
        
        
        Result res = quizService.wrongResultList(answerId);

        return res;
    }

}
