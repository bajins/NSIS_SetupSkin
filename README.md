# NSIS_SetupSkin
NSIS打包工具，基于XML可自定义UI，基于[NSIS-UI](https://github.com/hilanmiao/NSIS-UI)修改而来

# 修改如下：
- 1、修改目录结构，使项目更加规范：
> 对图片文件统一归纳
> 对编译bat文件针对每个程序目录放在该目录下

- 2、修改函数调用，使项目更加规范，例如：
ui.nsh 73-76行

- 3、修改函数中代码块语句错误的bug：
ui.nsh 第70行

- 4、UI中白色背景时白色按钮不显示修改为黑色按钮可显示：
install.xml 24-32行

- 5、bat中删除文件时先判断是否存在

- 6、bat中遍历源程序文件夹时先判断是否为空：
makensiscode.bat 第45行

- 7、产品信息使用变量，避免输入多次可能输错：
songliwu.nsi 6-10行
