//<continuation number="1250">


chapter main
{

	if($GameStart != 1)
	{
		$GameName =  ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma01_013.nss_MAIN
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
	#bg007_��m��·a_01=true;
	#bg009_�`�}סլ��a_01=true;
	#bg017_����_01=true;


	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "ma01_014.nss";

}

scene ma01_013.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"ma01_012.nss"



	PrintBG("�ϱ���", 30000);
	CreateTextureSP("�}����10", 10, Center, Middle, "cg/bg/bg007_��m��·a_01.jpg");
	SoundPlay("@mbgm22",1000,1000,true);
	DrawDelete("�ϱ���", 1000, 100, "blind_01_00_1", true);


//����ͨ��


	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��������
<voice name="����" class="����" src="voice/ma01/0130010a00">
�������ǡ�����ѯ��һ���Ǹ��عȺ���
���ٲ���ʱ���������

{	NwC("cg/fw/nw���蘆��.png");}
//������㣯���蘆��
<voice name="����㣯���蘆��" class="����������" src="voice/ma01/0130020e020">
��������������ô˵��
���Ƕ���ʲôʱ������ˡ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma01/0130030a00">
��Լ����ǰ��
����¡��ʮһ������ʮ��������������

{	NwC("cg/fw/nw���蘆��.png");}
//������㣯���蘆��
<voice name="����㣯���蘆��" class="����������" src="voice/ma01/0130040e020">
���Ű���
����������ô˵����Ҳ�벻����������

{	FwC("cg/fw/fw���w_ͨ��a.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0130050b56">
���������壡
�����Ǵ�����������ǰһ��Ŷ����

{	NwC("cg/fw/nw���蘆��.png");}
//������㣯���蘆��
<voice name="����㣯���蘆��" class="����������" src="voice/ma01/0130060e020">
������Ŷ��
�����˶��ˣ�����������ǰһ�찡��
�;���������һ�첻���ġ���

//������㣯���蘆��
<voice name="����㣯���蘆��" class="����������" src="voice/ma01/0130070e020">
��ʲô���������˵�Ͳ����ˡ���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma01/0130080a00">
������ʵ�ڱ�Ǹ����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0081]
���ڶ��졣
�����Ǻܼ򵥵ط����˴ն�������

������������е�����עĿ�İ������ʡ�
���뷽�跨׷�����ַ�Χ��һСʱ���
Ŀ�����˵����ˡ�

����������
������ָ���ǡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StR(1000, @0, @0,"cg/st/st����_ͨ��_˽��.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//��������
<voice name="����" class="����" src="voice/ma01/0130090a00">
����������
�������Һ�Σ�գ���Ӧ�ü�������˵������
�Ҳ������Լ���˵������λ�����������
�ط�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StL(1020, @-30, @0,"cg/st/st���w_ͨ��_�Ʒ�.png");
	StC(1010, @-150, @0,"cg/st/st�ұ�_ͨ��_�Ʒ�.png");
	StCL(1000, @-150, @0,"cg/st/stС��_ͨ��_�Ʒ�.png");

	FadeStL(300,false);
	FadeStC(300,false);
	FadeStCL(300,true);

	SetFwC("cg/fw/fw���w_���.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0130100b56">
�������������ģ���

{	FwC("cg/fw/fwС��_�դ�.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0130110b33">
������������ɢ������

{	FwC("cg/fw/fw�ұ�_ͨ��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0130120b43">
��������Ѱ�����ҵ���;�С���

{	FwC("cg/fw/fw���w_Ц�b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0130130b56">
��ѽ��˵��������������������żȻ����
�ն���������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma01/0130140a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStR(300,true);

	DeleteStCL(300,false);
	DeleteStL(300,false);
	DeleteStC(300,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0141]
�����ᰴ�˰���ͷ���ն������ٴ��������ӡ�
������������������Ը���������š�

��ǰ���������һ��Ҳû�취����
�����ɴ��ɡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	PrintGO("�ϱ���", 30000);
	CreateColorSP("��ܞ", 1500, "#000000");
	CreateTextureSP("�}����10", 10, Center, Middle, "cg/bg/bg009_�`�}סլ��a_01.jpg");

	DrawDelete("�ϱ���", 1000, 100, "blind_01_00_1", true);

	DrawDelete("��ܞ", 1000, 100, "blind_01_00_1", true);


//��סլ��

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0145]
���ն�������ѧУ�ܱ���Ѳ��
�������������ɣ����ڶԸ�����ʧ����Ա��ȫ����顣
����ʵʩ�������Ե��ж��ɡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StL(1000, @0, @0,"cg/st/st����_ͨ��_˽��.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//��������
<voice name="����" class="����" src="voice/ma01/0130150a00">
�����һ�¡���

{	NwC("cg/fw/nw�jǑ���ݤ���.png");}
//������㣯�jǑ���ݤ���
<voice name="����㣯�jǑ���ݤ���" class="����������" src="voice/ma01/0130160e161">
����Ŷ!?����Ҫ��ʲô������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StR(1000, @20, @0,"cg/st/stС��_ͨ��_�Ʒ�.png");
	Move("@StR*", 300, @-20, @0, DxlAuto, false);
	FadeStR(300,true);

	SetFwC("cg/fw/fwС��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0152]
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0130170b33">
�����ĵ��ϡ����塣û��������
�������ʵ����顣��

{	NwC("cg/fw/nw�jǑ���ݤ���.png");}
//������㣯�jǑ���ݤ���
<voice name="����㣯�jǑ���ݤ���" class="����������" src="voice/ma01/0130180e161">
��Ŷ���ⲻ��С��ô��
����ô������ʶ�⺢�ӣ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma01/0130190a00">
�������š���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	PrintGO("�ϱ���", 30000);
	CreateColorSP("��ܞ", 1500, "#000000");
	CreateTextureSP("�}����10", 10, Center, Middle, "cg/bg/bg009_�`�}סլ��a_01.jpg");

	DrawDelete("�ϱ���", 1000, 100, "blind_01_00_1", true);

	DrawDelete("��ܞ", 1000, 100, "blind_01_00_1", true);

//���kǰ

	StR(1000, @0, @0,"cg/st/st����_ͨ��_˽��.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
//��������
<voice name="����" class="����" src="voice/ma01/0130200a00">
��ð�����š���

{	NwC("cg/fw/nw�������.png");}
//������㣯���������
<voice name="����㣯�������" class="����������" src="voice/ma01/0130210e166">
����!?���ÿ��µĹ��У�
������һ�ѵ��ǹ������ľ����̩���ų���
�̿���!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StL(1000, @-20, @0,"cg/st/st�ұ�_ͨ��_�Ʒ�.png");
	Move("@StL*", 300, @20, @0, DxlAuto, false);
	FadeStL(300,true);

	SetFwC("cg/fw/fw�ұ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0203]
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0130220b43">
�����ǵġ��������ʦ����
����ֻ�Ǹ����˶��ѡ�����

{	NwC("cg/fw/nw�������.png");}
//������㣯���������
<voice name="����㣯�������" class="����������" src="voice/ma01/0130230e166">
��ʲô����ֻ�Ǹ���ͨ�Ĺ��а�����
����ô�������кι�ɣ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma01/0130240a00">
����������
���ǵġ���Щ��������̡�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	PrintGO("�ϱ���", 30000);
	CreateColorSP("��ܞ", 1500, "#000000");
	CreateTextureSP("�}����10", 10, Center, Middle, "cg/bg/bg007_��m��·a_01.jpg");

	DrawDelete("�ϱ���", 1000, 100, "blind_01_00_1", true);
	DrawDelete("��ܞ", 1000, 100, "blind_01_00_1", true);

//����ͨ��

	StL(1000, @0, @0,"cg/st/st����_ͨ��_˽��.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
//��������
<voice name="����" class="����" src="voice/ma01/0130250a00">
�����ã��ǱߵĹ����

{	NwC("cg/fw/nwŮ����.png");}
//������㣯Ů���ӡ�
<voice name="����㣯Ů����" class="������Ů��" src="voice/ma01/0130260e122">
�����ۣ��������µ��˴�ڨ�ˣ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StR(1000, @-20, @0,"cg/st/st���w_ͨ��_�Ʒ�.png");
	Move("@StR*", 300, @20, @0, DxlAuto, false);
	FadeStR(300,true);

	SetFwC("cg/fw/fw���w_Ц�a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0130270b56">
���������£�����Ŷ��
���������㷬���ǡ��ܲ����������
��������أ���

{	NwC("cg/fw/nwŮ����.png");}
//������㣯Ů���ӡ�
<voice name="����㣯Ů����" class="������Ů��" src="voice/ma01/0130280e122">
���ۣ�лл���۷ɸ�硣
����ô����ʲô�£������塣��

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma01/0130290a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	PrintGO("�ϱ���", 30000);
	CreateColorSP("��ܞ", 1500, "#000000");
	CreateTextureSP("�}����10", 10, Center, Middle, "cg/bg/bg009_�`�}סլ��a_01.jpg");

	DrawDelete("�ϱ���", 1000, 100, "blind_01_00_1", true);
	DrawDelete("��ܞ", 1000, 100, "blind_01_00_1", true);

//��סլ��

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0291]
��Ӧ���Ѿ�����ü��ҵ����˰ɡ�

���ն�����ͣ��������
������Ҳֹס�Ų���

����΢���һ��֮�󣬴ն�����ת����������������
����������ǰ�벽ͣ�¡�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StR(1000, @0, @0,"cg/st/st����_ͨ��_˽��.png");
	StL(1020, @0, @0,"cg/st/st���w_ͨ��_�Ʒ�.png");
	FadeStR(300,false);
	FadeStL(300,true);

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
//��������
<voice name="����" class="����" src="voice/ma01/0130300a00">
�����л�Ҫ˵����

{	FwC("cg/fw/fw���w_ͨ��b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0130310b56">
����ʵ��Ҳ�С���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma01/0130320a00">
����ô��������˵����

{	FwC("cg/fw/fw���w_ͨ��b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0130330b56">
��лл����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0331]
����������һ��������
��Ȼ��˵����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���w_���.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0340]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0130340b56">
���ն���������̫�ʺ��������ء���


//�����`��
{	OnSE("se�M��_���ߥ���_���`��01",1000);
	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma01/0130350a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0351]
�����������ˡ�
���ƺ�����û���Ծ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0360]
//��������
<voice name="����" class="����" src="voice/ma01/0130360a00">
�������������������������Զԡ�
��ֻ��ʹ���Լ������ܡ���

{	FwC("cg/fw/fw�ұ�_����.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0130370b43">
����������Ҳ���ǲ��ܵ����⡣��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0371]
���޳��ұ���

���Ǳ����˵Ĵն��������Ѳ���Ҳ�кܶ����ѣ�
�����������ϰ��æ������Ȼ����ô�롣
��������������⡣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwС��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0380]
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0130380b33">
����Ȼ��ô˵�е�������Ҳ��ϲ������
Ҫ��û�����ǵĻ����������û�취��
�κ��������ʵ�ʲô�ɡ�����

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma01/0130390a00">
����������˵���������ԡ�
�����ڴˣ�������̸�λ����

{	FwC("cg/fw/fw���w_ͨ��b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0130400b56">
���ǵġ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0401]
�����Զ��������ơ�
����Ȼ��·���롣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0410]
//��������
<voice name="����" class="����" src="voice/ma01/0130410a00">
�������۷ɡ�
������ҰС�ġ�
�������ұ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0411]
��������ͷ����֮��ֻ����һ�ε�
���֣��ն�������Ȼ��ȫ�ǵá�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0420]
//��������
<voice name="����" class="����" src="voice/ma01/0130420a00">
�����Ǽ�λ��û����ֹ����������ͬѧ��
�����𣿡�

{	FwC("cg/fw/fw���w_ͨ��b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0130430b56">
��û�С���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0431]
�����ϻش�
��������Ϻ��޶�ҡ��

�����ǣ�ֻ������޷�˵�����ˡ�
����������Ѱ����Ӧ�ü�����ȥ�����ɡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw���w_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0440]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0130440b56">
�������ף��ն�����˵�úܶԡ�
�����ǣ���ʹ��ˣ�����Ҳ��������ΪѰ����
������д�
��������Ӧ��ȥ�����°ɡ�����

{	FwC("cg/fw/fw���w_���a.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0130450b56">
��������Ǹ���Ҳ����Դǡ�
������Ϊ���ҵ��ɣ���������ʲô��
Ҳ����Ӧ��ȥ������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0451]
�������������Ǹ�����˵���ļһﰡ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw�ұ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0460]
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0130460b43">
����Ҳ����ͬ�����
����Ȼ���ղ�˵�Ļ������ܷ������
���廹�д���ȶ��
������Щ���Ҳ��ᡣ��

{	FwC("cg/fw/fwС��_ͨ��a.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0130470b33">
����Ȼ���˵�����˴Ӹ����ϻ�������
֪�Ժͽ����Ĵ��ڣ�������нǶȳ���
��Ҳͬ�⡣��

{	FwC("cg/fw/fw���w_Ц�a.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0130480b56">
����������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0481]
�������������ֵļһ

���ն��������������š�
�����ڣ�΢΢���ڡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0490]
//��������
<voice name="����" class="����" src="voice/ma01/0130490a00">
�����ݿ����ף���ֹ��ʿ�ѡ�
�������޿��κΡ���

{	FwC("cg/fw/fw���w_�@��a.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0130500b56">
��ɶ����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma01/0130510a00">
��������ˡ�
��������ͬ�У�������λ������
��ߡ��ղŵľ������۳��ڰ�ȫ����
���ǰ�æ���Ƕ��Ʋ��Ϻ��ʵľ��롣��

{	FwC("cg/fw/fw���w_ͨ��b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0130520b56">
��������������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0521]
���ն������Ĵ�ǣ�����������Щ����������
����֮������������

��<RUBY text="�ϣ�">���</RUBY>�ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw���w_Ц�b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0530]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0130530b56">
��̫��������

{	FwC("cg/fw/fwС��_����.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0130540b33">
���������𼤶��𼤶���
��������Ϊ�顣��

{	FwC("cg/fw/fw�ұ�_Ц�a.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0130550b43">
�����������ⲻ�Ǻܺ���С�ġ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0551]
��������˵��Ҳ֪�����Լ��˸߲��ҵ���
��Щ��Ϊ��ĳ̶ȡ�
��
���ø��ˡ�

���ܺ��������Σ��ȴֵ�������Ĵն�����
һ��Ѱ���ɣ����Һø��ˡ�
����Ȼ��̬��û���κν�չ����ȴ��������
��������ǰ�ˡ�

���ұ���С��Ҳ�������ľ��ɡ�
�����ԣ���������һ��˵�Ż�һ��Ц�š�

��������ô���á�
������һ���˷�������������¶����һ��
����û�취�ı��顣

���������ն������Ǿ��Բ���չ¶Ц�յġ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D




	SetVolume("@mbgm*", 2000, 0, null);

	PrintBG("�ϱ���", 30000);
	CreateColorSP("��ܞ", 1500, "#000000");
	CreateTextureSP("�}����10", 10, Center, Middle, "cg/bg/bg017_����_01.jpg");

	DrawDelete("�ϱ���", 1000, 100, "blind_01_00_1", true);

	Wait(2000);

	DrawDelete("��ܞ", 1000, 100, "blind_01_00_1", true);

//������

	SoundPlay("@mbgm30",0,1000,true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0555]
������������Ҫȥ�ģ��������֡�

����Ȼ������ס�����˽�֪�������ʲô��û�е�
�����������ӣ������������˲��Ǿͺ������ҵ���
����������һ����

���ִ�֮������үү��ֻ�����״�̽�⵽���ٶȵǳ���
�����ƺ�����Ҳ�����ѡ��һ�³��ܶ��󡣴ն�����һ
������ݣ������㲻����Ҳֻ��ͬ�����ǽ����ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StR(1000, @0,@0,"cg/st/st����_ͨ��_˽��.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0560]
//��������
<voice name="����" class="����" src="voice/ma01/0130560a00">
������λ������������ˡ��Һ��������

{	FwC("cg/fw/fw���w_���b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0130570b56">
�����������������Ҳ���ٱ���˳�ˡ�
��������������������һ������š�������
�����������졣��

{	FwC("cg/fw/fwС��_���.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0130580b33">
�����ۡ�����Ҳ�þ�û�������ķ���ˣ�
�������ڶ�����

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma01/0130590a00">
���ǳ��˲���ķλ�����
����λ��������ܹ����᳤�١���

{	FwC("cg/fw/fw�ұ�_����.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0130600b43">
��һ�뵽����Χ���˿�����˼���
�Ҿ�ʵ��ף��������������

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma01/0130610a00">
��ӿ����Щ����
���ҵ�ĸ��Ҳ��һλ���鼤��ʱ�ᷢ������
ŭ����ˡ��ƺȹ�ʱ�󳳴��֣����Ӷ�ʱ��
��������

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma01/0130620a00">
��ÿ��������Щ��������ƽ��������
�����������������硣��

{	FwC("cg/fw/fwС��_����.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0130630b33">
�����������൱�и��Ե���Բ���󡭡���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma01/0130640a00">
������һ�Σ������˱��������ˣ�
���ǿ����������ȡ�
�����ǣ���������������װ������
����������������ʱ�򡣡�

{	FwC("cg/fw/fw�ұ�_ͨ��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0130650b43">
��ԭ����ˡ���ʱƾ����ĸ�׵�һ��ŭ��
������ǿ���ŵþȵİɡ���

{	FwC("cg/fw/fw���w_Ц�a.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0130660b56">
���ǿ�������������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma01/0130670a00">
���ǡ���ʱ���ң���֪��ʱ��Ĥ���ƻ���������
���ˣ����鲣�����б�����ɴ�����Ѫ���ƺ��Ѿ�
��ʶģ������ֻ�˵����̶ֳȾ��ܻ��ȫƾĸ�׵�
���͡���

{	FwC("cg/fw/fw�ұ�_Ц�b.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0130680b43">
������һ�μѻ�����

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma01/0130690a00">
��лл����

{	FwC("cg/fw/fwС��_����.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0130700b33">
���Ǹ�������

{	FwC("cg/fw/fw���w_�Ӥ�b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0130710b56">
���Ǹ�����Ҳ����˵����������������
������Ϊĸ�ס�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	PrintBG("�ϱ���", 30000);
	CreateTextureSP("�}����10", 10, Center, Middle, "cg/bg/bg017_����_01.jpg");

	Wait(1);

	FadeDelete("�ϱ���", 300, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0711]
�������ŷ紵���Ӵ�������ˮ�������ǲ����š�
�������е���Ұ��ʵ����˵�ܺá�

��үү�ǲ������ڵ�����ж��Ӳ��޼�
���ְ���������չ������̫��������Ұ��
���ƺ������ýŵ����ˡ�

������ô���ţ�ͻȻ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�ұ�_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0720]
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0130720b43">
�������ס���

{	FwC("cg/fw/fw���w_ͨ��b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0130730b56">
����ô�ˣ���

{	FwC("cg/fw/fw�ұ�_�@��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0130740b43">
���Ǹ���������Ǳߡ�
���ǲ����е����ң���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma01/0130750a00">
������ȷʵ����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0751]
�������ұ���ָ�ķ��򣬴ն�Ҳ��ʾͬ�⡣
������һ���˵�����ˮƽ����̫�������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorSP("��ܞ", 15000, "#000000");
	DrawTransition("��ܞ", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	Wait(600);

	DrawDelete("��ܞ", 1000, 1000, "blind_01_00_1", true);


//��ܞ�Q

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0752]
���߽�һ�����ұ���ָ����Ȼ��ȷ��
����һ�����ӱ����п����ˡ�

�����˳��ش�С�Ŀյر����˳�����
����Χɢ����һ�ر����������ӡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw���w_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0760]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0130760b56">
��֮ǰүү˵���ľ�������ɣ���

{	FwC("cg/fw/fwС��_ͨ��b.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0130770b33">
���š����ֱ��ƻ��˵��£���

{	FwC("cg/fw/fw�ұ�_ͨ��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0130780b43">
����ôһ˵��ȷ��˵��������ء���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0781]
��������Ҫ˵�������Ǹɵ�Ҳ̫���̫ǣǿ�˰ɡ�
����������Ҳ���ó������ӵ��ж���ǳ�������
��������ҵ��ľ���̶ȵĹ�������ɵġ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���w_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0790]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0130790b56">
���ǲ񵶰ɣ���

{	FwC("cg/fw/fw�ұ�_�@��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0130800b43">
��Ҳ�����Ǹ��ӡ�
�������С�������ǲ����ɣ���

{	FwC("cg/fw/fwС��_ŭ��b.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0130810b33">
�������𣿡��������ˡ���

{	FwC("cg/fw/fw�ұ�_ͨ��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0130820b43">
����Ŷ�����ɲ���С����Ͼ�أ�С�ġ�
������˵��ͬƶ���ͷ�ŭһ������Ͼ������
Ҳ������ų�Ϊ�����´����ʸ񡣡�

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma01/0130830a00">
�����ԡ���

{	FwC("cg/fw/fw�ұ�_�@��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0130840b43">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0841]
������һ�������Զ����ŵĴն�������
ͻȻ��૵���
��˵��ʱ����������Ҳδ�뿪���Ӷ��档

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StL(1000, @0, @0,"cg/st/st����_ͨ��_˽��.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fw����_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0850]
//��������
<voice name="����" class="����" src="voice/ma01/0130850a00">
���������е����봦<RUBY text="��������">��������</RUBY>���п���
<RUBY text="��������">����ƽ̹</RUBY>��
�����������ǵ�������������һ�ࡣ��

//��������
<voice name="����" class="����" src="voice/ma01/0130860a00">
�������������ĺۼ���
��Ҳ���ǣ�������<RUBY text="������������">�þ�ȫ���п�</RUBY>����


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma01/0130870a00">
������Ϊʲô��Ҫ�г����Ư���Ķ��桭������

//��������
<voice name="����" class="����" src="voice/ma01/0130880a00">
���������еķ�������������
������Ӧ��<RUBY text="������������">��������֮��</RUBY>����

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma01/0130890a00">
�������ߡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStL(300,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0891]
��<RUBY text="����">����</RUBY>��
���ն���������������̶��϶���˵����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���w_�@��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0900]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0130900b56">
���ǡ�����ô����

{	FwC("cg/fw/fwС��_ŭ��a.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0130910b33">
���������˵����������
������ҹ������������޵����ߡ���

{	FwC("cg/fw/fw�ұ�_���.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0130920b43">
���������ǣ���ô�����𡣡�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0921]
����������������ʧ���������ϡ�
�������������

��<RUBY text="��������">Ҳ����˵</RUBY>��<RUBY text="������������������������">��������ɱ�Ϯ�����ֳ���</RUBY>!?

���һ�æ������Χ��
��
���С�����ʲô��
�����Գ�Ϊ������ʲô������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw���w_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0930]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0130930b56">
���㼣֮��ġ�������

{	FwC("cg/fw/fw�ұ�_�@��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0130940b43">
���������аɡ�
��Ӧ���Ѿ���ǰ���糿�Ľ���ϴ���ˡ���

{	FwC("cg/fw/fwС��_ŭ��a.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0130950b33">
����������������!?������Я������Ʒ֮�ࡣ��

{	FwC("cg/fw/fw�ұ�_����.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0130960b43">
��û�����ء�����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma01/0130970a00">
������������޵����ߣ���������⼼����
�����졣ֻ������ˣ�𣿡�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0971]
����Ŵ������ʼ�ͷ�����������Ŭ�����ն�����
����һ��������
��Į���Ż��ŵ����Ƕ����������Դ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0980]
//��������
<voice name="����" class="����" src="voice/ma01/0130980a00">
������ʹ��ˡ������Ǵ�������ֵģ�
�������ﺽ������Ϯ���������Ѷ�����˲����ɡ�
  ���Ǻ���Ŀ����

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma01/0130990a00">
���⸽����û�б��������ߺ��������鱨����

{	FwC("cg/fw/fw���w_�@��a.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0131000b56">
�������ף���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1001]
�����˼���ŷ�Ӧ������
���ղŵ������Ƕ�����˵�ġ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw���w_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1010]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0131010b56">
���ܴ�������𣿡������������������

{	FwC("cg/fw/fw�ұ�_�@��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0131020b43">
��û��˵���ء�
������������£���������үү
һ����󳳴��ְɡ���

{	FwC("cg/fw/fwС��_����.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0131030b33">
���Ǹ��׵ۣ����Ա������������
���Ǻ�����ء���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1031]
����Ϊ���ԭ���д���˵������ס���������
�������������ӡ�
������Ӥ���������ֵ��Ƕ�ʱ����ͼ��͵����ݼ�
ι��֮��ġ���֪�����Ǽ١�

���ն�����û��������Ӧ��
�����ƺ������š�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1040]
//��������
<voice name="����" class="����" src="voice/ma01/0131040a00">
��û����������ƽ�����
����Ȼ��û�з��𡣡�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1041]
�������ƽ�����

���Ҳ�������˼����Ҫ׷�ʣ��ͱ��ұ���ֹ�ˡ�
�������Ҳ�Ҫ�������ɡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw����_�a��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1050]
//��������
<voice name="����" class="����" src="voice/ma01/0131050a00">
����ô����������γ����������ȥ�ģ���

//��������
<voice name="����" class="����" src="voice/ma01/0131060a00">
������ʱ����
��������һ��ʼ��װ�׶�����
��������������Ҳ̫����Ŀ����

//��������
<voice name="����" class="����" src="voice/ma01/0131070a00">
�����������εĽ��е���Ǳ�룬�Լ���
�������롣���ڲ���Ͻ���װ�ס���

//��������
<voice name="����" class="����" src="voice/ma01/0131080a00">
���Լ������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma01/0131090a00">
����������������ô����
��������������ʱһ���������ӱ�ɡ�
Ȼ���ֳ�Ī˵ʬ����Ѫ����û�С���
����������������⵽�˰�����ɡ���

//��������
<voice name="����" class="����" src="voice/ma01/0131100a00">
�����ű����ߵ����ߣ�������������ֳ��ģ���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma01/0131110a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StR(1000, @0, @0,"cg/st/st����_ͨ��_˽��.png");
	FadeStR(300,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1111]
����Ĭ��ų��������������ӡ�
�������أ��ն�����վ��������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1120]
//��������
<voice name="����" class="����" src="voice/ma01/0131120a00">
�������ƺ��鱨��Ȼ���㡣
������ȥ�����ռ��鱨���ر���Ŀ����
���ߵ��ˣ��������λ����ú�̸̸����

{	FwC("cg/fw/fwС��_ͨ��b.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0131130b33">
���������������õġ�
���Ǿͱ���ȥС�ƹݽ֡���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma01/0131140a00">
�����ʹ�·����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStR(300,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1141]
������˴ߴ٣�С����ǰ�������Ų���
����������Ǵն�������
Ȼ���Һ��ұ�������ȥ��

������ʵ���ϣ��Ҷ�����Ľ�չ����̫�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�ұ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1150]
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0131150b43">
���۷ɣ�

{	FwC("cg/fw/fw���w_ͨ��b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0131160b56">
���ţ���

{	FwC("cg/fw/fw�ұ�_Ц�a.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0131170b43">
����ѽ���Ǹ��ն����������ܱ���������Ļ�Ҫ
�����أ�

{	FwC("cg/fw/fw���w_ͨ��b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0131180b56">
�����𣿣�

{	FwC("cg/fw/fw�ұ�_ͨ��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0131190b43">
���������ߺͽ��е����֪ʶ�˽�������
�������������ģ�Ҳֻ����������ӿ���
�����������������ܲ�������Χס��ע���
���̶ֳȶ��ѣ�

{	FwC("cg/fw/fw���w_�@��a.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0131200b56">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1201]
���������ˡ�
����ν�����ƽ�����������װ�ڽ��б���Ϊ��
�������õĵ��ߡ�

������ʱ���к��������һ��������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw���w_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1210]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0131210b56">
���ǣ�����Ҫ��ô������

{	FwC("cg/fw/fw�ұ�_�@��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0131220b43">
������������Ѿ�����ĳ�̶ֳȵ��Ʋ⣬
����Ȼ�����ʡ����ƺ���������
���������������չ������ɣ�

{	FwC("cg/fw/fw���w_����.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0131230b56">
��ֱ������������ʲô�᲻�᲻̫�ð���

{	FwC("cg/fw/fw�ұ�_ͨ��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0131240b43">
�������ˡ������ڿ�����Ҳ����˼������
�������ġ�
��ֻ�ǿ��Զ϶����ǣ�����˿��������
�ڳ������������������

{	FwC("cg/fw/fw���w_ͨ��a.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0131250b56">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1251]
���Լ��������ʶ�㣬����������Ҳ����Ӧ
�ǳ��Ͽ����ұ��Ͽ�������
��������ͬһ�㡣

��������ס����˲�ǿ�к���ͬ�й�Ȼ
����ȷ�ġ�
�����ֻ�������Լ����Ѳ飬�����ʱ��
�϶�Ҳֻ�ܿ���ؽ����š�

��������������߰�����ɣ��������޵�
�Ծ����޿ɱ��⡣
������ʹ��ˣ����������˵Ļ���
��һ�����뾡һ�а취�ȳ��ɰɣ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE*", 1500, 0, null);
	SetVolume("OnSE*", 1500, 0, null);
	SetVolume("@mbgm*", 1500, 0, null);

	CreateColorSP("��ܞ", 1500, "#000000");
	DrawTransition("��ܞ", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	Wait(2000);

	ClearFadeAll(0, true);


}

..//������ָ��
//�Υե����롡"ma01_014.nss"

