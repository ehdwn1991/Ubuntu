## Jekyll install
* Installation  
  [Ruby installation Refernce](https://www.ruby-lang.org/ko/documentation/installation/)  
  
#####RVM & Ruby install  
  >만약 OSX사용자시면, ruby가 깔려있습니다. 혹 모르니 brew install ruby 해주세요.  
  ```shell
  $ gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
  $ cd /tmp
  $ curl -sSL https://get.rvm.io -o rvm.sh
  $ less /tmp/rvm.sh
  $ cat /tmp/rvm.sh | bash -s stable --rails
  #여기서 에러 발생
  #NOTE: GPG version 2.1.17 have a bug which cause failures during fetching keys from remote server. Please downgrade or upgrade to newer version (if available) or use the second method described above.
  #GPG signature verification failed for '/home/codex/.rvm/archives/rvm-1.29.3.tgz' - 'https://github.com/rvm/rvm/releases/download/1.29.3/1.29.3.tar.gz.asc'! Try to install GPG v2 and then fetch the public key:
  #    gpg2 --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
  #or if it fails:
  #   command curl -sSL https://rvm.io/mpapis.asc | gpg2 --import -
  $ command curl -sSL https://rvm.io/mpapis.asc | gpg2 --import -
  $ cat /tmp/rvm.sh | bash -s stable --rails
  #반드시 username에 사용자명으로 바꿔서 넣어주세요.
  $ source /home/username/.rvm/scripts/rvm
  #RVM 설치 확인
  $ rvm version
  rvm 1.29.3 (latest) by Michal Papis, Piotr Kuczynski, Wayne E. Seguin [https://rvm.io]
  $ rvm list known
  # MRI Rubies
  [ruby-]1.8.6[-p420]
  [ruby-]1.8.7[-head] # security released on head
  [ruby-]1.9.1[-p431]
  [ruby-]1.9.2[-p330]
  [ruby-]1.9.3[-p551]
  [ruby-]2.0.0[-p648]
  [ruby-]2.1[.10]
  [ruby-]2.2[.7]
  [ruby-]2.3[.4]
  [ruby-]2.4[.1]
  ruby-head
  ...
  #여기서 주목해야 하는 부분은 시스템에서 제공하는 최신 루비 버전은 2.4.1이다
  #밑의 방식으로 설치하면 2.4.1의 버전이 설치되버림.
  $ rvm install ruby_version
  $ rvm list
  $ rvm use ruby_version
  ```
  >http://jekyllrb-ko.github.io/docs/installation/ 에서 루비 설치홈에 가보면 최신버전은
  >`ruby 2.5.1`이다.  
  >개개인의 선택이겠지만 저는 맥에서 최신 버전을 설치 했기때문에  
  >다시 최신버전으로 재설치를 했어야 했습니다. ㅠㅠ  
  >[osx와 우분투에서 각기 다른 버전의 ruby 때문에 문제 발생](#####problem1)
  
  >절대 우분투 환경에서 apt-get으로 ruby를 설치하시면 안됩니다.
  >옛날버전의 루비여서 jekyll를 사용하려고 하면 환경설정부터 각종 오류를 토해냅니다.

  #####jekyll install
  ```shell
  $ gem install jekyll
  #다른 블로그에서는 bundler도 같이 설치하라는데 왜쓰는지 모르겠다.
  ```

* Using jekyll

  ```shell
  $ jekyll new [any_title]
  #처음 설정하는데 좀 오래걸려요. 끝날때 까지 절대 중단하지 말고 기다려주세요.
  $ cd [any_name]
  $ jekyll serve --watch
  #웹에서 http://127.0.0.1:4000/에 접속하면 로컬환경에서 돌아가는것을 확인가능.
  ```

* Git page publishing

  > Git respository생성시 유저네임으로

  ```shell
  #유저네임.github.io 로 만들어줘야함
  #생성후에 설정에서 깃 페이지로 만들어 주면끝.
  #이제 아까 jekyll 로 만들었던 폴더 통채로
  #유저네임.github.io에 복사해서 업로드 시켜주면됨.
  $ cp -r [any_name]/. ./username.github.io
  $ cd username.github.io
  $ git add -all
  $ git commit -m test
  $ git push
  ```

  > 이제 깃에 다시 들어서 셋팅에서 페이지 생성부분에 보면
  >
  > 내 깃 페이지 주소가 나올것이다.
  >
  > https://username.github.io 이런식으로 나올것이다 여기에 들어가서
  >
  > Welcome 뜨면 성공



* issue  
  #####problem1
  apt-get 으로  ruby 설치 했을때 에러

  > apt-get으로 ruby를 설치했더니
  > jekyll new할때
  ```shell
  #이런 에러를 토해냄
  $ Bundler: ruby: No such file or directory --      /usr/lib/ruby/gems/2.3.0/gems/bundler-1.16.1/exe/bundle (LoadError)
  #확인해봤더니
  #/usr/lib/ruby/gems/2.3.0/gems 에는 bundler가 없고
  #/var/lib/gems/2.3.0/gems에 bundler가 존재
  command curl -sSL https://rvm.io/mpapis.asc | gpg2 --import -
  ```
#####problem2
  osx와 우분투에서 각기 다른 버전의 ruby 때문에 문제 발생

  <우분투 환경 사진+루비 젬 환경사진>
  <맥 루비 젬 환경사진>

  > osx에서 개발할때와 우분투에서 개발할때 루비 버젼이 달라서 에러를 토해냄.
  > 맥은 기본적으로 루비가 설치되어 있고 brew를통해 최신 루비 설치가 가능함.
  > 물론 rvm 으로 설치하는것이 이상적이지만 맥에서는 필요 없다고 판단이됨.
  >
  > 

[맥 설치과정 자세(영어)](https://programminghistorian.org/lessons/building-static-sites-with-jekyll-github-pages)

[jekyll설치시 참고 블로그](https://xho95.github.io/blog/github/pages/jekyll/minima/theme/2017/03/04/Jekyll-Blog-with-Minima.html)

[놀부님 블로그](https://nolboo.kim/blog/2013/10/15/free-blog-with-github-jekyll/)

[Jekyll공식 페이지(한글)](http://jekyllrb-ko.github.io/)

[깔끔하게 정리](http://tech.kakao.com/2016/07/07/tech-blog-story/)

[시작부터 끝까지 조금 자세하게 설명되어있음](http://lawfully.kr/smart/jekyll.html#html-css-%EC%9E%90%EB%B0%94%EC%8A%A4%ED%81%AC%EB%A6%BD%ED%8A%B8-%ED%99%88%ED%8E%98%EC%9D%B4%EC%A7%80%EC%9D%98-%EA%B8%B0%EB%B3%B8)

[jekyll 추천 플러그인](http://xdesigns.net/2018/02/10-must-have-free-plugins-for-jekyll/)

[jekyll 추천 테마 리스트1](http://xdesigns.net/2016/04/jekyll-themes/)

[jekyll 추천 테마 리스트2](https://www.quora.com/What-are-the-best-Jekyll-themes?utm_medium=organic&utm_source=google_rich_qa&utm_campaign=google_rich_qa)





[반응형 깔끔 선형](https://github.com/CloudCannon/hydra-jekyll-template)
[반응형 깔끔 메뉴 누르기 편함](https://qwtel.com/hydejack/)
[가장 기본적임](https://chrisbobbe.github.io/jekyll-theme-prologue/)

[테마 적용법](https://junhobaik.github.io/jekyll-apply-theme/)

[jekyll 자세한 설명들](https://programminghistorian.org/lessons/building-static-sites-with-jekyll-github-pages)

[gitpage 공식 설명](https://help.github.com/categories/github-pages-basics/)
[콩로그님 블로그 플러그인 자세함](http://my2kong.net/2016/07/07/jekyll-blogging-theme/)