Perl Dockerfile构建
===
`docker build -t perl:v0.1 .`

这里因为如果在docker构建过程中下载cpam、perl包会因为各种网络问题导致包下载异常缓慢甚至整个过程构建失败，其次在每个步骤中构建失败，
下一次又会重新下载，所以这里我直接返回通过本地下载perl包，然后copy到docker中。

这里我写了一个测试脚本，在test目录下，构建成功后执行测试
`docker run -it --rm --name helloPerl -v "$PWD":/usr/src/myapp perl:v0.1 perl /usr/src/myapp/HelloPerl.pl`
