package day07;

import java.util.ArrayList;
import java.util.stream.Collectors;

// 상세 기능 및 데이터 유지
// 함수 중심, 데이터를 어떤 방식(method)으로 처리할 것인가?

public class MemberHandler {

	private ArrayList<Member> list = new ArrayList<Member>();
	
	public MemberHandler() {
		setDummy();
	}
	
	// private : 외부에서 호출하는 함수가 아니다 (내부에서만 사용한다)
	// void : 결과를 보고할 필요가 없다. 결과값을 반환하여 다른 함수와 연계하지 않는다
	private void setDummy() {
		list.add(new Member("test", "1234", "테스트1", 20, "1999-12-31"));
		list.add(new Member("test2", "2222", "테스트2", 30, "1989-12-31"));
		list.add(new Member("test3", "3333", "테스트3", 40, "1979-12-31"));
	}

	public ArrayList<Member> getList() {
		return list;
	}
	
	public boolean insert(Member user) {
		boolean flag = false;
		
		int dupSize = list.stream()								 // (리스트의 스트림을 호출하여)
			.filter(m -> m.getUserid().equals(user.getUserid())) // 필터(아이디가 일치하는 요소만 남긴다)
			.collect(Collectors.toList()).size();		// 다시 리스트로 변환하여, 사이즈를 int형으로 저장한다
		
		System.out.println(dupSize);
		
		if(dupSize == 0) {
			flag = list.add(user);
		}
		return flag;
	}
	
	public Member login(Member user) {
		Member login = null;
		// 리스트에서 id와 pw가 일치하는 계정이 있으면 login 변수에 저장한다
		for(Member m : list) {
			if(m.getUserid().equals(user.getUserid())) {
				if(m.getUserpw().equals(user.getUserpw())) {
					login = m;
					break;
				}
			}
		}
		return login;
	}
	
	public int modify(Member user) {
		int index = -1;
		
		// 아이디가 일치하는 객체가 리스트에서 몇번째에 있는지 확인하고 나서
		for(int i = 0; i < list.size(); i++) {
			Member m = list.get(i);
			if(m.getUserid().equals(user.getUserid())) {
				index = i;
				break;
			}
		}
		// 그 위치에 새로운 객체를 덮어씌운다
		if(index >= 0) {			// index 가 -1인데 set을 시도하면 예외 발생 !!
			list.set(index, user);
		}
		
		return index;	// 실패하면 -1, 0 이상이면 성공
	}
	
	
	
	
	
}
