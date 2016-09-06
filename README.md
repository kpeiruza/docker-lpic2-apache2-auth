# docker-apache-simpleauth

*Objectives:*
- Show how simple user/group authentication works with Apache
- 5 demo users, user[1-3] plus jefe[1-2] (bosses)
- Nobody can enter without login (Username=Password)
- Every user has a personal folder
- There's a public folder for any authenticated user
- A boss can enter everywhere but another boss folder
- SERVERIP/logout will force a new login-popup, this will let you switch users ;)

Port 80 gets automatically exposed into your server, if you run it with -P. In case your 80/tcp is already binded, just drop -P and check the container's IP.

docker run -d -p 8080:80 kpeiruza/lpic2-apache2-auth

Connect to http://localhost:8080 and enjoy!
