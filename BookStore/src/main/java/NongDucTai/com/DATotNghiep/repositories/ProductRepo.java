package NongDucTai.com.DATotNghiep.repositories;

import java.util.List;

import javax.persistence.Query;

import NongDucTai.com.DATotNghiep.entities.Product;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;



@Repository 
public interface ProductRepo extends JpaRepository<Product, Integer> {

	
	
}