package quiz.pojo;

import java.util.List;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class QuestionAns {
    
    private Question question;
    private List<Answer> answers;
    public QuestionAns(Question question, List<Answer> answers) {
        this.question = question;
        this.answers = answers;
    }
}
