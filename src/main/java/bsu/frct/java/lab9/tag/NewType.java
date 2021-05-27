package bsu.frct.java.lab9.tag;

import java.io.IOException;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.PageContext;
import javax.servlet.jsp.tagext.SimpleTagSupport;

import bsu.frct.java.lab9.entity.User;
import bsu.frct.java.lab9.entity.UserList;
import bsu.frct.java.lab9.entity.UserListHelper;
import bsu.frct.java.lab9.entity.UserList.UserExistsException;

public class NewType extends SimpleTagSupport {

    private User type;

    public void setUser(User type) {
        this.type = type;
    }

    public void doTag() throws JspException, IOException {
        String errorMessage = null;
        UserList userList = (UserList) getJspContext().getAttribute("users", PageContext.APPLICATION_SCOPE);

        if (type.getType()==null || type.getType().equals("")) {
            errorMessage = "Select ad type";

        } else {
            if (type.getName()==null || type.getName().equals("")) {
                errorMessage = "Username cannot be empty!";
            }
        }

        if (errorMessage==null) {
            try {
                userList.addUser(type);
                UserListHelper.saveUserList(userList);
            } catch (UserExistsException e) {}
        }

        getJspContext().setAttribute("errorMessage", errorMessage,PageContext.SESSION_SCOPE);
    }
}
