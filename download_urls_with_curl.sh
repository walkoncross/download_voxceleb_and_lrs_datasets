#!/bin/bash
# author: zhaoyafei0210@gmail.com

user=<user>
passwd=<passwd>

url_list=$1

# # from vgg site
# curl -C -O -J --user ${user}:${passwd} \
#     https://www.robots.ox.ac.uk/~vgg/data/lip_reading/files/lrs3_v0.4_txt.zip \

# curl -C -O -J  --user ${user}:${passwd} \
#     https://thor.robots.ox.ac.uk/~vgg/data/lip_reading/data3/lrs3_test_v0.4.zip \

# # from mirror site
# curl -C -O -J  --user ${user}:${passwd} \
#     http://mm.kaist.ac.kr/lip_reading/data3/lrs3_test_v0.4.zip \
#     --output lrs3_test_v0.4.zip

url_list=./lrs3_mirror_urls.txt

for url in $(cat ${url_list}); do
    # curl --user ${user}:${passwd} --output ${url##*/}  ${url};
    curl -C -O -J --user ${user}:${passwd} ${url};
done
