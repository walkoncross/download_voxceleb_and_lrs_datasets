#!/bin/bash
# author: zhaoyafei0210@gmail.com

user=<user>
passwd=<passwd>

url_list=$1

# # from vgg site
# aria2c -c -x 8 --http-user ${user} --http-passwd ${passwd} \
#     https://www.robots.ox.ac.uk/~vgg/data/lip_reading/files/lrs3_v0.4_txt.zip

# aria2c -c -x 8 --http-user ${user} --http-passwd ${passwd} \
#     https://thor.robots.ox.ac.uk/~vgg/data/lip_reading/data3/lrs3_test_v0.4.zip

# # from mirror site
# aria2c -c -x 8 --http-user ${user} --http-passwd ${passwd} \
#     http://mm.kaist.ac.kr/lip_reading/data3/lrs3_test_v0.4.zip

# download all files
aria2c -c -x 8 -j 2 --http-user ${user} --http-passwd ${passwd} -i ${url_list}