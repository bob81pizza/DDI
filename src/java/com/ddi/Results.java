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
    private ArrayList<String> object;
    private ArrayList<String> precipitant;
    private ArrayList<String> certainty;

    /**
     * @return the certainty
     */
    public ArrayList<String> getCertainty() {
        return certainty;
    }

    /**
     * @param certainty the certainty to set
     */
    public void setCertainty(ArrayList<String> certainty) {
        this.certainty = certainty;
    }

    /**
     * @return the object
     */
    public ArrayList<String> getObject() {
        return object;
    }

    /**
     * @param object the object to set
     */
    public void setObject(ArrayList<String> object) {
        this.object = object;
    }

    /**
     * @return the precipitant
     */
    public ArrayList<String> getPrecipitant() {
        return precipitant;
    }

    /**
     * @param precipitant the precipitant to set
     */
    public void setPrecipitant(ArrayList<String> precipitant) {
        this.precipitant = precipitant;
    }
    
}
