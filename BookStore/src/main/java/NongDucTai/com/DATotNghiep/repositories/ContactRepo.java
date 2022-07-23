package NongDucTai.com.DATotNghiep.repositories;

import NongDucTai.com.DATotNghiep.entities.Contact;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;


@Repository 
public interface ContactRepo extends JpaRepository<Contact, Integer> {

}