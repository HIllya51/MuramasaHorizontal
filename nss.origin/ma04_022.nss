//<continuation number="190">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma04_022.nss_MAIN
{
	//��e�ޥ����ٌ���
	Conquest("nss/ma04_022.nss","Fall",true);
	Conquest("nss/ma04_022.nss","Egg",true);

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
	#bg043_���΍uɽ��_03 = true;
	#bg001_��c_03 = true;

	#ev101_�ץ��`��_a = true;


	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$SelectGameName="@->"+$GameName+"_SELECT";
	call_scene $SelectGameName;

}

scene ma04_022.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"ma04_021.nss"

.//�񣱣�

//����������
//������륬�`���å�����
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	Delete("�ϱ���");

	CreateSE("SE01","se���L_�n��_�zܞ��01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	WaitKey(1200);

	OnBG(100,"bg043_���΍uɽ��_03.jpg");
	FadeBG(0,true);
	FadeDelete("�}��ܞ", 2000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
������ɱ���ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nw������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//���⡿
<voice name="��" class="��" src="voice/ma04/0220010a14">
�����ϧ������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Ҥ�`���ɤ���ɤ���
//���o�T��������Ƥ��롣

//�ץ����ζ��x
	CreateTextureSP("�}������", 200, Center, Middle, "cg/bg/bg043_���΍uɽ��_03.jpg");
	CreateProcess("�ץ�������", 5000, 0, 0, "ma04022_fall");
	SetAlias("�ץ�������","�ץ�������");

//�ץ��������`��
	Request("�ץ�������", Start);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
��ͻȻ��
����ʲô�����������

���ǣȣѵ��������
�����ǽӶ������ء���ͬ��ʯһ�㲻ͣ׹�䡣

���ںݺ��ҵ�����֮ǰ�����Ǳ���Ȼȫ��������

��ͷ��Ť�ϣ������������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@SE*", 5000, 0, null);
	CreateSE("SE01","se���L_�n��_�nͻ01");
	MusicStart("SE01",0,800,0,1000,null,false);

	CreateTextureEX("�}�ţ�", 5000, -880, -412, "cg/ev/resize/ev101_�ץ��`��_a.jpg");
	Move("�}�ţ�", 6000, @0, -86, DxlAuto, false);
	Fade("�}�ţ�", 1000, 1000, null, false);
	Delete("�ץ���*");

	SetFwC("cg/fw/fw��������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="����" src="voice/ma04/0220020a00">
���������Ǻţ���

{	FwC("cg/fw/fw�y�Ǻ�_ͨ��.png");}
//���⡿
<voice name="��" class="��" src="voice/ma04/0220030a14">
������һ���ء�
��������ε���Ϸ����Ӯ�ˣ���������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Delete("�}����*");
	OnBG(100,"bg001_��c_03.jpg");
	FadeBG(0,true);
	StR(1000, @0, @0,"cg/st/3d�y�Ǻ�_����_ͨ��.png");
	FadeStR(0,true);

	FadeDelete("�}�ţ�", 1000, true);
	SoundPlay("@mbgm37",0,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
�������ľ�ͷ����ӳ����ҹ�յ����¡�
�����Ǻž����Ǹ���ͷ��

����͸�ĳ��δ���Ĵ�
��ȴΥ�������<RUBY text="����">����</RUBY>�š�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�y�Ǻ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//���⡿
<voice name="��" class="��" src="voice/ma04/0220040a14">
�����ǵ�һ���ء���
���Һ��ڴ��������������Ժ�����̬
<RUBY text="����">����</RUBY>�أ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/0220050a01">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
�����Ǻ��Ǻ�������<RUBY text="��������">�˷��ڴ�</RUBY>��������
���Լ������෴�ģ�����Ľ��д�����

���������ˡ�
����������һ�С�

����ʲôҪ<RUBY text="������">��ʼ��</RUBY>��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	PrintGO("�ϱ���", 25000);
	OnBG(100,"bg043_���΍uɽ��_03.jpg");
	FadeBG(0,true);

	CreateColorEXadd("�}�ѹ�", 500, "#FFFFFF");
	DrawTransition("�}�ѹ�", 0, 100, 250, 200, null, "cg/data/circle_13_00_0.png", true);

//�ץ����ζ��x
	CreateProcess("�ץ������å�", 1000, 0, 0, "Egg");
	SetAlias("�ץ������å�","�ץ������å�");

//�ץ��������`��
	Request("�ץ������å�", Start);
	FadeDelete("�ϱ���", 300, true);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//��������
<voice name="����" class="����" src="voice/ma04/0220060a00">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
��������������
����פ����У��ʬ�塣

�����Ѿ�ֹͣ������
��Ȼ����

�������ؿڣ�������ֵ�������
������װ�ף����������Ĺ�â��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//��������
<voice name="����" class="����" src="voice/ma04/0220070a00">
��������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110a]
��<RUBY text="��������">��������</RUBY>!!

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����y�W��
	CreateSE("SE01","se����_��x_�k��03");
	MusicStart("SE01",0,1000,0,1300,null,false);
	CreateColorSPadd("�}��", 5500, "#FFFFFF");
	Delete("�ץ���*");
	Delete("�}�ѹ�");
	FadeDelete("�}��", 800, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110b]
������ʼ���ɱ䡣

������<RUBY text="��������">ԴԴ����</RUBY>�ؽ���������ڲ���
�������е�����һͬ�������ȥ��

{	CreateSE("SE02","se����_��_���}���Z����01");//���ߩ`ע��
	MusicStart("SE02",0,1000,0,1000,null,false);}
������ԴԴ���ϡ�
�������������ꡣ

����ֽ����Ʒһ�㱻����
����ΪƯ������İ���ɫ���塣

��Ȼ������ɱ䡣

��һ���أ��������졣
�����<RUBY text="����">�ֽ�</RUBY>��

������<RUBY text="����">ͷ��</RUBY>��
���ֳ�<RUBY text="����">����</RUBY>��

�����ճ��ֵģ��Ǻ�ԭ��һ�������Ρ�

{	CreateSE("SE03","se����_������_����ʽ����");
	MusicStart("SE03",0,1000,0,1000,null,false);}
����������С��һȦ��
����òҲ��ȫ��ͬ��

������ĺڷ���
��ͯ�ɶ��ɰ�����ò��
����ɫ��װ�ס���

����������Ů��

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���˄������⡢���쥤����

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
������������Ů��
�������ҡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//��٩`���ܥ����ʤ��ȤΤ��Ȥǥ�����ȥ

	SetFwC("cg/fw/fw��ɫ����_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//���ܥ����Ϥ����
//����ɫ���ȣ�
<voice name="��ɫ����" class="������Ů��" src="voice/ma04/0220079z00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
������˸��˵ء���
��΢Ц�š�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���^ȥ�ι⥫�åȒ���
//��������ݳ������륫�åȤ��m���Ǥ���
	CreateColorSP("�}��", 8500, "#FFFFFF");
	CreateTextureSP("�}�ţƣ�", 1000, Center, Middle, "cg/ev/ev133_����������_a.jpg");
	Wait(10);

	Fade("�}��", 0, 0, null, true);
	Wait(100);

//��һ�ȥ֥�å������ȡ����`���Ф�
	Fade("�}��", 0, 1000, null, true);
	Wait(1);
	ClearWaitAll(2000, 4000);


.//�񣱣�����
//������AȾ���kɢ
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	CreateTextureSP("�}�ţ�", 5000, Center, Middle, "cg/ev/ev001_�y�Ǻ��¼�����`����.jpg");
	CreateSE("SEL01","se����_������_�u������");
	MusicStart("SEL01",2000,500,0,1000,null,true);
	Delete("�ϱ���");
	DrawDelete("�}��ܞ", 1000, 1000, "wave_01_00_0", true);

	WaitKey(1000);


//���y�Ǻ�
	OnBG(100,"bg001_��a_03.jpg");
	FadeBG(0,true);
	StR(1000, @0, @0,"cg/st/3d�y�Ǻ�_����_ͨ��b.png");
	FadeStR(0,true);
	Fade("�}�ţ�", 1000, 0, null, true);
	SoundPlay("@mbgm01",0,1000,true);

	SetFwC("cg/fw/fw�y�Ǻ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//���⡿
<voice name="��" class="��" src="voice/ma04/0220080a14">
���ޡ����ޣ�
������Ư����Ů�����޿����ޡ���

//���⡿
<voice name="��" class="��" src="voice/ma04/0220090a14">
�������㡰��ɫ֮�ȡ�֮����
�����ɡ����質�ɣ���

//���⡿
<voice name="��" class="��" src="voice/ma04/0220100a14">
����ĸ��һͬ��
���質�������ս�裡��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���AȾ���kɢ
	CreateTextureEXmul("�}�ţƣ�", 5000, Center, Middle, "cg/ev/ev001_�y�Ǻ��¼�����`����.jpg");
	CreateSE("SE01","se����_��x_�k��04");
	MusicStart("SE01",0,1000,0,750,null,false);
	Zoom("�}�ţƣ�", 0, 1200, 1200, null, true);
	DrawEffect("�}�ţƣ�", 3600000, "Ripple", 200, 200, null);
	Fade("�}�ţƣ�", 1000, 750, null, true);
	Fade("�}�ţ�", 1000, 1000, null, true);

	SetFwC("cg/fw/fw����_�ֲ�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//��������
<voice name="����" class="����" src="voice/ma04/0220110a00">
������������
��������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SEL*", 3000, 0, null);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
��������Ⱦ����ɢ����
��<RUBY text="����">˫��</RUBY>�ء�

����û��ϵ��

�������������

������������Ҳ�Ѳ��ڡ�

��ֻʣ�¡�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStA(0,true);
	OnBG(100,"bg043_���΍uɽ��_03.jpg");
	FadeBG(0,true);
	Fade("�}�ţƣ�", 1000, 400, null, false);
	FadeDelete("�}�ţ�", 1000, false);

	SetFwC("cg/fw/fw���B_�k��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
//������
//�����B��
<voice name="���B" class="���B" src="voice/ma04/0220120b48">
������������

{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0220130a00">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SEL01","se�M��_ճ���|_���띢���03_L");
	MusicStart("SEL01",2000,700,0,750,null,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
���������С�
�����근����

����Ϊ���ޣ�Ϯ��Ѫ�ס�

����ˮ���䣬�������岻���Ĺ�����
�����顣˺�ѡ����ڡ�

���������꣬˻��˻������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SEL01", 1000, 0, null);

//������
	CreateColorEXadd("�}��", 10000, "#FFFFFF");
	Fade("�}��", 600, 1000, null, true);
	Delete("�}�ţƣ�");
	CreateColorEXmul("�}����Ļ", 8100, "#847000");
	Fade("�}����Ļ", 0, 400, null, true);
	CreateTextureSP("�}���뱳��", 6100, Center, Middle, "cg/bg/bg041_Ƭ������_01.jpg");
	StL(7000, @0, @0,"cg/st/st���B_ͨ��_˽��.png");
	StR(7000, @0, @0,"cg/st/st����_ͨ��_˽��.png");
	FadeStA(0,true);
	Fade("�}��", 300, 0, null, true);

	SetFwC("cg/fw/fw���B_ͨ��.png","Sepia");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
//�����B��
<voice name="���B" class="���B" src="voice/ma04/0220140b48">
������������ֺ��Ӷ�������Ӷ��Ҫô
�ǹ�Ǯ���٣�Ҫô����ʲô���õĹ�����
���������Ѱ��������������ǵ���С��
������ӡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
	Fade("�}��", 400, 1000, null, true);
	Delete("�}����*");
	DeleteStA(0,true);
	FadeDelete("�}��", 600, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
���ܵ���Ҳ�ã�
��������Ҳ�գ�
��
����һ���أ�

��ȭ��
�����ߡ�
����ҧ��
�����顣

��̰Ѱ���ֵܽ��õ�Ѫ�⡣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ƣ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
//������̨�~����Ȼ�ȡ��֓P�ʤ���
//��������
<voice name="����" class="����" src="voice/ma04/0220150a00">
��ס�֡���

//��������
<voice name="����" class="����" src="voice/ma04/0220160a00">
��ס�ְ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
��ͽ�͵���ૡ�
����ʵ�Լ�Ҳ��֪����û�з���������

�����ǻ��ڼ�����
�������������ڵ�ʢ��֮�С�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���AȾ��
	SetVolume("SE*", 300, 0, null);
	CreateSE("SE01","se����_��x_�k��04");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEXadd("�}�ե�", 5000, "#FFFFFF");
	Fade("�}�ե�", 600, 1000, null, true);
	WaitKey(100);
	CreateTextureSP("�}�ţ�", 3100, Center, Middle, "cg/ev/ev001_�y�Ǻ��¼�����`����.jpg");
	CreateColorEX("�}���\", 3110, "#000000");
	Fade("�}���\", 0, 600, null, true);
	FadeDelete("�}�ե�", 600, true);

	WaitKey(400);

	CreateTextureEX("Gin_song19", 4600, Center, Middle, "cg/sys/telop/tp_�y�ǺŤΆh21.png");
	CreateTextureEX("Gin_song20", 4600, Center, Middle, "cg/sys/telop/tp_�y�ǺŤΆh22.png");
	CreateTextureEX("Gin_song21", 4600, Center, Middle, "cg/sys/telop/tp_�y�ǺŤΆh19.png");
	CreateTextureEX("Gin_song22", 4600, Center, Middle, "cg/sys/telop/tp_�y�ǺŤΆh20.png");


	Move("Gin_song19", 0, @0, @-60, null, true);
	Move("Gin_song20", 0, @0, @-20, null, true);
	Move("Gin_song21", 0, @0, @+20, null, true);
	Move("Gin_song22", 0, @0, @+60, null, true);

	Move("Gin_song19", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song19", 600, 1000, null, false);

	WaitKey(2000);

	Move("Gin_song20", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song20", 600, 1000, null, false);

	WaitKey(2000);

	Move("Gin_song21", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song21", 600, 1000, null, false);

	WaitKey(2000);

	Move("Gin_song22", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song22", 600, 1000, null, false);

	WaitKey();

/*
//��������ݳ����ץ��`����ͬ���L�ˤ��Ƥ��ޤ���
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
�����뽣����֮�������b�������֮��������

��Ϊ�ڰ��뾲�����ػ�������֮�������ᴿ�����ҫ��԰ɡ���

�����������������޸裬�ص���Ц��ƣ����Թ�ޡ���

���������������⵻�棬���Է�ŭ�������ϲ�á���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
*/

	WaitAction("Gin_song22", null);
	PrintGO("�ϱ���", 25000);
	Delete("Gin*");
	CreateColorSP("�}�\", 3099, "#000000");
	CreateTextureSP("�}�ţ�", 3100, Center, Middle, "cg/ev/ev001_�y�Ǻ��¼�����`����.jpg");
	CreateColorEX("�}���\", 3110, "#000000");
	Fade("�}���\", 0, 600, null, true);
	FadeDelete("�ϱ���", 1000, true);

	PrintGO("�ϱ���", 25000);
	OnBG(100,"bg001_��c_03.jpg");
	FadeBG(0,true);
	FadeDelete("�ϱ���", 1000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
�����ǺŸ質��ף����
����֮��Ů��֮������

���쳹��ʵĶ��س���
���������е�ʢ���������ҡ�

�����근�����Ѫ�졣
���ֵܽ�����Ҳ���Ѫ�졣
��
�����ȫ������ԡѪ����Ȼ�ֱ治�����ҡ�

��Ҫ��ֹ���С�
��Ҫ��ֹ���ǲ��С�

������ȥ�ͺ��ˡ�
��ɱ����ͷ����ͺ��ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����쥤����
//���쥤��`�ؤͣ����⣨�^ȥ�����ˤ��ؤʤ�
	OnBG(100,"bg043_���΍uɽ��_03.jpg");
	FadeBG(1000,true);

	SetFwC("cg/fw/fw����_ƣ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
//��������
<voice name="����" class="����" src="voice/ma04/0220170a00">
���ء�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
�����ǵġ�
�����ǵġ�

��һ�㶼����
��û���κι�ͬ�㡣

����ֻ�ǹ��
��ֻ�ǵ��ˡ�

������ȥ��
������ȥ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureSP("�}����100", 20, Center, Middle, "cg/bg/bg001_��c_03.jpg");
	StC(30, @0,@0,"cg/st/3d�y�Ǻ�_����_ͨ��.png");
	FadeStC(0,true);
	FadeDelete("@OnBG*", 300, false);

	SetFwR("cg/fw/fw�y�Ǻ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
//���⡿
<voice name="��" class="��" src="voice/ma04/0220180a14">
���ܿɰ��ɣ�
������������

//���⡿
<voice name="��" class="��" src="voice/ma04/0220190a14">
�����Һ���ġ��ѡ��е�����Ů������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ɥ���
	SetVolume("@mbgm*", 5000, 750, null);
	PrintGO("�ϱ���", 25000);
	CreateColorSP("�}�ե�", 3000, "#FFFFFF");
	OnBG(100,"bg043_���΍uɽ��_03.jpg");
	FadeBG(0,true);
	CreateSE("SE01","se����_��_��Ġ����02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Delete("�ϱ���");
	Wait(10);
	Fade("�}�ե�", 100, 0, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
�� Ů����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ɥ���
//������b�r���Bĸ�����롣һ˲�����ֵĤ�
	SetVolume("@mbgm*", 5000, 750, null);
	CreateSE("SE01","se����_��_��Ġ����02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("�}�ե�", 100, 1000, null, true);
	CreateTextureSP("�}�ţ�", 2900, Center, Middle, "cg/ev/ev008_���Ӥ򱧤���Ů.jpg");
	Wait(10);
	Fade("�}�ե�", 100, 0, null, true);
	Wait(100);
	Fade("�}�ե�", 100, 1000, null, true);
	Delete("�}�ţ�*");
	Wait(10);
	Fade("�}�ե�", 100, 0, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
��Ů��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ɥ���
//���ؤ���줿�z��
	SetVolume("@mbgm*", 5000, 0, null);
	CreateSE("SE01","se����_��_��Ġ����02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("�}�ե�", 100, 1000, null, true);
	CreateTextureSP("�}�ţ�", 2900, Center, Middle, "cg/ev/ev005_�ؤ���줿��.jpg");
	Wait(10);
	Fade("�}�ե�", 100, 0, null, true);
	Wait(100);
	Fade("�}�ե�", 100, 1000, null, true);
	Delete("�}�ţ�*");
	Wait(10);
	Fade("�}�ե�", 100, 0, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310]
��Ů������
����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


}

//���x�k��������`��

..//������ָ��
//�������"ma04_022a.nss"
//���`����"ma04_022b.nss"



//���x�k֫���`��
scene ma04_022.nss_SELECT
{
//���x�k֫ǰ���x
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

//��ǰ��״�B���x
	PrintGO("������", 30000);
	OnBG(100,"bg043_���΍uɽ��_03.jpg");
	FadeBG(0,true);
	FadeDelete("������", 0, true);

//���x�k֫
	SetChoice02("Ů��","����");
	select
	{
		//���`������
		CursorPosition($CsrX,$CsrY);
		if($CsrY!=288){
			if($SYSTEM_keydown_left){
				$LOCAL_keydown_left=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_right){
				$LOCAL_keydown_right=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_up){
				$LOCAL_keydown_up=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_down){
				$LOCAL_keydown_down=true;
				ChoiceCursor();
			}else if($SYSTEM_mousewheel_up){
				$LOCAL_mousewheel_up=true;
				ChoiceCursor();
			}else if($SYSTEM_mousewheel_down){
				$LOCAL_mousewheel_down=true;
				ChoiceCursor();
			}
			$SYSTEM_mousewheel_up=false;
			$SYSTEM_mousewheel_down=false;
		}		

		if(!#PreSaveFlag){
			SelectSave();
		}

		if($SYSTEM_skip||$SYSTEM_text_auto){
			$SYSTEM_skip=false;
			$SYSTEM_text_auto=false;
		}
	
		case @�x�k֫��
		{
			ChoiceA02();
//�����"ma04_022a.nss"
				$GameName = "ma04_022a.nss";
		}
		case @�x�k֫��
		{
			ChoiceB02();
//�`����"ma04_022b.nss"
				$GameName = "ma04_022b.nss";
		}
	}
}



.//�ץ�����======================================================

..//��������
function Fall()
{
	while(1)
	{
	CreateSound("SEP01", SE, "sound/se/se���L_�n��_�nͻ01");//���ߩ`ע��
	SetVolume("SEP01", 0, 0, NULL);
	SetAlias("SEP01", "SEP01");
	$RSEtime1 = Random(8);
	$RSE1 = $RSEtime1 * 100;

	Request("SEP01", "Play");
	SetVolume("SEP01", 0, $RSE1, null);
	Request("SEP01", Disused);

	Shake("@�}������", 1000, 0, 8, 0, 0, 1000, DxlAuto, false);
	Wait(1000);
	$RQtime1 = Random(4) + 2;
	$Fall1 = $RQtime1 * 100;
	Wait($Fall1);


	CreateSound("SEP02", SE, "sound/se/se���L_�Ɖ�_���k02");//���ߩ`ע��
	SetVolume("SEP02", 0, 0, NULL);
	SetAlias("SEP02", "SEP02");

	$RSEtime2 = Random(6);
	$RSE2 = $RSEtime2 * 100;

	Request("SEP02", "Play");
	SetVolume("SEP02", 0, $RSE2, null);
	Request("SEP02", Disused);

	Shake("@�}������", 1000, 0, 6, 0, 0, 1000, DxlAuto, false);
	Wait(200);
	$RQtime2 = Random(2);
	$Fall2 = $RQtime2 * 50;
	Wait($Fall2);


	CreateSound("SEP03", SE, "sound/se/se���L_�Ɖ�_����02");//���ߩ`ע��
	$RSEtime3 = Random(6) + 4;
	$RSE3 = $RSEtime3 * 100;

	Request("SEP03", "Play");
	SetVolume("SEP03", 0, $RSE3, null);
	Request("SEP03", Disused);

	Shake("@�}������", 1000, 0, 10, 0, 0, 1000, DxlAuto, false);
	Wait(1000);
	$RQtime3 = Random(4) + 10;
	$Fall3 = $RQtime3 * 100;
	Wait($Fall3);


	CreateSound("SEP04", SE, "sound/se/se���L_�n��_�nͻ01");//���ߩ`ע��

	$RSEtime4 = Random(3);
	$RSE4 = $RSEtime4 * 100;

	Request("SEP04", "Play");
	SetVolume("SEP04", 0, $RSE4, null);
	Request("SEP04", Disused);

	Shake("@�}������", 1000, 0, 3, 0, 0, 1000, DxlAuto, false);
	Wait(600);
	$RQtime4 = Random(4) + 3;
	$Fall4 = $RQtime4 * 100;
	Wait($Fall4);


	CreateSound("SEP05", SE, "sound/se/se���L_�n��_�nͻ01");//���ߩ`ע��

	$RSEtime5 = Random(6);
	$RSE5 = $RSEtime5 * 100;

	Request("SEP05", "Play");
	SetVolume("SEP05", 0, $RSE5, null);
	Request("SEP05", Disused);

	Shake("@�}������", 3000, 0, 6, 0, 0, 1000, DxlAuto, false);
	Wait(1000);
	$RQtime5 = Random(5) + 1;
	$Fall5 = $RQtime5 * 100;
	Wait($Fall5);
	}
}


..//���å�
function Egg()
{
	while(1)
	{
	Fade("@�}�ѹ�", 2000, 300, null, true);
	Fade("@�}�ѹ�", 2000, 100, null, true);
	}
}



function ma04022_fall(){

	CreateSound("SEP01", SE, "sound/se/se���L_�n��_�nͻ01");
	SetVolume("SEP01", 0, 0, NULL);
	SetAlias("SEP01", "SEP01");

	CreateSound("SEP02", SE, "sound/se/se���L_�Ɖ�_���k02");
	SetVolume("SEP02", 0, 0, NULL);
	SetAlias("SEP02", "SEP02");

	CreateSound("SEP03", SE, "sound/se/se���L_�Ɖ�_����02");
	SetVolume("SEP03", 0, 0, NULL);
	SetAlias("SEP03", "SEP03");

	CreateSound("SEP04", SE, "sound/se/se���L_�n��_�nͻ01");
	SetVolume("SEP04", 0, 0, NULL);
	SetAlias("SEP04", "SEP04");

	CreateSound("SEP05", SE, "sound/se/se���L_�Ɖ�_���k05");
	SetVolume("SEP05", 0, 0, NULL);
	SetAlias("SEP05", "SEP05");

	begin:

	while(1){
		$RSEtime1 = Random(8);
		$RSE1 = $RSEtime1 * 100;
	
		Request("SEP01", "Play");
		SetVolume("SEP01", 0, $RSE1, null);
	
		Shake("@�}������", 1000, 0, 8, 0, 0, 1000, DxlAuto, false);
		Wait(1000);
		$RQtime1 = Random(4) + 2;
		$Fall1 = $RQtime1 * 100;
		Wait($Fall1);
	
		$RSEtime2 = Random(6);
		$RSE2 = $RSEtime2 * 100;
	
		Request("SEP02", "Play");
		SetVolume("SEP02", 0, $RSE2, null);
	
		Shake("@�}������", 1000, 0, 6, 0, 0, 1000, DxlAuto, false);
		Wait(200);
		$RQtime2 = Random(2);
		$Fall2 = $RQtime2 * 50;
		Wait($Fall2);
	
		$RSEtime3 = Random(6) + 4;
		$RSE3 = $RSEtime3 * 100;
	
		Request("SEP03", "Play");
		SetVolume("SEP03", 0, $RSE3, null);
	
		Shake("@�}������", 1000, 0, 10, 0, 0, 1000, DxlAuto, false);
		Wait(1000);
		$RQtime3 = Random(4) + 10;
		$Fall3 = $RQtime3 * 100;
		Wait($Fall3);
	
		$RSEtime4 = Random(3);
		$RSE4 = $RSEtime4 * 100;
	
		Request("SEP04", "Play");
		SetVolume("SEP04", 0, $RSE4, null);
	
		Shake("@�}������", 1000, 0, 3, 0, 0, 1000, DxlAuto, false);
		Wait(600);
		$RQtime4 = Random(4) + 3;
		$Fall4 = $RQtime4 * 100;
		Wait($Fall4);
	
		$RSEtime5 = Random(6);
		$RSE5 = $RSEtime5 * 100;
	
		Request("SEP05", "Play");
		SetVolume("SEP05", 0, $RSE5, null);
	
		Shake("@�}������", 3000, 0, 6, 0, 0, 1000, DxlAuto, false);
		Wait(1000);
		$RQtime5 = Random(5) + 1;
		$Fall5 = $RQtime5 * 100;
		Wait($Fall5);
	
	}


}

