//<continuation number="1080">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;

//������󡸣ãУ��ǥХå��á�
		$GameDebugSelect = 1;

		Reset();
	}

}

scene ma02_002vs.nss_MAIN
{

	$TITLE_NOW=" �����������ڶ�ƪ ˫����������� ";

//�룺���å��ԥå��ãӣ��
	CP_AllSet("����");

	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

	//�����٥�ȣã�
	#���٥�ȥե�������=true;
	#bg010_���������Q_01=true;
	#bg004_�ɤӤ���a_01=true;
	#bg020_ɽ�}�ӵ�_01=true;
	#bg005_ɽ��_01=true;
	#bg002_��a_01=true;
	#bg202_�����ݳ�����ɽ_01=true;

	#ev504_����ͻ�M=true;
	#ev958_�L���R�\��=true;
	#ev903_�����ŚݥХꥢ�`չ�_=true;


	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "ma02_003.nss";

	CP_AllDelete();

}

scene ma02_002vs.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"ma02_001.nss"

	if($GameDebugSelect==1){CP_AllSet("���٥�");}

//���ڶ�����˫���T��

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}�\Ļ��", 1500, "Black");
	Delete("�ϱ���");

	CreateTextureEX("�}�ƥ�100", 2000, Center, Middle, "cg/sys/Telop/lg_�ڶ���.png");
	Fade("�}�ƥ�100", 2000, 1000, null, true);

	WaitKey(2000);

	FadeDelete("�}�ƥ�100", 2000, true);

	WaitKey(2000);

	PrintGO("�ϱ���", 25000);

	OnBG(10,"bg010_���������Q_01.jpg");
	FadeBG(0,true);

	FadeDelete("�ϱ���", 1000, true);

	SoundPlay("@mbgm16",0,1000,true);



//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
����̬��չ���ٶȲ���һ��ļ��硣
���������������ˡ�

���ھ��������ֵĴ�������˵��׽�����Ǻŵ�������֮
���������־����𳤣����׳�����������ͽ�ն�������
�ɾ�����Ա�ն������뿪���ҡ�

�������ڴ�����ָ���£��������ֽ�����ƶ��ɽ�塣
������Ϊֹ�����Ѿ������Ĳ��裬Ҳû��ֵ��һ��ı�
�ʡ�

�����ǵ�����Ӻ���ʮ�����ڵ���̬��չ��ȴ����ƥ��
��ȥ���ա�
���������ʱ��ָ���ת���ٶ����ɱ������ط����Ϻ�
�ࡣ

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����
	OnBG(10,"bg004_�ɤӤ���a_01.jpg");
	FadeBG(1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
������ƶ���С���������궯�������У����ǽ�ס
һ�����񣬴������УǣȣѾ���ǰ��Ѳ������顣

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ӵ�ǰ
	OnBG(10,"bg020_ɽ�}�ӵ�_01.jpg");
	FadeBG(1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
�����ھ��ٺ����Ʋ������⿪���еĿ�ɽһ����ǡ����
�������������ʿ�������۹����������صĿ󹤻��µ�
�еĳ��档

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorEXadd("�ե�å����", 15000, "WHITE");

	OnSE("se���L_����_�饤�ե�Ĥ�01",1000);
	Fade("�ե�å����",100,1000,null,true);

//������֦�k�h
	StR(1000, @0, @0,"cg/st/st����֦_���_�Ʒ�.png");
	FadeStR(0,true);

	Fade("�ե�å����",300,0,null,true);
	Delete("�ե�å����");


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
����û���ü���ֹ��ֻ��ǹ������ɧ����Ⱥ���ڼž���
ʿ�������Լ���Ѫ���У����Ž�פ�������Ĵ����Ů��
��ȥǹ�����̡�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������֦���L��
	CreatePlainSP("�}��д", 5000);
	StL(1000, @0, @0,"cg/st/st�L��_ͨ��_�Ʒ�.png");
	StR(1000, @0, @0,"cg/st/st����֦_ͨ��_�Ʒ�a2.png");
	FadeStA(0,true);
	FadeDelete("�}��д", 300, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
������ȥ���������޷�ͷ��ľ�����Ů�Ծ�����ִ��
���߳�ŭ��װ���Ͻ��в��γ�̫�������¶��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStA(300,true);

//���o�T�����L��
	StL(1000, @0, @0,"cg/st/3d�˰�ʽָ�]��_����_�i��.png");
	FadeStL(300,true);

	SetVolume("@mbgm*", 2000, 0, null);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
��ɲ�Ǽ䣬�����Ľ��д����̼���Ĥ�������衣
�����������������Ǻŵ���Ϣ�����Ǹ��Ǳ�ֲ���ѵ�
�����壡��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
	PrintGO("�ϱ���", 15000);
//	CreateTextureSP("�}����10", 10, Center, Middle, "cg/bg/bg001_��a_01.jpg");

	CreateTextureSP("�}����10", 10, Center, Middle, "cg/bg/bg005_ɽ��_01.jpg");

	OnSE("se����_�z_װ��01",1000);
	CreateTextureSP("�}�ӣԣ�100", 1000, Center, InBottom, "cg/st/3d�����˜�_����_ͨ��.png");
	CreatePlainSP("�}��д", 10000);
	Delete("�}�ӣԣ�100");
	CreateTextureSP("�}�ӣԣ�200", 1200, Center, InBottom, "cg/st/3d�����˜�_����_�i��.png");

	CreateTextureEX("�}������", 2000, 0, -188, "cg/ev/resize/ev504_����ͻ�Ml.jpg");
	CreateTextureEX("�}������", 2100, Center, Middle, "cg/ev/ev504_����ͻ�M.jpg");
	CreateTextureEX("�}������", 2000, Center, Middle, "cg/ev/ev504_����ͻ�M.jpg");
	SetBlur("�}������", true, 3, 500, 50, false);

..//�룺BGM
//��������ݳ����_ʼλ���{����
	//SoundPlay("@mbgm11",0,1000,true);
	FadeDelete("�ϱ���", 300, true);

	OnSE("se���L_����_������02",1000);
	FadeDelete("�}��д", 300, true);

	Wait(300);

	OnSE("se���L_����_��ͻ�M03",1000);
	Fade("�}������", 400, 1000, null, false);

	Move("�}������", 500, @-1024, @0, Axl1, false);
	Wait(350);
	Shake("�}������", 100000, 0, 1, 0, 0, 500, null, false);
	Fade("�}������", 500, 1000, null, false);
	Fade("�}������", 500, 1000, null, true);

	SoundPlay("@mbgm08",0,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
�����ǡ�
���һ�û��Ū�����״�����Ͳ��ò�װ������
���ٳ����

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorSP("�}����", 20000, "Black");
	DrawTransition("�}����", 300, 0, 1000, 100, null, "cg/data/slide_01_02_0.png", true);
	PrintGO("�ϱ���", 20000);
	CreateTextureSP("�}����100", 100, Center, Middle, "cg/bg/bg020_ɽ�}�ӵ�_01.jpg");

	OnSE("se���L_����_������01",1000);
	CreateTextureSP("�����}", 500, Center, InBottom, "cg/st/3d�˰�ʽָ�]��_����_���L.png");


	DrawDelete("�ϱ���", 500, 1000, "slide_01_02_1", true);

	Wait(500);

//���ե饤�ȥ�˥��`չ�_
//���ãɄ���
	CreateTextureEX("�}ef100", 1000, Center, Middle, "cg/ef/ef011_����б��܉��.jpg");

	Request("�}ef100", Smoothing);

	CreateColorEX("�ե�å����", 15000, "WHITE");
	OnSE("se���L_����_Ұ̫�����01",1000);
	Fade("�ե�å����",100,1000,null,true);

	Fade("�}ef100", 200, 1000, null, true);

	Fade("�ե�å����",300,0,null,true);

	Delete("�ե�å����");

	Wait(200);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
�����𼲷磬��Ѹ�װ㼲�۵�̫���켣����
������ֱָ����ƮƮ�ľ�װ���ˣ��������������ϸ�һ
ͬ��Ϊ�����������ʵ��Ʒ��ʱ��ֻʣ�ķ�֮һ�룬
��ν�������޵ļ����

��������ӡ�
����������׶����Ʊ�ֽһ�ŵ�ʱ�䣬�������ߵļ�϶��
�ӵ���������ɱ������⡣

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ãɄ��ġ������`��

	Zoom("�}ef100", 500, 3000, 3000, Dxl1, false);

	Wait(250);

	OnSE("se���L_����_�����02",1000);
	CreateMovie("��`�ө`��", 1200, Center, Middle, false, false, "dx/mv���_�¤�����.ngs");

	WaitAction("��`�ө`��", null);

	CreateColorEXadd("�ե�å����", 20000, "WHITE");

	OnSE("se���L_����_���nͻ01",1000);
	Fade("�ե�å����",0,1000,null,true);

	Delete("�}ef100");
	Delete("��`�ө`��");

//�룺�������Ʃ`����װ��720
	MyLife_Count(0,720);
	CP_IHPChange(0,10,null,false);
	CP_PowerChange(0,400,null,false);

	CP_SpeedChange2(0,0,null,false);
	MyTr_Count(0,254);

	CP_HighChange2(0,3,null,false);
	CP_AziChange(0,112,null,false);
	CP_AltChange(0,0,null,false);

	CP_RollBarMove2(0,0,null,true);

	Cockpit_AllFade2();

	Request("�}����100", Smoothing);
	Request("�����}", Smoothing);
	SetBlur("�}����100", true, 3, 500, 50, false);
	SetBlur("�����}", true, 3, 500, 50, false);

	Shake_Delete(200,300,false,"cg/bg/bg020_ɽ�}�ӵ�_01.jpg");
	Fade("�ե�å����",1000,0,null,true);
	Delete("�ե�å����");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
������û��������㵵ĺ�����

������Ϊʬ�������˵�����о��޷��������ߵľٶ�
����������ƫ����������ص���������ڹ���Ҳ������
����ɱ����������С�
����ʶ����������ʵ֮����Ҫ�ڲ��õ�δ����

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	OnSE("se����_����_�z�i��04",1000);
	Move("�}����100", 300, @0, @+50, null, false);
	Move("�����}", 300, @0, @+100, null, false);
	Zoom("�}����100", 300, 1300, 1300, null, false);
	Zoom("�����}", 300, 1500, 1500, null, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0091]
������̰���ض������ʱ�䣬���ǰ̤һ����
���޴����������е�һ�㣬�ŵ׳���ɽ�����ļ�ʵ���档

����֫����׮������ر��Դ�Ϊ����ת���壬������
ͻ�����������ߵ��ؼס�

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	OnSE("se����_����_���S02",1000);
	Zoom("�}����100", 300, 2500, 2500, null, false);
	Zoom("�����}", 300, 2500, 2500, null, false);

	WaitKey(200);


//���Щ`��
	OnSE("se���L_����_�z��������",1000);
	CreateColorSPadd("�}�ե��", 10000, "#FFFFFF");

	Delete("�����}");

	Zoom("�}����100", 0, 2500, 2500, null, true);
	Move("�}����100", 0, @0, @-50, null, false);

	WaitKey(50);


	Shake_Delete(1000,1000,false,"cg/bg/bg020_ɽ�}�ӵ�_01.jpg");

	Zoom("�}����100", 500, 1000, 1000, null, false);
	FadeDelete("�}�ե��", 600, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
������ǰ�����ƵĴ��������ɵĳ������Խ�����һ��
��������һ�����˾���֮Զ��
�����ˮƯ��ʯƬһ�㵯�����£�֮���ƺ����ھ��쵽
���ķ����������������ָ���ҷ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw�˰�ʽ_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/002vs0010b45">
��ʲô����!?��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	StC(1000, @0,@+50,"cg/st/3d�˰�ʽָ�]��_����_�i��.png");

	OnSE("se����_����_���S01",1000);
	Move("@StC*", 300, @0, @-50, Dxl1, false);
	FadeStC(300,true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
����ͻ�ĳ������û�в����Բ���
�����Թ�������վ�������������Ķ���û��һ˿ҡ�Ρ�
����վ������ϥ��Ҳû��˿��������

���������׽�ƾһ����������ܶ�������������ˣ���
��ָ�֮Ѹ��ʵ��ֵ�ù�Ŀ�࿴��
���ɴ˿��Կ�������ʵ�����ס�

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw�˰�ʽ_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/002vs0020b45">
����Ȼ������!?
�������ĸ����ӵ��ˣ���

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
���Է����ߴ��ҵľ���ɨ�������ϣ���������Ѱ�Ҿ��¡�
�����������Ļ����������Ȼ����������Ķ�����

������Ȼ��Ҳ�����һ���еĶ�����

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwR("cg/fw/fw�˰�ʽ_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/002vs0030b45">
��������
����֮�����ÿ���������������ҹ�Ͻ������
�����������ߣ���û�к�Ӹ�Ԥ�����ɡ���

//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/002vs0040b45">
���������ȥ��ź��н�������ɣ���

{	FwR("cg/fw/fw��������_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/ma02/002vs0050a00">
���ܾ���
����ʱ�˵أ���Ҫȡ���׼�����

{	FwR("cg/fw/fw�˰�ʽ_ͨ��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/002vs0060b45">
���������𡭡�����

{	FwR("cg/fw/fw��������_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/ma02/002vs0070a00">
����Ҳ���������ھ����ϵ�������Ϊ��
�������޵�ָ��ϵͳ�뱾�˺��޹�ϵ����

{	FwR("cg/fw/fw�˰�ʽ_ͨ��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/002vs0080b45">
������ʲô����

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D





//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
������ĳ�Ĭ��
�����ڶԲ����������޵�������һ��ʵ
����������

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwR("cg/fw/fw�˰�ʽ_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/002vs0090b45">
����������δ���
����פ���𡣺���Ů��һ����������֮������


{	FwR("cg/fw/fw��������_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/ma02/002vs0100a00">
���������κ���֯����

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
����û�����ѡ�
�����������Ͼ�����Ա����ݵò����ٷ��Ͽɣ�
�����ϸ������ᣬ�Ҹ���û���ʸ��Գƾ��졣

��������˵����֮��Ե�һ����

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw��������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
//��������
<voice name="����" class="����" src="voice/ma02/002vs0110a00">
��ֻ����ҿ���ɱ�־ͺá���

{	FwR("cg/fw/fw�˰�ʽ_ͨ��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/002vs0120b45">
��ɱ�֡��������ߡ���

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
�������ñ��Ӻ���һ����

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwR("cg/fw/fw�˰�ʽ_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/002vs0130b45">
��������ָʹ��ɱ�ҵ���
����˭�����Ǽһ����ҵ�ͷ��Ѻ�˶���Ǯ����


{	FwR("cg/fw/fw��������_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/ma02/002vs0140a00">
��������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
��������������ˡ�

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwR("cg/fw/fw��������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
//��������
<voice name="����" class="����" src="voice/ma02/002vs0150a00">
����û��ί���ˣ�Ҳû�б��ꡣ��


{	FwR("cg/fw/fw�˰�ʽ_ͨ��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/002vs0160b45">
����������ɱ���𣿡�


{	FwR("cg/fw/fw��������_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/ma02/002vs0170a00">
�����˼�ֶ���ӯ��Ŀ�ġ�
����Ҫ�Ļ���ɽ�ƾ������Ը����


{	FwR("cg/fw/fw�˰�ʽ_ͨ��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/002vs0180b45">
���ǡ�����

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
����ʹ�����ź��Ļ��棬�ƺ�Ҳ�ܿ���������
���ֵı��顣
������ŭ�����ǣ������ǰ��һ����

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	StC(1000, @0,@0,"cg/st/3d�˰�ʽָ�]��_����_���L.png");
	Request("@StC*", Smoothing);

	OnSE("se���L_����_�z_̤���z��01",1000);
	FadeStC(300,false);
	Move("@StC*", 200, @0, @100, Dxl2, false);
	Zoom("@StC*", 200, 1200, 1200, Dxl2, true);

	SetFwR("cg/fw/fw�˰�ʽ_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/002vs0190b45">
���ǵ�������ɱ�˿���ѣ����ģ���

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	CreateColorSP("�\Ļ��", 25000, "BLACK");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/slide_01_01_1.png", true);

	DeleteStC(0,true);

	Cockpit_AllFade0();

	WindowXSet(1000, 100);
	WindowXSetBG(1000, @+0, @+0,"cg/bg/bg020_ɽ�}_01.jpg");
	WindowXSetSt(1000, @-150, @+100,"cg/st/3d�˰�ʽָ�]��_����_���L.png");
	WindowFadeBG(0,0,1000,null,"slide_01_01_0",false);

	Window_StMove(0, @-100, @0, null, true);

//�룺�ӣ�һ�i̤�߳���
	OnSE("se����_����_�z�i��04",1000);
	Window_StMove(500, @+100, @0, null, false);
	DrawDelete("�\Ļ��", 300, 100, "slide_01_01_0", true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
����������һ�����Ƿ���������ͻ����

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	OnSE("se����_����_���S02",1000);
	Window_StZoom(250, 2000, Dxl1,false);
	Window_StMove(300, @+500, @-100, Dxl1, false);
	Wait(200);

	CreateColorEX("�ե�å����", 15000, "WHITE");

	OnSE("se���L_����_�����02",1000);

	Fade("�ե�å����",100,1000,null,true);

	Window_Delete(0, true);

//�􄇓�
	CreateTextureEX("�}ef100", 3000, Center, Middle, "cg/ef/ef008_��������܉��.jpg");
	Fade("�}ef100", 100, 1000, null, true);

	Fade("�ե�å����",100,0,null,true);
	Delete("�ե�å����");


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
���������϶�����������
���·��ж������Ķ�ͷա���㼱�����䡣

�����ܺ�����и֮�⣬����ܿ����������ٶȼ汸��
һ��һ��Ҳ�����ɡ�
���ҽŵŵأ���������˱ܡ�

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	CreateColorEX("�ե�å����", 20000, "WHITE");
	Fade("�ե�å����",100,1000,null,true);

	Delete("�}ef100");

	Zoom("�}����100", 0, 1500, 1500, null, true);
	Move("�}����100", 0, @-100, @0, null, true);

	Cockpit_AllFade2();

	OnSE("se����_����_���S01",1000);
	Move("�}����100", 300, @+100, @0, Dxl2, false);
	Zoom("�}����100", 300, 1000, 1000, Dxl2, false);

	Fade("�ե�å����",100,0,null,true);
	Delete("�ե�å����");


	SetFwC("cg/fw/fw��������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
//��������
<voice name="����" class="����" src="voice/ma02/002vs0200a00">
��ԭ����ˣ�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
��ë�������紵��Ʈ�������а�����ס�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw��������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
//��������
<voice name="����" class="����" src="voice/ma02/002vs0210a00">
�����������Գƺ��ˣ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	CreateColorSP("�\Ļ��", 16000, "BLACK");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Cockpit_AllFade0();

	CreateTextureSP("�}����100", 500, Center, Middle, "cg/bg/bg020_ɽ�}�ӵ�_01.jpg");
	SetVertex("����100", 0, 288);
	Zoom("�}����100", 0, 1500, 1500, null, true);
	SetBlur("�}����100", true, 3, 500, 100, false);
	Request("�}����100", Smoothing);

	CreateTextureEX("�}����", 1000, Center, InBottom, "cg/st/3d�����˜�_����_�i��.png");
	Move("�}����", 0, @-100, @+50, null, true);
	Zoom("�}����", 0, 1200, 1200, null, true);
	Fade("�}����", 0, 1000, Dxl1, false);

	Move("�}����100", 400, @-50, @0, null, false);
	Move("�}����", 600, @+300, @-50, Dxl3, false);
	Zoom("�}����", 600, 1000, 1000, Dxl3, false);
	OnSE("se���L_����_�z_���02",1000);

	DrawDelete("�\Ļ��", 300, 100, "slide_01_01_1", true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310]
���������������ͣ�£�ת�����Ե��֡�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	CreateColorSP("�\Ļ��", 16000, "BLACK");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Cockpit_AllFade2();

	Delete("�}����");
	CreateTextureSP("�}����100", 100, Center, Middle, "cg/bg/bg020_ɽ�}�ӵ�_01.jpg");
	StC(1000, @+100,@+50,"cg/st/3d�˰�ʽָ�]��_����_���L.png");
	FadeStC(0,true);

	OnSE("se���L_����_�z_̤���z��01",1000);
	OnSE("se���L_����_������02",1000);
	Move("@StC*", 500, @-100, @-50, Dxl2, false);
	DrawDelete("�\Ļ��", 300, 100, "slide_01_01_1", true);

	Wait(300);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0311]
����������ʿ��������ȫû��������Ѹ���ջػӿ�
�Ľ���׼���ٴ�ͻ����
��������ˣ������������ѻ����������

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwR("cg/fw/fw�˰�ʽ_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0320]
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/002vs0220b45">
������������˶���Щֻ�ó���Ū�˵ļһ���
û��Ϣ����
���ǵ�������������ʱ�򣬱����������й�
���ö࣡��


{	FwR("cg/fw/fw��������_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/ma02/002vs0230a00">
��ʵ�ڲ�������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0330]
�������Ҳ�����Ū֮�⡣

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwR("cg/fw/fw��������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0340]
//��������
<voice name="����" class="����" src="voice/ma02/002vs0240a00">
���곤�߶������ߵ�������˵������
ʷ�ϼ�Ϊ�ձ顣���Ľ���Ҳ�գ�

{	FwR("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/002vs0250a01">
���������𣿡�

{	FwR("cg/fw/fw��������_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/ma02/002vs0260a00">
��������ǧ��ǰ�����ıڻ���Ҳ��д��
������������˰���֮�ࣩ

{	FwR("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/002vs0270a01">
�����š���

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0350]
����Ծ���ԼΪ�����ס�
�������־��������߶��ţ��������Ҳ�޷���ȥ��ͷ��
Υ�͸С�

�����ߵĽ�ս��̨������ա�
��Ʋ����������˫�������ã������ּ���������ŵ�
�����Ϊ���С�

�����ڶԷ�����Ҳ��һ���ɡ�
���ٴ�ϸ����ǰ���ߵ����ˡ��˰�ʽ������ס�ȥ����
�ߵ��ߺ��׻�ǹ���Ƿ�Ч�߼����ٵĹ��������Ǵ��
������ʽ�Ľ��С�

���������Ǻ����ӳ�����ô����ս���ľ���Ӧ��
��½�����߻��ٲŶԡ�
����������ҡ���ľٴ룬��������Ȩ�������������
�е������ԭ��

��������ˡ���

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwR("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0360]
//��������
<voice name="����" class="��������" src="voice/ma02/002vs0280a01">
�������������Ȼ���
����ɶ�ȡ��λ�ɡ���

{	FwR("cg/fw/fw��������_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/ma02/002vs0290a00">
������������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0370]
���ڴ������������ͬʱ��������Ҳ���ֳ�ͬ�����뷨��
����������ҡͷ�ܾ���
�����ڵ���֮ǰ��ɣ���ȡ�߶����ơ�����������ս��
����׸�Ե�����

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwR("cg/fw/fw��������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0380]
//��������
<voice name="����" class="����" src="voice/ma02/002vs0300a00">
���ȵȶ�����ɡ���


{	FwR("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/002vs0310a01">
��Ϊ�Σ���

{	FwR("cg/fw/fw��������_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/ma02/002vs0320a00">
�����������ʱ���������Ĳ����ǵ����


{	FwR("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/002vs0330a01">
������������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0390]
����������ˡ�
�����������Ĭ��

��ת�Ƶ����в����ܹ���Ծ�Ե�����ٶȣ�Ҳ�ܰٷְ�
�ط�����Ϊ���ߵ����ܡ�
���������ͬʱ���ж��Ͳ����ڵ�����˫��վ��ʱ��ô
������

���������������֮�󼴿�׷���ǵ����á�
����Ҳ�п��������ҵ���Ϊ���ڵر���ע����ת�ƻ�
�����Ŀ���ϡ�

����������£��Ͳ�֪���ܷ��ٶ���ֹ�ˡ�
���������ư��ղ���

��ֻ�ܽ������ø��з���
��ȷ��״���󣬵ȴ���

���ȴ���
��Ȼ����

����������û����ɡ�

��ǰ���������û���뿪���棬�ƽ���������ȴ��û��
������档���ܲ������ƶ�ɢ����Σ����Ϣ����̽�Ž�
��ʱ�������ǲ����������շ���Ķ�����˫��ʼ������
������档

��Ī�Ǽ���û����ɣ����ɴ��������𡭡���
��
��������Ҳû������˵��

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw��������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0400]
//��������
<voice name="����" class="����" src="voice/ma02/002vs0340a00">
��������ľ���ҲԤ�ϵ�����

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	CreateWindow("�}�ݷ���", 6000, Center, -50, 1024, 388, true);
	SetAlias("�}�ݷ���","�}�ݷ���");
	CreateColorEX("�}ɫ100", 16050, "BLACK");
	CreateTextureEX("�}�ݷ���/�}�ݱ���", 16100, -100, -144, "cg/bg/resize/bg003_�Ĥ�Ұ_01.jpg");
	CreateTextureEX("�}�ݷ���/�}���}", 16200, -455, -500, "cg/st/resize/3d�˰�ʽָ�]��_����_���L_l.png");
	Move("�}�ݷ���", 0, @0, @128, null, true);

	Request("�}�ݷ���/�}�ݱ���", Smoothing);
	Request("�}�ݷ���/�}�ݱ���", Smoothing);

	Move("�}�ݷ���/�}�ݱ���", 60000, @-100, @0, null, false);
	Move("�}�ݷ���/�}���}", 60000, @-200, @0, null, false);
//	BGMoveAuto("@�}�ݷ���/�}���}",1);

	Fade("�}ɫ100", 300, 300, null, false);
	Fade("�}�ݷ���/�}�ݱ���", 300, 1000, null, false);
	Fade("�}�ݷ���/�}���}", 300, 1000, null, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0410]
���˰�ʽ����ƹ���ƽʵ��ע�ص���������뻤���ϣ�
�������ܲ���ֵ�óƵ�֮�����ڿ��н��л���ս�Ļ���
����һ��ʼȡ�����Ƶ�λ��Ҳ�޷���֤�ܹ�ά����ȥ��

����Ȼ����ҲҪ���ݶ�ս���ֵ����ܶ��ۡ�
����ʵ�ϰ˰�ʽ�Ѿ����������ͣ��������ѿ�ʼת��
װ�������Եõ���ߵľ���ʽ��

��׷����ǰ������ɵĻ��ض��ܱ���
������������������ͣ���ڵ��ϴ򿪻�·������������
�ϵ���

��������ˣ���ݳ�������ʵ�ڲ���С�

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwR("cg/fw/fw��������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0420]
//��������
<voice name="����" class="����" src="voice/ma02/002vs0350a00">
�����ܸ���ʱ�䣩

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0430]
����ս���У�ʱ���ϵ�Խ�ã��Ծ��鼰�ֶηḻ������
Խ��������
����������ʱ�䣬��������Ū�Ʋߵ���ԣ��

��Ҳ����˵��Ӧ�ö̱���ӡ�

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	CreateColorSP("�\Ļ��", 18000, "BLACK");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Cockpit_AllFade0();

	Delete("�}�ݷ���*");
	DeleteStC(0,true);
	Delete("�}ɫ100");

	CreateTextureEX("�}����", 1000, Center, InBottom, "cg/st/3d�����˜�_����_���L.png");
	Move("�}����", 0, @250, @140, null, true);

	Fade("�}����", 0, 1000, null, true);

	OnSE("se���L_����_������02",1000);
	Move("�}����", 300, 100, @0, Dxl1, false);
	DrawDelete("�\Ļ��", 300, 100, "slide_01_01_1", true);

	SetFwC("cg/fw/fw��������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0440]
//��������
<voice name="����" class="����" src="voice/ma02/002vs0360a00">
������һ������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	OnSE("se���L_����_������02",1000);
	WindowYSet(1200, 0,512);
	WindowYSetBG(1200, @+0, @+0,"cg/bg/bg003_�Ĥ�Ұ_01.jpg");
	WindowYSetSt(1200, @-250, @+80,"cg/st/3d�˰�ʽָ�]��_����_���L.png");
	WindowY_BGMove(500, @-75, @0, null, false);
	WindowYFadeBG(2,300,300,null,"slide_01_01_1",true);

	SetFwC("cg/fw/fw�˰�ʽ_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0441]
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/002vs0370b45">
�����ɣ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�룺�l����EV
	OnSE("se����_����_���S01",1000);
	WindowY_WipeDelete(300, "slide_01_01_0", true);

	Wait(200);

	OnSE("se����_����_���S02",1000);
	Move("�}����", 300, -1000, 50, Axl3, false);

	CreateTextureEX("�}ef100", 2000, Center, Middle, "cg/ef/ef002_�����Ƅ�.jpg");
	CreateTextureEX("�}ef200", 2000, Center, Middle, "cg/ef/ef002_�����Ƅ�.jpg");
	SetBlur("�}ef200", true, 3, 500, 100, false);

	Wait(200);

	Fade("�}ef100", 100, 1000, null, false);
	Fade("�}ef200", 0, 1000, null, false);
	Zoom("�}ef200", 500, 2000, 2000, Dxl1, false);
	Fade("�}ef200", 500, 0, Dxl1, true);
	Delete("�}ef200");
	Delete("�}����");


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0450]
����������ǰ�塣
���ҽŵŵ�ʱ��ͷ�����̤��ʱ�������·��ڵر����
�Ķ���һ�㣬�����������档�ҽ�ͷ̽��������ǰ��

����̫���µĵ�Ӱ��ס�Լ����Ρ���Ӱ��Ծ����������
��̫����
��������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorEXadd("�ե�å����", 15000, "WHITE");
	Fade("�ե�å����",0,1000,null,true);

	Delete("�}ef100");

	CreateTextureSP("�}����100", 100, Center, Middle, "cg/bg/bg020_ɽ�}�ӵ�_01.jpg");
	Zoom("�}����100", 0, 2000, 2000, null, true);

	StC(1000, @-50,@+330,"cg/st/3d�˰�ʽָ�]��_����_���L.png");
	Request("@StC*", Smoothing);
	Zoom("@StC*", 0, 2000, 2000, null, true);
	FadeStC(0,true);

	Move("@StC*", 300, @50, @-30, Dxl1, false);
	Fade("�ե�å����",100,0,null,true);
	Delete("�ե�å����");


	SetFwR("cg/fw/fw�˰�ʽ_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0460a]
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/002vs0380b45">
���ߣ���

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���k��ꄇ�W

	CreateColorEX("�}ɫ100", 15000, "Black");

	Fade("�}ɫ100", 100, 1000, null, true);
	Delete("�}����100");
	DeleteStC(0,true);

	SL_down2(16000,@0, @0,1000);
	OnSE("se���L_����_�����01",1000);
	SL_downfade2(10);


	CreateColorEXadd("�ե�å����", 16000, "WHITE");
	Fade("�ե�å����",100,1000,null,true);

	Delete("�}ɫ100");

	CreateTextureSP("�}����100", 5000, Center, Middle, "cg/ef/ef008_��������܉��.jpg");

	Fade("�ե�å����",200,0,null,true);
	Delete("�ե�å����");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0460b]
����ռ�Ȼ���
�����Ѱںü��ƣ����п���һ����

����������ʿ���µľ���׼ȷ������ͷ���Ķ����ѻ���
��
����������Ԥ�ϡ�

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Ą������`��
	CreateColorEX("�}ɫ100", 15000, "Black");

	Fade("�}ɫ100", 100, 1000, null, true);
	Delete("�}����100");
	DeleteStC(0,true);

	SL_up2(16000,@0, @0,1000);
	OnSE("se���L_����_�����02",1000);
	SL_upfade2(5);

	CreateTextureEX("�}ef100", 16000, Center, Middle, "cg/ef/ef040_�����nͻ.jpg");
	CreateTextureEX("�}ef200", 16000, Center, Middle, "cg/ef/ef040_�����nͻ.jpg");
	SetBlur("�}ef200", true, 3, 500, 50, false);

	OnSE("se���L_����_���nͻ01",1000);
	Fade("�}ef100", 100, 1000, null, false);
	Fade("�}ef200", 0, 1000, null, true);

	Zoom("�}ef200", 500, 3000, 3000, Dxl1, false);
	Fade("�}ef200", 500, 0, Dxl1, true);

	CreateColorEX("�ե�å����", 20000, "WHITE");
	Fade("�ե�å����",0,1000,null,true);
	Delete("�}ef100");
	Delete("�}ef200");

	CreateTextureSP("�}����100", 100, Center, Middle, "cg/bg/bg020_ɽ�}�ӵ�_01.jpg");

	CreateTextureSP("�}St100", 1000, -500, -500, "cg/st/resize/3d�˰�ʽָ�]��_����_���L_l.png");
	Zoom("�}St100", 0, 750, 750, null, true);
	Request("�}St100", Smoothing);
	SetBlur("�}St100", true, 2, 300, 100, false);

	Cockpit_AllFade2();

	Delete("�}ɫ100");

	MyLife_Count(200,712);
	CP_PowerChange(5000,320,null,false);

	MyTr_Count(500,425);

	Move("�}St100", 500, @0, -580, Dxl2, false);
	Fade("�ե�å����",200,0,null,true);
	Delete("�ե�å����");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0470]
���������Ͽ��Ľ��ջ����У����ϸ񵲣����¿��ľ���
�໥��ͻ�����壬���жȥ������
�����еķ��򱻸ı䣬������ס�

�����һ����������ǰ��
�������ߵĲู���޷�����չ¶������

��������Ұ������ս�񷨣���֮�Ρ�
��
������ͷ�����յз���������ж��������϶����

����ת����ӳ�һն��
��ץס������֮������Ŀ�϶����̫��׼ȷ�����ն����

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��һ�W
//�������`��
	CreateColorEX("�}ɫ100", 16000, "Black");
	Fade("�}ɫ100", 100, 1000, null, true);

	SL_left2(20000, @0, @0, 1500);
	SL_leftfade2(10);

	CreateColorEXadd("�ե�å����", 21000, "WHITE");

	CreateSE("SE01a","se���L_����_�z��������03");
	OnSE("se���L_����_���nͻ01",1000);
	MusicStart("SE01a",0,800,0,700,null,false);

	Fade("�ե�å����",0,1000,null,true);

	FrameShake_Ran();
//	RFlash();

	Delete("�}ɫ100");

//�룺�ӣ�劤���
	CreateSE("SE01","se���L_����_���nͻ02");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateTextureSP("�}St100", 1000, -535, -120, "cg/st/resize/3d�˰�ʽָ�]��_����_���L_l.png");
	Zoom("�}St100", 0, 1750, 1750, null, true);
	Request("�}St100", Smoothing);

	SetShade("�}����100", MEDIUM);
	Shake_Loop("@�}St100","shake01");

	Fade("�ե�å����",300,0,null,true);
	Delete("�ե�å����");

	SetFwR("cg/fw/fw��������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0480]
//��������
<voice name="����" class="����" src="voice/ma02/002vs0390a00">
������������


{	FwR("cg/fw/fw�˰�ʽ_ͨ��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/002vs0400b45">
���ɼ���ǿ����ȥ��
�����������⻹��������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0490]
����Ӧ������ؼ׵ĵ��У�����ת�ĵ���������ס��

������̫���ˡ�
��ȫ��������жȥ֮�󣬾��ܼ���������˶�������
���Ƿ�ӦҲ�ã��˽�Ҳ�ã���ԶԶƫ�볣�졣

��������Ϊ���ߣ�Ҳʵ�ڲ�������
��
������Ҳ����˵��

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwR("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0500]
//��������
<voice name="����" class="��������" src="voice/ma02/002vs0410a01">
����Ԥ��ʶ�����𡭡�����

{	FwR("cg/fw/fw��������_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/ma02/002vs0420a00">
�������������أ�

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0510]
�������з�˼���ŵ�һ�غϡ�
����������Ϯ����ͷ����һ������ʱ���ָ���ó��档
���ܵ��Ʒ�â���ɡ�

���Ǿ��쵽�������������ͼ�����ȼ���������������
��ת��̫���켣�𡭡���
��������ˣ������˽��Ҳֻ���ķ��ڷ���

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw�˰�ʽ_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0520]
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/002vs0430b45">
��С�ӣ��й��Ӿ������𣿡�


{	FwR("cg/fw/fw��������_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/ma02/002vs0440a00">
��֮ǰ�Ĵ�ս�У����Ŵ���ǹ�ڷ��ɱ�������
������ꡣ��


{	FwR("cg/fw/fw�˰�ʽ_ͨ��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/002vs0450b45">
��������ǰ�ߴ���ʱ�������������
��Сë�����ȱ����㻹���������ʱ���Ҿ�
�Ѿ��ڴ�½תս��������Ѿþ�ĥ�µĵ�����
���뱻��̫��С��������


{	FwR("cg/fw/fw��������_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/ma02/002vs0460a00">
���˽⡣����������ġ���

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�룺�ӣ����`�࣬�ʤ����ĥĥ륮��劤��ꤢ����
//	CreatePlainSP("�}��д", 10000);
	Request("�}St100", Smoothing);
	SetBlur("�}St100", true, 3, 500, 60, false);

	CreateSE("SE01","se���L_����_��ꪏ���03");
	MusicStart("SE01",0,1000,0,1200,null,false);
	Shake("�}St100", 700, 0, 20, 0, 0, 1000, Dxl2, false);
	Zoom("�}St100", 200, 1800, 1800, Dxl2, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0530]
���Է����������뷢����η��Ц���������������߱���
�϶���
��������һ��ĵ���֨֨�����������졣ƽ�������޷�
����ֺ��ĸ����໥������ɢ������ɫ��ϸм��

��֧��̫����˫�������������η����ѹ��
��������Ƥ�����н����µĹ�ͷ����֨֨���졣���԰�
��ʽ�������޷����͵���ݸ�ǿ֮���������������в�
���߷Ǳ�Ѱ�������������İɡ�

����������
��������˻�������

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwR("cg/fw/fw��������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0540]
//��������
<voice name="����" class="����" src="voice/ma02/002vs0470a00">
������һ�¡���


{	FwR("cg/fw/fw�˰�ʽ_ͨ��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/002vs0480b45">
��ʲô����


{	FwR("cg/fw/fw��������_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/ma02/002vs0490a00">
�����Ƿ�֪�����Ǻţ���

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0550]
��������顣
���������ݱ����ǣ�����֪̽��Ϣ�������ֽ�������
�����ϰ���

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwR("cg/fw/fw�˰�ʽ_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0560]
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/002vs0500b45">
���������Ǻţ�
����ָ���ͻȻ�紫��ɱ��ħ֮��ģ���
�������ǲ��ֶ��ߵĶ����ء�����


{	FwR("cg/fw/fw�˰�ʽ_ͨ��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/002vs0510b45">
����˵�Ǹ���ô�ˡ���


{	FwR("cg/fw/fw��������_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/ma02/002vs0520a00">
������������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0570]
����ʶ����������������⡣
�����˵�����û��һ˿�����

��ʲôҲ��֪�������㱻�����ˡ��ѡ���
����������������Ҳ����δ��ǰ����������<RUBY text="��">��</RUBY>��Ϊ
û�к�������˼���ı�Ҫ�ɡ�

����Ȼ��ˣ����ڵ��¾�ֻ��������ѡ�
�������Ժ�ר�Ĵ�Ŀǰ���ơ���Ȼ����
��Ҳ�޷�������Ը��

�����ҷ����ԣ��������ǳ����������������Ѿ���ʧ��
�󳤵�Ҳ�ܺ���������ʹ�ã�������������Ҳ�ܷ���ȫ
��������ʹ��������Ҳ�޷�����ѹ��������֡�
������������΢��������˲Ϣ�䷴��������

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwR("cg/fw/fw��������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0580]
//��������
<voice name="����" class="����" src="voice/ma02/002vs0530a00">
��ʤ���ѷ֡����ֲ���ʤ����

{	FwR("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/002vs0540a01">
�������������������á���

{	FwR("cg/fw/fw��������_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/ma02/002vs0550a00">
����֪����

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0590]
�����þ�������
�������з�֮�������Ծ��ͬʱն����������
����ˣŪ����С����ʱ�ͻᱻײ��նɱ��

��������˵����������������Ҳ��һ����
������˫������Ǳ�ˮһս��

��Ҳ����˵����ǰ������û�б��·���ߡ�
����������������棬�߾�ȫ��ǰѹ��

��ͬ�ȵ����������һ�������໥���⡪��

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	FrameShakeDelete();

	SetFwR("cg/fw/fw��������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0600]
//��������
<voice name="����" class="����" src="voice/ma02/002vs0560a00">
������������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�룺�ꥵ��������򤵤�˥��`��
	CreateSE("SE01","se���L_����_�z_���02");
	MusicStart("SE01",0,1000,0,1200,null,false);
	Shake("�}St100", 700, 0, 20, 0, 0, 1000, Dxl2, false);
	Zoom("�}St100", 200, 1900, 1900, Dxl2, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0610]
��û�У�

����ǰѹ�ĵ���û�������ֿ���
����������з�ѹȥ��

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwR("cg/fw/fw��������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0620]
//��������
<voice name="����" class="����" src="voice/ma02/002vs0570a00">
����ȴ�ˣ�����ѹ��ȥ�𣿣�

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0630]
������ֱ��˵�״�����Ҳ���˲������
��
�����������Ѿ��´������˰ɡ�

{	CreateSE("SE01","se����_�z_װ��01");
	MusicStart("SE01",0,1000,0,1000,null,false);}
����ʲôͻȻ��������֮�䡣
���ߡ�

������������

�������ĵ����䲻���أ�
��̽��������֮�䡣

���з���֪��ʱ�ſ����������֡���
���ٴ���ס������

���繳��һ�������һ�����������󣬽��뽣��
��
������ζ��ʲô��
�����������ʲô��

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwR("cg/fw/fw�˰�ʽ_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0640]
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/002vs0580b45">
��������Ȼ��ֻ��С���С�
����Ҳ�������ó���ʱ�򡣡�

{	FwR("cg/fw/fw��������_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/ma02/002vs0590a00">
��!?��

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//	Zoom("�}��д", 200, 1200, 1200, Dxl2, true);
	OnSE("se���L_����_������01",1000);
	Move("�}St100", 200, @0, @150, Dxl2, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0650]
��������þ���������
��������ס�ҵ����󡪡�Ťת��

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0660]
//��������
<voice name="����" class="��������" src="voice/ma02/002vs0600a01">
����������!?��

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0670]
���ý�ʹ���Ĺؽڼ���

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Shake("@CP_Frame", 500, 5, 3, 0, 0, 500, null, false);

	OnSE("se���L_����_�z_�g���01",1000);
	CreateSE("SE01","se���L_����_�z��������");
	MusicStart("SE01",0,1000,0,1000,null,false);
	SetFrequency("SE01", 2000, 700, Dxl3);

	CreateColorEX("�ե�å����", 15000, "WHITE");
	Fade("�ե�å����",50,1000,null,true);
	Fade("�ե�å����",200,0,null,true);
	Fade("�ե�å����",50,1000,null,true);
	Fade("�ե�å����",200,0,null,true);
	Delete("�ե�å����");

	MyLife_Count(200,661);
	CP_PowerChange(5000,411,null,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0671]
�����������һͬ����������
����ʹֱ�����衣

�����ǵļ����������塣
����ȷ�ն��Ҳ�Ǵ���Ĺ�����ʽ�Ǹֱ�
�޷������ġ�

��Ƥ�ⱻ˺������Ǳ����ۡ�
��������ȥ�ᱻ�۶ϡ�

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwR("cg/fw/fw��������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0680]
//��������
<voice name="����" class="����" src="voice/ma02/002vs0610a00">
���ҡ�����

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	OnSE("se���L_����_������01",1000);

	Zoom("�}St100", 200, 1800, 1800, Dxl2, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0690]
��û��ѡ����ء�
�����ַſ�̫��������������ܡ�

����Ȼ֪������������ʲô�����

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwR("cg/fw/fw�˰�ʽ_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0700]
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/002vs0620b45">
����������Сë������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0710]
���Է������ܷŹ�������ᡣ
�����������߼��̽��Һ��˵ľ�������
׷�أ���������ѹ���ҵļ�ڡ�

������ǿǿ��ס����˫�ۡ�
������ʧȥƽ�⡣

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������
//���ӣŤȸo�T�����åפ��`ħ�����뤫��

	Zoom("�}St100", 300, 3000, 3000, Axl2, false);
	Rotate("�}St100", 300, @0, @0, @90, Axl2,false);

	OnSE("se���L_�n��_�zܞ��01",1000);
	CreateColorSP("�\Ļ��", 16000, "BLACK");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/slide_02_01_1.png", true);

	DeleteStC(0,true);
	Delete("�}����100");
	Delete("�}St100");
	Delete("�}St100");

	CreateTextureSP("�}����50", 100, Center, Middle, "cg/bg/bg002_��a_01.jpg");
	SetShade("�}����50", HEAVY);

//�룺�ꥵ����ϣ��
//	CreateTextureSP("�}St50", 1000, Center, Middle, "cg/st/3d�˰�ʽָ�]��_�T��_���L.png");
	CreateTextureSP("�}St50", 1000, Center, Middle, "cg/ev/resize/ev958_�L���R�\��_l.png");
//	Zoom("�}St50", 0, 3000, 3000, null, true);
	SetBlur("�}St50", true, 2, 300, 100, false);
	Zoom("�}St50", 0, 1000, 1000, null, true);
	Request("�}St50",Smoothing);
//	Rotate("�}St50", 0, @0, @0, @30, null,true);
//	Move("�}St50", 0, @+100, @+400, null, true);
//	BGMoveAuto("@�}����50",3);
//	BGMoveAuto("@�}St50",5);
	Shake_Loop("@�}St50","shake01");
//	FrameShake();
	FrameShake_Ran();

	OnSE("se���L_����_�z_�����w��01",1000);

	Zoom("�}St50", 500, 550, 550, Dxl3, false);
//	Move("�}St50", 300, @0, @+100, null, false);
	DrawDelete("�\Ļ��", 300, 100, "slide_02_01_0", true);



	SetFwR("cg/fw/fw�˰�ʽ_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0720]
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/002vs0630b45">
����������


{	FwR("cg/fw/fw��������_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/ma02/002vs0640a00">
����������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[t���õ����������ң�
��������ҧ���гݵ���ͷ����Ŀ�⡣

����������ȡ����֮�ƣ���ȫ����������
��������ѹ����
����׼���ǡ�����������������ļ�϶����

������ץס������еֿ�������֮��Ҳ�Զ��׼���
����֮ǰ��̬�Ʋ�ͬ��

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwR("cg/fw/fw�˰�ʽ_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0740]
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/002vs0650b45">
����ô������

{	FwR("cg/fw/fw��������_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/ma02/002vs0660a00">
��������

{	FwR("cg/fw/fw�˰�ʽ_ͨ��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/002vs0670b45">
�������ŵ�С������һ��Ҳ����ʵ�˰ɡ�
��������һ�Ρ�����ʲô�ˣ���

{	FwR("cg/fw/fw��������_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/ma02/002vs0680a00">
������˵����
������ȡ������֮�ˡ���

{	FwR("cg/fw/fw�˰�ʽ_ͨ��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/002vs0690b45">
��������ʲô����

{	FwR("cg/fw/fw��������_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/ma02/002vs0700a00">
��������Ը����

{	FwR("cg/fw/fw�˰�ʽ_ͨ��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/002vs0710b45">
�����𡣡�

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	OnSE("se����_�z_�ҤӸ��02",1000);
	Zoom("�}St50", 400, 600, 600, AxlDxl, false);
	Move("�}St50", 400, @0, @30, AxlDxl, true);

	CreateColorEXmul("�ե�å���", 20000, "RED");
	Fade("�ե�å���",100,800,null,true);
	DrawDelete("�ե�å���", 300, 1000, "slide_05_00_1", true);



//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0750]
������Ĵ��С�
�������Ѿ����뾱��Ƥ�⡣

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwR("cg/fw/fw�˰�ʽ_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0760]
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/002vs0720b45">
��ڤ�粻����ɵ�Ͽ�����Ҫ�����ҵ��Ʒ��أ�
�������������ԣ�������Ĺ�ִ�������������
�Դ��ȱ�����������


{	FwR("cg/fw/fw��������_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/ma02/002vs0730a00">
��������!!��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	OnSE("se���L_����_�z������01",1000);
	Zoom("�}St50", 300, 680, 680, AxlDxl, false);
	Move("�}St50", 300, @0, @20, AxlDxl, true);

	CreateEffect("���ե����ȣ�", 18000, 0, 0, 1024, 576, "NegaPosi");
	Fade("���ե����ȣ�", 0, 0, null, true);


	OnSE("se����_��_��Ġ����02",1000);
	Fade("���ե����ȣ�", 300, 700, Dxl1, true);
	Fade("���ե����ȣ�", 500, 0, null, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0770]
��������ʴ���ڡ�
������ʵ���������ڵĵ�������ֻ�������ף���������
���Ķ��Ѿ�����ȫ�����¡�Ҫ������һ���ף��о�ȫ
������������

����Ȼ���Ǹ�ʱ�򣬻���ʲôҲ�о������ˡ�
����ܱ�����һ���ף�Ҫ�����ͺ����˰ɡ�

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwR("cg/fw/fw��������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0780]
//��������
<voice name="����" class="����" src="voice/ma02/002vs0740a00">
������ѯ���ַ���һ�����⣩

{	FwR("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/002vs0750a01">
������ʲô����

{	FwR("cg/fw/fw��������_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/ma02/002vs0760a00">
������������˵������������

{	FwR("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/002vs0770a01">
�����ء�Ҫ�ǶԷ���������ȥ֮ǰ��ʶ���ǵ�
���á�
��Ҫ��ô�죿��Ҫ���Ű��ڴ�����������ǻ�
�ϣ��������������������𣿡�

{	FwR("cg/fw/fw��������_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/ma02/002vs0780a00">
����˵һζ��������֮�޴����ǵ��ܣ���һζ
��������֮�����ߣ��������ܡ�
���������˰ɣ�

{	FwR("cg/fw/fw��������_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/ma02/002vs0790a00">
��������Դ������������

{	FwR("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/002vs0800a01">
������������״���£�����˵����𣿡�

{	FwR("cg/fw/fw��������_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/ma02/002vs0810a00">
����������������㡣
�����ҵģ�����������û��ʱ����ۣ�

{	FwR("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/002vs0820a01">
�������˽⡣��

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetVolume("@mbgm*", 1000, 0, null);
	SoundPlay("@mbgm13",1000,1000,true);





//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0790]
�������³�һ�ڳ�����
���ù��ֵĵ������������ĸн��ǣ�������Ҫ����������
����ʹ����һ��������ͻ�ʹ�Ҷ���������
������ľ������һ�ߡ�

���������������������ɽ��ŵ�˫��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	OnSE("se����_����_�z�i��03",1000);
	Zoom("�}St50", 200, 690, 690, AxlDxl, false);
	Move("�}St50", 200, @0, @10, AxlDxl, true);

//	Shake("�}St50", 500, 0, 10, 0, 0, 200, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0791]
���赲���е����������������ҵ������ߡ����������
���Ҫ���н����һ�Ŵ��ڡ�
��������ԥ��˲�佫���������

���������������ľ������ϵ������衣
���Խ��ڸ������ջ�����ڵĿֲ��з��ڡ�

���ỳ�����Ƿ����Ϊ�ģ��������Ǵ�����
�����ڴ����ľ���������ȫ�޷���״̬�������Ǻ�ͯҲ
������ȡ��������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	OnSE("se����_����_�z�i��04",1000);
	Zoom("�}St50", 200, 650, 650, AxlDxl, false);
	Move("�}St50", 200, @0, @-60, AxlDxl, true);

	SetFwR("cg/fw/fw�˰�ʽ_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0800]
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/002vs0830b45">
������!?��

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0810]
��Ȼ������ȴ�����һ��ɲ�ǡ�
����������Ϊ���Ǿþ�ս����ϱ���ս���м���ͻȻ
������ǰ����ζ���ϣ���ϲ���������ǰȥ�ĺ����
���������ײ�����

�����Ǿ�����ǳ����ػ������ԥ�ػӵ����¡����
һ��ʤ���͵����˰ɡ�
������λ�ϱ�ȴֹס���Լ������뽣��

�������˼�Ϊϸ΢��ʱ���϶��
��
�����޷�ץס����ᣬ������Ӧ�����ڴˡ�

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorEX("�}ɫ100", 20000, "Black");

	Fade("�}ɫ100", 200, 1000, null, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0811]
������̴ٵ�������
��Լһȭ�����Ŀ�����������ӡ�

������Ŀ������뵤����ʣ��������С�
�����ɣ����ţ��������ŵĲ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	OnSE("se����_��x_�k��04",1000);
//	CreateTextureEXsub("�}ef100", 18000, Center, Middle, "cg/ef/ef021_������x�k��b.jpg");
//	CreateTextureEXsub("�}ef200", 18000, Center, Middle, "cg/ef/ef021_������x�k��a.jpg");
	CreateTextureEXadd("�}ef100", 18000, Center, Middle, "cg/ef/ef003_�����Ƅ�.jpg");
	CreateTextureEXadd("�}ef200", 18000, Center, Middle, "cg/ef/ef003_�����Ƅ�.jpg");
	CreateTextureEXadd("�}ef300", 18000, Center, Middle, "cg/ef/ef021_������x�k��b.jpg");
	CreateTextureEXadd("�}ef400", 18000, Center, Middle, "cg/ef/ef021_������x�k��b.jpg");
//	Zoom("�}ef*", 0, 3000, 3000, null, true);
	Rotate("�}ef200", 0, @0, @0, @180, null,true);
	Rotate("�}ef400", 0, @0, @0, @180, null,true);
//	SetShade("�}ef200", HEAVY);
	SetBlur("�}ef*", true, 2, 300, 50, false);

	Fade("�}ef100", 0, 1000, null, true);
	Fade("�}ef200", 0, 1000, null, true);
	FadeDelete("�}ɫ100", 500, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0812]
���ٽ������ơ���ѹ��������
�����ҷ��ڵ�С������ʼ���޷��õ���ţ����α�����
ͬʱ�������档

�����������ţ�ΪѰ��������������Χ�����������
�����͡��ʴ����ơ����ߡ�

��������Ϊ���Ρ����λ���ŭ�Ρ�
����ӿ�񱩵��ٲ��ۿ���Ҫ���������������ϣ����⼴
���������������������������Ŀ��ơ�

���Ӿ������ͷŵ�һ��֧�������ֱۡ�
���������󡪡�ע����������еĵз��ֱۡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0820]
//��������
<voice name="����" class="��������" src="voice/ma02/002vs0840a01">
��������

{	FwC("cg/fw/fw��������_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/ma02/002vs0850a00">
������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0830]
�����Ѿ�����
���豩�������ɡ�

����ϲ�ö��������������γ嶯����ȫ�����ۣ�������
�����
���ͷš�ѹ�ֵ�ʱ�������սᣬ���֮ʱ�Ѿ�������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0840]
//��������
<voice name="����" class="����" src="voice/ma02/002vs0860a00">
����װ������������


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/002vs0870a01">
������������ת������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	MyTr_Count(500,580);

	OnSE("se���L_��x_����չ�_",1000);
	Fade("�}ef300", 200, 1000, null, false);
	Fade("�}ef400", 200, 1000, null, false);
	Zoom("�}ef*", 1000, 1100, 1100, Dxl3, false);
	Fade("�}ef100", 500, 0, null, false);
	Fade("�}ef200", 500, 0, null, true);

	SetFwC("cg/fw/fw�˰�ʽ_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0841]
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/002vs0880b45">
��ʲ��������!?��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Wait(500);

	OnSE("se���L_��x_��������",1000);
	CreateColorEX("�ե�å����", 21000, "WHITE");

	Zoom("�}St50", 100, 1000, 1000, Dxl3, false);
	Move("�}St50", 100, 0, 0, Dxl3, false);

	Fade("�ե�å����",100,1000,null,true);

	Cockpit_AllFade0();

	Delete("�}ef*");
	Delete("���ե����ȣ�");
	Delete("�}St50");
	Delete("�}����50");

	CreateTextureSP("�}����100", 1000, Center, Middle, "cg/bg/bg020_ɽ�}�ӵ�_01.jpg");

	Shake_Delete(1500,500,false,"cg/bg/bg020_ɽ�}�ӵ�_01.jpg");

	Fade("�ե�å����",300,0,null,true);
	Delete("�ե�å����");


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0850]
�������޵����߱���ɡ�

�����ҵ����ϡ������ɳ�ȥ��
������һ˲�����ͷɳ���ңԶ�ľ��롣
��
������Ϊ�����صĴ������ҽ�һ�ߡ�

�����������˿���Ӧ����ˡ�
���ĵ��ľ��󣬹���ֻ��������������ߵ�����������
�����ƣ�����ͨ���������Եļ��㣬�������ܵó�����
�Ľ����

���õз�������ϴ��ԣ�����ͬ������ԭ���̺���
�����õ�һ�ߡ�
�����������ô���֮���壬���������ݵĻĵ��硣

�����߷ɵ������޹��Ƶ����Ҳ������������ʵ�ɡ�
����ȫ���������ʡ�

����Ȼ���׸ղ�һ���޷��Եз����ʲô�������ˡ���
Ϊ�˵춨ʤ�ֱ���������϶��
�����ܡ�

�������Ĵ�װ�޷���ʱ�䱣�֡�
��������˲�����ɣ����뱣��һ�����Ͼ͵�����Ī���
�������������жϵĻ���Ҫ�ٶȴ�װ�͵����µ���������

�������ܸı���ƣ���Ҳ�޷��ֲ��ҷ��Ĳ�����
�����ϵ��˿ڲ���ǳ������ʱ�����ƣ�ѪҺ����������
һͬ��ʧ��ʤ��ֻ�����ڣ����˲�䡣

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	CreateColorSP("�\Ļ��", 25000, "BLACK");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	CreateTextureSP("�}����1000", 1500, Center, Middle, "cg/bg/bg020_ɽ�}�ӵ�_01.jpg");
	SetShade("�}����1000", HEAVY);

	Zoom("�}����1000", 0, 2000, 2000, null, true);
	Move("�}����1000", 0, 512, 0, null, true);

	CreateTextureEX("�}����", 2000, Center, Middle, "cg/st/resize/3d�����˜�_�T��_��x.png");
	Request("�}����", Smoothing);
	SetBlur("�}����", true, 3, 500, 100, false);
	Fade("�}����", 0, 1000, null, true);
	Move("�}����", 0, @+1024, @100, null, true);

//�룺ʹ�äǤ��뤫�����Τ����˱�
//	CreateEffect("���ե����ȣ�", 1900, 0, 0, 288, 512, "Rain");
//	Zoom("���ե����ȣ�", 0, 2500, 2500, null, true);
//	Rotate("���ե����ȣ�", 0, @45, @0, @-90, null,true);
//	Request("���ե����ȣ�", Smoothing);
//	Move("���ե����ȣ�", 0, @+600, @+20, null, true);
//	Fade("���ե����ȣ�", 0, 450, null, true);

	OnSE("se���L_����_��ͻ�M02",1000);
	Move("�}����", 300, -200, @0, Dxl1, false);
	DrawDelete("�\Ļ��", 300, 100, "slide_01_01_1.png", true);

	WaitAction("�}����", null);
	SetBlur("�}����", false, 3, 500, 50, false);
	Shake_Loop("@�}����1000","shake01");
	BGMoveAuto("@�}����",1);



//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0851]
�����ܡ�

�������������Ҫվ��������
����Ȼû�����ˣ����ǿ��ŵ�ˤ��һ�Ӷ��ѡ�
���̾��룬�嵽������ǰ��

������û��ʱ��ȥ��̫����
��������������Ϊ��������ײ��ȥ��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	BGMoveDelete();

	OnSE("se���L_����_��ͻ�M01",1000);
	Move("�}����", 300, @-3000, @0, Dxl1, false);
//�룺�زĤ˺Ϥ碌�ƥ��`�����
	Zoom("�}����", 300, 3000, 3000, null, false);

	Wait(200);

	CreateTextureEX("�}ef100", 10000, Center, Middle, "cg/ev/resize/ev903_�����ŚݥХꥢ�`չ�__al.jpg");
	CreateTextureEX("�}ef200", 10000, Center, Middle, "cg/ev/resize/ev903_�����ŚݥХꥢ�`չ�__al.jpg");
//	Zoom("�}ef100", 0, 750, 750, Dxl1, false);
//	Zoom("�}ef200", 0, 750, 750, Dxl1, false);
	SetBlur("�}ef200", true, 3, 500, 100, false);
	Move("�}ef100", 0, @-200, @+250, null, true);
	Zoom("�}ef200", 200, 1200, 1200, Dxl1, false);
	Fade("�}ef200", 0, 500, null, false);
	Fade("�}ef100", 0, 1000, null, true);

	Wait(300);

	OnSE("se���L_��x_��������",1000);
	CreateColorEXadd("�ե�å����", 16000, "WHITE");
	Fade("�ե�å����",100,1000,null,true);

	Delete("�}ef100");
	Delete("�}ef200");
	Shake_LoopDelete();

	Delete("�}����");
	Delete("�}����1000");

	Shake_Delete(1500,1000,false,"cg/bg/bg020_ɽ�}�ӵ�_01.jpg");
	Fade("�ե�å����",300,0,null,true);
	Delete("�ե�å����");

	SetFwC("cg/fw/fw�˰�ʽ_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0860]
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/002vs0890b45">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	CreateColorSP("�\Ļ��", 16000, "BLACK");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/slide_03_01_0.png", true);

	Delete("�}����100");
	CreateTextureSP("�}����50", 100, 0, 0, "cg/bg/resize/bg002_��a_01.jpg");
//�룺����ˤ�äƤϤʤ�
	CreateTextureSP("�}st100", 500, Center, Middle, "cg/st/3d�˰�ʽָ�]��_�T��_ͨ��.png");
	Rotate("�}st100", 0, @0, @0, @-120, null,true);
	Move("�}st100", 0, @1024, @576, null, true);

	OnSE("se���L_����_��ͻ�M07",1000);
	Move("�}����50", 1000, @-1000, @-500, Dxl1, false);
	Move("�}st100", 700, @-2048, @-1152, Dxl1, false);
	DrawDelete("�\Ļ��", 300, 100, "slide_03_01_1", true);



//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0870]
���˰�ʽ������ٴα�ײ�ɡ�
�����类��������ײ����С��һ�㣬�߸߷���

����������ˣ�����Ҳû���ɿ����о�����
����ײ��˲����Ѿ����÷���������Ѿ��ϵ��һ���ˡ�

���޷�����κ��˺�����
��ͬʱ���ҷ�Ҳ����˴�װ�������ѵ����ޡ�

���ٳ���ά�ֵĻ����͵����������ѷ��ľ���
���Ѿ�ȫ���䡣ָ��΢΢��Щ��ԡ�

����ת֮���Ѿ�ʵ�С�
���б��������ˣ��ҷ����޷�ս��ֻ��һ��֮ң��
��
��������ֻ��һ��ʤ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�룺���ʥꥪ�˱�
//�����ȤϛQ�Ť����Ĥ�������

	Delete("�}St100");

	WindowXSet(2000, 100);
	WindowXSetBG(2000, @+0, @+0,"cg/bg/bg020_ɽ�}�ӵ�_01.jpg");
	WindowXSetSt(2000, @100, @700,"cg/st/resize/3d�����˜�_����_�i��.png");

	WindowFadeBG(1,300,300,null,"slide_05_00_1",true);

	SetFwR("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0880]
//��������
<voice name="����" class="��������" src="voice/ma02/002vs0900a01">
����������

{	FwR("cg/fw/fw��������_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/ma02/002vs0910a00">
���ǡ���

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorSP("�\Ļ��", 16000, "BLACK");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/slide_03_01_0.png", true);

	Window_Delete(0,true)

	MyLife_Count(500,720);
	MyTr_Count(500,574);
	CP_HighChange2(0,0,null,false);
	CP_SpeedChange2(0,0,null,false);
	Cockpit_AllFade2();
	CP_PowerChange(300,100,null,false);

	CP_SpeedChange2(1000,270,null,false);
	CP_HighChange2(500,300,null,false);

	FrameShake();

	CreateTextureSP("�}����100", 100, Center, Middle, "cg/st/3d�˰�ʽָ�]��_�Tͻ_ͨ��.png");
	Move("�}����100", 0, @0, @-200, null, true);
	Rotate("�}����100", 0, @0, @0, @-150, null,true);
	Zoom("�}����100", 0, 10, 10, null, true);
	SetBlur("�}����100", true, 3, 300, 100, false);

	CreateTextureSP("�}����50", 50, -100, -700, "cg/bg/bg202_�����ݳ�����ɽ_01.jpg");
	SetBlur("�}����50", true, 3, 200, 100, false);

	CockPit_LockSet(@0,@0);


	OnSE("se���L_����_���ϕN01",1000);
	EffectZoomadd(10000, 1000, 100, "cg/ef/ef003_�����Ƅ�.jpg", false);


	Move("�}����50", 1000, @0, @200, Dxl2, false);
	Move("�}����100", 1000, @0, @50, Dxl2, false);

	DrawDelete("�\Ļ��", 300, 100, "slide_03_01_1", true);



//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0890]
���߾�ȫ����˫�ŵŵأ�Ծ����ա�
��Ϊ�˾���ʤ����

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwR("cg/fw/fw�˰�ʽ_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0900]
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/002vs0920b45">
����С��!!!!!!!!��

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0910]
�����������ߵ������쳹��ա�
�����ŷ�ŭ�����裬ʧ����

����ת�ѳɣ�ʤ���Ѿ���
�������ʵ������Ҳ����⡪����ɽ��������գ�����
�ƽ���ת����С�

���ڿ�����սӮ�Ļ����ҡ���˵з��Ų���ɡ�<k>
��������ô��ǿ������ɼ��ɣ�

��һ������û�д��֧�ţ���ֻ�ܷ��С�
�������Ƿǣ�ս��ֻʣһ����

���������Щ�������������ϵķ�������
�����𡪡�
�����С���
����������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	OnSE("se���L_����_��ͻ�M03",1000);


	CP_SpeedChange(2000,352,AxlDxl,false);
	CP_HighChange(2000,864,AxlDxl,false);
	CP_AltChange(2000,45,AxlDxl,false);
	Move("�}����50", 2000, @0, @500, AxlDxl, false);
	Move("�}����100", 2000, @0, @1000, AxlDxl, true);

	CP_AltChange(1000,0,AxlDxl,false);
	Move("�}����50", 1000, @0, @-1050, AxlDxl, false);
	Move("�}����100", 1000, @0, @-900, AxlDxl, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0915]
��ͬ���ĳ��򣬵�����е��ٶ����Ա��ҷ��������ɴ�
ȷ���߶����ơ�
��
����ת���½���

���˰�ʽ�����ʵ����������û�п�ʼ����������
����������Ϊ�������н�����У�����ȡ������ƽ���
�Ѿ���æ���ҡ�

����ȫ������֮�⡣
�������淢��ǿϮ��

��û��̫������װֻ��ȭͷ��
���ܹ�����ƻ���������λ������һ����

���ӵб�����ӽ���
����׼������Ź����

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Ф���`��
	CreateColorEX("�ե�å����", 15000, "WHITE");

	CreateSE("SE01","se���L_�Ɖ�_�z01");

	OnSE("se���L_����_��ͻ�M01",1000);

	CP_SpeedChange2(1000,270,null,false);
	CP_HighChange2(500,421,null,false);
	CP_PowerChange(300,50,null,false);
	Zoom("�}����50", 400, 1200, 1200, Axl3, false);
	Move("�}����100", 400, @0, @-50, Axl3, false);
	Zoom("�}����100", 400, 1800, 1800, Axl3, false);
	Rotate("�}����100", 400, @0, @0, @-50, AxlDxl,false);
	Wait(350);
	Fade("�ե�å����",0,1000,null,true);

	MusicStart("SE01",0,1000,0,1000,null,false);
	Wait(250);
	Shake("@CP_Frame", 500, 20, 20, 0, 0, 500, null, false);

	Delete("�}����100");

	Zoom("�}����50", 1500, 1000, 1000, Dxl2, false);
	BGMoveAuto("@�}����50",1);


	Fade("�ե�å����",1000,0,null,true);
	Delete("�ե�å����");


	SetFwC("cg/fw/fw�˰�ʽ_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0920]
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/002vs0930b45">
�����ء�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0930]
����������ʧȥƽ�⡣
�����ҡ����޷��ٴλָ���

��������չ��������װ�ף��Ƿ����в���ȱ�ٵ�����
����ȱ��������ƽ�������ô���䣬Ҳֻ���������
��Ⱦ��
���⸱����������Ѿ�ʧȥһ�����ϡ�

�����������������װ���ƺ����������Լ���ְ��
������һ�����䣬һ�߻��裬�Դ���׹�����½����
��״̬������������ȥ��

����������һ�����������ˡ�
����׷���ı�Ҫ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw��������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0940]
//��������
<voice name="����" class="����" src="voice/ma02/002vs0940a00">
����������׽ס���
������׷�١���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/002vs0950a01">
�����У���

{	FwC("cg/fw/fw��������_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/ma02/002vs0960a00">
��ʲô����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/002vs0970a01">
�������Ѿ����Ｋ�ޡ�
�����������Ѿ���Σ�գ���������ս������

{	FwC("cg/fw/fw��������_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/ma02/002vs0980a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0950]
���������棬�Ҳŷ����Լ�ȷʵ�Ѿ������ܹ�����ս��
��״̬��
����ָ�����������Ѿ��ӽ����״̬��ȫ��ĺ���Ҳ��
��һ������֤����

��״��ÿһ�붼�ڳ����񻯣�ֻҪ����װ�׷��оͲ���
�ָܻ���
��
���ѵ������ձ�֮ʱ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 1000, 0, null);

	SetFwC("cg/fw/fw��������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0960]
//��������
<voice name="����" class="����" src="voice/ma02/002vs0990a00">
��û�ܽ�����𡭡���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/002vs1000a01">
�����Ҳ��û�취�ɡ�
���Ͼ���Щ̫����æ����

{	FwC("cg/fw/fw��������_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/ma02/002vs1010a00">
�������׵�Ӧ�����ִ�æ��Ӧ�þ��������ʱ��
�ڽ����̬��
�����ǳ���֮�£���ʵ��Ϊ�ҵ����ܸе��ûڡ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/002vs1020a01">
��������

{	FwC("cg/fw/fw��������_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/ma02/002vs1030a00">
����ȥ�ɣ�������
���Ȼָ�����״̬��֮����������������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/002vs1040a01">
�������˽⡣��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE*", 2500, 0, null);
	SetVolume("OnSE*", 2500, 0, null);
	SetVolume("@mbgm*", 2500, 0, null);

//������
	CreateColorEX("�}��ܞ", 20000, "#000000");
	CreateSE("SE01","se���L_����_��ͻ�M06");

	MusicStart("SE01",0,1000,0,1000,null,false);

	BGMoveDelete();
	Move("�}����50", 2000, @0, @-500, Axl2, false);
	Fade("�}��ܞ", 2000, 1000, null, true);

	CP_AllDelete();

	SetVolume("SE*", 1000, 0, null);
	Wait(1000);

	PrintGO("�ϱ���", 30010);

	OnBG(100,"bg020_ɽ�}�ӵ�_01.jpg");
	FadeBG(0,true);

	StL(1000, @0, @0,"cg/st/st����֦_ͨ��_�Ʒ�a.png");
	StR(1000, @0, @0,"cg/st/st����_ͨ��_˽��.png");
	FadeStA(0,true);

	WaitPlay("@mbgm*", null);
	Wait(1000);

	FadeDelete("�ϱ���", 2000, true);

	SetFwC("cg/fw/fw����֦_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0970]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/002vs1050a03">
������������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma02/002vs1060a04">
����С�㡭����

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/002vs1070a03">
�����ģ����ߡ���
����졭��������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma02/002vs1080a04">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	ClearWaitAll(2000, 2000);



}

..//������ָ��
//�Υե����롡"ma02_003.nss"


