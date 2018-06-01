#Markdown Tip

[TOC]
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

