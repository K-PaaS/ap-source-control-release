## 🚨 어플리케이션 플랫폼 기술지원 종료 
#### 어플리케이션 플랫폼 기술지원 종료 일정 : 2025년 1월 31일  
지원 종료일 전까지 기 보급된 어플리케이션 플랫폼 유지보수를 위한 업그레이드 버전 및 보안 패치 제공  
지원 종료 이후 보안문제가 발생하여도 기술지원이 불가  

## Related Repositories

<table>
  <tr>
    <td colspan=2 align=center>플랫폼</td>
    <td colspan=2 align=center><a href="https://github.com/K-PaaS/cp-deployment">컨테이너 플랫폼</a></td>
    <td colspan=2 align=center><a href="https://github.com/K-PaaS/sidecar-deployment">사이드카</a></td>
    <td colspan=2 align=center><a href="https://github.com/K-PaaS/ap-deployment">어플리케이션 플랫폼</a></td>
  </tr>
  <tr>
    <td colspan=2 align=center>포털</td>
    <td colspan=2 align=center><a href="https://github.com/K-PaaS/cp-portal-release">CP 포털</a></td>
    <td colspan=2 align=center>-</td>
    <td colspan=2 align=center><a href="https://github.com/K-PaaS/portal-deployment">AP 포털</a></td>
  </tr>
  <tr align=center>
    <td colspan=2 rowspan=9>Component<br>/ 서비스</td>
    <td colspan=2><a href="https://github.com/K-PaaS/cp-portal-common-api">Common API</a></td>
    <td colspan=2>-</td>
    <td colspan=2><a href="https://github.com/K-PaaS/ap-mongodb-shard-release">MongoDB</a></td>
  </tr>
  <tr align=center>
    <td colspan=2><a href="https://github.com/K-PaaS/cp-metrics-api">Metric API</a></td>
    <td colspan=2>  </td>
    <td colspan=2><a href="https://github.com/K-PaaS/ap-mysql-release">MySQL</a></td>
  </tr>
  <tr align=center>
    <td colspan=2><a href="https://github.com/K-PaaS/cp-portal-api">Portal API</a></td>
    <td colspan=2>  </td>
    <td colspan=2><a href="https://github.com/K-PaaS/ap-pipeline-release">Pipeline</a></td>
  </tr>
  <tr align=center>
    <td colspan=2><a href="https://github.com/K-PaaS/cp-portal-ui">Portal UI</a></td>
    <td colspan=2>  </td>
    <td colspan=2><a href="https://github.com/K-PaaS/ap-rabbitmq-release">RabbintMQ</a></td>
  </tr>
  <tr align=center>
    <td colspan=2><a href="https://github.com/K-PaaS/cp-portal-service-broker">Service Broker</a></td>
    <td colspan=2>  </td>
    <td colspan=2><a href="https://github.com/K-PaaS/ap-on-demand-redis-release">Redis</a></td>
  </tr>
  <tr align=center>
    <td colspan=2><a href="https://github.com/K-PaaS/cp-terraman">Terraman API</a></td>
    <td colspan=2>  </td>
    <td colspan=2><a href="https://github.com/K-PaaS/ap-source-control-release">🚩 SoureceControl</a></td>
  </tr>
</table>
<i>🚩 You are here.</i>

## Notice
#### 릴리즈의 경로가 https://nextcloud.paas-ta.org/ 에서 https://nextcloud.k-paas.org/ 로 변경되었습니다  




  

  



## ap-source-control-release

### Application Platform Source Control Release Configuration

  - haproxy : 1 machine  
  - mariadb : 1 machine  
  - scm-server : 1 machine  
  - ap-source-control-api : 1 machine
  - ap-source-control-broker : 1 machine
  - ap-source-control-ui : 1 machine

### Create Application Platform Source Control Release
  - Download the latest Application Platform Source Control Release
    ```   
    $ git clone https://github.com/K-PaaS/ap-source-control-release.git
    $ cd ap-source-control-release
    ```  
  - Download & Copy "source files" into the src directory  
    ```    
    ## download source files  
    $ wget -O src.zip https://nextcloud.k-paas.org/index.php/s/mZgxZGKzycBimNf/download

    ## unzip download source files  
    $ unzip src.zip   

    ## src directory  
    src  
        ├── bosh-helpers  
        │   ├── ctl_setup.sh  
        │   ├── ctl_utils.sh  
        │   └── monit_debugger  
        ├── haproxy  
        │   └── haproxy-1.6.5.tar.gz  
        ├── java8  
        │   └── server-jre-8u121-linux-x64.tar.gz  
        ├── mariadb  
        │   └── mariadb-10.5.17-linux-x86_64.tar.gz
        ├── scm-server  
        │   └── scm-server-1.55-app.tar.gz  
        ├── ap-source-control-api
        │   └── ap-source-control-api.jar
        ├── ap-source-control-broker
        │   └── ap-source-control-broker.jar
        ├── ap-source-control-ui
        │   └── ap-source-control-ui.war
        └── tomcat  
            └── apache-tomcat-8.5.96.tar.gz
    ```
  - Create Application Platform Source Control Release
    ```  
    ## <VERSION> :: release version (e.g. 1.1.1)  
    ## <RELEASE_TARBALL_PATH> :: release file path (e.g. /home/ubuntu/workspace/ap-source-control-release-<VERSION>.tgz)
    $ bosh -e <bosh_name> create-release --name=ap-source-control --version=<VERSION> --tarball=<RELEASE_TARBALL_PATH> --force
    ```  
### Deployment    
  - https://github.com/K-PaaS/service-deployment

## Contributors ✨
<a href="https://github.com/K-PaaS/ap-source-control-release/graphs/contributors">
  <img src="https://contrib.rocks/image?repo=K-PaaS/ap-source-control-release" />
</a>
