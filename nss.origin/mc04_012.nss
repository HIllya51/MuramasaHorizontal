//<continuation number="200">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_012.nss_MAIN
{

	

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

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mc04_013vs.nss";

}

scene mc04_012.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"mc04_011vs.nss"


//���{�Ӻ�
//���ɤä������¤��ߤ��z��

	PrintBG("�ϱ���", 30000);

	CreateColorSP("�\Ļ��", 15000, "BLACK");
	CreateTextureSP("�}����10", 12, Center, Middle, "cg/bg/bg090_���Bۡͨ·a_01.jpg");

	OnSE("se����_����_�ߤ�07", 1000);

	Delete("�ϱ���");
	DrawDelete("�\Ļ��", 400, 100, "slide_01_02_1", true);

	StL(1000, @-30, @0,"cg/st/st�{�Ӻ�_ͨ��_�Ʒ�.png");
	Move("@StL*", 300, @30, @0, Dxl2, false);
	FadeStL(300,true);

	SetVolume("@OnSE*", 1000, 0, null);

	SoundPlay("@mbgm36", 0, 1000, true);

	SetFwC("cg/fw/fw�{�Ӻ�_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/0120010a06">
�����������󣡡�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����ä��ä��á����ߤ����˼��ޤä��L�ӣ�

	OnSE("se���L_����_�����˼��Y", 1000);
	WaitKey(500);

	SetNwC("cg/fw/nw�S���.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0011]
//������㣯�S��ꇡ�
<voice name="����㣯�S���" class="����������" src="voice/mc04/0120020e036">
�������ٻ�����


{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/0120030a06">
���ȱ�����״��
�����ϵ����������ʲô״������


{	NwC("cg/fw/nw�S���.png");}
//������㣯�S��ꇡ�
<voice name="����㣯�S���" class="����������" src="voice/mc04/0120040e036">
���н���������������������


{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/0120050a06">
��������Ҳ����ġ�
���Ǳ����Ҵ�������ȥ��������

//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/0120060a06">
��������һ���Ƶ��ݺ�׼��������·��
����������޷��õ��ָ���
����Ҫ�õ����������լۡ����


{	NwC("cg/fw/nw�S���.png");}
//������㣯�S��ꇡ�
<voice name="����㣯�S���" class="����������" src="voice/mc04/0120070e036">
���ܵ���ô�ٵĵ��˹��������������뿪��
�����ǳ��谡����


{	FwC("cg/fw/fw�{�Ӻ�_�@��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/0120080a06">
��ֻ�����Ǵ�־���֮���ұ���Ҫ�и�л��
������������һ�����ѡ�
�����µ����������Ҫ����


{	NwC("cg/fw/nw�S���.png");}
//������㣯�S��ꇡ�
<voice name="����㣯�S���" class="����������" src="voice/mc04/0120090e036">
��������
����ô�������أ���


{	FwC("cg/fw/fw�{�Ӻ�_ŭ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/0120100a06">
������֦׷�������
��ɱ��������


{	NwC("cg/fw/nw�S���.png");}
//������㣯�S��ꇡ�
<voice name="����㣯�S���" class="����������" src="voice/mc04/0120110e036">
��������


{	FwC("cg/fw/fw�{�Ӻ�_����.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/0120120a06">
������²�������ͨ��ʿ��ȥ��
����Щ�һ�ֻ����������֦
�������־ͻ�����ɢ������


//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/0120130a06">
�����ڷϵչ����ľ�η������ʮ���ƺ�Ҳû��
Ĩƽ������


{	NwC("cg/fw/nw�S���.png");}
//������㣯�S��ꇡ�
<voice name="����㣯�S���" class="����������" src="voice/mc04/0120140e036">
�����ȷʵ�ǰɡ���


{	FwC("cg/fw/fw�{�Ӻ�_��Ц.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/0120150a06">
�����ǲ�����ҳ���ɣ���


{	NwC("cg/fw/nw�S���.png");}
//������㣯�S��ꇡ�
<voice name="����㣯�S���" class="����������" src="voice/mc04/0120160e036">
������Ҳͬ��������λ������
�������Ǳ�������ƴ���õ����ӡ���


//������㣯�S��ꇡ�
<voice name="����㣯�S���" class="����������" src="voice/mc04/0120170e036">
����Ȼ�Ѿ�û���κβ��ᣬ��ôȥͬ���ھ�Ҳ
û�����⡣��


{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/0120180a06">
���á�ȥ�ɣ���


{	NwC("cg/fw/nw�S���.png");}
//������㣯�S��ꇡ�
<voice name="����㣯�S���" class="����������" src="voice/mc04/0120190e036">
���ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Ҥ��Ҥ������ȥ��ӣ�
//���{�Ӻ��٤��ߤ�
	OnSE("se���L_����_�����˼��Y", 1000);
	WaitKey(1500);

//���Ф��`���ұ��ˑ����_������
//���m���ʲ��ݡ�bg018c��

	CreateColorSP("�\Ļ��", 25000, "BLACK");
	DrawTransition("�\Ļ��", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	SetVolume("@mbgm*", 300, 0, null);
	CreateTextureSP("�}����20", 12, Center, Middle, "cg/bg/bg089_���Bۡ�F�ˤ��g_01.jpg");
	DeleteStL(0, true);
	Delete("�}����10");
	WaitKey(1500);
	OnSE("se�ճ�_����_���_��02", 1000);
	DrawDelete("�\Ļ��", 300, 100, "slide_06_00_0", true);

	StL(1100,@0,@30,"cg/st/st�{�Ӻ�_ͨ��_�Ʒ�.png");
	FadeStL(300,false);
	SetFwC("cg/fw/fw�{�Ӻ�_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/0120200a06">
��������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//��㑷����ʥʥե��ΑB
//���M�B���L��Ƥ����äݤ������������äȝB�߳���褦�˵ǈ���
	CreateSE("nabuse", "se����_�z_㑷����F01");
	MusicStart("nabuse", 0, 1000, 0, 1000, null,false);

	CreateStencil("�}����",1000,center,middle,128,"cg/st/3d㑷��߹�_����.png",false);
	SetAlias("�}����","�}����");
	Move("�}����", 0, -403, -554, null, true);

	CreatePlainEX("�}����/�}��д", 990);
	SetShade("�}����/�}��д", HEAVY);
	Fade("�}����/�}��д", 1600, 1000, null, true);

	Wait(300);

	CreatePlainSP("�}��д", 5000);
	Delete("�}����");
	CreateTextureSP("�}�߹�", 1000, Center, Middle, "cg/st/3d㑷��߹�_����.png");
	Move("�}�߹�", 0, -403, -554, null, true);

	FadeDelete("�}��д", 1000, false);
	SetVolume("nabuse", 1000, 0, null);

	WaitKey(1000);

	ClearWaitAll(1500, 1500);
}

..//������ָ��
//�Υե����롡"mc04_013vs.nss"