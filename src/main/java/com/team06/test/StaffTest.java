package com.team06.test;

import com.team06.domain.Staff;
import com.team06.mapper.StaffMapper;
import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

/**
 * Created by dllo on 2018/2/28.
 */
public class StaffTest {

    private ApplicationContext context;
//    private StaffMapper staffMapper;

    @Before
    public void init(){
        context = new ClassPathXmlApplicationContext("classpath*:spring-*.xml");

    }

    @Test
    public void testMapper(){
        StaffMapper staffMapper = context.getBean(StaffMapper.class);
        List<Staff> staffs = staffMapper.selectPerson();

        System.out.println(staffs);
    }

//    @Before
//    public void init(){
//
//        context = new ClassPathXmlApplicationContext("classpath*:spring-*.xml");
//        staffMapper = context.getBean(StaffMapper.class);
//    }
//
//    @Test
//    public void depTest(){
//
//        Staff staff = new Staff();
//        staff.setStaff_username("技术");
//        int count = staffMapper.getTotalRecord(staff);
//        System.out.println(count);
//        PageBean<Staff> pageBean = new PageBean<Staff>(1,3,count);
//        staff.setPageBean(pageBean);
//        List<Staff> list = staffMapper.selectPerson(staff);
//        System.out.println(list);
//
//    }
}
