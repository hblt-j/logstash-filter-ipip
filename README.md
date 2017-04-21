# logstash-filter-ipip     
//modi by j 20170421 Added free data support

//建议手动Gemfile加载插件：

//gem "logstash-filter-ipip", :path => "/home/tmp/logstash-filter-ipip"

//wget -o https://rubygems.org/downloads/logstash-output-logservice-0.2.0.gem

//bin/logstash-plugin install /home/tmp/logstash-output-logservice-0.2.0.gem 

//参照 logstash.conf 测试，以下安装方式没有测试兼容性

# build
gem build logstash-filter-ipip.gemspec

# install 
/usr/share/logstash/bin/logstash-plugin install --no-verify logstash/plugin/logstash-filter-ipip-2.0.0.gem


