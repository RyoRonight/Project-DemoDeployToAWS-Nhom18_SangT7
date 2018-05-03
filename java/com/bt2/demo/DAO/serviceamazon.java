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

public class serviceamazon {

    public static String uploaddrive(String filename,String filetype)  throws IOException {
        String awsId = "AKIAJMXHVZHFDBT6NTWQ";
        String awsKey = "aJzxSvLoj7ChcWA7/eAFkxqmxnvady9WZen5254D";
        String bucketName = "bucketdemouploadfile";
        String urlReturn = "https://s3-ap-southeast-1.amazonaws.com/bucketdemouploadfile/";
        AWSCredentials credentials = new BasicAWSCredentials(
                awsId,
                awsKey);
        AmazonS3 s3client = new AmazonS3Client(credentials);
        try {
            File fileupload = new File("src/main/webapp/upload/" + filename);
            s3client.putObject(new PutObjectRequest(bucketName, filename, fileupload).withCannedAcl(CannedAccessControlList.PublicRead));
            urlReturn=urlReturn+filename;
            System.out.println("upload thanh cong");
        } catch (AmazonServiceException e) {
            System.out.println("AmazonServiceException: " + e.getMessage());
        } catch (AmazonClientException ace) {
            System.out.println("AmazonClientException: " + ace.getMessage());
        }
        return urlReturn;
    }
}