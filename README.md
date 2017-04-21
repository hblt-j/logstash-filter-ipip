# logstash-filter-ipip     
//modi by j 20170421 add ipip for free with *.data

//建议手动Gemfile加载插件：

//gem "logstash-filter-ipip", :path => "/home/tmp/logstash-filter-ipip"

//参照 sepc/logstash.conf 测试，以下安装方式没有测试

# build
gem build logstash-filter-ipip.gemspec

# install 
/usr/share/logstash/bin/logstash-plugin install --no-verify logstash/plugin/logstash-filter-ipip-2.0.0.gem


