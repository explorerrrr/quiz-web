package quiz.pojo;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class ResultWrong {
    private Question question;
    private Answer correcAnswer;
    public ResultWrong(Question question, Answer correcAnswer) {
        this.question = question;
        this.correcAnswer = correcAnswer;
    }
    
}
