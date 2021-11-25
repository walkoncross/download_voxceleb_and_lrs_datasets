#!/bin/bash
# author: zhaoyafei0210@gmail.com

user=<user>
passwd=<passwd>

url_list=$1

# # from vgg site
# wget -c --user ${user} --password ${passwd} \
#     https://www.robots.ox.ac.uk/~vgg/data/lip_reading/files/lrs3_v0.4_txt.zip

# wget -c --user ${user} --password ${passwd} \
#     https://thor.robots.ox.ac.uk/~vgg/data/lip_reading/data3/lrs3_test_v0.4.zip

# # from mirror site
# wget -c --user ${user} --password ${passwd} \
#     http://mm.kaist.ac.kr/lip_reading/data3/lrs3_test_v0.4.zip

wget -c --user ${user} --password ${passwd} ${url_list}