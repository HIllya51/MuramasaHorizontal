//<continuation number="590">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma03_008.nss_MAIN
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
	#bg033_���Lլ����˽��_03a=true;


	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "ma03_009.nss";

}

scene ma03_008.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"ma03_007.nss"

//���\
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 10, "#000000");
	Delete("�ϱ���");

	SetFwC("cg/fw/fw�դ�_Ц��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//���դʡ�
<voice name="�դ�" class="�դ�" src="voice/ma03/0080010b06">
��������硭����

{	FwC("cg/fw/fw�դ�_Ц��.png");}
//���դ���
<voice name="�դ�" class="�դ�" src="voice/ma03/0080020b05">
��������ʿ���ˡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ڶ����Ί���

	StL(1000, @0, @0,"cg/st/st�դ�_ͨ��_˽��.png");
	StR(1000, @0, @0,"cg/st/st�դ�_ͨ��_˽��.png");
	FadeStA(300,true);


	SetFwC("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="����" src="voice/ma03/0080030a00">
���������ǡ�����

{	FwC("cg/fw/fw�դ�_ͨ��.png");}
//���դʡ�
<voice name="�դ�" class="�դ�" src="voice/ma03/0080040b06">
���Ǹ�����˵��������

{	FwC("cg/fw/fw�դ�_ͨ��.png");}
//���դ���
<voice name="�դ�" class="�դ�" src="voice/ma03/0080050b05">
���ҡ�������ʿ���ˡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����Хä�Ѫ�wĭ�ã�

	DeleteStA(0,true);

	OnSE("se���L_����_�����01",1000);
	SL_right(@0, @0,2000);
	SL_rightfade2(10);

	WaitKey(300);

	CreateSE("SE01","se����_Ѫ_Ѫ���֤�01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateTextureSP("�}�ţ�50", 50, Center, Middle, "cg/ef/ef007_����Ѫ���֤�.jpg");

	SetFwC("cg/fw/fw�դ�_Ц��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//���դʡ�
<voice name="�դ�" class="�դ�" src="voice/ma03/0080060b06">
��ϲ������

{	FwC("cg/fw/fw�դ�_Ц��.png");}
//���դ���
<voice name="�դ�" class="�դ�" src="voice/ma03/0080070b05">
����ϲ������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0080080a00">
������?!��

{	FwC("cg/fw/fw�դ�_�դ�.png");}
//���դ���
<voice name="�դ�" class="�դ�" src="voice/ma03/0080090b05">
����Ϊ�������ߴ�����ôƯ����ɱ��
�������أ���

{	FwC("cg/fw/fw�դ�_Ц��.png");}
//���դʡ�
<voice name="�դ�" class="�դ�" src="voice/ma03/0080100b06">
���ǺǺǡ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0080110a00">
������������������������

{	NwC("cg/fw/nw������.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma03/0080120b56">
���ǰ���
����Ҳ�����㣡��

{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0080130a00">
��?!��

{	FwC("cg/fw/fw���w_���.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma03/0080140b56">
����ôƯ����ɱ�����Ұ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���������w
//�����Хä�Ѫ

	FadeDelete("�}�ţ�50", 1000, true);

	StC(1000, @0,@0,"cg/st/st���w_ͨ��_�Ʒ�.png");
	FadeStC(500,true);

	WaitKey(1000);
	CreateColorSP("�}��ܞ��", 100, "#000000");
	SL_leftdown(@0, @0,2000);

	DeleteStA(0,true);

	OnSE("se���L_����_�����01",1000);
	SL_leftdownfade2(10);

	CreateTextureEX("�}�ţ�51", 51, Center, Middle, "cg/ef/ef006_����Ѫ���֤�.jpg");
	Fade("�}�ţ�51", 0, 600, null, true);

	CreateSE("SE02","se����_Ѫ_Ѫ���֤�01");
	MusicStart("SE02",0,1000,0,1000,null,false);
	Delete("�}��ܞ��");


	SetFwC("cg/fw/fw���w_Ц�b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//�����w��
<voice name="���w" class="���w" src="voice/ma03/0080150b56">
���ն���������������

{	FwC("cg/fw/fw����_�ֲ�.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0080160a00">
����������������������������������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
��ԭ���ҡ�
��ԭ���ҡ�
����ԭ���ҡ�

�������޷��������������
��ʮ����˵��ȴ˵�����ڵ�һ�仰��

����Ϊ��֪����
���Լ����޷��õ�ԭ�µġ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�դ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//���դʡ�
<voice name="�դ�" class="�դ�" src="voice/ma03/0080170b06">
����硫��

{	FwC("cg/fw/fw�դ�_ͨ��.png");}
//���դ���
<voice name="�դ�" class="�դ�" src="voice/ma03/0080180b05">
����ʿ���ˡ���

{	FwC("cg/fw/fw���w_ͨ��a.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma03/0080190b56">
�����������
��������Ļ�顣��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
��ס�ڡ�
������ס�ڡ�
���Ҳ�������

��������ʲô����֮�ʡ�
��������Ҳ�á���Թ��Ҳ�á�

�������Ǵ̴��������Ķ����ź�Ҳ�á�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



//���ܥá��פ��F��륨�ե�����
//���y�Ǻš��V
	SetVolume("SE*", 100, 0, null);
	CreateColorEXadd("�}�ե�", 5000, "#FFFFFF");
	Fade("�}�ե�", 50, 1000, null, true);
	PrintGO("�ϱ���", 15000);
	CreateColorSP("�}��ܞ", 10, "#000000");
	FadeDelete("�ϱ���", 600, true);

	CreateSE("SE01b","se����_��_��Ġ����02");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	CreateColorSP("�}�ݲ��y", 2000, "#4AC6FF");
	CreateColorSP("�}�ݲ��y�r", 2100, "#000000");
	DrawTransition("�}�ݲ��y", 600, 0, 1000, 100, Dxl3, "cg/data/circle_02_00_0.png", false);
	WaitKey(30);
	DrawTransition("�}�ݲ��y�r", 600, 0, 1000, 100, Dxl2, "cg/data/circle_02_00_0.png", true);
	Delete("�}�ݲ��y");

	CreateTextureEXadd("�}��100", 1000, Center, InBottom, "cg/st/3d�y�Ǻ�_����_ͨ��.png");
	DrawEffect("�}��100", 3600000, "LowWave", 30, 30, null);
	Fade("�}��100", 0, 600, null, true);

	WaitPlay("SE01b", null);

	FadeDelete("�}�ݲ��y�r", 600, true);

	SetFwL("cg/fw/fw�y�Ǻ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//���⡿
<voice name="��" class="��" src="voice/ma03/0080200a14">
�����ʹ���ء�
������������

//���⡿
<voice name="��" class="��" src="voice/ma03/0080210a14">
�������<RUBY text="����">����</RUBY>��ʹ�ࡣ��

//���⡿
<voice name="��" class="��" src="voice/ma03/0080220a14">
����Ҳ��ʹ�࡭��
�����ʹ�಻�ϴ����ҵ��ġ���

//���⡿
<voice name="��" class="��" src="voice/ma03/0080230a14">
�������<RUBY text="����">����</RUBY>��ʹ�ࡣ��

//���⡿
<voice name="��" class="��" src="voice/ma03/0080240a14">
��һ�����Ͱɣ����������ľ�����
������ǵ�����ʹ�డ����

//���⡿
<voice name="��" class="��" src="voice/ma03/0080250a14">
�������ĸ�ӹ�ͬ����ʹ�ࡣ
�����������Ϊ�˴����������޷��ӱܵ�
��ʼ��ʽ����

//���⡿
<voice name="��" class="��" src="voice/ma03/0080260a14">
���һ��þ�ȫ����Ѫ������䡣
�����㣬��Ϊ���ĸ�ס�
�����ԡ�����������

//���⡿
<voice name="��" class="��" src="voice/ma03/0080270a14">
����Ȼ������ˡ���
�����벻Ҫ���ǵذ����Ұɡ���

</PRE>
	SetTextEXL();
	TypeBeginTimeLIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����Lլ�ڡ������β���
	PrintBG("�ϱ���", 25000);
	OnBG(100,"bg033_���Lլ����˽��_03a.jpg");
	FadeBG(0,true);

//�������SE��Ҫ�������Фä����Ϥ���Ф��β��������
	OnSE("se����_����_���01",1000);
	Delete("�ϱ���");

	SetFwC("cg/fw/fw����_ƣ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//��������
<voice name="����" class="����" src="voice/ma03/0080280a00">
��������������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
�������۾��������Լ������ڱ����С�
����Χ����ĸо����Լ�ӳ�������Ĺ⾰������İ����
��Ȼ������˵��ʮ����Ϥ��

���������𳤼ҵ�һ�䷿��
��������ҵķ��䡣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0080290a03">
�������������𣿡�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������֦

	SoundPlay("@mbgm30",0,1000,true);
	StR(1000, @0, @0,"cg/st/st����֦_ͨ��_˽��c.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fw����_ƣ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//��������
<voice name="����" class="����" src="voice/ma03/0080300a00">
��������ξ����
������ʧ���ˡ�Ӧ���Ǵ�ξ���¡���

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0080310a03">
���ղŵ��£����ǵ��𣿡�

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0080320a00">
�������ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
��û��
������Ԥ��֮��Ļ�������ҡ��ʧȥ���ǡ���

�������������ǣ��ɺ���ͳ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//��������
<voice name="����" class="����" src="voice/ma03/0080330a00">
����˳�̬���������ˡ�
��ʵ���������������

{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0080340a03">
��û�е��¡�
�����ǲ�Ӧ�õ�Ǹ�����˽⾰��
���˵Ŀ��գ���˵Щ��֪���صĻ�����

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0080350a03">
����Դ�����Ǽ��£�ʮ�������ء���
����Ȼ��Ҳ����⡭����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0080360a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
���Ҳ�δ���������е����꣬���ǳ�Ĭ��������ȥ��
�𽥻ָ��侲��
����Ȼ��Ϣʱ�䲻����ȴҲ����Ч����

�����ƹ�ȥ������Сʱ���ҡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//��������
<voice name="����" class="����" src="voice/ma03/0080370a00">
����û����Ϊ�ҵ����ˣ��������������
���벻�㣿��

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0080380a03">
��û�С��Ҵ������к�����λ��������
���ϳ����ˡ�
���������ԭί������˵�������ܹ�
����ҡ����ǹ��˲�������ء���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0080390a00">
����������𡭡��Ȼ�Ҫ������л��
��Ȼ��ҲҪ���ξ���µ�л��
���ͷ������ϣ�ʵ������ֱ�Ǹ����

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0080400a03">
�����ǵģ��������Ҹ��������鷳�ˡ�
�����ǹ�ִ����
��������ʲô�����𣿡�

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0080410a00">
������û���κβ��ʡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE01","se����_����_����01");
	MusicStart("SE01",0,1000,0,1000,null,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
����������
��Ҳ���ǵ��µ�ʱ��ײ���ˣ������Щ��ʹ����������
���ѣ����������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
//��������
<voice name="����" class="����" src="voice/ma03/0080420a00">
�����С����ô�ˣ�
����ȥ���𣿡�

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0080430a03">
��û�С���������ҵ�������
������������Լ������û᲻��
�Ծ���������ɸ�������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0080440a00">
��������
����ô���б�Ҫȥ�����ᡣ��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
����վ������������Ҳû�б�ĵط���ʹ��
�������ˡ���˵����ʲôʱ��ͻ�Ҫս������ϣ���Լ�
������״̬һֱ����ȫ�ް���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_Ц�a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
//��������
<voice name="����" class="����" src="voice/ma03/0080450a00">
�������߰ɡ���

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0080460a03">
�������������ˡ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0080470a00">
���ǡ���

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0080480a03">
������ġ�����˵�˶���Ļ��𣿡�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
���Һ������ָ����ʲô��
����ҡ��ҡͷ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_Ц�a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
//��������
<voice name="����" class="����" src="voice/ma03/0080490a00">
��û�С�
���侲��������˼�������¶����ĵ���
����ת���Ǻ����ѵİɡ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0080500a00">
����������ô�ܾ�����Ҳ���������
����������и����Ѳ�Ļ�����̬�������ˡ�
��Ϊ�����п��������ǲ�֪���ĵط�
����Σ�ա���

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0080510a03">
���ǵġ�����

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0080520a00">
�����ǵ���һ�㣬��Ӧ����Ҫ�����ȥ
Ҳ��ʧΪ����֮�ߡ�
����ӵ���ų�Խ�������������
����Ӧ�ò���������񡣡�

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0080530a00">
����������˵���ⷽ���������Ǻ��а�����
����Ȼ���ǵ������Σ���ԣ�������Ӧ��
����ѧ���������У������Ҳ�޿��κ��ˡ�
����˵�������ڵõ������½�ɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
��Ҳ����˵���ʹ�ξ��һ����
��������仰��û˵���ڡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0080540a03">
����Ҳ��Ϊ��������
��������Ϊ��פ�����õ�ʵ��������Σ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0080550a00">
���Ҳ����������ж������
����������������Ա��Ҳ���Ǻ���һ��
���Դ����ˡ���

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0080560a03">
��������
�����Ҫ����һ��С��������ҡ�����

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0080570a00">
�������ݷõ������ҡ�
����ô�����Լ�������Ҳ��
��������ɣ���

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0080580a03">
�������ðɡ�
�������Ļ�����λѧ��Ҳһ��
������˵ġ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0080590a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	PrintGO("�ϱ���", 25000);
	CreateColorSP("�}��ܞ", 10000, "#000000");
	DrawDelete("�ϱ���", 1000, 100, "blind_01_00_1", true);

}

..//������ָ��
//�Υե����롡"ma03_009.nss"