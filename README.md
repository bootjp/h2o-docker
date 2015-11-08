### Caution

* Image file will have a license to bootjp
    * imageTest tag images in the `/webapp/images` is the license of the [Creative Commons 4.0](https://creativecommons.org/licenses/by-nc/4.0/)
* Please do not turn to use the key file
    * It is for verification
* [Verification blog article in Japanese](https://bootjp.me/2015/10/04/h2o%E3%81%AB%E3%82%88%E3%82%8Bhttp2%E3%81%AE%E6%A4%9C%E8%A8%BC%E3%82%92%E3%81%97%E3%81%A6%E3%81%BF%E3%81%9F/)

### 以下の点に注意してください

* 一部画像ファイルはbootjpにライセンスがあります。
    * imageTestのタグの中の  `/webapp/images` ディレクトリの画像は [クリエイティブ・コモンズ4.0](https://creativecommons.org/licenses/by/4.0/deed.ja)にしたがって使ってください。
* docker image 内の鍵ファイルは使いまわさないでください。
    * あくまで検証用のものです。
* [日本語での検証記事](https://bootjp.me/2015/10/04/h2o%E3%81%AB%E3%82%88%E3%82%8Bhttp2%E3%81%AE%E6%A4%9C%E8%A8%BC%E3%82%92%E3%81%97%E3%81%A6%E3%81%BF%E3%81%9F/)

### How to use

    docker run -P bootjp/h2o-docker

or

    docker run -p 80:80 -p 443:443 bootjp/h2o-docker

##### developing

Mouting Webdata dir..

    docker run -dP -v $(</span>pwd)/path/webdata/:/webapp bootjp/h2o-docker

#### imageTest tags

    docker run -p 80:80 -p 443:443 bootjp/h2o-docker:imageTest

##### Browser `http://{docker ip address}/test.html` is HTTP 1.1

![HTTP1.1](https://st.bootjp.me/SS-2015-09-27-14.11.57.jpg)

##### Browser `https://{docker ip address}/test.html` is HTTP 2

![HTTP2](https://st.bootjp.me/SS-2015-09-27-14.18.15.jpg)
