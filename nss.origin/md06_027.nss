//<continuation number="310">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md06_027.nss_MAIN
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
	#bg009_�`�}סլ��a_02=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md06_028.nss";

}

scene md06_027.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"md06_026.nss"

//��Ϧ
//����·��bg009
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\", 5000, "BLACK");
	OnBG(100, "bg009_�`�}סլ��a_02.jpg");
	FadeBG(0, true);
	Delete("�ϱ���");
	FadeDelete("�\", 1500, true);

	SoundPlay("@mbgm30", 0, 1000, true);

	StR(1000, @0, @0, "cg/st/st����_ͨ��_˽��.png");
	FadeStR(300, true);

	SetFwC("cg/fw/fw����_����b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��������
<voice name="����" class="��������" src="voice/md06/0270010a01">
����Ҫ���ϼҡ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0270020a00">
�������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
��Ϧ���µĹ�;��
����ߵ�ͬ�飬���������ֱ�Ť��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��������
<voice name="����" class="��������" src="voice/md06/0270030a01">
��������
�����������£����������£���Ȼ��
�������£���

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/md06/0270040a00">
����Щʱ�����������ġ���

{	FwC("cg/fw/fw����_�@��b.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0270050a01">
��һ�㷴ʡ����˼��û�У���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0270060a00">
�����Ǵ���˵��л�ġ���

{	FwC("cg/fw/fw����_���C��.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0270070a01">
�����������£�����������
���˰ɣ���

{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/md06/0270080a00">
������������

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/md06/0270090a00">
����֪���������
�����Ե�����ϼ�꣬��ϼ�硣��
�ⶼ����һ�����ݵġ�����

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0270100a01">
��������⡣��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStA(300,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
��һ�߱������𱸣�һ���ؽ��ⲽ��
��·�����˽�ϡ���о��������塭��������ˣ�
�������ֵ������ƺ�����ĳ�������š�

��Ҳ������ǲ����Եü��ȵ�Ե�ɰɡ�<k>
��
��
������Ȼ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ӣţ�����᤭
	CreateSE("SE01", "se����_����_����᤭01_L");
	MusicStart("SE01", 0, 1000, 0, 1000, null,true);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��������
<voice name="����" class="����" src="voice/md06/0270110a00">
����������

{	FwC("cg/fw/fw����_���C��.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0270120a01">
�������ˣ���ν��Ů�����Ե��
�����ǡ�����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0270130a01">
������ʲô�أ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md06/0270140a00">
���Ҳ�֪������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
��ԼĪ��ʮ�˾ۼ���ʮ��·���ԡ�
���������ﻥ�̸ཻ�ţ���Ӧ�ò����ڡ�
�л��ҳ����ܾ��������쳣�Ĳ�ƽ����

�����ſ��������е�һ���ˣ���ֱ�񱻡�
Ұ��׷��һ�㣬�������ң�����
�Ǳ����������˳�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE*", 1000, 0, null);

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��������
<voice name="����" class="����" src="voice/md06/0270150a00">
��������ʲô�£���

{	NwC("cg/fw/nw�����.png");}
//������㣯�������
<voice name="����㣯�����" class="����������" src="voice/md06/0270160e088">
���ţ�������
���ƺ��ֲ����������š���

{	NwC("cg/fw/nw�����.png");}
//������㣯����¡�
<voice name="����㣯�����" class="����������" src="voice/md06/0270170e089">
�����Һܼ����ء�
����Щ�˲��ͱ����ȥ����
�ò����ײ��ӳ�������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0270180a00">
���������𡣡�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
���Ѿ���˾�ռ��ߵ����ˡ�
�����ǹض���ĳ���ط����������˰ɡ���

��ֻ��������ƽ��������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�a��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//��������
<voice name="����" class="����" src="voice/md06/0270190a00">
�����������
���Ѳ����Ƿ��ܰ뵺������

{	NwC("cg/fw/nw�����.png");}
//������㣯����¡�
<voice name="����㣯�����" class="����������" src="voice/md06/0270200e089">
���������ǵġ�
������<RUBY text="����">����</RUBY>����

{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/md06/0270210a00">
������<RUBY text="����">����</RUBY>!?��

{	NwC("cg/fw/nw�����.png");}
//������㣯����¡�
<voice name="����㣯�����" class="����������" src="voice/md06/0270220e089">
���ǵġ�
���������Ǳߡ�����ʲô�ط����ţ���

{	SetVolume("@mbgm*", 300, 0, null);
	NwC("cg/fw/nw�����.png");}
//������㣯�������
<voice name="����㣯�����" class="����������" src="voice/md06/0270230e088">
�������¡�
�����ڹ����Ǳߡ���

{	NwC("cg/fw/nw�����.png");}
//������㣯����¡�
<voice name="����㣯�����" class="����������" src="voice/md06/0270240e089">
���Զԣ������Ǹ�������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SoundPlay("@mbgm16",0,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
����ᦹ����ؽ���û��ʼ���֡�
�����Դ��ڼľӽ����µ�״̬��

�����Ǹ��������˷�����
���ǿ϶��ǶԳ�͢���е�����������������ǽ�פ����
�е�ǿӲ�ɣ������������еĹ����ɵȵȡ������
����Ϯ�ĸ��ʺܸߡ�

�������᧿�Σ��
�����У������޶����ԡ���������ס�����ࡣ
�ο������ֶ�����Щ�����ߡ�

������������ɱ�ˡ�
��
��
������������ֹ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//��������
<voice name="����" class="����" src="voice/md06/0270250a00">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
�����ڸ����Ҹ��������ص���ŵأ�װ��װ�ס�
�������ߵĲ���Ҫ�ϵ������£����������֮�䡣

�����ü���
��Ҫ�ڲҾ绹û����ǰ�ϵ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StR(1000, @0, @0,"cg/st/st����_ͨ��_˽��.png");
	FadeStR(300,true);

	SetVolume("@mbgm*", 100, 0, null);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//��������
<voice name="����" class="��������" src="voice/md06/0270260a01">
������������

{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/md06/0270270a00">
��������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
�������������˫����˲��ƽϢ���ҷ��ڵ�˼ά��

�������ҵ�������ʲô��
���������֮�������ƽ��

������������������������ܼ����¡�

����Ҫ��ֹ������ֻ�ܶ���������
��������ǰ�������ĸ���å����ʱ�ǰ�����������
����������εĶ�������װ�˵ľ��ӡ�
�Ʊػ��ݱ�Ϊһ������֮ս��

��Ҫ�ѵ��˲�����
����Ҫ��û��Ϊ���ƶ������α��֮����

��Ȼ��Ϊ������α�ƣ�ɱ�������ô��
������ͬ�顣

��������������
��������������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//��������
<voice name="����" class="��������" src="voice/md06/0270280a01">
����������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0270290a00">
������������

{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/md06/0270300a00">
����ȥ�ɡ�����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0270310a01">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStA(300,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
���뿪�ۼ�����Ⱥ��
������Ҳ��Ĭ�Ų�����С�

��ĺɫ��ã��������ҹ���ڹ��;�С�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(1500, 1500);

}

..//������ָ��
//�Υե����롡"md06_028.nss"