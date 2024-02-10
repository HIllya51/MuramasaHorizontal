//<continuation number="40">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb01_001.nss_MAIN
{

	$TITLE_NOW="　";

	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

	//▼イベントＣＧ
	#bg004_鄙びた村a_01=true;
	#bg041_片瀬海岸_01=true;
	#bg073_海a_01=true;
	#bg003_荒れ野_01=true;
	#bg013_鎌倉俯瞰a_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	#voice_on_正宗=true;

	$PreGameName = $GameName;

	$GameName = "mb01_002.nss";

}

scene mb01_001.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル
	PrintBG("上背景", 30000);

//おがみ：念のため間を入れておきます。
	Wait(1000);
	Delete("上背景");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　……那是之后被称为元日战争的事变，一条很清楚。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆鎌倉時代
//◆村背景にモノクロマスクでＯＫか。
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	CreateTextureSP("絵背景", 100, Center, Middle, "cg/bg/bg004_鄙びた村a_01.jpg");
	Delete("上背景");
	SetTone("絵背景", Monochrome);
	FadeDelete("絵暗転", 2000, true);
	SoundPlay("@mbgm23",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　他起初不过是个住在相模国的一介乡下铁匠。
　从锄头、铁锹之类农具到马蹄、菜刀等，包揽村民生
活安稳所需的所有铁器。

　当然，不锻造剑冑之类。
　不说村民生活中用不着，区区一介乡下铁匠原本就不
可能懂得其锻造技术。

　但会打少许刀剑。
　这是保护村子所需的器具，用来对付不时从山上袭来
的野狗之类，或是在幕府所在地关东虽不多见，倒也不
是完全没有的流贼等。

　某一天，其中一把被统治村子的领主看中了。
　虽做工粗糙，但丝毫不像出自一个无名乡下铁匠之手
——于是，领主便略有些兴致，记住了他。

　大概是由于这个缘故。
　弘安四年，幕府史无前例地发布大规模动员令，将掌
权的弟弟派遣为主将。领主也带领一族追随者参加其直
属军，这时，他被任命为军中铁匠。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	CreatePlainSP("上背景", 500);
	CreateTextureSP("絵背景", 100, Center, Middle, "cg/bg/bg025_坑道山脈と森a_02.jpg");
	SetTone("絵背景", Monochrome);
	FadeDelete("上背景", 1000, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
　对于那次战争，他一无所知。
　他混在杂役下人之中不停地工作，一无所知地度过每
一天。不知道自己磨去锈迹的古刀用来斩何物，也不知
道修补好的铠甲用来防御什么。

　根本无所谓。
　多半是镰仓政府讨伐某处举旗造反的豪族罢了，那种
事，和他、和村子毫不相干。

　战事拉长的话自己留在军中的时间也会延长，从村子
的征用也会更厉害吧。
　所以他希望战争早点结束。这是他唯一的心愿。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	CreateTextureSP("絵背景", 100, Center, Middle, "cg/bg/bg042_江ノ島沿岸_03.jpg");
	Rotate("絵背景", 0, @0, @180, @0, null,true);

	FadeDelete("上背景", 1000, true);
	SetTone("絵背景", Monochrome);
	FadeDelete("絵暗転", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
　每天的行军时间都很长。
　当面朝大海，备好船只朝向更遥远的陆地驶去之时，
他才终于察觉到自己即将去往的地方是大和的尽头——
九州。

　到底为什么非得将关东的士兵送到那里去呢？只调用
那附近有领地的家臣不就足够了吗？
　他和下人们都百思不得其解。

　当然，没有哪个和善的武士会向下人们一一说明情况。
　当再次抵达海岸，面朝大海重兵把守的阵势映入眼帘
时，他们这才朦朦胧胧地悟出了真相。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	CreateTextureSP("絵背景", 100, Center, Middle, "cg/bg/bg073_海a_03.jpg");
	Rotate("絵背景", 0, @0, @180, @0, null,true);

	FadeDelete("上背景", 1000, true);
	SetTone("絵背景", Monochrome);
	FadeDelete("絵暗転", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0023]
　——敌人是渡海而来的。
　从只会在传说中登场的天边异国而来。

　有许多当地平民为军队效力，得以从他们口中问出具
体情况。
据闻，“敌人”已袭击了数座岛屿，损失惨重。

　博多也已数度遭到敌人先遣部队——武者团的袭击，
每逢此时，都会有大批前去迎击的大和武者战死沙场。
　他们都是自赖朝公以来以常胜而闻名的家臣。

　敌方武者擅于随机应变，家臣们虽在速度上有优势，
变通方面却不及敌方，只要“头”被压制住，便接二
连三地败下阵来……
　负责做饭的老人战战兢兢地如是说。

　面对这些家伙，自己打的刀能起多大作用？
　他的心中开始充满不安。

　把他带至此处的领主似乎也有同样的担忧。
　特意把他叫过去，焦躁地呵斥了他一顿，命他不许怠
工，谨记承蒙提拔之恩，不可恩将仇报。

　他诚惶诚恐地满口称是。
　但，实际却在效仿下人们，将随身物品收拾整齐，做
好随时逃跑的准备。

　如今的境遇对自己来说纯属困扰，根本不记得受过什
么恩惠，就算有，舍命报恩之类的事情他才不想干呢。
　就算与海那边的异国打仗，也和他没有丝毫的关系，
道理都是一样的。

　唯有逃命才最重要，只有回村才最重要。
　让想打仗的人上战场不就好了。

　就算此番战争众家臣落败，想必敌人也不可能攻入关
东。
　九州一带或许会处于水深火热之中……但又不是自己
的责任，只能表示同情。

　他是这样想的。
　再说了，异国的兵也同样都是人。

　周围的人都在煞有介事地窃窃私语，说蒙古人简直是
群恶鬼，大杯喝鲜血大口吃人肉，根本不像人类……等
等等等——对此，他却十分清醒。

　不知是否因为他是靠废不纯之物而锻造纯物的锻造业
为生的缘故。他只是单纯地认为——敌军似乎也和我方
一样使用船和剑冑，那应该和我们一样，都是人类。

　换言之，就算大和全境被征服，也不过是统治者从幕
府换成别的什么人罢了。
　他下了结论：果然还是怎样都无所谓。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(2000, 0);

	WaitKey(1000);

//◆海岸背景にモノクロマスク
	PrintBG("上背景", 30000);
	CreateTextureSP("絵背景", 100, Center, Middle, "cg/bg/bg041_片瀬海岸_01.jpg");
	SetTone("絵背景", Monochrome);

	CreateSE("SE01","se背景_ガヤ_緊急事態01");
	MusicStart("SE01",3000,500,0,1000,null,true);

	FadeDelete("上背景", 2000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　终于迎来了决战之日。
　水平线上乌压压一片黑影。

　数不清的船只蜂拥而上。
　还有许多武者在上空盘旋。

　人数比以博多为阵地、西国之兵总集结的大军更多一
倍。
　下人中有数人早已逃跑，武人们被吓得甚至忘了去咎
责他们。

　而他没有和他们一起逃走，当然不是因为勇气不足的
缘故。
　只不过是在心底打着小算盘，觉得战斗开始后趁乱逃
脱，更能保证将来的平安无事罢了。

　——然而。
　这种卑劣的小聪明，决定了他这个人的命运。

　不知是否包含着示威之意，蒙古敌军伴着锣鼓声逼近
博多。
　大和军布阵原地不动，屏息静待……

　不久。
　与此前完全不同的战栗，令人血色尽失。

　最先发觉的是弓箭手的数人——特别是视力较好的人。
　他们突如其来的瞠目结舌或发出嘶哑呻吟声的反应令
周围的人为之讶异。但，不久他们也都明白了。

　每个人都看到了。他也看到了。
　船上所呈现出的景象。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 3000, 0, null);

	CreateTextureEX("絵背景200", 100, Center, Middle, "cg/bg/bg073_海a_01.jpg");
	SetTone("絵背景200", Monochrome);

	Fade("絵背景200", 500, 1000, null, true);


//◆惨劇
	SoundPlay("@mbgm35",0,1000,true);
	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　许多女人排成一排。
　都是大和女人。

　她们全都像四足动物一样撅起屁股。
　赤身裸体。

　奇装异服的男人们抱着她们的屁股。
　不管是脸型、打扮、还是交谈间吐出的粗野话语、高声
尖笑，都绝非大和人。

　异邦人在糟蹋大和女人。
　哭声与喊声却换来阵阵哄笑声。

　……听说，蒙古人攻占岛屿后，就将男人全数杀光，
把女人掳走……
　他记起，有关敌人的无数传闻中，有这样一种说法。

　女人们逃也逃不了，持续遭受暴行。
　在船上也无处可逃。然而，不止如此。

　她们被绑在船上。
　手背上被开了个大洞，锁链穿过手背上的洞将她们锁
在船上。

　这样如何逃得了。
　简直就像是在对待家畜。

　女人们都很年轻。
　或风华正茂、或花样年华、或含苞未放。

　年幼的小姑娘被好几个士兵轮奸。
　这些士兵们似乎只是在享受侵犯小姑娘尚未成熟的性
器的乐趣而已。

　最后是一个身材魁梧的士兵。
　他却怎样也插不进去。

　周围的士兵们纷纷发出下流的嘲笑声。
　那个士兵脸涨得通红，大概是为了泄愤，狠狠地对着
女孩痛苦的脸就是一阵毒打，直到把女孩揍得稀烂后才
将她扔在船沿。

　锁链将女孩的尸体悬挂在船沿。
　仔细观察，会发现每艘船上都挂有这种<RUBY text="··">装饰</RUBY>。

　有的船的船舷上还垂吊着被大枪穿成一串的女人。

　有的船还把被<RUBY text="··">分尸</RUBY>的女人一个个吊起来。

　有的船上还有几个还活着的女人。
　……这些船上的装饰与其他船相比，都有一个明显的
特征。

　这些女人较为年长。
　而且她们的脖子都一定会被小小的物体绑着。

　物体。没错，物体。

　只能称其为物体。因为那是没有生命的东西。就算曾
经拥有过生命。

　听到女人们发出的疯狂的哭叫声，船上的士兵们反而
哄堂大笑。
　他们拍着手，似乎愉快极了。

　——类似景象，<k>
　数不胜数，<k>
　比比皆是，<k>
　放眼望去——

　这已不是人类会做出的行为。
　绝对不是。

　<RUBY text="······">做出这种行径</RUBY>，
<RUBY text="·······">已经不是人类了</RUBY>。

　他知道了。
　知道了一个世界的真相。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆テロップ
	PrintGO("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	CreateTextureSP("絵文字壱", 100, Center, Middle, "cg/sys/Telop/tp_英雄編挿入01.png");
	Move("絵文字壱", 0, @0, @100, null, true);

	CreateColorSP("絵黒地", 10, "#000000");
	FadeDelete("上背景", 1500, true);
	WaitKey(1000);
	FadeDelete("絵暗転", 2000, true);

/*
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　
　　　　　　这世间有恶鬼。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――
*/

	WaitKey();
	FadeDelete("絵文字壱", 1500, true);

	WaitKey(1000);

	PrintBG("上背景", 30000);
	CreateTextureSP("絵背景", 100, Center, Middle, "cg/bg/bg041_片瀬海岸_01.jpg");
	SetTone("絵背景", Monochrome);
	FadeDelete("上背景", 2000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　想必领悟这个道理的不止他一个。
　所有的下人应该都是这样想的。

　但他们都做出了选择：或被绝望击垮、或疯了似的边
喊边逃。
　只有他不一样。

　他没有绝望。

　敌方武者开始空袭。
　借着空袭助阵，士兵们换乘小船，冲向海岸。

　他跳上前来。
　比任何人都迅速。

　用没怎么打过架的拳头握紧自己打的刀，
　未披铠甲，仅着一件单衣。

　他冲向战场中央，数不清的毒箭交错、伴随着可怕巨
响声爆炸的怪球纷飞。

　他什么都没想。
　没必要去想。

　那时——那之后的他，秉承唯一信念。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆テロップ
	PrintGO("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	CreateTextureSP("絵文字弐", 100, Center, Middle, "cg/sys/Telop/tp_英雄編挿入02.png");
	Move("絵文字弐", 0, @0, @200, null, true);
	CreateColorSP("絵黒地", 10, "#000000");
	FadeDelete("上背景", 1500, true);
	WaitKey(1000);
	FadeDelete("絵暗転", 2000, true);

/*
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　
　　　　　　　　　　　不可饶恕。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――
*/

	WaitKey();
	FadeDelete("絵文字弐", 1500, true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　他舍弃了当一个无名小卒、湮没在历史长河中的命运，
　踏上名垂大和史的道路。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se特殊_雰囲気_兵士包囲");
	CreateSE("SE02","se背景_ガヤ_おたけび01");
	MusicStart("SE01",500,1000,0,1000,null,false);
	MusicStart("SE02",500,1000,0,1000,null,false);

	Wait(1500);

	SetVolume("SE*", 2000, 0, null);

	ClearWaitAll(2000, 0);

	WaitKey(1000);

//◆適当風景＋過去マスク
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	CreateTextureSP("絵背景", 100, Center, Middle, "cg/bg/bg003_荒れ野_01.jpg");
	CreateTextureSP("絵背景下", 90, Center, Middle, "cg/bg/bg013_鎌倉俯瞰a_01.jpg");
	SetTone("絵背景", Monochrome);
	SetTone("絵背景下", Monochrome);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);
	SoundPlay("@mbgm32",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　……他活了下来。
　不懂剑法的他虽身负重伤却并未丧命，可以说简直是
个奇迹。

　这大概是因为，武士之中有不少人不允许被他区区一
个下人超越而奋起直追冲至他前方，或敬佩他不符合身
份的行动而想要保护他。

　这一战，大和胜利。
　虽在敌人的猛攻之下陷入苦战，却顽强抗争抵挡——
而后造访的台风，最终将海上众军一吹而散。

　人们沸腾了，纷纷说这是神佛保佑、现世现报。
　他虽未表示否定，却无法像他们那样开心。

　神佛来的<RUBY text="···">太迟了</RUBY>。
　神风吹来之时，是在战斗趋势基本已成定局、蒙古军
舍弃桥头堡而撤退至船上之后。

　不能指望这种靠不住的力量。
　他已经明白了。这世间有“恶”。

　且不仅仅局限于蒙古军。
　蒙古人也是人。因此恶鬼是从人类之中滋生的。只要
有人，无论何时、何地都能生出恶鬼。

　他保持着冲向战场的势头、独自一人拖着伤口还未痊
愈的身体回到关东。
　但他并未朝着故乡的方向。

{	FadeDelete("絵背景", 1000, false);}
　他去了镰仓，叩响了新藤五国光的大门。
　此人是关东最负盛名的剑冑锻造师。

　——讨恶需人之力。
　必须追求人力颠峰之剑冑。

　抱着如此信念，他恳请拜师。
　这简直是天方夜谭。

　剑冑锻造之业乃代代相传，由父传予子。
　不可能教授给一个素昧平生的外人。

　而且，都是从幼年时期便开始传业。
　像他这种成年以后才开始修行的例子，恐怕是闻所未
闻。

　再者，他只是一个普通的大和人。
　并非生来就是锻造师的虾夷。就算能够修得造剑冑之
本领，做工也绝对比不上虾夷所造之物。

　当代国光，以及其亲族弟子，都将他的话付之一笑，
而且还把这个不断叫嚷着“世间有恶鬼，须讨之”的男
人当作可怕的疯子，正打算将他轰出去。

　而出面阻止的是相当于当代国光叔父的人物。

　……锻造一门的技术传承基本是在亲子间进行的。
　父辈将所有的技术传授给儿子后，自己的肉体将变做
剑冑。儿子亲眼见证这一过程。

　但这种方法在万一传授失败之时，孕育着无法挽回的
危险。
　就算想恳求重新传授一次，父辈也已然变成一块冰冷
的装甲。

　为防备这种事态，按照惯例，锻造师子嗣之中年纪
最小者不变做剑冑，而是肩负起辅佐锻造一门的教育
重任了却一生。
　当代国光的叔父就是这种人物。

　叔父一直静静地观察着这个语出惊人的男人，终于
在族人要将他逐出门外时出面制止，并将他领至屋内。
　然后，告诉他说。

　——你是天命剑冑锻造师。
　我至今培育过数位亲族，并亲眼看着他们变做剑冑，
你若要修炼成功，想必比他们花费的时间都要短——

　国光的叔父真是好眼力。
　锻造剑冑，即是将自己的身体和灵魂脱胎换骨。

　他已经知道自己灵魂的形态，也很清楚目标形态，等
于已经先人一步完成锻造师修行过程中最困难的一步，
之后只需学习专业技术便可。
　……自那天之后，短短数年。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(2000, 0);
	WaitKey(1000);

//◆正宗·天牛虫
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	CreateTextureSP("絵立絵", 100, Center, Middle, "cg/st/3d正宗天牛虫_俯瞰.png");
	Move("絵立絵", 0, @0, @0, null, true);
	CreateColorSP("絵下地", 10, "#000000");
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);
	SoundPlay("@mbgm14",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　相州五郎入道“正宗”。
　他的理想终于实现。

　破邪剑冑。
　并非出自虾夷之手，却是天下无双的大名甲。

　无人不认可这副剑冑之美。
　无人不明了这种美意味着装甲之坚。

　大和锻造师竟能造出如此出色之甲。
　不仅粉碎了虾夷锻造师的自信，使他们哑口无言；而
且还带给长年处于劣势的大和锻造师极大的希望。

　倘若他得到操控者，如愿以偿大展身手的话，他的名
字和风姿将更广为人知，将有更多大和锻造师追随其后
——说不定最终可颠覆虾夷与大和锻造技术优劣之势。

　讽刺的是，未能如愿以偿正是因为他正宗太过出众。

　正宗刚造好便被即刻献给将军，不久后又呈给天皇御
览，之后便在最高掌权者之间来回往复。
　但，一次也未曾装甲。

　具有神圣不可侵犯之感的姿态令历代所有者都感叹而
敬畏，他们选择将它作为神宝秘藏，而不是用作实用的
武具。

　对于想成为讨恶剑冑的他来说，完全是背道而驰。
　他作为被深藏于宝库的传说中名甲流芳百世，却毫无
意义。

　他原本须邂逅与自己志同道合的操控者，并肩踏上征
战的旅途。
　然而夙愿未能实现，只有时间在不断流逝。

　五郎正宗在战国时代转辗至织田信长手中，自本能寺
之变后从公开场合消失，其后被暗地里秘密易主，最后
作为某村落的镇灾祭器而长眠。

　——须讨伐世间之恶。
　——须以吾刃断之。

　在并非本意的惰眠之中，没有一个人聆听他从未间断
的呐喊。

　但——数百年过去了。

　他的忍耐终于得到回报。
　他被解放，得以与期待已久的主人相遇。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆正宗·武者
	CreateTextureEX("絵立絵鎧", 110, Center, InBottom, "cg/st/3d正宗_立ち_通常.png");
	Move("絵立絵鎧", 0, @0, @0, null, true);
	FadeDelete("絵立絵", 1000, false);
	Fade("絵立絵鎧", 1000, 1000, null, true);

	SetFwR("cg/fw/fw正宗天牛虫_通常.png");

	#voice_on_正宗=true;

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb01/0010010b40">
《七百年……
　冗长而无作为的岁月。》


//【正宗】
<voice name="正宗" class="正宗" src="voice/mb01/0010020b40">
《然今，吾终得操控者。
　走，主君！》


//【正宗】
<voice name="正宗" class="正宗" src="voice/mb01/0010030b40">
《现世与蒙古横行之时并无不同。
　正宗之刃将其摧毁！》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　一条很清楚。
　很清楚正宗所经历是被称为元日战争的事变。

  那绝不是善与恶的对决。
　不过是因政治、经济问题而引发的国家间战争罢了。

　……但，那又如何？

　正宗也非常清楚。
　元日战争对他而言不过是一个契机。

　这场战争使他第一次明白了。
　这世间有恶。

　恶不可饶恕。

　——没错。
　恶不可饶恕。

　对于恶，必须从灵魂深处憎恶之。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw正宗天牛虫_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb01/0010040b40">
《出征吧，主君！》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	FadeDelete("絵立絵鎧", 1000, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　出征。
　为了与这世间的恶抗争。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"mb01_002.nss"