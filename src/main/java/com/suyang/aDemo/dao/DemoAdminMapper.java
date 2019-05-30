package com.suyang.aDemo.dao;

import com.suyang.aDemo.dao.DemoAdminExample;
import com.suyang.aDemo.model.DemoAdmin;

import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface DemoAdminMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table demo_admin
     *
     * @mbggenerated Tue May 28 16:37:59 SGT 2019
     */
    int countByExample(DemoAdminExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table demo_admin
     *
     * @mbggenerated Tue May 28 16:37:59 SGT 2019
     */
    int deleteByExample(DemoAdminExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table demo_admin
     *
     * @mbggenerated Tue May 28 16:37:59 SGT 2019
     */
    int deleteByPrimaryKey(Long id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table demo_admin
     *
     * @mbggenerated Tue May 28 16:37:59 SGT 2019
     */
    int insert(DemoAdmin record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table demo_admin
     *
     * @mbggenerated Tue May 28 16:37:59 SGT 2019
     */
    int insertSelective(DemoAdmin record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table demo_admin
     *
     * @mbggenerated Tue May 28 16:37:59 SGT 2019
     */
    List<DemoAdmin> selectByExample(DemoAdminExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table demo_admin
     *
     * @mbggenerated Tue May 28 16:37:59 SGT 2019
     */
    DemoAdmin selectByPrimaryKey(Long id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table demo_admin
     *
     * @mbggenerated Tue May 28 16:37:59 SGT 2019
     */
    int updateByExampleSelective(@Param("record") DemoAdmin record, @Param("example") DemoAdminExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table demo_admin
     *
     * @mbggenerated Tue May 28 16:37:59 SGT 2019
     */
    int updateByExample(@Param("record") DemoAdmin record, @Param("example") DemoAdminExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table demo_admin
     *
     * @mbggenerated Tue May 28 16:37:59 SGT 2019
     */
    int updateByPrimaryKeySelective(DemoAdmin record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table demo_admin
     *
     * @mbggenerated Tue May 28 16:37:59 SGT 2019
     */
    int updateByPrimaryKey(DemoAdmin record);
}