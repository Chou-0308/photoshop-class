#!/bin/bash
# ============================================================
#  포토샵 수업 사이트 → GitHub 업로드
#  이 파일을 더블클릭하면 변경된 내용이 자동으로 올라갑니다.
# ============================================================

cd "$(dirname "$0")" || exit 1

REPO_URL="https://github.com/Chou-0308/photoshop-class.git"

echo ""
echo "════════════════════════════════════════════"
echo "  포토샵 수업 사이트 업로드"
echo "════════════════════════════════════════════"
echo ""

# git 설치 확인
if ! command -v git >/dev/null 2>&1; then
  echo "❌ git 이 설치되어 있지 않습니다."
  echo "   터미널에서  xcode-select --install  을 실행해 설치한 뒤 다시 시도하세요."
  echo ""
  read -n 1 -s -r -p "아무 키나 누르면 닫힙니다..."
  exit 1
fi

# 최초 1회 : 저장소 초기화
if [ ! -d .git ]; then
  echo "▸ 처음 실행입니다. 저장소를 연결합니다..."
  git init -q
  git branch -M main
  git remote add origin "$REPO_URL"
  echo "  연결 완료 → $REPO_URL"
  echo ""
fi

# 변경 사항 확인
git add -A
if git diff --cached --quiet; then
  echo "✓ 변경된 내용이 없습니다. 올릴 것이 없어요."
  echo ""
  read -n 1 -s -r -p "아무 키나 누르면 닫힙니다..."
  exit 0
fi

echo "▸ 이번에 올라갈 파일"
git diff --cached --name-status | sed 's/^/    /'
echo ""

# 커밋
STAMP=$(date "+%Y-%m-%d %H:%M")
git commit -q -m "수업자료 업데이트 $STAMP"
echo "▸ 커밋 완료 ($STAMP)"

# 푸시
echo "▸ GitHub 로 올리는 중..."
if git push -u origin main 2>&1 | sed 's/^/    /'; then
  echo ""
  echo "════════════════════════════════════════════"
  echo "  ✅ 완료!"
  echo ""
  echo "  1~2분 뒤 아래 주소에서 확인하세요"
  echo "  https://Chou-0308.github.io/photoshop-class/"
  echo "════════════════════════════════════════════"
else
  echo ""
  echo "❌ 업로드에 실패했습니다."
  echo "   GitHub Desktop 을 한 번 실행해 로그인되어 있는지 확인해 주세요."
fi

echo ""
read -n 1 -s -r -p "아무 키나 누르면 닫힙니다..."
