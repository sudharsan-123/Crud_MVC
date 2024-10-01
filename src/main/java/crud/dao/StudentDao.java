package crud.dao;

import java.util.List;

import javax.persistence.EntityManager;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import crud.dto.Student;

@Repository
//@Component
public class StudentDao {
	
	
	
	
	@Autowired
	EntityManager manager;

	public void save(Student student) {
		manager.getTransaction().begin();
		manager.persist(student);
		manager.getTransaction().commit();
	}

	public List<Student> fetchAll() {
		return manager.createQuery("select x from Student x").getResultList();
	}

	public Student find(int id) {
		return manager.find(Student.class, id);
	}

	public void delete(int id) {
		manager.getTransaction().begin();
		manager.remove(find(id));
		manager.getTransaction().commit();
	}

	public void update(Student student) {
		manager.getTransaction().begin();
		manager.merge(student);
		manager.getTransaction().commit();
	}

}
	
	
	
	
	
	
	
	
	
	
	
	
	
	

//	EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("dev");
//	EntityManager entityManager = entityManagerFactory.createEntityManager();
//	EntityTransaction entityTransaction = entityManager.getTransaction();
//
//	public void save(Student student) {
//		entityTransaction.begin();
//		entityManager.persist(student);
//		entityTransaction.commit();
//
//	}
//
//	public List<Student> fetchAll() {
//		return entityManager.createQuery("select x from Student x").getResultList();
//	}
//	
//	
//	public Student find(int id)
//	{
//	  return  entityManager.find(Student.class, id);
//	}
//	
//	public void delete(int id)
//	{
//		entityManager.getTransaction().begin();
//		entityManager.remove(find(id));
//		entityManager.getTransaction().commit();
//	}
//	
//	
//	public void update(Student student)
//	{
//		entityManager.getTransaction().begin();
//		entityManager.merge(student);
//		entityManager.getTransaction().commit();
//	}
//
//}
