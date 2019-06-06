package com.suyang.aDemo.dao;

import com.suyang.aDemo.dao.DemoTeacherClassExample;
import com.suyang.aDemo.model.DemoTeacherClass;

import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface DemoTeacherClassMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table demo_teacher_class
     *
     * @mbggenerated Tue May 28 19:03:27 SGT 2019
     */
    int countByExample(DemoTeacherClassExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table demo_teacher_class
     *
     * @mbggenerated Tue May 28 19:03:27 SGT 2019
     */
    int deleteByExample(DemoTeacherClassExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table demo_teacher_class
     *
     * @mbggenerated Tue May 28 19:03:27 SGT 2019
     */
    int deleteByPrimaryKey(Long id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table demo_teacher_class
     *
     * @mbggenerated Tue May 28 19:03:27 SGT 2019
     */
    int insert(DemoTeacherClass record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table demo_teacher_class
     *
     * @mbggenerated Tue May 28 19:03:27 SGT 2019
     */
    int insertSelective(DemoTeacherClass record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table demo_teacher_class
     *
     * @mbggenerated Tue May 28 19:03:27 SGT 2019
     */
    List<DemoTeacherClass> selectByExample(DemoTeacherClassExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table demo_teacher_class
     *
     * @mbggenerated Tue May 28 19:03:27 SGT 2019
     */
    DemoTeacherClass selectByPrimaryKey(Long id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table demo_teacher_class
     *
     * @mbggenerated Tue May 28 19:03:27 SGT 2019
     */
    int updateByExampleSelective(@Param("record") DemoTeacherClass record, @Param("example") DemoTeacherClassExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table demo_teacher_class
     *
     * @mbggenerated Tue May 28 19:03:27 SGT 2019
     */
    int updateByExample(@Param("record") DemoTeacherClass record, @Param("example") DemoTeacherClassExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table demo_teacher_class
     *
     * @mbggenerated Tue May 28 19:03:27 SGT 2019
     */
    int updateByPrimaryKeySelective(DemoTeacherClass record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table demo_teacher_class
     *
     * @mbggenerated Tue May 28 19:03:27 SGT 2019
     */
    int updateByPrimaryKey(DemoTeacherClass record);
    
    void deleteByTeacherId(Long id);
}