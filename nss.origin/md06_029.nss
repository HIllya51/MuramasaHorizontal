//<continuation number="520">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md06_029.nss_MAIN
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
	#bg001_��b_01=true;
	#bg034_���Lլ����ga_01=true;
	#bg007_��m��·a_01=true;
	#bg012_�`�}�kǰ���x_01=true;
	#bg113_�k�Υ۩`��b_01=true;
	#ev263_������̤�؞��ѩ܇�=true;
	#ev110_��Ƥ���������=true;
	#ev914_�ũ�ʽ�o�T��ħ��������ޥ󥿩`��=true;
	#ev905_����늴œĵ�_a=true;
	#bg113_�k�Υ۩`��a_01=true;
	#ev106_���w��Ҋ�¤�����_d=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md06_030.nss";

}

scene md06_029.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"md06_028.nss"

//�������¡��饹�ȥ��`���ݳ�
//����

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\", 15000, "BLACK");
	CreateTextureSP("��", 100, @0, @0, "cg/bg/bg001_��b_01.jpg");

	Delete("�ϱ���");
	FadeDelete("�\",1500,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
���糿��
����������������װ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("�}����", 100, @0, @0, "cg/bg/bg034_���Lլ����ga_01.jpg");
	Fade("�}����", 1000, 1000, null, true);
	Delete("��");

	SetFwC("cg/fw/fw����_Ц�a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="����" src="voice/md06/0290010a00">
���·�׼����Щ�Ͳ���˰ɣ���

{	FwC("cg/fw/fw����_Ц�.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0290020a01">
�����ء�
�����������Ҳ�Ž�ȥ����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0290030a00">
������ʲô����

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0290040a01">
���㵱��
���ո����õġ���

{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/md06/0290050a00">
���ո��Ǹ���������ԭ�������ڷ���
�����𣿡�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
��Ҫ���Ķ��������ࡣ
����������Сʱ��������ϡ�

��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���£ǣͣ��ţĥƩ`�޸��~�o���棿
	CreateColorEX("�}ɫ�\", 20000, "#000000");
	Fade("�}ɫ�\", 3000, 1000, null, true);

	SoundPlay("@msong02_full", 0, 1000, true);
	//SoundPlay("@msong02_inst", 0, 1000, true);

	Wait(2000);

//���`�}�н�
	OnBG(100, "bg007_��m��·a_01.jpg");
	FadeBG(0, true);

	FadeDelete("�}ɫ�\", 3000, true);

	WaitKey(1000);

//���kǰ
	CreateColorSP("�\Ļ", 5000, "#000000");
	DrawTransition("�\Ļ", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	CreateTextureSP("�}����", 150, @0, @0, "cg/bg/bg012_�`�}�kǰ���x_01.jpg");
	Delete("@OnBG*");

	CreateSE("SEL01", "se����_����_����᤭01_L");
	MusicStart("SEL01", 2000, 1000, 0, 1000, null,true);

	DrawTransition("�\Ļ", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("�\Ļ");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
����������վʱ����ǡ�ý�վ��
��������Ҫ������ȥ�ƺ��е����ѡ�

���򳵵����쳣֮�ࡣ

������������ı�ʰɡ�
����ʶ������������Ҳ���Ǹ�����֮�������ǻ�æ
����˵ء���ô���Ӵ�������ȺҲ�Ϳ�������ˡ�

������˴�Ʈ���ں������еĴ󺣣�������ھ���
�����µ�½�ϻ�Ҳ��������Ȼ��
�������ְ�ȫ�ȼ�������˵�۸�Ҳ���൱�߰��ġ�

������ͣ����ǰ���г�������ֻ���ݵ�����������
ǰ����ˡ�
��ֻ�еȴ���һ���г��ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��bg113a
	CreateTextureEX("�}����02", 160, @0, @0, "cg/bg/bg113_�k�Υ۩`��b_01.jpg");
	Fade("�}����02", 1000, 1000, null, true);

	SetFwC("cg/fw/fw����_Ц�a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��������
<voice name="����" class="����" src="voice/md06/0290060a00">
������Ҳ���Ǻܸϡ���

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0290070a01">
���š���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SEL*", 3000, 1, null);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
�������ǵġ�
����ûʲô���¡�

�����Ѿ�������ô��æ��

��������䣬��ȷ�����������Ǹ����Ƶ����ӡ�
����������������ʱ�䶼û�У�һֱ�Ĵ�������

����ʱ�����ա�
��ÿ�춼���趫�����ߡ�

������˵������ƽ����
������˵�������Ҹ���

�����ǵ�Ȼ��
���Ҳ���������ɷṦΰҵ�����СЪƬ�̵�Ӣ�ܡ�

�����������У�
������ֻ���ڻر��Ǹ����С�

�������ס�
���ⲻ�������ӱܡ�

���Ҹ���û���ʸ����ܰ��ݡ�

�����߲����ɣ������ܵ��𷣡�

��������
��
��������������ô�������ܡ�

  �������ڵ�����˵��
��ֻҪ�����Լ��Ĳ�����ѭ�򽥽��ͺá���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��������
<voice name="����" class="����" src="voice/md06/0290080a00">
�������ǵ�һ�γ˻𳵰ɣ���

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0290090a01">
�����ء���һ����ʽ�˻𳵡���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0290100a00">
��������Ŷ��
�����𳵵�ʱ�����Ǳ��������ﴦ��ġ���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md06/0290110a00">
����Ǹ����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0290120a01">
���µ���񣬱�����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
��ʧȥ�˺ܶණ����
��ȴʲô��û�еõ���

����˵�еĻ����Ǿ���ʱ�䡣
���ӹ�ȥ�������У�������������ڡ�

�������ȫ����

�����ǣ���������ʲô���Ҹõõ��أ�
����Ϊ�Ҵն�����������Ľ�����Ҹõõ�ʲô�أ�

�����������ͺá�
�������ģ��Ҷ����ܲ���

���Ͱ�������·ǰ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_Ц�b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//��������
<voice name="����" class="����" src="voice/md06/0290130a00">
��͸������������ľ�������ܡ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0290140a01">
�����𣿡�

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/md06/0290150a00">
�����ŵķ羰��������ô�����أ�
��ӳ�յ�������λá���

{	FwC("cg/fw/fw����_Ц�b.png");}
//��������
<voice name="����" class="����" src="voice/md06/0290160a00">
�����Ǵ��������������硭����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0290170a01">
���š�������

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/md06/0290180a00">
����ѽ������һ�ξ�֪���ˡ���

{	FwC("cg/fw/fw����_Ц�.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0290190a01">
���š�
�����ڴ�������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SEL*", 3000, 1000, null);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
���ƺ����еĳ����������ˡ�
��������֮�⣬��������������µ����ڳ�վ�ڵ���
���ƣ���̾����̧���ֿ�ʱ�䣬ȷ����ʱ�̱���

����䣬վ��Ա��ʱ�����߹����������
����ǰ������ȷ�ϡ�

����һ���ʲôʱ������
��һСʱ�󣬻��Ǹ���

���������⡣

���Ҳ����ż���
��׷�����µ���;�Ѿ�������

���ҿ��������
������Ҳ�����ҡ�

������Ե�ɵض���΢Ц��

{	CreateSE("SE01","se�\��_��܇_����");
	MusicStart("SE01",0,1000,0,1000,null,false);}
������������
���������źš�

����������һ���������Լ�һ����ʼ��

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,1000);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����������
//���ۥ磻�ȥ�����
//���ӣţ������塣�̚���
//��С��������
//���ۥ磻�ȥ���
//���ţ֣����ᤫ��̤�������
//���ޤ���ͻ���֤����ʾ���̤�������
	Wait(1000);

	SetVolume("SE*", 2500, 0, null);
	SetVolume("@m*", 2500, 0, null);

	CreateColorEXadd("��", 15000, "WHITE");
	Fade("��", 2000, 1000, null, true);

	WaitPlay("@m*", null);
	WaitKey(2000);

	OnSE("se���L_����_���̤���01", 1000);
	WaitPlay("@OnSE*", null);

	CreateTextureSP("�}����", 5000, Center, Middle, "cg/ev/ev263_������̤�؞��ѩ܇�.jpg");
	CreateTextureSP("�}���٣�", 5010, -227, InBottom, "cg/ev/resize/ev263_������̤�؞��ѩ܇�l.jpg");
	Request("�}���٣�", Smoothing);

	Delete("�}����*");

	Wait(1000);

	FadeDelete("��",2000,true);

	WaitKey(1500);

	Move("�}���٣�", 6000, @0, -80, null, true);

	SetFwC("cg/fw/fw����_�@��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//��������
<voice name="����" class="��������" src="voice/md06/0290200a01">
������������������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md06/0290210a00">
������������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Move("�}���٣�", 6000, @0, -490, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
����͸����֦��

���Դ������ؿ����롪��

�����⡣

����������

����˭�ģ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ݳ����Ĥģţ�ȫ�Ʊ�ʾ��ѩ܇�һ�i��
	$������Դ=se�M��_����_�ե�å���Хå�01;

	CreateSE("SE01","$������Դ");
	CreateSE("SE01a","$������Դ");
	CreateSE("SE01b","$������Դ");
	CreateSE("SE01c","$������Դ");

	CreateColorEXadd("�}ɫ��", 20000, "#FFFFFF");

	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("�}ɫ��", 300, 1000, null, true);

	Move("�}���٣�", 0, -60, -170, null, true);
	Move("�}���٣�", 6000, -720, @0, null, false);

	CreateTextureSP("����ޤ�02", 15900, @0, @0, "cg/ev/ev914_�ũ�ʽ�o�T��ħ��������ޥ󥿩`��.jpg");
	CreateTextureEX("����ޤ�01", 15800, @0, @0, "cg/ev/ev110_��Ƥ���������.jpg");
	CreateTextureEX("����ޤ�", 15700, Center, InBottom, "cg/st/stѩ܇�_ͨ��_˽��.png");
	CreateColorEX("�}ɫ�\����", 15000, "#000000");
	SetTone("����ޤ�*", NegaPosi);

	CreatePlainSP("����ޤ�02��", 15910);
	FadeFR2("����ޤ�02��",0,500,400,@0,@0,60,Dxl2, false);
	Fade("�}ɫ��", 300, 0, null, true);
	FadeDelete("����ޤ�02*", 300, true);

	MusicStart("SE01a",0,1000,0,1000,null,false);
	Fade("�}ɫ��", 300, 1000, null, true);
	Fade("����ޤ�01", 1, 1000, null, true);
	CreatePlainEX("����ޤ�01��", 15810);
	Delete("����ޤ�02");
	FadeFR2("����ޤ�01��",0,500,400,@0,@0,60,Dxl2, false);
	Fade("�}ɫ��", 300, 0, null, true);
	FadeDelete("����ޤ�01*", 300, true);

	MusicStart("SE01b",0,1000,0,1000,null,false);
	Fade("�}ɫ��", 300, 1000, null, true);
	Fade("�}ɫ�\����", 0, 1000, null, false);
	Fade("����ޤ�", 1, 1000, null, true);
	CreatePlainEX("����ޤ���", 15710);
	Delete("����ޤ�01");
	FadeFR2("����ޤ���",0,500,400,@0,@0,60,Dxl2, false);
	Fade("�}ɫ��", 300, 0, null, true);
	Fade("�}ɫ�\����", 300, 0, null, false);
	FadeDelete("����ޤ�*", 300, true);

	MusicStart("SE01c",0,1000,0,1000,null,false);
	Fade("�}ɫ��", 300, 1000, null, true);
	Wait(1000);
	Delete("����ޤ�*");
	Delete("�}ɫ�\����");
	FadeDelete("�}ɫ��", 2000, true);

	WaitAction("�}���٣�", null);

	SetFwC("cg/fw/fwѩ܇�_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/md06/0290220a12">
��Ӵ������

{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/md06/0290230a12">
���١��١���
�����������ӣ�һ�������ء�����


</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	FadeDelete("�}���٣�", 1000, true);

	SetFwC("cg/fw/fwѩ܇�_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0131]
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/md06/0290240a12">
��������ѽ�������񲻶�Ŷ����

//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/md06/0290250a12">
�����������ӡ���

{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/md06/0290260a12">
��������Ǹ�������ӡ���
����֮��ǰ�����������ǿ�����ȥ����

{	FwC("cg/fw/fwѩ܇�_��Ц.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/md06/0290270a12">
���ն�����!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���\����
	CreateColorEX("�\", 15000, "BLACK");
	Fade("�\", 2000, 1000, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
�����׹�������
�����Ҵն�����Ϊ�еģ�����˭��

���崨���
�������Ҿ���
����ħС̫�ɣ�
����·׿����·�٣�

�����Ρ������أ�
��һ֮βһĥ��
���������ϣ�

����������裿
���񡱣�
���ն��⣿

�����Ƕ����Ҵն������жԡ�
������������������ע��������

�����ǣ����Ƕ����Ҵն������ĵ����ǡ�
��һ���������

��������Ϊ�Ҵն��������£���ͼ�����ų⡣��
�����˽��Ҵն�������Ū�ڹ���֮�С���
�����˴�ͷ��β��û���Ҵն������������ 
��Ҳ���ˣ������Ҵն�������

������������˵��������Ҫ�����ĵ�����ʵ�������ˡ�
����������Ϊ�У�ȴ���������г� 

����ô��
����ô��������˭��

�����Ҵն������Ļ�����ĵ�����˭��
�����Ҵն��������������˭��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����롤����Ԓ��ѩ܇�

//ma04_016vs.nss�β��֤Υե�å���Хå��Ǥ������F״FW���������Ƥ���ޤ���
//Ԫ�Υե������FW��������������α�Ҫ����Ǥ���

	EfRecoIn1(18000,600);
	CreateTextureSP("���ٽ}10", 16000, Center, Middle, "cg/ev/ev914_�ũ�ʽ�o�T��ħ��������ޥ󥿩`��.jpg");
	EfRecoIn2(300);

	SetFwC("cg/fw/fwѩ܇�_����.png","Sepia");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/md06/0290280a12">
�����ۼ����Ҷ���˵����������
������Ǹ���Ȥ�İ���ӷ����

{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/md06/0290290a12">
��Ϊʲô����
���㲻��<RUBY text="������">����Ը</RUBY>�������𣿡�

{	FwC("cg/fw/fwѩ܇�_�o.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/md06/0290300a12">
����������С����
�����ǶԽ��ã�����Ը��ɱ����!!��

{	FwC("cg/fw/fwѩ܇�_ŭ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/md06/0290310a12">
������Ц�ˡ�������������������!!��

{	FwC("cg/fw/fwѩ܇�_ŭ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/md06/0290320a12">
��<RUBY text="������">�㵹��</RUBY>����һ�£���Щ��Ϊ
�����ǿ�������Լ����޷��Ͽɵ����ɶ���ɥ��
�㵶�µ��˰�����
����������

{	FwC("cg/fw/fwѩ܇�_ŭ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/md06/0290330a12">
��ʵ���ǻ������˼��㰡!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����롤����

	EfRecoIn1(18000,600);
	Delete(���ٽ}*);
	CreateTextureSP("���ٽ}10", 16000, Center, Middle, "cg/ev/ev905_����늴œĵ�_a.jpg");
	EfRecoIn2(300);

	SetFwC("cg/fw/fw��������_ͨ��b.png","Sepia");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//��������
<voice name="����" class="����" src="voice/md06/0290340a00">
���������졭��
���쵰����

{	FwC("cg/fw/fw��������_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/md06/0290350a00">
��˵�˱��죡��

{	FwC("cg/fw/fw��������_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md06/0290360a00">
���Ҷ�˵�˱���!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
	EfRecoOut1(300);

	Delete("���ٽ}*");

	EfRecoOut2(600,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
�������ͽ��������һͬѰ����ʾ��
����ʱԼ����δ�������Ѿ���Ϊ��ʵ��

��׷����������
��
���Ҵն������ĵ��ˣ�Ψѩ���һ�ض��ѡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���������钷��裿
//���ţ�
	SoundPlay("@msong05_short", 0, 1000, true);
	FadeDelete("�\",1500,true);

	SetFwC("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
//��������
<voice name="����" class="����" src="voice/md06/0290370a00">
�������㡪��������

{	FwC("cg/fw/fwѩ܇�_��Ц.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/md06/0290380a12">
��������������������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����á����S��
	CreateSE("SE01","se����_����_���S01");

//��ef001
	CreateTextureEXadd("�w�֣�", 15010, @0, @0, "cg/ef/ef003_�����Ƅ�.jpg");
	CreateTextureEX("�w��", 15000, @0, @0, "cg/ef/ef003_�����Ƅ�.jpg");
	Zoom("�w��*", 0, 2000, 2000, null, true);

	MusicStart("SE01",0,1000,0,1000,null,false);
	Zoom("�w��*", 350, 1000, 1000, Dxl2, false);
	Fade("�w��*", 0, 1000, null, true);
	FadeDelete("�w�֣�", 1000, false);
	DrawTransition("�w��*", 200, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	CreateSE("SE02","se�\��_��܇_����01_L");
	MusicStart("SE02",3000,400,0,800,null,true);

	Delete("�}����");

	SetFrequency("SE02", 10000, 1100, null);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
��ѩ���һ�ر������Ծ����
�������Ѿ������Ļ𳵡�

��һ��ץס����������ϡ� 

������Ȼ��ʻ�š�
�����ں����м��١�

����󣬴�����ǰ��ʧ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE02", 5000, 0, null);

//��bg113
	OnBG(100, "bg113_�k�Υ۩`��a_01.jpg");
	FadeBG(0, true);

	FadeDelete("�w��",1500,true);

	SetFwC("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
//��������
<voice name="����" class="����" src="voice/md06/0290390a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
��һ�ж�������һ˲�䡣

���г�û��ֹͣ��
���ƺ�û��һ���г�Աע�⵽������һĻ��

��վ�ڵĳ˿�Ҳ��������
�����м�����ע�⵽�ˡ�
��������ֻ�Ǵ������������Ѿ����н�Զ
�Ļ𳵳�β��

������һ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
//��������
<voice name="����" class="����" src="voice/md06/0290400a00">
������������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0290410a00">
����!!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
�����С�
�����ܾ�������վ�ţ�

�������Ѿ������С���������ˣ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����á��l������
//��ef003
	OnSE("se����_����_�ߤ�03", 1000);

	CreateTextureSP("�l������", 2000, @0, @0, "cg/ef/ef002_�����Ƅ�.jpg");
	DrawTransition("�l������", 150, 0, 1000, 100, null, "cg/data/slide_01_01_1.png", true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
���Ҷ���������˳�ȥ��
��Ŀ��һ�к����޼ɡ��� 
��������ŭ������ǰ�С�

����ǰһƬ�Ұס�
  ����վ̨���ܡ�

��������Ծ�Ϲ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nw�k�T.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
//������㣯�k�T��
<voice name="����㣯�k�T" class="����������" src="voice/md06/0290420e026">
��ι!!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
�����ܡ�
���Ű������Ȼ���Ĳ��ȡ�

{	CreateSE("SE01","se����_�n��_ܞ��05");
	MusicStart("SE01",0,1000,0,1000,null,false);}
�����ް취�ص��¡�
��
��������ô��ģ��氭�£�

��վ����
�������ܡ�

��׷�ϡ�

���Ѿ����г�ԶԶ˦����

������ѩ��ʹ������г���ңԶ�ġ����ٵġ�

�������������ߡ�
��׷�ϡ�

����һ�㣬��һ�㡪��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreatePlainEX("�}��д", 1900);
	Fade("�}��д", 0, 500, null, true);

	SetNwC("cg/fw/nw�k�T.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
//������㣯�k�T��
<voice name="����㣯�k�T" class="����������" src="voice/md06/0290430e026">
���ȵȣ�����һ��

{	CreateSE("SE01","se����_����_������01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Delete("�l������");
	Shake("�}��д", 300, 30, 0, 0, 0, 1000, Dxl2, false);
	FwC("cg/fw/fw����_��ʹ.png");}
//��������
<voice name="����" class="����" src="voice/md06/0290440a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@OnSE*", 1000, 0, null);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
��ͻȻ��ű���޷�ǰ����ͬʱ����Ҳ����ֹͣ��
���ұ�һ��ǿ�������ץס�����졣��

��ʲô����?!

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nw�k�T.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
//������㣯�k�T��
<voice name="����㣯�k�T" class="����������" src="voice/md06/0290450e026">
�����ڽ�ֹ�������ڣ�
����ʵ�㣡��

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0290460a00">
���ſ�!!��

{	NwC("cg/fw/nw�k�T.png");}
//������㣯�k�T��
<voice name="����㣯�k�T" class="����������" src="voice/md06/0290470e026">
��ʲô!?��

{	FwC("cg/fw/fw����_ŭ��b.png");}
//��������
<voice name="����" class="����" src="voice/md06/0290480a00">
��û�ո�����͡�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
�����ǽ��͵�ʱ��
���ٲ���㡣�ٲ���㣡

����ǿ�еŵأ��������ܡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	OnSE("se����_����_�ߤ�06", 1000);


	SetNwC("cg/fw/nw�k�T.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310]
//������㣯�k�T��
<voice name="����㣯�k�T" class="����������" src="voice/md06/0290490e026">
����С���ˣ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ɤ��á����������줿
//���\
	OnSE("se����_����_���02", 1000);

	OnSE("se����_�n��_ܞ��03", 1000);
	Shake("�}��д", 300, 0, 10, 0, 0, 1000, Dxl2, false);
	CreateColorSP("�\Ļ��", 3000, "#000000");
	DrawTransition("�\Ļ��", 100, 0, 1000, 100, null, "cg/data/slide_02_01_1.png", true);

	Delete("�}��д");
	CreateColorSP("�·�", 10, "#000000");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0320]
������ȴ�޷������ж���
���ұ��Է�ȫ��ˤ���ڵء�

�������ڵ��ϣ�һ���ࡣ
����ζ���������¡�

��������������
��
������Ϊʲô����˵��������ʮ��𼱰���
��Ϊʲô����������ñ���������!?

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ե�å���Хå����������w����

	EfRecoIn1(18000,600);
	CreateTextureSP("���ٽ}10", 16000, -450, -0, "cg/ev/resize/ev106_���w��Ҋ�¤�����_d.jpg");
	CreateTextureSP("���ٽ}11", 15500, -900, -500, "cg/ev/resize/ev106_���w��Ҋ�¤�����_d.jpg");
	CreateTextureSP("���ٽ}12", 15000, Center, Middle, "cg/ev/ev106_���w��Ҋ�¤�����_d.jpg");

	EfRecoIn2(300);

	Move("���ٽ}10", 2000, @200, @0, DxlAuto, true);
	FadeDelete("���ٽ}10",1500,false);
	Move("���ٽ}11", 2000, @-100, @0, DxlAuto, true);
	FadeDelete("���ٽ}11",1500,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0330]
��̫�������ˡ�
��̫�������ˡ�

��̫�������ˡ������������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	EfRecoOut1(300);
	Delete("���ٽ}*");
	EfRecoOut2(600,true);

	SetNwC("cg/fw/nw�k�T.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0340]
//������㣯�k�T��
<voice name="����㣯�k�T" class="����������" src="voice/md06/0290500e026">
���ã�������
������ÿ�����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0290510a00">
�������ˣ�����!!��

{	NwC("cg/fw/nw�k�T.png");}
//������㣯�k�T��
<voice name="����㣯�k�T" class="����������" src="voice/md06/0290520e026">
�������쵰����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ef003
	OnSE("se����_����_�᤺����01", 1000);
	CreateTextureSP("�}�݄���", 2500, Center, Middle, "cg/ef/ef003_�����Ƅ�.jpg");
	DrawDelete("�\Ļ��", 100, 100, "zoom_01_00_0", true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0350]
���������ѿ��ˡ�
�����������������ܡ�

��վ��Ա�����׷�ϡ�
��
�������ڲ��ٲ����ң�����Ƿȱ�������ƺ�������
����˦����

�������˷��ҵ�ʱ�䣡
�����Ѿ���Ӱ�����ˡ�

����ô�졣
����ô�졣
����ô����׷�ϣ�

�������𳵻�����һվͣ����ѩ���š�
���������³��ɡ�
�����Ǿ��������Ź�ȥ������һվҪ��
���೤ʱ�䡭���������ᱻ��δ��ã�

�����У�Ҫ�򶨡�
�����ߵ�����ֻ����һ�̶�����

���𳵵�һ�ڣ������������һ����
���������̰ѽ��С���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorSP("�\Ļ��", 3000, "#000000");
	DrawTransition("�\Ļ��", 150, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);


}

..//������ָ��
//�Υե����롡"md06_030.nss"