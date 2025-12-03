package com.octopus.Practice.Model;

import lombok.Data;
import lombok.experimental.Accessors;

import java.util.Date;

@Data
@Accessors(chain = true)
public class PostModel {

 private int id;
 private String title;
 private String text;
 private String photoURL;
 private int likes;
 private Date createdAt;
 private Date modifiedAt;
}
