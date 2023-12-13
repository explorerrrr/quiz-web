package quiz.pojo;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class Answer {
    private Integer id;
    private String content;
    private Integer correspondsQId;
}
