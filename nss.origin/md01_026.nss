//<continuation number="360">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md01_026.nss_MAIN
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
	#bg031_��ᦌm����_01=true;
	#bg005_ɽ��_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md01_027.nss";

}

scene md01_026.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"md01_025.nss"

//����ᦌm
//�����ä��á�����
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg031_��ᦌm����_01.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 2000, true);
	SoundPlay("@mbgm16",0,1000,true);

	SetFwC("cg/fw/fw����_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��������
<voice name="����" class="����" src="voice/md01/0260010a00">
�����ˣ�

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0260020a01">
���š�����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md01/0260030a00">
���������������
�������Ҫ��ֹ����������������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0260040a01">
�������ǲ����Ĳΰݡ�
�����⡭������

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/md01/0260050a00">
���ǽ��аɣ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0260060a01">
��û��

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/md01/0260070a00">
�����Ҽ���ܸߡ�����

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0260080a01">
�����ֳ��ڡ���
�����������׷�ݵ�ƽ���ڣ�

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/md01/0260090a00">
����սʱ������þ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0260100a01">
����Ϊ�����޿����ޣ�

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md01/0260110a00">
�������á��߰ɣ�

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0260120a01">
���ţ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��Դ��ɽ�Τɤ�������bg005��
//�����L
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg005_ɽ��_01.jpg");
	StL(1000, @0, @0,"cg/st/st���L_ͨ��_�Ʒ�.png");
	FadeStL(0,true);
	FadeBG(0,true);
	FadeDelete("�ϱ���", 1000, true);
	FadeDelete("�}��ܞ", 1000, true);

	SetFwC("cg/fw/fw���L_�䅗.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//�����L��
<voice name="���L" class="���L" src="voice/md01/0260130a11">
������������

{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/md01/0260140a11">
��Ӧ��׼�������ٴ�Щ��˫Ͳ��Զ����
�����ˡ������µ������ܿ�����

{	FwC("cg/fw/fw���L_�䅗.png");}
//�����L��
<voice name="���L" class="���L" src="voice/md01/0260150a11">
��������

//�����L��
<voice name="���L" class="���L" src="voice/md01/0260160a11">
���Ϲ�����ʽ�ƺ������ˡ�
�����ڿ�ʼ���𡭡���

//�����L��
<voice name="���L" class="���L" src="voice/md01/0260170a11">
��������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������á��鷺���ʲݲ�����
	CreateSE("SE01","se��Ȼ_��ľ_̽��01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	SetFwC("cg/fw/fw���L_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//�����L��
<voice name="���L" class="���L" src="voice/md01/0260180a11">
������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���܇�_�J
	DeleteStA(300,true);

	SetFwC("cg/fw/fw���L_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//�����L��
<voice name="���L" class="���L" src="voice/md01/0260190a11">
������������

//�����L��
<voice name="���L" class="���L" src="voice/md01/0260200a11">
���Ǵ�������𣿣�

//�����L��
<voice name="���L" class="���L" src="voice/md01/0260210a11">
���ղź������ˡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����ᦌm
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg031_��ᦌm����_01.jpg");
	FadeBG(0,true);
	FadeDelete("�ϱ���", 1000, true);
	FadeDelete("�}��ܞ", 1000, true);

	SetFwC("cg/fw/fw�o��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0260220a05">
�����˽���֮���У���

{//����ق�װ�С����o��������
	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md01/0260230a00">
���ǡ���

{//����ق�װ�С����o��������
	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0260240a01">
������������

{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md01/0260250a00">
��ˡ��ֱ�ԡ�
����֮���չ���ֻ�ܴ������һ��ǰ��������

//��������
<voice name="����" class="����" src="voice/md01/0260260a00">
����ͬ��λ���ڴ˵Ⱥ򡣡�

{	FwC("cg/fw/fw�o��_ͨ��.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0260270a05">
����֪����
��ÿ����ˡ���

//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0260280a05">
��Ϊ���·����

{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md01/0260290a00">
���ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Y�ε�
//�����\���桢���뤤�ϵ����Ȥ�ef001�ʤɤǴ��á�
//�����ġ����ġ����ġ�������ä���ᡣ���
	PrintGO("�ϱ���", 25000);
	CreateColorSP("�}��ܞ", 5000, "#000000");
	DrawDelete("�ϱ���", 1000, 100, "blind_01_00_1", true);

	CreateSE("SEL01","se����_����_�i��_����_L");
	MusicStart("SEL01",1000,1000,0,1000,null,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
�����صĲε������������״�½���

��·����������߶�Ҳһ����
�����������������αװ����ٵ��Һʹ������ܶ�
�Ķ���ֻ����Щ�����������Ŀռ��У�����ĽŲ�����
�Ǻܴ�

������м�ʮ���������ܶ����ǻ��ö����൱�������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nw����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��������
<voice name="����" class="��������" src="voice/md01/0260300a01">
������������

{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md01/0260310a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
���Ҹе�������װ�����Ͷ�����������������ϡ�
��������ڵȴ��ɡ�

�������������ϡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���o�ϡ�������������
	StL(5100, @0, @0,"cg/st/st�o��_ͨ��_˽��.png");
	FadeStL(300,true);
	Wait(500);
	DeleteStA(300,true);

	SetNwC("cg/fw/nw����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//��������
<voice name="����" class="����" src="voice/md01/0260320a00">
����ǿ��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
���ҵ�һ�������ۿ�����������˧�ĸ��룬ֻ����һ��
����

��������˺�ǿ��
�����������壬���Ǿ���<RUBY text="����������">����������</RUBY>��

�����ĺ󱳱����������ص�ǿ��

�����ԡ���
�����߳�Ϊ���ԵĶ�������ȫ��������

������ǿ��ʮ�ְ�����
������ֻ�ǵ�����<RUBY text="����">����</RUBY>��֧�Űɡ�

������֧�����Ļ���

�����ǣ�Ҳ�������˵��û�г�Ϊ���ͳ���ߵ��ʸ�
������������ӵ������λ�Ӹ�λ����������ҡ�����
���ǻ������ְ����ε��ˡ�

��ֻ�����뵫���������������������ҹ��ҡ�
���ڹŽ�������ʷ�У�����ǰ������ʤ����

���������ϳ�����������
�������ĺ󱳱������ȫ��ȫ��������ˣ�Ӧ��Ҳ����
���ذɡ�

�����������������������ı�������
��ֻҪ����˫�ۻ����еĴ�ͣ�
<RUBY text="��������">�ӽ����</RUBY>����ܱ��ػ���

����ô����Ϊͳ���ߣ������Ƿ���ȷ�ء�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nw����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//��������
<voice name="����" class="����" src="voice/md01/0260330a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
���������������£�����ĸ���������ǰ�����˾޴��
���ӣ����ȷ����ʵ��
�����ڷ����ɵ�ѹ�ƣ�Ҳ���¶�ǵ��ϸ�����ǰ�޷�
��ȡ�

�����ǡ�
��������˵�����޵�ͳ���Ƕ�����������Ҳ����Ƭ��
�ˡ�

�����۱���Ҫ�������ơ�

������ǰ�������������˼��˵ı��ѣ������˹��ң���
���˴�ս���Ļ�����ҵõ��˴�͵���Ȩ��
�������������û�б��ѣ����Ǻ����˾����б�����
ս�أ��������ữ��һƬ�����ɣ�

��������Ļ��ִ���˽̿����ľ������壬��ȫ������
ÿһ�������Ȩ����
���������û�����־������������أ�����½���ƵĻ�
���ѵ��п��ܲ����������

�������緶Χ�������������˵�Ǻ�г��ʱ����������
��ȴ�������ȶ���������û�к��������ҽ�ս����ƽ��
�ȹ������ʱ�䡣
������Թ�ȥ�����ƣ���֪�ܷ�������һ�㡣

����������ʷѧ�ң�Ҳ��Ὣ�����޵�ͳ������Ϊ
������ʵ��ֶΡ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nw����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//��������
<voice name="����" class="����" src="voice/md01/0260340a00">
��������Ȼ�ҿɲ���������ֽ̿��顭����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
��������������Ļ���б�һ����ִ�����ˣ��󲿷ֶ�
����ұ���ͬ���ĸ���ɡ�
����������Ժ����Ĺ۵�������Ҳ������ȫ�͹۵���˵��
һ����ó��������ۡ�

�����ڣ�Ĩɱ�������ϡ�
�������������ƻ�����ֹ������<k>���ڴ����˵��û����
�϶��ⲻ�����ͨ������ĵ�·��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nw����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//��������
<voice name="����" class="����" src="voice/md01/0260350a00">
������������

//��������
<voice name="����" class="����" src="voice/md01/0260360a00">
��������ô�죿��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
��նɱ��
����ն��

���������ϣ��Ǹ��������ֶ�֮����
���Ǻ����ǺŲ��еĴ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 1000, 0, null);
	SetVolume("SE*", 1000, 0, null);
	PrintGO("�ϱ���", 25000);
	CreateColorSP("�}��ܞ", 10000, "#000000");
	DrawDelete("�ϱ���", 1000, 100, "blind_01_00_1", true);

}

..//������ָ��
//�Υե����롡"md01_027.nss"