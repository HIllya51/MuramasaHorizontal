//<continuation number="290">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md06_033a.nss_MAIN
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
	#bg003_�Ĥ�Ұ_02=true;
	#ev139_�y�򚢺�_a=true;
	#ev265_������ţţ�=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameCircle=0;

	//��ţĥ�`�볬�ٌ���
	PreSetRoll(5);
	TheEND(5);
}

scene md06_033a.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"md06_033.nss"


//�񚢤�

//BGM�ʤ��Ϥ虜�ȤǤ� inc�Ѿ�
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\", 3000, "BLACK");

	OnSE("se���L_����_Ұ̫�����01", 1000);
	Delete("�ϱ���");
	SetVolume("@mbgm*", 100, 0, null);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
��������ȥ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������㡣
	OnSE("se�M��_ճ���|_���띢���04", 1000);

	CreateColorEX("�ե�å���", 15000, "#990000");
	Fade("�ե�å���",100,1000,null,true);

	CreateTextureSP("�}EF", 4000, Center, Middle, "cg/ef/ef007_����Ѫ���֤�.jpg");
	Fade("�}EF", 0, 1000, null, true);

	Delete("�\");
	FadeDelete("�ե�å���", 500, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
����Ӳ��ʯͷ���ѣ�
����������֮�ﱻѹ���������

��ѪҺ��������������ȫ����ӿ������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/fwѩ܇�_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/md06/033a0010a12">
����������������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
��ѩ�������Ц��
�����ǡ�����Ȼ��

������­�����ѣ������������ѱ��𻵡�

����ɱ��������ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	OnBG(100, "bg003_�Ĥ�Ұ_02.jpg");
	FadeBG(0, true);

	FadeDelete("�}EF",1500,true);

	SetNwC("cg/fw/nwѩ܇�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/md06/033a0020a12">
����������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("���뤺��", "se����_����_�i��04_L");
	MusicStart("���뤺��", 0, 1000, 0, 400, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
���ܵ��������ˡ�
��ѩ���һ��ȴ���ҵ�����������

�����Լ�����������ʯ��ȥ��

���������桪��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("���뤺��", 1000, 0, null);

	SetNwC("cg/fw/nwѩ܇�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/md06/033a0030a12">
��������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
��������ʲô������

�����ӡ�

���ܴ�����ӡ�

��Ʃ�磬
���������½��д�С�����ӡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nwѩ܇�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/md06/033a0040a12">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE01","se����_����_����_����01");
	MusicStart("SE01",0,1000,0,1000,null,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
������֮����ָ�����ۣ������ӡ���
���ƺ��Ѿ�ƣ���ߡ�

����������ҡ�
��ף��һ������ҵ�����Ц��

��ѩ���һ��ֹͣ�˺�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//��������
<voice name="����" class="����" src="voice/md06/033a0050a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
��Ŀ���ʬ�����ƿ���

���������ӡ�
��
������ͨ�Ÿ���װ�ã�

�������С�
���������ģ�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SoundPlay("@mbgm05", 0, 1000, true);

	SetFwC("cg/fw/fw����_Ц�b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//��������
<voice name="����" class="����" src="voice/md06/033a0060a00">
��������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
��ͻ����������ϲ��

�������ǣ�֩�롣
�����ҵ������У��任����̬��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
	CreateSE("SE01b","se����_������_�������g�仯01");
	MusicStart("SE01b",0,1000,0,700,null,false);
	CreateColorEXadd("�}�ե�", 5000, "#FFFFFF");
	Fade("�}�ե�", 600, 1000, null, true);
	DeleteStL(0,true);
	StL(1000, @0, @0,"cg/st/st����_ͨ��_˽��.png");
	FadeStL(0,true);
	WaitKey(500);
	FadeDelete("�}�ե�", 1000, true);
	SetVolume("SE*", 1000, 0, null);

	SetFwC("cg/fw/fw����_Ц�b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//��������
<voice name="����" class="����" src="voice/md06/033a0070a00">
������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
��ͻȻ����������˲��������

������ƭ���ҡ�
��ѩ���û��ɱ��������

��ͨ���ж�����Ϊ�и���װ�á�

��̫���ˡ�
���ҵ����г���ϲ�ã�<k>ʰ�����ȡ���å����
���������ȡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
//��������
<voice name="����" class="����" src="voice/md06/033a0080a00">
��������������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md06/033a0090a01">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
����֡�

������Ϊʲô�����������ң�
�������֡������Ƹ����Ŀ�⡣

������������ʲô��

{	CreateSE("SE01","se�M��_냇��_�i��01");
	MusicStart("SE01",0,1000,0,1000,null,false);}
��Ϊʲô���γ�������
��������е��ң�����Ҫ��ʲô��

��Ī����������鷢���ˡ�

���ҵ��ֽţ���Ī������Ķ��������š�

�������ͺ���ʱһ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����룺�Bĸ����
	EfRecoIn1(18000,600);

	CreateTextureSP("�}����100", 15000, @0, @0, "cg/ev/ev139_�y�򚢺�_a.jpg");

	EfRecoIn2(300);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
���������ɱ��֮ĩ·��
�������ɱ��֮���ۡ�

���ƶ���ֵĽ��ɡ�

��ɱ��ѩ���һ�ص��ң�
�����ҲҪɱ�˴�����

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	EfRecoOut1(300);

	Delete("�}����*");

	StC(1000, @0,@0,"cg/st/st����_ͨ��_˽��.png");
	FadeStA(0,true);

	EfRecoOut2(600,true);

	SetFwR("cg/fw/fw����_��ʹ.png");


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
//��������
<voice name="����" class="����" src="voice/md06/033a0100a00">
��ʲ����ʲô!?��

{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md06/033a0110a01">
��������

{	FwR("cg/fw/fw����_��ʹ.png");}
//��������
<voice name="����" class="����" src="voice/md06/033a0120a00">
��������������!!��

{	FwR("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md06/033a0130a01">
��������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
����ƴ���ź�������ȴֻ��ͷ���Ķ������Ի�Ӧ��
��С���ȵ�����ҡ���š�

������һ��������

{	CreateSE("SE01","se��Ȼ_��ľ_̽��02");
	MusicStart("SE01",0,1000,0,1000,null,false);}
���������ƽ���

�����ŵ���һ��һ����

��������Ҫ��
������ͣ�¡�

�����������ҵ�һ�پܾ���
��ֻ����һ�����ɡ�

��������

{	CreateSE("SE01","se���L_����_������01");
	MusicStart("SE01",0,1000,0,1000,null,false);}
��˫�ۣ���Ϧ���¾�����С�

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����_ƣ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
//��������
<voice name="����" class="����" src="voice/md06/033a0140a00">
���塢����������

{	FwR("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md06/033a0150a01">
�����ˡ���

{	FwR("cg/fw/fw����_Ц�.png");}
//��������
<voice name="����" class="��������" src="voice/md06/033a0160a01">
�����������ͺá���

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 100, 0, null);

//��������Ѫ��
//���ţ֣���ţţ�
	OnSE("se����_�ҥ���_�Қ�01", 1000);

	CreateColorEX("�ե�å���", 15000, "#990000");
	Fade("�ե�å���",500,1000,null,true);
	CreateTextureSP("�}EF", 4000, Center, Middle, "cg/ef/ef005_����Ѫ�~.jpg");
	DeleteStA(0,true);

	FadeDelete("�ե�å���", 1500, true);

//Ҋ���뤿��虜��Key�Ĥ��Ƥޤ��� inc�Ѿ�
	Wait(1000);

	CreateTextureSP("�}����", 3900, Center, Middle, "cg/ev/ev265_������ţţ�.jpg");
	FadeDelete("�}EF",1500,true);

	OnSE("se����_Ѫ_�����01", 1000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
��ɱ��

����������ԣ��ð��������졣

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SoundPlay("@mbgm15", 0, 1000, true);

//냇�ݵĤ˱�������ʤ��ۤ���������˼����nw�Ǳ�ʾ���Ƥ��ޤ���inc�Ѿ�

	SetNwR("cg/fw/nw����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
//��������
<voice name="����" class="����" src="voice/md06/033a0170a00">
��Ϊʲô����

//��������
<voice name="����" class="����" src="voice/md06/033a0180a00">
��Ϊʲô!!��

{	NwR("cg/fw/nw����.png");}
//��������
<voice name="����" class="��������" src="voice/md06/033a0190a01">
����������������

//��������
<voice name="����" class="��������" src="voice/md06/033a0200a01">
�����һ�������󡭡���

//��������
<voice name="����" class="��������" src="voice/md06/033a0210a01">
���롭��ԭ���Լ�����

//��������
<voice name="����" class="��������" src="voice/md06/033a0220a01">
����Ϊ���Ѿ���ʧȥһ�С�����

//��������
<voice name="����" class="��������" src="voice/md06/033a0230a01">
�������ǣ������е���Ҫ֮�
���������������ٻ����ң�������һ�㡡
�Ը��԰ɡ�������

{	NwR("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md06/033a0240a00">
������������

{	NwR("cg/fw/nw����.png");}
//��������
<voice name="����" class="��������" src="voice/md06/033a0250a01">
�����ԡ���

//��������
<voice name="����" class="��������" src="voice/md06/033a0260a01">
����Ҫ���������Լ��ˡ���

//��������
<voice name="����" class="��������" src="voice/md06/033a0270a01">
��ԭ���Լ�����

//��������
<voice name="����" class="��������" src="voice/md06/033a0280a01">
�����������ˡ�����

{	NwR("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md06/033a0290a00">
����������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
������������Ҫάϵ����������

��Ȼ���촽�ٴο��ϡ�
������������

������ֻ��һ�䣺�����ˡ�

������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ɢ�A
	SetVolume("@m*", 100, 0, null);
	OnSE("se����_냇��_������", 1000);

	CreateColorEXadd("ɢ�A", 15000, "WHITE");

	Fade("ɢ�A", 1000, 1000, null, true);
	Delete("�}����");

//���դ��ء�Ϧ

	FadeDelete("ɢ�A",1500,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
�����ҵı����У����ѡ�ɢ�䡣
����Ϧ������ҫ���������ԣ��漴�ҷ�����

���Ҷ���һ��վ���š�

��������ˡ�
�������ˡ�

�����Ѿ�һ�����С�

���ҵ������ѻ������С�

��ʹ��Ҳ�ǡ�<k>
������Ҳ�ǡ�<k>
����Ҳ�ǡ�<k>
����Ҳ�ǡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ţĥ�`�루���ã�
	ClearWaitAll(3000, 1000);

}

..//������ָ��
//�Υե�����