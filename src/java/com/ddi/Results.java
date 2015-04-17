/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.ddi;

import java.util.ArrayList;

/**
 *
 * @author cwm24
 */
public class Results {
    private ArrayList<ArrayList> results;
    private String drug1;
    private String drug2;

    /**
     * @return the results
     */
    public ArrayList<ArrayList> getResults() {
        return results;
    }

    /**
     * @param results the results to set
     */
    public void setResults(ArrayList<ArrayList> results) {
        this.results = results;
    }

    /**
     * @return the drug1
     */
    public String getDrug1() {
        return drug1;
    }

    /**
     * @param drug1 the drug1 to set
     */
    public void setDrug1(String drug1) {
        this.drug1 = drug1;
    }

    /**
     * @return the drug2
     */
    public String getDrug2() {
        return drug2;
    }

    /**
     * @param drug2 the drug2 to set
     */
    public void setDrug2(String drug2) {
        this.drug2 = drug2;
    }


}
