//<continuation number="1580">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;

//������󡸣ãУ��ǥХå��á�
		$GameDebugSelect = 1;

		Reset();
	}

}

scene ma05_020.nss_MAIN
{
	//��e�ޥ����ٌ���
	Conquest("nss/ma05_020.nss","KaisouReverse",true);
	Conquest("nss/ma05_020.nss","KaisouReverseSet",true);

	CP_AllSet("����");

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
	#bg047_�������_�b_01=true;
	#bg047_�������_�b_02=true;
	#bg047_�������_�a_02=true;
	#bg054_�����Ҽ���b_02=true;
	#ev139_�y�򚢺�_a = true;
	#ev139_�y�򚢺�_b = true;
	#ev139_�y�򚢺�_c = true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	CP_AllDelete();

	$GameName = "ma05_021vs.nss";

}

scene ma05_020.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"ma05_019.nss"

	if($GameDebugSelect==1){CP_AllSet("����");}


//���ա���ա�Ϧ��
//����Ӥ�������ۡ���ɽ�\���ࡣ
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg001_��a_01.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 2000, true);
	WaitKey(1000);
	OnBG(100,"bg002_��a_02.jpg");
	FadeBG(3000,true);
	WaitKey(1000);
	CreateSE("SEL01","se��Ȼ_��_��ĵ���");
	MusicStart("SEL01",3000,1000,0,1000,null,true);
	OnBG(100,"bg047_�������_�b_02.jpg");
	FadeBG(3000,true);

	SetFwC("cg/fw/fw���I��_��Ц.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//�����I�ܡ�
<voice name="���I��" class="���I��" src="voice/ma05/0200010b32">
��������������������

//�����I�ܡ�
<voice name="���I��" class="���I��" src="voice/ma05/0200020b32">
����������������������

//�����I�ܡ�
<voice name="���I��" class="���I��" src="voice/ma05/0200030b32">
������������������������������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
��һ֮βһĥ��Ц��ֹ��
������Ц����Ц��ֻ��Ц��

���������ԡ�
���Ѿ��㲻�������ô�����ˡ�

��������һ����һ����Ц��
������޴�����˻���֮�¿϶��ǿ���Ц��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���I��_�ֲ�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//�����I�ܡ�
<voice name="���I��" class="���I��" src="voice/ma05/0200040b32">
����������������
����ʲô��������һ��ʲô����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE*", 2000, 0, null);
	SoundPlay("@mbgm37",5000,1000,true);
	CreatePlainSP("�}��д",3000);

//���y�Ǻš����֣������륨�åȣ�
	CreateColorSP("�}�\", 1000, "#000000");
	CreateTextureSP("�}����", 1100, -483, -1475, "cg/st/resize/3d�y�Ǻ�_����_ͨ��l.png");
	Zoom("�}����", 0, 750, 750, null, true);
	Request("�}����", Smoothing);

	Move("�}����", 6000, @0, @400, DxlAuto, false);
	Fade("�}��д", 2000, 0, null, true);

	SetFwC("cg/fw/fw���I��_�ֲ�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//�����I�ܡ�
<voice name="���I��" class="���I��" src="voice/ma05/0200050b32">
��������֣���̫����ˣ�
����ʲô��������<RUBY text="����">����</RUBY>!!��

//�����I�ܡ�
<voice name="���I��" class="���I��" src="voice/ma05/0200060b32">
��������������
���ȵ��ع������Ѿ������ˣ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Fade("�}��д", 600, 1000, null, true);

//���o�T�������I�ܣ����ܥ�ܥ�
	CreateSE("SE01","se����_�z_�l����02");
	MusicStart("SE01",0,1000,0,750,null,false);
	StL(4000, @-30, @30,"cg/st/3d�ũ�ʽָ�]��_����_�l��.png");
	Move("@StL*", 300, @30, @-30, DxlAuto, false);
	FadeStL(400,true);

	SetFwC("cg/fw/fw���I��_�ֲ�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//�����I�ܡ�
<voice name="���I��" class="���I��" src="voice/ma05/0200070b32">
�����Ҳ�㱻������
����������

//�����I�ܡ�
<voice name="���I��" class="���I��" src="voice/ma05/0200080b32">
��Ϊʲô!?
���ҿ�������Ŷ!?���ҿ��������Ŷ!?��

//�����I�ܡ�
<voice name="���I��" class="���I��" src="voice/ma05/0200090b32">
���Һ�ǿŶ��
����ǿŶ����

//�룺���ʥꥪ�˱ܡ�090511��
//��ͬ�����ߤˤ��äƤ���ؓ���ʤ��裡
//���ʤΤˣ����ʤΤˤʤΤˤʤˤ�����
//�����I�ܡ�
<voice name="���I��" class="���I��" src="voice/ma05/0200100b32">
������ͬ�����ߣ�Ҳ����������ܣ�
�����ǣ������ǿ��ǿ��ǣ���

//�����I�ܡ�
<voice name="���I��" class="���I��" src="voice/ma05/0200110b32">
��Ϊʲô����
��<RUBY text="��������">һ��֮��</RUBY>�������ô��
��������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���o�T�������������⤲����룿
	CreateSE("SE01","se���L_�n��_�zܞ��01");
	CreateSE("SE02","se���L_�Ɖ�_����");
	MusicStart("SE01",0,1000,0,1000,null,false);
	MusicStart("SE02",0,1000,0,1000,null,false);
	Shake("@StL*", 300, 6, 0, 0, 0, 1000, DxlAuto, false);
	Move("@StL*", 600, @-20, @10, null, true);
	CreatePlainSP("�}��д",3000);
	Fade("@StL*", 0, 0, null, true);

//���y�Ǻš����֣������륨�åȣ�
	CreateColorSP("�}�\", 1000, "#000000");
	CreateTextureSP("�}����", 1100, -483, -1200, "cg/st/resize/3d�y�Ǻ�_����_ͨ��l.png");
	Zoom("�}����", 0, 750, 750, null, true);
	Request("�}����", Smoothing);

	Move("�}����", 6000, @0, @400, DxlAuto, false);
	Fade("�}��д", 2000, 0, null, true);

	SetFwC("cg/fw/fw���I��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//�����I�ܡ�
<voice name="���I��" class="���I��" src="voice/ma05/0200120b32">
����������ʲô��������

//�����I�ܡ�
<voice name="���I��" class="���I��" src="voice/ma05/0200130b32">
���㲻���ס�
����Ⱥ�һ�Ϊ�η��˷衣��

//�����I�ܡ�
<voice name="���I��" class="���I��" src="voice/ma05/0200140b32">
�����һ���֣�
���ҵĲ��£�
����������������ǣ���

//�����I�ܡ�
<voice name="���I��" class="���I��" src="voice/ma05/0200150b32">
����ͻȻ��ʼ������ɱ�Ҵ�
���������ֵ��ң���

//�����I�ܡ�
<voice name="���I��" class="���I��" src="voice/ma05/0200160b32">
��ÿ���˵����Ӷ������ˣ�
�����Ƕ��˷ܵò����ˣ����Ի�ɱ�������У���
ֻ�����ų����⣡��̫�ƻ��ˣ�������һ�ߵ���
�ܺ��°�����

//�����I�ܡ�
<voice name="���I��" class="���I��" src="voice/ma05/0200170b32">
����ȥ��ֹҲûһ���˴����ң�
��������ǹ���ؾ��ң���

//�����I�ܡ�
<voice name="���I��" class="���I��" src="voice/ma05/0200180b32">
��������������������ɱ�ҡ�
��ɱ�㡢��ɱ�ҡ���ɱ�㡭��
�����һ��Ҳ��ʣ�����������ˣ���

//�����I�ܡ�
<voice name="���I��" class="���I��" src="voice/ma05/0200190b32">
����ô����!?
���⵽����ô����!!��

{	FwC("cg/fw/fw���I��_�ֲ�.png");}
//�����I�ܡ�
<voice name="���I��" class="���I��" src="voice/ma05/0200200b32">
��˭�������Ұ���
����㰡������������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���y�Ǻš�ȫ��
	CreateColorEXadd("�}��", 5000, "#FFFFFF");
	Move("�}����", 2000, @0, -641, DxlAuto, false);
	WaitKey(500);
	Fade("�}��", 300, 1000, null, true);

	Delete("�}��*");
	Delete("�}�\");
	Delete("�}��*");
	WaitKey(1000);

	StR(1000, @0, @0,"cg/st/3d�y�Ǻ�_����_ͨ��b.png");
	FadeStR(0,true);

	Fade("@StL*", 0, 1000, null, true);
	FadeDelete("�}��", 1000, true);

	SetFwC("cg/fw/fw���I��_�ֲ�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//�����I�ܡ�
<voice name="���I��" class="���I��" src="voice/ma05/0200210b32">
����һ��
��������ʲô!?��

{	FwC("cg/fw/fw�y�Ǻ�_ͨ��.png");}
//���⡿
<voice name="��" class="��" src="voice/ma05/0200220a14">
�������ߡ�
�������𡣡�

//���⡿
<voice name="��" class="��" src="voice/ma05/0200230a14">
����ûˮ׼�����⡣
������������Ҫ�ش�˵�������࡭��
��������͸���Ĵ𰸡���

//���⡿
<voice name="��" class="��" src="voice/ma05/0200240a14">
�����ˡ�
����Ȼ���ʼ��ҵĴ������壬���Ҿ͸���˵��
һ�¡���

//���⡿
<voice name="��" class="��" src="voice/ma05/0200250a14">
����Ҫʹ������鲼����֮�䡣
����������

//���⡿
<voice name="��" class="��" src="voice/ma05/0200260a14">
�����²��䡣��

{	FwC("cg/fw/fw���I��_����.png");}
//�����I�ܡ�
<voice name="���I��" class="���I��" src="voice/ma05/0200270b32">
��������������������
������ʲô����

//�����I�ܡ�
<voice name="���I��" class="���I��" src="voice/ma05/0200280b32">
��Ī���������

{	FwC("cg/fw/fw�y�Ǻ�_ͨ��.png");}
//���⡿
<voice name="��" class="��" src="voice/ma05/0200290a14">
�������𣿡�

{	FwC("cg/fw/fw���I��_����.png");}
//�����I�ܡ�
<voice name="���I��" class="���I��" src="voice/ma05/0200300b32">
�������ס���
��ʲô�������ס�����

//�����I�ܡ�
<voice name="���I��" class="���I��" src="voice/ma05/0200310b32">
����㡭��
����ȥ�����ˡ����Ⱦ��Ұ�������

{	FwC("cg/fw/fw�y�Ǻ�_ͨ��.png");}
//���⡿
<voice name="��" class="��" src="voice/ma05/0200320a14">
���������š�
�������Զ���Լ������硣��

//���⡿
<voice name="��" class="��" src="voice/ma05/0200330a14">
���м���Ҫ����������
����������㰮��������������

{	FwC("cg/fw/fw���I��_ͨ��.png");}
//�����I�ܡ�
<voice name="���I��" class="���I��" src="voice/ma05/0200340b32">
��������㡭����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������`��������һ��
	CreateSE("SE01","se���L_�Ɖ�_����02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateTextureEX("�}��", 300, Center, Middle, "cg/bg/bg047_�������_�b_02.jpg");
	Fade("�}��", 0, 750, null, true);
	Shake("�}��", 600, 0, 10, 0, 0, 1000, Dxl2, false);

	SetFwC("cg/fw/fw���I��_�ֲ�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//�����I�ܡ�
<voice name="���I��" class="���I��" src="voice/ma05/0200350b32">
������������������!?��

{	FwC("cg/fw/fw�y�Ǻ�_ͨ��.png");}
//���⡿
<voice name="��" class="��" src="voice/ma05/0200360a14">
����֮����
�����ڲ�����������Ļ����ͱ�������Ŷ��
ɽ��ͷ�ӡ���

{	FwC("cg/fw/fw���I��_�ֲ�.png");}
//�����I�ܡ�
<voice name="���I��" class="���I��" src="voice/ma05/0200370b32">
���桭��
����ѽѽ������

{	CreateSE("SE02","se����_����_�᤺����01");
	MusicStart("SE02",0,1000,0,750,null,false);
	Move("@StL*", 300, @-20, @0, DxlAuto, false);}
//�����I�ܡ�
<voice name="���I��" class="���I��" src="voice/ma05/0200380b32">
��ѽ��ѽ����������
��ѽ������������������

//�����I�ܡ�
<voice name="���I��" class="���I��" src="voice/ma05/0200390b32">
������������������
����������������������������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���o�T��������
	CreateSE("SE01","se���L_����_��ͻ�M01");
	MusicStart("SE01",0,1000,0,650,null,false);
	Move("@StL*", 300, @-150, @0, Axl2, false);
	DeleteStL(300,false);
	WaitKey(200);
	CreateColorSPadd("�}�ե�", 5000, "#FFFFFF");
	WaitKey(100);
	Fade("�}�ե�", 600, 0, null, false);
	DrawDelete("�}�ե�", 300, 1000, "slide_08_00_1", true);

	WaitKey(1000);

	SetFwC("cg/fw/fw�y�Ǻ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//���⡿
<voice name="��" class="��" src="voice/ma05/0200400a14">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(2000, 2000);

//��������
//������
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg050_�������Tǰ_02.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 2000, true);
	WaitKey(1000);
	OnBG(100,"bg054_�����Ҽ���b_02.jpg");
	FadeBG(3000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
��������֪������ʹ��ش�Ϣ�˶೤ʱ�䡣
���ع��������ƻ��Ѿ������ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//��������
<voice name="����" class="����" src="voice/ma05/0200410a00">
������������ʱ�򡣡�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
�����ڻָ���ƽ����������������
���������ʣ������ʱ���Ѿ��˷ѵ��ˡ�

�����������ж�������
�����С����Ǹ����У����С�

����Ȼ���������ֶ�����
���ؽ������ֻ�����ӹ���ɡ��ҸҶ��ԡ�

������װ�����ֽ��еĹ���˵��ǡ�
��Ϊʲôû����ֹ����

���������ĵĻ���ֹ�ڴˡ�
����֪��ɽ��һս�����Ρ��Է���������ռ������
�ơ���ؼ����Ƕ�����״̬�Ĺ���˵��Ҳ��������Ӧ
���Ķ��֡�

��Խ��Խ���겻����
��������֮������ȥ�������ӵ������

������֮����ȷ�Ϲ��Ƿ񰲺á�

������Ҳ�˲��ϱ���ٵļ��
����ֻ����ĸŲ����ȫ�ĵط������š���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ɩ`�󡣸o�T��������Ƥ���
	CreateSE("SE01","se���L_�Ɖ�_����02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	$��r�gԪ=RemainTime("SE01");
	$QTime=$��r�gԪ / 2;
	CreateTextureEX("�}��", 1100, Center, Middle, "cg/bg/bg054_�����Ҽ���b_02.jpg");
	Request("�}��", Disused);
	Fade("�}��", 0, 800, null, true);
	Shake("�}��", $QTime, 0, 20, 0, 0, 1000, Dxl2, false);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
������ͻȻ���������

���ũ�ʽ�������
�������޾������������

����������������񷨵Ļ�����½��ȥ��Զ��
����ֱ���񡭡�һ��<RUBY text="����������">���߽�����</RUBY>����
��½���Ƽ����Źۡ�

����Ȼ�ƺ��������ԭ����ɵģ�����ȴҲһ�����ҵ�
ģ����
�����ϵ����׵������顢�ѿ���Ť����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//��������
<voice name="����" class="����" src="voice/ma05/0200420a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
�����ý�Ӳ�Ĵ�����һ�������⣬���յó����ۡ�

�������������
���������ǹ⡣
�������Ǿ��ǣ�ɽ����Ϯ�����ӵķ�ͽ��

{	SoundPlay("@mbgm34",2000,1000,true);}
���������ˡ�
��������һ�����ߣ������ҵ�ͬ�顣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nw������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//�����I�ܡ�
<voice name="���I��" class="���I��" src="voice/ma05/0200430b32">
������������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0200440a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
����֪�ǲ�����־���壬��λ��ҵ�����һ��������
��ԭ�ض���һ�����Ȼ��ͻȻ̧���������ҡ�
����Ŀ�ཻ��

����ֻ֪���Է��Ǿũ�ʽװ�ף��������˽������⣬
һ����֪��
�����Է��ƺ�ȴ��һ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���I��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
//�����I�ܡ�
<voice name="���I��" class="���I��" src="voice/ma05/0200450b32">
���������㡭����

{	FwC("cg/fw/fw���I��_���.png");}
//�����I�ܡ�
<voice name="���I��" class="���I��" src="voice/ma05/0200460b32">
��û��
�����㡣��

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0200470a00">
����������

{	FwC("cg/fw/fw���I��_ͨ��.png");}
//�����I�ܡ�
<voice name="���I��" class="���I��" src="voice/ma05/0200480b32">
���Դ�������֮��һ�ж��Ź�������
����ú���֡���

{	FwC("cg/fw/fw���I��_��Ц.png");}
//�����I�ܡ�
<voice name="���I��" class="���I��" src="voice/ma05/0200490b32">
�����㡣
�������㣡��

{	FwC("cg/fw/fw���I��_��Ц.png");}
//�����I�ܡ�
<voice name="���I��" class="���I��" src="voice/ma05/0200500b32">
��ֻҪû���㣬������̫ƽ�ˣ��Բ��ԣ�
�������𣿡�û��ɣ���

{	FwC("cg/fw/fw���I��_���.png");}
//�����I�ܡ�
<voice name="���I��" class="���I��" src="voice/ma05/0200510b32">
������ֻҪû���㡭����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE01","se����_�z_�l����02");
	MusicStart("SE01",0,1000,0,750,null,false);
	StL(4000, @-30, @30,"cg/st/3d�ũ�ʽָ�]��_����_�l��.png");
	Move("@StL*", 300, @30, @-30, DxlAuto, false);
	FadeStL(400,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
������ҡҡ�λε�վ��������
���������ž����е�̫����

{	OnSE("se���L_����_������01",1000);}
�����õ���ָ���ҡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
//��������
<voice name="����" class="����" src="voice/ma05/0200520a00">
���ȵȡ�����

{	FwC("cg/fw/fw���I��_��Ц.png");}
//�����I�ܡ�
<voice name="���I��" class="���I��" src="voice/ma05/0200530b32">
��ֻҪû���㣬�ͺ��ˣ�
������������������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��һ�W
//�����ɩ`��
	OnSE("se���L_����_�����01",1000);
	CreateColorSP("�}��", 5500, "#FFFFFF");
	CreateSE("SE01","se����_�n��_�ߵ[�֤Ĥ���01");
	CreateSE("SE02","se����_�n��_ܞ��03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	MusicStart("SE02",0,1000,0,1000,null,false);
	CreateTextureEX("�}����", 200, Center, Middle, "cg/bg/bg054_�����Ҽ���b_02.jpg");
	DeleteStA(0,true);
	StC(1000, @-30,@0,"cg/st/3d�ũ�ʽָ�]��_����_�l��.png");
	Fade("�}����", 0, 750, null, true);
	Shake("�}����", 700, 8, 0, 0, 0, 1000, Dxl2, false);
	Request("�}����", Disused);
	Move("@StC*", 400, @30, @0, DxlAuto, false);
	FadeStA(400,false);
	Fade("�}��", 600, 0, null, false);
	DrawDelete("�}��", 200, 1000, "slide_08_00_1", true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
��ʲô������������
��ֻ��ɵɵ�������죬�������������������ֹ�Է�
�ж������ơ�

����Խ����������̤�����Լ����˰��ն����
���������ֻ����������ҵ�Ƥ���������Խ���������
��ɡ�

���ұ����ڵأ���������ʯ��·�档
����˵����������

���ҵ���������������Ϊ������Ĺ�����ƫ�ˡ�
������������ûʱ��������ܵ���ͷ��

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fw���I��_���.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
//�����I�ܡ�
<voice name="���I��" class="���I��" src="voice/ma05/0200540b32">
��������ʲô����
����㰡����

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
�������ù���Ŀ���������ɧ���ѹ���ʧ�ܵ������Ƹ�
���ҡ�
�����������ס�����Ѱ�ҡ�

���ᱻ���ֵġ�
���ٴ��࿴������Σ���������һ���¡�

��������������Ѿ�ɥʧ�����ˡ�

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fw���I��_���.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
//�����I�ܡ�
<voice name="���I��" class="���I��" src="voice/ma05/0200550b32">
��������Ĵ�
��ȥ���ɡ���

{	FwL("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0200560a00">
��������

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE01","se����_����_�z�i��01_L");
	MusicStart("SE01",2000,1000,0,750,null,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
�������˿���ĭ�������ɿʵ�������
��̫���ɿ�����������ˮ���������ʡ�

���������������ɱ�ҡ�
����������˵ʲô����������ȥ��

���ᱻɱ����

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
//��������
<voice name="����" class="����" src="voice/ma05/0200570a00">
����������

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
��һ�������Ľ��Ÿ����¶��Ϲᴩȫ��
�����������һ�㷺����ĭ��

������
������
�������սᡣ

���޷���ֹ�Ŀֲ���
���޷�Υ�����в��

�����������ܡ�
��������������

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fw���I��_��Ц.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
//�����I�ܡ�
<voice name="���I��" class="���I��" src="voice/ma05/0200580b32">
��ȥ����
��������ȥ������

{	FwL("cg/fw/fw����_�ֲ�.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0200590a00">
����������

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
�����岻���������Ե�ɱ������ë���Ȼ��
��������������Ų���ӡ�����Ϊ�����֮��ľ���˿��
�������̶���������������ˡ�

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE*", 100, 0, null);
//�������㡣
	CreateSE("SE01","se���L_����_������01");
	MusicStart("SE01",0,1000,0,1250,null,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
�������ҵ��֡�
��ͻȻ������һ������Ķ�����

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������֩��
	PrintGO("�ϱ���", 25000);
	CreateColorSP("�}��ܞ", 10000, "#000000");
	OnBG(100,"bg054_�����Ҽ���b_02.jpg");
	FadeBG(0,true);
	CreateTextureSP("�}������", 500, 52, 123, "cg/st/3d����֩��_����.png");
	DrawDelete("�ϱ���", 250, 100, "slide_01_04_1", true);
	DrawDelete("�}��ܞ", 250, 100, "slide_01_04_1", true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310]
�����С�
���Ǹ��Գƴ����Ľ��С�

���������У�
�����ˡ�������������

������������������

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����`��
//��������������
	CreateSE("SE01","se���L_�|��_����02");//���ߩ`ע��
	MusicStart("SE01",0,1000,0,1500,null,false);
	SetVolume("@mbgm*", 100, 1, null);
	CreateColorSPadd("�}��", 10000, "#FFFFFF");
	CreateTextureEXsub("�}�ݣ�", 400, Center, Middle, "cg/ev/ev001_�y�Ǻ��¼�����`����.jpg");

	CreateColorSP("�}ɫ399", 399, "#CC0000");

	CreateStencil("��",1000,52, 123,128,"cg/st/3d����֩��_����.png",false);
	SetAlias("��","��");
	CreateMask("��/��", 1000, center,InBottom, "cg/st/3d����֩��_����.png", false);
	SetAlias("��/��","��/��");
	CreateTextureSPmul("��/��/�}��", 2100, Center, InBottom, "cg/ev/ev001_�y�Ǻ��¼�����`����.jpg");

	Fade("�}�ݣ�", 0, 750, null, true);
	DrawEffect("��/��/�}��", 3600000, "LowWave", 30, 30, null);
	WaitKey(2000);
	FadeDelete("�}��", 1000, true);
	SoundPlay("@mbgm04",3000,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0320]
��
��������������������������

��
������������������ն��

��
���������������߱��

��
�����������������������

��
������������������������

��
��������������������������

��
��������������������а���

��
����������������������һ���׵�Ҳ

��
��������������ͬ����Լ��
�����������������Ṳ���׵�֮����

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����`�󡣲��f����
	SetVolume("@mbgm04", 100, 0, null);
	CreateSE("SE01","se����_��x_�k��04");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSPadd("�}ɫ��", 10000, "#FFFFFF");
	Wait(10);
	PrintGO("�ϱ���", 25000);
	CreateColorSPadd("�}ɫ��", 10000, "#FFFFFF");
	OnBG(100,"bg054_�����Ҽ���b_02.jpg");
	FadeBG(0,true);
	CreateTextureSP("�}������", 500, 52, 123, "cg/st/3d����֩��_����.png");
	Delete("��");
	Delete("�ϱ���");
	FadeDelete("�}ɫ��", 1000, true);
	SetVolume("@mbgm*", 2000, 1000, null);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0330]
//��������
<voice name="����" class="����" src="voice/ma05/0200600a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0340]
��������
��������������У�

�������������
������������ĵ�����������ˡ�
������������ĵ�����������ˡ�

�����ǡ���ĳ�ֻ����Ĳ���֮�
���������������ѵ����ˡ�

����Ȼ�������������ʲô�������Ҽ��Ų��ơ�
������Ǳ���Ϊ���׵Ķ�����

��û�������ס�
�������Լ�����ʷ֪ʶ������֮�������������顣

�����ʷ��ʷ��ǰ����û��û���Һ������塢���Ӱ��
���ҡ����ϱ������ҡ�
����֪������α����˵��ɴ˰����֮�ҵ��ǵ���һ��
����Ľ��С�

�����ף�����������ξ������
�����������ɫ֩������Ǵ�˵֮�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	PrintGO("�ϱ���", 25000);
	CreateColorSP("�}��ܞ", 10000, "#000000");
	OnBG(100,"bg054_�����Ҽ���b_02.jpg");
	FadeBG(0,true);
	StR(1000, @0, @0,"cg/st/3d�ũ�ʽָ�]��_����_�l��.png");
	FadeStR(0,true);
	DrawDelete("�ϱ���", 250, 100, "slide_01_04_0", true);
	DrawDelete("�}��ܞ", 250, 100, "slide_01_04_0", true);

	SetFwC("cg/fw/fw���I��_��Ц.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0350]
//�����I�ܡ�
<voice name="���I��" class="���I��" src="voice/ma05/0200610b32">
������������
��ɱ���㣬���϶�������ġ���

{	FwC("cg/fw/fw���I��_���.png");}
//�����I�ܡ�
<voice name="���I��" class="���I��" src="voice/ma05/0200620b32">
���ǰɣ�
���԰ɣ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0200630a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0360]
�����㡪��
�����㡣

������ɥ�ڴˡ�
���⸱���С���ֻ���⸱���С���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�y_��˼.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0370]
//���y��
<voice name="�y" class="�y" src="voice/ma05/0200640b46">
������������

{	FwC("cg/fw/fw�y_ͨ��b.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0200650b46">
���š�����

{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0200660a00">
��!?��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0380]
���������ǡ�
��ƫƫ�������Ǽһ�űߡ�

����ĸ�ƺ��ָ���֪��������ͼ����
����ֱ�����ڹ��������Ǽһ���Ǹ������������
ע�⣡

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���I��_���.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0390]
//�����I�ܡ�
<voice name="���I��" class="���I��" src="voice/ma05/0200670b32">
��������

{	FwC("cg/fw/fw�y_ͨ��b.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0200680b46">
���������ɶ�
����ô���¡�������

//���y��
<voice name="�y" class="�y" src="voice/ma05/0200690b46">
������֡���û�Ⱦư�������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0200700a00">
��ͳ����!!��

{	FwC("cg/fw/fw�y_ͨ��a.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0200710b46">
���ţ���������������

{	FwC("cg/fw/fw�����^ȥ_ŭ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0200720a00">
�����ӣ�
����㣡�����������

{	FwC("cg/fw/fw�y_ͨ��a.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0200730b46">
����������

{	FwC("cg/fw/fw���I��_���.png");}
//�����I�ܡ�
<voice name="���I��" class="���I��" src="voice/ma05/0200740b32">
�����¡�
��������ҡ���

{	FwC("cg/fw/fw���I��_��Ц.png");}
//�����I�ܡ�
<voice name="���I��" class="���I��" src="voice/ma05/0200750b32">
���ұ����ɱ���Ǽһ������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0400]
����Ī������ص�������Ͳ����ĸ������Ȼ��
����Ȼ����Ҳֻ���������ַ�Ӧ�ˡ��������۾Ϳ�����
ǰ�и�����������߾���̫����

�����ˡ�
����������ĸ����Ҳ���м�֮����

�����������Ŀ�ꡣ
����ĸ�ᱻɱ����

��ͳ���˻�������
����ʹ���ȥ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�����^ȥ_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0410]
//��������
<voice name="����" class="����" src="voice/ma05/0200760a00">
������������

{	FwC("cg/fw/fw�����^ȥ_��ʹ.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0200770a00">
������������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��֩�����
//�����`�󡣹��Q
//��������������
	SetVolume("@mbgm*", 100, 0, null);
	CreateSE("SE01","se���L_�|��_����02");//���ߩ`ע��
	MusicStart("SE01",0,1000,0,1500,null,false);
	SetVolume("@mbgm*", 100, 1, null);
	CreateColorSPadd("�}��", 10000, "#FFFFFF");
	DeleteStA(0,true);
	CreateColorSP("�}ɫ399", 399, "#CC0000");
	CreateTextureEXsub("�}�ݣ�", 400, Center, Middle, "cg/ev/ev001_�y�Ǻ��¼�����`����.jpg");

	CreateTextureSP("�}������", 500, 52, 123, "cg/st/3d����֩��_����.png");
	CreateStencil("��",1000,52, 123,128,"cg/st/3d����֩��_����.png",false);
	SetAlias("��","��");
	CreateMask("��/��", 1000, center,InBottom, "cg/st/3d����֩��_����.png", false);
	SetAlias("��/��","��/��");
	CreateTextureSPmul("��/��/�}��", 2100, Center, InBottom, "cg/ev/ev001_�y�Ǻ��¼�����`����.jpg");

	Fade("�}�ݣ�", 0, 750, null, true);
	DrawEffect("��/��/�}��", 3600000, "LowWave", 30, 30, null);
	WaitKey(2000);
	FadeDelete("�}��", 1000, true);
	SoundPlay("@mbgm04",3000,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0420]
��
��������������������ͬ����Լ��

��
�����������������Ṳ���׵�֮����

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0430]
//��������
<voice name="����" class="����" src="voice/ma05/0200780a00">
��������

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0440]
��û�о���
������Ī������ľ����Ҳ�û�С�

��Ȼ������
��Ȼ�������ڡ���

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0450]
��
������������������������ɢ

��
��������������������
������������������������֮����

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0460]
���ҵþ���ĸ��
����������ȥ�ȡ�������ʲô�ֶ�ȥ�ȡ�

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����롤�Bĸ��Ц�
	OnSE("se�M��_�ե�å���Хå�01",1000);
	CreateColorEXadd("�}��ܞ", 10000, "#FFFFFF");
	Fade("�}��ܞ", 600, 1000, null, true);

	CreateTextureSP("�}����", 8000, Center, Middle, "cg/ev/ev132_Ц���y.jpg");
	CreateColorEXmul("�}����Ļ", 8100, "#847000");
	Fade("�}����Ļ", 0, 400, null, true);

	Fade("�}��ܞ", 300, 500, null, true);

	WaitKey(500);

	Fade("�}��ܞ", 400, 1000, null, true);
	PrintGO("�ϱ���", 15000);
	Delete("�}����*");
	CreateColorSPadd("�}��ܞ", 10000, "#FFFFFF");
	CreateTextureSP("�}������", 500, 52, 123, "cg/st/3d����֩��_����.png");
	OnBG(100,"bg054_�����Ҽ���b_02.jpg");
	FadeBG(0,true);
	Delete("��*");
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 600, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0470]
���Ҿ��������������飬ֻ��һ����
�������Ǿ��ǣ�ʧȥͳ���ˡ�

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��֩�����
	SetFwL("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0480]
//��������
<voice name="����" class="����" src="voice/ma05/0200790a00">
��������
��ն����

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0490]
�����ǣ��ҿ�ʼ������
�����׿��µ�ʫ��

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0500]
//��������
<voice name="����" class="����" src="voice/ma05/0200800a00">
�����߱�𡭡���

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0510]
�������ⶼ��֪����

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fw�����^ȥ_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0520]
//��������
<voice name="����" class="����" src="voice/ma05/0200810a00">
������֮����
�������ڴˡ�����

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0530]
��������Լ������

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���������Q��
//��������`��ɤ��`��
	CreateSE("SE01","se����_�z_װ��02");
	CreateSE("SE02","se����_�z_װ��03");
	MusicStart("SE01",0,1000,0,700,null,false);
	MusicStart("SE02",0,1000,0,1250,null,false);
	CreateColorEXadd("�}�ե�", 5000, "#FFFFFF");
	Fade("�}�ե�", 600, 1000, null, true);
	StC(1000, @0, @0,"cg/st/3d��������_����_ͨ��.png");
	FadeStC(0,true);
	Delete("�}��*");
	WaitKey(1000);
	FadeDelete("�}�ե�", 1000, true);

	SetFwL("cg/fw/fw�y_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0540]
//���y��
<voice name="�y" class="�y" src="voice/ma05/0200820b46">
����������!?��

{	FwL("cg/fw/fw���I��_���.png");}
//�����I�ܡ�
<voice name="���I��" class="���I��" src="voice/ma05/0200830b32">
��������
��������������!?��

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0550]
���������˶����˸�ģ����

������װ�׸��塣
�������������ߡ�

����ȫ�����һ��������Ĺ����
��̫����Խ������������ʶ��Щ��㱡�

������û������Ӧ��֮�¡�
��ֻ��һ�¡���ֻҪ�������������Ψһ֮�±�á�

��ֻҪ����ͳ���˾ͺã�

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��������˥��`չ�_
//�����T��å�����
	PrintGO("�ϱ���", 5000);
	CreateColorSP("�}ɫ�\", 1000, "#000000");
	FadeDelete("�ϱ���", 1000, true);

	Wait(12);

	Cockpit_AllFade(300,720,0);

	CreateSE("SE01","se����_���å��ԥå�_������04");
	$�Еr�g=RemainTime("SE01")-1000;

	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEX("�}ɫ��", 5000, "#FFFFFF");

	MyTr_Count(300,321);
	Fade("�}ɫ��", $�Еr�g, 1000, Axl2, true);

	Wait(300);

	Delete("�}ɫ�\");
	OnBG(100,"bg054_�����Ҽ���b_02.jpg");
	FadeBG(0,true);

	StC(1000, @0, @0,"cg/st/3d�ũ�ʽָ�]��_����_�l��.png");
	FadeStC(0,true);

	FadeDelete("�}ɫ��", 1600, true);

	CreateSE("SE02","se����_���å��ԥå�_��å�����");
	MusicStart("SE02",0,1000,0,1000,null,false);
	CockPit_LockSet(@0,@-100);
	CP_LockOnFade(300,"off",true);

	CreateSE("SE02a","se����_���å��ԥå�_������02");
	MusicStart("SE02a",0,1000,0,1000,null,false);
	CP_LockOnChange(300,true);

	WaitKey(500);

	SetFwL("cg/fw/fw���I��_���.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0560]
//�����I�ܡ�
<voice name="���I��" class="���I��" src="voice/ma05/0200840b32">
���㡢�㡭�����ǡ���
�������Ǽһ��ͬ����!?��

{	FwL("cg/fw/fw���I��_���.png");}
//�����I�ܡ�
<voice name="���I��" class="���I��" src="voice/ma05/0200850b32">
���Ǽһ�ģ����Ǽһ�ģ�
���桢�����桪��!!��

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0570]
��������񾭴��ҵغ��Һ���ʲô��
�����Ѿ��������ҵĶ����ˡ�

�����������ʵֻ��һ����
����һ����ɱ��ͳ���ˡ���

�����ǵ��ˣ�
��Ӧ�ַ��ĵ��ˣ�

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fw��������_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0580]
//��������
<voice name="����" class="����" src="voice/ma05/0200860a00">
������������!!��

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE01","se�M��_냇��_�i��01");
	MusicStart("SE01",0,1000,0,1000,null,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0590]
��ŭ��
���񱼡�
���γ�̫����

�����������ֶΣ�ֻΪɱ�С�

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fw�y_ŭ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0600]
//���y��
<voice name="�y" class="�y" src="voice/ma05/0200870b46">
�����У�������!!
��<RUBY text="����">����</RUBY>���Ļ�������

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CP_LockOnDelete();
	Cockpit_AllFade0();

//�������`��̫�����һ��
//�􏎤��w�ָo�T��
	CreateColorSP("�}ɫ�\", 5000, "#000000");

	Wait(12);

	CreateSE("SE01","se���L_����_Ұ̫�����01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	SL_left2(5100,@300, @0,2000);
	SL_leftfade2(0);

	PrintGO("�ϱ���", 20000);
	CreateColorSP("�}ɫ��", 3000, "#FFFFFF");
	OnBG(100,"bg054_�����Ҽ���b_02.jpg");
	FadeBG(0,true);

	CreateSE("SE01b","se���L_����_���nͻ01");
	CreateSE("SE01c","se���L_�n��_�zܞ��01");
	MusicStart("SE01b",0,1000,0,750,null,false);
	MusicStart("SE01c",0,1000,0,1000,null,false);

	Wait(12);

	Delete("�ϱ���");
	FadeDelete("�}ɫ��", 1000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0610]
���͵�һ�Ǻῳ��
���з������Ե�����̫�����ֵ�ס��һ����

������������Ϊֹ��
����һ��˵�����ˣ�������վ��վ���ȡ�

����������һĿ��Ȼ��
���ҷ�ǿ��

���Ҵ���һ����ѹ���Ե�ǿ�����������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��������_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0620]
//��������
<voice name="����" class="����" src="voice/ma05/0200880a00">
������������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE01","se���L_����_��ͻ�M01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateColorEX("�}�\Ļ��", 10000, "#000000");
	CreatePlainSP("�}��ͻ",1000);
	SetBlur("�}��ͻ", true, 3, 500, 100, false);
	Zoom("�}��ͻ", 100, 1200, 1200, Dxl2, false);
	Fade("�}�\Ļ��", 200, 1000, Axl2, false);
	DrawTransition("�}�\Ļ��", 300, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);
	Delete("�}��ͻ");
	CreateTextureSP("�}�ݳ�", 2000, -613, -215, "cg/ev/resize/ev504_����ͻ�Ml.jpg");
	CreateTextureEXadd("�}�ݳ��r", 2100, -613, -215, "cg/ev/resize/ev504_����ͻ�Ml.jpg");
	Shake("�}�ݳ��r", 36000000, 6, 10, 0, 0, 1000, Dxl2, false);
	Fade("�}�ݳ��r", 0, 200, null, true);

	DrawDelete("�}�\Ļ��", 150, 100, "circle_01_00_1", true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0630]
��׷��
���������ѱ������������׷���ᡣ

�����޼��ɿ��ԡ�
������ȴ���С�

����ƾȫ���ӵ���
����ƾ�������¡�

����Σ����ĸ�����ĵ��ˡ���
��һ�����ϣ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���I��_���.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0640]
//�����I�ܡ�
<voice name="���I��" class="���I��" src="voice/ma05/0200890b32">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������ȫ��`�륭��Υ󡣱��ߚ�ζ
//�������ɩ`��
	CreateSE("SE01","se���L_��x_����չ�_");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEX("�}ɫ�\", 5000, "#000000");
	FadeDelete("�}�ݳ��r", 200, false);
	SetVertex("�}�ݳ�", 936, 361);
	SetBlur("�}�ݳ�", true, 3, 500, 100, false);
	Fade("�}ɫ�\", 720, 1000, Axl3, false);
	Zoom("�}�ݳ�", 750, 8000, 8000, Axl3, true);

	WaitKey(300);

	PrintGO("�ϱ���", 10000);
	CreateColorSP("�}ɫ�\", 5000, "#000000");

	Wait(12);

	Delete("�ϱ���");
	SetVolume("@mbgm*", 100, 0, null);
	CreateSE("SE01ba","se����_늓�_���01");
	CreateSE("SE01bb","se����_늓�_���01");
	CreateSE("SE01bc","se����_늓�_���02");
	MusicStart("SE01ba",0,1000,0,750,null,false);

	CreateTextureEXadd("�}�ݳ��r", 1010, Center, Middle, "cg/ef/resize/ef030_����늴Œi��asex01.jpg");
	SetBlur("�}�ݳ��r", true, 3, 500, 100, false);
	CreateTextureSP("�}�ݳ�", 1000, Center, Middle, "cg/ef/resize/ef030_����늴Œi��asex01.jpg");
	FadeFR2("�}�ݳ��r",0,600,800,0,0,30,Dxl2, false);

	DrawDelete("�}ɫ�\", 100, 1000, "slide_04_01_1", false);

	MusicStart("SE01bb",0,650,0,00,null,false);
	Wait(100);
	MusicStart("SE01bc",0,650,0,1250,null,false);

	CreateColorEXadd("�}ɫ��", 5000, "#FFFFFF");
	Fade("�}ɫ��", 200, 1000, Axl2, true);

	WaitKey(500);

	PrintGO("�ϱ���", 10000);
	Wait(12);
	CreateSE("SE01ca","se���L_�n��_�nͻ01");
	CreateSE("SE01cb","se���L_�Ɖ�_�z01");
	CreateTextureEXadd("�}�ݳ�", 1100, Center, Middle, "cg/ef/ef022_��������ɢ�A.jpg");
	Zoom("�}�ݳ�", 0, 1250, 1250, null, true);
	CreateTextureSP("�}��", 1000, Center, Middle, "cg/ef/ef022_��������ɢ�A.jpg");
	SetBlur("�}�ݳ�", true, 3, 300, 100, false);
	Delete("�ϱ���");

	FadeFR2("�}�ݳ�",0,2300,1000,0,0,60,Dxl2, false);

	MusicStart("SE01ca",0,1000,0,1000,null,false);
	MusicStart("SE01cb",0,1000,0,1000,null,false);

	Zoom("�}�ݳ�", 300, 1200, 1200, null, true);
	Zoom("�}�ݳ�", 2000, 1400, 1400, null, false);

	FadeDelete("�}�ݳ�", 600, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0650]
���������������û�ܷ������ı�����
����ͬ����һ�����屻�������Ρ�

��ѹ���Ե�������
�����˵ı�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��������ݳ�����������ã��ݳ��������Ϥ��ƥ�å�����������ʾ�����ʤ��ַ��ˤ��Ƥߤ롹
	CreatePlainSP("�}��д", 19900);

	//Cockpit_AllFade2();

	//CP_AziChange(0,-70,null,false);

	CreateCamera("��", 512, 0, 1000);
	SetAlias("��","��");

	CreateTextureSP("��/�}����", 1, Center, Middle, "cg/bg/resize/bg054_�����Ҽ���b_02l.jpg");
	Move("��/�}����", 0, @0, @-100, null, true);
	Request("��/�}����", Smoothing);

	CreateTextureEX("��/�}�����}�y", 250, Center, InBottom, "cg/st/st�y_ͨ��_˽��.png");
	SetVertex("��/�}�����}�y", center, bottom);
	Zoom("��/�}�����}�y", 0, 750, 750, null, true);

	Request("��/*", Smoothing);

	Delete("�}��*");
	FadeDelete("�}��д", 1000, true);

	SetFwC("cg/fw/fw��������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0660]
//��������
<voice name="����" class="����" src="voice/ma05/0200900a00">
��Ŷ����
��ŶŶŶŶŶŶŶ����!!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0670]
�������ĳɹ��У�������Ұ�ް�����������
������һ������˫��ɱ�˺�Ķ񺮡�������֪Ӱ�١�

������ǽ�����
�������������

���ð���������
��̫ΰ���ˡ�

��������ȷʹ�������������
���ı�����ؽ���Ϊ���ܡ�

����ô���˵ġ�������!!

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�y_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0680]
//���y��
<voice name="�y" class="�y" src="voice/ma05/0200910b46">
����������������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0200920a00">
��������
����������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Move("��/�}�����}�y*", 0, @-542, @-50, DxlAuto, false);

	Move("��/�}�����}�y*", 0, @30, @0, DxlAuto, false);
	Fade("��/�}�����}�y*", 0, 1000, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0690]
����ĸ����������֪Ϊ�Σ����������ڿ���һ�㡣
��������������������Żָ�һ����ʶ���侲������

{
	//CP_AziChange(10000,80,Dxl1,false);
	MoveCamera("��", 10000, -512, @0, @0, Dxl1, false);}
�����ˡ�
��ͳ�����Ƿ�Ȼ����

������һս����û�в���������

����ʱ�˿̣�����������ͷ������ĸ����Ӱӳ��������
����һɲ�ǡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��������˥��`
//���y���å�����
	WaitAction("��", null);
	CreateSE("SE02","se����_���å��ԥå�_��å�����");
	MusicStart("SE02",0,1000,0,1000,null,false);
	CockPit_LockSet(@0,@-100);
	CP_LockOnFade(300,"off",true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0700]
������ʲ��
��ʲô��

����ʲô��
����Ҫ��ʲô��

{	CreateSE("SE01","se���L_����_������01");
	MusicStart("SE01",0,1000,0,800,null,false);}
������̫������
��<RUBY text="��������">������ĸ</RUBY>��

��������Ҫ��ʲô!?

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����`��
	CreateSE("SE01","se����_��x_�k��04");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEXadd("�}�ե�", 19000, "#FFFFFF");
	Fade("�}�ե�", 600, 600, null, true);
	WaitKey(100);
	FadeDelete("�}�ե�", 600, false);

	SoundPlay("@mbgm04",0,1000,true);

	SetFwR("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0710]
//��������
<voice name="����" class="��������" src="voice/ma05/0200930a01">
������������
����������Լ����

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0720]
������֮������ͨ�����䣬������ͷ���ڲ�����
������ǡ�����ν�Ľ��д�����!?
����ͨ������������

��Ҳ����˵�����Ǵ���������!?

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0730]
//��������
<voice name="����" class="����" src="voice/ma05/0200940a00">
��������Լ������
����˵����Լ������ָʲô����

{	FwR("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma05/0200950a01">
���ҵ�������
���������ġ���

//��������
<voice name="����" class="��������" src="voice/ma05/0200960a01">
�������ƶ�
����ϡ���

//��������
<voice name="����" class="��������" src="voice/ma05/0200970a01">
�������������Ի�Ϊ�׵�����

{	FwR("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0200980a00">
������������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0740]
���⡭��
����ʲô��˼��

��������ʲô��˼����!?

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0750]
//��������
<voice name="����" class="��������" src="voice/ma05/0200990a01">
���Ҵ�������
��<RUBY text="��������������">���ƶ���֮��</RUBY>����

//��������
<voice name="����" class="��������" src="voice/ma05/0201000a01">
��������
������նɱ����Ϊ�񷽵�һ�ˡ���

//��������
<voice name="����" class="��������" src="voice/ma05/0201010a01">
���ʡ�������ն����Ϊ�Ʒ���һ�ˡ���

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0760]
����������!?

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0770]
//��������
<voice name="����" class="��������" src="voice/ma05/0201020a01">
������ն�з�һ�ˡ�
���ʣ���ն����һ�ˡ���

//��������
<voice name="����" class="��������" src="voice/ma05/0201030a01">
������նһ����֮�ˡ�
���ʣ���նһ����֮�ˡ���

{	FwR("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0201040a00">
���¡�����

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0780]
���µ�������!!
�����µ�������!!

��̫���ˡ���!?

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0790]
//��������
<voice name="����" class="��������" src="voice/ma05/0201050a01">
���������˴���֮����
����������֮���򡣡�

//��������
<voice name="����" class="��������" src="voice/ma05/0201060a01">
��������
��ɱ�Ʒ�һ�ˡ�
��ɱ����һ�ˡ�
��ɱһ����֮�ˡ���

//��������
<voice name="����" class="��������" src="voice/ma05/0201070a01">
���������ԡ�
������ɱ֮����

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���y��å�����
	CreateSE("SE02a","se����_���å��ԥå�_������02");
	MusicStart("SE02a",0,1000,0,1000,null,false);
	CP_LockOnChange(300,true);

	SetFwR("cg/fw/fw����_�ֲ�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0800]
//��������
<voice name="����" class="����" src="voice/ma05/0201080a00">
����������Ҫ!!��

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SEL01","se����_����_�z�i��01_L");
	MusicStart("SEL01",0,1000,0,600,null,true);

	//CP_SpeedChange2(2000,8,null,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0810]
��ֹס����ǰ�����ĽŲ���
��ͣ�������̫�����ֱۡ�

������һ�ж���ͽȻ��
�����ڣ�������־��㱵ľ޴��������������ҵ�ȫ��

����ɱ���ҵ���־��
�����Ǳ��������������壬һ��һ���س���ĸ�ƽ���

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw�����^ȥ_��ʹ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0820]
//��������
<voice name="����" class="����" src="voice/ma05/0201090a00">
��ͣ������
������ͣ����������

//��������
<voice name="����" class="����" src="voice/ma05/0201100a00">
��Ϊ�Σ�
��Ϊ�ηǵ�����������!?��

//��������
<voice name="����" class="����" src="voice/ma05/0201110a00">
��Ϊ��������������!?
���ش��ң�����!!��

{	FwR("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma05/0201120a01">
������������

//��������
<voice name="����" class="��������" src="voice/ma05/0201130a01">
������Ϊ�Ρ�
������<RUBY text="��������">�������</RUBY>����

//��������
<voice name="����" class="��������" src="voice/ma05/0201140a01">
�����Ǵ�����
�������������֮���С���

//��������
<voice name="����" class="��������" src="voice/ma05/0201150a01">
������ն��
�����߱�𡣡�

//��������
<voice name="����" class="��������" src="voice/ma05/0201160a01">
���ҵĵ�������Ϊ��ʾ����
��������ˡ���

//��������
<voice name="����" class="��������" src="voice/ma05/0201170a01">
���������˶��ѡ���

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���y�˽�����
	//CP_SpeedChange2(2000,0,null,false);
	SetVolume("SE*", 100, 0, null);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0830]
�����ִ�����ô˵��ͨ��
�����ֲ�����Ļ���ô˵��ͨ��

����֪���⡣
��ȴ���ò�����߱ĸ��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fw�����^ȥ_��ʹ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0840]
//��������
<voice name="����" class="����" src="voice/ma05/0201180a00">
��ͳ���ˣ�
�����ӿ���������

{	FwL("cg/fw/fw�y_��˼.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0201190b46">
��������

{	FwL("cg/fw/fw�����^ȥ_��ʹ.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0201200a00">
����㣡
����Ȼ���һᡭ����

{	FwL("cg/fw/fw�y_��˼.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0201210b46">
������������

{	FwL("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0201220a00">
���һᡭ��
������˫�֡�����������!!��

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0850]
�����ԡ���
�����ԣ��졣

�����ӡ���

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetVolume("@mbgm*", 1000, 0, null);

	SetFwL("cg/fw/fw�y_Ц��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0860]
//���y��
<voice name="�y" class="�y" src="voice/ma05/0201230b46">
����������
���Ҳ����ӵġ���

{	FwL("cg/fw/fw�y_������.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0201240b46">
�������Ҹóе������Σ����ӡ�
�������������ˡ�����

{	FwL("cg/fw/fw�����^ȥ_��ʹ.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0201250a00">
��ͳ���ˡ���!?��

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������`��
//����ä��ޤ��ޤ�����
	SetVolume("@mbgm*", 100, 0, null);
	SetVolume("SE*", 100, 0, null);
	PrintGO("�ϱ���", 20000);
	Wait(12);
	CreateColorSP("�}ɫѪ", 1000, "#CC0000");
	CreateColorSP("�}ɫ�\", 100, "#000000");

	CreateSE("SE01","se���L_����_���̤���05");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CP_LockOnDelete();
	CP_AllDelete();
	Delete("�ϱ���");
	Delete("��");


	Wait(10);

	FadeDelete("�}ɫѪ", 300, true);

	WaitKey(500);

	CreateSE("SE01b","se����_Ѫ_Ѫ���֤�01");
	SL_centerdamN(@0, @0,1500);

	MusicStart("SE01b",0,1000,0,1000,null,false);
	SL_centerdamfadeN2(0);

	PrintGO("�ϱ���", 10000);
	CreateTextureSP("�}�ţ�", 3000, Center, Middle, "cg/ev/ev139_�y�򚢺�_a.jpg");
	FadeDelete("�ϱ���", 1000, true);

	SoundPlay("@mbgm31",0,1000,true);

	SetFwL("cg/fw/fw����_�ֲ�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0870]
//��������
<voice name="����" class="����" src="voice/ma05/0201260a00">
��������
����������!?��

{	FwL("cg/fw/fw�y_ʹЦ.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0201270b46">
�������ǡ���
����Ȼ����Ч������

{	FwL("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0201280a00">
��ͳ���ˡ���
��ͳ����!?��

{	FwL("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0201290a00">
���ҡ������ԡ�����
���⡭��������ġ�Ϊʲô�����һᡭ��!?��

{	FwL("cg/fw/fw�y_ͨ��a.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0201300b46">
�������𣬾�����
���Ҷ�������

{	FwL("cg/fw/fw�y_��˼.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0201310b46">
��������Ȼ�����ഫ��һ���ء�
����ɱ�з������ɱ���������𡣡�

{	FwL("cg/fw/fw�y_����.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0201320b46">
����ɱ���ɱ�ơ�
����ɱ����֮������ɱ����֮�ˡ�����

{	FwL("cg/fw/fw�y_Ц��.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0201330b46">
�������ţ���Ҳ����˵�����ӣ���������
ĸ���ˣ��԰ɣ�
��ʲô���������˹ֲ�����˼�ģ����ǵġ���

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("�}��", 3010, Center, InBottom, "cg/ev/resize/ev139_�y�򚢺�_al.jpg");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0880]
����ĸ����ʱ�˵�Ц�ţ����������š���
{	Move("�}��", 6000, @0, -210, DxlAuto, false);
	Fade("�}��", 600, 1000, null, false);
}
���ѱ����йᴩ��

�����ҵ����С�
�����ҡ����̴���ͳ����!!

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	FadeDelete("�}��", 1200, false);

	SetFwL("cg/fw/fw����_�ֲ�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0890]
//��������
<voice name="����" class="����" src="voice/ma05/0201340a00">
����������ô�ᡭ��
���������ҡ�������

{	FwL("cg/fw/fw�y_ͨ��a.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0201350b46">
����ޣ���������
���ҿɲ�ϲ���������𡣡�

{	FwL("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0201360a00">
��ͳ���ˡ�������

{	FwL("cg/fw/fw�y_������.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0201370b46">
�����������ǵġ�
���⺢�ӣ�ֱ�����Ҳ������ʡ�ġ�����

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0900]
����ĸ���������ָ�⣬�����ҵ��۽ǡ�
���������������Ķ����ˡ�

��Ϊ�Ρ�����
��Ϊʲô��������������!?

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fw�y_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0910]
//���y��
<voice name="�y" class="�y" src="voice/ma05/0201380b46">
�������㡣������ɱ���ҡ�
�����ҵ����Ρ���δ������Ů��ְ��������
�����⣬ʹ�ô�������š���

//���y��
<voice name="�y" class="�y" src="voice/ma05/0201390b46">
���������������ܡ�
����������⡭����

//���y��
<voice name="�y" class="�y" src="voice/ma05/0201400b46">
����ֻ������Ҷ��ѡ���
����˵����������㲻�����������Ҿͻᱻ��
���Ǹ�����ɱ���ˡ���

{	FwL("cg/fw/fw�y_Ц��.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0201410b46">
�����ԣ��������á�����

{	FwL("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0201420a00">
������������
��������ͳ���ˡ�������

//��������
<voice name="����" class="����" src="voice/ma05/0201430a00">
���ҡ����ñ���������
���ҵþ���������

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0920]
������������������ڴˡ�
����ӦΪ�˶��ľ�������

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fw����_������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0930]
//��������
<voice name="����" class="����" src="voice/ma05/0201440a00">
�����ǡ���
������!!��

{	FwL("cg/fw/fw�y_Ц��.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0201450b46">
�����Ѿ�������̫���ˡ���
���Ǹ�Т�ӡ���

{	FwL("cg/fw/fw�y_ͨ��a.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0201460b46">
�����ԡ������ù��ҡ�
���Ǽһ�Ͱ������ˡ�����

{	FwL("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0201470a00">
��ͳ����!!��

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	OnBG(100,"bg054_�����Ҽ���b_02.jpg");
	FadeBG(0,true);

	CreateSE("SE01","se����_����_�����Ĥ�01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	FadeDelete("�}�ţ�", 1000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0940]
���ұ�����ĸ�����塣
��������ס���Ǽ�����ȥ�����塣

�����������ѻָ����ɡ�
���⡪����ζ�ţ�֧����ȫ����丿���Ѵ��Ŀ�ġ���

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0950]
//��������
<voice name="����" class="��������" src="voice/ma05/0201480a01">
������������

{	FwL("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0201490a00">
���������������С�
������ߡ���

{	FwL("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0201500a00">
��ͳ���ˡ���
���ҡ����ң�����������

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����롤�Bĸ��Ц�
//��һ˲������ä�
	OnSE("se�M��_�ե�å���Хå�01",1000);
	CreateColorEXadd("�}��ܞ", 10000, "#FFFFFF");
	Fade("�}��ܞ", 600, 1000, null, true);
	CreateTextureSP("�}����", 8000, Center, Middle, "cg/ev/ev132_Ц���y.jpg");
	Fade("�}��ܞ", 300, 200, null, true);

	WaitKey(250);

	Fade("�}��ܞ", 400, 1000, null, true);
	Delete("�}����*");
	FadeDelete("�}��ܞ", 600, true);

	SetFwL("cg/fw/fw����_ƣ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0960]
//��������
<voice name="����" class="����" src="voice/ma05/0201510a00">
������������

{	FwL("cg/fw/fw�y_Ц��.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0201520b46">
��������Ͱ������ˣ�������
�������ˡ������ǵ�<RUBY text="����">Լ��</RUBY>����

{	FwL("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0201530a00">
��ͳ����!?��

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����ߡ��ϟo��
	CreateTextureEX("�}�ţ֣�", 2900, Center, -90, "cg/ev/resize/ev139_�y�򚢺�_bl.jpg");
	Fade("�}�ţ֣�", 1000, 1000, null, true);
	Delete("�}�ţ�");
	Delete("�}��");

	SetVolume("@mbgm*", 3000, 0, null);

	SetFwL("cg/fw/fw����_ƣ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0970]
//��������
<voice name="����" class="����" src="voice/ma05/0201540a00">
������ͳ���ˡ���

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0980]
����������

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0990]
//��������
<voice name="����" class="����" src="voice/ma05/0201550a00">
������ͳ���ˡ�����

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1000]
��û�л�Ӧ��
��ʲô��û�С�

����ĸ��Ҳ�����Ӧ���ˡ�
�����ҡ�����ɵġ�

�����ң����֡�
��ɱ����ĸ��

������ɱ�ġ�

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1010]
//��������
<voice name="����" class="����" src="voice/ma05/0201560a00">
����������

{	FwL("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0201570a00">
��������

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1011]
//��������
<voice name="����" class="����" src="voice/ma05/0201580a00">
������������������������������������������������
������������������������������������������������
{
//������Ф��椨�������ѳ�
//���Bĸ��̤��������཭��̤�����
	KaisouReverse();
}
������������������������������������������������
��������������������������������������������!!��

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Ф��`���཭�����硢����
//��ȫ�Ƥ��F�g�؏͎���
	CreateSE("SE01","se����_��x_�k��03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEXadd("�}�ե�", 5000, "#FFFFFF");
	Fade("�}�ե�", 600, 1000, null, true);
	WaitAction("�л����Щ`��", null);
	Delete("�л����Щ`��");
	WaitKey(200);
	WaitPlay("mbgm*", null);
	WaitPlay("SE*", null);

}

..//������ָ��
//�Υե����롡"ma05_021vs.nss"



.//�ץ�����======================================================

..//�����Щ`��
function KaisouReverse()
{
	CreateProcess("�л����Щ`��", 5000, 0, 0, "KaisouReverseSet");
	SetAlias("�л����Щ`��","�л����Щ`��");
	Request("�л����Щ`��", Start);
}

..//�����Щ`�����å�
function KaisouReverseSet()
{

//	CreateColor("�}ɫ��", 5000, 1024, 0, 1024, 576, #FFFFFF);
//	Fade("�}ɫ��", 0, 0, null, true);
//	Move("�}ɫ��", 0, @-1024, @0, null, true);
//	Request("�}ɫ��", AddRender);
//	SetAlias("�}ɫ��", "�}ɫ��");
	CreateColorEXadd("�}ɫ��", 5000, "#FFFFFF");
	CreateTextureEX("�}�ţ�", 3000, Center, Middle, "cg/ev/ev139_�y�򚢺�_a.jpg");
//	Fade("�}�ţ�", 0, 0, null, true);
//	CreateTexture("�}�ţ�", 3000, Center, Middle, "cg/ev/ev139_�y�򚢺�_a.jpg");

	begin:


	Fade("�}ɫ��", 600, 1000, null, true);
	Fade("�}�ţ�", 0, 1000, null, true);

	Wait(500);
	FadeDelete("�}ɫ��", 800, true);
}