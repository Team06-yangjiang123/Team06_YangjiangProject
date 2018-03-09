package com.team06.test;


import com.team06.mapper.StaffMapper;
import com.team06.service.StaffService;
import org.junit.Before;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

/**
 * Created by 蓝鸥科技有限公司  www.lanou3g.com.
 */
public class BaseTest {

    private ApplicationContext context;
    protected StaffMapper staffMapper;
    protected StaffService staffService;


    @Before
    public void init() {
        context = new ClassPathXmlApplicationContext(
                "classpath*:spring-*.xml");

        staffMapper = context.getBean(StaffMapper.class);

        staffService = context.getBean(StaffService.class);
    }
}
