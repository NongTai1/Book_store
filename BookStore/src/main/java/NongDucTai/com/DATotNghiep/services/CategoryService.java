package NongDucTai.com.DATotNghiep.services;

import java.io.File;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.transaction.Transactional;

import NongDucTai.com.DATotNghiep.common.Utilities;
import NongDucTai.com.DATotNghiep.entities.Category;
import NongDucTai.com.DATotNghiep.repositories.CategoryRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;


@Service
public class CategoryService {
	@Autowired
	CategoryRepo categoryRepo;
	@PersistenceContext
	protected EntityManager entityManager;

	public Category findCategoryBySeo(final String seo) {

//		String jpql = "Select p from Product p where p.seo = '" + seo + "'";
//		Query query = entityManager.createQuery(jpql, Product.class);

		String sql = "select * from tbl_category where seo = '" + seo + "'";
		Query query = entityManager.createNativeQuery(sql, Category.class);
		return (Category) query.getSingleResult();
	}

	@Transactional(rollbackOn = Exception.class)
	public void saveCategory(Category category) throws Exception {
		try {
			category.setSeo(Utilities.createSeoLinkCategory(category.getName()));
			
			categoryRepo.save(category);
		} catch (Exception e) {
			throw e;
		}
	}
}
