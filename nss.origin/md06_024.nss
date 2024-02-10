//<continuation number="1140">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md06_024.nss_MAIN
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
	#bg016_���@a_01=true;
	#bg016_���@d_01=true;
	#ev260_�Ƕ��ݤ������Ĥ뾰���ȴ���=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md06_025.nss";

}

scene md06_024.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"md06_023.nss"

//�����@
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\", 5000, "BLACK");

	OnBG(100, "bg016_���@a_01.jpg");
	FadeBG(0, true);

	CreateSE("SE01L","se����_����_����᤭01_L");
	MusicStart("SE01L",600,1000,0,1000,null,true);

	Wait(1000);

	Delete("�ϱ���");
	DrawDelete("�\", 1000, 100, "blind_01_00_1", true);

	SoundPlay("@mbgm29", 0, 1000, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
��ԭ������ֻ�Ǹ�����Ĺ�԰��Ψ�����Ǽ�������
�Ͷ�ͯ������ʩ��
��������ȴһ����̬��

�����������뻮һ������ϯ�ӡ���̺�����ϲ�����
������ڷ��Ÿ�ʽ��Ʒ��һ���Ƿ�����Ʒ���ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE01L*", 1000, 500, null);

	StR(1000, @0, @0,"cg/st/st����_ͨ��_˽��.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="��������" src="voice/md06/0240010a01">
�����У���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md06/0240020a00">
���Ǿɻ��г�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
�������Ծ߹�ģ�Ľֵ���ż���Ὺ���ʵ� 
��С�Ĺ㳡�Ա��������г�ʹ�á�
�������֣����ż����ʡ�

��ֻ��������ŵ�Ƶ�ʸ���ߣ�����ʱ��
���������ɡ�

����ս���꼰���������ֵ�����Ϊ��
׬ȡ���µ�����Ѷ�����������Ʒ��
��Ҳ����Ȼһ��������ý�ʣ�ı���
��ȡ���۵���Ʒ��

��������˫��Ҫ����������׳�������������
������г�Ҳһ������Ⱥ�еĴ󲿷ֿ���ȥ����
��һ���������������

����Ȼ������֮��Ҳ���ǿɼ������������
���У����������
���Ҵߴ�������ã�������ܵĴ�������
һ��������ȥ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStR(300,true);
	SetVolume("SE01L*", 1000, 0, null);

//���ţ֣��Ƕ��Фδ�����
	CreateColorSP("�}ɫ�\", 5000, "#000000");
	DrawTransition("�}ɫ�\", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	Wait(1000);
	OnBG(100,"bg016_���@d_01.jpg");
	FadeBG(0,true);

	DrawDelete("�}ɫ�\", 1000, 100, "blind_01_00_1", true);

	SetFwC("cg/fw/fw�Ƕ���_ͨ��.png");



//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
{	SetComic(@0,@0,11);}
//������㣯�Ƕ��̡�
<voice name="����㣯�Ƕ���" class="������Ů��" src="voice/md06/0240030e075">
��������ӭ���٣�
�����������������

</PRE>
	DeleteComic();
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
�������������ֵ���һ����İ�С��������ʮ��� 
����Ů�����������ڵ�̺�ϡ�
����������Ʒ�С���
���Ʒ�����롢�������������Ʒ����

�����ܳ�֮Ϊ�ɻ�����������Ŷ�Ҳ��֮������
��Ӧ�ò������۸����еĻ�����������
רְ�Ŷ��̾�Ӫ�İɡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��������
<voice name="����" class="����" src="voice/md06/0240040a00">
���š�����

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0240050a01">
������������������Щ�ɣ���

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/md06/0240060a00">
����֪������

{	FwC("cg/fw/fw����_Ц�.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0240070a01">
���о���ˡ���

{	FwC("cg/fw/fw�Ƕ���_ͨ��.png");}
//������㣯�Ƕ��̡�
<voice name="����㣯�Ƕ���" class="������Ů��" src="voice/md06/0240080e075">
��ȫ��ɢ�������������ء���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
����֪Ϊʲô����Ҳ��ʾͬ�⡣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_Ц�b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//��������
<voice name="����" class="����" src="voice/md06/0240090a00">
���������������ء���

{	SetComic(30,10,4);
	FwC("cg/fw/fw�Ƕ���_ͨ��.png");}
//������㣯�Ƕ��̡�
<voice name="����㣯�Ƕ���" class="������Ů��" src="voice/md06/0240100e075">
���ף���֪������ԭ������Щ����
����ѽ������ˣ���Ȼ������
<RUBY text="ʶ���Ŀ���">�����ŵ�ԩ��ͷ</RUBY>����

{	DeleteComic();}
//������㣯�Ƕ��̡�
<voice name="����㣯�Ƕ���" class="������Ů��" src="voice/md06/0240110e075">
���������ٿ��������Ļ�����

{	FwC("cg/fw/fw����_���C��.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0240120a01">
�����������øղ��е������
������˵�о��е�Σ�ա���

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/md06/0240130a00">
�����𣿡�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
���ұ�����Ȱ˵�ţ�������ǰ��һ����Ʒ��
����Ŀ���롪��ɫ�ʻ�����������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�Ƕ���_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//������㣯�Ƕ��̡�
<voice name="����㣯�Ƕ���" class="������Ů��" src="voice/md06/0240140e075">
���͹��۹��治�����Ǹ��ö�������
���������ǧ�ҵ�ʦ��Ҳ�޲����ڵ�
��ɽ�����Ŀ�ȸ��Ŀ����

{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/md06/0240150a00">
��Ŷ������������𣿡�

{	FwC("cg/fw/fw�Ƕ���_ͨ��.png");}
//������㣯�Ƕ��̡�
<voice name="����㣯�Ƕ���" class="������Ů��" src="voice/md06/0240160e075">
���⵱Ȼ��<RUBY text="��Ʒ">��Ʒ</RUBY>��
������Ҳ�ڣ����Ҹ����ڲ�Ҳ�г��� 
��ǧ��ʦ��<RUBY text="�������٣�">����ٳ�</RUBY>���ױ����֡���

{	FwC("cg/fw/fw����_���C��.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0240170a01">
��������Ȼ�е㲻�Ծ�������

{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/md06/0240180a00">
������Ǯ����

{	FwC("cg/fw/fw�Ƕ���_ͨ��.png");}
//������㣯�Ƕ��̡�
<voice name="����㣯�Ƕ���" class="������Ů��" src="voice/md06/0240190e075">
������Ҫ������Ҳ����Ϊ���ء�
����������̫�������͹ٵġ�
�۹�Ҳ�ܸߡ�����

//������㣯�Ƕ��̡�
<voice name="����㣯�Ƕ���" class="������Ů��" src="voice/md06/0240200e075">
����ǧ��ô������

{	FwC("cg/fw/fw����_Ц�b.png");}
//��������
<voice name="����" class="����" src="voice/md06/0240210a00">
�������Ǳ��ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
���������Ʒ�Ļ���
��
���ҰѺ��仰���븹�У�������Ż�ԭ����λ�á�

���������Աߣ���һ����ɫ����ĺ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//��������
<voice name="����" class="����" src="voice/md06/0240220a00">
�����ǡ�����

{	FwC("cg/fw/fw�Ƕ���_ͨ��.png");}
//������㣯�Ƕ��̡�
<voice name="����㣯�Ƕ���" class="������Ů��" src="voice/md06/0240230e075">
�����������ա�
���ٺٺ٣���Ҳ��ϡ����Ʒ������

//������㣯�Ƕ��̡�
<voice name="����㣯�Ƕ���" class="������Ů��" src="voice/md06/0240240e075">
������ɣ��������ԫ�ġ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md06/0240250a00">
����ȷ������

{	FwC("cg/fw/fw�Ƕ���_ͨ��.png");}
//������㣯�Ƕ��̡�
<voice name="����㣯�Ƕ���" class="������Ů��" src="voice/md06/0240260e075">
����Ȼû���ԣ���Ҳ���з�ζ����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0240270a00">
����ȷ������

{	FwC("cg/fw/fw�Ƕ���_ͨ��.png");}
//������㣯�Ƕ��̡�
<voice name="����㣯�Ƕ���" class="������Ů��" src="voice/md06/0240280e075">
���ָ�Ҳ�ܰ���
�������͹٣�����һ�¡���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
������ץ���ҵ��֣����Ϻ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//��������
<voice name="����" class="��������" src="voice/md06/0240290a01">
��������

{	FwC("cg/fw/fw�Ƕ���_ͨ��.png");}
//������㣯�Ƕ��̡�
<voice name="����㣯�Ƕ���" class="������Ů��" src="voice/md06/0240300e075">
����ô������

{	FwC("cg/fw/fw����_Ц�b.png");}
//��������
<voice name="����" class="����" src="voice/md06/0240310a00">
�����в����ء���

{	FwC("cg/fw/fw�Ƕ���_ͨ��.png");}
//������㣯�Ƕ��̡�
<voice name="����㣯�Ƕ���" class="������Ů��" src="voice/md06/0240320e075">
�����ֹ����ϵ��ջ󡭡�������������
����ĸо��԰ɣ���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md06/0240330a00">
����ȷ����

{	FwC("cg/fw/fw�Ƕ���_�դ�.png");}
//������㣯�Ƕ��̡�
<voice name="����㣯�Ƕ���" class="������Ů��" src="voice/md06/0240340e075">
����ѽ����
����������Ӵ��������Ҷ� 
��ʼ���Ծ��ˡ�����

{	FwC("cg/fw/fw����_Ц�b.png");}
//��������
<voice name="����" class="����" src="voice/md06/0240350a00">
���ϰ塭����

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0240360a01">
������˵ʲôѽ!!��

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md06/0240370a00">
����������

{	FwC("cg/fw/fw�Ƕ���_ͨ��.png");}
//������㣯�Ƕ��̡�
<voice name="����㣯�Ƕ���" class="������Ů��" src="voice/md06/0240380e075">
���Ǻ��ɣ���

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0240390a01">
�������ǡ���ô������

{	FwC("cg/fw/fw�Ƕ���_ͨ��.png");}
//������㣯�Ƕ��̡�
<voice name="����㣯�Ƕ���" class="������Ů��" src="voice/md06/0240400e075">
����ô������������Σ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
��������ס�ҵ��ֲ��ţ���ָ����
�ҵ��ֱ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�Ƕ���_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//������㣯�Ƕ��̡�
<voice name="����㣯�Ƕ���" class="������Ů��" src="voice/md06/0240410e075">
����΢�е�󣬲���������
�����Կ�Ŷ����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0240420a00">
�����٣���

{	FwC("cg/fw/fw�Ƕ���_ͨ��.png");}
//������㣯�Ƕ��̡�
<voice name="����㣯�Ƕ���" class="������Ů��" src="voice/md06/0240430e075">
�����ڿ��������������ò�ķ��ϣ�
���Ǽ������ۡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
���ϰ���ͬ����һ�㣬��ָ���軭�����֡�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
//��ŭ
//��������
<voice name="����" class="��������" src="voice/md06/0240440a01">
������������

{	FwC("cg/fw/fw�Ƕ���_ͨ��.png");}
//������㣯�Ƕ��̡�
<voice name="����㣯�Ƕ���" class="������Ů��" src="voice/md06/0240450e075">
������ۡ���

{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/md06/0240460a00">
��������ҿɳ����𡣡�

{	FwC("cg/fw/fw�Ƕ���_����.png");}
//������㣯�Ƕ��̡�
<voice name="����㣯�Ƕ���" class="������Ů��" src="voice/md06/0240470e075">
����ѽ�����ǵġ�
������ǽ���ʱ��������������ǰ��
����ƷŶ�������ٱ����ˡ���

{	FwC("cg/fw/fw�Ƕ���_ͨ��.png");}
//������㣯�Ƕ��̡�
<voice name="����㣯�Ƕ���" class="������Ů��" src="voice/md06/0240480e075">
��������û�취��
����Ȼ׬���˶���Ǯ����Ϊ�˿�����
�����������ô��!?��

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md06/0240490a00">
���ǡ�����

//���ˤ��䤫ŭ
{	FwC("cg/fw/fw����_ŭ��b.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0240500a01">
�����������Ҳ���ɿ��˰ɡ�����

{	FwC("cg/fw/fw�Ƕ���_ͨ��.png");}
//������㣯�Ƕ��̡�
<voice name="����㣯�Ƕ���" class="������Ů��" src="voice/md06/0240510e075">
���������������ˡ�
����Ҳ��Ҫ���Һ��ڵ�������

//������㣯�Ƕ��̡�
<voice name="����㣯�Ƕ���" class="������Ů��" src="voice/md06/0240520e075">
��������������ͺ�����������������⡣��


{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/md06/0240530a00">
������������Խ��ˡ���

{	FwC("cg/fw/fw�Ƕ���_ͨ��.png");}
//������㣯�Ƕ��̡�
<voice name="����㣯�Ƕ���" class="������Ů��" src="voice/md06/0240540e075">
������ô˵����ô˵��
�����µĻ������һ�����
�ͻ�����Ŷ����

{	FwC("cg/fw/fw�Ƕ���_�դ�.png");}
//������㣯�Ƕ��̡�
<voice name="����㣯�Ƕ���" class="������Ů��" src="voice/md06/0240550e075">
��һ���<RUBY text="��������">�ۺ����</RUBY>Ҳ�ǿ��Եġ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
���������������˵������
������Ҳ����Ե�ɵؿ������ҡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_���C��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
//��������
<voice name="����" class="��������" src="voice/md06/0240560a01">
��������������������

{	FwC("cg/fw/fw����_ŭ��b.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0240570a01">
����<?>
{	Wait(300);}
����<?>
{	Wait(300);}
����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0240580a00">
����������

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0240590a01">
������Ҫ������𣿡�

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/md06/0240600a00">
���ţ��Ҿ��ò�����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0240610a01">
���ǣ��Ѽ�Ǯ����ʮ��֮һ����

{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/md06/0240620a00">
��������ô��ͻ����

{	FwC("cg/fw/fw�Ƕ���_ͨ��.png");}
//������㣯�Ƕ��̡�
<voice name="����㣯�Ƕ���" class="������Ů��" src="voice/md06/0240630e075">
��ιιιιι��
��С�����Ҫ��Ϊ�Լ������Ǽ�ģ���
�͵ű���������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
������˦���ҵ��֣���ְ���ͷ����һ��ʹ�⡣
���������úܰ�С��ȴ�Ը��Ӱ��Ŀ�ⶢ�Ŵ�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�Ƕ���_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
//������㣯�Ƕ��̡�
<voice name="����㣯�Ƕ���" class="������Ů��" src="voice/md06/0240640e075">
����������ҵ���Ʒ�Ҳ���
������Ҫɱ�ۣ�
���������ô����
�Ͳ����������Ŀ�����!!��

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0240650a01">
�������ǡ�
����ֻ�����������ȷ�ļ۸񡣡�

{	FwC("cg/fw/fw�Ƕ���_ͨ��.png");}
//������㣯�Ƕ��̡�
<voice name="����㣯�Ƕ���" class="������Ů��" src="voice/md06/0240660e075">
��������˵��Ĳ�Ҫ��ô?!��

{	FwC("cg/fw/fw����_���C��.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0240670a01">
���š���

{	FwC("cg/fw/fw�Ƕ���_ͨ��.png");}
//������㣯�Ƕ��̡�
<voice name="����㣯�Ƕ���" class="������Ů��" src="voice/md06/0240680e075">
��������������ĸ�Ц��
����Ȼ�������Ǿ���һ��ʤ����
���乾����ת�Ĵ��!!��

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0240690a01">
��˭ת�˰�����

{	FwC("cg/fw/fw�Ƕ���_ͨ��.png");}
//������㣯�Ƕ��̡�
<voice name="����㣯�Ƕ���" class="������Ů��" src="voice/md06/0240700e075">
����ô�㵹��˵�������ɰ���
�����������������ֺ��͸ղ��ǡ�
��Ц�Ĺ��ۣ���ô�Ϳ��Ե�ͬ�ˣ���

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0240710a01">
��Ҳ�㲻�������ɰɡ���

{	FwC("cg/fw/fw�Ƕ���_ͨ��.png");}
//������㣯�Ƕ��̡�
<voice name="����㣯�Ƕ���" class="������Ů��" src="voice/md06/0240720e075">
���ҿɲ�������Ľ�ڣ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0240730a01">
�������ⲻ�ǹŴ������

{	FwC("cg/fw/fw�Ƕ���_ͨ��.png");}
//������㣯�Ƕ��̡�
<voice name="����㣯�Ƕ���" class="������Ů��" src="voice/md06/0240740e075">
������������

{	FwC("cg/fw/fw�Ƕ���_����.png");}
//������㣯�Ƕ��̡�
<voice name="����㣯�Ƕ���" class="������Ů��" src="voice/md06/0240750e075">
��ʲ��ʲô��˼?!
�����ǻ����ʵ������ǰ�ġ�����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0240760a01">
��������������ʲôʱ�򣿡�

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md06/0240770a00">
������ǰ���ս��˵�ʱ������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0240780a01">
��̫���������˰ɡ�
��ʵ������һ�붼��������

{	FwC("cg/fw/fw�Ƕ���_����.png");}
//������㣯�Ƕ��̡�
<voice name="����㣯�Ƕ���" class="������Ů��" src="voice/md06/0240790e075">
��С�㣬���Ĵ�������ˡ�����

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0240800a01">
���������㣴���¡���

{	FwC("cg/fw/fw�Ƕ���_ͨ��.png");}
//������㣯�Ƕ��̡�
<voice name="����㣯�Ƕ���" class="������Ů��" src="voice/md06/0240810e075">
������ɶ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
//��������
<voice name="����" class="��������" src="voice/md06/0240820a01">
����������������������
�����ͣ��������ĸ��¡�
�������֪�������������
�������һ�°ɡ���

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0240830a01">
��Ӧ���������ʱ��ɡ���

{	SetComic(@0,@0,17);
	FwC("cg/fw/fw�Ƕ���_ͨ��.png");}
//������㣯�Ƕ��̡�
<voice name="����㣯�Ƕ���" class="������Ů��" src="voice/md06/0240840e075">
��������������������

{	DeleteComic();
	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/md06/0240850a00">
����ô���������

{	FwC("cg/fw/fw����_���C��.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0240860a01">
������������˭����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0240870a00">
��û�뵽�������Ŷ�����ô�ۼ⡣��

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0240880a01">
���ɲ����
�����Ǵ�����������ڳ��Ķ�����
��<RUBY text="����">����</RUBY>һ����֪����

{	FwC("cg/fw/fw�Ƕ���_����.png");}
//������㣯�Ƕ��̡�
<voice name="����㣯�Ƕ���" class="������Ů��" src="voice/md06/0240890e075">
�������������ɶ񡭡������Ҳ�˵Ϻ��
�ļһ��桭��
�������Ǻ�����İ�������

{	FwC("cg/fw/fw�Ƕ���_ͨ��.png");}
//������㣯�Ƕ��̡�
<voice name="����㣯�Ƕ���" class="������Ů��" src="voice/md06/0240900e075">
�����ˡ����������Ǯ��ȥ�ɡ�����

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
��������ô�ͷɥ��������ϥ������ȥ��
�������ܾ����е������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
//��������
<voice name="����" class="��������" src="voice/md06/0240910a01">
����ô�죿��

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md06/0240920a00">
�����ǲ�Ҫ�ˡ�
��������������������ϵĻ�Ʒ��
���ĸ�����

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0240930a01">
���š���
���Ǳ��Ǹ�ССԲԲ�Ķ�������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md06/0240940a00">
�������Ҷ�ް�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
���������Ǹ�����������λ�ڽ������������Ʒ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�Ƕ���_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
//������㣯�Ƕ��̡�
<voice name="����㣯�Ƕ���" class="������Ů��" src="voice/md06/0240950e075">
���ǡ��Ǻǡ������ۼ⡭��
���ⶫ����ۿ������ۣ��мҷ��ֺ�Ϊ�Լ�
ż����Ʒ����ϲ��֮ʱ����ǰ����Ҫ������
��ͷɥ���������۷�֮�á���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0240960a01">
������Ը�����Ť��������

{	FwC("cg/fw/fw�Ƕ���_ͨ��.png");}
//������㣯�Ƕ��̡�
<voice name="����㣯�Ƕ���" class="������Ů��" src="voice/md06/0240970e075">
�������ܴ����Ĵ��ͱ��ٶ����ˡ���
������ȷ�ļ۸����߰ɡ���
���������ѹ�۵Ļ��;��Բ����ˡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
����ָ���ȥ�ҳ���ɫ���Ϲ�Ȼ�ܡ�
����������
��������Ҳ�ܺá�

���򿪸������￴��ͬ�������˻ҳ���
��Ϊ�˳�ȥ�ҳ��������ﴵ�˿�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw����_��ʹ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
//��������
<voice name="����" class="����" src="voice/md06/0240980a00">
�������ȡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StR(1000, @30, @0, "cg/st/st����_ͨ��_˽��.png");
	Move("@StR*", 300, @-30, @0, Dxl2, false);
	FadeStR(300, true);

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0000]
//��������
<voice name="����" class="��������" src="voice/md06/0240990a01">
��������ʲô����

{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/md06/0241000a00">
���������л��࡭����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
�������ַ�ȥ�ɵ����ϵĻҳ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//memo:������ؤ�Ǵ����󤭤��α�ʾ���룿���Ǥ�ʤ󤫤����ˤ⤹���뤫�⤷��ʤ� inc�Ѿ�

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310]
//��������
<voice name="����" class="��������" src="voice/md06/0241010a01">
���ȵȡ�
���Ұ������������

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0241020a01">
������ת��������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0241030a00">
���š�����

{	DeleteStR(300,false);
	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0241040a01">
������ʱ��ֱ�������һ������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md06/0241050a00">
�����𣿡�

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0241060a01">
�����ǰ���
�����ǵġ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0241070a01">
�������϶��ǡ���

{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/md06/0241080a00">
��������ָ���ȥ�Ļ�������������

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0241090a01">
������һ�°ɡ���

{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/md06/0241100a00">
������ҲҪ����

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0241110a01">
���ǵ�Ȼ��
������ת������

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md06/0241120a00">
���š�����

{	FwC("cg/fw/fw�Ƕ���_����.png");}
//������㣯�Ƕ��̡�
<voice name="����㣯�Ƕ���" class="������Ů��" src="voice/md06/0241130e075">
�������Ǹ��������ˡ���
�����������������������˰ɡ�������˵����
����������Ҳ���Ͷ���ļ�į������

{	SetComic(@0,@0,5);
	FwC("cg/fw/fw�Ƕ���_����.png");}
//������㣯�Ƕ��̡�
<voice name="����㣯�Ƕ���" class="������Ů��" src="voice/md06/0241140e075">
�����ء��������������ˡ�
��Ҫ����Ļ����Ǳ�ȥ������

</PRE>
	DeleteComic();
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	ClearWaitAll(1500, 1500);

}

..//������ָ��
//�Υե����롡"md06_025.nss"