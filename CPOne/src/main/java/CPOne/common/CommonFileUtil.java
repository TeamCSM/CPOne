package CPOne.common;

import java.awt.image.BufferedImage;
import java.io.File;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;

import org.imgscalr.Scalr;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.multipart.MultipartFile;

public class CommonFileUtil {
	
	public static String fileUpLoad(MultipartFile file, String fileDir, HttpServletRequest request) throws Exception{

		//file info
		String originalName = file.getOriginalFilename();
		byte[] fileData = file.getBytes();
		
		//server info
        String savedName = CommonUtil.getUUID()+"_"+originalName;
		String serverPath = createPath(fileDir, request);
		
		//저장 경로에 Dir 생성
		String savedPath = pathDirCreate(serverPath);
		File target = new File(serverPath+savedPath,savedName);
		
		//원본파일 저장
		FileCopyUtils.copy(fileData, target);
		
		//원본 파일의 확장자 추출
		String formatName = originalName.substring(originalName.lastIndexOf(".")+1);
		
		//이미지 파일이면 썸네일, 아니면 아이콘을 출력
		String uploadedFileName = null;
        if(CommonUtil.typeConfImg(formatName) != null) {
             uploadedFileName = makeThumbnail(serverPath, savedPath, savedName);
        }else {
             uploadedFileName = makeIcon(serverPath, savedPath, savedName);
        }
        return uploadedFileName;
	}

	public static String fileDownLoad() {

		return "";
	}

	private static String createPath(String fileDir, HttpServletRequest request) {
		String serverPath = request.getSession().getServletContext().getRealPath("/");
		String upLoadPath = CommonFinalString.FILE_DIR+File.separator+ fileDir;
		String upLoadFullPath = serverPath+upLoadPath;
		makeDir(serverPath, CommonFinalString.FILE_DIR, upLoadPath);
		
		return upLoadFullPath;
	}
	
	private static String pathDirCreate(String serverPath) {
		
		String[] temp = CommonUtil.currentTime().split(" ");
		String[] time = temp[0].split("-");
		String yearPath = File.separator+time[0];
        String monthPath = yearPath + File.separator+time[1];
        String datePath = monthPath + File.separator+time[2];
        
        makeDir(serverPath, yearPath, monthPath, datePath);
		
		return datePath;
	}
	
	private static void makeDir(String serverPath, String... paths) {
        if(new File(paths[paths.length-1]).exists()) {
             return;
        }
        for(String path : paths) {
             File dirPath = new File(serverPath + path);
             if(! dirPath.exists()) {
                  dirPath.mkdir();
             }
        }
  }
	
	//썸네일 생성
    private static String makeThumbnail(String uploadPath, String path, String fileName)throws Exception {
          
          BufferedImage sourceImg = ImageIO.read(new File(uploadPath+path, fileName));
          
          BufferedImage destImg = Scalr.resize(sourceImg, Scalr.Method.AUTOMATIC, Scalr.Mode.FIT_TO_HEIGHT,100);
          
          String thumbnailName = uploadPath+path+File.separator+"s_"+fileName;
          
          
          
          File newFile = new File(thumbnailName);
          String formatName = fileName.substring(fileName.lastIndexOf(".")+1);
          
          ImageIO.write(destImg, formatName.toUpperCase(), newFile);
          return thumbnailName.substring(uploadPath.length()).replace(File.separatorChar, '/');
    }
    //아이콘 생성
    private static String makeIcon(String uploadPath, String path, String fileName) throws Exception{
          
          String iconName = uploadPath + path + File.separator+fileName;
          
          return iconName.substring(uploadPath.length()).replace(File.separatorChar, '/');
    }

}
