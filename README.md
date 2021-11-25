# download_voxceleb_and_lrs_datasets

By: zhaoyafei0210@gmail.com

Utils for downloading voxceleb1/voxceleb2/lrw/lrs2/lrs3 datasets:


| dataset | URL |
|---------|-----|
| VoxCeleb | https://www.robots.ox.ac.uk/~vgg/data/voxceleb/vox1.html |
| VoxCeleb2 | https://www.robots.ox.ac.uk/~vgg/data/voxceleb/vox2.html |
| LRW | https://www.robots.ox.ac.uk/~vgg/data/lip_reading/lrw1.html |
| LRS2 | https://www.robots.ox.ac.uk/~vgg/data/lip_reading/lrs2.html |
| LRS3 | https://www.robots.ox.ac.uk/~vgg/data/lip_reading/lrs3.html |


## Step 0

Make sure you have one of the downloading tools: aria2, curl, httpie, wget. (Aria2 is strongly recommended for its way of faster performance)

## Step 1

Request a password from VGG site for each dataset, refer to each dataset's website.
## Step 2

Replace "<user>" and "<passwd>" with the "user:passwd" you get from VGG in "download_urls_with*.sh":

```
user=<user>
passwd=<passwd>
```

## Step 3

Download files:

Examples:

Dowload VoxCeleb audio files from VGG site: 
```
bash download_urls_with_aria2.sh url_list/voxceleb_audio_vgg_urls.txt
```

Dowload VoxCeleb audio files from mirror site if it's faster than from VGG in your situation: 
```
bash download_urls_with_aria2.sh url_list/voxceleb_audio_mirror_urls.txt
```

Dowload VoxCeleb2 video files from VGG site: 
```
bash download_urls_with_aria2.sh url_list/voxceleb2_video_vgg_urls.txt
```

Dowload LRS3 audio files from VGG site: 
```
bash download_urls_with_aria2.sh url_list/lrs3_audio_vgg_urls.txt
```

Dowload LRS3 video files from VGG site: 
```
bash download_urls_with_aria2.sh url_list/lrs3_video_vgg_urls.txt
```

## Step 4

Download all parts and concatenate the files using the command "cat vox2_dev_aac* > vox2_aac.zip". Unzip the downloaded files,  refer to each dataset's website.