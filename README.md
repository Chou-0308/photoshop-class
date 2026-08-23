# 애니메이션콘텐츠제작 · 포토샵 수업

고등학교 2학년 영상콘텐츠과 전공 실기 과목 「애니메이션콘텐츠제작」 18주 수업 자료입니다.

**수업 페이지 →** https://Chou-0308.github.io/photoshop-class/

## 구성

```
.
├── index.html          수업 허브 (18주 목록)
├── week01/
│   └── index.html      1주차 · 이미지의 정체 (51장)
├── week02/
│   └── index.html      2주차 · 컬러와 문서 규격 (51장)
├── week03/
│   └── index.html      3주차 · 선택과 누끼 (47장)
├── 올리기.command      macOS 업로드 (더블클릭)
└── 올리기.bat          Windows 업로드 (더블클릭)
```

## 프레젠테이션 조작키

| 키 | 동작 |
|---|---|
| `←` `→` | 슬라이드 이동 |
| `F` | 전체화면 |
| `N` | 교사 메모 표시 |
| `O` | 목차 (클릭해서 이동) |
| `B` | 빈칸 정답 공개 |

우측 상단 **「☰ 수업 목록」** 버튼을 누르면 허브로 돌아갑니다.

---

## 업로드하는 법

### 방법 1 · 더블클릭 (가장 간단)

| 운영체제 | 파일 |
|---|---|
| Windows | **`올리기.bat`** |
| macOS | **`올리기.command`** |

파일이 바뀐 것을 자동으로 찾아 커밋하고 GitHub에 올립니다.
처음 한 번은 GitHub Desktop을 실행해 로그인해 두어야 인증이 통과됩니다.

> macOS에서 "확인되지 않은 개발자" 경고가 뜨면 파일 **우클릭 → 열기**로 한 번만 열어주세요.

### 방법 2 · GitHub Desktop

1. 변경된 파일이 왼쪽 **Changes** 목록에 자동으로 뜹니다
2. 아래 **Summary** 칸에 한 줄 입력 (예: `3주차 추가`)
3. **Commit to main** → 상단 **Push origin** 클릭

---

## 여러 컴퓨터에서 작업하기

학교 Windows PC와 집 MacBook 등 두 대 이상에서 쓸 때는 **작업 시작 전에 반드시 내려받기**를 먼저 하세요.

1. GitHub Desktop 상단 **Fetch origin** 클릭
2. **Pull origin** 버튼이 나타나면 클릭
3. 그다음 수정 작업 시작

이 순서를 지키지 않으면 두 컴퓨터의 내용이 충돌합니다.

### 새 컴퓨터에 처음 세팅할 때

1. [GitHub Desktop](https://desktop.github.com) 설치 후 로그인
2. **File › Clone repository** → `Chou-0308/photoshop-class` 선택
3. 저장 위치를 정하고 **Clone**

이러면 폴더가 통째로 내려받아지고, 바로 수정·업로드할 수 있습니다.

---

## 주차별 자료 추가하는 법

1. `week03` 같은 폴더를 새로 만듭니다
2. 그 안에 프레젠테이션 파일을 `index.html` 이름으로 넣습니다
3. `index.html`(허브)에서 해당 주차 카드를 아래와 같이 바꿉니다

```html
<!-- 준비 중 → 공개 -->
<a class="wk ready" href="week03/">
  <span class="no">WEEK 03</span>
  <h3>선택과 누끼 ①</h3>
  <p>선택 도구 · 배경 지우고 바꾸기</p>
  <span class="badge">수업자료 공개</span>
</a>
```

`<div class="wk soon">` 를 `<a class="wk ready" href="weekNN/">` 로 바꾸고,
마지막 배지 문구를 `수업자료 공개` 로 고치면 됩니다.

> 닫는 태그도 `</div>` 에서 `</a>` 로 바꿔야 합니다.
