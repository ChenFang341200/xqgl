<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="java.io.*,java.net.*"%>
<%
	String aFileName = request.getParameter("fileName");
	String aFilePath = "admin/images/infos";
	String contentType = "application/octet-stream";

	response.setContentType(contentType);
	response.setCharacterEncoding("utf-8");

	String encodeName = aFileName;
	response.setHeader("Content-disposition", "attachment; filename="
			+ encodeName);

	String filePath = request.getRealPath(aFilePath) +"/"+ aFileName;

	BufferedInputStream localObject2 = null;
	BufferedOutputStream localBufferedOutputStream = null;
	try {
		localObject2 = new BufferedInputStream(new FileInputStream(
				filePath));
		localBufferedOutputStream = new BufferedOutputStream(
				response.getOutputStream());
		byte[] arrayOfByte = new byte[2048];
		int i;
		while (-1 != (i = ((BufferedInputStream) localObject2).read(
				arrayOfByte, 0, arrayOfByte.length))) {
			localBufferedOutputStream.write(arrayOfByte, 0, i);
		}
	} catch (IOException localIOException) {
		out.println("出现IOException." + localIOException);
	} finally {
		if (localObject2 != null)
			try {
				localObject2.close();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		if (localBufferedOutputStream != null)
			try {
				localBufferedOutputStream.close();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	}
%>