package NongDucTai.com.DATotNghiep.repositories;

import NongDucTai.com.DATotNghiep.entities.SaleOrderProducts;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;


@Repository 
public interface SaleOrderProductsRepo extends JpaRepository<SaleOrderProducts, Integer>{

}
