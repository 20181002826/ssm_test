package com.czf.service.impl;

import com.czf.dao.StudentDao;
import com.czf.domain.Student;
import com.czf.service.StudentService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

@Service
public class StudentServiceImpl implements StudentService {

    @Resource
    private StudentDao studentDao;

    @Override
    public int addStudent(Student student) {
        return studentDao.insertStudent(student);
    }

    @Override
    public List<Student> lookStudent() {
        return studentDao.queryStudent();
    }

    @Override
    public Student queryStudentById(int id) {
        return studentDao.queryStudentById(id);
    }

    @Override
    public void updateStudent(Student student) {
        studentDao.updateStudent(student);
    }

    @Override
    public void deleteStudent(int id) {
        studentDao.deleteStudent(id);
    }


}
