//<continuation number="2210">

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

scene ma02_021vs.nss_MAIN
{
	//��e�ޥ����ٌ���
	Conquest("nss/ma02_021vs.nss","AuraFlash",true);

//���å��ԥå��ãӣ��
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
	#bg020_ɽ�}�ӵ�_02=true;
	#bg020_ɽ�}_02=true;
	#bg202_�����ݳ�����ɽ_02=true;
	#bg025_�ӵ�ɽ�}��ɭa_02=true;
	#bg201_�����ݳ������нֵ�_02=true;
	#bg025_�ӵ�ɽ�}��ɭa_02=true;
	#bg005_ɽ��_02=true;
	#bg003_�Ĥ�Ұ_02=true;
	#bg001_��a_02=true;
	#bg002_��a_02=true;
	#bg022_ɽ��a_02=true;
	#bg025_�ӵ�ɽ�}��ɭb_02=true;


	#ev112_һ���򤪊������ä��������=true;
	#ev111_��Դ̫�򱧤���һ��_a=true;
	#ev111_��Դ̫�򱧤���һ��_b=true;
	#ev111_��Դ̫�򱧤���һ��_c=true;
	#ev111_��Դ̫�򱧤���һ��_d=true;
	#ev111_��Դ̫�򱧤���һ��_e=true;
	#ev925_Ұ̫����Ƭ_b=true;
	#ev925_Ұ̫����Ƭ_c=true;

	#ev905_����늴œĵ�_a=true;
	#ev905_����늴œĵ�_b=true;
	#ev905_����늴œĵ�_c=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	#av_���\ɽ=true;
	#av_����ɽ=true;

	$PreGameName = $GameName;

	CP_AllDelete();

	$GameName = "ma02_022.nss";

}

scene ma02_021vs.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"ma02_020vs.nss"

	if($GameDebugSelect==1){CP_AllSet("���٥�");}


//����
//���ե饤�ȥ�˥��`
//��������ݳ�������졢���m����
	PrintBG("�ϱ���", 30000);
	CreateTextureSP("�}����100", 100, Center, -400, "cg/bg/resize/bg002_��a_02.jpg");

//�����ߣ����`�ե��`������
	CreateSurfaceEX("�}Suf",1000,2000,"�}����100");
	Fade("�}Suf", 500, 1000, null, false);

	CreateColorEXadd("�}ɫ100", 17500, "White");

//�����ߣ����å��ԥåȄ������x========================
	MyLife_Count(1,680);
	MyTr_Count(500,300);
	CP_HighChange(500,712,null,false);
	CP_SpeedChange(500,315,null,false);
	Cockpit_AllFade2();

	CP_AltChangeA();
	CP_RollBarMoveA();
	BGMoveAuto("@�}����100",1);

//�����ߣ����å��ԥåȄ������x�����ޤ�========================


	CreateSE("SE10","se���L_����_������02_L");
	CreateSE("SE11","se���L_�Ɖ�_�z04");
	CreateSE("SE12","se���L_�Ɖ�_�z03");
	CreateSE("SE13","se���L_����_��ͻ�M02");
	MusicStart("SE10",1000,1000,0,1000,null,true);

	SetFrequency("SE10", 2000, 1300, null);

//���w��
	OnSE("se���L_����_��ͻ�M01",1000);
	CP_HighChange(500,800,AxlDxl,false);
	CP_SpeedChange(1000,513,AxlDxl,false);
	CP_AziChange(1100,-50,AxlDxl,false);
	Zoom("�}����100", 3000, 1100, 1100, AxlDxl, false);
	CP_RollBarMove("@�}����100", 1000, @50, Axl3, false);
	Move("�}����100", 1200, @-100, @0, Axl2, false);

	FadeDelete("�ϱ���", 1000, true);
	SoundPlay("@mbgm13",0,1000,true);

//�����ı����������`���n��

	MusicStart("SE11",0,1000,0,1000,null,false);
	SetFrequency("SE10", 1000, 1000, null);
	Fade("�}ɫ100", 50, 1000, null, true);


	Fade("�}ɫ100", 500, 0, null, false);

	CP_HighChange(500,775,AxlDxl,false);
	MyLife_Count(300,620);
	CP_SpeedChange(800,380,AxlDxl,false);
	Shake("�}����100", 500, 20, 10, 0, 0, 1000, null, false);
	Shake("@CP_Frame", 500, 20, 20, 0, 0, 1000, null, false);
	Zoom("�}����100", 500, 1100, 1100, AxlDxl, false);
	CP_RollBarMove("@�}����100", 600, @-30, Dxl2, false);
	Move("�}����100", 1000, @-200, @-100, Dxl2, false);

	Wait(600);

	SetFrequency("SE10", 1200, 1200, null);

//���w�С�����
	MusicStart("SE13",0,1000,0,1000,null,false);
	CP_HighChange(500,800,AxlDxl,false);
	CP_SpeedChange(1000,513,AxlDxl,false);
	CP_AziChange(1000,20,AxlDxl,false);
	Zoom("�}����100", 3000, 1150, 1150, AxlDxl, false);
	CP_RollBarMove("@�}����100", 800, @-50, Axl2, false);
	Move("�}����100", 900, @300, @0, Axl2, false);

	Wait(800);
//����`�루�رܣ�
//�����ı����������`���n��

	Fade("�}ɫ100", 50, 1000, null, true);
	CP_HighChange(500,767,AxlDxl,false);
	SetFrequency("SE10", 1000, 900, null);

	MusicStart("SE12",0,1000,0,1000,null,false);
	MyLife_Count(500,570);


	Fade("�}ɫ100", 500, 0, null, false);

	CP_SpeedChange(500,380,AxlDxl,false);
	Shake("�}����100", 500, 20, 10, 0, 0, 1000, null, false);
	Shake("@CP_Frame", 500, 20, 20, 0, 0, 1000, null, false);
	Zoom("�}����100", 3000, 1100, 1100, AxlDxl, false);
	CP_RollBarMove("@�}����100", 300, @-10, AxlDxl, false);
	Move("�}����100", 1000, @100, @-100, AxlDxl, false);

	Wait(300);
	CP_RollBarMove("@�}����100", 1000, @20, AxlDxl, false);

	Wait(500);

	SetVolume("SE10", 2000, 500, null);


	CreateColorSP("�\Ļ��", 20000, "BLACK");
	DrawTransition("�\Ļ��", 200, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);


	CreateTextureSP("�}����200", 16200, Center, Middle, "cg/bg/resize/bg001_��a_02.jpg");
	CreateColorEX("�}ɫ100", 16200, "BLACK");
	Fade("�}ɫ100", 0, 500, null, true);

	CreateTextureSP("�}����100", 100, Center, Middle, "cg/bg/resize/bg002_��a_02.jpg");

	CreateWindow("�}�ݷ���", 16200, Center, -50, 1024, 388, true);
	SetAlias("�}�ݷ���","�}�ݷ���");
	CreateTextureEX("�}�ݷ���/�}�ݱ���", 16200, 0, -144, "cg/bg/resize/bg001_��a_02.jpg");
	CreateTextureEX("�}�ݷ���/�}���}", 16300, -35, -770, "cg/st/3d��ɽ_�T��_���La.png");
	Move("�}�ݷ���", 0, @0, @-288, null, true);

	FrameShake();


	DrawTransition("�\Ļ��", 200, 1000, 0, 100, null, "cg/data/slide_01_03_1.png", true);
	Delete("�\Ļ��");

	Move("�}�ݷ���", 500, @0, @432, Dxl2, false);
	Fade("�}�ݷ���/�}�ݱ���", 300, 1000, null, true);

	OnSE("se���L_����_��ͻ�M01",1000);
	Move("�}�ݷ���/�}���}", 300, @0, @355, Dxl2, false);
	Fade("�}�ݷ���/�}���}", 300, 1000, null, true);

	Delete("�}Suf");

	SetFwC("cg/fw/fw��ɽ_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/021vs0010b35">
���ǺǺǣ�
��������������ô�ˡ���������ȫû�·�������

//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/021vs0020b35">
���⻹��������֮���������
����Ȫ֮�µ�����ɻ���������İ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	FrameShake();
	CP_RollBarMove("@�}����100", 0, 0, null, true);

	OnSE("se���L_����_�z_���02",1000);
	Fade("�}�ݷ���/�}���}", 300, 0, null, true);

	Wait(300);
	FadeDelete("�}ɫ100", 300, false);
	FadeDelete("�}�ݷ���*", 300, true);
	FadeDelete("�}����200", 300, true);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0011]
//��������
<voice name="����" class="��������" src="voice/ma02/021vs0030a01">
������������

{	FwC("cg/fw/fw��ɽ_ͨ��.png");}
//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/021vs0040b35">
��һ��Ҳ�޷����֣����������ջ𡣵��������
�ܳƵ���̫������������������Ĺ�����ֻ��
����׮�������Ѱɣ�
����ѽ����Ϊ�Ѱ�������Ϊ�ѣ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
����Ц����Ű������ա�
������ȴû����ֹ��

��һ���ϣ����������ʧ��
��֮�����ٴ��ظ���һֱ���������������汻������
״����

���޷����֡�
��<RUBY text="�۾�">�Ӿ�</RUBY>��<RUBY text="����">̽�����</RUBY>��ȫ�������á�
����������Ҳ�޼ƿ�ʩ��

������������Ԧ������֮������
���޷��ƽ���еĻ�����û���ˣ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��������
<voice name="����" class="��������" src="voice/ma02/021vs0050a01">
���⵽���ǡ�����
���͹����ж���ӵ��������Ӱ������̽�����
�塣������ά����������ʱ�䣡��

//��������
<voice name="����" class="��������" src="voice/ma02/021vs0060a01">
�������������Ǵ��������ģ�
��һ�߽�ʳһ��ս����!?��

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/021vs0070a00">
���ǲ������ܡ�
������������������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
���ڿ��е���������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��������
<voice name="����" class="��������" src="voice/ma02/021vs0080a01">
���ţ�˵�öԣ�
����һ���������������ˣ���

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/021vs0090a00">
���������侲�㡣��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
���ҳ�����ο�޷��ڸǽ���Ľ��С�
��������״�����޷����ġ�

����������Щ��Ϊ�������������ͨ���в�һ����
������������ȷ��Ŀ�ġ����Ǳ���<RUBY text="��������">�ַ�ǰ��</RUBY>��
����������Ϊ�����������ͨ�����Ǽ��˱�����˼ά��
������˼άʱ���������ұ�ø������¡�

�����е��׻��ǽ��С�
���Ҳ�����Ϊ������������Դǰ㶯ҡ��������
����������û������������赣�ǡ�

���õ��ǵ��ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	BGMoveDelete();
	CreateColorEXadd("�}ɫ100", 17500, "WHITE");

	SetFrequency("SE10", 2000, 1300, null);
	SetVolume("SE10", 1000, 1000, null);
//�����ġ������`��
	OnSE("se���L_�Ɖ�_�z03",1000);
	CP_IHPChange(500,9,null,false);
	MyLife_Count(500,490);


	Fade("�}ɫ100", 0, 1000, null, true);



	CP_SpeedChange(800,280,AxlDxl,false);
	CP_HighChange(500,727,AxlDxl,false);
	CP_AziChange(1000,-10,AxlDxl,false);
	Shake("�}����100", 500, 20, 10, 0, 0, 1000, null, false);
	Shake("@CP_Frame", 500, 20, 20, 0, 0, 1000, null, false);
	Zoom("�}����100", 500, 1100, 1100, AxlDxl, false);
	CP_RollBarMove("@�}����100", 150, @10, AxlDxl, true);


	Fade("�}ɫ100", 1000, 0, null, false);
	Move("�}����100", 1000, @-200, @-100, Dxl2, false);
	CP_RollBarMove("@�}����100", 300, @-20, AxlDxl, true);

	SetVolume("SE10", 3000, 500, null);
	SetFrequency("SE10", 1000, 1000, null);
	CP_RollBarMove("@�}����100", 1000, 0, AxlDxl, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0069]
��������������Ե����ơ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFrequency("SE10", 3000, 1000, null);

	SetFwC("cg/fw/fw��ɽ_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/021vs0100b35">
���Ǻǣ���������������
��������������𣬴�������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/021vs0110a01">
������װ������
���ء����⡭�����׸���ô�죡��

{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/ma02/021vs0120a00">
���侲����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
��˵�����Զ����Ļ���
��������Ҳ��˵���Լ����ġ�

����״�������߼��Ļ���ͻ�ƵĶ���һ��������ĳ��
�ط���
�����ⲻ�����߼���״����������ĳЩ��ƭ�ַ�����
����Щ��͸���ҳ����ٻ��ƣ������ƽ⡣

�����򡪡�
����Ƭ����ս�����������ķصء�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE*", 2500, 0, null);
	SetVolume("OnSE*", 2500, 0, null);
	SetVolume("@mbgm*", 2500, 0, null);

//���ӵ�ǰ
	CreateColorEX("�}��ܞ", 19000, "#000000");
	Fade("�}��ܞ", 1000, 1000, null, true);
	PrintGO("�ϱ���", 20000);

	FrameShakeDelete();

	Cockpit_AllFade0();

	OnBG(100,"bg020_ɽ�}�ӵ�_02.jpg");
	FadeBG(0,true);


	WaitPlay("@mbgm*", null);
	Wait(2000);

	CreateSE("SE01L","se��Ȼ_�L_Ұԭ01_L");
	MusicStart("SE01L",2000,1000,0,1000,null,true);

	FadeDelete("�ϱ���", 2000, true);
	SoundPlay("@mbgm09",0,1000,true);


//	FadeDelete("�}��ܞ", 2000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0083]
������������Ϸ����ڳ�������ͳ�ļ��ơ�
����һ��������ƽ��С̫�����ڳ�ӭ���ֽ������ơ�

��С̫���Ĺ��������м��ٽ���Ϊ������
�������ɹ��������ϵ����������µı�Ȼս����

��������ȴ��������С�
��С̫���Ľ�������ѹ�ͣ����Ĺ�����ǰ��
�����мܵĻ���Ӧ��ˡ�

�����˵���ͼʮ�����ˣ��˾ٲ����мܷ��أ����ǽ�����

������ռ�����������Ƶĵз�̫���������ĳ���ֻ��˵
����ı����������Ϊ��
����ʹС̫�����ˣ���ʹ����̫���Ĺ��������ȷ����ˣ�
��Ҳ�����ڲ������衣��ô���ԵĹ�����Ȼ���ڴ��С�

������������ʲô�Բߣ���������ӭ������ı�����
��
��������ȫû�С�

���޵ľ��硭������
�����������ľ��硣

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreatePlainSP("�}��д", 10000);
	StR(1000, @0, @0,"cg/st/3d�˰�ʽָ�]��_����_���L.png");
	OnBG(100,"bg020_ɽ�}_02.jpg");
	FadeBG(0,false);
	FadeStR(0,true);
	FadeDelete("�}��д", 500, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0084]
���з�����������н�һ������ִ�������Ҫ�谭��
���ļһﶼ���顣
����Ȼ��ˡ��Դˣ�˳Ӧ������������ЩС����������
������

�����С�
������������ǰ���޴����ߣ�����ִ�
����ܰ��⿴�Ƹ����ļƲ����ɷ��顣

�������ܱ��޴�Ҫ�ã���Ҳ�Ͳ���������������С�ǻۡ�

�������Ļ��������ͽ���һ����
�����Լ�Ҳ����޴���ʹ˫�����һ�¡�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreatePlainSP("�}��д", 10000);
	StL(1000, @0, @0,"cg/st/st��Դ̫_���L_˽��.png");
	OnBG(100,"bg020_ɽ�}�ӵ�_02.jpg");
	FadeBG(0,false);
	DeleteStR(0,false);
	FadeStL(0,true);
	FadeDelete("�}��д", 500, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0085]
������Ҳ���޴����뷨��
���Լ�������ֹ�����ˣ��������˵����

������Ҳ�á�
�����佻�������Ҳ�á�
��˭Ҳ�����������ˡ�

��������Ը��ȥ����
�������������豳�������Ρ�

����������Щ΢��ִ�š�
���ս���Զ�Ļ�Ӱ���Ǹ������ֻ���Լ��������ˣ�
����һ��Ů�ˡ�

��Ů���Ѿ����ڡ�
���������˾͸����Լ��������
����Ϊ�Ǹ������ֻ�����˶��ѡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStA(300,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0086]
�����롣
���������롣

�����˴������뱼����
��������������뱼����

���޴��ģ����ĵģ�����ȡ�ġ�
��������һ���������ص�ִ�

���໥���潻��
����һɲ�ǡ�

��������һɲ�ǡ�
�������ϱ����ᡣ

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



//����ͻ
//���ۥ磻�ȥ����ȡ������`��

	OnSE("se����_����_���S03",1000);

	Wait(600);

	CreateWindow("�}�ף�", 1000, 312, Middle, 400, 576, true);
	SetAlias("�}�ף�","�}�ף�");
	CreateTextureSP("�}�ף�/�}�ţ�100", 100, Center, Middle, "cg/ef/ef010_����б��܉��.jpg");
	Move("�}�ף�/�}�ţ�100", 0, @0, @-576, Dxl2, false);
	Zoom("�}�ף�/�}�ţ�100", 0, 2000, 2000, null, true);

	Move("�}�ף�", 0, @262, @0, Dxl2, true);
	Move("�}�ף�/�}�ţ�100", 150, @0, @576, Dxl2, false);

	SetVolume("SE*", 100, 0, null);
	SetVolume("OnSE*", 100, 0, null);
	SetVolume("@mbgm*", 100, 0, null);

	CreateSE("SE01a","se���L_����_�����02");
	MusicStart("SE01a",0,1000,0,1000,null,false);

	DrawTransition("�}�ף�", 150, 0, 1000, 30, Dxl2, "cg/data/slide_06_00_0.png", false);


	CreateWindow("�}�ף�", 1000, 312, Middle, 400, 576, true);
	SetAlias("�}�ף�","�}�ף�");
	CreateTextureSP("�}�ף�/�}�ţ�110", 110, Center, Middle, "cg/ef/ef015_���ú�܉��.jpg");
	Move("�}�ף�/�}�ţ�110", 0, @562, @0, Dxl2, true);
	Zoom("�}�ף�/�}�ţ�110", 0, 2000, 2000, null, true);

	Move("�}�ף�", 0, @-262, @0, Dxl2, true);
	Move("�}�ף�/�}�ţ�110", 150, @-562, @0, Dxl2, false);

	DrawTransition("�}�ף�", 150, 0, 1000, 30, Dxl2, "cg/data/slide_06_00_0.png", false);

	CreateSE("SE01b","se���L_����_�����01");
	MusicStart("SE01b",0,1000,0,1000,null,false);

	Wait(100);

	CreateTextureEX("�}��", 18000, Center, Middle, "cg/ef/ef038_�������.jpg");
	CreateTextureEXadd("�}��2", 18000, Center, Middle, "cg/ef/ef014_���ú�܉��.jpg");
	Zoom("�}��", 0, 2500, 2500, null, true);
	Zoom("�}��2", 0, 2500, 2500, null, true);
	Rotate("�}��", 0, @0, @0, @10, null,true);
	Rotate("�}��2", 0, @0, @0, @-110, null,true);

//	OnSE("se���L_����_�z_���04",1000);
	OnSE("se���L_����_���nͻ01",1000);

	FadeDelete("�}�ף�", 100, false);
	FadeDelete("�}�ף�", 100, false);

	EffectZoomDXadd(18100, 500, 100, "#FFFFFF", "cg/ef/ef040_�����nͻ.jpg", false);

	Fade("�}��", 0, 1000, null, true);
	Fade("�}��2", 0, 1000, null, true);
	Zoom("�}��", 500, 2200, 2200, Dxl2, false);
	Zoom("�}��2", 500, 2100, 2100, Dxl2, false);

	Wait(300);
	FadeDelete("�}��*", 200, false);


	CreateColorEXadd("�}�ե�", 1500, "#FFFFFF");
	Fade("�}�ե�", 150, 1000, null, true);

	Wait(1500);
	WaitPlay("OnSE*", null);


//���Ҿ�����Դ̫
	PrintGO("�ϱ���", 15000);
	CreateColorSPadd("�}�ե�", 5000, "#FFFFFF");
	CreateColorSP("�}�\��", 10, "#000000");

	FadeDelete("�ϱ���", 0, true);


	CreateWindow("�}�ף�", 150, Center, -288, 1024, 288, true);
	SetAlias("�}�ף�","�}�ף�");
	CreateTextureSP("�}�ף�/�}������100", 100, Center, InBottom, "cg/bg/resize/bg020_ɽ�}�ӵ�_02_l.jpg");
	CreateTextureSP("�}�ף�/�}�ӣԣ�", 500, Center, InBottom, "cg/st/st��Դ̫_���L_˽��.png");
	Move("�}�ף�/�}������100", 0, @182, @344, null, true);
//	Zoom("�}�ף�/�}������100", 0, 2000, 2000, null, true);
	Move("�}�ף�/�}�ӣԣ�", 0, @-120, @230, null, true);
	Move("�}�ף�", 0, @0, @288, null, true);

	CreateWindow("�}�ף�", 150, Center, 576, 1024, 288, true);
	SetAlias("�}�ף�","�}�ף�");
	CreateTextureSP("�}�ף�/�}������100", 100, Center, InBottom, "cg/bg/resize/bg020_ɽ�}�ӵ�_02_l.jpg");
	CreateTextureSP("�}�ף�/�}�ӣԣ�", 500, Center, InBottom, "cg/st/3d�˰�ʽָ�]��_����_�i��.png");
	Move("�}�ף�/�}������100", 0, @-12, @444, null, true);
//	Zoom("�}�ף�/�}������100", 0, 2000, 2000, null, true);
	Move("�}�ף�/�}�ӣԣ�", 0, @120, @230, null, true);
	Move("�}�ף�", 0, @0, @-288, null, true);

	Rotate("�}�ף�/�}������100", 0, @0, @-180, @0, null,true);

	FadeDelete("�}�ե�", 2000, false);

	Move("�}�ף�/�}������100", 4000, @-380, @0, Dxl1, false);
	Move("�}�ף�/�}������100", 4050, @380, @0, Dxl1, false);
	Move("�}�ף�/�}�ӣԣ�", 4050, @-190, @0, Dxl2, false);
	Move("�}�ף�/�}�ӣԣ�", 4100, @190, @0, Dxl2, true);


	SetFwC("cg/fw/fw�˰�ʽ_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/021vs0130b45">
������������


{	FwC("cg/fw/fw��Դ̫_����.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/021vs0140b55">
������������


{	FwC("cg/fw/fw�˰�ʽ_ͨ��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/021vs0150b45">
�����������Ϻ�Ϳ����


{	FwC("cg/fw/fw��Դ̫_����.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/021vs0160b55">
����������쵰����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������ä��g
	Wait(2000);

	SetFwC("cg/fw/fw�˰�ʽ_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/021vs0170b45">
�������ء�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Ф��á��Ҿ������

	CreateSE("SE01","se���L_�n��_�zܞ��01");//���ߩ`ע��
	MusicStart("SE01",0,1000,0,1000,null,false);

	Move("�}�ף�/�}�ӣԣ�", 600, @10, @60, Axl1, false);
	FadeDelete("�}�ף�/�}�ӣԣ�", 500, true);

	Wait(200);

	SetFwC("cg/fw/fw��Դ̫_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/021vs0180b55">
�������ء�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����᤯��Դ̫
	CreateSE("SE01b","se����_����_�᤺����01");//���ߩ`ע��
	MusicStart("SE01b",0,1000,0,1000,null,false);

	Move("�}�ף�/�}�ӣԣ�", 600, @-10, @30, Dxl2, false);

	SetFwC("cg/fw/fw��Դ̫_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/021vs0190b55">
����������


{	FwC("cg/fw/fw��Դ̫_ͨ��.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/021vs0200b55">
������������


</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	PrintGO("�ϱ���", 15000);

	OnBG(100,"bg020_ɽ�}_02.jpg");
	FadeBG(0,true);

	SoundPlay("@mbgm33",0,1000,true);


	FadeDelete("�ϱ���", 1000, true);

	SetFwC("cg/fw/fw��Դ̫_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0121]
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/021vs0210b55">
���Ҿ�����
���������𣿡�


{	FwC("cg/fw/fw�L��_ͨ��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/021vs0220b45">
�������ꡭ��
����С���ҡ������̶ֳȾ��롭����


{	FwC("cg/fw/fw�L��_����.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/021vs0230b45">
�����ҡ���
����������


{	FwC("cg/fw/fw��Դ̫_΢Ц.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/021vs0240b55">
���������˳Ծ�����ǿ����
���������̴�����ô�����𡣡�


{	FwC("cg/fw/fw��Դ̫_ͨ��.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/021vs0250b55">
��������������ù���ɡ���


{	FwC("cg/fw/fw�L��_ͨ��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/021vs0260b45">
�������ˡ�������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������Ҿ�
//����⟤��yɫ��˲�����Ѥ���

	CreateSE("SE01","se����_�z_װ��01");
	MusicStart("SE01",0,1000,0,600,null,false);

	CreateMask("�}��", 200, Center,  InBottom, "cg/data/circle_02_00_1.png", true);
	SetAlias("�}��","�}��");

	StC(1000, @0,@100,"cg/st/3d�˰�ʽָ�]��_����_ͨ��.png");

	Move("@StC*", 1000, @0, @-100, AxlDxl, false);
	FadeStC(500,true);

	WaitKey(1000);

	$�Еr�g=RemainTime("SE01");
	WaitKey($�Еr�g);

	SetVolume("SE*", 100, 0, null);

	//CreateColorEXadd("�}��/�}���`��", 2000, "#FFFFFF");
	//SetAlias("�}��/�}���`��","��݆");

	CreateStencil("�}����",2000,center,InBottom,128,"cg/st/3d�˰�ʽָ�]��_����_ͨ��.png",false);
	SetAlias("�}����","�}����");
	CreateColorEXadd("�}����/ɫ", 2010, "#FFFFFF");
	SetVertex("�}����/ɫ", center, bottom);
	Zoom("�}����", 0, 1020, 1020, null, true);

	CreateTextureEX("�}�����ܤ���", 100, Center, Middle, "cg/bg/bg020_ɽ�}_02.jpg");
	SetShade("�}�����ܤ���", HEAVY);




	SetAlias("�}����/ɫ","��݆");

	CreateSE("SEL01","se����_��x_�k��04");
	MusicStart("SEL01",1000,700,0,940,null,true);

	$�Еr�gԪ=RemainTime("SEL01");
	$�Еr�g�M�z��=$�Еr�gԪ-200;

//�ץ����ζ��x
	CreateProcess("�ץ������`��", 10000, 0, 0, "AuraFlash");
	SetAlias("�ץ������`��","�ץ������`��");

//�ץ��������`��
	Request("�ץ������`��", Start);
	Fade("�}�����ܤ���", 500, 1000, null, true);

	Fade("�}�����ܤ���", 1000, 0, null, true);
	Delete("�}�����ܤ���");
//	Wait(1000);

	SetFwR("cg/fw/fw��Դ̫_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/021vs0270b55">
���Ҿ�������


{	FwR("cg/fw/fw�L��_����.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/021vs0280b45">
�������䡭�������䰡��
�����ǡ���������ġ���


</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	OnSE("se���L_����_������01",1000);

	CreatePlainSP("�}��д", 10000);
	StC(1000, @0,@0,"cg/st/3d�˰�ʽָ�]��_����_���L.png");
	FadeStC(0,true);

	CreateStencil("�}����",2000,center,InBottom,128,"cg/st/3d�˰�ʽָ�]��_����_���L.png",false);
	CreateColorEXadd("�}����/ɫ", 2010, "#FFFFFF");
	SetVertex("�}����/ɫ", center, bottom);
	Zoom("�}����", 0, 1020, 1020, null, true);

	SetAlias("�}����/ɫ","��݆");
	FadeDelete("�}��д", 300, true);

	SetFwR("cg/fw/fw�L��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0131]
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/021vs0290b45">
����Ҫ��ɽ����
����Ҫ����һ�£����������ڡ���
��ֻ�ǿ鲻ֵǮ��ʯͷ���ѡ���

//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/021vs0300b45">
�������Ļ������ܵ��֡���
���õ��������õ�һ�£������ܵ��֣���


{	FwR("cg/fw/fw��Դ̫_��˼.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/021vs0310b55">
��������


</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetVolume("SEL*", 600, 300, null);

	CreateColorSP("��ܞ", 15000, "#000000");
	DrawTransition("��ܞ", 200, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	DeleteStA(0,true);
	Delete("�ץ������`��");
	Delete("�}*");

	OnBG(100,"bg020_ɽ�}�ӵ�_02.jpg");
	FadeBG(0,true);

	DrawDelete("��ܞ", 200, 100, "slide_01_03_1", true);

	OnSE("se����_����_�᤺����01",1000);
	StL(1000, @0, @0,"cg/st/st��Դ̫_���L_˽��.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fw��Դ̫_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0134]
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/021vs0320b55">
��������ɡ����Ҿ���
��������ȥ����һ�������


{	FwC("cg/fw/fw�L��_����.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/021vs0330b45">
����Դ̫������


{	FwC("cg/fw/fw��Դ̫_����.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/021vs0340b55">
�����������ˡ�
����ԫ���Ҿ�����


{	FwC("cg/fw/fw�L��_ŭ��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/021vs0350b45">
����Դ̫������������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��Ӥ���Դ̫
//�������á�

	SetVolume("@mbgm*", 100, 0, null);
	SetVolume("OnSE*", 100, 0, null);
	SetVolume("SE*", 100, 0, null);

	CreateColorEX("�}ɫ100", 18000, "BLACK");


	OnSE("se����_����_���S01",1000);

	Fade("�}ɫ100", 200, 1000, null, false);
	Move("@StL*", 150, @30, @0, Axl1, false);
	DeleteStA(150,true);


	Wait(600);
	OnSE("se��Ȼ_��ľ_̽��01",1000);

	SetFwC("cg/fw/fwһ��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/021vs0360a02">
������������


{	FwC("cg/fw/fw��Դ̫_�@��.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/021vs0370b55">
������!?��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��һ��
	FadeDelete("�}ɫ100", 400, true);

	StL(1000, @0, @0,"cg/st/stһ��_ͨ��_�Ʒ�.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fwһ��_�@��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/021vs0380a02">
����Դ̫үү������
����ѽ���������������


{	FwC("cg/fw/fw��Դ̫_�@��.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/021vs0390b55">
��ʲô����һ��С�����
��Ϊʲô����������


{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/021vs0400a02">
����ѽ������ȥǰ���ȸ�������к���
�Ӻ�������˵��סɽ����Ծ����ˡ�����


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/021vs0410a02">
����������ߴ��˰ɣ������ʱ���Ѿ��������ˡ�
���ӽ��翪ʼ�����ڣ���һֱ������ת����


{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/021vs0420a02">
�������������ҿɲ���·��Ŷ!? 
��ֻ�Ǿ�����΢��ɭ��ɢɢ��Ҳͦ���ŵģ�
���Ծ���΢���ߣ�Ȼ��������ˡ�����

{	FwC("cg/fw/fw�L��_����.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/021vs0430b45">
������һ�¡���


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/021vs0440a02">
���ţ�
�����������Ǽһ��Ҳ�ڰ������ף���


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/021vs0450a02">
��������

//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/021vs0460a02">
���������У���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreatePlainSP("�}��д", 10000);
	StC(1000, @0,@0,"cg/st/3d�˰�ʽָ�]��_����_���L.png");
	OnBG(100,"bg020_ɽ�}_02.jpg");
	FadeBG(0,false);
	DeleteStL(0,false);
	FadeStC(0,true);
	FadeDelete("�}��д", 300, true);

	Wait(200);

	SoundPlay("@mbgm28",2000,1000,true);

	SetFwR("cg/fw/fw�˰�ʽ_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0153]
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/021vs0470b45">
������һ�¡�������


{	FwR("cg/fw/fw��Դ̫_�Ф�.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/021vs0480b55">
�����У�
��С�������!!��


{	FwR("cg/fw/fwһ��_�@��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/021vs0490a02">
����������


{	FwR("cg/fw/fw�L��_����.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/021vs0500b45">
����Ҫ����
���õ�����
���㡪����

//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/021vs0510b45">
���ҵġ���һ�¡���
��Ҫ���������ҡ�������


{	FwR("cg/fw/fwһ��_����a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/021vs0520a02">
��������


{	FwR("cg/fw/fwһ��_ŭ��c.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/021vs0530a02">
�����Σ������˵���ˡ��쵰����


{	FwR("cg/fw/fw�L��_����.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/021vs0540b45">
������������


{	FwR("cg/fw/fw�L��_ŭ��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/021vs0550b45">
��������������������������!!��

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureSP("�}����100", 100, Center, Middle, "cg/bg/bg020_ɽ�}_02.jpg");
	Request("�}����100", Smoothing);
	Request("@StC*", Smoothing);
	SetBlur("�}����100", true, 1, 300, 100, false);
	SetBlur("@StC*", true, 1, 300, 100, false);

	Move("@StC*", 300, @0, @150, Dxl3, false);
	Zoom("@StC*", 300, 1500, 1500, Dxl3, false);
	Zoom("�}����100", 300, 1500, 1500, Dxl3, true);

	SetFwL("cg/fw/fw��Դ̫_�Ф�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0155]
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/021vs0560b55">
���Ҿ���������!!��

</PRE>
	SetTextEXL();
	TypeBeginTimeLIO(0,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 2000, 0, null);

//�􄇓�һ�W

	PrintGO("�ϱ���", 15000);
	CreateColorSP("�}�\��", 10, "#000000");
	Delete("�ϱ���");



	CreateColorEX("�}��ܞ", 5000, "#FFFFFF");
	CreateTextureSP("�}����100", 100, Center, Middle, "cg/anime/slash03a_01.png");
	Wait(60);


	Fade("�}��ܞ", 15, 1000, null, true);
	Fade("�}��ܞ", 15, 0, null, true);

	OnSE("se���L_����_�z_���01",1000);

	CreateTextureSP("�}����100", 100, Center, Middle, "cg/anime/slash03a_02.png");

	Wait(60);
	Fade("�}��ܞ", 15, 1000, null, true);
	Fade("�}��ܞ", 15, 0, null, true);

	OnSE("se���L_����_�z_���01",800);

	CreateTextureSP("�}����100", 100, Center, Middle, "cg/anime/slash03a_03.png");

	Wait(60);
	Fade("�}��ܞ", 15, 1000, null, true);
	Fade("�}��ܞ", 15, 0, null, true);

	OnSE("se���L_����_�z_���01",600);
	CreateTextureSP("�}����100", 100, Center, Middle, "cg/anime/slash03a_04.png");

	Wait(60);
	Fade("�}��ܞ", 15, 1000, null, true);
	Fade("�}��ܞ", 15, 0, null, true);

	OnSE("se���L_����_�z_���01",400);
	CreateTextureSP("�}����100", 100, Center, Middle, "cg/anime/slash03a_05.png");

	Wait(60);
	Fade("�}��ܞ", 15, 1000, null, true);
	Fade("�}��ܞ", 15, 0, null, true);

	OnSE("se���L_����_�z_���01",300);
	CreateTextureSP("�}����100", 100, Center, Middle, "cg/anime/slash03a_06.png");

	Wait(60);
	Fade("�}��ܞ", 15, 1000, null, true);
	Fade("�}��ܞ", 15, 0, null, true);

	OnSE("se���L_����_�z_���01",200);
	CreateTextureSP("�}����100", 100, Center, Middle, "cg/anime/slash03a_07.png");

	Wait(60);
	Fade("�}��ܞ", 15, 1000, null, true);
	Fade("�}��ܞ", 15, 0, null, true);

	OnSE("se���L_����_�z_���01",100);
	CreateTextureSP("�}����100", 100, Center, Middle, "cg/anime/slash03a_08.png");

	Wait(60);
	Fade("�}��ܞ", 15, 1000, null, true);

	Delete("�}����100");

	Wait(1000);

	FadeDelete("�}��ܞ", 1000, true);

	Wait(500);


//���ء�Ѫ�wĭ

	OnSE("se����_Ѫ_Ѫ���֤�01",1000);
	SL_leftdam(@0, @0,1000);
	SL_leftdamfade2(10);

	ClearWaitAll(0, 2000);



//����
//���ե饤�ȥ�˥��`
	PrintGO("�ϱ���", 20000);
	CreateTextureSP("�}����50", 100, Center, Middle, "cg/bg/resize/bg002_��a_02.jpg");
	CreateTextureEX("�}����100", 100, Center, Middle, "cg/bg/resize/bg002_��a_02.jpg");
	Request("�}����100", Smoothing);
	Move("�}����50", 0, @-100, @0, null, true);
	Zoom("�}����50", 0, 1200, 1200, null, true);

	Cockpit_AllFade2();

//�����ߣ����å��ԥåȄ������x========================
	MyLife_Count(1,510);
	MyTr_Count(500,300);
	CP_HighChange(0,1012,null,false);
	CP_SpeedChange(0,315,null,false);
	Cockpit_AllFade2();
	MyLife_Count(0,430);

	CP_AltChangeA();
	CP_RollBarMoveA();
	BGMoveAuto("@�}����50",1);

//�����ߣ����å��ԥåȄ������x�����ޤ�========================

	CreateSE("SE10","se���L_����_������02_L");
	MusicStart("SE10",1000,500,0,1000,null,true);

	SetFrequency("SE10", 4000, 1300, null);


	FrameShake();

	Zoom("�}����50", 500, 1000, 1000, Dxl2, false);
	DrawDelete("�ϱ���", 300, 100, "circle_01_00_1", true);


//�������`���Ҿ��֣���Դ̫�μ�ͻ��

	CreateSE("SE01","se���L_�Ɖ�_���k01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Wait(1000);
	SoundPlay("@mbgm36",3000,1000,true);


	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//��������
<voice name="����" class="����" src="voice/ma02/021vs0570a00">
������!?��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
������������
��һ˲�仹��Ϊ�ٶ��ܵ�Ϯ����

�������ԡ�ֻ��������û�г����
��������ĳ��������ȫ��ͬ�ĵط������������졣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
//��������
<voice name="����" class="����" src="voice/ma02/021vs0580a00">
���������ղŵ�������ʲô����


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/021vs0590a01">
����ɽ�Ǳߣ�
�����Ǳ�ը����ʲô�໥ײ���ġ���
�������ߵ�̫����������������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma02/021vs0600a00">
���������ǹ�Ա����Դ̫���ˣ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
	BGMoveDelete();
	Fade("�}����100", 0, 1000, null, true);
	CreateSurfaceEX("�}Suf",1000,2000,"@�}����100");
	OnSE("se���L_����_��ͻ�M02",1000);

	CP_SpeedChange(1000,513,AxlDxl,false);
	Fade("�}Suf", 300, 1000, null, false);
	Zoom("�}����100", 3000, 1200, 1200, AxlDxl, false);
//	CP_RollBarMove("@�}����100", 1000, @40, AxlDxl, false);
//	Rotate("�}Suf", 1000, @0, @0, 40, AxlDxl,false);
//	CP_RollBarMove2(1000,40,AxlDxl,false);
	CP_RollBarMove("@�}Suf", 1000, @40, AxlDxl, false);
	Move("�}����100", 3000, @500, @200, AxlDxl, false);
	CP_AziChange(3000,75,AxlDxl,false);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0183]
����ͷת��ɽ�Ǳߡ�
������������ȫ��֪���Ǳ߷�����ʲô��

�������Ҳ�˵�ǵط��٣���Դ̫���˿�������ӭս��
������ʲô���ԣ�����ս��Ҳ��û���ܵġ�
�����£��ղ���һ���ѷ�ʤ����

������Ҫ��Ӯ�˵Ļ���á�
���������ǵĻ�����������һ��Ҳ�ø�ȥɽ�Ǳߡ�
������ˣ�����״����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
//��������
<voice name="����" class="��������" src="voice/ma02/021vs0610a01">
�������������ũ����Ϸ�����

{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/ma02/021vs0620a00">
��!?��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//������
	CreateColorEX("�\Ļ��", 16000, "BLACK");

	OnSE("se���L_����_��ͻ�M01",1000);
	CP_SpeedChange(1000,513,AxlDxl,false);
	CP_HighChange(1500,612,AxlDxl,false);

	Move("�}����100", 500, @50, @20, AxlDxl, true);
	Move("�}����100", 1500, @-600, @-100, Axl2, false);
	Zoom("�}����100", 1500, 2000, 2000, AxlDxl, false);
	CP_RollBarMove("@�}����100", 1500, @-150, AxlDxl, false);
	CP_AziChange(1500,-100,null,false);


	Wait(1000);

	Fade("�\Ļ��", 0, 1000, null, true);
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("�}Suf");
//����ɽ��å�����
	CreateTextureSP("�}����100", 100, Center, Middle, "cg/bg/bg202_�����ݳ�����ɽ_02.jpg");
	CreateSurfaceEX("�}Suf",100,2000,"@�}����100");
	Fade("�}Suf", 0, 1000, null, true);

	Request("�}����100", Smoothing);
	CreateTextureEX("�}��ɽ", 100, Center, middle, "cg/st/3d��ɽ_�Tͻ_���L.png");
	SetBlur("�}��ɽ", true, 3, 300, 100, false);
	Request("�}��ɽ", Smoothing);
	Zoom("�}��ɽ", 0, 200, 200, null, true);

	CP_AziChange(0,-112,null,true);
	CP_RollBarMove("@�}����100", 0, 0, null, true);
	CockPit_LockSet(@0,@0);
	CP_LockOnMove("@�}��ɽ",0,@0,@-200,null,true);


	CP_AltChange(2000,10,Dxl2,false);
	CP_HighChange(2300,950,Dxl2,false);

	DrawDelete("�\Ļ��", 300, 100, "slide_01_01_1", false);
	Move("�}����100", 2000, @0, -200, Dxl2, true);

	Move("�}����100", 1000, @0, -250, AxlDxl, false);
	OnSE("se����_���å��ԥå�_������02",1000);
	CP_LockOnMove("@�}��ɽ",800,@0,@100,Dxl2,false);

	Fade("�}��ɽ", 500, 1000, null, true);
	CP_LockOnFade(100,"off",false);
	CP_EnemyFade(300,10,420,300);

	Wait(200);

	SetFwR("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
//��������
<voice name="����" class="����" src="voice/ma02/021vs0630a00">
��������ɽ!?��

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
��������������ɽ����λ��
������¶����Ӱ����������׽����

��Ϊ��ͻȻ������

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw��ɽ_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/021vs0640b35">
���ǺǺǡ�
��̫���ģ�̫�����ˣ���������ȥҲ��ֻ����
�Ϸ�ʧ�����ѡ�û�취�ˣ�
��ʱ��Ҫȡ���׼��ˣ���

{	FwR("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/ma02/021vs0650a00">
��������ôȡ����

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
����¶��Ӱ����Ϊʹ���µ�ս�������� 

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw��ɽ_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/021vs0660b35">
���Ǻǣ����µ���񻹳�ǿ��
������˵���������뵽���Ϸ���ɽһ�������
�������𣿡�

{	SetVolume("@mbgm*", 1000, 0, null);
	SetVolume("@SE10", 1000, 1, null);
	FwR("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/ma02/021vs0670a00">
����������
��<RUBY text="����������">�ҿ�������</RUBY>����ħС̫�ɡ���

{	FwR("cg/fw/fw��ɽ_ͨ��.png");}
//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/021vs0680b35">
����������ʲô!?��

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
����һ��������������ǿ�������߶�ҡ��������
����о��������ݼ����߼Ʋߵ���Ϣ��

������������ô���£�
�������<RUBY text="����������������������">û�з����Լ�����ʽ�Ѿ�</RUBY>
<RUBY text="��������">�������</RUBY>��

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw��ɽ_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/021vs0690b35">
����������ڡ������徻��
����������ڡ������徻����

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CP_LockOnFadeT(300,false);
	FadeDelete("�}��ɽ", 1000,true);
	CP_LockOnDelete();

	Wait(300);

//������ä���������ɽ����å�������


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0261]
��������ʧ�ˡ�

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//	SoundPlay("@mbgm05",0,1000,true);

	SetFwR("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
//��������
<voice name="����" class="��������" src="voice/ma02/021vs0700a01">
�����������رܣ���

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@SE10", 2000, 500, null);

//����`��
//�������`��
//������ä��w��
	CreateColorEXadd("�}ɫ100", 1500, "WHITE");
	OnSE("se���L_����_��ͻ�M01",1000);
	CP_SpeedChange(1000,513,AxlDxl,false);
	CP_HighChange(500,902,AxlDxl,false);
//	CP_AziChange(1000,-52,null,false);
	CP_RollBarMove("@�}Suf", 1000, 60, AxlDxl, false);

	Move("�}����100", 1000, @0, -300, AxlDxl, false);

	FadeDelete("�ϱ���", 1000, true);
	SoundPlay("@mbgm13",0,1000,true);

//�����ı����������`���n��

	SetFrequency("SE10", 1000, 1000, null);
	Fade("�}ɫ100", 0, 1000, null, true);

//�����ߣ�����`��
	OnSE("se���L_�Ɖ�_�z04",1000);
	MyLife_Count(300,380);

	Fade("�}ɫ100", 500, 0, null, false);

	CP_HighChange(500,810,AxlDxl,false);
	CP_SpeedChange(800,380,AxlDxl,false);
	Shake("�}����100", 500, 20, 10, 0, 0, 1000, null, false);
	Shake("@CP_Frame", 500, 20, 20, 0, 0, 1000, null, false);
	CP_RollBarMove("@�}Suf", 150, 10, AxlDxl, true);
	CP_RollBarMove("@�}Suf", 300, -10, AxlDxl, false);
	Move("�}����100", 1000, @0, -400, AxlDxl, false);

	Wait(300);
	CP_RollBarMove("@�}����100", 300, 0, AxlDxl, true);

	SetFrequency("SE10", 1200, 1200, null);


	SetFwR("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
//��������
<voice name="����" class="��������" src="voice/ma02/021vs0710a01">
�����������ˣ���

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����`��ر�
//�������`��

//���w�С�����
	OnSE("se���L_����_��ͻ�M02",1000);
	CP_SpeedChange(1000,513,AxlDxl,false);
	CP_RollBarMove("@�}Suf", 800, @30, AxlDxl, false);
//	CP_AziChange(800,-20,null,false);
	CP_HighChange(500,851,AxlDxl,false);
	Move("�}����100", 900, @0, -100, AxlDxl, false);

	Wait(800);
//����`�루�رܣ�
//�����ı����������`���n��
	SetFrequency("SE10", 1000, 900, null);

	Fade("�}ɫ100", 0, 1000, null, true);

	OnSE("se���L_�Ɖ�_�z03",1000);
//�����ߣ�����`��
	MyLife_Count(500,350);


	Fade("�}ɫ100", 500, 0, null, false);

	CP_HighChange(500,756,AxlDxl,false);
	CP_SpeedChange(500,380,AxlDxl,false);
	CP_RollBarMove("@�}Suf", 300, -10, AxlDxl, false);
	Shake("�}����100", 500, 20, 10, 0, 0, 1000, null, false);
	Shake("@CP_Frame", 500, 20, 20, 0, 0, 1000, null, false);
	Move("�}����100", 1500, @0, -500, AxlDxl, false);
	CP_RollBarMove("@�}Suf", 100, -10, AxlDxl, true);
	CP_RollBarMove("@�}Suf", 150, 10, AxlDxl, true);

	Wait(300);

	CP_RollBarMove("@�}Suf", 500, -5, AxlDxl, true);
	CP_RollBarMove("@�}Suf", 1000, 0, AxlDxl, false);
	Delete("�}ɫ100");
	SetFwR("cg/fw/fw����_��ʹ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
//��������
<voice name="����" class="����" src="voice/ma02/021vs0720a00">
����������
������������״������


{	FwR("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/021vs0730a01">
����΢��
��������̫�ֹۣ���
��Ϊ�Է��Ĺ���ͻȻ�ܼ������ˣ���

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
���������ϵ��ͻ���
����ħ�״�չ�ֳ�ƴ��ȫ���Ĺ��ơ�

��û�������Ѿ���������ǲ��
����������<RUBY text="��������">��������</RUBY>��

������Ϊ�Σ�
��Ϊ�Σ���Ȼ��ˣ�

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310]
//��������
<voice name="����" class="����" src="voice/ma02/021vs0740a00">
��Ϊ�Σ�ͻȻ������
������˵ô����


{	FwR("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/021vs0750a01">
������������

{	FwR("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/021vs0760a00">
����Ϊ�ղ��������������ʧ�ܡ�
��������ô���£���


{	FwR("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/021vs0770a01">
��û��������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//����`��ر�
//���ɤ��`��

	CreateColorEXadd("�}ɫ100", 1500, "WHITE");


	OnSE("se���L_����_��ͻ�M01",1000);
	EffectZoomadd(10000, 1000, 100, "cg/ef/ef003_�����Ƅ�.jpg", false);


	CP_HighChange(1000,823,AxlDxl,false);
	CP_SpeedChange(1000,513,AxlDxl,false);
//	CP_AziChange(1000,12,null,false);
	CP_RollBarMove("@�}Suf", 1000, 50, AxlDxl, false);
	Move("�}����100", 1000, @0, -100, AxlDxl, true);

	SetFrequency("SE10", 1000, 1000, null);
	Fade("�}ɫ100", 0, 1000, null, true);

//�����ߣ�����`��
	OnSE("se���L_�Ɖ�_�z04",1000);
	MyLife_Count(500,275);
	CP_HighChange(500,805,AxlDxl,false);

	Fade("�}ɫ100", 500, 0, null, false);

	CP_SpeedChange(800,380,AxlDxl,false);
	Shake("�}����100", 500, 20, 10, 0, 0, 1000, null, false);
	Shake("@CP_Frame", 500, 20, 20, 0, 0, 1000, null, false);
//	Zoom("�}����100", 500, 1500, 1500, AxlDxl, false);
//	CP_RollBarMove("@�}����100", 150, 10, AxlDxl, true);
//	CP_RollBarMove("@�}����100", 300, -10, AxlDxl, false);
	CP_RollBarMove("@�}Suf", 150, 10, AxlDxl, true);
	CP_RollBarMove("@�}Suf", 300, -10, AxlDxl, false);
//	Move("�}����100", 1000, @-200, @0, Dxl2, false);
	Move("�}����100", 1000, @0, -400, Dxl2, false);

	Wait(300);
//	CP_RollBarMove("@�}����100", 300, 0, AxlDxl, true);
	CP_RollBarMove("@�}Suf", 300, 0, AxlDxl, true);

	SetFrequency("SE10", 1200, 1200, null);



//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0314]
������������״���ɡ�
�������������ɽ�Ǳ߷����ĺ��졣

����˵�Ǻܾ��ҵ����죬��Ҳ���������ѡ�
��������淢���ܴ�����������ڿ�������Ҳ������
��Ĥ���ѡ�

�������ţ���ɽ��������Ӱ��
�����ұ��˶Դ��ƺ�û�����������

��������֡�
����ħ��ͷ��Ҫ�����ں����ľ��Ŷ������ʽ�Ļ�����
���Լ����Բ�����������
��û���ܾ��Ļ����Ǿ�û�����ɽ����ʽ�ˡ�

����һì�ܲ�����
���������
��������������档

����������ʲô!?
������һ��ʲô����Ҫ����ʲô�����Ļ�����

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����`��ر�
//��������`
	OnSE("se���L_����_��ͻ�M02",1000);
	CP_SpeedChange(1000,513,AxlDxl,false);
	CP_AziChange(1500,-220,AxlDxl,false);
	CP_HighChange(1500,572,AxlDxl,false);

	SetFrequency("SE10", 1000, 900, null);
	CP_RollBarMove("@�}Suf", 1500, -180, AxlDxl, false);
	Move("�}����100", 2000, 0, -5200, AxlDxl, false);

	Wait(1500);
	CP_HighChange(500,720,AxlDxl,false);
	CP_RollBarMove2(0,0,null,true);
	Wait(500);
	Fade("�}ɫ100", 0, 1000, null, true);
	OnSE("se���L_�Ɖ�_�z03",1000);

//�����ߣ�����`��
	MyLife_Count(500,73);

	Fade("�}ɫ100", 500, 0, null, false);

	CP_SpeedChange(500,380,AxlDxl,false);
	CP_HighChange(500,679,AxlDxl,false);

	Shake("�}����100", 500, 20, 10, 0, 0, 1000, null, false);
	Shake("@CP_Frame", 500, 20, 20, 0, 0, 1000, null, false);
	Move("�}����100", 6000, @0, -4800, Dxl2, false);
	CP_RollBarMove("@�}Suf", 200, @-20, AxlDxl, true);
	CP_RollBarMove("@�}Suf", 1000, @25, AxlDxl, false);

	Wait(500);

	Delete("�}ɫ100");



	SetFwR("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0320]
//��������
<voice name="����" class="��������" src="voice/ma02/021vs0780a01">
������װ�ױ������ˣ�
�����У�������ȥ��ֲ��˶�á�������

{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma02/021vs0790a00">
������������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorEX("�\Ļ��", 16200, "BLACK");
	CreateTextureEX("�}�y�Ǻ�", 16300, 150, -350, "cg/st/resize/3d�y�Ǻ�_����_ͨ��s.png");

	Fade("�\Ļ��", 500, 1000, null, true);

	Move("�}�y�Ǻ�", 15000, @0, 100, null, false);
	Fade("�}�y�Ǻ�", 2000, 400, null, false);



//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0330]
����������
����������

���һ�������׹����

��ս�ܶ��������ߵ�������
��������������ʱ�򡪡���

��������
���������������ӱ�!!

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureSP("�}����100", 100, Center, Middle, "cg/bg/resize/bg002_��a_02.jpg");
	BGMoveAuto("@�}����100",1);

	FadeDelete("�}�y�Ǻ�", 500, false);
	FadeDelete("�}����200", 500, false);
	FadeDelete("�\Ļ��", 500, false);
	Wait(200);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0340]
//��������
<voice name="����" class="��������" src="voice/ma02/021vs0800a01">
������������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma02/021vs0810a00">
����ר��������Դ��
����Ҫ������ν���£���


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/021vs0820a01">
������
����������ɽָ���ǳ������ɽ����

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/021vs0830a00">
����֪������
��û�����������


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/021vs0840a01">
����ɽ��<RUBY text="��������������">������ɽ������</RUBY>����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma02/021vs0850a00">
������������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 1000, 0, null);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0350]
����������<RUBY text="����">��ɽ</RUBY>��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("�}����300", 6200, Center, Middle, "cg/bg/bg025_�ӵ�ɽ�}��ɭa_02.jpg");
	Fade("�}����300", 5000, 500, null, false);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0360]
//��������
<voice name="����" class="��������" src="voice/ma02/021vs0860a01">
����ɽ��������ֻ����ɽ��
�����������ɽ������ɽ��������һ����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0370]
����������ֻ��һ����
�����ߣ���������������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0380]
//��������
<voice name="����" class="����" src="voice/ma02/021vs0870a00">
������Ҳ����˵������


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/021vs0880a01">
��û��
�����ǣ�˵��<RUBY text="����">�Ǹ�</RUBY>������Ļ�������


{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/021vs0890a00">
����<RUBY text="����������������">���ڲt���ĺõط�</RUBY>��������������ˣ�
���޷�ʩ�С�
�����ң���������������Ǹղŵĺ�����������
���﷢���ģ���


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/021vs0900a01">
��!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	FadeDelete("�}����300", 500, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0390]
�����ȣ���ɽ����ֻ��һ����
��ɽ�ϵ��������ʽ�����������
��û�в����ʽ��������ߡ�
��ʩ������Ҫ��һ�����ⲿ��������

�������������۾������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	CreateTextureEX("�}����300", 16200, Center, Middle, "cg/bg/bg025_�ӵ�ɽ�}��ɭa_02.jpg");
	SetBlur("�}����300", true, 1, 500, 50, false);
	Request("�}����300", Smoothing);

	Zoom("�}����300", 300, 1200, 1200, Dxl2, false);
	Fade("�}����300", 200, 1000, null, true);

	BGMoveDelete();

	Wait(200);

/*
//������һ�r�˱�
//��ͬ�r�k��
//��������
<voice name="����" class="����" src="voice/ma02/021vs0910a00">
��������!!��

//��������
<voice name="����" class="��������" src="voice/ma02/021vs0920a01">
��������!!��
*/


	CreateVOICE("����","ma02/021vs0910a00");
	CreateVOICE("��������","ma02/021vs0920a01");

	SetBacklog("��������!!��", "voice/ma02/021vs0910a00", ����);
	SetBacklog("��������!!��", "voice/ma02/021vs0920a01", ����);

	MusicStart("����",0,1000,0,1000,null,false);
	MusicStart("��������",0,1000,0,1000,null,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0400]
��
������������!!��

</PRE>
	SetTextEXC();
	Request("@text0400", NoLog);
	TypeBeginTimeCIO(0,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("����", 0, 0, null);
	SetVolume("��������", 0, 0, null);

	OnSE("se���L_����_��ͻ�M01",1000);
	CreateColorSP("�\Ļ��", 20000, "BLACK");
	DrawTransition("�\Ļ��", 200, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	FadeDelete("�}����300", 0, true);

	CreateTextureSP("�}����100", 100, Center, -150, "cg/bg/bg201_�����ݳ������нֵ�_02.jpg");
//	SetBlur("�}����100", true, 3, 500, 50, false);
	Request("�}����100", Smoothing);
	Move("�}����100", 1000, @0, @-600, Dxl2, false);

	FrameShake();
	CP_RollBarMove("@�}����100", 0, 0, null, true);

	DrawTransition("�\Ļ��", 200, 1000, 0, 100, null, "cg/data/slide_01_03_1.png", true);
	Delete("�\Ļ��");




//������
//��ɽ픤�
	SoundPlay("@mbgm08",0,1000,true);

	SetFwC("cg/fw/fw��ɽ_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0410]
//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/021vs0930b35">
������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	OnSE("se���L_����_��ͻ�M03",1000);
	CP_AziChange(0,-270,null,true);
	CP_HighChange(1000,423,AxlDxl,false);
	Move("�}����100", 1000, @-800, @200, Dxl2, false);
	Zoom("�}����100", 1000, 1800, 1800, Dxl2, false);

	Wait(500);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0420]
����֪�Ӻδ���������Ľ��д����� 
������û��ϵ��<RUBY text="����">���</RUBY>�޹ؽ�Ҫ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	OnSE("se���L_����_��ͻ�M01",1000);
	CreateColorSP("�\Ļ��", 20000, "BLACK");
	DrawTransition("�\Ļ��", 200, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	CreateTextureSP("�}����100", 100, Center, Middle, "cg/bg/bg025_�ӵ�ɽ�}��ɭa_02.jpg");
	SetBlur("�}����100", true, 1, 500, 50, false);
	Request("�}����100", Smoothing);
	Zoom("�}����100", 2000, 2000, 2000, Dxl2, false);

	CP_HighChange(2000,352,AxlDxl,false);
	EffectZoomadd(10000, 2000, 100, "cg/ef/ef003_�����Ƅ�.jpg", false);
	DrawTransition("�\Ļ��", 200, 1000, 0, 100, null, "cg/data/circle_01_00_1.png", true);
	Delete("�\Ļ��");


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0421]
��ͷ�����£��½��½��½���
�������������١���˵��ɽ���ٶ���ʤ�ڴ�������Ҫ׷
�ϴ���Ҳ������ô���׵ġ�

������������δ׷�ϣ����Է���Ȼ�Ƚ��С�
����������ĵ���һ���ɱ����

�����ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0430]
//��������
<voice name="����" class="��������" src="voice/ma02/021vs0940a01">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����`��ر�

	CreateColorEXadd("�}ɫ100", 16500, "WHITE");

	OnSE("se���L_����_��ͻ�M02",1000);
	CP_SpeedChange(1000,513,AxlDxl,false);
	CP_RollBarMove("@�}����100", 800, -360, AxlDxl, false);
	CP_AziChange(800,-20,null,false);

	Zoom("�}����100", 3000, 2100, 2100, AxlDxl, false);
	Move("�}����100", 900, 0, 0, AxlDxl, false);

	Wait(800);

	SetFrequency("SE10", 1000, 900, null);

	Fade("�}ɫ100", 0, 1000, null, true);

	OnSE("se���L_����_��ꪏ���02",1000);


	SetFwC("cg/fw/fw��ɽ_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0440]
//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/021vs0950b35">
��ʲô!?��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	FadeDelete("�}ɫ100", 1000, false);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0450]
�������Ǳ�ɱ��һ����
��<RUBY text="����">�ӹ�</RUBY>�ĵ����׺ݵ����˵�ս�ľ���

���ղŵ�һ˲�������Ե�Ϯ��֪̽��ͨ��Ƥ���Ӵ�����
����������ҡ�
��ʹ���������رܳɹ����Ȿ�ǲ����ܵġ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	OnSE("se���L_����_��ͻ�M01",1000);
	CP_HighChange(5000,273,AxlDxl,false);
	EffectZoomadd(10000, 2000, 100, "cg/ef/ef003_�����Ƅ�.jpg", false);
	Zoom("�}����100", 5000, 2500, 2500, Dxl2, false);

//������
//��ɽ��

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0452]
���Ѿ�û�и��š�
�����Ǳߡ���ά����ɽ��<RUBY text="����">��ɽ</RUBY>֮���ڶ�ȥ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0460]
//��������
<voice name="����" class="����" src="voice/ma02/021vs0960a00">
��������̽��ɽ����Χ����Դ����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/021vs0970a01">
�����ף�{WaitKey(2500);}<BR>����������ı����������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CP_HighChange(500,120,AxlDxl,false);

	CreateColorSP("�\Ļ��", 20000, "BLACK");
	DrawTransition("�\Ļ��", 200, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	CreateTextureSP("�}����200", 16200, Center, Middle, "cg/bg/bg005_ɽ��_02.jpg");
	SetBlur("�}����200", true, 1, 300, 20, false);
	Request("�}����200", Smoothing);
	Zoom("�}����200", 500, 1500, 1500, Dxl2, false);

	DrawTransition("�\Ļ��", 200, 1000, 0, 100, null, "cg/data/circle_01_00_1.png", true);
	Delete("�\Ļ��");
	EffectZoomadd(10000, 2000, 100, "cg/ef/ef003_�����Ƅ�.jpg", false);
//�����ä��򤫤�
//�����T��å�����
	#av_���\ɽ=true;
	#av_����ɽ=true;

	OnSE("se����_���å��ԥå�_������02",1000);
	Wait(300);
	OnSE("se����_���å��ԥå�_������02",1000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0462]
��������׽���ˣ�
������������Աߣ����������ߡ���<RUBY text="��������������">���ɽ������ɽ</RUBY>��

���˶��߱�������������������Ŀ��
���ڵ����������ˣ�<RUBY text="��������������">����ɽʩ������</RUBY>����ʦ��

�����е������ڴ�ȫ���⿪��
����Խ��ʶ����ʽ�������������ߺ����ŵ�����ɡ����
����һ�����й�ѧ��������һ�������źŲ�������ɽ��
�Ź�ӽ������ʹ�������������Ǹ����˵İ�ʾ��

��������ר��ʹ�����壬ս���������ɽ��������һ
�����쳣�õ�ά��ʩ��ʱ��Ҳ������֡�

������������֮��ɾ���ս�޲�ʤ��һ�
�����������ɽΪһ�������һ�㣡

�������ǵط��ٺ���Դ̫���˵ļ��ҳ�ͻ
������ĳ��������ʩ���ߵļ�������żȻ����
����֮���ƽ�Ĵ߻����Ļ�����
�����±��޷��ƽ�����λһ�����ʽ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ŵ�
//���Ȥ�
//��������ݳ�������졢���m����

	FadeDelete("�}����200", 300, true);

	Wait(200);

	OnSE("se���L_����_��ͻ�M01",1000);
	OnSE("se���L_����_�z_�ŵ�01",1000);

	Move("@�}����100", 200, @0, @-300, Axl2, false);

	SetVolume("SE10", 1000, 0, null);

	CreateColorSP("�}�\Ļ��", 18500, "BLACK");
	DrawTransition("�}�\Ļ��", 200, 0, 1000, 100, null, "cg/data/slide_02_01_1.png", true);

	PrintGO("�ϱ���", 19000);
	FrameShakeDelete();

	CreateColorSP("�}��ܞ", 18600, "#000000");

	Delete("�ϱ���");

	OnBG(100,"bg003_�Ĥ�Ұ_02.jpg");
	FadeBG(0,true);

	CreateTextureSP("�}����200", 1500, Center, Middle, "cg/bg/bg003_�Ĥ�Ұ_02.jpg");
	Shake("�}����200", 500, 0, 10, 0, 0, 1000, null, false);


//	DrawDelete("�ϱ���", 250, 100, "slide_02_01_0", true);


	CP_HighChange(300,0,AxlDxl,false);
	OnSE("se����_�z_װ��01",1000);
	DrawDelete("�}��ܞ", 250, 100, "slide_02_01_0", true);

	Wait(500);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0467a]
��ɽ�����������ҡ����֪���롣���Ǿ���û�뵽
����ᷢչ���ˡ�
��ת����Ҫ�������ܡ���ȴ̫�٣�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�􄇓ġ���
	CreateColorSP("�}�ե�", 1500, "#FFFFFF");

	CreateSE("SE01a","se���L_����_�����02");
	CreateSE("SE01b","se���L_����_�����02");

	MusicStart("SE01a",0,1000,0,1250,null,false);
	Wait(20);
	EffectZoomadd(10000, 200, 100, "cg/ef/ef010_����б��܉��.jpg", false);
	Fade("�}�ե�", 100, 0, null, true);

	OnSE("se���L_����_�z��������",1000);

	Wait(100);

	Fade("�}�ե�", 0, 1000, null, true);

	MusicStart("SE01b",0,1000,0,750,null,false);
	Wait(20);
	EffectZoomadd(10000, 200, 100, "cg/ef/ef011_����б��܉��.jpg", false);
	FadeDelete("�}�ե�", 300, true);

	OnSE("se���L_����_�z��������",1000);
	OnSE("se���L_�n��_�zܞ��02",1000);

	Wait(500);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0467b]
������һ��������һ����
��������̫���ݺݴ����߱����������Ǵ�ɳ�ȥ��

����խ��ɽ����б�µı�Ե��
�����ް��ͣ�ͣ����������䵽Զ����ɽ�š�

�������̶ֳȣ������ǲ����ܾʹ������ġ�
��������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��ɽ_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0470]
//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/021vs0980b35">
������С�ӡ���������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Ͽ�
//����ɽ��å�����
//��������ݳ�������졢���m����

	CP_HighChange(300,300,AxlDxl,false);

	PrintGO("�ϱ���", 18500);
	CreateColorSP("�}��ܞ", 18000, "#000000");

	OnBG(100,"bg001_��a_02.jpg");
	FadeBG(0,true);


//����ɽ��å�����
	CreateTextureSP("�}����100", 100, Center, Middle, "cg/bg/resize/bg002_��a_02.jpg");
	Request("�}����100", Smoothing);
	CreateTextureEX("�}��ɽ", 100, Center, middle, "cg/st/3d��ɽ_�Tͻ_���L.png");
	Request("�}��ɽ", Smoothing);
	Zoom("�}��ɽ", 0, 100, 100, null, true);

	CP_AziChange(0,-200,null,true);
	CP_RollBarMove("@�}����100", 0, 0, null, true);
	CockPit_LockSet(@0,@0);
	CP_LockOnMove("@�}��ɽ",0,@0,@-200,null,true);


	Move("�}����100", 2000, @0, @100, Dxl2, false);
	CP_AltChange(2000,10,Dxl2,false);
	CP_HighChange(2000,700,Dxl2,false);

	FrameShake();
	OnSE("se���L_����_��ͻ�M01",1000);
	DrawDelete("�ϱ���", 250, 100, "slide_02_01_1", true);
	DrawDelete("�}��ܞ", 250, 100, "slide_02_01_1", true);


	OnSE("se����_���å��ԥå�_������02",1000);
	CP_LockOnMove("@�}��ɽ",800,@0,@100,Dxl2,false);

	Fade("�}��ɽ", 500, 1000, null, true);
	CP_LockOnFade(100,"off",false);
	CP_EnemyFade(300,10,420,300);

	Wait(500);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0471]
�����Ͽ�Ϯ���������������ߡ�
��������Ӱ�Ѿ���¶����Ļû�����ʧ��

��û�ж����֧Ԯ������������ɽҲ������
���߶��ѡ�
�������޾��µ����ɣ�

�������ƽ���ȫ����
�����衣

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���ϕN

	OnSE("se���L_����_��ͻ�M01",1000);

	CreateColorEXadd("�}�ե�", 25000, "#FFFFFF");
	Fade("�}�ե�", 200, 1000, null, true);

	PrintGO("�ϱ���", 25000);
	CreateColorSPadd("�}�ե�", 5000, "#FFFFFF");
	CP_AllDelete();

	CreateTextureSP("�}����100", 100, Center, Middle, "cg/bg/bg002_��a_02.jpg");
	FrameShakeDelete();
	Cockpit_AllFade0();
	CP_LockOnDelete();


	Delete("�ϱ���");







//���ãɣ������T���϶�
//���ãɣ���ɽ�T���϶�
	CreateWindow("�}�ף�", 150, Center, -288, 1024, 288, true);
	SetAlias("�}�ף�","�}�ף�");
	CreateTextureSP("�}�ף�/�}������100", 100, Center, InBottom, "cg/bg/resize/bg002_��a_02.jpg");
	CreateTextureSP("�}�ף�/�}�ӣԣ�", 500, Center, -600, "cg/st/3d��ɽ_�Tͻ_���L.png");
	Move("�}�ף�/�}������100", 0, @212, @144, null, true);
	Zoom("�}�ף�/�}������100", 0, 2000, 2000, null, true);
	Move("�}�ף�/�}�ӣԣ�", 0, @-120, @230, null, true);
	Move("�}�ף�", 0, @0, @288, null, true);

	CreateWindow("�}�ף�", 150, Center, 576, 1024, 288, true);
	SetAlias("�}�ף�","�}�ף�");
	CreateTextureSP("�}�ף�/�}������100", 100, Center, InBottom, "cg/bg/bg002_��a_02.jpg");
	CreateTextureSP("�}�ף�/�}�ӣԣ�", 500, Center, -600, "cg/st/3d�����˜�_�Tͻ_���L.png");
	Move("�}�ף�/�}������100", 0, @-212, @144, null, true);
	Zoom("�}�ף�/�}������100", 0, 2000, 2000, null, true);
	Move("�}�ף�/�}�ӣԣ�", 0, @120, @230, null, true);
	Move("�}�ף�", 0, @0, @-288, null, true);
	SetBlur("�}�ף�/�}�ӣԣ�", true, 1, 300, 100, false);
	SetBlur("�}�ף�/�}�ӣԣ�", true, 1, 300, 100, false);


	Rotate("�}�ף�/�}������100", 0, @0, @-180, @0, null,true);

	FadeDelete("�}�ե�", 2000, false);

	Move("�}�ף�/�}������100", 1000, @-380, @0, Dxl1, false);
	Move("�}�ף�/�}������100", 1000, @380, @0, Dxl1, false);
	Move("�}�ף�/�}�ӣԣ�", 1000, @-190, @0, Dxl2, false);
	Move("�}�ף�/�}�ӣԣ�", 1000, @190, @0, Dxl2, false);


	FadeDelete("�}�ե�", 600, false);
	DrawDelete("�}�ե�", 600, 1000, "circle_01_00_0", true);

	Wait(500);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0480]
//��������
<voice name="����" class="��������" src="voice/ma02/021vs0990a01">
����������ˮƽ�𡪡�
���������ʹ��Ұɣ�����ɽ�Ĳٿ��ߡ���

{	FwC("cg/fw/fw��ɽ_ͨ��.png");}
//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/021vs1000b35">
�������ͣ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/021vs1010a01">
��<RUBY text="��������">����ˮƽ</RUBY>!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 1000, 0, null);
	SetVolume("@SE*", 1000, 0, null);


	CreateSE("SE01","se���L_����_�z_���04");

//�􄇓Ľ���
//�������礬�`��
	CreateTextureEX("�}����200", 4500, Center, Middle, "cg/ef/ef040_�����nͻ.jpg");
	CreateColorEXadd("�}ɫ100", 15000, "WHITE");

	OnSE("se���L_����_��ͻ�M08",1000);
	Zoom("�}�ף�/�}�ӣԣ�", 500, 2000, 2000, Axl2, false);
	Move("�}�ף�/�}�ӣԣ�", 500, @600, @0, Axl2, false);
	Zoom("�}�ף�/�}�ӣԣ�", 500, 2000, 2000, Axl2, false);
	Move("�}�ף�/�}�ӣԣ�", 500, @-600, @0, Axl2, false);

	Wait(300);

	Fade("�}����200", 200, 1000, null, false);
	MusicStart("SE01",0,1000,0,1000,null,false);
	EffectZoomadd(10000, 2000, 1000, "cg/ef/ef040_�����nͻ.jpg", true);

	Fade("�}ɫ100", 100, 1000, null, true);

	Delete("�}��*");
	Delete("�}����200");



	CreateTextureSP("�}����100", 100, Center, 0, "cg/bg/resize/bg201_�����ݳ������нֵ�a_02.jpg");
	Move("�}����100", 0, @0, -200, null, true);
	CreateTextureEX("�}��ɽ", 110, 10, -385, "cg/st/3d��ɽ_�T��_���Ld.png");
	CreateTextureEXadd("�}��ɽ��", 110, 0, -400, "cg/st/3d��ɽ_�T��_���Ld.png");
	Request("�}��ɽ", Smoothing);
	Zoom("�}��ɽ*", 0, 300, 300, null, true);
	Rotate("�}��ɽ*", 0, @0, @0, 45, null,true);
	SetBlur("�}��ɽ", true, 1, 300, 300, false);
//	CreateTextureSP("�}����100", 100, Center, Middle, "cg/bg/bg001_��a_02.jpg");
	CreateTextureEX("�}����", 6110, -500, -300, "cg/st/3d�����˜�_�Tͻ_���L.png");
	CreateTextureEXmul("�}����Ӱ", 6210, -500, -300, "cg/st/3d�����˜�_�Tͻ_���L_Ӱ.png");
//	CreateStencil("�}����Ӱ",6210,-500,-300,128,"cg/st/3d�����˜�_�Tͻ_���L.png",false);
//	CreateColorEX("�}����Ӱ/ɫ", 6210, "BLACK");
	Request("�}����", Smoothing);
	Zoom("�}����*", 0, 1000, 1000, null, true);
	Rotate("�}����*", 0, @0, @0, 45, null,true);
//	SetBlur("�}����", true, 1, 300, 300, false);

	FadeDelete("�}ɫ100", 2000, false);

	Move("�}����100", 20000, @0, -500, null, false);
	Zoom("�}��ɽ*", 20000, 220, 220, null, false);
	Move("�}��ɽ*", 20000, @50, @100, null, false);
	Zoom("�}����*", 20000, 1200, 1200, null, false);
	Move("�}����*", 20000, @-50, @-100, null, false);
	Fade("�}��ɽ", 1000, 1000, null, false);
	Fade("�}����", 1000, 1000, null, true);

	Wait(500);

	SetFwC("cg/fw/fw��ɽ_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0490]
//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/021vs1020b35">
���ź�����������
���Ϸ��ħ���������Ѿ��𣡡�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ɢ�A���ܩ`��

	CreateSE("SE01","se���L_�Ɖ�_�󱬰k01");
	CreateColorEXadd("�}��ɽ�籬��", 4500, "WHITE");
	DrawTransition("�}��ɽ�籬��", 0, 300, 300, 300, null, "cg/data/circle_14_00_0.png", true);

	CreateTextureEX("�}����200", 4500, Center, Middle, "cg/ef/ef022_��������ɢ�A.jpg");
	Zoom("�}����200", 0, 1400, 1400, null, true);
	Move("�}����200", 0, 120, -50, null, true);
	CreateColorEXadd("�}ɫ100", 20000, "WHITE");

	OnSE("se���L_����_��ꪏ���03",1000);
	Fade("�}��ɽ��", 1000, 1000, null, false);
	Fade("�}��ɽ�籬��", 1000, 600, null, false);
	Wait(1000);

	SetBlur("�}����", true, 1, 50, 50, false);
	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("�}����Ӱ", 200, 700, null, false);
	Shake("�}����*", 6000, 0, 10, 10, 0, 1000, null, false);
	EffectZoomadd(5000, 2000, 100, "cg/ef/ef034_����AȾ.jpg", false);
	Fade("�}����200", 50, 1000, null, false);
	Zoom("�}����200", 3000, 2000, 2000, Dxl2, false);

	Wait(2500);
	Rotate("�}����*", 300, @0, @0, @-45, Axl3,false);
	Zoom("�}����*", 300, 5000, 5000, Axl3, false);
	Move("�}����*", 300, @-1500, @-1500, Axl3, false);
	Fade("�}ɫ100", 300, 1000, null, true);

	CreateTextureSP("�}����100", 100, Center, Middle, "cg/bg/bg002_��a_02.jpg");
	Delete("�}��ɽ*");
	Delete("�}����*");

	Rotate("�}����200", 2500, @0, @0, 3600, Dxl3,false);
	Zoom("�}����200", 2500, 20000, 20000, Axl3, false);
	FadeDelete("�}ɫ100", 4000, false);
	FadeDelete("�}����200", 2500, true);

	Wait(2000);
	SetFwC("cg/fw/fw����_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0500]
//��������
<voice name="����" class="����" src="voice/ma02/021vs1030a00">
������������


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/021vs1040a01">
�����������֡���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("�}�ţ�100", 100, Center, Middle, "cg/ev/ev925_Ұ̫����Ƭ_b.jpg");
	Fade("�}�ţ�100", 1000, 1000, null, true);
	SoundPlay("@mbgm26",0,1000,true);

	Wait(1000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0510]
��<RUBY text="������������">Ұ̫���Ļ���</RUBY>��
������ɽ����ͬʱ���ص��������ˡ�

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0525]
//��������
<voice name="����" class="��������" src="voice/ma02/021vs1050a01">
�������������ˡ���

{	FwR("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/ma02/021vs1060a00">
���԰���
��������������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	FadeDelete("�}�ţ�100", 1000, true);


	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0520]
//��������
<voice name="����" class="��������" src="voice/ma02/021vs1070a01">
��ʲô�£���������

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma02/021vs1080a00">
����ΰ��æ�ˡ���


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/021vs1090a01">
������������

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma02/021vs1100a00">
�����ֲ����ҵ����ܡ�
��û��������������Ӯ���˵İɡ���


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma02/021vs1110a00">
��������
����󲻱���ô������


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/021vs1120a01">
����������
��������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma02/021vs1130a00">
��������


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/021vs1140a01">
�������ޱ�Ҫ��
������������

//��������
<voice name="����" class="��������" src="voice/ma02/021vs1150a01">
�����������ʲô������ȥ�롣��

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/021vs1160a00">
������������


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/021vs1170a01">
������������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma02/021vs1180a00">
��������û����ꡣ
��������ӵ�ȥ����


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/021vs1190a01">
�������ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(2000, 1000);


//���ӵ�ǰ
//��������ݳ�������졢���m����
	PrintGO("�ϱ���", 15000);

	OnBG(100,"bg020_ɽ�}�ӵ�_02.jpg");
	FadeBG(0,true);

	FadeDelete("�ϱ���", 2000, true);

	SetFwC("cg/fw/fwһ��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0530]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/021vs1200a02">
������������


{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/021vs1210a02">
��ү����
��үү����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��һ����ӤäƔؤ�줿��Դ̫
	CreateTextureEX("�}�ţ�100", 5000, Center, Middle, "cg/ev/ev111_��Դ̫�򱧤���һ��_a.jpg");
	Fade("�}�ţ�100", 1000, 1000, null, true);

	SoundPlay("@mbgm32",0,1000,true);

	SetFwR("cg/fw/fwһ��_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0540]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/021vs1220a02">
���㡢�㡢���ڸ�ʲô��
������վ�ڵ�ǰ���Ǳ������ɰ�����


{	FwR("cg/fw/fw��Դ̫_΢Ц.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/021vs1230b55">
�������ǣ��Ǻǡ�
��ŶŶ���Ҳ�֪�������Ҿ�Ȼ�������ˡ�
�������Ǻ�Ϳ�ء�����


{	FwR("cg/fw/fwһ��_�ڤ���.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/021vs1240a02">
���𡢱�˵�ˡ�
�����������������������ˣ�Ҫ����ֹסѪ
�Ļ��Ͳ�Ҫ���ˡ�������


{	FwR("cg/fw/fw��Դ̫_΢Ц.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/021vs1250b55">
��������С���
����ҲҪ��������¡�
�����������ʲô�����ˡ���


{	FwR("cg/fw/fwһ��_ŭ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/021vs1260a02">
������ô���ܣ�
������������!?��û�аɣ�
������û��������ô����֪���Լ��᲻����!?��


{	FwR("cg/fw/fw��Դ̫_΢Ц.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/021vs1270b55">
���ޡ���ԭ����ˣ�ԭ����ˡ�
��������С�������ԡ�������С�������ԡ�
С����˵���ǰ�����������һ����
�����ǺǺǡ�����


{	FwR("cg/fw/fw��Դ̫_��˼.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/021vs1280b55">
������������


{	FwR("cg/fw/fwһ��_�ڤ���.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/021vs1290a02">
��үү����


{	FwR("cg/fw/fw��Դ̫_ͨ��.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/021vs1300b55">
��С���������ӡ�
������ҡ�����


{	FwR("cg/fw/fwһ��_�ڤ���.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/021vs1310a02">
����˵ɵ������


{	FwR("cg/fw/fw��Դ̫_ͨ��.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/021vs1320b55">
������������С�������ԣ��Ҳ������ġ���
��û�¡������赣�ġ���


{	FwR("cg/fw/fwһ��_�ڤ���.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/021vs1330a02">
������ô�Ǳ��˻����˼�ë����
�������ɶ���ͷ��̫̫�������𡭡�����


{	FwR("cg/fw/fw��Դ̫_΢Ц.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/021vs1340b55">
���Ǻǡ����ǰ���
��������Ψһ����Ȥ��������׽Ū�����˰�
�����Ǻǡ�����


{	FwR("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/021vs1350a02">
���ǾͲ�Ҫ��˵�ˣ�
�������������㣬����΢վ��������������
�ɶ���ʲô������̧�˵ģ���


{	FwR("cg/fw/fw��Դ̫_ͨ��.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/021vs1360b55">
��С���ﰡ����
��������㡭����

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����
	CreateTextureEX("�}�ţ�110", 5000, Center, Middle, "cg/ev/ev111_��Դ̫�򱧤���һ��_b.jpg");
	Fade("�}�ţ�110", 1000, 1000, null, true);
	Delete("�}�ţ�100");

	SetFwR("cg/fw/fwһ��_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0550]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/021vs1370a02">
����������
����̹���ʲô������


{	FwR("cg/fw/fw��Դ̫_΢Ц.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/021vs1380b55">
������ء����ǻ����Ŷ��
���������������ţ��߰ɡ���


{	FwR("cg/fw/fwһ��_�ڤ���.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/021vs1390a02">
�������߰���
�������ܶ���үү����


{	FwR("cg/fw/fw��Դ̫_ͨ��.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/021vs1400b55">
������������û�õġ�
����Ȼ���ź�������������ƺ�����
�Ե��ء���С�����


{	FwR("cg/fw/fwһ��_�ڤ���.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/021vs1410a02">
������˵��
��˵ʲô����үү����

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("�}EV100", 5100, 0, Middle, "cg/ev/resize/ev111_��Դ̫�򱧤���һ��_bl.jpg");
	CreateTextureEX("�}EV200", 5000, 0, Middle, "cg/ev/resize/ev111_��Դ̫�򱧤���һ��_cl.jpg");

	SetVertex("�}EV200", 0, middle);
	Zoom("�}EV200", 0, 750, 750, null, true);
	Request("�}EV200", Smoothing);

	SetVertex("�}EV100", 0, middle);
	Zoom("�}EV100", 0, 750, 750, null, true);
	Request("�}EV100", Smoothing);
	Move("�}EV100", 0, @-200, @0, null, true);

	Move("�}EV100", 4000, @+200, @0, Dxl1, false);
	Fade("�}EV100", 1000, 1000, null, true);
	Delete("�}�ţ�110");

	SetFwC("cg/fw/fw��Դ̫_��˼.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0551]
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/021vs1420b55">
�������˺ܶ��¡���
������ʮ�꣬����������¡�����

{	FwC("cg/fw/fw��Դ̫_ͨ��.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/021vs1430b55">
�����ջ��ܡ����õ�һ����������֮�˵��չˣ�
���Ѿ�������������ˡ������������˵ļһ��

{	FwC("cg/fw/fw��Դ̫_΢Ц.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/021vs1440b55">
���������˵ġ����һﰡ����
��лл�㡭��С�����������

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/021vs1450a02">
��ү����үү����

{	FwC("cg/fw/fw��Դ̫_΢Ц.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/021vs1460b55">
�������������һ�¡�������
���Ҿ�������Ҳ����㡭������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Fade("�}EV200", 0, 1000, null, true);
	Fade("�}EV100", 1000, 0, null, true);
	Delete("�}EV100");

	Wait(1000);

//����Դ̫���Ŀ
	CreateTextureEX("�}�ţ�120", 5000, Center, Middle, "cg/ev/ev111_��Դ̫�򱧤���һ��_c.jpg");
	Fade("�}�ţ�120", 1000, 1000, null, true);
	Delete("�}EV200");

	SetFwR("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0560]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/021vs1470a02">
��үү��������


//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/021vs1480a02">
��үү����


{	FwR("cg/fw/fwһ��_�ڤ���.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/021vs1490a02">
��ι��ι����
��ֻ��˵��ô���ԵĻ�������


//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/021vs1500a02">
��������ô����������
��ι���������۾�������


{	FwR("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/021vs1510a02">
��ι������


{	FwR("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/021vs1520a02">
������������


{	FwR("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/021vs1530a02">
��������������������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�����á��Ҿ�����������
	CreateSE("SE01","se����_����_�z�i��02_L");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Fade("�}�ţ�120", 500, 0, null, true);
	Delete("�}�ţ�120");

	SetVolume("SE*", 100, 0, null);

	StC(1000, @0,@0,"cg/st/3d�˰�ʽָ�]��_����_�i��.png");
	FadeStC(500,true);

	SetFwR("cg/fw/fw�˰�ʽ_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0570]
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/021vs1540b45">
������һ�¡���


{	FwR("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/021vs1550a02">
���������������ޣ���


{	FwR("cg/fw/fw�˰�ʽ_ͨ��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/021vs1560b45">
����Ҫ�����õ��㡣
�����ڡ�����


{	FwR("cg/fw/fwһ��_����a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/021vs1570a02">
����ʲô��Ц������쵰������

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���W
//�������`�󡣵�푤���
	CreateTextureEX("�}�ţ�130", 5000, Center, Middle, "cg/ev/ev111_��Դ̫�򱧤���һ��_d.jpg");

	CreateSE("SE01","se���L_����_�����01");
	MusicStart("SE01",0,1000,0,500,null,false);

	CreateColorSP("�}�ե�", 6500, "#FFFFFF");
	Wait(100);


	CreateSE("SE01b","se���L_�n��_�nͻ01");
	MusicStart("SE01b",0,1000,0,1500,null,false);


	Fade("�}�ţ�130", 0, 1000, null, true);
	FadeDelete("�}�ե�", 100, true);
	CreatePlainEX("�}������", 6000);
	FadeFR2("�}������",0,1000,300,@0,@0,20,AxlDxl, true);
	Delete("�}������");
	DeleteStA(0,true);

	SetFwR("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0580]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/021vs1580a02">
������!?��


{	FwR("cg/fw/fw�˰�ʽ_ͨ��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/021vs1590b45">
������õ��㡣
��������ζ���õ�����

//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/021vs1600b45">
��������Ρ���
����ϧ�κΣ���

//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/021vs1610b45">
����ǰ����ԥ�ˡ�
�������ڣ��Ҳ�������ԥ����

//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/021vs1620b45">
��һ�¡���
����Ҫ����˫�֣�ȡ����������


{	FwR("cg/fw/fwһ��_�ڤ���.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/021vs1630a02">
�������ء�������

//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/021vs1640a02">
�������һ����𣿣�

//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/021vs1650a02">
���һ������𣿣�

//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/021vs1660a02">
���һ������������쵰������

//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/021vs1670a02">
������ɱ�����ŵ����ѵĻ쵰��
������������ǰɱ�˵Ļ쵰������

//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/021vs1680a02">
����Ҳ�ᱻ����ɱ�𣿣�


{	FwR("cg/fw/fw�˰�ʽ_ͨ��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/021vs1690b45">
�������ҵġ�
��ɱ����Ļ�����˭Ҳ�޷��������ˡ�
�����ҵģ���


{	FwR("cg/fw/fwһ��_�ڤ���.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/021vs1700a02">
������ʲô����

//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/021vs1710a02">
��Ϊʲôүү���������ɡ�
��Ϊʲô��һ������������Ϊ��

//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/021vs1720a02">
��Ϊʲô���޷�����үү��
��Ϊʲô���޷�����쵰��

//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/021vs1730a02">
����һ������
����ּ����������ϡ�
�����ź͸���Ϊ��ȡ�����֣�
������������ףԸ��

//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/021vs1740a02">
������һ������ּҵ�һ����
��Ȼ�����������Ͼ�û����Ӧ���ߵ������𣿣�

//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/021vs1750a02">
��<RUBY text="������������������">�����ϲ�����������</RUBY>!?��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//һ�ȥƥ����ȥܥå���������

	CreateColorEX("�}ɫ100", 16500, "BLACK");
	Fade("�}ɫ100", 100, 1000, null, true);

	WaitKey(500);

	SetBacklog("����������������������������", "voice/ma01/0210580b57", ����������);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0589]
��
����������������������������

</PRE>
	SetTextEXC();
	Request("@text0589", NoLog);
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��һ�����֤��Фǰ������ڣ����V�˹��
	CreateTextureEX("�}�ţ�140", 5000, Center, Middle, "cg/ev/ev111_��Դ̫�򱧤���һ��_e.jpg");

	FadeDelete("�}ɫ100", 1000, true);

//	Fade("�}�ţ�140", 300, 1000, null, true);
//	Fade("�}�ţ�140", 200, 100, null, true);
	Fade("�}�ţ�140", 1000, 1000, null, true);
	Delete("�}�ţ�130");

	SetFwR("cg/fw/fw�˰�ʽ_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0590]
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/021vs1760b45">
��ȥ���ɡ���һ��!!��


{	FwR("cg/fw/fwһ��_ŭ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/021vs1770a02">
���쵰��������!!��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��һ�W
//���֥�å�������
//��������ݳ�������졢���m����

	ClearFadeAll(0, true);
	SetVolume("@mbgm*", 10, 0, null);

	CreateColorSP("�}�\��", 100, "#000000");

	CreateSE("SE01","se���L_����_Ұ̫�����01");
	CreateSE("SE02","se���L_����_��ͻ�M03");
	MusicStart("SE01",0,1000,0,1500,null,false);

	SL_down(@0, @0,3000);
	SL_downfade2(10);

	CreateColorSP("�}�ե�", 500, "#FFFFFF");
	Wait(100);

	PrintGO("�ϱ���", 15000);

	CreateColorSP("�}��ܞ", 5000, "#000000");

	FadeDelete("�ϱ���", 300, true);

	MusicStart("SE02",0,1000,0,1500,null,false);

	SetFwC("cg/fw/fwһ��_�ڤ���.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0600]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/021vs1780a02">
������������


{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/021vs1790a02">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���ţ֣�һ���򱧤����w�ִ���
//�������ǣ£ǣ͉䤨�뤫��

//��������ݳ�������졢���m����
	CreateTextureSP("�}����100", 100, Center, Middle, "cg/ev/ev112_һ���򤪊������ä��������.jpg");
	CreateTextureSP("�}����200", 100, Center, Middle, "cg/ev/ev112_һ���򤪊������ä��������.jpg");
	SetShade("�}����200", HEAVY);
	Zoom("�}����200", 0, 1500, 1500, null, true);
	Zoom("�}����200", 1000, 1000, 1000, Dxl2, false);
	FadeDelete("�}��ܞ", 1000, true);

	Fade("�}����200", 1000, 800, null, true);

	Fade("�}����200", 500, 1000, null, true);

	FadeDelete("�}����200", 1000, true);

	SoundPlay("@mbgm18",0,1000,true);

	Wait(1000);

	SetFwL("cg/fw/fwһ��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0610]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/021vs1800a02">
������������


{	FwL("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/021vs1810a02">
�������ǡ���˭����


{	FwL("cg/fw/fw��������_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/ma02/021vs1820a00">
��������


{	FwL("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/021vs1830a02">
����ɫ�ġ������ס�
������ģ�����ĺ졭����

//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/021vs1840a02">
���ҷ����������˰���
����ô�����ǣ����С����𡭡���

{	FwL("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/021vs1850a02">
�����������ޣ�
����Ϊʲô���ҡ�����

{	FwL("cg/fw/fw��������_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/ma02/021vs1860a00">
��Ҫ�����ˡ���


{	FwL("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/021vs1870a02">
���ף���

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����¤äݤ��Ӥ�
	CreatePlainEX("�}������", 500);

	OnSE("se���L_����_��ͻ�M02",1000);

	FadeFR2("�}������",0,1000,300,@0,@0,20,AxlDxl, true);
	Delete("�}������");

	SetFwL("cg/fw/fwһ��_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0620]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/021vs1880a02">
��������


{	FwL("cg/fw/fw��������_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/ma02/021vs1890a00">
�����Ҷ���
������߶ȣ�����ȥҲ�Ǻ�Σ�յġ���


{	FwL("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/021vs1900a02">
�������ǡ�����


{	FwL("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/021vs1910a02">
��������


{	FwL("cg/fw/fwһ��_�@��.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/021vs1920a02">
�������ף����ȡ����£�
����������������

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����¡��ŵ�
//��ɽ�g
	OnSE("se���L_����_�z_̤���z��01",1000);

//��������ݳ�������졢���m����
	PrintGO("�ϱ���", 15000);

	OnBG(100,"bg022_ɽ��a_02.jpg");
	FadeBG(0,true);

	FadeDelete("�ϱ���", 1000, true);


	Wait(1000);

	StR(1000, @0, @0,"cg/st/stһ��_ͨ��_�Ʒ�.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fwһ��_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0630]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/021vs1930a02">
���ҡ���˵��
�����ѵ��ǣ��Ǿ��١�����


{	FwC("cg/fw/fw��������_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/ma02/021vs1940a00">
������������·�ܵ�ɽ��ȥ����


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/021vs1950a02">
��������


{	FwC("cg/fw/fw��������_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/ma02/021vs1960a00">
�����졣
��������ȥ�ַ������޵ط��ٳ����Ҿ�������
�⸽�����Σ�ա���


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/021vs1970a02">
���֡��ַ��ǡ�����


{	FwC("cg/fw/fw��������_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/ma02/021vs1980a00">
����ȥ�����һ�����
����������һ������ֱ��ǰ������


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/021vs1990a02">
������


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/021vs2000a02">
���������ס�
�������ˡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��һ�����ߤ�
	CreateSE("SE01","se����_����_�ߤ�01_L");
	MusicStart("SE01",0,1000,0,1200,null,true);

	DeleteStA(300,true);

	SetVolume("SE*", 2500, 0, null);
	SetVolume("OnSE*", 2500, 0, null);



//���ӵ�ǰ
//���L���Ҿ�

//��������ݳ�������졢���m����

	PrintGO("�ϱ���", 15000);
	CreateColorSP("�}��ܞ", 5000, "#000000");

	OnBG(100,"bg020_ɽ�}�ӵ�_02.jpg");
	FadeBG(0,true);

	FadeDelete("�ϱ���", 2000, true);

	WaitPlay("SE*", null);
	Wait(1000);

	DrawDelete("�}��ܞ", 1000, 100, "blind_01_00_1", true);

	StC(1000, @0, @0,"cg/st/3d�˰�ʽָ�]��_����_�i��.png");
	FadeStC(300,true);


	SetFwR("cg/fw/fw�˰�ʽ_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0640]
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/021vs2010b45">
���㡭����С�ӣ�
����Ҫ�����ҵ�ʲôʱ�򣡡�


{	FwR("cg/fw/fw��������_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/ma02/021vs2020a00">
�����ݸ����������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0650]
���������ܡ�
������װ���Ŵ����˺۵Ľ��У������Ҿ����������Ե�
����󷽵���С��Ӱ��

����Դ̫���ˡ�
��������Ѫ������������Ա�������ʧȥ��������

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw��������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0660]
//��������
<voice name="����" class="����" src="voice/ma02/021vs2030a00">
���������ǡ�
�����ڵ��ң���������ƾ��ŭ��ʹ���ӵ���
�嶯֧���š���


{	FwR("cg/fw/fw�˰�ʽ_ͨ��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/021vs2040b45">
���㾹Ȼ���������ܱ��㡭��
��������ʵ����Ը��˲�䣡��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



	PrintGO("�ϱ���", 5000);
	CreateColorSP("�}�\��", 10, "#000000");
	Delete("�ϱ���");

	SetVolume("@mbgm*", 100, 0, null);

//�􄇓Ľ�������󤬤��`��
//���������x��

	CreateSE("SE01","se���L_����_�����01");
	MusicStart("SE01",0,1000,0,750,null,false);

	Wait(200);

	CreateSE("SE02","se���L_����_Ұ̫�����01");
	MusicStart("SE02",0,1000,0,1250,null,false);

	CreateTextureSP("�}�Ҕ�", 100, Center, Middle, "cg/ef/ef010_����б��܉��.jpg");
	DrawTransition("�}�Ҕ�", 200, 0, 1000, 100, null, "cg/data/slide_01_00_1.png", false);

	CreateTextureSPadd("�}�̔�", 100, Center, Middle, "cg/ef/ef015_���ú�܉��.jpg");
	DrawTransition("�}�̔�", 200, 0, 1000, 100, null, "cg/data/slide_01_00_0.png", false);

	Wait(150);

	SetVolume("SE*", 300, 0, null);

	OnSE("se���L_����_���nͻ01",1000);

	PrintGO("�ϱ���", 5000);
	CreateColorSP("�}�ե�", 5000, "#FFFFFF");

	OnBG(100,"bg020_ɽ�}�ӵ�_02.jpg");
	FadeBG(0,true);

	Delete("�ϱ���");

	FadeDelete("�}�ե�", 1000, true);

	SetFwR("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0670]
//��������
<voice name="����" class="��������" src="voice/ma02/021vs2050a01">
�����������죡
���ǽ���<RUBY text="��������">��������</RUBY>����

{	FwR("cg/fw/fw��������_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/ma02/021vs2060a00">
��ʲô����!!��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SoundPlay("@mbgm12",0,1000,true);

//�􄇓Ľ�������󤬤��`��
//���������x��

	CreateSE("SE10","se����_�z_װ��01");
	CreateSE("SE10b","se���L_����_�z_���03");

	MusicStart("SE10",0,1000,0,750,null,false);
	MusicStart("SE10b",0,1000,0,750,null,false);

	StC(1000, @0, @0,"cg/st/3d�˰�ʽָ�]��_����_�i��.png");
	Move("@StC*", 300, @60, @0, Dxl2, false);
	FadeStC(300,true);

	SetFwR("cg/fw/fw�˰�ʽ_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0680]
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/021vs2070b45">
����������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE11","se����_����_�z�i��03");
	MusicStart("SE11",0,1000,0,1000,null,false);

//���Ҿ�����
	Move("@StC*", 300, @-60, @0, Axl2, true);

	SetVolume("SE1*", 100, 0, null);

	CreateSE("SE01","se���L_����_��ͻ�M01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateColorSPadd("�}���å���", 5000, "#FFFFFF");
	Wait(100);

	DeleteStA(0,true);

	Fade("�}���å���", 600, 0, null, false);
	DrawDelete("�}���å���", 400, 100, "slide_05_00_1", true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0681]
���ǹ�Ա���ٳ��ˡ�
���������������ҡ������ӵ��ķ����ȥ��

���ѵ�����Ϊ�ڿ��ĳ���������
������ûʱ�����������ͼ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0690]
//��������
<voice name="����" class="����" src="voice/ma02/021vs2080a00">
����������<RUBY text="������������">��ɽһ��ݻ�</RUBY>����


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/021vs2090a01">
���������ף���

{	FwC("cg/fw/fw��������_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/ma02/021vs2100a00">
����װ�����ɡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���ؚ����ݳ������˥᣿
//��������װ�פ�̫������늤򎡤Ӥ�
	CreateTextureEX("�}����100", 100, Center, Middle, "cg/ev/ev905_����늴œĵ�_a.jpg");
	Zoom("�}����100", 0, 2000, 2000, null, true);
	SetBlur("�}����100", true, 3, 300, 70, false);
	CreateSE("SE01","se����_늓�_���01");

	RailgunFlash();

	MusicStart("SE01",300,500,0,1000,null,true);
	Zoom("�}����100", 1500, 1000, 1000, Dxl3, false);
	Fade("�}����100", 500, 1000, null, true);

	Wait(1000);

	SetFwC("cg/fw/fw��������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0700]
//��������
<voice name="����" class="����" src="voice/ma02/021vs2110a00">
����Ұ������ս�񷨣���ѩ�N��֮�ơ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��̫���򱳤ˤĤ��ޤ���꤫�֤����
//����늤�������
	CreateTextureEX("�}����200", 100, Center, Middle, "cg/ev/ev905_����늴œĵ�_b.jpg");
	CreateSE("SE05","se���L_����_�z_���05_L");
	MusicStart("SE05",300,500,0,1000,null,true);

	EffectZoomadd(10000, 1000, 100, "cg/ev/ev905_����늴œĵ�_b.jpg", false);
	Fade("�}����200", 500, 1000, null, true);

	Wait(500);

	SetFwC("cg/fw/fw��������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0710]
//��������
<voice name="����" class="����" src="voice/ma02/021vs2120a00">
����Ż���������������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������¤�
//�����󥬥�ɥ��`�󡣤ޤ����֤ˡ�
	CreateColorEX("�}ɫ�ե�å���", 18500, "WHITE");

	Delete("�}ɫ100");

//	CreateTextureSP("�}EV100", 1999, Center, Middle, "cg/ev/ev905_����늴œĵ�_c.jpg");
	CreateTextureEXadd("�}EV200", 2000, Center, Middle, "cg/ev/ev905_����늴œĵ�_c.jpg");
	CreateTextureEX("�}����300", 100, Center, Middle, "cg/ev/ev905_����늴œĵ�_c.jpg");
	CreateColorEXadd("�}ɫ100", 16000, "WHITE");

	EffectZoomDXadd(10000, 1000, 1000, "#FFFFFF", "cg/ev/ev905_����늴œĵ�_c.jpg", false);
	Fade("�}����300", 0, 1000, null, true);
	Delete("�}����100");
	Delete("�}����200");

	Shake_Loop("@�}EV200","shake01");

	CreateSE("SE02","se����_늓�_���02");
	CreateSE("SE03","se���L_�Ɖ�_�z01");
//	DrawDelete("�\Ļ��", 300, 100, "slide_01_01_1", true);



	MusicStart("SE02",0,1000,0,1000,null,false);
	Wait(1000);

	SetVolume("*", 3000, 0, null);

//	CreateMovie("��`�ө`", 16000, 0, 0, false, false, "dx/mv��.ngs");
//	CreateSound("��`�ө`��", SE, "sound/se/se����_��x_��`�륬����");
//	SetAlias("��`�ө`��","��`�ө`��");


	RailgunFlash();
	FadeF4("�}EV200", 1000, 1000, 3000, 0, 0, Axl3, false);
	Wait(2500);

	Zoom("�}����300", 200, 2000, 2000, null, false);
	Fade("�}ɫ�ե�å���", 200, 1000, null, true);
	Fade("�}ɫ100", 0, 1000, null, true);
	Fade("�}ɫ�ե�å���", 100, 0, null, false);
	MovieSESet(16000,"mv��","se����_��x_��`�륬����");
	MovieSEStart2(300,1000);

	RG_FlashDelete();
	Delete("�}����300");
	Delete("�}EV100");
	Delete("�}EV200");

	CreateTextureEX("�}����100", 1000, Center, Middle, "cg/ef/ef026_���ñ���.jpg");
	SetVertex("�}����100", 512, 576);

	Zoom("�}����100", 0, 3000, 1000, null, true);
	Request("�}����100", Smoothing);
	SetBlur("�}����100", true, 2, 300, 100, false);
	Fade("�}����100", 0, 1000, null, true);

//	Wait(1000);

	MusicStart("SE03",0,1000,0,1000,null,false);
	Shake("�}����100", 3000, 10, 0, 10, 0, 1000, null, false);
	Zoom("�}����100", 2000, 1000, 15000, Dxl3, false);
	Move("�}����100", 2000, @0, @7500, Axl2, false);
	FadeDelete("�}ɫ100", 300, true);

	Wait(800);
	Fade("�}ɫ�ե�å���", 500, 1000, null, true);

	Delete("�}����100");
	Wait(500);

	SetFwC("cg/fw/fw�˰�ʽ_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0720]
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/021vs2130b45">
��ม���������������������!?��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ɥ��`��
//��ɽ�h����ɽ��������ơ��Τ�����äȉ���
//��������������֤˱����Ȥޤ�����ʡ�ɫ����

//��������ݳ�������졢���m����

	PrintGO("�ϱ���", 19000);

	SetVolume("@mbgm*", 1000, 0, null);

	CreateSE("SE���k","se���L_�Ɖ�_�z02");
	MusicStart("SE���k",0,1000,0,1000,null,false);

	Wait(3500);

	CreateTextureSP("�}����100", 200, -100, -150, "cg/bg/resize/bg025_�ӵ�ɽ�}��ɭb_02_l.jpg");
	Request("�}����100", Smoothing);

	OnBG(100,"bg025_�ӵ�ɽ�}��ɭb_02.jpg");
	FadeBG(0,true);

	Move("�}����100", 18000, -512, -288, null, false);
	Zoom("�}����100", 18000, 500, 500, null, false);

	FadeDelete("�ϱ���", 3000, true);

	Wait(2000);

	FadeDelete("�}����100", 2000, true);

	SetFwC("cg/fw/fw��������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0730]
//��������
<voice name="����" class="����" src="voice/ma02/021vs2140a00">
����������𡣡�


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/021vs2150a01">
�����ˡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ե�å���

	CreateSE("SE01","se���L_����_��ꪏ���02");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateColorSP("�}�ե�", 5000, "#FFFFFF");

	CreateTextureEX("�}�ţ�100", 100, Center, Middle, "cg/ev/ev925_Ұ̫����Ƭ_c.jpg");
	Fade("�}�ţ�100", 0, 1000, null, true);

	Delete("�}����100");

	FadeDelete("�}�ե�", 1000, true);

	Wait(500);

	SetFwR("cg/fw/fw��������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0740]
//��������
<voice name="����" class="����" src="voice/ma02/021vs2160a00">
������������
�����Ⲣ��ȫ������


{	FwR("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/021vs2170a01">
��û��
�����������֮һ���ҡ���

{	FwR("cg/fw/fw��������_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/ma02/021vs2180a00">
����������ɱ�ĵ���ȫ��������ˡ�
����������ս������


{	FwR("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/021vs2190a01">
�����ס�
���ǡ�����һ������

{	FwR("cg/fw/fw��������_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/ma02/021vs2200a00">
������������


{	FwR("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/021vs2210a01">
��ս��֮�󡪡�
����ʼɱ¾�ɡ���������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���\
	ClearWaitAll(2000, 2000);

}

..//������ָ��
//�Υե����롡"ma02_022.nss"


.//�ץ�����=========================================================

..//���y�ι�
function AuraFlash()
{
	begin:
	while(1)
	{
	Fade("@��݆", 200, 200, null, false);
	DrawTransition("@��݆", 200, 0, 999, 100, Dxl2, "cg/data/circle_02_00_0.png", true);

	Fade("@��݆", $�Еr�g�M�z��, 0, null, true);
	}

}
