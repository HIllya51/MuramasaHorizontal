//<continuation number="1120">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_008.nss_MAIN
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

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mc04_009.nss";

}

scene mc04_008.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"mc04_007vs.nss"

	PrintBG("�ϱ���", 30000);

	SoundPlay("@mbgm28",0,1000,true);

	CreateCamera("��", 0, 0, 1000);
	SetAlias("��","��");
	CreateTextureSP("��/�}����20", 10, Center, Middle, "cg/bg/bg089_���Bۡ�F�ˤ��g_01.jpg");
	CreateTextureSP("��/�}����30", 15, Center, Middle, "cg/bg/bg089_���Bۡ�F�ˤ��g_01.jpg");
	Zoom("��/�}����20", 0, 990, 990, null, true);
	Zoom("��/�}����30", 0, 985, 985, null, true);

	CreatePlainSP("�}��д", 20000);

	CreateTextureSP("��/�}��", 500, Center, InBottom, "cg/st/st��֦_ͨ��_˽��.png");
	Move("��/�}��", 0, @0, @-140, null, true);
	SetVertex("��/�}��", center, bottom);
	Zoom("��/�}��", 0, 500, 500, null, true);

	Request("��/*", Smoothing);
	Delete("�ϱ���");

	FadeDelete("�}��д", 300, true);

	SetFwL("cg/fw/fw����֦_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0080010a03">
��������


{	FwL("cg/fw/fw��֦_ͨ��.png");}
//����֦��
<voice name="��֦" class="��֦" src="voice/mc04/0080020b18">
��������

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("�Ϥ䤢�뤭","se����_����_ľ����ä���i��01_L");
	MusicStart("�Ϥ䤢�뤭",0,1000,0,2000,null,false);

	MoveCamera("��", 30000, @0, @0, @500, null, false);

	CreateColorEX("�}ɫ�\", 19900, "#000000");


	SetFwL("cg/fw/fw����֦_Ц�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0011]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0080030a03">
��<RUBY text="�̣��硡�����塡�����壬�������������">�þò��������ҿɰ�������</RUBY>��
��<RUBY text="�ȣ�������塡�����">�㻹����</RUBY>������
{
	WaitKey(2800);
	SetVolume("�Ϥ䤢�뤭", 0, 0, null);
	SetVolume("@mbgm28", 0, 1, null);
	OnSE("se����_�n��_ܞ��05", 1000);

	CreatePlainSP("�}��д", 10000);
	Shake("�}��д", 100, 0, 20, 0, 0, 1000, null, false);
	Fade("�}ɫ�\", 100, 1000, null, true);}

</PRE>
	SetTextEXL();
	TypeBeginTimeLIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����̨�~;�Ф�����֦ܞ��
	WaitKey(500);

	Delete("�}����30");
	Delete("�}��д");
	Delete("��");

	CreateTextureSP("�}����", 100, Center, Middle, "cg/bg/bg089_���Bۡ�F�ˤ��g_01.jpg");
	StL(1000, @0, @0,"cg/st/st��֦_ͨ��_˽��.png");
	FadeStL(0,true);

	CreatePlainEX("�}��д", 5000);
	FadeDelete("�}ɫ�\", 1000, true);

	OnSE("se�M��_���ߥ���_�^�֤Ĥ���", 1000);
	FadeFR2("�}��д",0,500,300,@0,@0,30,Dxl2, false);

	SetFwC("cg/fw/fw��֦_΢Ц.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//����֦��
<voice name="��֦" class="��֦" src="voice/mc04/0080040b18">
������������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	OnSE("se�M��_���ߥ���_���ꥰ��", 1000);
	FadeFR2("�}��д",0,500,300,@0,@0,30,Dxl2, false);

	SetVolume("@mbgm*", 500, 1000, null);

	SetFwC("cg/fw/fw����֦_����.png");


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0021]
{SetComic(@0,@0,12);}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0080050a03">
�������Ǹ�����
��Ϊʲô�Һ�Ѫ�����������øж����ٻ��˲��
�һᱻ���Ӱ������Դ��������ڽ��°���������

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteComic();

	SetFwC("cg/fw/fw��֦_Ұ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0022]
//����֦��
<voice name="��֦" class="��֦" src="voice/mc04/0080060b18">
���ӵ����Ŷ����ȥ�ˡ�
�������ˡ�ͷ��Ҳ����һЩ���㻹��ʲô��Թ
�𣬻쵰����


//�������Υܥ����������_�ˡ��ȡ��Ѥ��ޤ������g��
//��С���ǡ��^�򡹤�����
{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0080070a03">
���Բ���
���´��һ�����׼һЩ�ġ���


</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����ꤰ��
	OnSE("se�M��_���ߥ���_���ꥰ��", 1000);
	FadeFR2("�}��д",0,500,300,@0,@0,30,Dxl2, false);

	SetFwC("cg/fw/fw����֦_����å�b.png");

	SetComic(@0,@0,2);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0023]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0080080a03">
���Ÿ�Ϊʲô�������˰�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteComic();

	SetFwC("cg/fw/fw��֦_�R��.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0024]
//����֦��
<voice name="��֦" class="��֦" src="voice/mc04/0080090b18">
���ղţ�����׼���͡�һЩ��֮�䣬
����������ʲô������


{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0080100a03">
�����ǻ����𣿡�


{	FwC("cg/fw/fw��֦_ͨ��.png");}
//����֦��
<voice name="��֦" class="��֦" src="voice/mc04/0080110b18">
����֪��������������


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0080120a03">
�����أ����þ�Ȼ�������ҡ�̫�ɱ��ˡ���


{	FwC("cg/fw/fw��֦_ƣ��.png");}
//����֦��
<voice name="��֦" class="��֦" src="voice/mc04/0080130b18">
�����ּٿ��ò����ζ�����˰ٷ�֮��ʮ����


{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0080140a03">
���Ȳ�����������ǲ��Ǹðѽ�Ų���ˣ�
����Ϊ��ʵ�Ҳ�̫ϲ������Ħ���ذ塣��


{	FwC("cg/fw/fw��֦_ͨ��.png");}
//����֦��
<voice name="��֦" class="��֦" src="voice/mc04/0080150b18">
������֮ǰ�����м������㡣��


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0080160a03">
��������֮���𣿡�


{	FwC("cg/fw/fw��֦_ͨ��.png");}
//����֦��
<voice name="��֦" class="��֦" src="voice/mc04/0080170b18">
�����С�
��������Ļش��ҿ��ܾ�����Ū����Ĳ��ӡ���


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0080180a03">
������������


{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0080190a03">
��ʲô�£���


{	FwC("cg/fw/fw��֦_ͨ��.png");}
//����֦��
<voice name="��֦" class="��֦" src="voice/mc04/0080200b18">
���۷ɾ�����ɱ���𣿡�


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0080210a03">
������������


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0080220a03">
���������ʣ�������ģ���


{	FwC("cg/fw/fw��֦_ʧ��.png");}
//����֦��
<voice name="��֦" class="��֦" src="voice/mc04/0080230b18">
����������<?>
{Wait(300);}
����<?>
{Wait(300);}
�Բ���
����ֻ�����ʿ�����

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������֦��
	Delete("�}��д");

	SetVolume("@mbgm*", 2000, 0, null);

	StR(1000,@0,@30,"cg/st/st����֦_ͨ��_˽��c.png");
	FadeStR(300,false);
	Move("@StR*", 300, @0, @-30, Dxl1, true);
	OnSE("se����_����_�֒B��02", 1000);

	SetFwC("cg/fw/fw����֦_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0080240a03">
������
�����ǹ��ֵ����ã���ͷ����մ�ϻ��ˡ���


{	FwC("cg/fw/fw��֦_ƣ��.png");}
//����֦��
<voice name="��֦" class="��֦" src="voice/mc04/0080250b18">
����֪���۷ɾ����˰�����


{	SoundPlay("@mbgm18",0,1000,true);
	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0080260a03">
���š���


{	FwC("cg/fw/fw��֦_ͨ��.png");}
//����֦��
<voice name="��֦" class="��֦" src="voice/mc04/0080270b18">
�������أ���


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0080280a03">
��������


{	FwC("cg/fw/fw��֦_Ұ��.png");}
//����֦��
<voice name="��֦" class="��֦" src="voice/mc04/0080290b18">
��������֪������


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0080300a03">
������£��ܽ����Ҵ����𣿡�


{	FwC("cg/fw/fw��֦_ͨ��.png");}
//����֦��
<voice name="��֦" class="��֦" src="voice/mc04/0080310b18">
�������һ���˽������


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0080320a03">
�����������š���


{	FwC("cg/fw/fw��֦_ͨ��.png");}
//����֦��
<voice name="��֦" class="��֦" src="voice/mc04/0080330b18">
����������δ���ޡ���


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0080340a03">
����ʹ��ˡ���


{	FwC("cg/fw/fw��֦_ƣ��.png");}
//����֦��
<voice name="��֦" class="��֦" src="voice/mc04/0080350b18">
����������
��֮�������ҽ����𣿡�


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0080360a03">
�������������


{	FwC("cg/fw/fw��֦_ƣ��.png");}
//����֦��
<voice name="��֦" class="��֦" src="voice/mc04/0080370b18">
��������


{	FwC("cg/fw/fw��֦_ͨ��.png");}
//����֦��
<voice name="��֦" class="��֦" src="voice/mc04/0080380b18">
����Ȼ�������ҡ���


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0080390a03">
���Բ��𡣡�

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��֦_ƣ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��@Ϣ
//����֦��
<voice name="��֦" class="��֦" src="voice/mc04/0080400b18">
������������


{	FwC("cg/fw/fw��֦_ͨ��.png");}
//����֦��
<voice name="��֦" class="��֦" src="voice/mc04/0080410b18">
���ǣ��������ʲô����


{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0080420a03">
��Ϊ���ڿɰ���������������ʱ�����صǳ�����


{	FwC("cg/fw/fw��֦_ƣ��.png");}
//����֦��
<voice name="��֦" class="��֦" src="voice/mc04/0080430b18">
������ԭ��Ŀ���ǻ����صǳ�������


{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0080440a03">
��˳��Ҳ���������õġ���


{	FwC("cg/fw/fw��֦_ͨ��.png");}
//����֦��
<voice name="��֦" class="��֦" src="voice/mc04/0080450b18">
�����������ô�ˣ���


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0080460a03">
���������ţ���


{	FwC("cg/fw/fw��֦_ƣ��.png");}
//����֦��
<voice name="��֦" class="��֦" src="voice/mc04/0080470b18">
����Ȼ�������š�
������Ϊֹ�㶼û�ж��������֣�
һֱ�����Թ۰ɡ���


{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0080480a03">
��������Ϊ��һֱ����������á�
����Ҳ������Ȥ��
�������ȥ����<RUBY text="��������">�Ǹ�����</RUBY>����



{	FwC("cg/fw/fw��֦_ͨ��.png");}
//����֦��
<voice name="��֦" class="��֦" src="voice/mc04/0080490b18">
���ǣ�Ϊʲô����������


{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0080500a03">
���ҿ������������ơ���


{	FwC("cg/fw/fw��֦_ͨ��.png");}
//����֦��
<voice name="��֦" class="��֦" src="voice/mc04/0080510b18">
�����ƣ�
��������������ԭ����ˡ���


{	FwC("cg/fw/fw��֦_΢Ц.png");}
//����֦��
<voice name="��֦" class="��֦" src="voice/mc04/0080520b18">
��ɱ��ʨ�Ӻ�
����Ҫ��������ͽ�פ����ս�𣿡�


{	FwC("cg/fw/fw����֦_��Ц.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0080530a03">
��ȷʵ��ˡ���


{	FwC("cg/fw/fw��֦_ͨ��.png");}
//����֦��
<voice name="��֦" class="��֦" src="voice/mc04/0080540b18">
����Ȼ��ȷʵ����Ч���ֶΡ�
����������������Ļ����ͽ����Ұɡ���



{	FwC("cg/fw/fw��֦_Ұ��.png");}
//����֦��
<voice name="��֦" class="��֦" src="voice/mc04/0080550b18">
���һ���ʨ�Ӻ��ٻ����ꡣ��


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0080560a03">
�����Ǹ�<RUBY text="�ѣ��������">���˵�����</RUBY>��������
�������Ӻܶ಻��Ҫ������������


{	FwC("cg/fw/fw��֦_Ұ��.png");}
//����֦��
<voice name="��֦" class="��֦" src="voice/mc04/0080570b18">
������������֮���һ�ȫ�����㡣��


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0080580a03">
��ȫ������


{	FwC("cg/fw/fw��֦_Ұ��.png");}
//����֦��
<voice name="��֦" class="��֦" src="voice/mc04/0080590b18">
������
��Ļ����
���ض���
����͡���


//����֦��
<voice name="��֦" class="��֦" src="voice/mc04/0080600b18">
����½����

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]

//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0080610a03">
������������


{	FwC("cg/fw/fw��֦_ͨ��.png");}
//����֦��
<voice name="��֦" class="��֦" src="voice/mc04/0080620b18">
���㲻�ţ���


{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0080630a03">
��������ţ�����ҾͲ������������ˡ���



{	FwC("cg/fw/fw��֦_΢Ц.png");}
//����֦��
<voice name="��֦" class="��֦" src="voice/mc04/0080640b18">
���������Ȼ�ȥ�ɡ�
���ղ�ʨ�Ӻ����������߽л����ˣ�������
��С�ıܿ����ǡ���


{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0080650a03">
���Ǳ߲�Ҫ���ɡ�
��ɴ�����Ŵ����Ǳ��ء�����ɱ��ʨ�Ӻ�֮ǰ
û����ͨ�������


{	FwC("cg/fw/fw��֦_ͨ��.png");}
//����֦��
<voice name="��֦" class="��֦" src="voice/mc04/0080660b18">
������������˵������
�����ʨ�Ӻ���£������ҡ���


{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0080670a03">
�����ʡ���


{	FwC("cg/fw/fw��֦_ͨ��.png");}
//����֦��
<voice name="��֦" class="��֦" src="voice/mc04/0080680b18">
��ʲô�£���


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0080690a03">
���㲻����Ͱ��ϵ��½���𣿡�


{	FwC("cg/fw/fw��֦_ƣ��.png");}
//����֦��
<voice name="��֦" class="��֦" src="voice/mc04/0080700b18">
������������


{	FwC("cg/fw/fw��֦_ʧ��.png");}
//����֦��
<voice name="��֦" class="��֦" src="voice/mc04/0080710b18">
���������²��ǻ��ˡ���


{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0080720a03">
�����Ǿܾ�����ʱ�Ĺ���̨���ء���


{	FwC("cg/fw/fw��֦_�R��.png");}
//����֦��
<voice name="��֦" class="��֦" src="voice/mc04/0080730b18">
�������ˡ�
�������������ڴ������ּ�ͥ�У��ܺ�ϲ����
�˽�����ְ�����


{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0080740a03">
�����λ����ǹ�������񰡡���


{	FwC("cg/fw/fw��֦_ʧ��.png");}
//����֦��
<voice name="��֦" class="��֦" src="voice/mc04/0080750b18">
����ѽ������


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0080760a03">
��������������һ�����ء���


{	FwC("cg/fw/fw��֦_ͨ��.png");}
//����֦��
<voice name="��֦" class="��֦" src="voice/mc04/0080770b18">
���Σ���


{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0080780a03">
����Ȼ�����λ�������Ȼ�Ǹ�ĸ�������¡�
����ʹ��ˣ����û����ܺ�ϲ�����˽�ϣ�
����Ҹ�������


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0080790a03">
���������Ρ���

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��֦_ƣ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//����֦��
<voice name="��֦" class="��֦" src="voice/mc04/0080800b18">
������������


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0080810a03">
�������ڵö���ʧ��ʱ�򣬻�
�����̰���ɡ���


{	FwC("cg/fw/fw��֦_ʧ��.png");}
//����֦��
<voice name="��֦" class="��֦" src="voice/mc04/0080820b18">
��������Ҫ����ô���ء���


{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0080830a03">
���ܲ��ܲ�Ҫ��Э���Ժ���һ�������Ϲ���ȥ��
ͬʱ���а���Ľ������أ���


{	FwC("cg/fw/fw��֦_΢Ц.png");}
//����֦��
<voice name="��֦" class="��֦" src="voice/mc04/0080840b18">
���������ˡ���


{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0080850a03">
������ļ�а��ı�������º����ס���


{	FwC("cg/fw/fw��֦_΢Ц.png");}
//����֦��
<voice name="��֦" class="��֦" src="voice/mc04/0080860b18">
����ı�֤һ��Ҳ�����š���


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0080870a03">
�����ɣ�Ϊ������δ����������
���Ҿ�����һ����ȥ�Ѱ��µ����������ɡ���



{	FwC("cg/fw/fw��֦_ͨ��.png");}
//����֦��
<voice name="��֦" class="��֦" src="voice/mc04/0080880b18">
�������㣬��������ĺ��𣿡�


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0080890a03">
��ʲô�£���


{	FwC("cg/fw/fw��֦_ƣ��.png");}
//����֦��
<voice name="��֦" class="��֦" src="voice/mc04/0080900b18">
����Ϊ��
��ʨ�Ӻ�����ġ�����


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0080910a03">
���š�
��<RUBY text="����������">����Ϊ���</RUBY>����


//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0080920a03">
������Ҫ���������˽ᡣ
���Բ��𣬻�֦�����������Ҫ�����ɡ���


{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0080930a03">
���Ҳ�����Ǹ������ø��㡣��


{	FwC("cg/fw/fw��֦_ͨ��.png");}
//����֦��
<voice name="��֦" class="��֦" src="voice/mc04/0080940b18">
������������


{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0080950a03">
�����û����ʽ�����ɣ�
�ұ�������һֱ���͵ġ�
���������˰���<RUBY text="���">����</RUBY>����


{	FwC("cg/fw/fw����֦_��Ц.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0080960a03">
������ɱ���Ǹ����ˣ��ܹ����ȴ�ͺܶ��˵�
������
�����ң�������ɱ�Ǹ����˵�ֻ���ҡ�
������������

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��֦_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//����֦��
<voice name="��֦" class="��֦" src="voice/mc04/0080970b18">
��������㡭����


{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0080980a03">
�����ԣ��ҾͲ�������ȥ���ˡ�
�������𣬻�֦����


{	FwC("cg/fw/fw����֦_��Ц.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0080990a03">
�����ܷ�������<RUBY text="����">����</RUBY>Ŷ����


{	FwC("cg/fw/fw��֦_ͨ��.png");}
//����֦��
<voice name="��֦" class="��֦" src="voice/mc04/0081000b18">
����������
��������Ǳ���˵���Ļ����Ҿ͸�˵������׾
�ӵ�Ϊ�������ˡ���


{	FwC("cg/fw/fw��֦_ƣ��.png");}
//����֦��
<voice name="��֦" class="��֦" src="voice/mc04/0081010b18">
���Ҳ���˵ʲô�ˡ�
�������<RUBY text="����">����</RUBY>�ġ����˶��ѡ���


{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0081020a03">
���٣ţӡ���


{	FwC("cg/fw/fw��֦_ƣ��.png");}
//����֦��
<voice name="��֦" class="��֦" src="voice/mc04/0081030b18">
��������״̬���������ˡ�����˵����������
Ҫ���������ϡ���



{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0081040a03">
��������˵���ڣ��һ�����ư�������


{	FwC("cg/fw/fw��֦_ͨ��.png");}
//����֦��
<voice name="��֦" class="��֦" src="voice/mc04/0081050b18">
�����游�ױ�����£���ҲҪ��ռ�𣿡�


{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0081060a03">
�����õľ��ǽ��ġ�
�����Ļ��ǽ��ġ���


//���L���ȇ@Ϣ
{	FwC("cg/fw/fw��֦_ƣ��.png");}
//����֦��
<voice name="��֦" class="��֦" src="voice/mc04/0081070b18">
������������


{	FwC("cg/fw/fw��֦_ͨ��.png");}
//����֦��
<voice name="��֦" class="��֦" src="voice/mc04/0081080b18">
��ʨ�Ӻ�ղų�ȥӭ�����ˡ�
�������ȥ�˴����ɡ���


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0081090a03">
����ѽ�������Ǵ��Ǳ����İ���
�����������߲����𣿡�


{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0081100a03">
�������Һ��Ǹ�����������Ե������


{	SetVolume("@mbgm*", 300, 0, null);
	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/0081110a06">
����������Ե���ǻ�����˰ɡ�
��������ϧ���������������ˡ���


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0081120a03">
��!?��

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


}

..//������ָ��
//�Υե����롡"mc04_009.nss"