package com.czf.service;

import com.czf.domain.Student;

import java.util.List;
import java.util.Map;

public interface StudentService {
    int addStudent(Student student);       //增
    List<Student> lookStudent();           //差
    void deleteStudent(int id);            //删

    Student queryStudentById(int id);      //改,两部分组成
    void updateStudent(Student student);
}
