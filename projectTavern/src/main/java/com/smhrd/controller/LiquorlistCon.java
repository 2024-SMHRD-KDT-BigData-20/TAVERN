package com.smhrd.controller;

import java.io.*;
import java.util.*;

public class LiquorlistCon {
    public static void main(String[] args) {
        List<String> subjects = Arrays.asList("위스키", "럼", "포도주", "맥주"); // 페이지의 주제 리스트

        for (String subject : subjects) {
            generatePage(subject);
        }
    }

    public static void generatePage(String subject) {
        String templatePath = "template.jsp"; // 템플릿 파일 경로
        String outputPath = "output_" + subject + ".jsp"; // 생성될 페이지의 경로

        try (BufferedReader reader = new BufferedReader(new FileReader(templatePath));
             BufferedWriter writer = new BufferedWriter(new FileWriter(outputPath))) {
            String line;
            while ((line = reader.readLine()) != null) {
                line = line.replace("${subject}", subject); // 주제 부분을 주제로 대체
                writer.write(line);
                writer.newLine();
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}