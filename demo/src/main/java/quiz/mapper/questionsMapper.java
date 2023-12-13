package quiz.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import quiz.pojo.Answer;
import quiz.pojo.Question;

@Mapper
public interface questionsMapper {
    @Select("SELECT Questions.id AS id, Questions.content AS content, Questions.score AS score, Questions.correctAnswerId AS correctAnswerId\r\n" + //
            "FROM Questions\r\n" + //
            "ORDER BY id ASC")
    public List<Question> questionList();

    @Select("SELECT Answers.id AS id, Answers.content AS content, Answers.correspondsQId AS correspondsQId\r\n" + //
            "FROM Answers\r\n" + //
            "ORDER BY id ASC")
    public List<Answer> answerList();

    @Select("SELECT Answers.id AS id, Answers.content AS content, Answers.correspondsQId AS correspondsQId\r\n" + //
            "FROM Answers WHERE id=#{id}")
    public Answer answerById(Integer id);

    @Select("SELECT Questions.id AS id, Questions.content AS content, Questions.score AS score, Questions.correctAnswerId AS correctAnswerId\r\n" + //
            " FROM Questions WHERE id=#{id}")
    public Question questionById(Integer id);
}
