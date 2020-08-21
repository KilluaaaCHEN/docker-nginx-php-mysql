### Nginx + PHP (multi-version) + Mysql + Redis Docker-compose

1. Install Dcoker
    - Docker
        [https://docs.docker.com/engine/install/](https://docs.docker.com/engine/install/)
    - Docker-compose
        [https://docs.docker.com/compose/install/](https://docs.docker.com/compose/install/)
        > 下载太慢更可以换源,`linux`下可以执行以下命令,注意更换最新版本号
        ```
        curl -L https://get.daocloud.io/docker/compose/releases/download/1.26.2/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
      ```
2. Start Docker Service
    ```
   $ sudo systemctl start docker
   ```
3. Clone project
    - Git  `git clone git@github.com:KilluaChen/docker-nginx-php-mysql.git`
    - [Download](https://github.com/KilluaChen/docker-nginx-php-mysql/archive/master.zip)
4. Append to `/etc/hosts` file
    ```bash
     # Docker
     127.0.0.1       localhost
     127.0.0.1       test.pma.com
     127.0.0.1       test.56.com
     127.0.0.1       test.74.com
     ```
5. Command
    ```bash
   # Run
   $ docker-compose -p docker-nginx-php-mysql up
   
   # Run Daemon
   $ docker-compose -p docker-nginx-php-mysql up -d
   
   # Stop
   $ docker-compose -p docker-nginx-php-mysql stop
   
   # Delete
   $ docker-compose -p docker-nginx-php-mysql down
   ```
6. Visit
    - Localhost [http://localhost](http://localhost/index.html)
    - PhpMyAdmin [http://test.pma.com](http://test.pma.com)
    - php5.6 [http://test.56.com](http://test.56.com)
    - php7.4 [http://test.74.com](http://test.74.com)
    
7. PS
    - 确保`80`,`3306`,`6479`端口没有被占用
    - 下载`Docker 镜像`过慢可以使用阿里的[容器镜像服务](https://cr.console.aliyun.com/cn-hangzhou/instances/mirrors) 
    - 更多设置参考 [https://github.com/nanoninja/docker-nginx-php-mysql](https://github.com/nanoninja/docker-nginx-php-mysql)
    
     
    