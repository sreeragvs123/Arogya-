package com.Grp._8.backend.advices;

import com.fasterxml.jackson.annotation.JsonFilter;
import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;

import java.time.LocalDateTime;

@Data
public class ApiResponse<T>{

    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private LocalDateTime timestamp;
    private T data;
    private ApiError error;

    public ApiResponse(){
        this.timestamp = LocalDateTime.now();
    }

    public ApiResponse(ApiError apiError){
        this.timestamp = LocalDateTime.now();
        this.error = apiError;
    }

    public ApiResponse(T data){
        this.timestamp = LocalDateTime.now();
        this.data = data;
    }


}
