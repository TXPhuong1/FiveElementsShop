package com.project.DuAnTotNghiep.repository;

import com.project.DuAnTotNghiep.entity.Account;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.Date;
import java.util.List;

public interface AccountRepository extends JpaRepository<Account, Long>{

    Account findByEmail(String email);


    @Query(value = "SELECT CONCAT('T', MONTH(a.create_date)) AS month, COUNT(a.id) AS count FROM Account a" +
            " WHERE a.create_date >= '2023-01-01' AND a.create_date <= '2023-12-31'" +
            "GROUP BY MONTH(create_date)", nativeQuery = true)
    List<Object[]> getMonthlyAccountStatistics(String startDate, String endDate);
}
