#!/bin/bash
# author: zhaoyafei0210@gmail.com

user=<user>
passwd=<passwd>

url_list=$1

# # from vgg site
# http -v -c --session=logged-in -a ${user}:${passwd} --download \
#     https://www.robots.ox.ac.uk/~vgg/data/lip_reading/files/lrs3_v0.4_txt.zip

# http -v -c --session=logged-in -a ${user}:${passwd} --download \
#     https://thor.robots.ox.ac.uk/~vgg/data/lip_reading/data3/lrs3_test_v0.4.zip

# # from mirror site
# http -v -c --session=logged-in -a ${user}:${passwd} --download \
#     http://mm.kaist.ac.kr/lip_reading/data3/lrs3_test_v0.4.zip

for url in $(cat ${url_list}); do
    http -v -c --session=logged-in -a ${user}:${passwd} ${url};
done