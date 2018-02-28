package com.team06.test;

import com.team06.domain.Department;
import com.team06.mapper.DepMapper;
import com.team06.page.PageBean;
import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

/**
 * Created by dllo on 18/2/27.
 */
public class MainTest {

    private ApplicationContext context;
    private DepMapper depMapper;
    @Before
    public void init(){

        context = new ClassPathXmlApplicationContext("classpath*:spring-*.xml");
        depMapper = context.getBean(DepMapper.class);
    }

    @Test
    public void depTest(){

        Department department = new Department();
        department.setDepName("技术");
        int count = depMapper.getTotalRecord(department);
        System.out.println(count);
        PageBean<Department> pageBean = new PageBean<Department>(1,3,count);
        department.setPageBean(pageBean);
        List<Department> list = depMapper.selectDep(department);
        System.out.println(list);

    }



}