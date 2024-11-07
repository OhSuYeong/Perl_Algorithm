#!/usr/bin/perl -w

# 모든 파일 또는 표준 입력의 내용을 배열에 저장하고 역순으로 정렬
@lines = reverse(<>);

# 각 줄의 내용을 역순으로 출력
foreach $line (reverse @lines) {
    print scalar reverse($line);
}
print "\n";