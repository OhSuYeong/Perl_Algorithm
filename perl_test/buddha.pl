#!/usr/bin/perl -w
use strict;
use warnings;

sub precise_sleep {
  my ($seconds) = @_;
  select(undef, undef, undef, $seconds);  # 네트워크 소켓 모니터링에 자주 사용되면 세 번째 인수 설정 시 지연 시간으로 이용 가능
}

while(1) {
  print "摩訶般若波羅蜜多心經\n";
  print "마하반야바라밀다심경\n";
  precise_sleep(0.5);
  print "觀自在菩薩 行深般若波羅蜜多時 照見五蘊皆空 度一切苦厄\n";
  print "관자재보살 행심반야바라밀다시 조견오온개공 도일체고액\n";
  precise_sleep(0.5);
  print "舍利子 色不異空 空不異色 色卽是空 空卽是色 受想行識 亦復如是\n";
  print "사리자 색불이공 공불이색 색즉시공 공즉시색 수상행식 역부여시\n";
  precise_sleep(0.5);
  print "舍利子 是諸法空相 不生不滅 不垢不淨 不增不減\n";
  print "사리자 시제법공상 불생불멸 불구부정 부증불감\n";
  precise_sleep(0.5);
  print "是故 空中無色 無受想行識 無眼耳鼻舌身意 無色聲香味觸法\n";
  print "시고 공중무색 무수상행식 무안이비설신의 무색성향미촉법\n";
  precise_sleep(0.5);
  print "無眼界 乃至 無意識界 無無明 亦無無明盡 乃至 無老死 亦無老死盡 無苦集滅道 無智 亦無得\n";
  print "무안계 내지 무의식계 무무명 역무무명진 내지 무노사 역무노사진 무고집멸도 무지 역무득\n";
  precise_sleep(0.5);
  print "以無所得故 菩提薩타 依般若波羅蜜多故 心無罫碍 無罫碍故 無有恐怖 遠離顚倒夢想 究竟涅槃\n";
  print "이무소득고 보리살타 의반야바라밀다고 심무가애 무가애고 무유공포 원리전도몽상 구경열반\n";
  precise_sleep(0.5);
  print "三世諸佛 依般若波羅蜜多故 得阿耨多羅三藐三菩提\n";
  print "삼세제불 의반야바라밀다고 득아뇩다라삼먁삼보리\n";
  precise_sleep(0.5);
  print "故知 般若波羅蜜多 是大神呪 是大明呪 是無上呪 是無等等呪 能除一切苦 眞實不虛\n";
  print "고지 반야바라밀다 시대신주 시대명주 시무상주 시무등등주 능제일체고 진실불허\n";
  precise_sleep(0.5);
  print "故說 般若波羅蜜多呪 卽說呪曰\n";
  print "고설 반야바라밀다주 즉설주왈\n";
  precise_sleep(0.5);
  print "揭諦揭諦 波羅揭諦 波羅僧揭諦 菩提 娑婆訶\n";
  print "아제아제 바라아제 바라승아제 모지 사바하\n";
  precise_sleep(0.5);
  print "揭諦揭諦 波羅揭諦 波羅僧揭諦 菩提 娑婆訶\n";
  print "아제아제 바라아제 바라승아제 모지 사바하\n";
  precise_sleep(0.5);
  print "揭諦揭諦 波羅揭諦 波羅僧揭諦 菩提 娑婆訶\n";
  print "아제아제 바라아제 바라승아제 모지 사바하\n";
  precise_sleep(0.5);
}
