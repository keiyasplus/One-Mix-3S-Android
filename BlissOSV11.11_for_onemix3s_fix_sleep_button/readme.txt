※※※ 설치 절차 ※※※

https://sourceforge.net/projects/blissos-x86/files/Official/bleeding_edge/Generic%20builds%20-%20Pie/Bliss-v11.11--OFFICIAL-20200624-2026_x86_64_k-k4.19.122-ax86-ga-rmi_m-p9.0-x86_dgc-p9.0-03.15.20_ld-p9.0-x86_dg-p9.0-x86_dh-p9.0-x86_mg-p9.0-x86.iso/download

1. 위 링크의 블리스 OS 설치를 진행하며, 반드시 system read/write 를 YES 로 한후 설치합니다.
   ※ 블리스 OS 설치 절차 참고
   http://www.ppomppu.co.kr/zboard/view.php?id=wintab&no=77339
   ※ 블리스 OS 공식(영문)
   https://docs.blissroms.com/Bliss%20OS/installation-guide/
   ※ 블리스 OS 설치 참고 유투브(영어)
   https://www.youtube.com/watch?v=MmGiCqFvYEQ

2. 설치 후 패치 파일을 실행합니다.
   USB에 압축 파일 푼 후 USB를 원믹스에 연결합니다.
   터미널 에뮬레이터 실행
   $SU
   Rooting 관련 권한 물어보면 Remaember choice forever로 체크하고 Allow선택합니다.
   #df -h 후 /mnt/media_rw/마운트명으로 된 USB 파일 위치 확인
   #cd "USB의 위 파일 위치" 로 이동함(팁 앞 문자만 치고 탭키을 누루면 경로 자동 완성)
   #sh ./patch.sh
   #exit
   $exit 
   
3. 전원 버튼 재 부팅합니다.

※ 윈도우에서 사용한 드라이브명칭 그대로 마운트되며 윈도우 디스크 명을 되도록이면 영문변경합니다.
ex) C드라이브명 : C_Drive 
    D드라이브명 : D_Drive
    
  
※ sd카드는 내장디스크로 인식되기 떄문에 카드 뽑을시 인식이 안됩니다.
   sd카드 교체를 하시려면 원믹스 종료 후 카드 교체하고 재부팅하거나 아래 절차에 따라 교체하시기 바랍니다.
   터미널 에뮬레이터 실행
   $su
   #umount /mnt/sdcard_ext
   SD카드 교체
   $su
   #sh /etc/ntfs.sh

※ 슬립 후에 마운트가 풀리는 경우 아래 커맨드 실행
   $su
   #bin /etc/ntfs.sh  


※※※ 동작 기능 ※※※
   
1. 와이파이 정상
2. 슬립모드 정상
   2.1. 시간에 의한 슬립정상 (전원램프파란불)
   2.2. 메뉴에 의한 슬립정상 (배터리램프 노란색점등, 전원램프파란불꺼짐)
3. 블루투스 정상
4. 사운드 정상
5. 손 터치 정상 
   PEN 터치 터치패드방식으로 동작 (펜으로 이동하여 마우스 커스를 움직이며, 펜 터치로 클릭)
6. SD카드 인식 (다만, 뺐다꼈을경우 자동인식은 안되며 스크립트 실행시 재인식)
7. 윈도우 디스크 자동 마운트

※※※ 알려진 문제 ※※※
1. 메뉴에 의한 슬립의 경우 장시간시 와이파이가 먹통 현상 
   (개발자 모드 -> 전원충전시 항상 화면이 켜짐 해제, 디스플레이 시간을 1분으로 설정하여 시간에 의한 슬립 추천)
2. 화면 슬립시 간혹 뚝하는 소리 발생
3. 이어폰 사용시 고주파음 간헐적으로 들림


#######################################
기타 사용 팁
#######################################

※※※ ARM CPU로 제작된 앱 호환 기능 강화 설정 (권장) ※※※ 
설정 -> Android-X86 options -> Enable native bridge 에 체크 후 
기다리면 arm native libraries 를 다운 받으며, 그 후 재부팅하고 사용하면 됩니다.

※※※ 분할 화면 사용 ※※※
개발자 옵션 -> 활동의 크기가 조정 가능하도록 설정 체크
개발자 옵션 -> 자유 형식 창 사용 체크
후 하단 메뉴바의 네모 버튼을 길게 누름

※※※ 한글 키보드 사용 ※※※
플레이 스토어에 커키 키보드 인스톨 시 시프트+스페이스바로 설정 가능

※※※ 하단 메뉴바 추가/제거 및 하드웨어 키 활용 ※※※
1. 상단 메뉴바를 내린 후 연필 모양 편집 버튼 클릭 
-> Navigation Bar 를 클릭하여 상위 메뉴에 추가한 후
해당 토글로 하단 메뉴를 추가/제거 가능
********* 추가 : 테스트 결과 이 기능은 문제가 있어 보입니다. 
재부팅시 화면이 먹통되는 현상이 있어 숙지하시고 사용바랍니다. ***************


2. 플레이스토어 External Keyboard Helper Demo 앱으로
esc 키 -> 백버튼
윈도우 키 -> 홈버튼
alt+tab 키 -> 네모버튼
가능하며, 설정-> 고급설정->laguage switching에서 한국어/ 영어 언어 셋 추가 후 시프트+스페이스바로 환영 전환 설정 가능

노트북 모드일 경우 External Keyboard Helper를 사용하고, 요가모드일때는 커키 키보드를 사용

3. 2번 프로그램 설치안해도 백버튼의 하드웨어 단축키가 안드9에 있어 대체가능

ctrl+alt+back space -> 백버튼
윈도우 키 -> 홈버튼
alt+tab 키 -> 네모버튼


※※※ 로컬 커맨드 창 실행 및 종료 ※※※
실행 -> Alt + F1
종료 -> Alt + F7

※※※ 윈도우와 안드로이드간 시간 설정 ※※※
윈도우 측에서 시간 셋팅을 변경하여 안드로이드와 동일시간이 되도록 설정

텍스트 파일에 아래 내용은 붙여 넣고 확장자를 .reg로 변경 한 후 실행 하여 레지스트 변경
------------------------------------------------
Windows Registry Editor Version 5.00

[HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\TimeZoneInformation]
"DaylightBias"=dword:ffffffc4
"DaylightName"="@tzres.dll,-621"
"StandardStart"=hex:00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00
"StandardBias"=dword:00000000
"StandardName"="@tzres.dll,-622"
"Bias"=dword:fffffde4
"DaylightStart"=hex:00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00
"TimeZoneKeyName"="Korea Standard Time"
"DynamicDaylightTimeDisabled"=dword:00000000
"ActiveTimeBias"=dword:fffffde4
"RealTimeIsUniversal"=dword:00000001
--------------------------------------------------

윈도우 설정 -> 시간 및 언어 -> "자동으로 시간 설정"을 끔으로 변경 한 후 재부팅 하면 안드로이드와 시간 동일 적용