#! /bin/sh
#
# test.sh
# Copyright (C) 2019 itboyer <itboyer@iTBoyerdeMacBook-Air.local>
#
# Distributed under terms of the MIT license.
#

cat << EOF > install.html
<html>
<head>
<title>$ipaName</title>
<meta http-equiv="Content-Type" content="text/HTML; charset=utf-8">
<meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0;" name="viewport" />
<script type="text/javascript">
function doLocation(url)
{
  var a = document.createElement("a");
  if(!a.click) {
    window.location = url;
    return;
  }
  a.setAttribute("href", url);
  a.style.display = "none";
  document.body.appendChild(a);
  a.click();
}
</script>
</head>
<body>
<script type="text/javascript">
doLocation('itms-services://?action=download-manifest&url=$ipaBaseURL/info.plist');
</script>
</body>
</html>
EOF

cat << EOF > index.html
 <html>
<head>
<title>iOS APP 一键安装</title>
<meta http-equiv="Content-Type" content="text/HTML; charset=utf-8">
<meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0;" name="viewport" />
</head>
<body>
1、<a href="itms-services://?action=download-manifest&url=$ipaBaseURL/info.plist">内测iOS设备浏览器访问本页，点这儿一键安装《$ipaName》应用。</a>
<br /><br />
2、iPhone、iPad还可以通过拍摄以下二维码自动安装《$ipaName》APP应用：
<br />
<img src="$ipaBaseURL/icon.png" border="0">
</body>
</html>

EOF
