package NongDucTai.com.DATotNghiep.repositories;

import NongDucTai.com.DATotNghiep.entities.SaleOrder;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;


@Repository 
public interface SaleOrderRepo extends JpaRepository<SaleOrder, Integer>  {

}
