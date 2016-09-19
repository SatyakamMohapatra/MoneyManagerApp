package com.moneymanager.dao.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.moneymanager.dao.ViewCategoryDao;
import com.moneymanager.dto.CateoryDto;

@Repository
public class ViewCategoryDaoImpl implements ViewCategoryDao {

    @Autowired
    private DataSource dataSource;

    @Override
    public List<CateoryDto> getAllCategory() {

        System.out.println("[ViewCategoryDaoImpl][getAllCategory]");
        String sql = "SELECT * FROM mm_cat_master WHERE mm_cat_created_by IN (0,?)";

        JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
        List<CateoryDto> listOfCategory = new ArrayList<CateoryDto>();

        List<Map<String, Object>> rows = jdbcTemplate.queryForList(sql, new Object[] { "12345" });

        for (Map row : rows) {
            CateoryDto category = new CateoryDto();
            category.setCat_id((Integer) row.get("mm_cat_id"));
            category.setCat_name((String) row.get("mm_cat_name"));
            category.setCat_description((String) row.get("mm_cat_desc"));
            category.setCat_icon((String) row.get("mm_cat_icon"));
            System.out.println(category);
            listOfCategory.add(category);

        }
        System.out.println(listOfCategory.size());
        return listOfCategory;
    }

}
