

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
junmark1234

将生成的rclone.conf.gpg上传到这个存储库的根目录(已经有一个了，那就是我的根目录。 你应该删除它。) 

点击 `Settings` ，点击`Secrets`，创建一个名为 `GPG_PASSPHRASE`, 的存储库秘密，将你的密码粘贴进去，点击保存。  

然后编辑这个文档，添加或删除某物。然后点击保存(这将启动工作流程)。

