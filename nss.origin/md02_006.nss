//<continuation number="1630">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md02_006.nss_MAIN
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
	#bg053_ܥԽ������ͥ_01=true;
	#bg053_ܥԽ������ͥ_02=true;
	#bg097_ܥԽ�����ھ����β���_01=true;
	#ev901_�y�Ǻ�����ʧ��С����_a=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md02_007.nss";

}

scene md02_006.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"md02_005.nss"

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\Ļ��", 5000, "BLACK");
	Fade("�\Ļ��", 0, 1000, null, true);
	OnBG(100, "bg001_��a_01.jpg");
	FadeBG(0, true);
	Delete("�ϱ���");
	FadeDelete("�\Ļ��",1500,true);

//�����ҹ
	WaitKey(1500);

	OnBG(101, "bg001_��c_03.jpg");
	FadeBG(3000, true);

//������
	WaitKey(1500);

	OnBG(101, "bg097_ܥԽ�����ھ����β���_03a.jpg");
	FadeBG(2000, true);
	SoundPlay("@mbgm16", 0, 1000, true);

	StR(1000, @0, @0,"cg/st/st����_ͨ��_˽��.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��������
<voice name="����" class="��������" src="voice/md02/0060010a01">
���������ܾ�������ȥ�ɡ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md02/0060020a00">
���԰�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
�����䣬ҹĻ����ʱ�֣������ָ�������

������״���׶���˵����
�����������Ľ��У��ó��Ľ�������һ�¡�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��������
<voice name="����" class="����" src="voice/md02/0060030a00">
�����֪�����Ǻ��ھͲ����뿪<RUBY text="����">ܥԽ</RUBY>����

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0060040a01">
��һ�뵽���ڲ�֪��ʱ��ʼɢ����Ⱦ������
���;��ð������ƿ��ܿ��¡���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0060050a00">
������˵��ĿǰΪֹȷʵ������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
��ÿ�����ϣ�΢΢��������ָ������ֽ��
��ȷ���Ƿ�ӡ�����Ǻ������֡����ֺ����Ƿ����
ĳ�����е�ס���޶�ɱ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��������
<voice name="����" class="����" src="voice/md02/0060060a00">
�����������������ҵ��������ڡ�
��û�з������ֱ�������ĵ�����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0060070a01">
��������߾ͺã�һ������ʲô����
�����ȡ��Ӧ��ʩ����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0060080a00">
��û��
���������������ǡ�����

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0060090a01">
����֮���𣿡�

{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/md02/0060100a00">
��û��
���ܹ�<RUBY text="����">��Ӧ</RUBY>ȴ�޷�<RUBY text="����">�Ը�</RUBY>�Ļ����������塣��

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0060110a01">
��������Ҳû������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����롤���ݤ��y�Ǻ�
	EfRecoIn1(18000,600);
//�����} inc�Ѿ�
	CreateTextureSP("�}����100", 2000, Center, Middle, "cg/ef/ef037_�|�I���ħ����b.jpg");
	CreateTextureEX("�}����200", 2100, @0, @0, "cg/ev/ev901_�y�Ǻ�����ʧ��С����_a.jpg");
	Fade("�}����200", 0, 500, null, false);

	EfRecoIn2(300);

	WaitKey(1000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
��������ֹ<RUBY text="����">�Ǹ�</RUBY>���Ǻţ�

��ӵ�г�Խ�˽��ħ��֮�������Ǻţ�������
����Ԥ�⣬�·𼸺μ�����
��Ҫ˵�Լ�����վ��ͬ��������ȫ����Ϸ�ԣ�
ֻ�ܵ����λ���

����ʵ���˲�����


���������ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	EfRecoOut1(300);

	Delete("�}����*");

	EfRecoOut2(600,true);

	SetFwC("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��������
<voice name="����" class="����" src="voice/md02/0060120a00">
��������������ô�룿��

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0060130a01">
������������

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/md02/0060140a00">
������ֻ�����ߣ���ǿ�����̶ֳ��𣿡�

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0060150a01">
���е��������ţ���ȷʵ��ˡ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md02/0060160a00">
�����������Ĳ��ܡ�
���������ڻ��£���������ã������ĳ�����
�Լ�����ĲٿظС�������ȫ�����ɳ�Ϊ��������

{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/md02/0060170a00">
��������������������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0060180a01">
���Ǹ��̶ȡ���
���ܾ��û��Ǻ��Ѵﵽ��������

//��������
<voice name="����" class="��������" src="voice/md02/0060190a01">
���ѵ���ʲôԭ��
��������Ϊ������𡭡�����

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0060200a00">
������������

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0060210a07">
������˵���ţ���

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0060220a01">
�������������˼����

{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0060230a07">
���ǰײ���������

{	FwC("cg/fw/fw����_���C��.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0060240a01">
����ȫ��һ��Ҳ����Ц����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0060250a00">
����Ҳ��ô�롣��

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0060260a01">
������Ͳ�Ҫ˵��������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md02/0060270a00">
����ʲôҲû˵����

{	FwC("cg/fw/fw����_�@��a.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0060280a01">
��������

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0060290a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ˤ礭���¤���衩��

	StL(1000, @0, @300,"cg/st/st�衩��_ͨ��_˽��.png");
	CreateSE("SE01","se�M��_���ߥ���_�ǈ�01");

	SetVolume("@mbgm*", 500, 0, null);

	Wait(300);

	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("@StL*", 200, @0, @-280, DxlAuto, false);
	FadeStL(200,true);

	Wait(200);
	Shake("@StR*", 300, 5, 0, 0, 0, 1000, null, false);

	SetComic(@0,@0,7);
	SetFwC("cg/fw/fw����_�@��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//��������
<voice name="����" class="��������" src="voice/md02/0060300a01">
�����ۣ���

{	DeleteComic();
	FwC("cg/fw/fw�衩��_ͨ��b.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0060310a07">
��������

{	SoundPlay("@mbgm22",0,1000,true);
	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0060320a01">
���������ð�����ģ���

{	FwC("cg/fw/fw�衩��_ŭ��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0060330a07">
��ͻȻð������ʧ���ˡ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md02/0060340a00">
��û�£�������
����Ȼ�㲻����ս�ѣ�����֮Ҳ���ǵ��ˡ���

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0060350a07">
��������ǡ���ء�
�����Ϻð���硪����

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md02/0060360a00">
�����Ϻã����¡���

{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0060370a07">
�������ҹ���ء���

{	FwC("cg/fw/fw����_Ц�b.png");}
//��������
<voice name="����" class="����" src="voice/md02/0060380a00">
���ܹ������¹⡣��

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0060390a01">
����Ҫ��ô�侲�ò���
��������㵵��Ҹ�����֣���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0060400a00">
������������Ǹ����

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0060410a07">
��Ǩŭ���˿ɲ���Ӵ����

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0060420a01">
����Ҫ�ǲ�����ô��ֵķ�ʽ���ֻ���˵����

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0060430a07">
����������Ҽҡ�
�������Ҫ�������ֶ����ҵ����ɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
����Ȼ�����룬�������Ҳ���и��޶Ȱɡ�
������Ϊ���Ǵ�<RUBY text="����">����</RUBY>���ֵģ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//��������
<voice name="����" class="��������" src="voice/md02/0060440a01">
��ʲô����������ҵĺ��ӣ�
���治֪���㸸ĸ��ô������ġ���

{	FwC("cg/fw/fw�衩��_�n�y.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0060450a07">
��û�и�ĸ����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md02/0060460a00">
����������λ���Ǽ�������

{	FwC("cg/fw/fw����_�@��a.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0060470a01">
������
�����ﲻ�ǽ�����լۡ�𣿡�

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0060480a00">
���ǰ���������λ�ǡ���
��ܥԽ�����������н������������¡���

{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0060490a07">
��֪��֮��ܳԾ��ɣ�������Ҳ���Ȱɡ�
��֪���Ļ��Ϳ����£�
ͷ��ϯ�ӹ��°ɣ����񡣡�

//��Ц�
{	SetComic(@0,@0,11);
	FwC("cg/fw/fw����_ŭ��b.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0060500a01">
����ѽ����������
������ǹ�����������н����ˡ���

//�������`��
{	DeleteComic();
	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0060510a01">
��������ʲô��͵Ϯ���ˣ���

{	SetComic(@0,@0,15);
	FwC("cg/fw/fw�衩��_�n�y.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0060520a07">
�������������ȼ��ɱ���ˡ���

{	DeleteComic();
	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0060530a01">
����ֻ��˵������Ķ��ѡ��������𣿡�

{	FwC("cg/fw/fw�衩��_ŭ��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0060540a07">
����Ҫ�Ǹ���ļһ�˵��������������
����ô˵�ء���������������ô˵������
�����������������𡣡�

{	SetComic(@0,@0,15);
	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0060550a01">
��˭˭˭��������!!��

{	DeleteComic();
	FwC("cg/fw/fw�衩��_�n�y.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0060560a07">
����˵�Ķ�����ʵ�����������𣿡�

{	FwC("cg/fw/fw����_���C��.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0060570a01">
�����Լ�Ӧ���о���İɡ���

{	SetComic(@0,@0,15);
	FwC("cg/fw/fw�衩��_ŭ��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0060580a07">
�������������ұ��ֳ������𣿡�

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0060590a01">
��û����!?��

{	DeleteComic();
	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0060600a00">
���侲�㡣��������

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0060610a01">
����Ҫ����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
���������ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�衩��_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0060620a07">
���ۣ����֡���
����Ȼ�����ٿ��ߵĻ�����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0060630a01">
��û��ϵ��
���������ǲ��������������ġ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0060640a01">
����Ϊ���������ҡ�
�������԰ɣ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md02/0060650a00">
���ǰ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
�����漴�ش�
�������Ļ���

����Ȼȷʵ������ô�룬����һ���棬������ת��
�����б����޾���ɱ������Ԥ������ҡͷ���Ͽ϶�������
���õ����ˣ���ʵ����Ҳ����������Ӱ�졣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�衩��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0060660a07">
������������

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0060670a01">
����Ľ����������Ĺ�ϵ����

{	FwC("cg/fw/fw�衩��_�n�y.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0060680a07">
������Ѫ�ܶ�Ҫ�����ˡ�
���ڸ��Ŀ�������������

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0060690a01">
���޷���������������֮����
��С���Ӱ�����

{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0060700a07">
����磬����ô������֢Ů����ӿɲ��а���
������Ҫһ�����ӻ����ĴӴ����

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0060710a07">
���¸��µĴ�����������վͽ���һﶪ���ɡ�
��������ܸ�����Ľ��С���

//�����줿��
{	OnSE("se�M��_���ߥ���_Ź��03",1000);
	SetComic(@0,@0,15);
	FwC("cg/fw/fw����_ŭ��b.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0060720a01">
������������

{	DeleteComic();
	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0060730a00">
��ɷ��������ˡ���

//��Ͼ���
{	FwC("cg/fw/fw����_Ц�c.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0060740a07">
���ǾͰ������ˣ��ҵĲ���衭��
���ҴӺܾ�ǰ�ͷǳ�����ô���ˡ���

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0060750a07">
���ϣˣ������Ұɣ���

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0060760a01">
����Ҫ���죡��

{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0060770a07">
�������ᣬ����˵���������Ӵ����

{	FwC("cg/fw/fw����_ŭ��b.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0060780a01">
����ú��뿳�����Դ��ء���

{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0060790a07">
������
������ô�ᱻ��˵�����������ɷ����������

{	FwC("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0060800a07">
������ô��ɱ�ҵĻ���˵��ǰ�ȸɵ��Ұ�����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0060810a01">
��˵�Ĳ����
��û���ǳ���ȷ����ͬ�⡣��

{	SetVolume("@mbgm*", 1000, 0, null);
	FwC("cg/fw/fw����_ŭ��b.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0060820a01">
����ô������ʲô�ľͲ���Ҫ�˰ɡ���

{	FwC("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0060830a07">
��������

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0060840a01">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����ä����M�ߺϤ�
	DeleteStA(200,true);
	OnSE("se�M��_���ߥ���_Ź��02", 1000);
	OnSE("se����_����_������01", 1000);
	OnSE("se����_����_������01", 1000);
	OnSE("se�M��_���ߥ���_Ź��04", 1000);

	CreateTextureSP("�}����100", 200, Center, Middle, "cg/bg/bg097_ܥԽ�����ھ����β���_01.jpg");
	Shake("�}����100", 500, 10, 0, 0, 0, 1000, Dxl2, false);

//�����ߥ��륷�`������餳��ϺϤ���΢�������һ�� inc�Ѿ�
	SoundPlay("@mbgm08", 0, 1000, true);

	SetComic(@0,@0,15);

	SetFwC("cg/fw/fw����_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//��������
<voice name="����" class="��������" src="voice/md02/0060850a01">
������ֻ�Ǹ�С����

{	FwC("cg/fw/fw�衩��_ŭ��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0060860a07">
�����������Կ�֩���ζ���ǲ���
������ɿ����ɣ���

{	DeleteComic();
	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md02/0060870a00">
����λ����

{	SetComic(@0,@0,1);
	FwC("cg/fw/fw�衩��_�n�y.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0060880a07">
��ʲô����

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0060890a01">
��ʲô������

{	DeleteComic();
	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0060900a00">
������Ϊ�βŸռ��棬��ϵ��������ô���ӣ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
�����Ƶ��龰����ĳѧ����ĳ��פ����ξ�����ҡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�衩��_ŭ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0060910a07">
���Ҹ���һ�ע�����ϡ���

{	FwC("cg/fw/fw����_���C��.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0060920a01">
�����Բ��ϣ�һĿ��Ȼ����

{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0060930a07">
��û��û����

{	FwC("cg/fw/fw����_ŭ��b.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0060940a01">
��ʵ����û�취�ĸо�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
��ֻ��������������һ�£����������š�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
//��������
<voice name="����" class="����" src="voice/md02/0060950a00">
�����ǣ����¡���
����һ�������㡣��

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0060960a07">
����Χ�ߴ硢ϲ������λ��ϲ�����淨��
ʲô���ܸ�����Ӵ���ܵ����ȸ����Ⱝ�µ�
֩�뾫ô����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md02/0060970a00">
��������ԵĻ����뵽��Ϊֹ��
�����£�Ϊʲô��һ��ʼ�Ͳ����������ʵ�壿��

{	SetVolume("@mbgm*", 1000, 0, null);
	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0060980a01">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SoundPlay("@mbgm16", 0, 1000, true);

	StL(1000, @0, @0,"cg/st/st�衩��_ͨ��_˽��.png");
	StR(1000, @0, @0,"cg/st/st����_ͨ��_˽��.png");
	FadeStR(300,false);
	FadeStL(300,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
������ôһ˵�������ƺ�Ҳ�뵽�ˡ�
��û��������н���û���κ�˵��������£�
����ʶ��ֻ��Ϻ�Ĳ��ܱ��Ĵ����ǽ��е��¡�

����Ȼ�о������ܡ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�衩��_Ц�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0060990a07">
�������Ǹ���
����Ϊ�ᵽ�������мζ�����ˡ���

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0061000a01">
����˵����

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0061010a07">
���ذ嶼��ѹ��֨֨�¸£����õ��˰�����

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0061020a01">
��û��ô�أ���

{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0061030a07">
�����в������н��еĸо�����

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0061040a01">
��������������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0061050a00">
����������

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0061060a07">
�����������ĵ����������Դ��͸��ֳ�
�����Ǹ��Ĵ����������������뷨��
�������Դ������

{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0061070a07">
������������Ҫ��Ϊ��
��ʲô�����Ӧ���Ļ�Ҳ���ԡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
�����������Ц��ָ���Լ��Ķ�ǡ�
�������Ǳ����˻��⡭��������׷��Ҳֻ��ͽ�͡�

������������ж�Ҳ����ν�ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�衩��_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0061080a07">
�����˶��ˡ�
����Ҳ��һ����Ҫ�ʵ��¡���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md02/0061090a00">
����ʲô����

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0061100a07">
���㻹û���һظ���
���������������������

{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0061110a07">
��<RUBY text="������">���Ժ�</RUBY>����

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0061120a00">
������������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0061130a00">
����Ȼ��ô������̫����������
��������ԵĻ����������������ڴˡ���

{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0061140a07">
����֪�������ô˵��
���ҵ�Ȼ��������

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0061150a07">
��Ҳ��ʮ�ֳ�ֵ����ɡ�
������Ҫ���κι��ǡ���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0061160a00">
����л���Ĳ��ġ��н����¡���

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0061170a01">
����������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md02/0061180a00">
��ʲô����

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0061190a01">
�����顣
�������ܱ�¶����������

{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0061200a00">
��������

{	FwC("cg/fw/fw�衩��_�n�y.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0061210a07">
�����Լ�һ��������Ҳû��ϵ������

{	FwC("cg/fw/fw����_���C��.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0061220a01">
����ô���ܽ���������������ô���ɵ�լۡ����

{	FwC("cg/fw/fw�衩��_�n�y.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0061230a07">
����һ����ȥ����

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0061240a01">
���Ų�����

{	FwC("cg/fw/fw�衩��_ŭ��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0061250a07">
�����˵�˻����������

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0061260a01">
��������Ұ��еĻ��������ῼ�ǡ�
��������š���

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0061270a07">
����磿��

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0061280a00">
��������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0061290a00">
���������ӲҪ�����Ļ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
�������Ǻ���������Ǻ���Ҫ�ġ�
������լۡ�������涼һ����

��¶�޵�����Ҳûʲô��
�����۵�ʱ����������ϰ���ˡ�
��Ҳû�����ɾܾ�������Ҫ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_Ц�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
//��������
<voice name="����" class="��������" src="voice/md02/0061300a01">
�����ɡ���

{	FwC("cg/fw/fw�衩��_�䵨.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0061310a07">
����硭��
����̫�����⽣���ˡ���

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0061320a07">
����׾��������ӻ���Ӵ����

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0061330a00">
������û������ġ���

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0061340a07">
��������������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md02/0061350a00">
�����������ݻ���������
�����������������Լ���ְ��
����Ҫ��ʱ��ض������ж�����

{	FwC("cg/fw/fw����_Ц�b.png");}
//��������
<voice name="����" class="����" src="voice/md02/0061360a00">
��������ӹ���ɵġ�
��������˵���㹻�ˡ���

{	FwC("cg/fw/fw����_�դ�.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0061370a01">
������������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md02/0061380a00">
��ֻҪ�����Ѵ�����������
���������ӻ������ǲ��ᷢ���ġ���

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0061390a01">
���������������ҵ��¸��ǲ��ᷢ����
�������ܾ�������ȫ�����ܡ�
��������������������ô���¡���

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0061400a01">
��������໥�ϿɵĲٿ��ߺͽ��С�
����˵��ǰ����������
�Ѿ�����嵶���Ե��
����С����˵��ʲô�����ƻ��Ĺ�ϵ����

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0061410a01">
�������𣿡�

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0061420a07">
������컨����۹�����֪Ϊ�ζ����ء�����

{	FwC("cg/fw/fw����_�@��b.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0061430a01">
���ú�������˵����
����˵��Ҫ���£���

{	FwC("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0061440a07">
��ֻ�����ĵĻ�ɫ���°ɡ�
����˵�����������Ҫ������������ȥ�𣿡�

//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0061450a07">
��ͭ��Ļ����ͳ�Щͭ����ˣ�
Ҫ���˸�ð����ô�졣��

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0061460a01">
������֪�����ⲻ��������Ц��
������ͭ��˵����˭������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md02/0061470a00">
�����������𣿡�

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0061480a01">
����ȷʵ������������
Ҳ�����������������
����Ҳû�б�Ҫ����ȥ¶�ޡ���

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0061490a01">
������������������������������𣿡�

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0061500a00">
������û����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
��������й�֮��õ���ŵ���־ܾ����ˣ�
����ô�������ǰѶԷ��������Դ���
�������������¡�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
//��������
<voice name="����" class="����" src="voice/md02/0061510a00">
��Ҫ�㵣�����𣿡�

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0061520a01">
��������ˡ���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0061530a00">
����ô���н����¡�
���ٴθ�л��Ĺ��ա���

{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0061540a07">
���ƺ�������һЩ���˲�������ۣ���
���ۻ�����ˡ����ˣ��������á�
���������ﵱ�Լ��Ҿ��С���

{	FwC("cg/fw/fw����_Ц�b.png");}
//��������
<voice name="����" class="����" src="voice/md02/0061550a00">
���ǡ���

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0061560a01">
��Ҫ��Ϣ�ˣ��ܳ�ȥ��
���㰭���ˡ���

{	FwC("cg/fw/fw�衩��_�n�y.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0061570a07">
���������ˮ׼�����ò�̫Զ����
������͡�����

{	FwC("cg/fw/fw�衩��_ŭ��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0061580a07">
��Ҫ˵�Ļ����������ȥ��
�������Ǹ��ķ��䡣��

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0061590a01">
������һ��Ҳûʲô���⡣
���԰ɣ���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0061600a00">
���š���

{	FwC("cg/fw/fw�衩��_�n�y.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0061610a07">
��������Ůͬ���ĵ�����լۡ��ɲ�����
������㷿��ģ����ȥ�Ǳߡ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0061620a01">
�����𣿡�

{	FwC("cg/fw/fw�衩��_ŭ��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0061630a07">
�����ˡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���A������Clear���ʤ� inc�Ѿ�

}

..//������ָ��
//�Υե����롡"md02_007.nss"