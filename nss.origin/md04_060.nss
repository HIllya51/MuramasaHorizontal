//<continuation number="260">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_060.nss_MAIN
{
	//��e�ޥ����ٌ���
	Conquest("nss/md04_060.nss","RandomMeimetsu_md04_060",true);
	Conquest("nss/md04_060.nss","RandomMeimetsuSet_md04_060",true);
	

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
	#ev235_�Ȥ�����׏�_a=true;
	#ev235_�Ȥ�����׏�_b=true;
	#ev235_�Ȥ�����׏�_c=true;
	#ev235_�Ȥ�����׏�_d=true;
	#ev235_�Ȥ�����׏�_e=true;
	#ev235_�Ȥ�����׏�_f=true;
	#ev235_�Ȥ�����׏�_g=true;
	#bg063_���ӘS��������_02=true;
	#bg084_�w�д�Ş��_02=true;
	#bg002_��a_02=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md04_061.nss";

}

scene md04_060.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"md04_059.nss"


//���

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\Ļ��", 50, "BLACK");

	SoundPlay("@mbgm02", 0, 1000, true);


	Delete("�ϱ���");

	SetFwC("cg/fw/fw����Ů��ρ_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//������������
<voice name="��������" class="��������" src="voice/md04/0600010a15">
������������

{	FwC("cg/fw/fw��_����.png");}
//���⡿
<voice name="��" class="��" src="voice/md04/0600020a14">
������������

{	FwC("cg/fw/fw����Ů��ρ_ͨ��.png");}
//������������
<voice name="��������" class="��������" src="voice/md04/0600030a15">
����Ȼ������

//������������
<voice name="��������" class="��������" src="voice/md04/0600040a15">
����Ȼ���⳽���������޷����ɵĶ���!?��

{	FwC("cg/fw/fw��_����.png");}
//���⡿
<voice name="��" class="��" src="voice/md04/0600050a14">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ţ֣�霤��ФˬF�������׏�����Ů��
//����Ů�ϟo����
//�����¡���������y�ǺŤǤϤʤ���

	CreateTextureEX("��Ů", 15000, @0, @0, "cg/ev/ev235_�Ȥ�����׏�_a.jpg");
	SetBlur("��Ů", true, 2, 500, 70, false);
	Request("��Ů", Smoothing);
	Zoom("��Ů", 0, 2000, 2000, null, true);

	Zoom("��Ů", 1000, 1000, 1000, Dxl2, false);
	Fade("��Ů", 1000, 1000, null, true);



	SetFwR("cg/fw/fw��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//���⡿
<voice name="��" class="��" src="voice/md04/0600060a14">
���������ǣ�

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
�������ǡ�

�������ܡ�

����˼����

���������������
  ������Ұ������ĳ̶ȡ�������ĳ̶ȡ�����������
�ޡ�˼�����������塣

�����顣
��
���������飿

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����֣���������Ů

//	CreateTextureEX("��Ů02", 16000, @0, @0, "cg/ev/ev235_�Ȥ�����׏�_b.jpg");
//	Fade("��Ů02", 1000, 1000, null, true);

	CreateTextureSP("��Ů02a", 15000, 0, 0, "cg/ev/ev235_�Ȥ�����׏�_b.jpg");
	CreateTextureSP("��Ů", 15000, 0, 0, "cg/ev/ev235_�Ȥ�����׏�_b.jpg");
	CreateTextureSP("��Ů02b", 15000, 0, 0, "cg/ev/ev235_�Ȥ�����׏�_b.jpg");

	OnSE("se����_냇��_�k��03", 1000);
	EffectZoomadd(17000, 500, 100, "cg/ef/ef003_�����Ƅ�.jpg", false);
	Delete("��Ů02a");
	FadeF4("��Ů02b", 200, 500, 600, 0, 0, Dxl2, true);
	FadeDelete("��Ů02b", 300, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
�����ԡ�
������š��������س�ʵ�š�

���п��ġ�

����δ��֪������ס�ģ�ԭʼ���ġ�

��������

���޹���

��͸����

����������˷ḻ���ġ�

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����֣��һ�Ť���ࡣ����ΉK�����󻭵�
//	CreateTextureEX("��Ů03", 17000, @0, @0, "cg/ev/ev235_�Ȥ�����׏�_c.jpg");
//	Fade("��Ů03", 1000, 1000, null, true);
//	Delete("��Ů02");

	CreateTextureSP("��Ů02a", 15000, 0, 0, "cg/ev/ev235_�Ȥ�����׏�_c.jpg");
	CreateTextureSP("��Ů", 15000, 0, 0, "cg/ev/ev235_�Ȥ�����׏�_c.jpg");
	CreateTextureSP("��Ů02b", 15000, 0, 0, "cg/ev/ev235_�Ȥ�����׏�_c.jpg");

	OnSE("se����_냇��_�k��03", 1000);
	EffectZoomadd(17000, 500, 100, "cg/ef/ef003_�����Ƅ�.jpg", false);
	Delete("��Ů02a");
	FadeF4("��Ů02b", 200, 500, 600, 0, 0, Dxl2, true);
	FadeDelete("��Ů02b", 300, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
�����⡣

�����⣡

������!!

 �����᡹�������񡹡�
 ����ɱ�����������ƻ�����
 �����ź�����������Ľ��������Ϊ�������Կ���ʧ��֮
�ࡪ������

����Ϊ��Щ����֮ǰ�ģ�
�������ǵģ�
��
�����⡣

�������Ķ��⡣

������������ȫ��
��������ֳ��硣

������ӲҪ�������ƵĻ���
��
��
�������������������������ڰ���

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����֣�����ˉ�����
//	CreateTextureEX("��Ů04", 18000, @0, @0, "cg/ev/ev235_�Ȥ�����׏�_d.jpg");
//	Fade("��Ů04", 1000, 1000, null, true);

	CreateTextureSP("��Ů02a", 15000, 0, 0, "cg/ev/ev235_�Ȥ�����׏�_d.jpg");
	CreateTextureSP("��Ů", 15000, 0, 0, "cg/ev/ev235_�Ȥ�����׏�_d.jpg");
	CreateTextureSP("��Ů02b", 15000, 0, 0, "cg/ev/ev235_�Ȥ�����׏�_d.jpg");

	OnSE("se����_냇��_�k��03", 1000);
	EffectZoomadd(17000, 500, 100, "cg/ef/ef003_�����Ƅ�.jpg", false);
	Delete("��Ů02a");
	FadeF4("��Ů02b", 200, 500, 600, 0, 0, Dxl2, true);
	FadeDelete("��Ů02b", 300, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
��<RUBY text="Slash��Dark">�޾��ĺڰ�</RUBY>��
��<RUBY text="Slash��Dark">�����а��</RUBY>��
��<RUBY text="Slash��Dark">���Եľܾ�</RUBY>��
��<RUBY text="Slash��Dark">���������</RUBY>��

����֮ǰ����ʲô����İɡ�

��������

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��������һ˲���å�
	CreateTextureEX("��Ů05", 18500, @0, @0, "cg/ev/ev235_�Ȥ�����׏�_e.jpg");
	OnSE("se����_��_��Ġ����02",1000);
	Fade("��Ů05", 0, 1000, null, true);
	Wait(300);
	Fade("��Ů05", 300, 0, null, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
�����飿

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��������һ˲���å�
	CreateTextureEX("��Ů05", 18500, @0, @0, "cg/ev/ev235_�Ȥ�����׏�_f.jpg");

	OnSE("se����_��_��Ġ����02",1000);
	Fade("��Ů05", 0, 1000, null, true);
	Wait(300);
	Fade("��Ů05", 300, 0, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
���

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��������һ˲���å�
	CreateTextureEX("��Ů05", 18500, @0, @0, "cg/ev/ev235_�Ȥ�����׏�_g.jpg");

	OnSE("se����_��_��Ġ����02",1000);
	Fade("��Ů05", 0, 1000, null, true);
	Wait(300);
	Fade("��Ů05", 300, 0, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
����Ϊϲ�������飿

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���������å�
	CreateTextureEX("��Ů05a", 18500, @0, @0, "cg/ev/ev235_�Ȥ�����׏�_e.jpg");
	Zoom("��Ů05a", 0, 1100, 1100, null, true);

	MoveFRP1("@��Ů05a",20000,20,20);
	Fade("��Ů05a", 3000, 500, null, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
��
������������������������
��������������������ʲô��

</PRE>
	SetTextEXR();
	TypeBeginTimeRI(150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw��_ŭ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//���⡿
<voice name="��" class="��" src="voice/md04/0600070a14">
����������������

{	FwR("cg/fw/fw����Ů��ρ_ͨ��.png");}
//������������
<voice name="��������" class="��������" src="voice/md04/0600080a15">
��ѽ��ѽ����������������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ӥ��ӥ������٤ˁw�Ѥ������

	CreateSE("�Ҥ�", "se����_�z_���٥�_�ҤӸ��");
	MusicStart("�Ҥ�", 0, 1000, 0, 1000, null,false);

	CreateColorEXadd("�}ɫ��", 19000, "#FFFFFF");
	Fade("�}ɫ��", 100, 1000, null, true);

	Wait(300);

	CreateColorEX("�}ɫ�\", 20000, "#000000");
	Fade("�}ɫ�\", 1000, 1000, null, true);

	WaitKey(500);

//�����ڡ�����

	CreateColorSP("�\Ļ��", 25000, "#000000");
	DrawTransition("�\Ļ��", 200, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	Delete("��Ů*");
	Delete("�}ɫ��");
	Delete("�}ɫ�\");
	MoveFRP1stop();

	OnBG(101, "bg063_���ӘS��������_02.jpg");
	FadeBG(0, true);

	DrawTransition("�\Ļ��", 200, 1000, 0, 100, null, "cg/data/slide_01_03_1.png", true);
	Delete("�\Ļ��");

	SetFwC("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//��������
<voice name="����" class="����" src="voice/md04/0600090a00">
�����С���<RUBY text="������">�ѿ���</RUBY>!?��

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0600100a01">
����ô�ᡭ��
���ѵ�˵<RUBY text="ĸ��">���Ǻ�</RUBY>����һ�б�����!?��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���w��Ş�ڡ��������
	CreateColorSP("�\Ļ��", 25000, "#000000");
	DrawTransition("�\Ļ��", 200, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);


	OnBG(101, "bg084_�w�д�Ş��_02.jpg");
	FadeBG(0, true);

	DrawTransition("�\Ļ��", 200, 1000, 0, 100, null, "cg/data/slide_01_03_1.png", true);
	Delete("�\Ļ��");

	SetFwH("cg/fw/fw�������_ŭ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//��������ա�
<voice name="�������" class="�������" src="voice/md04/0600110a13">
������������

{	FwH("cg/fw/fw�������_�~��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md04/0600120a13">
��������������!?
����������!?��

</PRE>
	SetTextEXH();
	TypeBeginHIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��霤�����׏���ev235c

	CreateTextureEX("��Ů03", 17000, @0, @0, "cg/ev/ev235_�Ȥ�����׏�_d.jpg");
	Fade("��Ů03", 1000, 1000, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
������������������

������ܸ�ʱ�䡭��

���Ϊ���ԡ���

�������Ե�ʧ�ܡ�

����Ҳ���ǿ��

��Ҳ��ǳ��ǳ���ǿ��

  Ȼ���ڰ����ǱȰ����ʤһ�

�����Ժڰ���Ȼʤ����

�������ɷ��ɻ��ʤ����Ϊ�ճ���
��һ���ᡣ

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw��_ŭ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//���⡿
<voice name="��" class="��" src="voice/md04/0600130a14">
��������������������Ҫ����������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ӥ��ӥ��ӥ�
	CreateSE("�Ҥ�", "se����_�z_�ҤӸ��01");
	MusicStart("�Ҥ�", 0, 1000, 0, 1000, null,false);
	CreateColorSP("�}ɫ��", 19000, "#FFFFFF");
	Wait(50);
	FadeDelete("�}ɫ��", 150, true);

//�����ڡ�����
	CreateColorSP("�\Ļ��", 25000, "#000000");
	DrawTransition("�\Ļ��", 200, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	Delete("��Ů*");

	OnBG(101, "bg063_���ӘS��������_02.jpg");
	FadeBG(0, true);

	DrawTransition("�\Ļ��", 200, 1000, 0, 100, null, "cg/data/slide_01_03_1.png", true);
	Delete("�\Ļ��");

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//��������
<voice name="����" class="��������" src="voice/md04/0600140a01">
�����Ǻš���Ҫ���ˡ�����

{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/md04/0600150a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���w��Ş�ڡ��������

	CreateColorSP("�\Ļ��", 25000, "#000000");
	DrawTransition("�\Ļ��", 200, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);


	OnBG(101, "bg084_�w�д�Ş��_02.jpg");
	FadeBG(0, true);

	DrawTransition("�\Ļ��", 200, 1000, 0, 100, null, "cg/data/slide_01_03_1.png", true);
	Delete("�\Ļ��");

	SetFwH("cg/fw/fw�������_�~��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
//��������ա�
<voice name="�������" class="�������" src="voice/md04/0600160a13">
���񰡣���

</PRE>
	SetTextEXH();
	TypeBeginHIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��霤�����׏�

	CreateTextureEX("��Ů03", 1000, @0, @0, "cg/ev/ev235_�Ȥ�����׏�_d.jpg");
	Fade("��Ů03", 1000, 1000, null, true);


	SetFwR("cg/fw/fw��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
//���⡿
<voice name="��" class="��" src="voice/md04/0600170a14">
�������ء�����

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ӥ����Ȥ��׏�

	OnSE("se����_�z_�ҤӸ��01",1000);

	CreateTextureEX("��Ů04", 1100, @0, @0, "cg/ev/ev235_�Ȥ�����׏�_e.jpg");
	Fade("��Ů04", 1000, 1000, null, true);


	SetFwR("cg/fw/fw��_�Ȼ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
//���⡿
<voice name="��" class="��" src="voice/md04/0600180a14">
����С����Ů��˼��!!��

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���£ǣͣ�
	SetVolume("SE*", 300, 0, null);
	SetVolume("@OnSE*", 300, 0, null);
	SetVolume("@m*", 300, 0, null);

	WaitKey(2000);

//�����Z���ۥ磻�ȥ�����
	CreateSE("SE01","se���L_�Ɖ�_�󱬰k01");
	CreateSE("SE01a","se���L_�Ɖ�_���k09");
	MusicStart("SE01",0,1000,0,1000,null,false);
	MusicStart("SE01a",0,1000,0,1000,null,false);
	CreateColorEXadd("��", 1300, "WHITE");
	Fade("��", 100, 1000, null, true);

	Wait(2000);

//���ۥ磻�Ȼ���˥쥤���ؤͤǐ�����
	CreateTextureEX("�}�������", 10011, Center, Middle, "cg/ev/ev235_�Ȥ�����׏�_e.jpg");
	CreateTextureEX("�}������r", 10012, Center, Middle, "cg/ev/ev235_�Ȥ�����׏�_f.jpg");
	CreateTextureEX("�}�������", 10013, Center, Middle, "cg/ev/ev235_�Ȥ�����׏�_g.jpg");
	Zoom("�}������*", 0, 1100, 1100, null, true);
	DrawEffect("�}������*", 0, "LowWave", 20, 20, null);

	RandomMeimetsu_md04_060();

	SoundPlay("@mbgm37",0,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
��û�á���

��û�õġ���

����ʹ����Ҳ���á���

����Ϊ����֮���Ȼ�����
�����ձ�Ϊа��֮�

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw��_��˼.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
//���⡿
<voice name="��" class="��" src="voice/md04/0600190a14">
��<RUBY text="��������">�������</RUBY>����

{	FwR("cg/fw/fw��_�Ȑ�.png");}
//���⡿
<voice name="��" class="��" src="voice/md04/0600200a14">
������Ҳ�����á�
��Ҳ��ܴ�����
��Ҳ������ױ��ʡ�
��Ҳ���Ǹ����ε��Ρ���

{	FwR("cg/fw/fw��_ŭ��.png");}
//���⡿
<voice name="��" class="��" src="voice/md04/0600210a14">
�����ǣ�������ν��
���Ҳ���׷������İ�����

{	FwR("cg/fw/fw��_�֤�.png");}
//���⡿
<voice name="��" class="��" src="voice/md04/0600220a14">
��һ˲����㹻�ˡ���

{	FwR("cg/fw/fw��_ŭ��.png");}
//���⡿
<voice name="��" class="��" src="voice/md04/0600230a14">
��ֻҪ�õ���һ˲�����ʵ����
����������ӵ��ʵ�ڵ�����!!��

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
������������������������������������������

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw��_�Ñ�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
//���⡿
<voice name="��" class="��" src="voice/md04/0600240a14">
���ڰ�����
����˵��<RUBY text="������������">���һ����Ӯ</RUBY>�԰ɣ���

{	FwR("cg/fw/fw��_ŭ��.png");}
//���⡿
<voice name="��" class="��" src="voice/md04/0600250a14">
����ô����������Ĵ��ڣ�
����֤����<RUBY text="��">��</RUBY>�������ڹ�!!��

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
������������������������������������������������
������������������������������������������������
������������������������������������������������
������������������������������������������������

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw��_ŭ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
//���⡿
<voice name="��" class="��" src="voice/md04/0600260a14">
����ʧ�ɣ�а��!!
����û�к����㡣���һֱ�����������ľ�ͷ��
�ȴ��ǳ����������!!��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 3000, 0, null);

//���󱬳Z
//�����ӘS�Ͽ�
//���ۥ磻�ȥ�����
//����������
//���ۥ磻�ȥ���
	OnBG(1500, "bg002_��a_02.jpg");
	FadeBG(500, true);

	OnSE("se����_�z_���ͥ륮�`���01",1000);

	CreateColorSPadd("��Ļ", 25000, "WHITE");
	DrawTransition("��Ļ", 2000, 0, 300, 500, AxlDxl, "cg/data/circle_03_00_0.png", true);

	Delete("@�Х���������");
	Delete("�}������*");

	EffectZoomadd(10000, 500, 100, "cg/ef/ef003_�����Ƅ�.jpg", false);

	OnSE("se���L_�Ɖ�_���k09", 1000);
	DrawTransition("��Ļ", 500, 300, 1000, 500, Axl2, "cg/data/circle_03_00_0.png", true);

	Wait(3000);

	SetVolume("SE*", 4000, 0, null);
	SetVolume("OnSE*", 4000, 0, null);
	DrawDelete("��Ļ", 4000, 1000, "circle_02_00_0", false);

	Wait(2500);
	Fade("��Ļ", 1500, 0, null, true);

	Wait(2000);


}

..//������ָ��
//�Υե����롡"md04_061.nss"


.//�ץ�����======================================================
..����������
function RandomMeimetsu_md04_060()
{
	CreateProcess("�Х���������", 5000, 0, 0, "RandomMeimetsuSet_md04_060");
	SetAlias("�Х���������","�Х���������");
	Request("�Х���������", Start);
}

function RandomMeimetsuSet_md04_060()
{
	begin:
	while(1)
	{
	$RFadeTimeSet = Random(3) + 2;
	$RFTS = ($RFadeTimeSet * 1000);
	Fade("@�}�������", $RFTS, 0, null, false);
	Fade("@�}�������", $RFTS, 300, null, true);

	$RWaitSet = Random(10) + 10;
	$RWS = ($RWaitSet * 10) +600;

	Wait($RWS);

	$RFadeTimeSet = Random(3) + 2;
	$RFTS2 = ($RFadeTimeSet * 1000);
	Fade("@�}�������", $RFTS2, 0, null, false);
	Fade("@�}������r", $RFTS2, 300, null, true);

	$RWaitSet = Random(10) + 10;
	$RWS = ($RWaitSet * 10) +600;

	Wait($RWS);

	$RFadeTimeSet = Random(3) + 2;
	$RFTS3 = ($RFadeTimeSet * 1000);
	Fade("@�}������r", $RFTS3, 0, null, false);
	Fade("@�}�������", $RFTS3, 300, null, true);

	$RWaitSet = Random(10) + 10;
	$RWS = ($RWaitSet * 10) +600;

	Wait($RWS);

	}

}