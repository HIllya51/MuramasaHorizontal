//<continuation number="1590">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_036.nss_MAIN
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
	#bg080_�w�д�����Ab_01a=true;
	#bg036_������ͨ·_01=true;
	#bg018_֪�̄���_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md04_037.nss";

}

scene md04_036.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"md04_035.nss"


//���O���ä�һ�ҡ�bg080��
//�������

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\Ļ��", 5000, "BLACK");
	OnBG(100, "bg080_�w�д�����Ab_01a.jpg");
	FadeBG(0, true);

	Delete("�ϱ���");
	FadeDelete("�\Ļ��", 1500, true);

	SetFwH("cg/fw/fw����Υ�_��ʹ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0360010b03">
��������������������

</PRE>
	SetTextEXH();
	TypeBeginHIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ؚ���

	OnSE("se���L_����_���̤���03", 500);
	Wait(1500);
	OnSE("se����_�n��_ܞ��02", 1000);
	Wait(500);

	SetFwH("cg/fw/fw����Υ�_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0360020b03">
����������

</PRE>
	SetTextEXH();
	TypeBeginHIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��������

	OnSE("se�ճ�_����_���_��01", 1000);
	Wait(1500);

	StCR(1000, @-30, @0, "cg/st/st�������_ͨ��_˽��.png");
	Move("@StMR*", 500, @-30, @0, Dxl2, false);
	FadeStCR(500, true);

	Wait(500);

	SoundPlay("@mbgm21", 0, 1000, true);

	SetFwH("cg/fw/fw�������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��������ա�
<voice name="�������" class="�������" src="voice/md04/0360030a13">
��Ӵ����ũ����
���㻹�����𣿡�

//��������ա�
<voice name="�������" class="�������" src="voice/md04/0360040a13">
����û����ϣ���ɣ���

{	FwH("cg/fw/fw����Υ�_���.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0360050b03">
���ֶ������?!��

{	FwH("cg/fw/fw�������_Ц�.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md04/0360060a13">
��̫���ˡ����ٻ����š�
���һ����ĵò��У�����������ϵ��ء���

{	FwH("cg/fw/fw����Υ�_��ʹ.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0360070b03">
�����������һ�û��������������������
�����ϵ���
��������������ô����ģ���

{	FwH("cg/fw/fw�������_ͨ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md04/0360080a13">
�����Լ��˾��ˡ���

{	FwH("cg/fw/fw����Υ�_��ʹ.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0360090b03">
���Լ��ˣ���

{	FwH("cg/fw/fw�������_ͨ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md04/0360100a13">
����������

</PRE>
	SetTextEXH();
	TypeBeginHIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����

	StR(900, @150, @0, "cg/st/st��霔�_ͨ��_˽��.png");
	FadeStR(500, true);


	SetFwH("cg/fw/fw����Υ�_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0360110b03">
��������

{	FwH("cg/fw/fw�������_ͨ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md04/0360120a13">
���Ͷ�������ŷ���������ɰɡ���

{	FwH("cg/fw/fw��霔�_ͨ��b.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/md04/0360130b37">
���ǡ�
���������ˣ�ʧ���ˡ���

</PRE>
	SetTextEXH();
	TypeBeginHIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��һ�W���I���Ф�
//	Move("@StR*", 300, @-200, @0, DxlAuto, false);
	DeleteStR(300,true);


	OnSE("se���L_����_�����01", 1000);

	CreateTextureEX("�}����200", 2000, Center, 0, "cg/ef/ef008_��������܉��.jpg");
	Fade("�}����200", 300, 1000, null, true);
	Fade("�}����200", 500, 0, null, true);
	Delete("�}����200");
	OnSE("se�ճ�_���_�²���01", 1000);

	Wait(250);

	SetFwH("cg/fw/fw����Υ�_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0360140b03">
���������ڡ�
�����Ǵ���ˣ���

{	FwH("cg/fw/fw�������_ͨ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md04/0360150a13">
������û�����Ǵ���ˣ������ҵ����ѡ�
������������ûʲô��ν�ɣ���

//��������ա�
<voice name="�������" class="�������" src="voice/md04/0360160a13">
���ã����������¿�ʼ�ɡ���

{	FwH("cg/fw/fw����Υ�_��ʹ.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0360170b03">
����ʼʲô����

{	FwH("cg/fw/fw�������_����.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md04/0360180a13">
����û˯����
����Ȼ�ǣ����ǵĽ�������

{	FwH("cg/fw/fw����Υ�_��ʹ.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0360190b03">
�������������������ֵز���
��һ�ж��Ѿ������ˡ���

{	FwH("cg/fw/fw����Υ�_ͨ��b.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0360200b03">
���������ǵȴ����̵��ѹ��ߡ�
���������ӳ�ȥ��Ҳֻ���ɵȴ�ץ����
�ӷ����ѡ���

{	FwH("cg/fw/fw�������_����.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md04/0360210a13">
����Ҫ˵����û��Ϣ�Ļ���
�������ϲ��ǻ�������ά���ٽ��������𣿡�

{	FwH("cg/fw/fw����Υ�_��ʹ.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0360220b03">
��������

{	FwH("cg/fw/fw�������_ͨ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md04/0360230a13">
�������ϣ��㻹�����ѹ��ߡ���

{	FwH("cg/fw/fw����Υ�_���.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0360240b03">
��������˵ʲô����

{	FwH("cg/fw/fw�������_ͨ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md04/0360250a13">
��·�ȡ����ް�����û������Ǳ���ڣǣȣ���
�����ɵ�ȫò��
�����ԣ����¹����¼������������ʧ�ء���

{	FwH("cg/fw/fw�������_����.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md04/0360260a13">
���ǰɣ��Ͷ�������ŷ����

{	FwH("cg/fw/fw��霔�_����.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/md04/0360270b37">
���ǵġ���

{	FwH("cg/fw/fw����Υ�_��ʹ.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0360280b03">
������������

{	FwH("cg/fw/fw�������_ͨ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md04/0360290a13">
�����˰ɣ���������

{	FwH("cg/fw/fw�������_˼��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md04/0360300a13">
��ֻҪ�ɵ����ް������������������а취����

{	FwH("cg/fw/fw����Υ�_��ʹ.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0360310b03">
��������

</PRE>
	SetTextEXH();
	TypeBeginHI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwH("cg/fw/fw����Υ�_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0360320b03">
���������𣿡�

{	FwH("cg/fw/fw��霔�_ͨ��b.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/md04/0360330b37">
�����Ǹ�����ӵ�ʿ�����ֵ�ǹ��
�����úã��������ˡ���

{	FwH("cg/fw/fw����Υ�_ͨ��b.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0360340b03">
��<RUBY text="������">��ǹ</RUBY>�Ͳ����ˡ�
��������ǹ�ͺá���

{	FwH("cg/fw/fw��霔�_����.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/md04/0360350b37">
���ǡ���

{	FwH("cg/fw/fw�������_Ц�.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md04/0360360a13">
���ܺã��ܺã�
���������߰ɣ���ũ��������

{	FwH("cg/fw/fw����Υ�_��ʹ.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0360370b03">
�������š���

</PRE>
	SetTextEXH();
	TypeBeginTimeHIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ͨ·��bg036��

	CreateColorSP("�\Ļ��", 3000, "#000000");
	DrawTransition("�\Ļ��", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);
	
	DeleteStCR(0,true);

	OnBG(101, "bg036_������ͨ·_01.jpg");
	FadeBG(0, true);

	DrawTransition("�\Ļ��", 500, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("�\Ļ��");


	SetNwH("cg/fw/ny�o�l��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//������㣯�߹��o�l��
<voice name="����㣯�߹��o�l" class="����������" src="voice/md04/0360380e073">
������վס��
�����������ް����������˵ġ�����

//������㣯�߹��o�l��
<voice name="����㣯�߹��o�l" class="����������" src="voice/md04/0360390e073">
��ʲô����ũ����?!��

{	FwH("cg/fw/fw����Υ�_ͨ��b.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0360400b03">
��������

</PRE>
	SetTextEXH();
	TypeBeginHIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����霡����`�ä�

	StR(900, @-150, @0, "cg/st/st��霔�_ͨ��_˽��.png");
	FadeStR(300, false);
	Move("@StR*", 300, @-200, @0, DxlAuto, false);
	DeleteStR(300,true);
//���W������

	OnSE("se���L_����_�����01", 1000);

	CreateTextureEX("�}����200", 2000, Center, 0, "cg/ef/ef008_��������܉��.jpg");
	Fade("�}����200", 300, 1000, null, true);

	OnSE("se���L_����_��_�ҥå�01", 1000);
	OnSE("se���L_����_�����02", 1000);
	CreateTextureEX("�}����300", 2100, Center, 0, "cg/ef/ef015_���ú�܉��.jpg");
	Fade("�}����300", 300, 1000, null, true);
	OnSE("se���L_����_��_�ҥå�02", 1000);
	Fade("�}����200", 0, 0, null, false);
	Fade("�}����300", 500, 0, null, true);


	Delete("�}����*");
	Wait(300);

	OnSE("se����_�n��_ܞ��02", 1000);
	Wait(500);

	OnSE("se����_�n��_ܞ��03", 1000);


	SetFwH("cg/fw/fw��霔�_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/md04/0360410b37">
���á�����λ����

{	FwH("cg/fw/fw�������_Ц�.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md04/0360420a13">
���ţ�лл����

{	FwH("cg/fw/fw����Υ�_��ʹ.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0360430b03">
������������
��ת˲֮�����ʰ��ȫ����װ������ʿ������

{	FwH("cg/fw/fw��霔�_����.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/md04/0360440b37">
��ֻ��ЩС��Ϸ����

{	FwH("cg/fw/fw�������_Ц�.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md04/0360450a13">
����λ���Ѻܿɿ��ɣ�
����ô������

</PRE>
	SetTextEXH();
	TypeBeginHIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��������
//���߹ٲ���

	CreateColorSP("�\Ļ��", 3000, "#000000");
	DrawTransition("�\Ļ��", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);
	OnSE("se�ճ�_����_���_��01", 1000);
	OnSE("se�ճ�_����_���_��06", 1000);

	OnBG(100, "bg018_֪�̄���_01.jpg");
	FadeBG(0, true);

	Wait(500);

	DrawTransition("�\Ļ��", 500, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("�\Ļ��");

	Wait(1000);

	SetFwH("cg/fw/fw�����奢���_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//���߹١�
<voice name="�߹�" class="�߹�" src="voice/md04/0360460b25">
�������ξ��
����ӭ������������������ʱ���밲��Щ����

//���߹١�
<voice name="�߹�" class="�߹�" src="voice/md04/0360470b25">
�������ڶ��顭����

{	FwH("cg/fw/fw����Υ�_Ц��.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0360480b03">
������<RUBY text="����������">���꾫</RUBY>������
��������Ҳ����

</PRE>
	SetTextEXH();
	TypeBeginTimeHI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������㡣�|�򘋤�����
	OnSE("se���L_�|��_ȭ�|����01", 1000);

	SetFwH("cg/fw/fw�����奢���_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//���߹١�
<voice name="�߹�" class="�߹�" src="voice/md04/0360490b25">
������������

</PRE>
	SetTextEXH();
	TypeBeginTimeHIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������Υ�ȥ����奢���

	StR(1000, @0, @0, "cg/st/st����Υ�_���_�Ʒ�.png");
	StL(1000, @0, @0, "cg/st/st�����奢���_ͨ��_˽��.png");
	FadeStL(500, false);
	FadeStR(500, true);

	Wait(500);

	SetFwH("cg/fw/fw�����奢���_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//���߹١�
<voice name="�߹�" class="�߹�" src="voice/md04/0360500b25">
������������ũ������

{	FwH("cg/fw/fw����Υ�_ͨ��b.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0360510b03">
�����ǡ�
��·�ȡ����ް�������

{	FwH("cg/fw/fw�����奢���_ͨ��.png");}
//���߹١�
<voice name="�߹�" class="�߹�" src="voice/md04/0360520b25">
��������

{	FwH("cg/fw/fw����Υ�_ͨ��b.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0360530b03">
��������

{	FwH("cg/fw/fw�����奢���_ͨ��.png");}
//���߹١�
<voice name="�߹�" class="�߹�" src="voice/md04/0360540b25">
�����Ǳ�������

{	FwH("cg/fw/fw����Υ�_ͨ��b.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0360550b03">
��������

{	FwH("cg/fw/fw�����奢���_ͨ��.png");}
//���߹١�
<voice name="�߹�" class="�߹�" src="voice/md04/0360560b25">
���������Ů����ʹ�ߡ�
��ά�������ƽ��֯�Ĵ����ߡ���

</PRE>
	SetTextEXH();
	TypeBeginHIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����å�


/*

	CreateTextureEX("�����奢���", 1000, @-100, @-100, "cg/st/resize/st�����奢���_ͨ��_˽��_l.png");
	Request("�����奢���", Smoothing);
	Zoom("�����奢���", 0, 1500, 1500, null, true);

	Fade("�����奢���", 150, 1000, null, true);

*/

	CreateWindow("�}�ݷ���", 6000, Center, -50, 1024, 388, true);
	SetAlias("�}�ݷ���","�}�ݷ���");
	CreateColorEX("�}ɫ100", 16050, "BLACK");

	CreateTextureEX("�}�ݷ���/�}�ݱ���", 16100, 100, -144, "cg/bg/bg018_֪�̄���_01.jpg");
	Request("�}�ݷ���/�}�ݱ���", Smoothing);
	Rotate("�}�ݷ���/�}�ݱ���", 0, @0, @180, @0, null,true);
	Zoom("�}�ݷ���/�}�ݱ���", 0, 2000, 2000, null, true);
	SetShade("�}�ݷ���/�}�ݱ���", HEAVY);

	CreateTextureEX("�}�ݷ���/�}���}", 16200, -200, -350, "cg/st/resize/st�����奢���_ͨ��_˽��ex.png");
	Move("�}�ݷ���", 0, @0, @128, null, true);


	Move("�}�ݷ���/�}�ݱ���", 500, @0, @100, AxlDxl, false);
	Move("�}�ݷ���/�}���}", 500, @0, @300, AxlDxl, false);

	Fade("�}ɫ100", 300, 300, null, false);
	Fade("�}�ݷ���/�}�ݱ���", 500, 1000, null, false);
	Fade("�}�ݷ���/�}���}", 500, 1000, null, true);

	Wait(500);


	SetFwH("cg/fw/fw�����奢���_�Ф�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//���߹١�
<voice name="�߹�" class="�߹�" src="voice/md04/0360570b25">
�������Ϊ�˱�����Ҫɱ����?!��

{	FwH("cg/fw/fw����Υ�_���.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0360580b03">
������
��ֻ�ǣ��㰭���¡���

</PRE>
	SetTextEXH();
	TypeBeginHIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Щ`���䚢��
	OnSE("se���L_�|��_ȭ�|�k�h01", 1000);

	CreateColorSPadd("��", 15000, "White");

	DeleteStA(0,true);
	Delete("�}ɫ100");
	Delete("�}�ݷ���*");
	Wait(200);
	FadeDelete("��", 1000, true);

	Wait(500);

	OnSE("se����_�n��_ܞ��03", 1000);

	Wait(1000);

	SetFwH("cg/fw/fw����Υ�_��ʹ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0360590b03">
������������ʵ�ڲ��뿴���Ǹ��ѿ��ı��顣��

{	FwH("cg/fw/fw�������_Ц�.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md04/0360600a13">
���ɵúã�������
����������һ�вŸոտ�ʼ����

//��������ա�
<voice name="�������" class="�������" src="voice/md04/0360610a13">
��������ٶȿ��ƣǣȣѣ��ɱ���ȡ�����׵���
������ը�����ֳǣ���

{	FwH("cg/fw/fw����Υ�_��ʹ.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0360620b03">
���������������¡�
�����ȣ�����ӳ��ܱ߳���½��������

{	FwH("cg/fw/fw��霔�_ͨ��b.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/md04/0360630b37">
����ô�Ϳ����ɴ��°ɡ�
����Ϊ��פ���ƺ��ѿ�ʼ��������

{	FwH("cg/fw/fw����Υ�_���.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0360640b03">
��ʲô����

{	FwH("cg/fw/fw����Υ�_��ʹ.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0360650b03">
��������������ԭ����ˡ�
�����ް����Ǽһ��Ҫ���°���ɡ���

{	FwH("cg/fw/fw�������_ͨ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md04/0360660a13">
��������������Ǵ�æ��
���������������������ɵ�ʱ�򡣡�

{	FwH("cg/fw/fw�������_����.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md04/0360670a13">
��Ҫ�������޾����Ž�פ�����˶����ǹ���
�������޷����׵�������һɨ�����ˡ�
��������°ɣ���

{	FwH("cg/fw/fw����Υ�_ͨ��b.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0360680b03">
�������ţ����ڡ�����

</PRE>
	SetTextEXH();
	TypeBeginHIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStA(300,false);

//�����������l���z��Ǥ�������

	OnSE("se����_����_�ߤ�07", 1000);


//������֦�Ȥ���
	WaitKey(500);
	SetVolume("@OnSE*", 1000, 0, null);

	OnSE("se�ճ�_����_���_��02", 1000);
	StL(1000, @-50, @0, "cg/st/st����֦_ͨ��_˽��d.png");
	StC(1000, @-400, @0, "cg/st/st����_ͨ��_˽��.png");
	Move("@StC*", 400, @50, @0, null, false);
	Move("@StL*", 300, @50, @0, null, false);
	FadeStL(300, false);
	FadeStC(300, true);

	Wait(200);

	SetFwH("cg/fw/fw����֦_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//������֦��
<voice name="����֦" class="����֦" src="voice/md04/0360690a03">
���������ǡ�����

{	FwH("cg/fw/fw����_�ϱ�.png");}
//�����衿
<voice name="����" class="����" src="voice/md04/0360700a04">
������һ���𣡡�

{	FwH("cg/fw/fw����Υ�_ͨ��b.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0360710b03">
�������ξ�𡭡���

{	FwH("cg/fw/fw�������_˼��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md04/0360720a13">
������

{	FwH("cg/fw/fw�������_����.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md04/0360730a13">
����һ������ȫ��������ˡ�
������������ɹ��ڶ��Ρ�����

{	FwH("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/md04/0360740a03">
��������

{	FwH("cg/fw/fw�������_Ц�.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md04/0360750a13">
������һ�仰��
����û�йԹԵز����ڿ㣿��

{	FwH("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/md04/0360760a03">
�������ء���

{	FwH("cg/fw/fw�������_�~��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md04/0360770a13">
������Σ������!!
���Ͷ�������ŷ��������!!��

</PRE>
	SetTextEXH();
	TypeBeginTimeHIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����
//���k����
	SetVolume("@mbgm*", 3000, 0, null);

	StR(1000, @0, @0, "cg/st/st��霔�_ͨ��_˽��.png");
	FadeStR(300, false);
	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//�����衿
<voice name="����" class="����" src="voice/md04/0360780a04">
������������

{	FwC("cg/fw/fw��霔�_ͨ��b.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/md04/0360790b37">
������������

{	FwC("cg/fw/fw����_����.png");}
//�����衿
<voice name="����" class="����" src="voice/md04/0360800a04">
����ô��
����Ȼ�����ֵط���������δ��Ҳ̫���ˡ���

{	FwC("cg/fw/fw��霔�_ͨ��b.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/md04/0360810b37">
���������֡�����

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/md04/0360820a03">
�����ţ���

{	FwC("cg/fw/fw����_�ϱ�.png");}
//�����衿
<voice name="����" class="����" src="voice/md04/0360830a04">
����С�������¡�
����������ǰһ������

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/md04/0360840a03">
��������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��С��������

	WaitKey(800);
	Move("@StC*", 200, @50, @0, Dxl2, false);

	SetFwC("cg/fw/fw����_�ϱ�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//�����衿
<voice name="����" class="����" src="voice/md04/0360850a04">
�����У�
��������<RUBY text="������">������ʥ</RUBY>����

//�����衿
<voice name="����" class="����" src="voice/md04/0360860a04">
����װ��֮ǰ�ͻᱻ�ɵ�!!��

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/md04/0360870a03">
������������

{	SoundPlay("@mbgm06",0,1000,true);
	FwC("cg/fw/fw��霔�_ͨ��b.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/md04/0360880b37">
����Ȼ�ǽ����𡣡�

{	FwC("cg/fw/fw��霔�_ͨ��a.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/md04/0360890b37">
���Ҹ��ǡ�����ȷ�ġ�
����Ҳ�гɹ��Ŀ��ܡ����ö��������֮һ��
�������𣿡�

{	FwC("cg/fw/fw����_����.png");}
//�����衿
<voice name="����" class="����" src="voice/md04/0360900a04">
��������

{	FwC("cg/fw/fw��霔�_ͨ��a.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/md04/0360910b37">
����Ϊ������û��װ�ף��Ҷ���ɱ��
��������֦����

{	FwC("cg/fw/fw����_�ϱ�.png");}
//�����衿
<voice name="����" class="����" src="voice/md04/0360920a04">
���ҲŲ����ڲ����Ķľ��ж������˵�������
�����������ı��԰ɡ���

{	FwC("cg/fw/fw��霔�_˼��.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/md04/0360930b37">
��Ŷ����

{	FwC("cg/fw/fw����_�ϱ�.png");}
//�����衿
<voice name="����" class="����" src="voice/md04/0360940a04">
������ի���ˡ�
��������Ҫɱ��С�㣬����ɲ��������
��֮���ˡ���

{	FwC("cg/fw/fw��霔�_ͨ��b.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/md04/0360950b37">
��������

//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/md04/0360960b37">
����ô˵����

{	FwC("cg/fw/fw����_�ϱ�.png");}
//�����衿
<voice name="����" class="����" src="voice/md04/0360970a04">
����ͼ�����ػ����˵���ֻ����ν��������
���������Դ�С�����ֵ�ʱ��ɴ����ɱ��
���Ǳߵ��ֶ�����ڡ���

{	FwC("cg/fw/fw�������_�~��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md04/0360980a13">
���ף����𣿡�

{	FwC("cg/fw/fw��霔�_ͨ��b.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/md04/0360990b37">
����������

{	FwC("cg/fw/fw����_�ϱ�.png");}
//�����衿
<voice name="����" class="����" src="voice/md04/0361000a04">
�������ǿ�ũ������
��������ɱ��˭������ν����

{	FwC("cg/fw/fw����_����.png");}
//�����衿
<voice name="����" class="����" src="voice/md04/0361010a04">
������������
����������Σ���

{	FwC("cg/fw/fw��霔�_ͨ��b.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/md04/0361020b37">
������������

{	FwC("cg/fw/fw����_����.png");}
//�����衿
<voice name="����" class="����" src="voice/md04/0361030a04">
������������

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��霔�_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/md04/0361040b37">
�������Ǻǡ�����

{	FwC("cg/fw/fw����_�ϱ�.png");}
//�����衿
<voice name="����" class="����" src="voice/md04/0361050a04">
����С�㡣
������ӡ���

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/md04/0361060a03">
��ɴ������

{	FwC("cg/fw/fw����_����.png");}
//�����衿
<voice name="����" class="����" src="voice/md04/0361070a04">
����㡣
����С�㲻��������˵���������

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/md04/0361080a03">
��������

{	FwC("cg/fw/fw����_�ϱ�.png");}
//�����衿
<voice name="����" class="����" src="voice/md04/0361090a04">
�����ﲻ�ǻ�ëѾͷ�ó����ĵط���
�����ߣ���

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������֦���ߤ�

	DeleteStL(300,false);
//	DeleteStC(300,false);


	SetFwC("cg/fw/fw����֦_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
//������֦��
<voice name="����֦" class="����֦" src="voice/md04/0361100a03">
��ɴ������

{	FwC("cg/fw/fw����_����.png");}
//�����衿
<voice name="����" class="����" src="voice/md04/0361110a04">
������������

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/md04/0361120a03">
���������Ҫ��ְ�����֪��?!
���Ǳ���Ϊ���˾�����������Ư����Ĺ־����
�����Ų�����

//������֦��
<voice name="����֦" class="����֦" src="voice/md04/0361130a03">
����Ҫ��ȫ������!!��

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����ä��ä��á�
	OnSE("se����_����_�ߤ�03", 1000);

	SetFwC("cg/fw/fw����_ƣ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
//�����衿
<voice name="����" class="����" src="voice/md04/0361140a04">
�������⻰����û����
������Ϊ�������һ��ܻ�ꣿ��

{	FwC("cg/fw/fw��霔�_ͨ��a.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/md04/0361150b37">
��������ȥ�ɡ�
�����ۼ��꣬��ʮ�꣬�����ꡣ��

{	FwC("cg/fw/fw��霔�_ͨ��b.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/md04/0361160b37">
��ֻҪ�����绹����ĩ�ա�
��û��ɣ�<RUBY text="������Ůʿ">ȾѪ�Ĺ���</RUBY>����

{	FwC("cg/fw/fw����_����.png");}
//�����衿
<voice name="����" class="����" src="voice/md04/0361170a04">
��������

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������ȳ��

	SetFwC("cg/fw/fw��霔�_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/md04/0361180b37">
������ȫû�䡣
������ʮ��ǰ�͡���˿��δ�䡣��

{	FwC("cg/fw/fw��霔�_ͨ��a.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/md04/0361190b37">
�����������������

{	FwC("cg/fw/fw����_����.png");}
//�����衿
<voice name="����" class="����" src="voice/md04/0361200a04">
������������

{	FwC("cg/fw/fw����_�ϱ�.png");}
//�����衿
<voice name="����" class="����" src="voice/md04/0361210a04">
��С���ɴ��˵����Ѿ���������ˡ���

{	FwC("cg/fw/fw��霔�_ͨ��b.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/md04/0361220b37">
���ǰ�������

{	FwC("cg/fw/fw����_����.png");}
//�����衿
<voice name="����" class="����" src="voice/md04/0361230a04">
��������

{	FwC("cg/fw/fw����_�ϱ�.png");}
//�����衿
<voice name="����" class="����" src="voice/md04/0361240a04">
���������ʡ�����Ϊ�λ������ֵط��𣿡�

{	FwC("cg/fw/fw��霔�_����.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/md04/0361250b37">
��Ϊ����������

{	FwC("cg/fw/fw��霔�_ͨ��b.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/md04/0361260b37">
��������������

{	FwC("cg/fw/fw����_����.png");}
//�����衿
<voice name="����" class="����" src="voice/md04/0361270a04">
��������

{	FwC("cg/fw/fw��霔�_ͨ��b.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/md04/0361280b37">
��������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/md04/0361290a04">
�������ˡ�����

{	FwC("cg/fw/fw��霔�_ͨ��b.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/md04/0361300b37">
���ǵġ�
����ʧȥ����ࡣ��

{	FwC("cg/fw/fw��霔�_����.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/md04/0361310b37">
�����Ѳ����ǡ���
�����������㲢����սʱ�����ˡ���

{	FwC("cg/fw/fw����_����.png");}
//�����衿
<voice name="����" class="����" src="voice/md04/0361320a04">
������������

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��霔�_˼��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/md04/0361330b37">
���Ҳ�����˭��
��������Ը��������Щ����������

{	FwC("cg/fw/fw��霔�_ͨ��b.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/md04/0361340b37">
��ֻ���£�һ��������
��Ϊ���ػ���������������
��������������һ�С���

//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/md04/0361350b37">
��ֻ�ǡ���Ϊ�˸�Ϊ�ӽ��ظ�����Ĵ��ڡ�����

{	FwC("cg/fw/fw����_ƣ��.png");}
//�����衿
<voice name="����" class="����" src="voice/md04/0361360a04">
����������
��ֻ������������������𣿡�

{	FwC("cg/fw/fw��霔�_ͨ��b.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/md04/0361370b37">
���ǵġ���

{	FwC("cg/fw/fw����_���.png");}
//�����衿
<voice name="����" class="����" src="voice/md04/0361380a04">
����Ϊɴ��û���������𡭡���

{	FwC("cg/fw/fw��霔�_ͨ��b.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/md04/0361390b37">
��������

//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/md04/0361400b37">
���ǰ��������ǡ�
�����ˣ��һ���һ��������δ����������

{	FwC("cg/fw/fw��霔�_����.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/md04/0361410b37">
���һ�û�У������㡣��

{	FwC("cg/fw/fw��霔�_ͨ��b.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/md04/0361420b37">
���ҴӲ������������㡣��

{	FwC("cg/fw/fw����_����.png");}
//�����衿
<voice name="����" class="����" src="voice/md04/0361430a04">
������С���ɡ�����

{	FwC("cg/fw/fw��霔�_ͨ��b.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/md04/0361440b37">
��Ԥ������ȷ�ġ���

{	FwC("cg/fw/fw��霔�_ͨ��a.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/md04/0361450b37">
�����й�Ȼ���ҵ�����֮�С���

{	FwC("cg/fw/fw��霔�_ͨ��b.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/md04/0361460b37">
���ҡ����ǵ������㲻�ɡ�
������Ϊ��ӭ������������

{	FwC("cg/fw/fw����_����.png");}
//�����衿
<voice name="����" class="����" src="voice/md04/0361470a04">
������������

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_���.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
//�����衿
<voice name="����" class="����" src="voice/md04/0361480a04">
����Զ����

{	FwC("cg/fw/fw��霔�_ͨ��b.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/md04/0361490b37">
����������

{	FwC("cg/fw/fw����_���.png");}
//�����衿
<voice name="����" class="����" src="voice/md04/0361500a04">
����Զ����С���ɴ��ˡ�
����ʮ��ǰ������������ͬ�͵�����ȱ�¡���

//�����衿
<voice name="����" class="����" src="voice/md04/0361510a04">
�����Ѿ������벻�����ˡ���

{	FwC("cg/fw/fw��霔�_����.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/md04/0361520b37">
�������ǰ���
����Զ����

{	FwC("cg/fw/fw��霔�_ͨ��b.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/md04/0361530b37">
���Ѿ�������Զ�ˡ�����

{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/md04/0361540a04">
��������

{	FwC("cg/fw/fw��霔�_ͨ��b.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/md04/0361550b37">
��������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("�Ϸ�", 10000, Center, Middle, "cg/bg/bg018_֪�̄���_01.jpg");
	Fade("�Ϸ�", 300, 1000, null, true);


	CreateWindow("�}�ݷ���", 4000, 512, Middle, 512, 576, false);
	SetAlias("�}�ݷ���","�}�ݷ���");

	CreateTextureSP("�}�ݷ���/����", 4100, -361, -70, "cg/bg/bg018_֪�̄���_01.jpg");
	SetShade("�}�ݷ���/����", HEAVY);
	Zoom("�}�ݷ���/����", 0, 2000, 2000, null, true);

	CreateTextureSP("�}�ݷ���/�����}", 4200, Center, Middle, "cg/st/resize/st��霔�_���L_˽��ex.png");
	Request("�}�ݷ���/�����}", Smoothing);
	Zoom("�}�ݷ���/�����}", 0, 800, 800, null, true);
	Move("�}�ݷ���/�����}", 0, 318, -644, null, true);
//	SetBlur("�}�ݷ���/�����}", true, 1, 500, 70, false);

	CreateTextureSP("�}�ݳ��󱳾�", 3000, -597, -280, "cg/bg/bg018_֪�̄���_01.jpg");
	SetShade("�}�ݳ��󱳾�", HEAVY);
	Zoom("�}�ݳ��󱳾�", 0, 2000, 2000, null, true);

	CreateTextureSP("�}�ݳ��������}", 3100, 500, 250, "cg/st/resize/st����_���L_˽��ex.png");
	Request("�}�ݳ��������}", Smoothing);
	Zoom("�}�ݳ��������}", 0, 480, 480, null, true);
	Move("�}�ݳ��������}", 0, -617, -1090, null, true);
//	SetBlur("�}�ݳ��������}", true, 1, 500, 70, false);


	OnSE("se����_����_���S03",1000);
	OnSE("se���L_����_������03",1000);
	OnSE("se���L_����_������02",1000);


	Move("�}�ݳ��������}", 1500, -500, -740, Dxl2, false);
	Move("�}�ݳ��󱳾�", 1500, -520, -115, Dxl2, false);

	Move("�}�ݷ���/�����}", 1500, 100, -400, Dxl2, false);
	Move("�}�ݷ���/����", 1500, -460, 40, Dxl2, false);

	FadeDelete("�Ϸ�", 500, true);
	Wait(1500);
	DeleteStA(0,true);

//	StL(1000, @0, @0, "cg/st/st����_���L_˽��.png");
//	FadeStL(300, true);
	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0221]
//�����衿
<voice name="����" class="����" src="voice/md04/0361560a04">
����������ͨ�������

{	FwC("cg/fw/fw��霔�_����.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/md04/0361570b37">
���ҷǹ����ɡ�
������������˲���̫Σ���ˡ���

{	FwC("cg/fw/fw����_�ϱ�.png");}
//�����衿
<voice name="����" class="����" src="voice/md04/0361580a04">
������С����!!��

{	FwC("cg/fw/fw��霔�_ͨ��a.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/md04/0361590b37">
�������㡪��
���Ҿ��޷��õ�������ʸ�!!��

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Move("�}�ݷ���/�����}", 200, @0, @700, Axl1, false);
	Move("�}�ݳ��������}", 200, @0, @700, Axl1, false);
	Zoom("�}�ݷ���/�����}", 200, 2000, 2000, Axl1, false);
	Zoom("�}�ݳ��������}", 200, 2000, 2000, Axl1, false);



	CreateColorSPadd("�\Ļ��", 30000, "WHITE");
	DrawTransition("�\Ļ��", 200, 0, 1000, 100, null, "cg/data/circle_03_00_0.png", true);
	Delete("�\Ļ��");


	CreateColorSP("�\Ļ��", 5000, "BLACK");
	Fade("�\Ļ��", 100, 1000, null, true);
	DeleteStCL(0,true);
	CreateTextureSPadd("�nͻ", 15000, @0, @0, "cg/ef/ef040_�����nͻ.jpg");

	OnSE("se���L_����_�z_���04", 1000);
	OnSE("se���L_����_Ź��05", 1000);

	Zoom("�nͻ", 0, 1200, 1200, null, false);
	Zoom("�nͻ", 500, 1500, 1500, Dxl2, false);
	Shake("�nͻ", 500, 50, 0, 0, 0, 1000, Dxl3, true);

	SetVolume("SE*", 1500, 0, null);
	SetVolume("OnSE*", 1500, 0, null);


	ClearWaitAll(1500, 1500);


}

..//������ָ��
//�Υե����롡"md04_037.nss"
