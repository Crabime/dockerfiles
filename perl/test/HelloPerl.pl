use strict;
use warnings FATAL => 'all';

#下面是多行注释
=pdo 多行注释

=cut

print("hello world\n");
print "hello world\n";

my $a = 10;

my $var1 = <<"EOF";
这里是一个Here文档，使用双引号，双引号内的变量是可以被解析的
a = $a
EOF
print "$var1\n";


my $var2 = <<'EOF';
这里是一个Here文档，使用单引号
a = $a
EOF
print "$var2\n";

my $result = "crabime教程 \"runoob\"";
print "$result\n";

# 字符串相加
print "我的就是我的"."你的还是你的"."\n";

# 特殊字符不可以放入字符串中
print "文件名".__FILE__."\n";
print "行号".__LINE__."\n";
print "包名".__PACKAGE__."\n";

# 数组变量以@开头，访问数组元素使用$ + 变量名 + [索引值]格式读取
my @array1 = (1, 2, 'Hello');
my @array2 = qw/这是 一个 数组/;
# 数组索引从0开始，复数从反方向开始
my @sites = qw/gooalgene google taobao runoob/;

print "$sites[0]\n";
print "$sites[1]\n";
print "$sites[2]\n";
print "$sites[-1]\n";

# perl提供按序列输出数组形式，起始值 + .. + 结束值
my @var_10 = (1 .. 10);
my @var_20 = (10 .. 20);
my @var_abc = ('a' .. 'z');
print "@var_10\n";
print "@var_20\n";
print "@var_abc\n";

# 数组长度返回的是数组物理长度，而不是元素的个数
my @array = (1 .. 3);
$array[50] = 4;
my $size2 = @array;
my $max_index = $#array;
print "数组大小： $size2\n";
print "最大索引： $max_index\n";

# 添加和删除元素
print "1. \@sites = @sites\n";

# 在数组末尾添加一个元素
push(@sites, "baidu");
print "2. \@sites = @sites\n";

# 在数组开头添加一个元素
unshift(@sites, "weibo");
print "3. \@sites = @sites\n";

# 删除数组末尾元素
pop(@sites);
print "4. \@sites = @sites\n";

# 移除数组开头的元素
shift(@sites);
print "5. \@sites = @sites\n";

# 替换数组元素
my @nums = (1 .. 20);
print "替换前 @nums\n";
splice(@nums, 5, 5, 21 .. 25); #(数组， 开始位置， 替换个数， 替换的值)
print "替换后 @nums\n";

# 字符串分割转换为数组
my $var_test = "runoob";
my $var_string = "www.crabime.com";
my $var_names = "google,taobao";

# 字符串转换为数组
my @test = split('', $var_test);
# 点号必须要经过转义才可以
my @string = split('\.', $var_string);
my @names = split(',', $var_names);
print "test值@test\n";
print "string分割后的值@string\n";
print "names值为@names\n";

# 将数组转换为字符串
my $var_string1 = "www-crabime-com";
my $var_namess = "google,taobao,runoob";

# 字符串转数组
my @string1 = split('-', $var_string1);
my @var_namess1 = split(',', $var_namess);

my $string11 = join('---', @string1);
my $var_namess11 = join('@', @var_namess1);

print "string11 $string11\n";
print "namess11 $var_namess11\n";

# 对数组进行排序
my @asites = qw(google taobao microsoft facebook);
print "排序前： @asites\n";
@asites = sort(@asites);
print "排序前： @asites\n";

my @odd = (1, 3, 5, 7);
my @even = (2, 4, 6, 8);
my @nnumbers = (@odd, @even);
print "nnumbers : @nnumbers\n";

my $vvar = (5, 4, 3, 2, 1)[4];
print "vvar中第五个元素为： $vvar\n";


# value可重复，key不可重复
my %data = ('google' => 'google.com', 'runoob' => 'runoob,com', 'taobao' => 'taobao.com');
my @keys = keys %data;
print "keys值为： @keys\n";
my $size = @keys;
print "1 - 哈希大小： $size\n";

my @values = values %data;
print "values为： @values\n";
$size = @values;
print "2 - values值为： $size\n";

# 程序第一个参数为$_[0]，第二个参数为$_[1]，以此类推
sub Average {
    # 获取所有传入参数
    my $n = scalar(@_);
    my $sum = 0;
    foreach my $item (@_) {
        $sum += $item;
    }

    my $average = $sum / $n;
    print "传入的参数为 : @_\n";
    print "第一个参数为: $_[0]\n";
    print "传入参数平均值为：$average\n";
}

Average(10, 10, 30);

our $string = "Hello, World";
sub PrintNames {
    local $string;
    $string = "Hello, Crabime";
    PrintString();
    print "在PrintNames方法里面看到的string值为：$string\n";
}

sub PrintString {
    print "PrintString method get string result: $string\n";
}

sub PrintHello {
    print "在函数作用域外面看到的string结果为：$string\n";
}

PrintNames();
PrintHello();