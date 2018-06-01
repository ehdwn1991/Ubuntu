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

위의 예시를 보면 총 세가지의 타이틀이있습니다.

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
