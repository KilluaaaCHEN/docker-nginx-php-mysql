### Nginx + PHP (multi-version) + Mysql + Redis Docker-compose

1. Install Dcoker
    [Docker Docs](https://www.docker.com/)
2. Clone project
    - Git
        ```bash
        git clone git@github.com:KilluaChen/docker-nginx-php-mysql.git
        ```
    - Download
3. Append to `/etc/hosts` file
    ```bash
     # Docker
     127.0.0.1       localhost
     127.0.0.1       test.pma.com
     127.0.0.1       test.56.com
     127.0.0.1       test.74.com
     ```
3. Command
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
4. Visit
    - Localhost [http://localhost](http://localhost/index.html)
    - PhpMyAdmin [http://test.pma.com](http://test.pma.com)
    - php5.6 [http://test.56.com](http://test.56.com)
    - php7.4 [http://test.74.com](http://test.74.com)
    
5. PS
    - 确保`80`,`3306`,`6479`端口没有被占用
    - 下载`Docker 镜像`过慢可以使用阿里的[容器镜像服务](https://cr.console.aliyun.com/cn-hangzhou/instances/mirrors) 
    - 更多设置参考 [https://github.com/nanoninja/docker-nginx-php-mysql](https://github.com/nanoninja/docker-nginx-php-mysql)
    
     
    