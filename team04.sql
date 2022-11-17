CREATE DATABASE  IF NOT EXISTS `adminstor` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_bin */;
USE `adminstor`;
-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: adminstor
-- ------------------------------------------------------
-- Server version	5.7.32-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `admin_id` varchar(20) NOT NULL,
  `admin_passwd` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES ('admin','admin');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bbs`
--

DROP TABLE IF EXISTS `bbs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bbs` (
  `bbsID` int(11) NOT NULL,
  `bbsTitle` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `id` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `bbsDate` datetime DEFAULT NULL,
  `bbsContent` varchar(2048) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `bbsAvailable` int(11) DEFAULT NULL,
  `bbscategory` int(11) DEFAULT NULL,
  PRIMARY KEY (`bbsID`),
  KEY `bbs_member_fk_idx` (`id`),
  CONSTRAINT `bbs_member_fk` FOREIGN KEY (`id`) REFERENCES `member` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bbs`
--

LOCK TABLES `bbs` WRITE;
/*!40000 ALTER TABLE `bbs` DISABLE KEYS */;
INSERT INTO `bbs` VALUES (1,'공지사항','admin','2020-12-14 08:36:06','공지사항',1,2),(2,'공지사항','admin','2020-12-14 08:44:47','공지2\r\n',1,2),(4,'아령하세연','test','2020-12-14 09:07:22','LCK 관계자에게도 평판이 매우 높은데 이는 특히 게임 해설가 김동준의 언급처럼 단 한 번도 자신 실력에 대해서 자기 입으로 뽐낸 적은 없지만 이후 다른 사람이 내린 평가를 통해 역사상 최고 미드 라이너이자 역대 최고 리그 오브 레전드 프로게이머로 불리게 되었다는 점을 근거로 들 수 있다.[17] 이와 마찬가지로 과거 1세대 프로게이머 선수 출신이었던 클템은 한 인터뷰에서 아예 페이커를 역대 최고 미드 라이너에서 배제하는 전문가가 만약 있다면 그 사람은 전문가 타이틀을 내려놓아야 한다고 언급했고[18] 지금껏 큰 무대에서 많은 것을 증명해온 페이커 선수에 대해 존중하는 모습을 보였다. 이들 외에도 강승현 해설, 전 세계 리그 오브 레전드와 관련된 각 지역별 스타 플레이어를 비롯한 수많은 현역 선수들, 역사를 쓴 전설들 및 패널들을 포함한 각종 롤 관계자들, 특히 한국 e스포츠 분야에서 높은 관록을 지닌 전용준과 성승헌 캐스터 및 스타크래프트 1 계의 전설적인 인물인 강민 역시 LCK에서 해설가로 활동했던 시절에는 앞선 이들과 비슷하게 역시 해설 도중 탄성을 자아내는 등 그를 고평가했다.[19]\r\n\r\n2020년 2월 18일에는 3년 재계약을 체결함과 동시에 파트 오너 계약을 통해 T1 지분을 일부 받게 되면서, 프로게이머 은퇴시 회사 임원 자격으로 경영에 참여한다고 밝혔다. 그리고 선수 은퇴 이후부터는 T1 지도자가 되기로 합의했다. ESPN 기사 네이버 뉴스 이를 통해 이제 페이커는 팀 창단 결정적인 초석 역할을 맡았던 임요환의 뒤를 이어 T1의 평생 레전드로 남게되었으며 프로 생활 시작부터 지속적으로 T1 소속 일원으로 남아있는 상태이며 큰 이변이 없는 이상 앞으로도 쭉 남아있을 것으로 보인다는 점에서 정말 말 그대로 T1 그 자체라고 간주할 수 있을 것이다.[21]\r\n								\r\n								',1,0),(5,'가입인사','test','2020-12-14 10:57:24','가입인사',1,0),(6,'롤 잘하는 법','hyeonmin97','2020-12-14 11:54:34','롤을 접으십시오								',1,1),(7,'2020년을 보내며...','hyeonmin97','2020-12-16 10:51:26','제 1년이 어디간거죠??								',1,0),(8,'아칼리 공략','hyeonmin97','2020-12-16 10:52:53','아칼리를 잘 하는법\r\ncs를 먹는다.\r\n상대를 때린다.								\r\n								',1,1);
/*!40000 ALTER TABLE `bbs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `champion`
--

DROP TABLE IF EXISTS `champion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `champion` (
  `name_en` varchar(20) NOT NULL,
  `name_kr` varchar(45) DEFAULT NULL,
  `story` varchar(10000) DEFAULT NULL,
  `exp` varchar(10000) DEFAULT NULL,
  `link` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`name_en`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `champion`
--

LOCK TABLES `champion` WRITE;
/*!40000 ALTER TABLE `champion` DISABLE KEYS */;
INSERT INTO `champion` VALUES ('Akali','아칼리','아이오니아는 자연의 마법과 강력한 영적 존재, 활기찬 주민들이 조화를 추구하며 살아가는 곳이지만 이 온전한 균형을 유지하기란 쉽지 않아서 직접 바로잡아야 할 때도 있다.\r \r<br><br> 킨코우 결사단은 아이오니아의 성스러운 균형을 유지하기 위해 자발적으로 나선 수호자 집단이다. 결사단에 충성을 다하는 수련생들은 물질 세계와 영혼 세계를 오가며 갈등을 중재하고 필요하다면 무력을 사용해 개입한다. 아칼리는 결사단에서 명성이 자자한 그림자 전사인 \'그림자의 권\' 마임 호멘 테시의 딸로 태어났다. 마임과 남편 타흐노는 \'황혼의 눈\' 쿠쇼 대사부의 세심한 지도하에 딸 아칼리를 결사단의 일원으로 키웠다.\r \r <br><br>아칼리의 부모가 임무를 수행하기 위해 멀리 떠나면 다른 결사단원들이 아칼리를 돌보았는데, 특히 \'폭풍의 심장\' 케넨은 어린 아칼리에게 표창 투척 기술과, 힘보다는 속도와 민첩성에 중점을 둔 싸움 방식을 가르쳤고 조숙한 소녀였던 아칼리는 이를 빠르게 흡수했다. 결사단은 아칼리가 대사부의 아들이자 후계자인 쉔과 함께 아이오니아의 균형을 지키는 다음 세대 전사들을 이끌 것으로 기대했다.\r \r <br><br>하지만 균형은 한순간에 무너질 수 있는 법. 결사단은 결국 분열되고 말았다.\r \r <br><br>파문된 이단자 제드가 돌아와 유혈 충돌을 일으켰고 결국 결사단과 쿠쇼는 제드의 손에 무너졌다. 아칼리는 마임, 쉔, 케넨과 몇 안 되는 수련생과 함께 동부 산맥으로 도망쳤지만 안타깝게도 타흐노는 함께하지 못했다.\r \r <br><br>킨코우 결사단을 무자비한 그림자단으로 바꾸려는 제드의 계획이 달성될 즈음, 새로운 \'황혼의 눈\'이 된 쉔은 무너진 결사단을 재건하기로 결심했다. 쉔은 킨코우의 세 가지 근본 철학, 즉 공명정대를 추구하는 별보기, 판결을 전달하는 해따르기, 불균형을 제거하는 가지치기에 집중하기로 했다. 비록 당장은 소수였지만 예전의 힘을 되찾고 세력을 키우고자 수련생들을 훈련시켰다.\r \r <br><br>열네 살이 된 해에 아칼리는 어머니를 이어 새로운 그림자의 권이 되겠다는 일념으로 킨코우 결사단의 정식 훈련을 받기 시작했다.\r \r <br><br>타고난 전사였던 아칼리는 낫 형태의 무기 \'카마\'와 투척용 단검을 완벽하게 터득했다. 아칼리는 다른 수련생과는 달리 마법을 다루지는 못했지만, 그림자의 권이라는 이름에 걸맞은 실력을 모두에게 증명했고 시간이 흐르자 그녀의 어머니는 자리에서 물러나 젊은 수련생들을 양성하는 역할을 맡게 되었다.\r \r <br><br>하지만 아칼리는 의욕적이고 자각력이 있었다. 녹서스군이 아이오니아를 침공하자 킨코우 결사단과 그림자단은 위태로운 평화 협정을 맺었지만 고향 땅은 계속 고통받았다. 아칼리는 결사단이 신성한 균형을 위협하는 자들을 제거하는 \'가지치기\'를 제대로 수행하고 있는지에 대해 의문을 갖기 시작했다. 하지만 쉔은 이런 아칼리를 자제시킬 뿐이었다.\r \r<br><br> 쉔은 아칼리에게 만트라나 명상을 권유했다. 하지만 이런 진부한 행위가 아칼리의 마음을 진정시킬 수 있을지는 몰라도 적을 물리치는 데는 아무런 도움이 되지 않았다. 결국 어리지만 성숙했던 아칼리는 언쟁 끝에 쉔에게 결별을 선언하고 자신만의 방식으로 아이오니아의 적들을 처단했다.\r \r <br><br>아칼리는 모두가 보는 앞에서 킨코우 결사단은 영혼의 균형이나 인내심에 대해 말만 할 뿐 무력한 존재라고 공언했다. 아칼리가 지키려고 했던 물질 세계에서 아이오니아인들은 죽어가고 있었다. 아칼리는 암살자가 되기 위한 훈련을 받았고 암살자가 될 운명이었다. 그녀에게 더 이상 결사단은 필요하지 않았다.\r \r <br><br>쉔은 그것이 아칼리가 홀로 걸어야 할 길임을 알았기에 그녀를 순순히 보내주었다. 그 길이 아칼리를 다시 이곳으로 인도할지 모른다. 물론 그것 역시 그녀가 결정할 일이긴 하지만.','아칼리는 은신 능력을 가진 암살 챔피언으로 적들 사이를 종횡 무진 누빌수 있는 챔피언입니다.아칼리의 스킬들은 대부분 거리를 벌리거나 좁히는데 특화 되어있고, 이를 활용하여 추가 대미지를 가하는 것이 중요합니다.스킬을 활용하면 특정 지역에 지속적으로 은신할 수 있으며, 어그로 핑퐁으로 전투 승리에 기여할 수 있습니다.','https://www.youtube.com/embed/CEhpa3f6lxQ'),('Amumu','아무무','뼛속까지 사무치는 외로움과 쓸쓸함 속에 살아가는 아무무. 평생을 오로지 마음을 나눌 수 있는 단 한 명의 친구를 찾아 헤매는, 고대 슈리마 제국의 가엾은 영혼이다. 끔찍한 저주를 받은 아무무는 영원히 혼자인 채로 남겨졌다. 그 저주란 지독하리만큼 잔인한 것이었다. 상대가 누구든 아무무와의 신체적 접촉은 죽음을 의미했고 정서적 교류는 파멸을 불러왔다. 그의 운명을 아는 한 누구도 그를 가까이하려 들지 않았다. 간혹 아무무를 봤다는 이들은 그를 두고 ‘살아있는 시체’라고 표현했다. 푸르스름한 붕대로 전신을 감고 있는 작은 체구의 그 존재는 마치 미라와 같다고도 했다. 아무무에 관한 이야기는 수 세대를 거쳐 전해 내려 오면서 갖가지 신화나 설화, 그리고 구전동화 등 여러 이야기의 바탕이 되었다. 그래서 어디까지가 사실이고 어디서부터가 허구인지 분별하기란 결코 쉽지 않다.<br><br>유달리 강한 정신력을 지닌 슈리마 제국의 백성들. 이들은 대개 다음과 같은 말에는 별 이견 없이 고개를 끄덕인다. 이를테면 아침 바람은 서쪽에서 불어 온다든가 초승달의 배가 볼록하면 불길한 징조라는 것, 또 땅속 깊이 묻힌 보물은 가장 무거운 바위틈에 있다는 등의 이야기 말이다. 하지만 단 한 가지, 아무무에 관해 내려오는 이야기만큼은 다르다. 사람들마다 그에 대해 믿는 내용이 아주 명확하게 갈린다. <br><br>아무무에 관한 첫 번째 이야기. 이것은 곧 아무무가 슈리마 제국의 제1대 황태자라는 설이다. 물질적으로나 정신적으로나 남부러울 것 없이 풍족하게만 살아오던 아무무. 그러나 황족 전체가 살이 급격히 썩어 들어가는 끔찍한 병에 걸리자 그의 운명도 송두리째 바뀌고 만다. 황제의 막내아들 아무무는 자신의 방에 격리된 채 생활하게 되었다. 그러던 어느 날 벽을 통해 그가 흐느끼는 소리를 들은 하녀 한 명이 그의 곁으로 다가왔다. 그리고는 말벗이 되어 주었다. 하녀는 외로운 황태자를 극진히 보살피며 이런 저런 얘기로 마음을 달래 주기도 했다. 그 가운데에는 신비한 주술 능력을 가진 그녀의 할머니에 대한 이야기도 이따금 등장하곤 했다. <br><br>어느 아침, 하녀는 아무무에게 비통한 소식을 전했다. 유일하게 생존해 있던 그의 형님마저 돌아가셨다는 내용이었다. 자연스레 아무무가 슈리마의 황제가 되었다는 소식도 함께 전해졌다. 이 애통한 상황을 오직 홀로 감당해내고 있던 아무무. 그가 너무나 애처로워 보였던 하녀는 황태자의 방문을 열고 안으로 들어갔다. 그리고 그의 곁으로 다가가 따뜻하게 위로해 주었다. 아무무는 하녀에게 툭 하고 스러지듯 어깨를 기대고는 팔을 둘렀다. 그런데 그 순간! 아무무는 소스라치듯 놀라며 뒤로 물러섰다. 자신과의 접촉, 그것은 곧 하녀 역시 그의 가족과 똑같은 운명에 처하게 된다는 것을 잠시 망각했던 것이다. 그러나 돌이키기엔 이미 늦은 상황이었다. <br><br>결국 하녀도 죽음을 피해갈 수 없었다. 유일한 혈육을 잃은 그녀의 할머니는 원통함을 달랠 길이 없었다. 그래서 아무무에게 복수하듯, 그를 저주하며 주술을 부렸다. 할머니에게 아무무는 자신의 손녀를 죽인 원수나 다름없었기 때문이다. 주술의 효력이 시작되자 아무무는 고통의 덫에 갇혀 허우적대기 시작했다. 그리고 그것은 영원히 나올 수 없는 덫이었다. <br><br>아무무에 관한 두 번째 이야기. 여기서도 그는 황태자로 등장하지만 그 내용은 많이 다르다. 두 번째 전설 속 아무무는 무례하고 포악하며 극도의 허영심으로 가득 찬 황태자로 등장한다. 아주 어린 나이에 슈리마 제국의 황제로 등극한 아무무는 자신이 태양으로부터 선택 받은 자임을 확신하고 급기야 백성들에게 자신을 신으로 숭배하라고 강요했다. <br><br>그러던 어느 날, 아무무는 수 년 간 찾아 헤매던 유물을 발견했다. 아주 오래 전부터 말로만 들어오던 고대의 조각상. 이름하여 ‘고통의 눈.’ 누구든지 담대하게 이 눈을 바라보는 자에겐 영생이 허락된다는, 매몰된 지하 도시에 묻혀 있던 고대 유적이었다. 이 보물을 찾아 헤매는 동안 그의 곁에는 항상 수많은 부하들이 지키고 있었다. 이들의 도움으로 지하 공동묘지의 미로처럼 구불구불한 길도 큰 어려움 없이 헤쳐나갈 수 있었다. 험난한 여정 끝에 드디어 거대한 금빛 아치형 길에 다다른 아무무. 그는 대동한 석공들에게 굳게 닫힌 돌 문을 뚫도록 했다. <br><br>그런데 이게 웬일이란 말인가! 아무무가 필살의 각오로 조각상을 바라보던 순간, 부하들은 기회를 놓칠세라 돌 문을 굳게 닫아 막아버렸다. 그를 안에 놔둔 채 말이다. 결국 어둠 속에서 수 년을 홀로 견딜 수밖에 없었던 아무무는 정신 이상 증세를 보이기 시작했다. 온전하지 못한 정신으로 자신의 온몸을 손톱으로 긁어 상처를 냈고, 이를 흉측한 모습을 감추기 위해서는 붕대를 감을 수밖에 없었다. 그럼에도 ‘고통의 눈’을 바라보며 자신이 행한 죄악을 뉘우친 그는 영생을 얻을 수 있었다. 그러나 영생의 축복은 아무무에게 양날의 검일 수밖에 없었다. 곁에 아무도 두지 못한 채 평생토록 홀로 살아야 하는 저주의 그림자. 그것은 감내해야만 하는 숙명과도 같은 것이었다. <br><br>그러던 중 슈리마 제국에 참혹한 지진이 발생했다. 아무무의 목숨까지도 위태로웠던 상황이었다. 그런데 아이러니하게도 지진의 여파로 아무무가 갇혀 있던 지하무덤의 돌 문이 완전히 열려버리는 바람에 그는 바깥 세상으로 나올 수 있었다. 대체 얼마의 시간을 깜깜한 지하에서 보냈는지 전혀 알 길이 없었다. 그는 오직 모든 것을 무덤에 갇히기 전의 본래 상태로 돌리고만 싶었다. 그렇게만 된다면 뭐든 할 수 있을 것 같았다. <br><br>첫 번째와 두 번째 이야기 속 아무무가 황태자로 등장하는 반면 세 번째 전설 속 아무무는 슈리마 제국의 요들족 족장으로 전해진다. 이야기 속 아무무는 사람은 본래 착한 심성을 타고난다는 성선설을 굳게 믿고 있었다. 이 같은 자신의 믿음을 증명해 보이기 위해 그는 진실한 친구 한 명을 만들기 전까지는 거지로 분하여 생활하겠노라 맹세했다. 이토록 자신 있게 다짐할 수 있었던 것은 그가 도움의 손길을 뻗으면 누구든지 기꺼이 손 내밀어 주리라는 것을 확신했기 때문이었다. <br><br>그러나 그의 생각은 완전히 빗나갔다. 수 천 명의 사람들이 요들족 마을을 지나쳐갔지만 누구 하나 아무무의 손을 잡아주는 이는 없었다. 복받쳐 오르는 슬픔을 가눌 길이 없던 그는 결국 병을 얻어 죽고 말았다. 하지만 죽음의 고리는 결코 아무무에서 끝나지 않았다. 그와 비슷한 생각을 가진 수많은 요들족 생명들이 성선설을 증명해 줄 누군가를 끊임없이 찾아 헤매며 기대하고 실망하기를 반복했다. 그러나 이들 역시 인간에 대한 신뢰를 회복해줄 그 누구도 찾지 못한 채 결국 죽음에 이르렀다. <br><br>지금까지 살펴본 아무무에 관한 세 가지 설은 비록 조금씩 차이가 있지만 전체적인 흐름은 아주 흡사하다. 그것은 곧 철저하게 홀로 고립되어 살아가야 하는 운명으로 묘사된다는 점이다. 가족도 친구도 없이 평생토록 인생의 동반자를 찾아 헤매는 것이 아무무의 숙명. 아무무는 그 존재 자체가 저주이며 그의 손길은 곧 죽음의 씨앗이 되고 마는 것이다. 작은 불씨조차 허락되지 않은 긴긴 겨울 밤, 슬픔을 나눌 단 한 명의 벗조차 허락되지 않는 자신의 운명을 개탄하며 구슬프게 눈물짓는 슬픈 미라의 울음소리가 들려오는 듯하다. <br><br>아무무가 찾아 헤매는 것이 가족이든, 잃어버린 시간이든, 인간의 선한 마음이든 한 가지 분명한 사실이 있다. 그것은 바로 그 어떤 것도 아무무가 아직 찾지 못했다는 점이다.','아무무는 탱커로 상대 챔피언을 잡아둘 수 있는 기술들을 가지고 있습니다.아무무는 정글링에 적합한 챔피언으로 붕대 던지기를 이용해 다른 라인을 급습할 수 있습니다.아무무는 광역 공격 기술을 가지고 있는 영웅들과 좋은 상성을 보입니다.','https://www.youtube.com/embed/oqpZAh3_NTg'),('Kayle','케일','룬 전쟁이 절정에 이르렀을 때, 타곤 산은 다가오는 어둠 속에서 한 줄기 빛과 같았다. 그 빛 속에서 케일과 그녀의 쌍둥이 동생 모르가나가 태어났다. 자매의 부모였던 미히라와 킬람은 부족을 파멸에서 구하기 위해 목숨을 걸고 타곤 산을 오르고 있었다.\n\n<br><br>미히라는 산을 오르던 중 자신이 임신했다는 것을 깨달았지만, 등반을 멈추지 않았다. 타곤 산 정상에 도달한 그녀는 정의의 성위로 선택받아 태양보다 눈부시게 타오르는 칼을 휘두르게 되었다.\n\n<br><br>미히라는 얼마 지나지 않아 쌍둥이를 출산했다. 간발의 차이로 먼저 세상에 나온 케일은 눈부신 빛을 발산했지만, 뒤이어 나온 모르가나는 그만큼 어두운 기운을 내뿜었다.\n\n<br><br>그리고 미히라는 필멸자 최강의 전사가 되었다. 하지만 킬람은 신성한 임무를 맡게 된 미히라가 점점 두려워졌다. 온갖 사악한 마법사들이 그녀가 내뿜는 빛에 이끌려 몰려들자 결국 킬람은 쌍둥이의 안전을 위해 미히라의 곁을 떠나기로 했다. 그리고 정복자의 바다를 건너 새로운 정착지로 향했다. 마법을 차단하는 힘이 있다고 알려진 땅에 세워진 곳이었다.\n\n<br><br>새 고향에서 킬람은 혼자 쌍둥이를 길렀다. 하지만 날이 갈수록 둘은 전혀 다른 모습으로 커 갔다. 나이에 맞지 않게 어른스러웠던 케일은 지도자들과 정착지의 법을 놓고 논쟁을 벌이기도 했다. 자신의 어머니가 어떤 능력을 지녔었는지 잘 기억하지 못했지만, 법의 목적이 모든 사람의 안전이라는 것은 알고 있었기 때문이었다. 킬람은 얘기하길 꺼렸지만, 케일은 미히라가 어느 먼 전쟁터에서 룬 전쟁을 끝내고 세상을 구원했다고 믿어 의심치 않았다.\n\n<br><br>시간이 지나 쌍둥이는 십 대가 되었다. 그리고 어느 날, 기다란 불줄기가 하늘을 가로지르더니 천상의 화염으로 이글거리는 검 한 자루가 두 조각으로 갈라지면서 케일과 모르가나 사이로 떨어졌다. 킬람은 그 검이 미히라의 것임을 알아보고 몹시 놀랄 수밖에 없었다.\n\n<br><br>케일은 일말의 머뭇거림도 없이 갈라진 검 중 하나를 집어 들었다. 그러자 케일의 어깨에서 깃털이 수북한 날개가 뻗어 나왔다. 케일을 따라 조심스럽게 나머지 검을 집어 든 모르가나도 마찬가지였다. 그 순간 케일은 어머니와 그 어느 때보다 깊은 교감을 느꼈다. 이 검은 어머니가 보낸 신호가 분명했다. 어머니는 자신이 아직 살아있으며, 자매가 자신과 같은 길을 걷기를 바라고 있었다.\n\n<br><br>정착지의 주민들은 자매가 별의 축복을 받았다고 생각했다. 그리고 이들이 이제 막 걸음마를 뗀 데마시아를 외부 세력으로부터 지켜주리라고 믿었다. 이 날개 달린 수호자들은 곧 빛과 진리의 상징이자 모두에게 존경받는 존재가 되었다. 이후 케일은 수도 없이 많은 전투에서 활약했다. 데마시아 민병대 역시 점점 규모가 커졌고, 케일은 용감한 전사들의 무기에 신성한 불의 축복을 내렸다. 하지만 정의 실현을 향한 케일의 의지는 점점 집착으로 변했다. 케일은 안팎의 위협을 물리치고자 심판단을 조직해 법을 집행했고, 맹렬한 기세로 반역자들과 약탈자들을 색출했다.\n\n<br><br>하지만 그런 케일도 모르가나를 대할 때는 물러질 수밖에 없었다. 케일은 추종자들의 반대를 무릅쓰고 모르가나에게 죄를 뉘우치는 자들을 교화하는 임무를 맡겼다. 이에 크게 반발한 케일의 제자, 로나스는 케일이 자리를 비운 사이를 모르가나를 감옥에 가두려고 했다.\n\n<br><br>도시에서는 곧 폭동이 일어났고, 그 와중에 로나스는 목숨을 잃었다. 분노에 사로잡힌 채 하늘로 날아오른 케일은 신성한 불꽃을 소환해 죄악으로 가득 찬 도시를 정화하려고 했다.\n\n<br><br>그때 모르가나가 검을 손에 쥐고 케일 앞으로 날아갔다. 케일이 사람들의 마음속에서 악을 몰아내려면 가장 먼저 모르가나부터 처리해야 했다. 자매는 공중에서 전투를 벌이며 서로를 향해 치명적인 일격을 날렸고, 그 충격으로 도시는 점점 파괴되어 갔다.\n\n<br><br>순간 고통에 찬 킬람의 비명이 들려오자 두 사람은 싸움을 멈췄다.\n\n<br><br>케일은 모르가나의 품에 안겨 죽어가는 킬람을 바라봤다. 그날 도시를 휩쓴 폭력이 낳은 무고한 희생자였다. 케일은 어머니가 남긴 검을 양손에 하나씩 쥐고 다시는 하찮은 감정에 사로잡히지 않겠다고 맹세했다. 그리고 구름 위로 날아올라 지평선 너머 어렴풋이 보이는 타곤 산을 바라봤다. 산 정상은 석양으로 붉게 물들어 있었다.\n\n<br><br>케일은 다짐했다. 타곤 산에서 완벽하고 순수한 존재가 되겠다고. 그리고 어머니의 뒤를 이어 정의의 성위가 되리라고.\n\n<br><br>그 후 수백 년간 케일은 데마시아에 모습을 드러내지 않았지만, 케일에 관한 전설은 데마시아 왕국의 문화와 법률에 지대한 영향을 끼쳤다. 데마시아인들은 날개 달린 수호자를 본떠 거대한 동상과 우상을 만들었고, 병사들은 그 정신을 이어받아 어두운 밤을 밝게 비추며 왕국에서 그림자를 몰아냈다.\n\n<br><br>왕국이 갈등과 혼란에 시달릴 때마다 데마시아인들은 케일이 다시 나타나기를 소망했다. 하지만 케일의 재림을 바라지 않는 이들도 있었다.','케일은 하이브리드 캐릭터로 공격 능력과 아군을 보조하는 서포트 능력을 모두 가지고 있습니다. 무적 효과를 부여하는 궁극기는 아군에게 쏟아지는 집중공격을 무효화하고 체력을 보존시켜 상황을 유리하게 만드는 역활을 합니다. 특정 레벨 구간마다 패시브 효과가 강화되어 16레벨에는 아주 강력한 챔피언으로 거듭납니다.','https://www.youtube.com/embed/CYnzqEICFqo'),('VelKoz','벨코즈','벨코즈라는 무시무시한 존재를 이해하기 위해서는 냉기 수호자와 이들이 어떻게 현실 세계의 눈을 피했는지를 먼저 알아야 한다. <br><br>물질계 너머, 그 아래에는 심연이라는 형언할 수도, 이해할 수도 없는 곳이 있다. 이곳은 공허의 영역이며 필멸자든 불멸의 존재든 누구도 이곳에 발을 들일 수 없다. 어떻게, 그리고 왜 이러한 차원이 생겨났는지는 중요하지 않다. 공허는 존재할 뿐이며 무한하고 모든 것을 흡수한다. <br><br>이 차갑고 무한한 어둠에서는 모든 것이 평등하고 텅 비어있다. 영겁의 시간 동안 그 사실에는 순수함이 내재되어 있었다. 별 의미가 없는 표현이기는 하지만 공허는 평화로운 곳이라고 할 수 있었다. <br><br>그러다 공허가 아닌 다른 어딘가에서 변화가 일어났다. 바로 존재라는 변화였다. 존재 자체는 어둠을 표류하는 차갑고, 거대하며, 형태가 없는 개체들을 자극했다. 그전까지 개체들은 자신들의 감각성을 완전히 인식하지 못했지만, 이제 변덕스럽고 압도적인 창조라는 개념을 알게 되었고 창조가 넘치는 다른 차원을 증오하고 파괴하려 들기 시작했다. <br><br>이들은 주시하며 분석했다. <br><br>냉기 수호자들은 곧 주시하던 존재들이 반대로 자신들을 주시하고 있다는 사실을 깨달았다. 그들에게 관심을 보인 필멸의 존재들은 단지 심연의 언저리를 떠다니는 하찮은 먼지와 같았다. 하지만 냉기 수호자들은 이들에게서 물질계를 침략하고 파괴하여 공허 너머의 요동치는 생명의 힘을 잠재울 기회를 포착했다. <br><br>대담한 냉기 수호자들은 공허의 장막을 찢고 위로 올라왔지만 현실과 공허 사이의 갑작스러운 변화로 극심한 혼란에 빠졌다. 순식간에 공허에는 없었던 시간, 온기, 고통이 찾아왔다… <br><br>그리고 남은 것은 차디찬 냉기뿐이었다. 통로가 닫히고 수십에 달하는 냉기 수호자들이 두 차원 사이에 갇혔고 그 과정에서 얼어 버렸다. <br><br>공허에 남아 있던 이들은 움츠러들었다. 그들은 무슨 일이 일어났는지 알 수 없었지만, 배신을 당했다는 것 정도는 알 수 있었다. <br><br>그리고 그들은 상황에 적응했다. <br><br>물질계에 도착한 냉기 수호자들은 그 세계를 구성하는 투박한 물질의 형태를 만들어 오염시키고 의식을 불어 넣었다. 이렇게 탄생한 것이 최초의 공허 태생이었다. 이들은 그들을 만든 주인의 눈과 귀가 되었으며, 존재들의 악몽 속을 떠돌며 듣고, 보고, 배웠다. <br><br>이 중 특출난 창조물이 있었다. 아마 가장 오래된 공허 태생으로, 심연의 밖에서 가장 긴 시간을 보낸 창조물이었다. 이 창조물과 마주치는 불행을 겪은 자들은 그를 수많은 이름으로 불렀다. 이케시아가 전투에서 공허를 불러내기 몇천 년 전, 고대 슈리마에서는 지하 세계에서 올라와 현자의 꿈을 훔치는 벨코즈라는 이름의 악마를 두려워했다. 이 이름을 현대 언어로 정확히 번역할 수는 없지만 대략적인 뜻은 ‘해체하여 분석하는 자’이다. <br><br>벨코즈는 지식을 갈망하며 세계 구석구석을 누볐다. 교활하고 치밀한 벨코즈는 문명의 흥망성쇠를 조용히 지켜봤으며, 수 세기 동안 해저의 비밀을 파헤치고 천체의 움직임을 관찰해 예언을 하기도 했다. <br><br>그는 룬테라에 균열을 만들어 자신이 모은 지식을 냉기 수호자들에게 전달한다. 수호자들은 이런 정보를 흡수해 그의 앞길을 막는 필멸의 존재들을 가차 없이 섬멸한다. <br><br>공허는 영원하며 모든 것을 흡수할 것이다.','벨코즈는 긴 스킬 사거리를 지닌 AP 챔피언입니다. 긴 사거리와 비교적 낮은 마나 소모량 덕분에 상대를 견제하는 능력이 탁월합니다. 대상 지정 스킬이 하나도 없어 난이도가 높은 편이지만, 모든 스킬이 광역 피해를 주기 때문에 팀 파이트에서 더욱 빛을 발하는 챔피언입니다.','https://www.youtube.com/embed/cB1CFB18qOA'),('Zed','제드','조화로운 아이오니아의 이면에는 버려진 자들의 이야기가 있다. 그중 제드의 이야기는 킨코우 결사단의 차가운 계단에 홀로 앉아 있던 소년 시절로 거슬러 올라간다. <br><br>쿠쇼 대사부가 직접 거둔 제드는 고대 사원 안에서 자신의 삶을 찾았다. 그는 킨코우 결사단의 근간이 되는 교리를 이해하는 데 몰두했고 곧 전투 기술과 학문 모두에서 또래 수련생들을 능가했다. 그럼에도 불구하고 제드는 스승의 아들 쉔을 따라갈 수 없다고 느꼈다. 기술을 하나하나 완벽하게 연마하며 자신의 열정을 드러냈지만 그는 쉔과는 달리 감정의 균형이 부족했기 때문이다. 그래도 이들은 형제나 다름없었다. <br><br>시간이 흘러 이들은 쿠쇼 대사부와 함께 악명 높은 금빛 악마를 잡기 위해 떠났다. 오랜 추적 끝에 잡은 괴물은 카다 진이라는 한낱 인간에 불과했다. 젊은 제드는 진을 처단하기 위해 검을 치켜들고 앞으로 나섰지만 쿠쇼는 그를 제지하며 진을 투옥하라고 명령했다. <br><br>사원으로 돌아온 제드는 분한 마음에 수련에 차마 집중할 수 없었다. 그는 진이 저지른 끔찍한 살인에 대한 생각을 떨칠 수 없었고 아이오니아와 녹서스 제국 사이에 긴장감이 고조될수록 제드의 환멸은 점차 커져만 갔다. 쉔은 그의 아버지와 같이 중립성을 추구했지만 제드는 균형 추구라는 고고한 이상 때문에 악을 징벌하지 못한다는 것을 받아들일 수 없었다. <br><br>제드는 사원 깊숙한 곳에 숨겨진 지하 묘지에서 화려하게 장식된 검은 상자를 찾아냈다. 대사부만이 상자를 열 수 있다는 규율을 알고 있었지만 제드는 상자를 열고 안을 들여다보았다. <br><br>상자에서 나온 그림자가 제드의 마음을 휘감으며 그의 증오심에 약자에 대한 멸시를 불어넣었고, 고대로부터 금지된 비급에 대해 속삭였다. <br><br>묘지에서 나온 제드는 쿠쇼 대사부와 마주쳤다. 제드는 모든 수단과 방법을 동원해 녹서스 침략군에 맞서 싸우기를 요구했다. 쿠쇼가 거절하자 제드는 그를 자식처럼 키워준 결사단에 등을 돌렸다. <br><br>킨코우 결사단의 교리를 벗어던진 제드는 녹서스에 대항할 전사들을 양성했다. 고향을 위협하거나 녹서스 침략군에 맞서 싸우지 않는 이들은 가차 없이 척결 대상이 되었고 이 중에는 충성 맹세를 저버린 바스타야족도 있었다. 제드는 추종자들에게 몸을 바쳐 싸울 것을 요구했지만 곧 검은 상자의 능력 없이는 자신의 야망을 실현할 수 없음을 깨달았다. <br><br>추종자들을 집결시킨 제드는 킨코우 사원으로 돌아가 쿠쇼와 대면했다. 늙은 스승은 옛 제자 제드의 발치에 무기를 내려놓고, 그림자를 떨쳐내고 균형의 길로 돌아오라며 간청했다. <br><br>잠시 후 사원 계단 위에 다시 나타난 제드의 양손에는 검은 상자와 피 묻은 검 한 자루가 쥐어져 있었다. <br><br>충격에 휩싸인 킨코우 결사단원들은 제드가 이끄는 전사들의 손에 무참히 쓰러졌다. 결국 사원을 차지한 제드는 그림자단을 세우고 금단의 방식으로 수련생을 훈련시키기 시작했다. 그들은 몸에 그림자 문양을 새기고 그림자 분신술을 배웠다. <br><br>제드는 녹서스와의 오랜 전쟁으로 고통받는 아이오니아 사람들을 끌어들였다. 에풀 강 주변에서 학살이 벌어지자 제드는 낫을 든 녹서스 소년병 케인과 마주쳤다. 잘 벼리면 훌륭한 무기가 될 수 있다고 생각한 제드는 그 소년을 제자로 받아들였다. 제드는 소년에게서 자신이 가진 순수한 목적의식을 보았고, 그림자단의 미래를 보았다. <br><br>전쟁이 끝난 후 제드는 아이오니아 곳곳에 흩어져 있던 쉔의 결사단과 불편한 협정을 맺었다. 하지만 결코 이들과 화해하지는 않았다. 제드는 자신이 돌이킬 수 없는 짓을 저질렀음을 알고 있었다. <br><br>최초의 땅의 균형은 이제 영원히 되돌릴 수 없을 정도로 무너졌지만 제드에게 영적 균형 따위는 중요하지 않다. 그에게 중요한 건 오직 아이오니아의 승리뿐이다.','제드는 기력을 사용하는 챔피언으로 분신을 사용해 지형지물을 뛰어넘을 수 있으며 적의 중요 챔피언을 노리는데 특화된 기술들을 가지고 있습니다. 견제기와 생존기를 동시에 갖추었기에 분신 기술을 능숙하게 사용할 수 있다면 미드와 탑, 정글라인에서 활약할 수 있습니다.','https://www.youtube.com/embed/ybv-AfHiz08');
/*!40000 ALTER TABLE `champion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member` (
  `id` varchar(20) COLLATE utf8_bin NOT NULL,
  `password` varchar(45) COLLATE utf8_bin NOT NULL,
  `name` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `email` varchar(45) COLLATE utf8_bin NOT NULL,
  `birth` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `phone` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `address` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES ('admin','admin',NULL,'admin@naver.com',NULL,NULL,NULL),('hyeonmin97','1234','박현민','hyeonmin97@naver.com','970905','01012345678','서울'),('id','pass','id','id@naver.com','970101','01000000000','서울'),('test','test','test','test@naver.com','981111','01022222222','경기');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skill`
--

DROP TABLE IF EXISTS `skill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skill` (
  `champname` varchar(20) NOT NULL,
  `passive_name` varchar(50) DEFAULT NULL,
  `q_name` varchar(50) DEFAULT NULL,
  `w_name` varchar(50) DEFAULT NULL,
  `e_name` varchar(50) DEFAULT NULL,
  `r_name` varchar(50) DEFAULT NULL,
  `passive_exp` varchar(1000) DEFAULT NULL,
  `q_exp` varchar(1000) DEFAULT NULL,
  `w_exp` varchar(1000) DEFAULT NULL,
  `e_exp` varchar(1000) DEFAULT NULL,
  `r_exp` varchar(1000) DEFAULT NULL,
  `passive_img` varchar(1000) DEFAULT NULL,
  `q_img` varchar(1000) DEFAULT NULL,
  `w_img` varchar(1000) DEFAULT NULL,
  `e_img` varchar(1000) DEFAULT NULL,
  `r_img` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`champname`),
  CONSTRAINT `skill_ibfk_1` FOREIGN KEY (`champname`) REFERENCES `champion` (`name_en`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skill`
--

LOCK TABLES `skill` WRITE;
/*!40000 ALTER TABLE `skill` DISABLE KEYS */;
INSERT INTO `skill` VALUES ('Akali','암살자의 표식 (Assasin\'s Mark)','오연투척검 (Five Point Strike)','황혼의 장막 (Twilight Shroud)','표창곡예 (Shuriken Flip)','무결처형 (Perfect Execution)','스킬 공격으로 챔피언에게 피해를 입히면 해당 챔피언의 주변에 원이 생깁니다.<br>아칼리가 이 원의 경계를 넘어가면 카마의 사거리와 피해량이 증가합니다. 다음 공격의 사거리가 두 배로 증가하며 39~180 <span class=\"ad\">(+0.6 추가AD)</span> <span class=\"ap\">(+0.5AP)</span> 의 추가 마법 피해를 입히고 기력을 10/15/20 회복합니다.','단검을 부채꼴 모양으로 던져 30/55/80/105/130 <span class=\"ad\">(+0.65 AD)</span> <span class=\"ap\">(+0.6 AP)</span>의 마법 피해를 입힙니다. 사거리 끝에 있는 적들은 잠시 둔화됩니다.<br>최고 스킬 레벨에서 미니언과 몬스터에게 125%의 피해를 입힙니다. <span class=\"range\">(사정거리: 500)</span>','연막탄을 떨어뜨려 5/5.5/6/6.5/7초 동안 지속되는 연막을 퍼뜨립니다.<br>연막 안에 있는 동안 아칼리는 투명해지며 아칼리의 이동 속도가 30/35/40/45/50% 증가했다가 2초에 걸쳐 원래대로 돌아옵니다.<br>은신 - 투명: 근처의 적 포탑 또는 절대 시야만이 아칼리의 모습을 드러나게 할 수 있습니다. <span class=\"range\">(사정거리: 250)</span>','뒤로 공중제비를 돌며 전방으로 표창을 던져 50/85/120/155/190 <span class=\"ad\">(+0.35AD)</span> <span class=\"ap\">(+0.5AP)</span>의 마법 피해를 입히고 표창에 맞은 첫 번째 적이나 연막에 표식을 남깁니다.<br>재사용 시: 표식을 남긴 대상에게 돌진해 동일한 양의 피해를 줍니다. <span class=\"range\">(사정거리: 650)</span>','두 번의 돌진: 첫 번째 돌진은 지정한 적을 뛰어넘어 아칼리가 돌진하는 모든 적에게 125/225/325 <span class=\"ad\">(+0.5 추가 AD)</span>의 물리 피해를 입힙니다. 2.5초가 지나면 다시 돌진할 수 있습니다.<br>두 번째 돌진은 적들을 관통하여 대상이 잃은 체력에 비례해 120/180/240 <span class=\"ap\">(+0.3 AP)</span> ~ 225/450/645 <span class=\"ap\">(+0.9 AP)</span>의 마법 피해를 입힙니다. <span class=\"range\">(사정거리: 750)</span>','../file/champion/Akali/passive.jpg','../file/champion/Akali/q.jpg','../file/champion/Akali/w.jpg','../file/champion/Akali/e.jpg','../file/champion/Akali/r.jpg'),('Amumu','저주의 손길(Cursed Touch)','붕대 던지기(Bandage Toss)','절망(Despair)','짜증내기(Tantrum)','슬픈 미라의 저주(Curse of the Sad Mummy)','아무무의 기본 공격을 받은 대상은 3초 동안 저주에 걸려 마법 피해를 입을 때마다 10%의 추가 고정 피해를 받습니다.','붕대를 지정한 위치에 던집니다. 적 유닛이 붕대에 맞으면 아무무가 붕대를 당겨 적에게 다가간 뒤 적을 1초 기절시키고 80/130/180/230/280 <span class=\"ap\">(+0.7AP)</span>의 마법 피해를 입힙니다.<span class=\"range\">(사정거리: 1100) </span>','<span class=\"ad\">활성/비활성화: </span> 아무무가 울부짖으며 근처 적들에게 걸린 저주를 초기화시키고 0.5초당 4/6/8/10/12 + 최대 체력의 0.25%에 해당하는 피해를 입힙니다. <span class=\"range\"> (범위: 300) </span>','<span class=\"ad\">기본 지속 효과:</span> 아무무가 받는 물리 피해를 2/4/6/8/10 (+0.03 추가 방어력) (+0.03 추가 마법 저항력) 감소시킵니다. <br><br> <span class=\"ad\">사용 시:</span> 아무무가 주변의 적들에게 75/100/125/150/175 <span class=\"ap\"> (+0.5AP)</span>의 마법 피해를 입힙니다. 아무무가 공격 당할 때마다 짜증내기의 재사용 대기시간이 0.5초씩 감소합니다. <span class=\"range\"> (범위: 200)</span>','아무무가 주변 적을 옭아매며 150/250/350 <span class=\"ap\"> (+0.8AP) </span>의 마법 피해를 입히고 저주를 내리며, 2초 동안 기절시킵니다.<span class=\"range\">(범위: 550)</span>','../file/champion/Amumu/passive.jpg','../file/champion/Amumu/q.jpg','../file/champion/Amumu/w.jpg','../file/champion/Amumu/e.jpg','../file/champion/Amumu/r.jpg'),('Kayle','거룩한 승천(Divine Ascent)','광휘의 일격(Radiant Blast)','천상의 축복(Celestial Blessing)','화염주문검(Starfire Spellblade)','신성한 심판(Divine Judgement)',' 챔피언 및 스킬 레벨이 오를수록 케일의 공격이 강화됩니다.<br><br>1레벨 - 영광 : 기본 공격 시 공격 속도가 5초 동안 6%(+주문력의 2%) 증가합니다.(최대 5회 중첩) 최대 중첩 시 희열 상태가 되며 이동 속도가 8% 증가합니다. <br><br>6레벨 - 비상 : 공격 사거리가 525까지 증가합니다<br><br>11레벨 - 작열 : 희열 상태 공격 시 화염파를 발사해 마법 피해를 입힙니다. <br><br>16레벨 - 승천 : 영구히 희열 상태를 유지하며 공격 사거리가 575까지 늘어납니다.','케일이 처음으로 적을 맞히면 멈추는 천상의 검을 소환합니다. <br><br>검은 대상과 그 뒤에 있는 적들에게 60/100/140/180/220<span class=\"ad\"> (+0.6 추가AD)</span> <span class=\"ap\"> (+0.5AP)</span>의 마법 피해를 입히고 2초 동안 26/32/38/44/50%만큼 둔화시키며 방어력과 마법 저항력을 4초 동안 15%만큼 낮춥니다. <span class=\"range\"> (사정거리: 900)</span>','케일과 대상 아군 챔피언이 60/90/120/150/180<span class=\"ap\"> (+0.3 AP)</span>의 체력을 회복하고 2초 동안 이동 속도가 24/28/32/36/40%<span class=\"ap\"> (+0.08 AP) </span>증가합니다. <span class=\"range\"> (사정거리: 900) </span>','기본 지속 효과 : 공격 시 15/20/25/30/35<span class=\"ad\"> (+0.1 총AD) </span> <span class=\"ap\"> (+0.25AP) </span>의 추가 마법 피해를 입힙니다. <br><br>사용 시 : 케일의 다음 공격 사거리가 증가하며 대상이 잃은 체력의 8/9/10/11/12% (+주문력 50당 1%)만큼 추가 마법 피해를 입힙니다. 이 공격은 케일이 11레벨에 도달하면 대상에게 적중 시 폭발하여 주변 적에게 피해를 입힙니다. <span class=\"range\"> (사정거리: 550) </span>','케일이 아군 챔피언 한 명을 2초 동안 무적 상태로 만듭니다. <br><br>시전 시간이 끝나면 대상 주위 지역을 정화해 주변 적에게 200/350/500<span class=\"ad\"> (+1.0 추가AD) </span> <span class=\"ap\"> (+0.8AP) </span>의 마법 피해를 입힙니다. <span class=\"range\"> (사정거리: 900, 범위: 500) </span>','../file/champion/Kayle/passive.jpg','../file/champion/Kayle/q.jpg','../file/champion/Kayle/w.jpg','../file/champion/Kayle/e.jpg','../file/champion/Kayle/r.jpg'),('VelKoz','유기물 분해(Organic Deconstruction)','플라즈마 분열(Plasma Fission)','공허 균열(Void Rift)','지각 붕괴(Tectonic Disruption)','생물 분해 광선(Lifeform Disintegration Ray)','벨코즈의 스킬 공격은 맞은 적들을 분해시킵니다. 세 번째 적중 시 대상의 방어력을 조작하여 25+(8×레벨) <span class=\"ap\"> (+0.5 AP) </span>의 고정 피해를 입힙니다.<br>적들은 7초 동안 공격 받지 않으면 유기물 분해 효과가 제거됩니다. <br>기본 공격 시 유기물 분해가 재적용되지만, 중첩은 쌓이지 않습니다. <br>궁극기로는 유기물 분해가 적용되지 않습니다. 또한 유기물 분해 중첩 표시는 벨코즈 자신만 확인할 수 있습니다.','벨코즈가 플라즈마 광선을 발사해 80/120/160/200/240 <span class=\"ap\"> (+0.8 AP) </span>의 마법 피해를 입히고 70%의 둔화를 적용합니다. 둔화 효과는 1/1.4/1.8/2.2/2.6초에 걸쳐 점차 감소합니다. <br><br>스킬을 재사용하거나 적을 맞히면 광선이 90도 각도로 두 개로 갈라집니다.<br>플라즈마 분열로 유닛 처치시 마나 소모량의 50%를 돌려받습니다. <span class=\"range\"> (사정거리: 1050.0) </span>','벨코즈가 공허로 통하는 균열을 열어 30/50/70/90/110 <span class=\"ap\"> (+0.15 AP) </span>의 마법 피해를 입힙니다. 잠시 후 추가로 45/75/105/135/165 <span class=\"ap\"> (+0.25 AP) </span>의 마법 피해를 입힙니다. 두 공격 모두 유기물 분해 중첩을 올려줍니다. <br><br>이 스킬은 두 번 충전 가능하고, 18/17/16/15/14초의 충전 대기시간을 가집니다. <span class=\"range\"> (사정거리: 1050.0) </span>','벨코즈가 가까운 지면을 붕괴시켜, 잠시 후 70/100/130/160/190 <span class=\"ap\"> (+0.3 AP) </span>의 마법 피해를 입히고 여기 맞은 적들을 0.75초간 공중에 띄웁니다. <br><br>벨코즈와 가까이 있다가 이 공격에 맞은 적들은 스킬을 시전한 방향으로 약간 밀려납니다. <span class=\"range\"> (사정거리: 850.0) </span>','기본 지속 효과: 적 챔피언을 분해하면 7초 동안 연구합니다. 기본 공격 및 스킬 사용시 연구의 지속시간이 초기화됩니다. 연구 완료된 유닛에게는 고정 피해를 입힙니다. <br><br>사용 시: 벨코즈가 정신을 집중하여, 2.5초 동안 마우스 커서를 따라가는 에너지 광선을 발사합니다. 이 때 마법 피해가 총 450/625/800<span class=\"ap\"> (+1.25 AP) </span>까지 상승하며, 광선에 맞은 적들은 속도가 20% 느려지고, 0.7초마다 유기물 분해 중첩이 쌓입니다. (최대 중첩 수 3회) 재시전하여 취소할 수 있습니다. <span class=\"range\"> (사정거리: 1550) </span>','../file/champion/VelKoz/passive.jpg','../file/champion/VelKoz/q.jpg','../file/champion/VelKoz/w.jpg','../file/champion/VelKoz/e.jpg','../file/champion/VelKoz/r.jpg'),('Zed','약자 멸시(Contempt for the Weak)','예리한 표창(Razor Shuriken)','살아있는 그림자(Living Shadow)','그림자 베기(Shadow Slash)','죽음의 표식(Death Mark)','제드는 체력이 50% 이하인 적을 기본 공격할 때 적의 최대 체력의 6/8/10%에 해당하는 추가 마법 피해를 입힙니다. 이 효과는 동일한 대상에 대해서는 10초에 한 번씩만 적용됩니다. <br><br>몬스터에게 입히는 피해량이 100% 증가합니다.','제드와 그림자가 표창을 던져, 각각 처음 맞는 적에게 80/115/150/185/220 <span class=\"ad\"> (+1.0 추가AD) </span>의 물리 피해를 입히고, 이후 관통하는 적들에게는 각각 60%의 피해를 입힙니다. <br><br> <span class=\"range\"> (사정거리: 900) </span>',' 제드의 그림자가 전방으로 질주하여, 5초간 그 자리에 유지됩니다. 이 스킬을 다시 시전하면 제드가 그림자와 위치를 바꿉니다.<br>그림자는 제드가 사용하는 스킬을 모방합니다. <br><br>그림자와 제드가 동일한 대상을 가격할 경우, 제드는 30/35/40/45/50의 기력을 회복합니다. 기력 회복은 시전 시 1번만 적용됩니다. <span class=\"range\"> (사정거리: 700/1,950) </span>',' 제드와 그림자가 근처의 적들을 베어 70/90/110/130/150 <span class=\"ad\"> (+0.9 추가AD) </span>의 물리 피해를 입힙니다. <br><br>제드가 이 스킬로 적 챔피언을 하나 맞힐 때마다 살아있는 그림자의 재사용 대기시간이 2초씩 감소합니다. 그림자가 복제한 그림자 베기에 맞은 적은 각각 1.5초 동안 20/25/30/35/40%의 둔화에 걸립니다. <br><br>제드와 그림자의 그림자 베기에 모두 맞은 적은 둔화 비율이 30/37.5/45/52.5/60% 적용되는 대신, 추가 피해는 받지 않습니다.',' 제드가 잠시 공격을 받지 않는 상태가 되어 제 자리에 6초 동안 유지되는 그림자를 생성합니다. 그 다음 대상에게 돌진하여 죽음의 표식을 남깁니다.<br>3초가 지나면 표식이 발동하여 <span class=\"ad\"> (1.0AD) </span>에 더해, 제드와 그림자가 표식이 적용된 동안 해당 적에게 가한 모든 마법과 물리 피해의 25/40/55%를 물리 피해로 가합니다. 죽음의 표식을 다시 활성화하면 제드가 이 그림자와 위치를 바꿉니다.<br>죽음의 표식 사용 후 그림자와 자리를 바꾸기 위해, 0.5초의 재사용 대기시간을 가집니다.','../file/champion/Zed/passive.jpg','../file/champion/Zed/q.jpg','../file/champion/Zed/w.jpg','../file/champion/Zed/e.jpg','../file/champion/Zed/r.jpg');
/*!40000 ALTER TABLE `skill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skin`
--

DROP TABLE IF EXISTS `skin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skin` (
  `id` int(11) NOT NULL,
  `champname` varchar(20) DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  `skinname` varchar(1000) DEFAULT NULL,
  `path` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `champname` (`champname`),
  CONSTRAINT `skin_ibfk_1` FOREIGN KEY (`champname`) REFERENCES `champion` (`name_en`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skin`
--

LOCK TABLES `skin` WRITE;
/*!40000 ALTER TABLE `skin` DISABLE KEYS */;
INSERT INTO `skin` VALUES (1,'Akali',1,'아칼리','../file/champion/Akali/skin/1.jpg'),(2,'Akali',2,'독침 아칼리','../file/champion/Akali/skin/2.jpg'),(3,'Akali',3,'지옥의 아칼리','../file/champion/Akali/skin/3.jpg'),(4,'Akali',4,'국가대표 아칼리','../file/champion/Akali/skin/4.jpg'),(5,'Akali',5,'간호사 아칼리','../file/champion/Akali/skin/5.jpg'),(6,'Akali',6,'불의 축제 아칼리','../file/champion/Akali/skin/6.jpg'),(7,'Akali',7,'은빛 송곳니 아칼리','../file/champion/Akali/skin/7.jpg'),(8,'Akali',8,'인간사냥꾼 아칼리','../file/champion/Akali/skin/8.jpg'),(9,'Akali',9,'횟집 아칼리','../file/champion/Akali/skin/9.jpg'),(10,'Akali',10,'K/DA 아칼리','../file/champion/Akali/skin/10.jpg'),(11,'Akali',11,'K/DA 아칼리 <br>프레스티지 에디션','../file/champion/Akali/skin/11.jpg'),(12,'Akali',12,'프로젝트: 아칼리','../file/champion/Akali/skin/12.jpg'),(13,'Akali',13,'True Damage 아칼리','../file/champion/Akali/skin/13.jpg'),(14,'Akali',14,'K/DA ALL OUT 아칼리','../file/champion/Akali/skin/14.jpg'),(15,'Kayle',1,'케일','../file/champion/Kayle/skin/1.jpg'),(16,'Kayle',2,'은빛 케일','../file/champion/Kayle/skin/2.jpg'),(17,'Kayle',3,'청록의 심판자 케일','../file/champion/Kayle/skin/3.jpg'),(18,'Kayle',4,'승천한 케일','../file/champion/Kayle/skin/4.jpg'),(19,'Kayle',5,'전장을 누비는 케일','../file/champion/Kayle/skin/5.jpg'),(20,'Kayle',6,'심판관 케일','../file/champion/Kayle/skin/6.jpg'),(21,'Kayle',7,'에테르 날개 케일','../file/champion/Kayle/skin/7.jpg'),(22,'Kayle',8,'라이엇 전경 케일','../file/champion/Kayle/skin/8.jpg'),(23,'Kayle',9,'강철의 심판관 케일','../file/champion/Kayle/skin/9.jpg'),(24,'Kayle',10,'펜타킬 케일','../file/champion/Kayle/skin/10.jpg'),(25,'Kayle',11,'초능력특공대 케일','../file/champion/Kayle/skin/11.jpg'),(26,'Amumu',1,'아무무','../file/champion/Amumu/skin/1.jpg'),(27,'Amumu',2,'파라오 아무무','../file/champion/Amumu/skin/2.jpg'),(28,'Amumu',3,'평창 아무무','../file/champion/Amumu/skin/3.jpg'),(29,'Amumu',4,'이모키드 아무무','../file/champion/Amumu/skin/4.jpg'),(30,'Amumu',5,'반품된 아무무','../file/champion/Amumu/skin/5.jpg'),(31,'Amumu',6,'킹카가 될 뻔한 아무무','../file/champion/Amumu/skin/6.jpg'),(32,'Amumu',7,'작은 기사 아무무','../file/champion/Amumu/skin/7.jpg'),(33,'Amumu',8,'슬픈 로봇 아무무','../file/champion/Amumu/skin/8.jpg'),(34,'Amumu',9,'깜짝 파티 아무무','../file/champion/Amumu/skin/9.jpg'),(35,'Amumu',10,'지옥의 아무무','../file/champion/Amumu/skin/10.jpg'),(36,'Amumu',11,'마법공학 아무무','../file/champion/Amumu/skin/11.jpg'),(37,'Amumu',12,'호박 왕자 아무무','../file/champion/Amumu/skin/12.jpg'),(38,'Zed',1,'제드','../file/champion/Zed/skin/1.jpg'),(39,'Zed',2,'칼날 폭풍 제드','../file/champion/Zed/skin/2.jpg'),(40,'Zed',3,'SKT T1 제드','../file/champion/Zed/skin/3.jpg'),(41,'Zed',4,'프로젝트: 제드','../file/champion/Zed/skin/4.jpg'),(42,'Zed',5,'챔피언십 제드','../file/champion/Zed/skin/5.jpg'),(43,'Zed',6,'죽음의 사도 제드','../file/champion/Zed/skin/6.jpg'),(44,'Zed',7,'은하계 학살자 제드','../file/champion/Zed/skin/7.jpg'),(45,'Zed',8,'초능력특공대 제드','../file/champion/Zed/skin/8.jpg'),(46,'VelKoz',1,'벨코즈','../file/champion/VelKoz/skin/1.jpg'),(47,'VelKoz',2,'전투 기계 벨코즈','../file/champion/VelKoz/skin/2.jpg'),(48,'VelKoz',3,'빛의 벨코즈','../file/champion/VelKoz/skin/3.jpg'),(49,'VelKoz',4,'나 벨코즈 아니다','../file/champion/VelKoz/skin/4.jpg'),(50,'VelKoz',5,'지옥의 벨코즈','../file/champion/VelKoz/skin/5.jpg');
/*!40000 ALTER TABLE `skin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stat`
--

DROP TABLE IF EXISTS `stat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stat` (
  `champname` varchar(20) NOT NULL,
  `hp` double(5,2) DEFAULT NULL,
  `mp` double(4,1) DEFAULT NULL,
  `attack` double(3,1) DEFAULT NULL,
  `attack_speed` double(4,3) DEFAULT NULL,
  `armor` int(2) DEFAULT NULL,
  `magic_resistance` double(3,1) DEFAULT NULL,
  `speed` int(3) DEFAULT NULL,
  `attack_range` int(3) DEFAULT NULL,
  PRIMARY KEY (`champname`),
  CONSTRAINT `stat_ibfk_1` FOREIGN KEY (`champname`) REFERENCES `champion` (`name_en`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stat`
--

LOCK TABLES `stat` WRITE;
/*!40000 ALTER TABLE `stat` DISABLE KEYS */;
INSERT INTO `stat` VALUES ('Akali',575.00,200.0,62.4,0.625,23,37.0,345,125),('Amumu',613.12,287.2,53.4,0.638,30,32.1,335,125),('Kayle',600.00,300.0,52.0,0.667,26,34.0,335,175),('VelKoz',520.00,469.0,54.9,0.625,22,30.0,340,525),('Zed',584.00,200.0,63.0,0.651,32,32.1,345,125);
/*!40000 ALTER TABLE `stat` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-16  2:27:47
