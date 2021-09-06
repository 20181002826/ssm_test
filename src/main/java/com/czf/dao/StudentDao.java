package com.czf.dao;

import com.czf.domain.Student;

import java.util.List;
import java.util.Map;

public interface StudentDao {
    int insertStudent(Student student);
    List<Student> queryStudent();
    void deleteStudent(int id);

    Student queryStudentById(int id);
    void updateStudent(Student student);

}
