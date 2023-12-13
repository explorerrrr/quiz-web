package quiz.pojo;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class Question {
    private Integer id;
    private String content;
    private Integer score;
    private Integer correctAnswerId;
}
