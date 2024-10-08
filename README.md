# 🌿 아이템 시뮬레이터

- Test Ver.0.01

# 🌿 구현 기능 (기본)

 **회원가입** : 아이디, 비밀번호, 비밀번호확인, 이름을 서버로 넘겨 회원가입 요청 [V]

 **로 그 인** : 가입된 아이디와 비밀번호로 로그인을 요청 [V]

 **캐릭생성** : JWT인증을 토대로 캐릭터를 생성합니다. 이 때 생성된 캐릭터는 스테이터스를 부여받습니다. [V]

 **캐릭삭제** : 정든 내 캐릭터를 삭제합니다. JWT 인증을 요구합니다.

 **상세조회** : 미접속 또는 다른 유저가 내 캐릭터를 조회할 경우, 또는 내가 내 캐릭터를 조회할 경우 정보를 나타냅니다.

 **아 이 템** : 아이템을 생성하거나 개조하는 기능입니다. 개조의 경우 일부 스텟이 변경될 수 있습니다.

 **목록조회** : 서버 내에 등록된 아이템정보 목록을 불러옵니다. 아이템 개조로 새로 탄생한 아이템도 목록에 추가되어집니다.

 **목록조회** : 목록조회의 연장선으로, 해당 아이템의 정보를 불러옵니다.

 # 🌿 구현 기능 (도전)

 **구입하기** : 보유한 게임머니로 아이템을 구매합니다. JWT 인증을 요구하며, 구매 성공 시 잔액을 표시합니다.

 **판매하기** : 보유한 아이템을 판매할 수 있습니다. 원가의 60%만큼의 가격을 받을 수 있으며 판매 성공 시 잔액을 표시합니다. 장착 중인 아이템은 판매할 수 없습니다.

 **인벤조회** : 캐릭터가 보유한 인벤토리 내의 아이템을 목록으로 불러옵니다. JWT 인증을 요구합니다.

 **장비조회** : 캐릭터가 장착한 장비창을 목록으로 불러옵니다.

 **착용하기** : 내 캐릭터가 장비를 장착할 수 있습니다. 이 때 스텟의 변동이 이루어져야합니다. JWT 인증을 요구합니다.

 **착용해제** : 내 캐릭터가 장비를 장착해제할 수 있습니다. 이 때 스텟의 변동이 이루어져야하며, 착용하지 않은 장비를 착용해제할 수는 없습니다. JWT 인증을 요구합니다.

 **재화벌이** : 게임머니를 소량으로 벌 수 있는 기능입니다. 예시로는 100골드씩 벌어들일 수 있습니다.



# 🌿 캐릭터 스펙규격

 **체    력** : 500

 **공 격 력** : 100

 **주 문 력** : 100

 **게임머니** : 10000

# 🌿 캐릭터 추가 스텟 (예시)

 **체    력** : 500

 **공 격 력** : 100

 **주 문 력** : 0

 **Stat-STR** : 4 // Str +10당 공격력 1증가

 **Stat-DEX** : 4 // Dex +20당 공격력 1증가

 **Stat-INT** : 4 // Int +5당 주문력 10증가

 **Stat-LUK** : 4 // Luk +10당 재화를 추가로 벌어들일 확률 1%증가

 **Stat-ARM** : 4 // 물리방어

 **Stat-MRM** : 4 // 마법방어

 **게임머니** : 10000