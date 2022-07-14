package models.Validator;

import java.util.ArrayList;
import java.util.List;

import models.Task;

public class TaskValidator {
    // バリデーションを実行する
    public static List<String> validate(Task m) {
        List<String> errors = new ArrayList<String>();

        String content_error = validateContent(m.getContent());
        if(!content_error.equals("")) {
            errors.add(content_error);
        }

        return errors;
    }

    // Taskの必須入力チェック
    private static String validateContent(String content) {
        if(content == null || content.equals("")) {
            return "Need Enter Task";
        } else if (content.length() > 255) {
            return "Too many characters.";
        }

        return "";
    }
}