package com.bt2.demo.DAO;

import com.amazonaws.AmazonClientException;
import com.amazonaws.AmazonServiceException;
import com.amazonaws.auth.AWSCredentials;
import com.amazonaws.auth.BasicAWSCredentials;
import com.amazonaws.services.s3.AmazonS3;
import com.amazonaws.services.s3.AmazonS3Client;
import com.amazonaws.services.s3.model.CannedAccessControlList;
import com.amazonaws.services.s3.model.PutObjectRequest;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartFile;


public class serviceamazon {
	 
    public static String uploaddrive(String filename,String filetype,HttpServletRequest request)  throws IOException {
        /*String awsId = "AKIAJMXHVZHFDBT6NTWQ";
        String awsKey = "aJzxSvLoj7ChcWA7/eAFkxqmxnvady9WZen5254D";
        String bucketName = "bucketdemouploadfile";
        String urlReturn = "https://s3-ap-southeast-1.amazonaws.com/bucketdemouploadfile/";*/
        
        
        
    	String awsId = "AKIAJB7SKX4FOPB2PGRQ";
        String awsKey = "x68XmEoJDU8IF+dyhpWNxEGI6GF+2HR+H1nBoZgo";
        String bucketName = "group18uploadfile";
        String urlReturn = "https://s3-ap-southeast-1.amazonaws.com/group18uploadfile/";
        String uploadRootPath = request.getServletContext().getRealPath("upload");
        AWSCredentials credentials = new BasicAWSCredentials(
                awsId,
                awsKey);
        AmazonS3 s3client = new AmazonS3Client(credentials);

        try {
        	System.out.println(filetype);
            File fileupload = new File(uploadRootPath+"/" + filename);
            s3client.putObject(new PutObjectRequest(bucketName, filename, fileupload).withCannedAcl(CannedAccessControlList.PublicRead));
            urlReturn=urlReturn+filename;
            System.out.println(urlReturn);
            System.out.println("upload thanh cong");
            
        } catch (AmazonServiceException e) {
            System.out.println("AmazonServiceException: " + e.getMessage());
        } catch (AmazonClientException ace) {
            System.out.println("AmazonClientException: " + ace.getMessage());
        }
        return urlReturn;
    }
}