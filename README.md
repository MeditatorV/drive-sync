# How to use

```shell 
rclone config --config=./rclone.conf
```

Go to <a href="https://gpg4win.org/thanks-for-download.html" target="_blank">GPG4Win</a> and download the latest GPG4win.
Install it.
And config your rclone. This is for OneDrive -> Google Drive. So please use:

```
name: onedrive            For OneDrive
name: gdrive_mirror       For Google Drive
```

(You can change them in `copy.sh`)
After you done that, find your config and use:

```shell
gpg --symmetric --cipher-algo AES256 rclone.conf
```

It'll ask you for a passphrase, pick one you can remember.
Upload the generated rclone.conf.gpg to this repository's root directory(there is one already, that's mine. You should delete it.).
Go to `Settings` and click `Secrets`, create a repository secret called `GPG_PASSPHRASE`, paste your passphrase into it, click save.
Then edit this document, add sth. or delete sth. Then click save(This'll start the workflow).

**That's it, it'll run per 6 hrs.**

# IMPORTANT

**I also use this project, so you should delete all text below the 24th line. Then delete all the .sh file except `copy.sh` and `decrypt.sh`**

https://www.bilibili.com/video/BV1Nt4y167c4?t=814

1、下载rclone  www.rclone.org

2、复制rclone.exe到文件夹中，运行

```shell
rclone config --config=./rclone.conf
```

3、到 <a href="https://gpg4win.org/thanks-for-download.html" target="_blank">GPG4Win</a> 下载最新的 GPG4win，安装
4、配置rclone,

```
name: onedrive            For OneDrive
name: gdrive_mirror       For Google Drive
```

5、运行以下命令加密

```shell
gpg --symmetric --cipher-algo AES256 rclone.conf
```

它会要求你输入一个密码，选一个你能记住的。  

将生成的rclone.conf.gpg上传到这个存储库的根目录(已经有一个了，那就是我的根目录。 你应该删除它。) 

点击 `Settings` ，点击`Secrets`，创建一个名为 `GPG_PASSPHRASE`, 的存储库秘密，将你的密码粘贴进去，点击保存。  

然后编辑这个文档，添加或删除某物。然后点击保存(这将启动工作流程)。

