package com.octopus.Practice.mapper;


import com.octopus.Practice.Model.PostModel;
import com.octopus.Practice.dao.dto.PostDto;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;

import java.util.List;

@Mapper
public interface PostMapper {
    List<PostDto> toDtoList(List<PostModel> post);
   //@Mapping(source = "PostDto", target = "PostModel")
    PostDto toDto(PostModel post);
    PostModel fromDtoToPostModel(PostDto dto);
    List<PostModel> fromDtoList(List<PostDto> dto);
}
