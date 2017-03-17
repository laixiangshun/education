package com.foxera.background.mongodao;
import java.util.List;
import java.util.Map;

import org.bson.Document;

import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;


public interface MongoDBDao {
	 /** 
     *  
     * 方法名：getDb 
     * 作者：zhouyh 
     * 创建时间：2014-8-30 下午03:53:40 
     * 描述：获取指定的mongodb数据库 
     * @param dbName 
     * @return 
     */  
    public MongoDatabase getDb(String dbName);  
    /** 
     *  
     * 方法名：getCollection 
     * 作者：zhouyh 
     * 创建时间：2014-8-30 下午03:54:43 
     * 描述：获取指定mongodb数据库的collection集合 
     * @param dbName    数据库名 
     * @param collectionName    数据库集合 
     * @return 
     */  
    public MongoCollection<Document> getCollection(String dbName, String collectionName);  
    /** 
     *  
     * 方法名：inSert 
     * 作者：zhouyh 
     * 创建时间：2014-8-30 下午04:07:35 
     * 描述：向指定的数据库中添加给定的keys和相应的values 
     * @param dbName 
     * @param collectionName 
     * @param keys 
     * @param values 
     * @return 
     */  
    public boolean inSert(Map<String, String> keyValues);  
    /** 
     *  
     * 方法名：delete 
     * 作者：zhouyh 
     * 创建时间：2014-8-30 下午04:09:00 
     * 描述：删除数据库dbName中，指定keys和相应values的值 
     * @param dbName 
     * @param collectionName 
     * @param keys 
     * @param values 
     * @return 
     */  
    public boolean delete(Map<String, String> keyValues);  
    /** 
     *  
     * 方法名：find 
     * 作者：zhouyh 
     * 创建时间：2014-8-30 下午04:11:11 
     * 描述：从数据库dbName中查找指定keys和相应values的值 
     * @param dbName 
     * @param collectionName 
     * @param keyValues 
     * @param num 
     * @return 
     */  
    public List<Document> find(Map<String, String> keyValues, int num);  
    /** 
     *  
     * 方法名：update 
     * 作者：zhouyh 
     * 创建时间：2014-8-30 下午04:17:54 
     * 描述：更新数据库dbName，用指定的newValue更新oldValue 
     * @param dbName 
     * @param collectionName 
     * @param oldValue 
     * @param newValue 
     * @return 
     */  
    public boolean update(Map<String, String> oldkeyValues,Map<String, String> newkeyValues);  
    /** 
     *  
     * 方法名：isExit 
     * 作者：zhouyh 
     * 创建时间：2014-8-30 下午04:19:21 
     * 描述：判断给定的keys和相应的values在指定的dbName的collectionName集合中是否存在 
     * @param dbName 
     * @param collectionName 
     * @param keys 
     * @param values 
     * @return 
     */  
    public boolean isExit(String dbName, String collectionName, String key, Object value);  
}
