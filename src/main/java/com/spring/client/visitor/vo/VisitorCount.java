package com.spring.client.visitor.vo;

import java.util.Date;
import lombok.Data;

@Data
public class VisitorCount {
    private Long id;
    private Integer dailyCount;
    private Integer totalCount;
    private Date countDate;

}
