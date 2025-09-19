# Sử dụng Tomcat ổn định với JDK 17 (phù hợp hơn NetBeans build)
FROM tomcat:10.1-jdk17

# Xóa webapp mặc định
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy file WAR đã build từ NetBeans vào Tomcat

COPY dist/cart09.war /usr/local/tomcat/webapps/ROOT.war

# Expose port 8080 (Render sẽ map vào $PORT)
EXPOSE 8080

# Khởi động Tomcat
CMD ["catalina.sh", "run"]
