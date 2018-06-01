#Markdown Tip

* [Toc](#table-of-contents)
  * [Toc작성시 주의사항](#issue-table-of-contents)
## Table of contents

일명 toc라 한다. jekyll 를 기반으로 만든페이지 에서는
`{:toc}`만 써주면 된다. 부가 적으로 순서의 유무에 따른 리스트를 만들수 있는데
```shell
##test
{:.no_toc}      -> 해당 타이틀은 목차에 포함시키지 않는다.

0.         ->순서가 있는 목차
{:toc}

*.         ->순서가 없는 목차
{:toc}
```
하지만 그냥 git repository 안에서는 작동하지 안아서 추가로 오픈소스를 사용하던가 해야됨  

아니면 전부 수작업으로 만들어줘야함 ㅠㅠ  

오픈 소스중에 쓸만한게 있어서 일단 링크 걸어둡니다.  
[ekalinin/github-markdown-toc](https://github.com/ekalinin/github-markdown-toc)

## Issue Table of contents

우선 예를 들어 봅시다.

```markdown
##Content Number1
...

##ContentNumber2
..

###Contents 넘버3
..
```

위의 예시를 보면 총 세가지의 헤더가 있습니다.

이제 목차를 만들어 볼께요.

```markdown
* [1번](##Content Number1)
* [2번](#ContentNumber2)
* [3번](#Contents 넘버3)
```

과연 위의 목차가 제대로 작동 할까요?

NaverEver!!! 저것 때문에 삽질많이 했습니다. 자 이제 애매한부분 딱 정해드립니다.

```markdown
* [1번](#content-number1)
* [2번](#contentnumber2)
* [3번](#contents-넘버3)
```
이제 뭐가 달라졌을까요?우선 먼저 눈에 띄는것은

1. `#은 한개만`

`#의 갯수에 상관없이 링크하는 부분은 전부 #을 한개만 써주면 됩니다.`  

2. `헤더의 대문자 구분 X`

`헤더가 대문자 여도 링크 부분은 소문자로만 작성해주세요`  

3. `공백이 있다면 하이픈(-)으로 연결해 주세요`  

그리고 대부분 실수 하시는 부분이 있습니다.

바로 헤더를 작성할때의 방법인데요.

마크 다운은 두가지 헤더스타일을 지원합니다.

`setext` 와 `atx` 스타일이죠.

1. setext

   ```markdown
   //underline을 사용한 헤더에요.
   This is an H1
   ============= 
   
   H1
   ===
   
   This is an H2
   -------------
   
   H2
   ---
   
   //꼭 글전체 만큼 써줄필요는 없습니다. 3개만 써주면됨
   ```

   

2. atx

   ```markdown
   #H1#
   ##H2##
   ###H3###
   ####H4####
   #####H5####
   ...
   //반드시 끝을 앞의 #의 갯수 만큼 써줄필요 없습니다.
   //안써도 되고 한개만 써줘도됨
   #h1
   ##h2
   ...
   //근데 왠만하면 #헤더는 5개 까지만 쓰는걸 추천함.
   //그 이상 넘어가면 뭔가 안돌아가는 일이 생김
   ```

   