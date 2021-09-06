package com.czf.controller;

import com.czf.domain.Student;
import com.czf.service.StudentService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/student")
public class StudentController {

    @Resource
    private StudentService service;

    @RequestMapping(value = "/addStudent",method = RequestMethod.GET)
    public ModelAndView addStudent(Student student){
        String tip = "";
        ModelAndView mv = new ModelAndView();
        int nums = service.addStudent(student);
        if (nums>0){
            tip = "学生【"+student.getName()+"】注册成功";
        }
        else {
            tip = "注册失败";
        }
        mv.addObject("tip",tip);
        mv.setViewName("result");
        return mv;
    }

    @RequestMapping("/queryStudent")
    public String queryStudent(Model model){
        List<Student> studentList = service.lookStudent();
        model.addAttribute("studentList",studentList);
        return "queryStudent";

    }

    @RequestMapping("/deleteStudent")
    public String deleteStudent(int id) {
        service.deleteStudent(id);
        return "redirect:queryStudent";
    }

    @RequestMapping("/update")
    public String updateStudent(Model model,int id){
        Student stu = service.queryStudentById(id);
        model.addAttribute("stu",stu);
        return "update";
    }

    @RequestMapping("/update2")
    public String updateStudent2(Student student){
        service.updateStudent(student);
        return "redirect:queryStudent";
    }

}
