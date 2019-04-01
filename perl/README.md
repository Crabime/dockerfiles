Perl Dockerfile构建
===
`docker build -t perl:v0.1 .`

这里因为如果在docker构建过程中下载cpam、perl包会因为各种网络问题导致包下载异常缓慢甚至整个过程构建失败，其次在每个步骤中构建失败，
下一次又会重新下载，所以这里我直接返回通过本地下载perl包，然后copy到docker中。

这里我写了一个测试脚本，在test目录下，构建成功后执行测试
`docker run -it --rm --name helloPerl -v "$PWD":/usr/src/myapp perl:v0.1 perl /usr/src/myapp/HelloPerl.pl`

如何在makefile中通过cpan下载依赖包
---

有时候在dockerfile构建时需要下载我们需要的perl包，但是该包并不能通过yum或者apt-get下载，只能通过cpan下载，然而cpan又是交互式模式，有什么办法解决呢？这里我写了另外一个[Dockerfile Demo](/DockerfileCpanInstall/)，测试脚本在test目录下。

执行docker镜像构建：`docker build -f DockerfileCpanInstall -t cpan:v0.1 .`

构建完成后运行测试例子，检查镜像内下载包是否生效：`docker run -it --rm --name jsonTest -v "$PWD":/usr/src/myapp cpan:v0.1 perl /usr/src/myapp/PerlJsonTest.pl`
