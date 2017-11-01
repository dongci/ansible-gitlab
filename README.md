ansible-gitlab
=========
```
vim inventory/hosts 

######################################
[gitlab]
192.168.122.71

[gitlab:vars]
external_url=http://192.168.122.71
gitlab_email_from=xxx@163.com
git_data_dir=/var/opt/gitlab/git-data
smtp_address=smtp.163.com
smtp_user_name=xxx@163.com
smtp_password=xxx
smtp_domain=163.com
git_user_email=xxx@163.com

######################################

```

Example Playbook
----------------
```
- hosts: gitlab
  remote_user: root
  roles:
    - { role: gitlab, tags: [ 'gitlab' ] } 
```

Install gitlab
--------------
ansible-playbook site.yml --tags gitlab


Update root password
---------------------
Open url {{ external_url }} , Update root password.

