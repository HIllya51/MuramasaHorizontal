//<continuation number="2490">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma05_012.nss_MAIN
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
	#bg050_�������Tǰ_01 = true;
	#bg033_������һ��_03a = true;
	#bg033_������һ��_01 = true;
	#bg033_������һ��_02 = true;
	#bg053_�����Ҥ�ͥ_02 = true;


	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "ma05_013.nss";

}

scene ma05_012.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"ma05_011.nss"


//��������ǰ
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg050_�������Tǰ_01.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 2000, true);
	SoundPlay("@mbgm30",0,1000,true);

	StL(1000, @0, @0,"cg/st/st�y_ͨ��_˽��.png");
	FadeStL(300,true);

	SetNwC("cg/fw/nw�a��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//������㣯�a�ݡ�
<voice name="����㣯�a��" class="����������" src="voice/ma05/0120010e282">
����ô��ͳ���ˡ���
�����Ǳ��������н�ҩ����

{	FwC("cg/fw/fw�y_ͨ��a.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0120020b46">
���ã���л��
���ղŰѼ��ﱸ�õ�ȫ�������ˡ����æ�ˡ���

{	NwC("cg/fw/nw�a��.png");}
//������㣯�a�ݡ�
<voice name="����㣯�a��" class="����������" src="voice/ma05/0120030e282">
�������ǡ�
�����ǣ��Ǹ�������

{	FwC("cg/fw/fw�y_ͨ��a.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0120040b46">
���š�����

{	NwC("cg/fw/nw�a��.png");}
//������㣯�a�ݡ�
<voice name="����㣯�a��" class="����������" src="voice/ma05/0120050e282">
������û�����𣿡�

{	FwC("cg/fw/fw�y_ͨ��a.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0120060b46">
��û���⡣��

{	NwC("cg/fw/nw�a��.png");}
//������㣯�a�ݡ�
<voice name="����㣯�a��" class="����������" src="voice/ma05/0120070e282">
���������𡣡�

{	FwC("cg/fw/fw�y_ͨ��b.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0120080b46">
���������������²����⴫����

{	NwC("cg/fw/nw�a��.png");}
//������㣯�a�ݡ�
<voice name="����㣯�a��" class="����������" src="voice/ma05/0120090e282">
���ǡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����g��bg033a��
	PrintGO("�ϱ���", 25000);
	CreateColorSP("�}�\", 2000, "#000000");
	OnBG(100,"bg033_������һ��_03a.jpg");
	FadeBG(0,true);
	FadeDelete("�ϱ���", 1000, true);
	FadeDelete("�}�\", 1000, true);

	SetNwC("cg/fw/nw����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//����
//��������
<voice name="����" class="����" src="voice/ma05/0120100a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����������
	WaitKey(1000);

	SetFwC("cg/fw/fw���I_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0120110b31">
������������

//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0120120b31">
��������

{	FwC("cg/fw/fw���I_ͨ��b.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0120130b31">
���������������

{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0120140a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����������٤�
	WaitKey(400);

	SetFwC("cg/fw/fw����_Ц�a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="����" src="voice/ma05/0120150a00">
���������𣿡�

{	FwC("cg/fw/fw���I_ͨ��b.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0120160b31">
��������

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0120170a00">
��Ȱ����ñ𶯡�
��С���˿ڡ���

{	FwC("cg/fw/fw���I_ͨ��b.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0120180b31">
��������

{	FwC("cg/fw/fw����_�^ȥ.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0120190a00">
��������

{	FwC("cg/fw/fw���I_ͨ��b.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0120200b31">
���������Ұ��������ǡ�����

{	FwC("cg/fw/fw����_�^ȥ.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0120210a00">
���ԡ�
�����ҡ���

{	FwC("cg/fw/fw���I_ͨ��b.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0120220b31">
��������

{	FwC("cg/fw/fw����_�^ȥ.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0120230a00">
��������

{	FwC("cg/fw/fw���I_�դ�.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0120240b31">
�������ҵ����塭��
�����������㡭����

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0120250a00">
��������������ð������

//��������
<voice name="����" class="����" src="voice/ma05/0120260a00">
����Ϊ�����˿�ʵ���ǿ̲��ݻ�����

{	FwC("cg/fw/fw���I_ͨ��b.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0120270b31">
��������

{	FwC("cg/fw/fw����_�^ȥ.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0120280a00">
��������

{	FwC("cg/fw/fw���I_ͨ��b.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0120290b31">
������������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0120300a00">
���������Ƿ�Ӧ�ûر�һ�£���

{	FwC("cg/fw/fw���I_ͨ��b.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0120310b31">
��������һֱ���������𣿡�

{	FwC("cg/fw/fw����_�^ȥ.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0120320a00">
����˵������Ӧ���������ұϾ�����ҽ����
�Ҳ�֪�����ʱ��ͻ�䡣����������ˣ�����
�����������Ҳ����óȻ��ҽ�����š���

//��������
<voice name="����" class="����" src="voice/ma05/0120330a00">
�����ٿ��Լ�ʱӦ��ͻ��״����
���ڴ��غ򡣡�

{	FwC("cg/fw/fw���I_ͨ��b.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0120340b31">
��������

{	FwC("cg/fw/fw����_�^ȥ.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0120350a00">
������Ҫʲô�𣿡�

{	FwC("cg/fw/fw���I_ʧ��.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0120360b31">
����������û�С�����

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0120370a00">
������
���Ǿ�����������Ϣ�ɡ���

{	FwC("cg/fw/fw���I_ͨ��b.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0120380b31">
��������

{	FwC("cg/fw/fw����_�^ȥ.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0120390a00">
�����Ժ���ǰ��̽������

{	FwC("cg/fw/fw���I_ͨ��b.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0120400b31">
�������á���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������ȥ��
//�������SE��Ҫ�������饤������_���]��ȥ�äƤ����������ۤܤ������á�
	CreateSE("SE01","se�ճ�_����_���_�]01");
	CreateSE("SE02","se����_����_ľ����ä���i��01_L");

	$���Ƥ� = RemainTime("SE01");

	MusicStart("SE01",0,1000,0,1000,null,false);

	WaitKey($���Ƥ�);

	SetVolume("SE01", 500, 0, null);

	MusicStart("SE02",0,1000,0,1000,null,false);

	SetVolume("SE02", 3000, 0, null);


	SetFwC("cg/fw/fw���I_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0120410b31">
������������

{	FwC("cg/fw/fw���I_ʧ��.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0120420b31">
���������ˡ�
�������������˰�����������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Ҥ���
	CreateColorEX("�}�\", 8500, "#000000");
	Fade("�}�\", 1000, 1000, null, true);
	OnBG(100,"bg051_�����Ҿ��g_01.jpg");
	FadeBG(0,true);
	WaitKey(500);
	DrawDelete("�}�\", 1000, 1000, "blind_01_00_1", true);

	StR(1000, @0, @0,"cg/st/st�y_ͨ��_˽��.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fw�y_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//���y��
<voice name="�y" class="�y" src="voice/ma05/0120430b46">
��Ŷ��
����Σ�����ʲô����𣿡�

{	FwC("cg/fw/fw����_�^ȥ.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0120440a00">
��ͳ���ˡ�
��û�С����������ˡ��Ҵ���
�Ա��»�Ӱ������Ϣ����

{	FwC("cg/fw/fw�y_ͨ��a.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0120450b46">
������̫���ˡ�
����û�������𣿡�

{	FwC("cg/fw/fw����_�^ȥ.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0120460a00">
������ƽ����
������ֻ�ǻ�δŪ����״������

{	FwC("cg/fw/fw�y_ͨ��a.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0120470b46">
�����������������Ҳ�޷��ӵ���
����Ȼ����λ���ߡ���

{	FwC("cg/fw/fw����_�^ȥ.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0120480a00">
��������δװ�佣�С���

{	FwC("cg/fw/fw�y_ͨ��a.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0120490b46">
������о���û��װ�ף�������������Ҫ��
�Ƶġ�Ȼ������Ͳ������ˡ�
�����һ��ǲ����ء���

{	FwC("cg/fw/fw����_�^ȥ.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0120500a00">
����ʹ�ý���֮��������ұ�
������֮ƥ�С���

{	FwC("cg/fw/fw�y_ͨ��a.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0120510b46">
�������������Ȼ�������˰ɡ�
������������˵����

{	FwC("cg/fw/fw�y_ͨ��b.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0120520b46">
�������Է���Ϊ���ߣ�ȴΪ������������
��һʤ����
���Ǹ�ʮ��Ĺ��˰ɡ���

{	FwC("cg/fw/fw����_Ц�b.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0120530a00">
������
����ֻ�ǳ������˱��԰��ˡ���

{	FwC("cg/fw/fw�y_�@��.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0120540b46">
���ţ���

{	FwC("cg/fw/fw����_Ц�b.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0120550a00">
��<RUBY text="����">Űɱ</RUBY>���Ƶ���
��������������<RUBY text="����">����</RUBY>�Ĺ��߰��ˡ���

{	FwC("cg/fw/fw�y_ͨ��a.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0120560b46">
����������
����������ʲô�𣿡����ӡ���

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0120570a00">
�������ǡ�
�������ҿ���Ӧ��֮���ˡ���

{	FwC("cg/fw/fw�y_ͨ��a.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0120580b46">
��������ΰ�����λ�����

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0120590a00">
�������ܹ����ɻ���㽫���ͻ�ɽ����ء�
  ���н��������ָ��ٶ����Ҳ��Ѹ�٣�
����������ͷ���Ϊ�׵�����

{	FwC("cg/fw/fw�y_ͨ��a.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0120600b46">
����˱�ɣ���

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0120610a00">
���ǡ���

{	FwC("cg/fw/fw�y_ͨ��a.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0120620b46">
���š�
������ô��ɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(2000, 1000);

//��Ϧĺ��
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg002_��a_02.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 2000, true);
	SoundPlay("@mbgm23",0,1000,true);

	SetFwC("cg/fw/fw����_�^ȥ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��������
<voice name="����" class="����" src="voice/ma05/0120630a00">
�����ˡ�
������˯�����𣿡�

{	FwC("cg/fw/fw���I_ͨ��b.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0120640b31">
��������û��
�����������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����g
	PrintGO("�ϱ���", 25000);
	CreateColorSP("�}��ܞ", 10000, "#000000");
	OnBG(100,"bg033_������һ��_02.jpg");
	FadeBG(0,true);
	CreateSE("SE01","se�ճ�_����_���饤���_��01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	DrawDelete("�ϱ���", 1000, 100, "blind_01_00_1", true);
	DrawDelete("�}��ܞ", 1000, 100, "blind_01_00_1", true);

	SetFwC("cg/fw/fw����_�^ȥ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//��������
<voice name="����" class="����" src="voice/ma05/0120650a00">
���о���Ρ���

{	FwC("cg/fw/fw���I_ͨ��b.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0120660b31">
�����������㻵��
��Ҳ��������ô�ۡ���

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0120670a00">
��������á�
��ҹ����������һ�α�����
��Ҳ��Ҫ���ɲźá���

{	FwC("cg/fw/fw���I_ͨ��b.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0120680b31">
��������

{	FwC("cg/fw/fw���I_�դ�.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0120690b31">
�����ǣ����𡭡�����

{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0120700a00">
��ʲô��������

{	FwC("cg/fw/fw���I_�դ�.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0120710b31">
��������

{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0120720a00">
�����������ǡ�
�����������ĸ��������

{	FwC("cg/fw/fw���I_ͨ��b.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0120730b31">
���������𡣡�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
���о������ı����Ե���Щʧ����
����������������ҿ����ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�^ȥ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//��������
<voice name="����" class="����" src="voice/ma05/0120740a00">
���������ʡ�
�������ʳ�𣿡�

{	FwC("cg/fw/fw���I_ͨ��b.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0120750b31">
���������ڻ�������

{	FwC("cg/fw/fw����_�^ȥ.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0120760a00">
���Ҳ���ǿ������
���������ö��ٳ�һЩ��Ӫ��������
�����˿��޷�Ȭ������

{	FwC("cg/fw/fw���I_ͨ��b.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0120770b31">
�������ðɡ�
�����ǡ����ҵ��ֲ�̫��ʹ����

{	FwC("cg/fw/fw����_�^ȥ.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0120780a00">
�������Ұɡ���

{	FwC("cg/fw/fw���I_΢Ц.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0120790b31">
���������𡣡�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
�������������ƺ����ֳ�һ˿ϲ�á�
����������������һ����˰ɡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���I_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0120800b31">
������������

{	FwC("cg/fw/fw����_�^ȥ.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0120810a00">
��������

{	FwC("cg/fw/fw����_�^ȥ.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0120820a00">
����������

{	FwC("cg/fw/fw���I_ͨ��b.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0120830b31">
��ʲô����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0120840a00">
����ʲô�����ʡ���

{	FwC("cg/fw/fw���I_ͨ��b.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0120850b31">
��������

{	FwC("cg/fw/fw����_�^ȥ.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0120860a00">
������û��ϵ�𣿡�

{	FwC("cg/fw/fw���I_ͨ��b.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0120870b31">
���޷�����

{	FwC("cg/fw/fw����_�^ȥ.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0120880a00">
��������

{	FwC("cg/fw/fw���I_ͨ��b.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0120890b31">
����û�����ʡ�
�����κ��¶�������

{	FwC("cg/fw/fw���I_ʧ��.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0120900b31">
���������ˡ�
��������Ϊ���Ѿ������ˡ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0120910a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
��ǫѷ�Ļ�����������ؾ�Ҫ������䡣
��ֻ�����ɡ���������ʵ���ϡ������ٱ���һ���ֻ���
������֮��ġ�

���������Ūʤ��֮�������ֵ��������ֵĻ��
����ǧ��һ��֮�ʲ�����£�����ڲ��ԣ����Լ�����
�����������Լ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ƣ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//��������
<voice name="����" class="����" src="voice/ma05/0120920a00">
��������

{	FwC("cg/fw/fw���I_ͨ��b.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0120930b31">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
��Ϊ���Լ���ȡ���ε���أ����������ң�����ӣ�
�������������Ƶ�ͬʱ���۽ǵ������Ӵ��ķ��򡪡�
�����ڿ����ҡ�

�����ӡ�
��ֱ����������ߣ������Ҳ��š�

����������Ŀ����ע�ӵ������գ�Ī���ط��̡�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���I_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0120940b31">
���������ǡ�����

{	FwC("cg/fw/fw����_�^ȥ.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0120950a00">
����������

{	FwC("cg/fw/fw���I_ͨ��b.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0120960b31">
������΢��������һЩҲû��ϵ��
��ʵ����
�����Լ����������⡭����

{	FwC("cg/fw/fw���I_΢Ц.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0120970b31">
��ƴ��ȫ�������������������������
û�뵽����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
����λ�����������ң�˵������һϯ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�^ȥ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
//��������
<voice name="����" class="����" src="voice/ma05/0120980a00">
��������

{	FwC("cg/fw/fw���I_ͨ��b.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0120990b31">
����һ�Ρ�����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0121000a00">
��Ŷ������

{	FwC("cg/fw/fw���I_ͨ��b.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0121010b31">
�������Ÿ��˸���ս������Ҳ��
������˲Ұ�Ҳ�ǡ�
����Ļ��֮ʱ��δ�й�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
������Ӧ���Ӿ������Ͻ�˽ս��
������ս��֮ʱ���Ǻ�ʬ��Ұ֮ʱ��
������ԭ����ˣ�������Ӧ�ö�δ��������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���I_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0121020b31">
�����ԡ���
��ֻ���㡣��

{	FwC("cg/fw/fw���I_΢Ц.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0121030b31">
���������Ҵ��֮�ˡ�����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0121040a00">
��������ʤ���ҡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
����ǿ�ѹγ���ʧ�����Ļ��С���³���
�����Լ����е����ȵ��ǣ����г���������ʵ�С�
  

��������ζ����һս������������ƾ���Լ�֮������
��ʤ��
�������˾��������ң�����ǰ�����˵¡��������߶�
���ް��ͷ����

����֪���Ƿ��������Ǿ������Ĵ𸴡���
����΢΢�ؽ���������������ߣ�����˵����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���I_�դ�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0121050b31">
���������С����Ǹ���
��Ҳ���ҡ��������Ҽ��������ˡ�����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0121060a00">
��������

//��������
<voice name="����" class="����" src="voice/ma05/0121070a00">
��������������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
����������˵��ʲô��
��
��Ȼ�������ȴ��ȫ˵����������

��ֻ����ӱ��ܵ�ָʾ���ж���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�^ȥ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
//��������
<voice name="����" class="����" src="voice/ma05/0121080a00">
����ȥ����׼�����ˡ���

{	FwC("cg/fw/fw���I_ͨ��b.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0121090b31">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
�����ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������_�����]���롣����`���Ѥ���
	OnSE("se�ճ�_����_���饤���]���02",1000);

	SetFwC("cg/fw/fw���I_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0121100b31">
��������

{	FwC("cg/fw/fw���I_΢Ц.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0121110b31">
�������ն�����
��������������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��һ�ȥե��`�ɥ����ȡ�����
//�����g���y�Ⱦ���
	PrintGO("�ϱ���", 5000);
	CreateColorSP("�}�\", 4900, "#000000");
	OnBG(100,"bg033_������һ��_02.jpg");
	FadeBG(0,true);
	FadeDelete("�ϱ���", 1000, true);
	WaitKey(500);
	FadeDelete("�}�\", 1000, true);

	StR(1000, @0, @0,"cg/st/st����_ͨ��_��Tb.png");
	FadeStR(300,true);

	StCL(1100, @-60, @0,"cg/st/st�y_ͨ��_˽��.png");
	Move("@StML*", 300, @60, @0, AxlDxl, false);
	FadeStCL(300,false);

	SetFwC("cg/fw/fw�y_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
//���y��
<voice name="�y" class="�y" src="voice/ma05/0121120b46">
�����ã�֪���𣬾�����
�����ȣ�����Ҫ���Ƿ��˵��¶ȡ�����
������Щ������ͻ�ʧȥ���䴵������
�ɣ����Ǳ�ĩ���á���

{	WaitAction("@StML*", null);
	Move("@StML*", 300, @600, @0, AxlDxl, false);
	FwC("cg/fw/fw�y_����.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0121130b46">
������ʱ��Ҫע����Ȼ�����촵����
����Ч���źá�
������������Ȼ����һ��Ҫ�öԷ������
�����ˡ����Ƚ��ѡ���

{	WaitAction("@StML*", null);
	Move("@StML*", 300, @-600, @0, AxlDxl, false);
	FwC("cg/fw/fw�y_����.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0121140b46">
�����һ�������������ι���ԡ�
����ʱ��Ҫ���֣���Ҫ���ŶԷ����۾���
��Ŀ�ཻ��û���⡣������Ҳ��Ҫ����
����������չģʽ�ġ���

{	Shake("@StML*", 300, 6, 0, 0, 0, 1000, Dxl2, false);
	FwC("cg/fw/fw�y_ŭ��.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0121150b46">
�����ˣ����Կ�������!!��

{	FwC("cg/fw/fw�����^ȥ_���L.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0121160a00">
���ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���y������\�ӳ����Ƥڤ��äȒΤƤ뾰����
//�������}��ʹ�ä��������ݳ��ǡ�
//�����g�ˑ���

	CreateSE("SE01","se����_����_���01");
	Move("@StR*", 300, @-570, @0, Dxl2, true);
	MusicStart("SE01",0,1000,0,1000,null,false);
	Shake("@StML*", 300, 6, 0, 0, 0, 1000, Dxl2, false);
	WaitKey(300);
	Move("@StML*", 800, @1200, @0, Dxl1, false);
	Move("@StR*", 800, @1200, @0, Dxl1, true);
	DeleteStA(0,true);

//�������SE��Ҫ�����ݩ`�����ˤ�Ͷ���������㥰����
	CreateSE("SE02","se����_����_�𤭤�02");
	MusicStart("SE02",0,1000,0,1000,null,false);
	WaitKey(1000);

//���ƥ����ȟo�����ܥ����ΤߣӣŒQ��������
//	FwC("cg/fw/fw�y_����.png");
//���y��
//<voice name="�y" class="�y" src="voice/ma05/0121190b46">
//�����ء��������ء�
//�������۸��ҡ�����

	CreateVOICE("�y","ma05/0121190b46");

	StR(1000, @30, @0,"cg/st/st����_ͨ��_��Tb.png");
	Move("@StR*", 300, @-30, @0, DxlAuto, false);
	FadeStR(300,true);

	SetFwC("cg/fw/fw����_�^ȥ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
//��������
<voice name="����" class="����" src="voice/ma05/0121170a00">
����ĸ���е����

{	FwC("cg/fw/fw���I_ͨ��b.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0121180b31">
���ġ������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	MusicStart("�y",0,1000,0,1000,null,false);

	Wait(500);

	SetFwC("cg/fw/fw���I_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0281]
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0121200b31">
���Ǹ�������

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0121210a00">
�������⡣
����Ӧ�ö��ˣ����Ͼͻ��뿪ȥ�Է�����

{	FwC("cg/fw/fw���I_ͨ��b.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0121220b31">
���š���

{	FwC("cg/fw/fw����_�^ȥ.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0121230a00">
�����á�
�����ġ��¶������ʡ���

{	FwC("cg/fw/fw���I_ͨ��b.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0121240b31">
��������

{	FwC("cg/fw/fw����_�^ȥ.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0121250a00">
�������ѵ����������𣿡�

{	FwC("cg/fw/fw���I_ͨ��b.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0121260b31">
���������ǡ�
�����Ҳ������ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
��Ů����С������ؽ�������Ҩ��������׺�����С�
  ����Щ����ʧ�룬��Ҳû�б���������ͷ�ļ���

�������Ե��£��ұ���Ҩ��һ�ס�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�^ȥ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
//��������
<voice name="����" class="����" src="voice/ma05/0121270a00">
��ζ���������Ŀ�ζ�𣿡�

{	FwC("cg/fw/fw���I_ͨ��b.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0121280b31">
�����ǡ�����

{	FwC("cg/fw/fw����_�^ȥ.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0121290a00">
�����Ǳ�Ǹ��
�������ٽ���Щ��ɫ�ͺ��ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310]
�����ײΰ�����У�ֻ����һ�ż�����
�������Ǵ�ζ�����Ǵ�Ӫ���Ƕ����������������˾���
������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0320]
//��������
<voice name="����" class="����" src="voice/ma05/0121300a00">
�������������ʳ���Ǻܳ��㡣
��ʵ���ǡ�����

{	FwC("cg/fw/fw���I_ʧ��.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0121310b31">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0330]
�������ҵĻ��������Ǿ��������Ƶ������Ĭ֮�С�
  ��Ȼ�Ƕ����ǵ�����е������𡪡�<k>�ڿ�������
������Щ����Ҫ�������֮�������޶۵Ĵ������ھ�
�쵽�ˡ�

���������ˡ�
�����ֱ��<RUBY text="����">���</RUBY>��

���ڶ������ʳ��ȱ�����������ε�����ǰ˵���ֻ���
��Ȼ����������
�������ղ�����ȫ�����⡣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�^ȥ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0340]
//��������
<voice name="����" class="����" src="voice/ma05/0121320a00">
������Ļ������ʳ������Ȼ���ϸ�
����˵��������𽥿�ʼ���ͣ�����
�ع�Щʱ�ղ��ܶ����ط�����

//��������
<voice name="����" class="����" src="voice/ma05/0121330a00">
����˵������Զ�ȸ�ͣսʱ�ö��ˡ�
��Թ���������ܾ�̫�������ˡ���

{	FwC("cg/fw/fw���I_ʧ��.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0121340b31">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0350]
������ǿ��Բ��˵���������ƺ�û��Ч����
���������ް����ٵĴ����෹�������ƺ�����������
�ˡ�

������û�취��
���������ˣ����罫��ʹ�ɡ�

�������Ѿ����˲��ɲ�˵�ĵز���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�^ȥ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0360]
//��������
<voice name="����" class="����" src="voice/ma05/0121350a00">
��������¡���

{	FwC("cg/fw/fw���I_ͨ��b.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0121360b31">
�������ǡ���

{	FwC("cg/fw/fw����_�^ȥ.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0121370a00">
������������
�������ֹͣ�����ӵ��Ӷ��о�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0370]
������  
�����������Լ����ҪЮ�Ĵ�ǡ�
  ����û���Ǹ���Ҫ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���I_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0380]
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0121380b31">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0390]
���ҿ��ǵ������㲻��ȡ̯���赥�ľٶ�����Ҳ���Լ�
��������˼������֪Ϊ�Σ���������˼��š���ˣ�
��������Щ��Ϊ�Ϻ���ڡ�
����ʵ�ϣ����������˼��

�������ı����м����Ų���ʹ�����ɫ��
����һ������Ϊ����������Լ���������ڿ�����β���
��Լ��

���⵹Ҳ�ǡ�
��ɽ����Ҳ�������������鷳�Ų�ȡ�Ӷ��о��ġ�����
Ҳ���Լ��Ȳ����ѵ��Ѵ�����������ʵʵ��ֹͣ�Ӷᡣ

��˭���������ǿ�������飬�������˵�����ˡ�����
Ϊ�˻�ÿ��еĽ������������ÿ��ǵ����ǵ�������
���ҿ���Ƭ��֮���ٶȿ��ڡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�^ȥ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0400]
//��������
<voice name="����" class="����" src="voice/ma05/0121390a00">
�����ڣ�������ס��ɽ������

{	FwC("cg/fw/fw���I_ͨ��b.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0121400b31">
����������

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0121410a00">
���������Ϣ�ģ��������������˸��ֵ�
�ķ�ũ�
����ס������Ρ���

{	FwC("cg/fw/fw���I_�@��.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0121420b31">
������������

//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0121430b31">
��Ҫ�����ǡ���
������������������

{	FwC("cg/fw/fw����_�^ȥ.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0121440a00">
���ǡ���

{	FwC("cg/fw/fw���I_ͨ��b.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0121450b31">
��������

{	FwC("cg/fw/fw����_�^ȥ.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0121460a00">
����Ȼ���ֽ׶���ֻ���Ҹ��˵��뷨��
�������������󷽱�ֹ֤ͣɽ���о�������
����Ϊ�����ṩ��ʳ�Ļ�����

{	FwC("cg/fw/fw����_�^ȥ.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0121470a00">
��������λǨ�뱾�򣬲��ڻ���㹻���ջ�֮ǰ
����λ�ṩ�������ʡ�
��������������ͬ��Ҳ���ǲ����ܵġ���

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0121480a00">
���ҽ����Լ������ܼ�֮�¡�
����ĸҲ��Э���ҵġ���

{	FwC("cg/fw/fw���I_ͨ��b.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0121490b31">
�����á�������

{	FwC("cg/fw/fw����_�^ȥ.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0121500a00">
�����Ƿ������ˡ�
������˵������Щ���������Ǽ�������
�����൱��Ӱ�����ġ���

{	FwC("cg/fw/fw����_�^ȥ.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0121510a00">
���Ҵն�����Ϊƽ����ݣ����Զ����ҵ�����
��ͳ����һ����������
�����Ǽ�����˱�������

{	FwC("cg/fw/fw���I_ͨ��b.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0121520b31">
������Ŷ��
��������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0410]
�������ŷ������ף��ƺ����Ƕ�Ӱ�������ƣ�����
��Ա�����顣
��������������������ʶ�ذ�ס�˿ڡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�^ȥ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0420]
//��������
<voice name="����" class="����" src="voice/ma05/0121530a00">
�����������������������������ƻ���������
׷���ƽ��ʵ��ġ�
����ͳ˧��֯�õ���������δ���������ͳ�ͻ��
��һ��ʵҲ��ʵ��������

{	FwC("cg/fw/fw���I_ͨ��b.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0121540b31">
��������

{	FwC("cg/fw/fw����_�^ȥ.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0121550a00">
��������Ҫ�Ļ�����λ����Ը��
������������˼�ء��Ƿ��ܽ����ҵ��᰸����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0430]
������˵֮��˵�꣬�ұ�տڲ��ԡ�
����������ϸ���������������и��ֳ��������ɫ��

�����Ƚ�����������˵�����᰸û�����⡣
����������˵���������ֳƿ졣�Ӷ�֮������Ϊ����
�䱦֮���������ֺ�������ȥ�ҡ����پ��н���ȥ��
��һ�ʹ����ļ�ֵ�������п��ܡ�

������Ϊɽ������ʿ����Ҳ����ˡ�
���������Ҳû���ֹ۵���Ϊ��һֱ��������������
�ʽ�������밲��֮��Ļ���ؽ���ʼ���������
���ΰ���

�����ȴ����ǵģ����Ǳ���Ϊ��ͽ����ʾ�ڰ��ˡ�
�����������������������У����ܱ������ֱ��ҵĽ�
�֡�

��û���κ����⡣

���������ԡ�
���������������Ͻ����᰸�Ļ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���I_ʧ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0440]
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0121560b31">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0450]
������Ե���ǡ���
��
������ı���仯��������������ǰ��ʾ��һ�С�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�^ȥ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0460]
//��������
<voice name="����" class="����" src="voice/ma05/0121570a00">
������������¡�����

{	FwC("cg/fw/fw���I_ͨ��b.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0121580b31">
����������ʿ��
���ն���������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0470]
���������������д�����ǰ������
��ǿӲ���ֱ��䡪��ǡ��װ��һ�㡣

��װ�ס�
������������ס������������ס�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���I_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0480]
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0121590b31">
����������ʿ����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0490]
���ظ�����仰�����ޱ��֮�⡣
  ��������ΥԼ֮�ܡ�

��ȴû�������ҵ�ԭ�¡�
������<RUBY text="����">�ڳ�</RUBY>һ�������޳ܵ�ģ����
��
�����ԣ��������Զԡ�

�������ס�
��������ʿ��

���������ϵ���ʿ��
��ͬʱ����һ����˧��

�����������ڶ���ʿ��
�����縺�ű����Լ��Լ����ǵ����ϵ����Ρ�������һ
����˧��

������������ʿ֮����
�����ᡣ

�������ò���������ʿ֮����
�����ᡣ

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�^ȥ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0500]
//��������
<voice name="����" class="����" src="voice/ma05/0121600a00">
������������

{	FwC("cg/fw/fw���I_ͨ��b.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0121610b31">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0510]
������������͸���࣬վ��������
�����û�д���һ˿��������ֻ������׷�����ҡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
	PrintGO("�ϱ���", 25000);
	CreateColorSP("�}��ܞ", 10000, "#000000");
	OnBG(100,"bg053_�����Ҥ�ͥ_02.jpg");
	FadeBG(0,true);
	CreateSE("SE01","se�ճ�_����_���饤���]���01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	DrawDelete("�ϱ���", 1000, 100, "blind_01_00_1", true);
	DrawDelete("�}��ܞ", 1000, 100, "blind_01_00_1", true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0520]
����������ֽ���ţ��͵�̾�˿�����
����������޶˵ظе��ᷳ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����I
	PrintGO("�ϱ���", 25000);
	CreateColorSP("�}��ܞ", 10000, "#000000");
	OnBG(100,"bg033_������һ��_02.jpg");
	FadeBG(0,true);
	FadeDelete("�ϱ���", 1000, true);
	FadeDelete("�}��ܞ", 1000, true);

	SetFwC("cg/fw/fw���I_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0530]
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0121620b31">
��������

{	FwC("cg/fw/fw���I_ʧ��.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0121630b31">
�������ҡ���
���������֪�ܡ�����

//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0121640b31">
����ʿ����
�����������ʿ�Ļ�����

//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0121650b31">
����������͸��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���
	ClearWaitAll(2000, 1000);
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg051_�����Ҿ��g_01.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 1000, true);
	SoundPlay("@mbgm27",0,1000,true);

	SetFwC("cg/fw/fw�y_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0540]
//���y��
<voice name="�y" class="�y" src="voice/ma05/0121660b46">
����������
�����еò�˳���ء���

{	FwC("cg/fw/fw����_�^ȥ.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0121670a00">
���ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0550]
�����緹ʱ��
���ҽ���ҹ�����λ㱨����ĸ��

����֪�Ƿ���˶�����ʳ��֪ζ��
����ʲô������Ī���Ŀ�ɬ��

������ɽ���ŵķ�����ƽ�ճ�����
���������Ⲣ��һ��һϦ���ܽ��֮�£���Ҫ��и��
Ŭ����

��������ҹ֮�²�δʹ��̫�ܴ������֮���Һܿ��˯
���ˡ�
��������ʵ���ھ������ƺ�������Щʧ���ġ���������
ĸ����Ĺ����з�������һ�㡣

�����ɵý�����ͷɥ��������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�y_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0560]
//���y��
<voice name="�y" class="�y" src="voice/ma05/0121680b46">
���𼱣���������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0570]
��˫�ֺ��Ʊ�ʾ�������͵���ĸ��΢Ц��˵����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�y_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0580]
//���y��
<voice name="�y" class="�y" src="voice/ma05/0121690b46">
��������Ҫ����ѭ�򽥽����ļ��Բ����ȶ�����
����Ҫ����ʿɽ���ǲ�����˳˳������
һ���Ƕ��ġ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0121700a00">
�������ס�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0590]
����������ˣ��������Ʋ�ס���ĵĶ�ҡ���������Ϊ
������<RUBY text="��������">��δ���</RUBY>֮����
���Ǿ��ǣ���ƾ������ϸ�ʿɽ���塣������ʿ��ֻ
��׹��һ;��

�������򲻴
���Ҹ���Լ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�y_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0600]
//���y��
<voice name="�y" class="�y" src="voice/ma05/0121710b46">
�����ǣ��������δ��㣿��

{	FwC("cg/fw/fw����_�^ȥ.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0121720a00">
����֮�����Ȱ���Ͷ˹�ȥ���۲�һ��
������µ����顣
����һ�˿��л�ŧ�����ƣ�
�͵�׼����ҽ���ˡ���

{	FwC("cg/fw/fw�y_ͨ��a.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0121730b46">
���ţ�����
�������������㰡�����ڱտ��������
�ģ���λ�������������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Ф��󡣹⤬�������
	SetVolume("@mbgm*", 100, 0, null);
	CreateSE("SE01","se����_����_�ߵ[��Ѻ���Τ���");
	MusicStart("SE01",0,1000,0,1000,null,false);

	SetFwC("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0610]
//��������
<voice name="����" class="����" src="voice/ma05/0121740a00">
��!!��

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����g
	PrintGO("�ϱ���", 25000);
	CreateColorSP("�}��ܞ", 10000, "#000000");
	OnBG(100,"bg033_������һ��_01.jpg");
	FadeBG(0,true);
	FadeDelete("�ϱ���", 1000, true);
	FadeDelete("�}��ܞ", 1000, true);
	SoundPlay("@mbgm32",0,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0620]
���и��ɡ�
������˼����ȥ����������뷨��

����������
����ô�Ҳ�����ߵ����塣�������µ��������أ�ȴӦ
��δ�˼���Ҫ���١���Ϣһ��Ҳ�ָ��ò���ˡ�

�������и�����û����ġ�
�����̡����������ܰɡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���I_ʧ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0630]
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0121750b31">
�����ȣ������������ȥ������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0640]
������������и�����̫�Բ�ס�˼��ˡ�
��������������̣һ�����׵����⡣���ۺ���������
���Լ����������ɽ�������һ�����±ؽ�ɱ�����

��������ʧȥ�и��Բõ������ˡ�

���Ȼ�ɽ�У���ܵ�����˵��ʵ�顣
��Ȼ��Ϊ�Ա�Ǹ�⣬����������ΥԼ֮�ܣ��и��˶ϡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���I_ʧ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0650]
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0121760b31">
����ʿ֮���𡭡���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0660]
��ֻ���������ˡ�
��������ҹ����ʿ֮�˾ܾ������᰸������

������ʿ֮�ˡ�

����ν��ʿ��
����������������֧������֮�ˡ�

����������ѹ���������������������Ӷᡣ
���������ʿ��

������ô���䡪��
��Ҳ����<RUBY text="����">����</RUBY>���ڶ�����ȥ��

����ҹ����˵����
���ṩ��أ����������������

����ʾ�ȱ���
����ʾ���⡣

�������Ҳ��޷����ܡ�
���������ں��⣬������ʿ֮����

���������Ӷ�Ϊ�����������Ӷ����ޡ�����Ļ�п�
���ܡ�
����Ҳ����ʿ��һ;������Ϊ�µȡ���Ϊ���ӣ����չ���
����ʿ�ķ��롣

���������Ϊ�ܣ����ܱ�����ʿ֮�ˡ�
����������ץס�������Ԯ�֣��㲻������ʿ��

�����ܳ�֮Ϊ��ʿ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���I_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0670]
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0121770b31">
����������ˡ�
��������ʿ�������ˣ�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0680]
������������

����϶������ϲߡ�
����˭���á�����������˵�����Լ���������˵��

�����ǣ������ס�
����ʿ����������ζ��һ��ְҵ��

������<RUBY text="��������">���֮��</RUBY>��
����Ϊ��ʿ�������ɳ�֮�ˣ���Զ��ֻ������ʿ��

�����С���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���I_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0690]
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0121780b31">
����ʿ���Ǳ����Ļ���
�����ԡ��������ɶ�����ҡβ��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0700]
���������
������û����ʿû�������ʸ�

���Һ���������᰸�ǿ��ǵ�ɽ�����������Ƕ���
����֮���������ġ���ǰ;������ġ���Ȼ����
��ˣ����ۺ���������֮���������ϵ��

�����������Ƕ�����������ֻ��Ҫ�����ȥ�����ˡ�
������Ϊ������һ�㣬���޷����ܡ�

�����ֻҪ�����ȥ�Ļ�������Ȼ������ܣ���Ҳû
�б�Ҫ���ա�

����Ϊһ��ͷ�죬Ϊ�����¾�ְ���𣬶������޳ܵ�
����Լ�����ܾ�Ҫ������ֻ������������������ˡ�
�����δ�䣬ȴ�����ʶ��ˡ�

���򡪡�
��������Ҫ���ǽ����һ�������Ļ���

�������һ������ԥ�ؽ��ܰɡ�
����Ϊ��Ӯ���ҡ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���I_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0710]
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0121790b31">
�������ǰ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0720]
���������ˡ�
���ܾ������᰸�������ԭ��

����Ӯ���ҡ�
�����ԣ����������ȥʲô�����İ���á�

��Ȼ������Ϊʤ�ߵ���ȴҪ����Ϊ���ߵ���ʩ�ᡪ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���I_ʧ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0730]
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0121800b31">
������ݽ�һ�㣩

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0740]
�����������
�����ȣ����Լ��޷����̡�

��������Ϊ�������Ĵȱ�����
����ʹ���Լ���Ϊ������˵�ǲ���ҳݡ���΢����
�Ĵ��ڡ�

����Ϊ<RUBY text="����������">�Եȵİ���</RUBY>���Լ���������������衣
������ر�����ʤ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���I_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0750]
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0121810b31">
���������Щ������������
������Ż�˵���Ǿͽ����᰸�ɣ�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0760]
����ô�᰸����϶�Ĳ������Լ������ˡ�
�������������򡣡�����������

�����ֺ��´��ŵ���Ҳ�Ҳ���������������˵��
��������ΨΨŵŵ�ؽ��������᰸���Ͳ��ò�����
��С�������Լ���������Ь���䲻�ϡ�

����ֵ��������һ�ۣ��������������ļ����У�ֻ����
����Ȥ����Ʒ���ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���I_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0770]
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0121820b31">
��������Ϊ������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0780]
�������ϻ�������鷳��Ů�ˡ�
��������䷢�����ĵĸ�̾���ҿ�Ц��

����Ȼ�����и������������
���Լ��޷����̲�ȥ�ر�����Ȼ�������Իر�����ִ
������Ů��ֻ�ᰭ�¶��ѡ�

�����ٿ��������˶ϡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����α������
	CreateSE("SE01","se����_����_�������Ƥ�01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateVOICE("����","ma05/0121830a00");
	MusicStart("����",0,1000,0,1000,null,false);

/*=====================================
//���ܥ����Τ�
	SetFwC("cg/fw/fw����_�^ȥ.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0790a]
//��������
<voice name="����" class="����" src="voice/ma05/0121830a00">
��������!!��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

=============================*/

	SetFwC("cg/fw/fw���I_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0790b]
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0121840b31">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����β���
	PrintGO("�ϱ���", 25000);
	CreateColorSP("�}��ܞ", 10000, "#000000");
	OnBG(100,"bg033_������һ��_01.jpg");
	FadeBG(0,true);
	FadeDelete("�ϱ���", 1000, true);
	FadeDelete("�}��ܞ", 1000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0800]
���⾭�����������ҹ�����ʱ���ڷ�����
�����磬�������糿����ʵ��������

��������ʱ��֢״������Ϊ���ء�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0810]
//��������
<voice name="����" class="����" src="voice/ma05/0121850a00">
��ʮ�ֱ�Ǹ��ͳ���ˣ�
���밴ס�����ȣ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0820]
����ʵ�����޷�ѹ��ס���ÿ񱩵Ĳ������壬������ĸ
������
��û�л�Ӧ������ĸ�����ҳ���ǰ�ж������ˡ���ʱ��
��ץס���������״������ϥ�ǡ�

�������ɿ����Ĺ���
��������׼��ע������ɢ����һ˲�䣬��̧��ͷ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�y_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0830]
//���y��
<voice name="�y" class="�y" src="voice/ma05/0121860b46">
����������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0121870a00">
��!!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0840]
�����ֱҪ������

��ǧ��һ��֮�ʳɹ��ر�ס�����õ��Դ���
����˫�֡���������Ѹ�ٵء�����ء���֧�������ǵ�
��ǿ�Ͷ��������ڽ�����СĴָ��ͷ����

����һɲ�ǣ��·��֦���ȶϰ�Ķ���������<k>
��
����������û����������л��л�ء�

����һ˲���Ƿ������֮ʱ��
�������ء�һ���ء�����Ŀ�̬�����ȶ���

���ҵ������ָ�ƽ��������������֮��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0850]
//��������
<voice name="����" class="����" src="voice/ma05/0121880a00">
������������

{	FwC("cg/fw/fw�y_ͨ��a.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0121890b46">
�������ţ���ô˵�ء�
���ӹ�һ�٣���

//���y��
<voice name="�y" class="�y" src="voice/ma05/0121900b46">
������ǳ��á�
���ɵúã����ӡ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0121910a00">
��������һ�㡭����

{	FwC("cg/fw/fw�y_ͨ��b.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0121920b46">
����������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0121930a00">
�������á�����һ�㡭����

{	FwC("cg/fw/fw�y_ͨ��b.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0121940b46">
��������

//���y��
<voice name="�y" class="�y" src="voice/ma05/0121950b46">
���侲������
�����ӡ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0121960a00">
��������

{	FwC("cg/fw/fw�y_ͨ��a.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0121970b46">
�����������ʱ���ã���ʱȴ�����á�
�����𣿡�

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0121980a00">
�������ǡ�
�������ס�����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0121990a00">
����ȥ����������¡�
��������һ�Ρ������ܶ��ٴΡ�ֱ����
Ը��ֹͣɽ���о�������

{	FwC("cg/fw/fw����_�^ȥ.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0122000a00">
��ֻ����ˡ���
�����ñ���������ҽ�ι��ҽ����
ֻ����ˡ�����

{	FwC("cg/fw/fw�y_ͨ��b.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0122010b46">
�������š�ȥ�ɡ�
���������Ź⡣��

{	FwC("cg/fw/fw����_�^ȥ.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0122020a00">
���ǡ�
���������ˡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ͥ��
	PrintGO("�ϱ���", 25000);
	CreateColorSP("�}��ܞ", 10000, "#000000");
	OnBG(100,"bg053_�����Ҥ�ͥ_01.jpg");
	FadeBG(0,true);
	FadeDelete("�ϱ���", 1000, true);
	FadeDelete("�}��ܞ", 1000, true);



//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0860]
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����g
	PrintGO("�ϱ���", 25000);
	CreateColorSP("�}��ܞ", 10000, "#000000");
	OnBG(100,"bg033_������һ��_02.jpg");
	FadeBG(0,true);
	FadeDelete("�ϱ���", 2000, true);
	WaitKey(1000);
	FadeDelete("�}��ܞ", 2000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0870]
������������ڼ䣬�ҽʾ���֭˼���Բߡ�
������ô����������������ת�⡣

�������������������Ժ��С�
���������ֱ�ȫ���񶨡�

�����ա�
��ֻ��Ψһ�İ취���С�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0880]
//��������
<voice name="����" class="����" src="voice/ma05/0122030a00">
�������ˡ���

{	FwC("cg/fw/fw���I_ͨ��b.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0122040b31">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0890]
���Ұ�ͷ��ñ��������ϵ�������͡�
�������׵���·������һ�������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0900]
//��������
<voice name="����" class="����" src="voice/ma05/0122050a00">
�������ֳ�����������ʿӦѡ֮����
���Դ�����֪��������

//��������
<voice name="����" class="����" src="voice/ma05/0122060a00">
��Ҳ��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0910]
��������ҹ��֪���º����Ǽ�̵Ĵ𸴡�
���������Է�����

�����ԣ��Ҳ����������²�������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�^ȥ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0920]
//��������
<voice name="����" class="����" src="voice/ma05/0122070a00">
�����ǡ�
���Ҷ�����������������

{	FwC("cg/fw/fw���I_ͨ��b.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0122080b31">
��������

{	FwC("cg/fw/fw����_�^ȥ.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0122090a00">
��Ϊ��������ӡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0930]
����Ϊ����λ�����⻰��û��˵���ڡ�
����Ϊ���н��ۣ�<RUBY text="��������������">�����Ǻ�������</RUBY>��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0940]
//��������
<voice name="����" class="����" src="voice/ma05/0122100a00">
����������
����ֹͣɽ���о�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0950]
�����޼��ɣ�ֻ��һζ�ؿ���
��ߵͷ����

������������
����������֮����һ��������ȴ�����¶���

��Э������������֮���������ϵʧ���ˡ�
����Ϊ���ǲ��������������

����������ʿ��
��������ʾ�ˡ�

��������������������ʩչ��ʿ֮������ӹ���ɣ�ֻ��ռ
��ɽͷ������֮�¡�
�����������������ǣ�ֻ����ˡ�

�������Ѷ���
�����ԣ�<RUBY text="����">����</RUBY>��

����Ҫ��������Ϊ���ܡ�
��ֻ�����󡢿���Ψ��һ;��

���������Ǳ������ڡ�
����������������ʿ��ݡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0960]
//��������
<voice name="����" class="����" src="voice/ma05/0122110a00">
������������

{	FwC("cg/fw/fw���I_ͨ��b.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0122120b31">
������˵�����𣿡�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0970]
���������ڿ��ڡ�
��������䡣

�����ǡ����������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�^ȥ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0980]
//��������
<voice name="����" class="����" src="voice/ma05/0122130a00">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0990]
���ҷ��׹��ţ�������˼����
��������˵�Ļ����������������ݣ������䳹��

��Ȼ�����Ŀ�����ȴ�ƺ�Ƿȱ����������Ӧ���䵭��
������Լ��Щ��֮�⣬ȴ���䵭��ͬ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���I_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1000]
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0122140b31">
��˵�����𣿡�

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0122150a00">
���ǡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1010]
������������ͬ��������������ʣ�����ã�Ż�Ӧ����
�����������к���ͼ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���I_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1020]
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0122160b31">
������û�С���
��������˵�����𣿡�

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0122170a00">
��������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0122180a00">
����������
��û�С���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1030]
�������ҵĻش��������̾�˿�����
������������û�л����Ļ������Ƿ������ĵ�ʧ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���I_΢Ц.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1040]
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0122190b31">
�������Ǻǡ�����

{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0122200a00">
����������

{	FwC("cg/fw/fw���I_ͨ��b.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0122210b31">
���ն�������
����˵���ֻ��һ��ƽ�񡣡�

{	FwC("cg/fw/fw����_�^ȥ.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0122220a00">
���ǵġ���

{	FwC("cg/fw/fw���I_ͨ��b.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0122230b31">
��ƭ�ˡ���

{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0122240a00">
��ʲô����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1050]
���������Ǻ��⡣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���I_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1060]
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0122250b31">
����Ҳ����ʿ��
��<RUBY text="��������������">���������֮��</RUBY>����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0122260a00">
��������

{	FwC("cg/fw/fw���I_ͨ��b.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0122270b31">
��������ζ��޷��������˵�ʩ�ᡭ��
�����Թ��ߵĽǶ����������ˡ���

//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0122280b31">
������ˡ���������Ŀ��
�����Ƕ�ô��֪��ԭ����ˡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1070]
����λ�����������������ţ�΢Ц�š�
�������Գ�һ�㡣

��������֪������Ϊ�Ρ�
��������������˵ʲô��

����֪��Щʲô����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���I_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1080]
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0122290b31">
����������ʿ֮����������

{	FwC("cg/fw/fw����_�^ȥ.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0122300a00">
������

{	FwC("cg/fw/fw���I_ͨ��b.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0122310b31">
��������Ȼ�����ˡ���
���ҡ������ҵı����ǡ�����������ʿ֮��
������������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0122320a00">
������������£���

{	FwC("cg/fw/fw���I_΢Ц.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0122330b31">
���ն�������
����������˵�����±�������

{	FwC("cg/fw/fw���I_ͨ��b.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0122340b31">
����Եġ���
����Ҫ�㱣֤�ܽ�������һ�ɡ���

{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0122350a00">
��������

{	FwC("cg/fw/fw�����^ȥ_���L.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0122360a00">
���ǡ����ǡ�
���ҡ����������𵽵ס���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1090]
�������Ϸ����Ե�Ӧ��
�������Ի�δ�ܸ�����̬�Ľ�չ��

������������ˡ�
�����ָ��������ĸо���

�������ܰɣ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���I_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1100]
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0122370b31">
������һ�¡�
���������������У�Ӧ�����ľߺ�ֽ�š���

{	FwC("cg/fw/fw�����^ȥ_���L.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0122380a00">
���ǡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1110]
�������ӵ�����������Ʒ�ĵط��ó���Ҫ��Ķ�������
���˹�ȥ��
����Ѹ�ٵ���ֽ��д��Щʲô��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���I_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1120]
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0122390b31">
��������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0122400a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1130]
���ӹ���������ֽ��
��������д�����ݼ�Ϊ��ࡣ

�������ҵ��᰸��
���������Ӷᡣ
�����һ�����Ѻ��

����������������֮�
�����������������֮�

�������������
������о���!!

������Ȼ����Ϊ�Ρ�<k>
��Ϊ�Σ�ͻȻ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1140]
//��������
<voice name="����" class="����" src="voice/ma05/0122410a00">
��������

{	FwC("cg/fw/fw���I_ͨ��b.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0122420b31">
��������

{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0122430a00">
������ˡ�Һ�Ϳ��
��δ���뱻����ȥ����

{	FwC("cg/fw/fw���I_ͨ��a.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0122440b31">
����ָʲô����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1150]
����Ȼ��
������Ī�����˸л�����������쵭����Ӧ����

����������С�ĵط���һ�ԡ�
��ָ����룬���ٴι������������˸�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�a��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1160]
//��������
<voice name="����" class="����" src="voice/ma05/0122450a00">
���м���������

//��������
<voice name="����" class="����" src="voice/ma05/0122460a00">
�������м�������������

{	FwC("cg/fw/fw���I_ͨ��b.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0122470b31">
���������
����ֻ�����ǽ�����Ľ��װ��ˡ���

//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0122480b31">
����������Ĺ��ޡ�
���ͽ��������ˡ���

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0122490a00">
���ǡ�������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	ClearWaitAll(2000, 2000);

}

..//������ָ��
//�Υե����롡"ma05_013.nss"