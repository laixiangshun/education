package com.foxera.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintStream;
import java.lang.reflect.Field;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import jxl.Sheet;
import jxl.Workbook;

/**
 * 导入excel数据到数据库中
 * 
 * @author fox
 * @date 2017-03-07
 */
public class ReadExcel {
	/**
	 * 
	 * 查询指定目录中excel中所有的数据
	 * 
	 * @param file
	 *            文件完整路径;例：file="C:\\Users\\fox\\Downloads\\用户统计表.xls"
	 * @param fieldNames
	 *            要存入对象的属性名集合;例：fieldNames={"id","userName","age","sex"}
	 * @param fieldTypes
	 *            对应要存入对象的属性数据类型集合,支持的类型有int,string,long,double,date,timestamp;例
	 *            ：fieldTypes={"int","String","int","int"}
	 * @param clazz
	 *            要存入对象的类型实例;例：User.class
	 * @param exceptionFileName
	 *            导入出错后异常信息存的文件名，包括后缀名；例：2017-03-07.txt
	 * @return
	 * @throws IOException
	 */
	public static <T> List<T> getDataByExcel(String file, String[] fieldNames,
			String[] fieldTypes, Class<T> clazz, String exceptionFileName)
			throws IOException {
		if(file.endsWith(".xls")||file.endsWith(".xlsx")){
			if(file.endsWith("xlsx")){
				file.replace(".xlsx", "xls");
			}
		}else{
			return null;
		}
		List<T> list = new ArrayList<T>();
		StringBuffer exceptionInf=new StringBuffer();
		try {
			//String path=file.replace("\\\\","\\\\\\\\");
			System.out.println(file);
			InputStream in =new FileInputStream(file);
			Workbook rwb = Workbook.getWorkbook(in);
			Sheet rs = rwb.getSheet(0);
			int clos = rs.getColumns();// 得到所有的列
			int rows = rs.getRows();// 得到所有的行
			System.out.println("clos:" + clos + " rows:" + rows);
			T tagerClass=null;
			for (int i = 1; i < rows; i++) {
				tagerClass=clazz.newInstance();
				for (int j = 0; j < clos; j++) {
					Field field = null;
					try {
						field = tagerClass.getClass().getDeclaredField(
								fieldNames[j]);
					} catch (NoSuchFieldException e) {
						field = tagerClass.getClass().getSuperclass()
								.getDeclaredField(fieldNames[j]);
					}
					// 第一个是列数，第二个是行数
					String fieldValue = rs.getCell(j, i).getContents();// 默认最左边编号也算一列
					field.setAccessible(true);
					switch (fieldTypes[j].toUpperCase()) {
					case "INT":
						field.set(tagerClass, Integer.parseInt(fieldValue));
						break;
					case "STRING":
						field.set(tagerClass, fieldValue);
						break;
					case "DOUBLE":
						field.set(tagerClass, Double.parseDouble(fieldValue));
						break;
					case "LONG":
						field.set(tagerClass, Long.parseLong(fieldValue));
						break;
					case "DATE":
						SimpleDateFormat sdf = new SimpleDateFormat(
								"yyyy-MM-dd");
						if (fieldValue.trim().length() > 10) {
							sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
						} else if (fieldValue.trim().length() > 16) {
							sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
						}
						Date date = sdf.parse(fieldValue);
						field.set(tagerClass, date);
						break;
					case "TIMESTAMP":
						Timestamp ts = Timestamp.valueOf(fieldValue);
						field.set(tagerClass, ts);
						break;
					default:
						break;
					}
				}
				list.add(tagerClass);
			}
		} catch (Exception e) {
			e.printStackTrace();
			// 将错误信息存入，以便于导出错误信息
			// String basepath = request.getSession().getServletContext()
			// .getRealPath(File.separator);
			String path = (HttpsUtil.getConfig("exception_inf_path") + exceptionFileName)
					.replace("/", File.separator);
			File files = new File(HttpsUtil.getConfig("exception_inf_path"));
			if (!files.exists()) {
				files.setWritable(true, false);
				boolean flag = files.mkdirs();
				if (!flag) {
					System.err.println("文件路径创建失败");
				}
			}
			PrintStream ps = new PrintStream(path);
			e.printStackTrace(ps);
			ps.close();
			return null;
		}
		return list;

	}

}
