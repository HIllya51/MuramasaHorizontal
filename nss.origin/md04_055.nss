
//<continuation number="760">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_055.nss_MAIN
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
	#bg069_���ӘS���ڎ��g_01a=true;
	#bg100_�����w_02=true;
	#ev145_�@�Ӥ򷸤�ͯ��_a=true;
	#ev143_���Ϥȗ@��_a=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md04_056.nss";

}

scene md04_055.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"md04_054vs.nss"

//���������g��bg069
//������

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\", 5000, "BLACK");

	CreateTextureSP("�}����", 4900, Center, Middle, "cg/bg/bg100_�����w_02.jpg");

	OnBG(100, "bg069_���ӘS���ڎ��g_01a.jpg");
	FadeBG(0, true);

	SoundPlay("@mbgm32", 0, 1000, true);

	CreateSE("SE01L","se����_����_������L��02_L");
	CreateSE("SE01La","se����_����_�ϑ�01");
	MusicStart("SE01L",0,1000,0,1000,null,true);
	MusicStart("SE01La",0,1000,0,1000,null,true);

	Delete("�ϱ���");
	FadeDelete("�\",1500,true);

	Wait(1000);

	SetVolume("SE01L*", 2000, 500, null);
	FadeDelete("�}����", 1500, true);

	Wait(500);

	StL(1100, @0, @0, "cg/st/st����_ͨ��_˽��.png");
	FadeStL(500, true);

	Wait(500);

	SetFwC("cg/fw/fw����_ʧ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//�����ϡ�
<voice name="����" class="����" src="voice/md04/0550010b49">
������������

//�����ϡ�
<voice name="����" class="����" src="voice/md04/0550020b49">
��ս����������һֱ�����ڶ�������

//�����ϡ�
<voice name="����" class="����" src="voice/md04/0550030b49">
������Զ��
��Ȼ�������ڱƽ���

//�����ϡ�
<voice name="����" class="����" src="voice/md04/0550040b49">
�����ǡ�������֮����

//�����ϡ�
<voice name="����" class="����" src="voice/md04/0550050b49">
������������

//�����ϡ�
<voice name="����" class="����" src="voice/md04/0550060b49">
�������������𡭡���

{	SetVolume("SE*", 10000, 0, null);
	FwC("cg/fw/fw����_ͨ��a.png");}
//�����ϡ�
<voice name="����" class="����" src="voice/md04/0550070b49">
�������ޣ�

//�����ϡ�
<voice name="����" class="����" src="voice/md04/0550080b49">
��үү�������������ޣ�

{	FwC("cg/fw/fw����_ʧ��.png");}
//�����ϡ�
<voice name="����" class="����" src="voice/md04/0550090b49">
������������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����ϡ�
<voice name="����" class="����" src="voice/md04/0550100b49">
������

//�����ϡ�
<voice name="����" class="����" src="voice/md04/0550110b49">
�������˸��ã�

//�����ϡ�
<voice name="����" class="����" src="voice/md04/0550120b49">
���������ǡ���<RUBY text="��������">а��֮��</RUBY>������

{	FwC("cg/fw/fw����_ʧ��.png");}
//�����ϡ�
<voice name="����" class="����" src="voice/md04/0550130b49">
����������Ҳ������

//�����ϡ�
<voice name="����" class="����" src="voice/md04/0550140b49">
������������

//�����ϡ�
<voice name="����" class="����" src="voice/md04/0550150b49">
�������ˡ����ͺã�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������_����������

	OnSE("se�ճ�_����_���饤���_��01", 1000);
	WaitKey(1200);
	CreateSE("SE01b","se����_����_�i��09");
	MusicStart("SE01b",0,1000,0,700,null,false);
	WaitKey(1000);

//	DeleteStL(150,true);

	StC(1000, @-250, @0, "cg/st/st�����_��У_ͨ��_�Ʒ�.png");
//	StL(1000, @-150, @0, "cg/st/st����_ͨ��_˽��.png");
	Move("@StC*", 300, @50, @0, null, false);
//	FadeStL(150, false);
	OnSE("se����_����_һ�i", 1000);
	FadeStC(150, true);


	SetNwC("cg/fw/nw���Ϥ��o�l.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//������㣯�����o�l��
<voice name="����㣯�����o�l" class="����������" src="voice/md04/0550160e253">
������ʲô��!?
���ǵ���˭�����ǰ�������!!��

{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����ϡ�
<voice name="����" class="����" src="voice/md04/0550170b49">
����������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���@��

	SetVolume("SE01b", 300, 0, null);


	StR(1000, @0, @0, "cg/st/st�@��_ͨ��_˽����.png");
	FadeStR(500, true);

	Wait(500);

	SetFwC("cg/fw/fw�@��_ŭ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/md04/0550180b28">
������������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����ϡ�
<voice name="����" class="����" src="voice/md04/0550190b49">
��������������

{	NwC("cg/fw/nw���Ϥ��o�l.png");}
//������㣯�����o�l��
<voice name="����㣯�����o�l" class="����������" src="voice/md04/0550200e253">
��ι����������
��������Ů���������˵��µ��ۡ���

//������㣯�����o�l��
<voice name="����㣯�����o�l" class="����������" src="voice/md04/0550210e253">
���ٲ������Ϳ������ӵ�!!��

{	FwC("cg/fw/fw����_ŭ��.png");}
//�����ϡ�
<voice name="����" class="����" src="voice/md04/0550220b49">
���ȵȣ�
��û��ϵ�����������ɡ���

{	NwC("cg/fw/nw���Ϥ��o�l.png");}
//������㣯�����o�l��
<voice name="����㣯�����o�l" class="����������" src="voice/md04/0550230e253">
���ɡ����ǣ����¡�����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����ϡ�
<voice name="����" class="����" src="voice/md04/0550240b49">
����˵��û��ϵ��
  ����˵������೪�����𣿡�

{	NwC("cg/fw/nw���Ϥ��o�l.png");}
//������㣯�����o�l��
<voice name="����㣯�����o�l" class="����������" src="voice/md04/0550250e253">
������������

{	FwC("cg/fw/fw����_ŭ��.png");}
//�����ϡ�
<voice name="����" class="����" src="voice/md04/0550260b49">
�����Ƕ����£�
����û������֮ǰ���������

{	NwC("cg/fw/nw���Ϥ��o�l.png");}
//������㣯�����o�l��
<voice name="����㣯�����o�l" class="����������" src="voice/md04/0550270e253">
��������������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������Ф����\

	DeleteStC(150,false);
	Move("@StC*", 150, @-20, @0, null, false);
	OnSE("se����_����_һ�i", 1000);
//	DeleteStL(150,true);
//�����Ϥȗ@��

	Wait(500);

	OnSE("se�ճ�_����_���_�]01",1000);

	Wait(1500);


//	StL(1000, @0, @0, "cg/st/st����_ͨ��_˽��.png");
//	FadeStL(150, true);


	SetFwC("cg/fw/fw�@��_ŭ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/md04/0550280b28">
��������

{	FwC("cg/fw/fw����_ʧ��.png");}
//�����ϡ�
<voice name="����" class="����" src="voice/md04/0550290b49">
��ӣ��С�㡭����

{	FwC("cg/fw/fw�@��_ŭ��.png");}
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/md04/0550300b28">
��������

{	FwC("cg/fw/fw����_ʧ��.png");}
//�����ϡ�
<voice name="����" class="����" src="voice/md04/0550310b49">
��ӣ��С�㣬�Ǹ��������ǡ�����

{	FwC("cg/fw/fw�@��_ŭ��.png");}
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/md04/0550320b28">
��������

{	FwC("cg/fw/fw����_ʧ��.png");}
//�����ϡ�
<voice name="����" class="����" src="voice/md04/0550330b49">
��������

//�����ϡ�
<voice name="����" class="����" src="voice/md04/0550340b49">
����˵Щ������

//�����ϡ�
<voice name="����" class="����" src="voice/md04/0550350b49">
����˵Щʲô���أ�

//�����ϡ�
<voice name="����" class="����" src="voice/md04/0550360b49">
������ô˵�ź��أ�

//�����ϡ�
<voice name="����" class="����" src="voice/md04/0550370b49">
��������ˣ�

//�����ϡ�
<voice name="����" class="����" src="voice/md04/0550380b49">
������������ʱ����
����ʲôҲû������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����룺�ܻᡣͯ�Ĥα���
	EfRecoIn1(18000,600);

	CreateTextureSP("�}", 5000, Center, 0, "cg/ev/resize/ev145_�@�Ӥ򷸤�ͯ��_dl.jpg");
	SetTone("�}", Sepia);

	EfRecoIn2(300);
	WaitKey(1000);

	SetFwR("cg/fw/fwͯ��_�Х���.png","Sepia");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md04/0550390a09">
���Բ���ǧ�𰡣�
�����������ްɣ���

{	FwR("cg/fw/fw�@��_����b.png");}
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/md04/0550400b28">
����������!!��

{	FwR("cg/fw/fwͯ��_��Ц.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md04/0550410a09">
����Ȼ����

{	FwR("cg/fw/fw�@��_����b.png");}
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/md04/0550420b28">
����������!!��

{	FwR("cg/fw/fwͯ��_��Ц.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md04/0550430a09">
����Ȼ����

{	FwR("cg/fw/fw�@��_����b.png");}
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/md04/0550440b28">
������������ħ��
����������������!!��

{	FwR("cg/fw/fwͯ��_�Х���.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md04/0550450a09">
����Ȼ!!��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������

	EfRecoOut1(300);
	Delete("�}");

	EfRecoOut2(600,true);

	Wait(500);

	SetFwC("cg/fw/fw����_ʧ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//�����ϡ�
<voice name="����" class="����" src="voice/md04/0550460b49">
������ʲô��˵�����ڡ�����

//�����ϡ�
<voice name="����" class="����" src="voice/md04/0550470b49">
��������˵�ó��ڣ�

{	FwC("cg/fw/fw�@��_ŭ��.png");}
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/md04/0550480b28">
������������

{	FwC("cg/fw/fw����_ʧ��.png");}
//�����ϡ�
<voice name="����" class="����" src="voice/md04/0550490b49">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����㤭�󡣶̵���i��

	OnSE("se���L_����_������01", 1000);
	WaitKey(100);
	Move("@StR*", 100, @-10, @0, DxlAuto, false);
	WaitKey(1000);

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//�����ϡ�
<voice name="����" class="����" src="voice/md04/0550500b49">
����������!!��

{	FwC("cg/fw/fw�@��_����.png");}
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/md04/0550510b28">
����������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��һ�̤������֡�
	OnSE("se���L_����_���̤���01", 1000);
	Move("@StR*", 250, @-150, @0, Axl1, false);
	WaitKey(100);
//��Ѫ

	CreateColorEXadd("�ե�å���", 15000, "RED");
	Fade("�ե�å���",0,1000,null,false);
	CreateTextureEX("�}EF", 1500, Center, Middle, "cg/ef/ef005_����Ѫ�~.jpg");
	DeleteStR(0,false);
	Fade("�}EF", 0, 1000, null, true);
	Fade("�ե�å���",1000,1000,null,false);
	FadeDelete("�ե�å���", 500, true);


	SetFwC("cg/fw/fw����_��ʧ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//�����ϡ�
<voice name="����" class="����" src="voice/md04/0550520b49">
�������ء�����

{	FwC("cg/fw/fw�@��_ŭ��.png");}
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/md04/0550530b28">
��������

{	FwC("cg/fw/fw����_ʧ��.png");}
//�����ϡ�
<voice name="����" class="����" src="voice/md04/0550540b49">
���ȡ��ء�����

{	FwC("cg/fw/fw����_��ʧ.png");}
//�����ϡ�
<voice name="����" class="����" src="voice/md04/0550550b49">
������������������������

//�����ϡ�
<voice name="����" class="����" src="voice/md04/0550560b49">
��������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����ϡ�
<voice name="����" class="����" src="voice/md04/0550570b49">
���������ͺã�

{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����ϡ�
<voice name="����" class="����" src="voice/md04/0550580b49">
�������͡������ˡ�����

{	FwC("cg/fw/fw�@��_����.png");}
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/md04/0550590b28">
����û�꣡��

{	FwC("cg/fw/fw����_ʧ��.png");}
//�����ϡ�
<voice name="����" class="����" src="voice/md04/0550600b49">
����������

{	FwC("cg/fw/fw�@��_����.png");}
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/md04/0550610b28">
���������죡
���㻹�и������°ɣ���

{	FwC("cg/fw/fw����_ʧ��.png");}
//�����ϡ�
<voice name="����" class="����" src="voice/md04/0550620b49">
������������

{	FwC("cg/fw/fw����_��ʧ.png");}
//�����ϡ�
<voice name="����" class="����" src="voice/md04/0550630b49">
�����ġ������졭����

//�����ϡ�
<voice name="����" class="����" src="voice/md04/0550640b49">
��ԭ����ˣ�

{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����ϡ�
<voice name="����" class="����" src="voice/md04/0550650b49">
��������������У��Ѿ�ֻ����Ϊ�����޵���
�졪��
  ���֮���Ĵ����ˣ�

{	FwC("cg/fw/fw����_ʧ��.png");}
//�����ϡ�
<voice name="����" class="����" src="voice/md04/0550660b49">
����ô��

{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����ϡ�
<voice name="����" class="����" src="voice/md04/0550670b49">
���Ҿͺúõأ�

//�����ϡ�
<voice name="����" class="����" src="voice/md04/0550680b49">
��������������֮����

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	DeleteStA(0,true);

//	StR(1000, @0, @0, "cg/st/st�@��_ͨ��_˽��a.png");
//	FadeStR(0, true);
	FadeDelete("�}EF",1500,true);

//������顣�i��


	OnSE("se���L_����_������02", 1000);
	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//�����ϡ�
<voice name="����" class="����" src="voice/md04/0550690b49">
��������

{	FwC("cg/fw/fw�@��_ŭ��.png");}
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/md04/0550700b28">
��������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//	Move("@StL*", 250, @150, @0, Dxl2, false);
	WaitKey(100);
//��һ�W�����֡�

	CreateColorSP("�\Ļ��", 5000, "BLACK");
	CreateTextureSPadd("�}����500", 10000, Center, Middle, "cg/ef/ef015_���ú�܉��.jpg");
	OnSE("se���L_����_�����02",1000);
	FadeDelete("�}����500",1000,true);
	OnSE("se���L_����_���̤���01", 1000);
	OnSE("se����_Ѫ_�����01", 1000);
	DeleteStL(0,true);
	CreateTextureEX("�}EF", 5500, Center, Middle, "cg/ef/ef004_����Ѫ�~.jpg");
	Fade("�}EF", 0, 1000, null, true);
	WaitKey(1500);
	FadeDelete("�}EF",700,false);
	OnSE("se����_�n��_ܞ��01", 1000);
/*
	StR(1000, @150, @0, "cg/st/st�@��_ͨ��_˽��a.png");
	FadeStR(0, true);

	StCR(1100, @0, @0, "cg/st/st����_ͨ��_˽��.png");
	FadeStCR(0, true);
*/
	FadeDelete("�\Ļ��",1000,true);

	SetFwC("cg/fw/fw�@��_�ߐu.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/md04/0550710b28">
������������

{	FwC("cg/fw/fw����_ʧ��.png");}
//�����ϡ�
<voice name="����" class="����" src="voice/md04/0550720b49">
������������

{	FwC("cg/fw/fw�@��_ͨ��b.png");}
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/md04/0550730b28">
�������ɵò��������

{	FwC("cg/fw/fw����_��ʧ.png");}
//�����ϡ�
<voice name="����" class="����" src="voice/md04/0550740b49">
��������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����룺�@�ӤȰ��Ϥγ��ᤤ

//ev143_���Ϥȗ@��_a

	EfRecoIn1(18000,600);

//�����ߣ�CG�ʤ��Τǥ��`��i��
//	CreateTextureSP("�}", 5000, Center, Middle, "cg/ev/ev143_���Ϥȗ@��_a.jpg");

	StL(1000, @0, @0,"cg/st/st����_ͨ��_˽��.png");
	StR(1000, @0, @0,"cg/st/st�@��_ͨ��_˽��a.png");
	FadeStR(0,true);
	FadeStL(0,true);
	OnBG(100,"bg065_���ӘS���ڹ�_01.jpg");
	FadeBG(0,true);


	EfRecoIn2(300);
	WaitKey(1000);

//������

	EfRecoOut1(300);
	Delete("�}");

	DeleteStA(0,true);

	OnBG(100, "bg069_���ӘS���ڎ��g_01a.jpg");
	FadeBG(0, true);

	EfRecoOut2(600,true);


//	Move("@StR*", 300, @0, @50, null, true);

	WaitKey(500);
	OnSE("se����_�n��_ܞ��01", 1000);

	Wait(500);
//	Move("@StR*", 300, @0, @50, null, false);
//	DeleteStR(300,true);

	SetFwC("cg/fw/fw����_��ʧ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//�����ϡ�
<voice name="����" class="����" src="voice/md04/0550750b49">
������ӣ�����ӡ�����

{	FwC("cg/fw/fw�@��_��.png");}
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/md04/0550760b28">
������������


</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//	Move("@StMR*", 300, @0, @50, null, true);

	WaitKey(500);
	OnSE("se����_�n��_ܞ��01", 1000);

//	Move("@StMR*", 300, @0, @50, null, false);
//	DeleteStCR(300,true);

//����������

	WaitKey(500);

//���ե��`�ɥ�����

	ClearWaitAll(2000, 2000);

}

..//������ָ��
//�Υե����롡"md04_056.nss"


	EfRecoIn1(18000,600);

	CreateTextureSP("�}", 5000, Center, Middle, "cg/ev/ev145_�@�Ӥ򷸤�ͯ��_a.jpg");

	EfRecoIn2(300);
	WaitKey(1000);

//������

	SetFwR("cg/fw/fwͯ��_�Х���.png");

//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md04/0550390a09">
���Բ���ǧ�𰡣�
�����������ްɣ���
