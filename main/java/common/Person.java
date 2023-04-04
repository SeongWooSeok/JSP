package common;

public class Person {
	/*자바빈즈 Java beans - 자바로 작성한 소프트웨어 컴포넌트
	 * 1. 기본 패키지 이외에 패키지에 위치
	 * 2. 멤버변수의 접근 제한자는 private로 선언
	 * 3. 기본 생성자 필수
	 * 4. 멤버 변수에 접근 할 수 있는 getter/setter 메소드 필요
	 * 5. getter/setter는 public 선언
	 * 
	 * VO(value object) 값 객체-데이터를 담고있는 객체
	 * DTO(Data Transfer Object) 데이터 전송 객체
	 * 
	 * */
	//멤버변수
	private String name;
	private int age;
	//생성자
	public Person() {}
	public Person(String name,int age) {
		this.name=name;
		this.age=age;
	}
	//메서드
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name=name;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age=age;
	}
}
