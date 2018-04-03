우분투 설정
===


root 계정 설정
---

```
$sudo passwd root
```



Fire Fox 업데이트
---

```shell
$sudo apt-get firefox
$sudo apt-get update
```



GIT설치및 설정
---

```shell
설치
$sudo apt install git

초기 설정
$git config --global user.name "kimleepark"
$git config --global user.email kimleepark@gmail
//$git config -l
![깃 글로벌 편집](/home/codex/Codex/Photo/깃 글로벌 편집.png)

$ssh-keygen
![keygen](/home/codex/Codex/Photo/keygen.png)
//.ssh 폴더안에 id_rsa.pub 의 내용을 Github ssh에 등록해준다.
$git init
$git log
//git 작업 기록
$git status
//git 현재 현황(add 되거나, 추적 가능한 파일 현황)
$git add
//-u 업데이트된 항목을 추적해서 add함,  --all,-A 폴더내 모든 항목을 add함
$git commit
$git push
//local -> remote 저장소로 이동
$git pull
//원격 저장소에 있는 변경 사항을 가져와서 merge함

```

>[Git 시작하기][https://git-scm.com/book/ko/v1/%EC%8B%9C%EC%9E%91%ED%95%98%EA%B8%B0-Git-%EC%B5%9C%EC%B4%88-%EC%84%A4%EC%A0%95] 를 참고 하시면서 작업 하시면 좋습니다.
>
>.gitignore 에 a.out, *.o, *.txt 등 을 추가하여 불필요한 형식은 걸러서 올리는것이 작업하기 편합니다.

```shell
기존 로컬 저장소와 원격 저장소 연결
1.원격 저장소를 먼저 만들고 그냥 Clon
$git clone https://원격저장소.git

2.기존로컬 저장소를 원격저장소와 연결
Github에서 resipotory를 먼저 만들어야 한다.
$mkdir "resipotory와 같은 이름"
//resipotory 이름은 foo라고 가정한다.
$cd foo
$git init
//빈저장소를 만드는것
$git remote <name> <https://원격저장소.git>
//name 간단하게 push할때마다 사용하는 브랜치 이름이다.
$git remote show <name>
//분명 HEAD 브랜치 : (unknown) 이라고 나올것이다. 
$git push <name> master
```





Autojump 설치
---

```shell
$sudo apt-get install autojump
//Ubuntu에는 패키지가 있어서 apt-get으로 설치 가능
$sudo apt-get update
$autojump
//분명 이부분에서 osX든 ubuntu든 bach 설정이 안되어 있어서 뭐라뭐라 나옴
![오토점프1](/home/codex/Codex/Photo/오토점프1.png)
$echo ". /usr/share/autojump/autojump.bash" >> ~/.bashrc
//autojump가 터미널 실행시 바로 작동 할수 있게 경로를 추가해 줘야 한다.
```

>[Autojump][https://github.com/wting/autojump]를 참고하시길 바랍니다.








vim 설치및 설정
---

```shell
설치
$sudo apt-get vim
$sudo apt-get update
```

