### Nginx + PHP + Mysql + Redis Docker-compose

1. Install Dcoker
    - Docker
        - centos
            ```bash
            $ sudo yum install -y yum-utils

            $ sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
            $ sudo yum install docker-ce docker-ce-cli containerd.io
            ```
        - [Other systems](https://docs.docker.com/engine/install/)
    - Docker-compose
        - centos
            ```
            curl -L https://get.daocloud.io/docker/compose/releases/download/1.26.2/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
            ```
        - [Other systems](https://docs.docker.com/compose/install/)

2. Start Docker Service
    ```
   $ sudo systemctl start docker
   ```
3. Clone project
    - Git  `git clone git@github.com:KilluaChen/docker-nginx-php-mysql.git`
    - [Download](https://github.com/KilluaChen/docker-nginx-php-mysql/archive/master.zip)
1. Create log dir
    ```
    $ cd docker-nginx-php-mysql
    $ mkdir -p logs/error & mkdir -p logs/access
    ```
4. Append to `/etc/hosts` file (Optional)
    ```bash
     # Docker
     127.0.0.1       localhost
     127.0.0.1       test.pma.com
     ```
5. Command
    ```bash
   # Run
   $ docker-compose up

   # Start single service
   $ docker-compose up mysql
   
   # Run Daemon
   $ docker-compose up -d
   
   # Stop
   $ docker-compose stop
   
   # Delete
   $ docker-compose down
   ```
6. Visit
    - Localhost [http://localhost](http://localhost/index.html)
    - PhpMyAdmin [http://test.pma.com](http://test.pma.com)
7.  multi-version PHP
    - 在Docker-compose 里面添加多个php-fpm服务,并定义成不同service 名称
    - 在nginx 配置中,修改`fastcgi_pass`.监听不同的service即可完成多版本PHP

7. PS
    - 确保`80`,`3306`,`6479`端口没有被占用
    - 下载`Docker 镜像`过慢可以使用阿里的[容器镜像服务](https://cr.console.aliyun.com/cn-hangzhou/instances/mirrors) 
    - 如果挂载的目录没有权限,需要添加file sharing 
        > You can configure shared paths from Docker -> Preferences... -> File Sharing.
    - 更多设置参考 [https://github.com/nanoninja/docker-nginx-php-mysql](https://github.com/nanoninja/docker-nginx-php-mysql)
    
     
    
