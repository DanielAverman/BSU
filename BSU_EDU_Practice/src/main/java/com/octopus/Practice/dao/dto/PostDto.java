package com.octopus.Practice.dao.dto;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import lombok.experimental.Accessors;

import java.util.Date;

@Data
@Accessors(chain = true)
public class PostDto {
    @Getter
    @Setter
    private int id;
    private String title;
    private String text;
    private String photoURL;
    private int likes;
    private Date createdAt;
    private Date modifiedAt;
}
