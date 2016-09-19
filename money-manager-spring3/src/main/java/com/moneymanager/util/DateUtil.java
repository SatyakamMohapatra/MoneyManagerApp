package com.moneymanager.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class DateUtil {

    public static String convertDate(String date) {
        Date d;
        try {
            d = new SimpleDateFormat("MM/dd/yyyy").parse(date);
            return new SimpleDateFormat("yyyy-MM-dd").format(d);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        return date;
    }
}