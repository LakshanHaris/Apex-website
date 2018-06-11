/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.jcodesprint.apex.repo;

import edu.jcodesprint.apex.model.Parent;
import java.io.Serializable;

/**
 *
 * @author Lakshan Harischandra
 */
public interface ParentDAO {
    Serializable addParent(Parent parent);
    boolean  deleteParent(int parentIdNo);
    boolean  updateParent(Parent parent);
    public Parent SearchParent(int parentIdNo);
}
