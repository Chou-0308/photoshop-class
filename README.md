# 컴퓨터그래픽 · 포토샵 수업

고등학교 2학년 영상콘텐츠과 전공 실기 과목 「컴퓨터그래픽」 18주 수업 자료입니다.

**수업 페이지 →** https://Chou-0308.github.io/photoshop-class/

## 구성

```
.
├── index.html      수업 허브 (18주 목록)
└── week01/
    └── index.html  1주차 프레젠테이션 (51장)
```

## 프레젠테이션 조작키

| 키 | 동작 |
|---|---|
| `←` `→` | 슬라이드 이동 |
| `F` | 전체화면 |
| `N` | 교사 메모 표시 |
| `O` | 목차 (클릭해서 이동) |
| `B` | 빈칸 정답 공개 |

## 주차별 자료 추가하는 법

1. `week02` 같은 폴더를 새로 만듭니다
2. 그 안에 프레젠테이션 파일을 `index.html` 이름으로 넣습니다
3. `index.html`(허브)에서 해당 주차 카드를 아래와 같이 바꿉니다

```html
<!-- 준비 중 → 공개 -->
<a class="wk ready" href="week02/">
  <span class="no">WEEK 02</span>
  <h3>컬러와 문서 규격</h3>
  <p>RGB / CMYK / HSB · 증명사진 만들기</p>
  <span class="badge">수업자료 공개</span>
</a>
```

`<div class="wk soon">` 를 `<a class="wk ready" href="week02/">` 로 바꾸고,
마지막 배지 문구를 `수업자료 공개` 로 고치면 됩니다.
