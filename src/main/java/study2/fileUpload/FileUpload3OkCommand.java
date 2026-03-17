package study2.fileUpload;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import guest.GuestInterface;

public class FileUpload3OkCommand implements GuestInterface {

	@Override
	@SuppressWarnings("rawtypes")
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String realPath = request.getServletContext().getRealPath("/images/fileUpload");
		int maxSize = 1024 * 1024 * 10;	// 1회 서버에 파일 업로드 저장용량제한(10MByte)

		// 파일 업로드 처리
		MultipartRequest mulRequest = new MultipartRequest(request, realPath, maxSize, "UTF-8", new DefaultFileRenamePolicy());
		
		// 업로드된 파일의 정보를 추출해보자...
		
		Enumeration fileNames = mulRequest.getFileNames();
		
		String file = "";
		String oFileName = "";
		String fsName = "";
		
		while(fileNames.hasMoreElements()) {
			file = (String) fileNames.nextElement();
			oFileName += mulRequest.getOriginalFileName(file) + "/";
			fsName += mulRequest.getFilesystemName(file) + "/";
		}
		oFileName = oFileName.substring(0, oFileName.lastIndexOf("/"));
		fsName = fsName.substring(0, fsName.lastIndexOf("/"));
		
		System.out.println("원본 파일 : " + oFileName);
		System.out.println("원본 파일 : " + fsName);
		
		
		// BackEnd 파일체크
		if(oFileName != null && !oFileName.trim().equals("")) {
			request.setAttribute("message", "파일 정상적으로 처리 됐다고 자식아!!!");
		}
		else {
			request.setAttribute("message", "응 실패야~");
		}
		
	  request.setAttribute("url", "FileUpload3.st");
	}

}
