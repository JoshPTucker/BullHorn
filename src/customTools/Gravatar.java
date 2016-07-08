package customTools;

import model.Bhpost;
import model.Bhuser;

public class Gravatar {
	//private static String gravatarUrl;
	
	public Gravatar(){
		
	}
	public static  String setGravatarUser(Bhuser user, int size) {
		// TODO Auto-generated method stub
		String useremail=user.getUseremail();
		return "https://www.gravatar.com/avatar/" + MD5Util.md5Hex(useremail) + "=" + size;
	}
	public static String setGravatarPost(Bhpost post, int size) {
		// TODO Auto-generated method stub
		String useremail= post.getBhuser().getUseremail();
		return "https://www.gravatar.com/avatar/" + MD5Util.md5Hex(useremail) + "=" + size;
	
	}
//	public String getGravatarUrl() {
//		return gravatarUrl;
//	}
//	public static void setGravatarUrl(String gravatarUrl) {
//		Gravatar.gravatarUrl = gravatarUrl;
//	}
}
