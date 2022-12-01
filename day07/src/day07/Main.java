package day07;

import java.util.ArrayList;

public class Main {
	public static void main(String[] args) {
		
		MemberHandler memberHandler = new MemberHandler();
		
		ArrayList<Member> list = memberHandler.getList();
		
//		list.add(new Member("test", "1234", "테스트1", 20, "1999-12-31"));
//		list.add(new Member("test2", "2222", "테스트2", 30, "1989-12-31"));
//		list.add(new Member("test3", "3333", "테스트3", 40, "1979-12-31"));
		
		// 아래는 출력
		
//		for(int i = 0; i < list.size(); i++) {
//			Member m = list.get(i);
//			System.out.print(m.getUserid() + " / ");
//			System.out.print(m.getUserpw() + " / ");
//			System.out.print(m.getUsername() + " / ");
//			System.out.print(m.getAge() + " / ");
//			System.out.print(m.getBirth());
//			System.out.println();
//		}
		
		for(Member m : list) {
			System.out.print(m.getUserid() + " / ");
			System.out.print(m.getUserpw() + " / ");
			System.out.print(m.getUsername() + " / ");
			System.out.print(m.getAge() + " / ");
			System.out.print(m.getBirth());
			System.out.println();
		}
		
		System.out.println("끝");
	}
}
