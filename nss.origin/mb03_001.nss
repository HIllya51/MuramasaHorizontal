//<continuation number="100">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb03_001.nss_MAIN
{
	//��e�ޥ����ٌ���
	Conquest("nss/mb03_001.nss","KirakiraLoop",true);
	Conquest("nss/mb03_001.nss","ZoomRoseLoop",true);
	Conquest("nss/mb03_001.nss","TransitionLoop",true);
	

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
	#ev147_ȫ��ݩ`���󥰤����׵�_a=true;
	#ev147_ȫ��ݩ`���󥰤����׵�_b=true;
	#ev147_ȫ��ݩ`���󥰤����׵�_c=true;

	#ev147_ȫ��ݩ`���󥰤����׵�_aex=true;
	#ev147_ȫ��ݩ`���󥰤����׵�_bex=true;
	#ev147_ȫ��ݩ`���󥰤����׵�_cex=true;


	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mb03_002.nss";

}

scene mb03_001.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

	PrintBG("�ϱ���", 30000);
	Delete("�ϱ���");

..//������ָ��
//ǰ�ե����롡"mb02_036.nss"

//���ãǣ��R��ǰ��ȫ��ݩ`���󥰤��Ƥ����׵�
//����������
//���ɤ��Ф��Ф����ߤäƤ��벿��
	PrintBG("�ϱ���", 30000);
	SoundPlay("@mbgm22",2000,1000,true);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	CreateTextureSP("�}�ţִ�", 5000, -720, -352, "cg/ev/resize/ev147_ȫ��ݩ`���󥰤����׵�_al.jpg");
	CreateTextureEXadd("�}���饭�飱", 6000, Center, Middle, "cg/ev/ev147_ȫ��ݩ`���󥰤����׵����饭��a.png");
	CreateTextureEXadd("�}���饭�飲", 6000, Center, Middle, "cg/ev/ev147_ȫ��ݩ`���󥰤����׵����饭��b.png");
	CreateTextureSP("�}��`��", 5500, Center, Middle, "cg/ev/ev147_ȫ��ݩ`���󥰤����׵��Nޱ.png");
	Request("�}��`��", Smoothing);
	Move("�}��`��", 0, @0, @-50, null, true);

	CreateTextureEX("�}�ţ�", 5200, Center, Middle, "cg/ev/ev147_ȫ��ݩ`���󥰤����׵�_a.jpg");

	CreateColorSPadd("�}ɫ100", 5100, "WHITE");
	Fade("�}ɫ100", 0, 300, null, true);

	Delete("�ϱ���");

	$���饭��ʥå����� = @�}���饭�飱;
	$���饭��ʥå����� = @�}���饭�飲;
	$���饭�饿���� = 1000;
	
	$���`���`���ʥå��� = @�}��`��;
	$���`���`�������� = 2000;
	$���`���`���ʣ� = 1050;
	$���`���`���ʣ� = 1000;

	$Warp�ȥ�� = @�}ɫ100;
	$Warp�ȥ���ٶ� = 4000;
	$Warp�ȥ�󥸤ʤ�餫�� = 500;

	CreateProcess("�ץ�����", 150, 0, 0, "KirakiraLoop");
	CreateProcess("�ץ�����", 150, 0, 0, "ZoomRoseLoop");
	CreateProcess("�ץ�����", 150, 0, 0, "TransitionLoop");
	SetAlias("�ץ�����","�ץ�����");
	SetAlias("�ץ�����","�ץ�����");
	SetAlias("�ץ�����","�ץ�����");

	Request("�ץ�����", Start);
	Request("�ץ�����", Start);
	Request("�ץ�����", Start);

	Move("�}�ţִ�", 10000, -520, -150, null, false);

	FadeDelete("�}��ܞ", 2000, true);

	Wait(4000);

	Fade("�}�ţ�", 1500, 1000, null, true);


	CreateSE("SE01","se����_����_�ߤ�07");
	MusicStart("SE01",2000,1000,0,1000,null,false);
	$�Еr�g=RemainTime("SE01");
	WaitKey($�Еr�g);

	CreateSE("SE01","se�ճ�_����_���_��06");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateTextureSP("�}�ţ֣�", 5195, Center, Middle, "cg/ev/ev147_ȫ��ݩ`���󥰤����׵�_b.jpg");
	FadeDelete("�}�ţ�", 300, true);

	Wait(300);

	SetNwL("cg/fw/nwС��܊��У.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//������㣯�׵����£¡�
<voice name="����㣯�׵����£�" class="����������" src="voice/mb03/0010010e285">
���׵�����!!��


{	FwL("cg/fw/fw�׵�_ͨ��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/mb03/0010020a08">
�����£�
�����Ǹ��߹����ǣ���������峿�����ݡ�ʱ��
�䲻�ݴ����𡣡�


{	NwL("cg/fw/nwС��܊��У.png");}
//������㣯�׵����£¡�
<voice name="����㣯�׵����£�" class="����������" src="voice/mb03/0010030e285">
���������ˣ�
����ҹ����Ļ�ɵĿֲ����Ӿ�Ȼ����������
�ֳǡ�����


{	FwL("cg/fw/fw�׵�_���d.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/mb03/0010040a08">
��������ѽ������
���ǿ����Ǵ��²����ء�����


{	FwL("cg/fw/fw�׵�_ͨ��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/mb03/0010050a08">
���ǺǺǡ���̫���ˣ�
������һ��Ļ����������ˣ�


//���׵���
<voice name="�׵�" class="�׵�" src="voice/mb03/0010060a08">
������Է���ͯ�Ĵ��ˣ�������ڵ�ʨ�Ӻ�Ҳ
��������顢���ָ�𡭡���������ôʧ̬��
�ˡ�
�������Ҳ��������Ϊ����⣩


//���׵���
<voice name="�׵�" class="�׵�" src="voice/mb03/0010070a08">
�����һ����ͯ�Ĵ��˳������������������
���������Ϊ�Ĺ���ͳ˧�������ҹض�ͳ��֮
λ��������


//���׵���
<voice name="�׵�" class="�׵�" src="voice/mb03/0010080a08">
��������
������������������������


{	NwL("cg/fw/nwС��܊��У.png");}
//������㣯�׵����£¡�
<voice name="����㣯�׵����£�" class="����������" src="voice/mb03/0010090e285">
���������������ڵĵз���������Ϯ��������
�Լ����������ݵ㣬��ɾ޴���ʧ����
���źӹ�������ͯ�Ĵ��ˣ�
Ҳ��׳��ս������!!��

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���ݩ`�����׵������ө`�󡣻���Ǹ����
	Request("�ץ�����", Stop);
	Request("�ץ�����", Stop);
	Request("�ץ�����", Stop);
	SetVolume("@mbgm*", 1000, 0, null);
	Wait(2000);


	OnSE("se�ճ�_����_�����饹�Ɖ�01",1000);
	OnSE("se�M��_���ߥ���_���`��02",1000);
	FadeDelete("�}���饭��*", 1000, false);
	DrawEffect("�}��`��", 1800, "HardSplit", 0, 1000, null);
	CreateTextureSP("�}�ţ֣�", 5190, Center, Middle, "cg/ev/ev147_ȫ��ݩ`���󥰤����׵�_c.jpg");
	EffectZoomadd(10000, 1000, 1000, "cg/ev/ev147_ȫ��ݩ`���󥰤����׵�_c.jpg", false);
	FadeDelete("�}�ţ֣�", 300, true);


	SetFwL("cg/fw/fw�׵�_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//���׵���
<voice name="�׵�" class="�׵�" src="voice/mb03/0010100a08">
����˵ʲô����!?��

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	ClearWaitAll(2000, 2000);

}

..//������ָ��
//�Υե����롡"mb03_002.nss"


function KirakiraLoop()
{
	while(1){
	Fade($���饭��ʥå�����, $���饭�饿����, 1000, null, true);
	Wait(300);
	Fade($���饭��ʥå�����, $���饭�饿����, 0, null, false);
	Fade($���饭��ʥå�����, $���饭�饿����, 1000, null, true);
	Wait(300);
	Fade($���饭��ʥå�����, $���饭�饿����, 0, null, false);
	}
}

function ZoomRoseLoop()
{
	while(1){
	Zoom($���`���`���ʥå���, $���`���`��������, $���`���`���ʣ�, $���`���`���ʣ�, AxlDxl, true);
	Zoom($���`���`���ʥå���, $���`���`��������, $���`���`���ʣ�, $���`���`���ʣ�, AxlDxl, true);
	}
}

function TransitionLoop()
{

	while(1){

	DrawTransition($Warp�ȥ��, $Warp�ȥ���ٶ�, 0, 1000, $Warp�ȥ�󥸤ʤ�餫��, null, "cg/data/slide_03_00_0.png", true);
	DrawTransition($Warp�ȥ��, $Warp�ȥ���ٶ�, 1000, 0, $Warp�ȥ�󥸤ʤ�餫��, null, "cg/data/slide_03_00_1.png", true);

	}

}