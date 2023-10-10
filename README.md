## Related Repositories

<table>
  <tr>
    <td colspan=2 align=center>플랫폼</td>
    <td colspan=2 align=center><a href="https://github.com/K-PaaS/ap-deployment">어플리케이션 플랫폼</a></td>
    <td colspan=2 align=center><a href="https://github.com/K-PaaS/container-platform">컨테이너 플랫폼</a></td>
  </tr>
  <tr>
    <td colspan=2 rowspan=2 align=center>포털</td>
    <td colspan=2 align=center><a href="https://github.com/K-PaaS/portal-deployment">AP 포털</a></td>
    <td colspan=2 align=center><a href="https://github.com/K-PaaS/cp-portal-release">CP 포털</a></td>
  </tr>
  <tr align=center>
    <td colspan=4><a href="https://github.com/K-PaaS/PaaS-TA-Monitoring">모니터링 대시보드</a></td>
  </tr>
  <tr align=center>
    <td rowspan=2 colspan=2><a href="https://github.com/K-PaaS/monitoring-deployment">모니터링</a></td>
    <td><a href="https://github.com/K-PaaS/PaaS-TA-Monitoring-Release">Monitoring</a></td>
    <td><a href="https://github.com/K-PaaS/paas-ta-monitoring-logsearch-release">Logsearch</a></td>
    <td><a href="https://github.com/K-PaaS/paas-ta-monitoring-influxdb-release">InfluxDB</a></td>
    <td><a href="https://github.com/K-PaaS/paas-ta-monitoring-redis-release">Redis</a></td>
  </tr>
  <tr align=center>
    <td><a href="https://github.com/K-PaaS/PAAS-TA-PINPOINT-MONITORING-RELEASE">Pinpoint</td>
    <td><a href="https://github.com/K-PaaS/PAAS-TA-PINPOINT-MONITORING-BUILDPACK">Pinpoint Buildpack</td>
    <td></td>
    <td></td>
  </tr>
  </tr>
  <tr align=center>
    <td rowspan=4 colspan=2><a href="https://github.com/K-PaaS/service-deployment">AP 서비스</a></td>
    <td><a href="https://github.com/K-PaaS/PAAS-TA-CUBRID-RELEASE">Cubrid</a></td>
    <td><a href="https://github.com/K-PaaS/ap-api-gateway-release">Gateway</a></td>
    <td><a href="https://github.com/K-PaaS/ap-glusterfs-release">GlusterFS</a></td>
    <td><a href="https://github.com/K-PaaS/ap-app-lifecycle-release">Lifecycle</a></td>
  </tr>
  <tr align=center>
    <td><a href="https://github.com/K-PaaS/PAAS-TA-LOGGING-SERVICE-RELEASE">Logging</a></td>
    <td><a href="https://github.com/K-PaaS/ap-mongodb-shard-release">MongoDB</a></td>
    <td><a href="https://github.com/K-PaaS/ap-mysql-release">MySQL</a></td>
    <td><a href="https://github.com/K-PaaS/ap-pinpoint-release">Pinpoint APM</a></td>
  </tr>
  <tr align=center>
    <td><a href="https://github.com/K-PaaS/ap-pipeline-release">Pipeline</a></td>
    <td align=center><a href="https://github.com/K-PaaS/ap-rabbitmq-release">RabbitMQ</a></td>
    <td><a href="https://github.com/K-PaaS/ap-on-demand-redis-release">Redis</a></td>
    <td><a href="https://github.com/K-PaaS/ap-source-control-release">🚩 Source Control</a></td>
  </tr>
  <tr align=center>
    <td><a href="https://github.com/K-PaaS/ap-web-ide-release">WEB-IDE</a></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr align=center>
    <td rowspan=1 colspan=2><a href="https://github.com/K-PaaS/cp-deployment">CP 서비스</a></td>
    <td><a href="https://github.com/K-PaaS/container-platform-pipeline-release">Pipeline</a></td>
    <td><a href="https://github.com/K-PaaS/container-platform-source-control-release">Source Control</a></td>
    <td></td>
    <td></td>
  </tr>
</table>
<i>🚩 You are here.</i>



  

  



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
    $ wget -O src.zip https://nextcloud.k-paas.org/index.php/s/paEdwyBRQCrPsMg/download

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
            └── apache-tomcat-8.5.91.tar.gz
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
