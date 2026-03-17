package member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class MemberMainCommand implements MemberInterface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String mid = (String) session.getAttribute("sMid");
		int level = (int) session.getAttribute("sLevel");
		
		MemberDAO dao = new MemberDAO();
		
		MemberVO vo = dao.getMemberIdCheck(mid);
		
		// 방명록에 글쓴 횟수 처리
		// 자동 등업(방명록에 5회 이상 글을 올렸을시 '준회원'에서 '정회원'으로 자동 등업처리(단, 방명록의 글은 하루에 여러번 등록해도 1회로 처리)
		int guestCnt = dao.getGuestCnt(mid, vo.getName(), vo.getNickName(), level);
		
		request.setAttribute("point", vo.getPoint());
		request.setAttribute("todayCnt", vo.getTodayCnt());
		request.setAttribute("guestCnt", guestCnt);

	}

}
