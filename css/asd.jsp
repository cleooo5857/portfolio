
<?xml version="1.0" encoding="UTF-8"?>
<project xmlns="http://maven.apache.org/POM/4.0.0"
 xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
 xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 https://maven.apache.org/maven-v4_0_0.xsd">
 <modelVersion>4.0.0</modelVersion>
 <groupId>org.zerock</groupId>
 <artifactId>controller</artifactId>
 <name>ex00</name>
 <packaging>war</packaging>
 <version>1.0.0-BUILD-SNAPSHOT</version>
 <properties>
  <java-version>1.8</java-version>
  <org.springframework-version>5.0.7.RELEASE</org.springframework-version>
  <org.aspectj-version>1.6.10</org.aspectj-version>
  <org.slf4j-version>1.6.6</org.slf4j-version>
 </properties>
 <dependencies>
  <!-- Spring -->
  <dependency>
   <groupId>org.springframework</groupId>
   <artifactId>spring-context</artifactId>
   <version>${org.springframework-version}</version>
   <exclusions>
    <!-- Exclude Commons Logging in favor of SLF4j -->
    <exclusion>
     <groupId>commons-logging</groupId>
     <artifactId>commons-logging</artifactId>
    </exclusion>
   </exclusions>
  </dependency>
  <dependency>
   <groupId>org.springframework</groupId>
   <artifactId>spring-webmvc</artifactId>
   <version>${org.springframework-version}</version>
  </dependency>

  <!-- AspectJ -->
  <dependency>
   <groupId>org.aspectj</groupId>
   <artifactId>aspectjrt</artifactId>
   <version>${org.aspectj-version}</version>
  </dependency>

  <!-- Logging -->
  <dependency>
   <groupId>org.slf4j</groupId>
   <artifactId>slf4j-api</artifactId>
   <version>${org.slf4j-version}</version>
  </dependency>
  <dependency>
   <groupId>org.slf4j</groupId>
   <artifactId>jcl-over-slf4j</artifactId>
   <version>${org.slf4j-version}</version>
   <scope>runtime</scope>
  </dependency>
  <dependency>
   <groupId>org.slf4j</groupId>
   <artifactId>slf4j-log4j12</artifactId>
   <version>${org.slf4j-version}</version>
   <scope>runtime</scope>
  </dependency>
  <dependency>
   <groupId>log4j</groupId>
   <artifactId>log4j</artifactId>
   <version>1.2.15</version>
   <exclusions>
    <exclusion>
     <groupId>javax.mail</groupId>
     <artifactId>mail</artifactId>
    </exclusion>
    <exclusion>
     <groupId>javax.jms</groupId>
     <artifactId>jms</artifactId>
    </exclusion>
    <exclusion>
     <groupId>com.sun.jdmk</groupId>
     <artifactId>jmxtools</artifactId>
    </exclusion>
    <exclusion>
     <groupId>com.sun.jmx</groupId>
     <artifactId>jmxri</artifactId>
    </exclusion>
   </exclusions>
   <scope>runtime</scope>
  </dependency>

  <!-- @Inject -->
  <dependency>
   <groupId>javax.inject</groupId>
   <artifactId>javax.inject</artifactId>
   <version>1</version>
  </dependency>

  <!-- Servlet -->
<!--   
  <dependency>
   <groupId>javax.servlet</groupId>
   <artifactId>servlet-api</artifactId>
   <version>2.5</version>
   <scope>provided</scope>
  </dependency>
 -->
   <dependency>
   <groupId>javax.servlet</groupId>
   <artifactId>javax.servlet-api</artifactId>
   <version>3.1.0</version>
  </dependency>  
  <dependency>
   <groupId>javax.servlet.jsp</groupId>
   <artifactId>jsp-api</artifactId>
   <version>2.1</version>
   <scope>provided</scope>
  </dependency>
  <dependency>
   <groupId>javax.servlet</groupId>
   <artifactId>jstl</artifactId>
   <version>1.2</version>
  </dependency>

  <!-- Test -->
  <dependency>
   <groupId>junit</groupId>
   <artifactId>junit</artifactId>
   <version>4.12</version>
   <scope>test</scope>
  </dependency>
  <!-- 추가 -->
  <dependency>
   <groupId>org.springframework</groupId>
   <artifactId>spring-test</artifactId>
   <version>${org.springframework-version}</version>
  </dependency>
  <dependency>
   <groupId>org.projectlombok</groupId>
   <artifactId>lombok</artifactId>
   <version>1.18.10</version>
   <scope>provided</scope>
  </dependency>
  <dependency>
   <groupId>log4j</groupId>
   <artifactId>log4j</artifactId>
   <version>1.2.17</version>
  </dependency>
  <!-- 추가 -->
  <!-- https://mvnrepositary.com/artifaxt/com.zaxxer/HikariCP -->
  <dependency>
   <groupId>com.zaxxer</groupId>
   <artifactId>HikariCP</artifactId>
   <version>3.4.1</version>
  </dependency>
  <!-- 추가 Mybatis관련 -->
  <!-- https://mvnrepositary.com/artifact/org.mybatis/mybatis -->
  <dependency>
   <groupId>org.mybatis</groupId>
   <artifactId>mybatis</artifactId>
   <version>3.4.6</version>
  </dependency>
  <!-- https://mvnrepositary.com/artifact/org.mybatis/mybatis-spring -->
  <dependency>
   <groupId>org.mybatis</groupId>
   <artifactId>mybatis-spring</artifactId>
   <version>1.3.2</version>
  </dependency>
  <dependency>
   <groupId>org.springframework</groupId>
   <artifactId>spring-tx</artifactId>
   <version>${org.springframework-version}</version>
  </dependency>
  <dependency>
   <groupId>org.springframework</groupId>
   <artifactId>spring-jdbc</artifactId>
   <version>${org.springframework-version}</version>
  </dependency>
  <!-- https://mvnrepositary.com/artifact/org.bgee.log4jdbc-log4j2/log4jdbc-log4j2-jdbc4 -->
  <dependency>
   <groupId>org.bgee.log4jdbc-log4j2</groupId>
    <artifactId>log4jdbc-log4j2-jdbc4</artifactId>
    <version>1.16</version>
  </dependency>
  <!-- 추가 start JSON 관련-->
  <dependency>
   <groupId>com.fasterxml.jackson.core</groupId>
    <artifactId>jackson-databind</artifactId>
    <version>2.9.6</version>
  </dependency>
 </dependencies>
 <build>
  <plugins>
   <plugin>
    <artifactId>maven-eclipse-plugin</artifactId>
    <version>2.9</version>
    <configuration>
     <additionalProjectnatures>
      <projectnature>org.springframework.ide.eclipse.core.springnature</projectnature>
     </additionalProjectnatures>
     <additionalBuildcommands>
      <buildcommand>org.springframework.ide.eclipse.core.springbuilder</buildcommand>
     </additionalBuildcommands>
     <downloadSources>true</downloadSources>
     <downloadJavadocs>true</downloadJavadocs>
    </configuration>
   </plugin>
   <plugin>
    <groupId>org.apache.maven.plugins</groupId>
    <artifactId>maven-compiler-plugin</artifactId>
    <version>2.5.1</version>
    <configuration>
     <source>1.8</source>
     <target>1.8</target>
     <compilerArgument>-Xlint:all</compilerArgument>
     <showWarnings>true</showWarnings>
     <showDeprecation>true</showDeprecation>
    </configuration>
   </plugin>
   <plugin>
    <groupId>org.codehaus.mojo</groupId>
    <artifactId>exec-maven-plugin</artifactId>
    <version>1.2.1</version>
    <configuration>
     <mainClass>org.test.int1.Main</mainClass>
    </configuration>
   </plugin>
  </plugins>
 </build>
</project>
