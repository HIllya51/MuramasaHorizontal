//<continuation number="150">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md01_017.nss_MAIN
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
	#ev211_�󁖤��Ϥ������y�Ǻ�_a=true;
	#ev211_�󁖤��Ϥ������y�Ǻ�_b=true;
	#ev211_�󁖤��Ϥ������y�Ǻ�_c=true;
	#bg095_�ߏ�Ժ�ξ���_02=true;
	#bg002_��a_02=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md01_018.nss";

}

scene md01_017.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"md01_016vs.nss"

//�����ä��á��l������ӣ�
//���ţ֣�Ҋ�Ϥ��I�ߡ�Ҋ�Ϥ��뾰���δ󁖤��Ϥι�
//������ˤ���ʾ���ʤ�
	PrintBG("�ϱ���", 30000);

	OnBG(100,"bg095_�ߏ�Ժ�ξ���_02.jpg");
	StL(1000, @0, @0,"cg/st/st��������_ͨ��_˽��.png");
	FadeBG(0,true);
	FadeStL(0,true);

	CreateTextureEX("�}�ţ�", 4000, -180, InBottom, "cg/ev/resize/ev211_�󁖤��Ϥ������y�Ǻ�_bm.jpg");

	StR(1000, @90, @0,"cg/st/st����_ͨ��_����.png");

	Delete("�ϱ���");


	CreateSE("SE01","se����_����_�ߤ�03");
	CreateSE("SE01a","se����_����_�᤺����01");

	MusicStart("SE01",0,1000,0,1000,null,false);

	WaitKey(2000);

	SetVolume("SE01", 300, 0, null);
	MusicStart("SE01a",0,1000,0,1000,null,false);
	Move("@StR*", 300, @-90, @0, Dxl2, false);
	FadeStR(300,true);

	WaitKey(1000);

	Move("�}�ţ�", 8000, @0, -50, DxlAuto, false);
	Fade("�}�ţ�", 1000, 1000, null, true);

	SoundPlay("@mbgm14",0,1000,true);

	WaitAction("�}�ţ�", null);
	DeleteStA(0,true);

	SetFwC("cg/fw/fw��Ӱ_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//���⡿
<voice name="��" class="��" src="voice/md01/0170010a14">
����������

{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/md01/0170020a00">
�������⡭����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE*", 1000, 0, null);

//����������
//������
	WaitKey(2000);
	FadeDelete("�}�ţ�", 1000, true);

	Wait(300);

	StL(1000, @0, @0,"cg/st/st��������_ͨ��_˽��.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fw��������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//������������
<voice name="��������" class="��������" src="voice/md01/0170030a15">
��������ô�죬��������

{	FwC("cg/fw/fw��Ӱ_ͨ��a.png");}
//���⡿
<voice name="��" class="��" src="voice/md01/0170040a14">
�������Ѿ����ˡ�
���������������������ˡ���

//���⡿
<voice name="��" class="��" src="voice/md01/0170050a14">
������Ҳû���ý�����������̬ȥ�氡����

{	FwC("cg/fw/fw��������_ͨ��.png");}
//������������
<voice name="��������" class="��������" src="voice/md01/0170060a15">
��֪���ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��������Ů��ρ�ˑ��롣�w��
	CreateSE("SE01","se����_�z_װ��03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("�}ɫ��", 5000, "#FFFFFF");

	DeleteStA(0,true);

	CreateTextureSP("�}���}��", 1000, Center, Middle, "cg/st/3d����Ů��ρ_ɿ��.png");
	Request("�}���}��", Smoothing);
	Rotate("�}���}��", 0, @0, @180, @0, null,true);
	Move("�}���}��", 0, @-256, @0, null, true);

	FadeDelete("�}ɫ��", 1000, true);

	Wait(300);

	CreateSE("SE02","se����_����_���S02");
	MusicStart("SE02",0,1000,0,1000,null,false);

	Move("�}���}��", 300, @0, @-600, Axl2, false);
	Fade("�}���}��", 300, 0, null, true);
	Delete("�}���}��");

//���ţ֣�Ҋ�Ϥ��I�ߡ���֡���α���˶���ρ
	CreateTextureEX("�}�ţ�", 4000, Center, InTop, "cg/ev/ev211_�󁖤��Ϥ������y�Ǻ�_c.jpg");
	Fade("�}�ţ�", 1000, 1000, null, true);

	SetFwL("cg/fw/fw��Ӱ_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//���⡿
<voice name="��" class="��" src="voice/md01/0170070a14">
��������
����Ҫ֪ͨ�㡣��

{	FwL("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md01/0170080a00">
��������

{	FwL("cg/fw/fw��Ӱ_ͨ��b.png");}
//���⡿
<voice name="��" class="��" src="voice/md01/0170090a14">
����Ҫ����ᦹ�ȥ�ˡ���

{	FwL("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/md01/0170100a00">
������?!��

{	FwL("cg/fw/fw��Ӱ_ͨ��a.png");}
//���⡿
<voice name="��" class="��" src="voice/md01/0170110a14">
�����ڿ���һЩ��Ȥ�ĵ��ӡ���

//���⡿
<voice name="��" class="��" src="voice/md01/0170120a14">
��Ҫ���������ҵİԵ�����
��Ϊ��ѡ����һ���ʺϵ�ʱ��͵ص㡣��

{	FwL("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md01/0170130a00">
���������ס�������

{	FwL("cg/fw/fw��Ӱ_�Ñ�.png");}
//���⡿
<voice name="��" class="��" src="voice/md01/0170140a14">
�����������
�����Űɣ���

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��װ�ס��y�Ǻ�
//���w��ȥ��
	CreateSE("SE01","se����_�z_װ��04");
	MusicStart("SE01",0,1000,0,1250,null,false);
	CreateColorSP("�}ɫ��", 5000, "#FFFFFF");
	CreateTextureSP("�}�ţ�", 4000, Center, InTop, "cg/ev/ev211_�󁖤��Ϥ������y�Ǻ�_a.jpg");
	OnBG(100,"bg002_��a_02.jpg");
	FadeBG(0,true);
	Fade("�}ɫ��", 300, 0, null, true);

	Wait(700);

	CreateSE("SE01b","se���L_����_���ϕN01");

	Fade("�}ɫ��", 0, 1000, null, true);
	MusicStart("SE01b",0,1000,0,1250,null,false);
	SetVolume("@mbgm*", 2000, 0, null);

	Delete("�}�ţ�*");

	FadeDelete("�}ɫ��", 1000, true);

	SetFwL("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="����" src="voice/md01/0170150a00">
������������

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	ClearWaitAll(2000, 2000);

}

..//������ָ��
//�Υե����롡"md01_018.nss"