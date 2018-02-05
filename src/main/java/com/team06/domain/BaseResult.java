package com.team06.domain;

import java.util.List;

/**
 * Created by dllo on 18/2/5.
 */
public class BaseResult<T> {

    private int total;
    private List<T> data;

    public BaseResult(int total, List<T> data) {
        this.total = total;
        this.data = data;
    }

    public BaseResult() {
    }

    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }

    public List<T> getData() {
        return data;
    }

    public void setData(List<T> data) {
        this.data = data;
    }
}
