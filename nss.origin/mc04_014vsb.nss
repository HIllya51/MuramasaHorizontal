
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_014vsb.nss_MAIN
{
	//��e�ޥ����ٌ���
	Conquest("nss/mc04_014vsb.nss","RandomMeimetsu_mc04_014vsb",true);
	Conquest("nss/mc04_014vsb.nss","RandomMeimetsuSet_mc04_014vsb",true);
	

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
	#ev187_㑷�������_g=true;
	#ev187_㑷�������_h=true;


	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mz00_000.nss";

}

scene mc04_014vsb.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"mc04_014vs.nss"

//�����
	PrintBG("�ϱ���", 30000);
	SoundPlay("@mbgm08", 0, 1000, true);

	CreateTextureSP("�}�ݱ���09EX", 4101, @0, @0, "cg/ev/ev187_㑷�������_i.jpg");
	Request("�}�ݱ���09EX", Smoothing);
	Zoom("�}�ݱ���09EX", 0, 1100, 1100, null, true);

	Delete("�ϱ���");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
�����ܼ���
�������Ҳ���յ�֮����

������һ��ŵؽ������Ǿ��������塣
���侲�����侲�����ص�Ѱ�һ��ᣬ

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("�}����09", 4300, @0, @0, "cg/ev/ev187_㑷�������_c.jpg");
	CreateTextureEX("�}����10", 4400, @0, @0, "cg/ev/ev187_㑷�������_b.jpg");
	CreateTextureEX("�}����11", 4500, @0, @0, "cg/ev/ev187_㑷�������_f.jpg");
	CreateTextureEX("�}����12", 4600, @0, @0, "cg/ev/ev187_㑷�������_h.jpg");
	Request("�}����*", Smoothing);
	Zoom("�}����*", 0, 1100, 1100, null, true);

	MoveFFP1("@�}����09",20000);
	MoveFFP2("@�}����10",20000);
	MoveFRP1("@�}����11",20000,20,20);
	MoveFRP2("@�}����12",20000,20,20);

//��露��
	Fade("�}����09", 2000, 1000, null, true);
	Wait(500);

//���ܤ䤱���
	Fade("�}����10", 2000, 1000, null, true);
	Wait(500);

//��露�֣�
	Fade("�}����11", 2000, 1000, null, true);
	Wait(500);

//���ܤ䤱��֣�
	Fade("�}����12", 2000, 1000, null, true);
	Wait(500);

	CreateColorSP("�·�", 100, "BLACK");

	MoveFFP1stop();
	MoveFFP2stop();

	CreateTextureSP("�}����10", 4400, @0, @0, "cg/ev/ev187_㑷�������_g.jpg");
	CreateTextureSP("�}����11", 4500, @0, @0, "cg/ev/ev187_㑷�������_i.jpg");
	Request("�}����*", Smoothing);
	Zoom("�}����*", 0, 1100, 1100, null, true);

	MoveFFP1("@�}����10",20000);
	MoveFFP2("@�}����11",30000);

	Delete("�}����09*");
	RandomMeimetsu_mc04_014vsb();

	SetFwL("cg/fw/fw����_��ʹ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="����" src="voice/mc04/014vs0650a00">
�������ء����ء�����


{	FwL("cg/fw/fw㑷�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/014vs0660a06">
������������

</PRE>
	SetTextEXL();
	TypeBeginTimeLIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ҕ�礬�A���������ܞ��

//CG��Ԕ�������ʤ���кΤȤ��Ԥ��ޤ��󤬡���ܞ���ޤ����\��Ҋ���Ƥ��ޤ��Τ�DrawDelete�ˤ��Ƥ��ޤ� inc�Ѿ�

	SetVolume("@mbgm*", 300, 0, null);

//����ͻ
	CreateColorSP("�}ɫ�\", 20050, "#000000");
	SL_centerin2(21000,@0, @0,1000);
	OnSE("se���L_����_�����05", 1000);
	SL_centerinfade2(10);

//�������`��Ѫ��
	OnSE("se���L_����_���̤���05", 1000);

	CreateColorSP("��", 21100, "#990000");
	DrawTransition("��", 150, 0, 1000, 100, null, "cg/data/zoom_01_00_0.png", true);

	FadeDelete("��", 2000, true);

	ClearWaitAll(1500, 0);


//�����`�४�`�Щ`

}

..//������ָ��
//�Υե�����

..����������
function RandomMeimetsu_mc04_014vsb()
{
	CreateProcess("�Х���������", 5000, 0, 0, "RandomMeimetsuSet_mc04_014vsb");
	SetAlias("�Х���������","�Х���������");
	Request("�Х���������", Start);
}

function RandomMeimetsuSet_mc04_014vsb()
{
	begin:
	while(1)
	{
	$RFadeTimeSet = Random(3) + 2;
	$RFTS = ($RFadeTimeSet * 1000);
	Fade("@�}����12", $RFTS, 0, null, true);

	$RWaitSet = Random(10) + 10;
	$RWS = ($RWaitSet * 10) +600;
	Wait($RWS);


	$RFadeTimeSet2 = Random(3) + 1;
	$RFTS2 = ($RFadeTimeSet2 * 1000);
	Fade("@�}����11", $RFTS2, 0, null, true);

	$RWaitSet2 = Random(10) + 10;
	$RWS2 = ($RWaitSet2 * 10) +600;
	Wait($RWS2);


	$RFadeTimeSet3 = Random(3) + 1;
	$RFTS3 = ($RFadeTimeSet3 * 1000);
	Fade("@�}����11", $RFTS3, 1000, null, true);

	$RWaitSet3 = Random(3) + 10;
	$RWS3 = ($RWaitSet3 * 10) +600;
	Wait($RWS3);

	$RFadeTimeSet4 = Random(3) + 2;
	$RFTS4 = ($RFadeTimeSet4 * 1000);
	Fade("@�}����12", $RFTS4, 1000, null, true);

	$RWaitSet4 = Random(3) + 10;
	$RWS4 = ($RWaitSet4 * 10) +600;
	Wait($RWS4);

	}

}