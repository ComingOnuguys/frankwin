package com.dg.bean;

import java.io.Serializable;

public class Menu implements Serializable {

    private static final long serialVersionUID = 410202860691610816L;
    private String id;
    private String menuCode;
    private String menuName;
    private String menuUrl;
    private String parentMenuId;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getMenuCode() {
        return menuCode;
    }

    public void setMenuCode(String menuCode) {
        this.menuCode = menuCode;
    }

    public String getMenuName() {
        return menuName;
    }

    public void setMenuName(String menuName) {
        this.menuName = menuName;
    }

    public String getMenuUrl() {
        return menuUrl;
    }

    public void setMenuUrl(String menuUrl) {
        this.menuUrl = menuUrl;
    }

    public String getParentMenuId() {
        return parentMenuId;
    }

    public void setParentMenuId(String parentMenuId) {
        this.parentMenuId = parentMenuId;
    }

    @Override
    public String toString() {
        return "Menu [id=" + id + ", menuCode=" + menuCode + ", menuName=" + menuName + ", menuUrl=" + menuUrl
                + ", parentMenuId=" + parentMenuId + "]";
    }
}
