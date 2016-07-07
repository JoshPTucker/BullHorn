package customTools;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.TypedQuery;

import model.Bhuser;

public class User {
	public static Bhuser getUserByEmail(String email){
		EntityManager em =DbUtil.getEmFactory().createEntityManager();
		String qString ="Select u from Bhuser u "
				+ "where u.useremail= :useremail";
		TypedQuery<Bhuser> q =em.createQuery(qString, Bhuser.class);
		q.setParameter("useremail", email);
		Bhuser user = null;
		try {
			user = q.getSingleResult();
		}catch(NoResultException e){
			System.out.println(e);
		}finally{
			em.close();
		}
		return user;											
	}
	public static boolean isValidUser(Bhuser user){
		EntityManager em =DbUtil.getEmFactory().createEntityManager();
		String qString ="Select count(b.bhuserid) from Bhuser b"
				+ " where b.useremail= :useremail "
				+ "and b.userpassword = :userpass";
		TypedQuery<Long> q = em.createQuery(qString,Long.class);
		boolean result=false;
		try{q.setParameter("useremail", user.getUseremail());
		q.setParameter("userpass", user.getUserpassword());
		}catch(Exception e){
			result=false;
		}
		try{
			long userId =q.getSingleResult();
			if (userId>0){
				result = true;
			}
		}catch(Exception e){
			result = false;
		}
		return result;
	}
	public static void createUser(){
}
		
	
	public static String getGravatarURL(String useremail, int size) {
		// TODO Auto-generated method stub
		String gravatarUrl="https://www.gravatar.com/avatar/"+MD5Util.md5Hex(useremail)+"="+size;
		return gravatarUrl;
	}

}
