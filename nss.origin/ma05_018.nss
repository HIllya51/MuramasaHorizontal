//<continuation number="1580">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma05_018.nss_MAIN
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
	#bg050_�������Tǰ_01=true;

	#ev138_���I������_a=true;
	#ev138_���I������_b=true;
	#ev138_���I������_c=true;
	#ev138_���I������_d=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "ma05_019.nss";

}

scene ma05_018.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"ma05_017.nss"


/*
	CreateWindow("������ɥ���", 150, 0, 100, 1024, 376, false);

	CreateColorEX("�}ɫ100", 1500, "Black");

	CreateTextureEX("������ɥ���/�}�ţ�", 3000, -922, -196, "cg/ev/resize/ev138_���I������_bl.jpg");

	WaitKey();

	Move("������ɥ���/�}�ţ�", 300, -922, -296, Dxl1, faslse);
	Fade("������ɥ���/�}�ţ�", 300, 1000, Dxl1, false);
	Fade("�}ɫ100", 300, 500, Dxl1, true);


	WaitKey();
*/

//��������
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg050_�������Tǰ_01.jpg");
	CreateSE("SE01","se�ճ�_����_���_��02");
	FadeBG(0,true);
	Delete("�ϱ���");
	MusicStart("SE01",0,500,0,1000,null,false);
	$�Еr�g=RemainTime("SE01");
	WaitKey($�Еr�g);
	FadeDelete("�}��ܞ", 2000, true);
	CreateSE("SE01b","se����_�n��_ܞ��03");
	MusicStart("SE01b",0,1000,0,1000,null,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
����ͬѰ�������죬ʹ�����ŵķ���ȥ����
��������γ�����Ӱ�����һ����Լ��Ƿ񿴴��ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="����" src="voice/ma05/0180010a00">
���������!?��

{	NwC("cg/fw/nw���I.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0180020b31">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
����������Ҽң�����ʲô����˼������顣
�����˾��ȵ�������״̬��

���������ˡ�
��ȫ��������˵��ֱû��һ�����֮����

��������Ƥ�������ⶼ�����ѿ�����
��������֮״��������ս����Ҳ�������

��������⾰��ֱ�Ƕ�ս�������¡�
�������Ǳ�������������£�������˲Ҳ��̶á���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="����" src="voice/ma05/0180030a00">
��������£�
�����������㣡��

{	NwC("cg/fw/nw���I.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0180040b31">
��������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	PrintGO("�ϱ���", 10000);
	CreateTextureSP("�}�ţ�", 3000, -100, -109, "cg/ev/resize/ev138_���I������_al.jpg");
	CreateSE("SE01","se����_����_����01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("�}�ţ�", 2000, -233, @0, null, false);
	FadeDelete("�ϱ���", 1000, true);
	SoundPlay("@mbgm32",0,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
����æ���˹�ȥ����ס�˲������ǵ����졣
����Ŀ���ɢ�ؿ����ҡ���Ȼ����ȴ�Բ�׼���㡣

������̬֮��
��ƾ�������Ϸ�ս��Ŀ�ù������������ľ��飬
��ȫ�����жϡ���<RUBY text="����������">�Ѿ�û����</RUBY>��

���������֮�ˣ�����ҩ�ɾȡ�

��������ô���¡�
��������ʲô�¡�Ϊʲô������!?

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw�y_ŭ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//���y��
<voice name="�y" class="�y" src="voice/ma05/0180050b46">
��������
���Ȱ�����������������

{	FwR("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0180060a00">
���ǡ���
���ǣ���

{	NwR("cg/fw/nw���I.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0180070b31">
�������ȵȡ�����

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateWindow("�}������ɥ���", 150, 0, 100, 1024, 376, false);
	SetAlias("�}������ɥ���","�}������ɥ���");
	CreateColorEX("�}ɫ100", 11000, "Black");
	CreateTextureEX("�}������ɥ���/�}�ţ�", 13000, -922, -196, "cg/ev/resize/ev138_���I������_bl.jpg");


	CreateSE("SE01","se����_����_����02");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Move("�}������ɥ���/�}�ţ�", 500, -922, -296, Dxl1, faslse);
	Fade("�}������ɥ���/�}�ţ�", 500, 1000, Dxl1, false);
	Fade("�}ɫ100", 500, 500, Dxl1, true);

//	CreateTextureSP("�}�ţ�", 3000, -100, -109, "cg/ev/ev138_���I������_b.jpg");
//	FadeDelete("�ϱ���", 1000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
����ĸ��һ�仰���һع���������Ҫ����������Ľ�С
��������ʱ���첲����ץס�ˡ�
��������������ڲ�׽�����ҡ���ͫɫ��Ȼ��ʡ�

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	PrintGO("�ϱ���", 20000);

	CreateTextureSP("�}�ţ�", 3000,  Center, Middle, "cg/ev/ev138_���I������_b.jpg");
	FadeDelete("�ϱ���", 1000, true);

	SetFwR("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//��������
<voice name="����" class="����" src="voice/ma05/0180080a00">
������������¡�
������ǿ�Լ�����������Ϊ������������

{	NwR("cg/fw/nw���I.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0180090b31">
�����á����ˡ�
������Ҫ�������ǡ�����

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
�����͵ؿȸ���ͣ��
����Ѫ�罦���ҵ���ǰ��

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//��������
<voice name="����" class="����" src="voice/ma05/0180100a00">
����������

{	NwR("cg/fw/nw���I.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0180110b31">
����������ˡ������ϡ���
��������㡭��ʿ���Ǿ�Ҫ������

{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0180120a00">
��������¡�����
����˵���ˣ������뾲��������ǿ���ڵĻ�
��������ơ���

{	NwR("cg/fw/nw���I.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0180130b31">
�������������ˡ�����

{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0180140a00">
������!?��

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
������϶������ػ��ƴ�ճ�һ�仰��
��
������ɽ���ż�������!?

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw�y_ŭ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//���y��
<voice name="�y" class="�y" src="voice/ma05/0180150b46">
����������

{	FwR("cg/fw/fw�����ǰ_ͨ��b.png");}
//���⡿
<voice name="��" class="��" src="voice/ma05/0180160a14">
������������

{	NwR("cg/fw/nw���I.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0180170b31">
�������Բ��𡭡�
��û�ܡ�����ֹ���¡�����

//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0180180b31">
����������Լ���ˡ�����

{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0180190a00">
��������¡�����

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
����������ᣬ��ʹ���ѡ�
��������Զ��������ʹ�����ص����ޡ�

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//��������
<voice name="����" class="����" src="voice/ma05/0180200a00">
��������¡���

{	NwR("cg/fw/nw���I.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0180210b31">
���Բ��𡭡�
��û�ܡ�����Լ������

//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0180220b31">
�������Լ������
����һ��Ҳ����û�ܡ�����

{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0180230a00">
��û�е��£���

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D




//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
���Ҹ���������
�����ȡ������ڣ�����������������ȥ��

�������һ�����������
�����룬����������ڱ�ʹ֮�У������Ž���ݱ�ʹ��
���Ͳ������ˡ�
  
</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw�����^ȥ_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//��������
<voice name="����" class="����" src="voice/ma05/0180240a00">
������Լ�ˡ�
����ʹ���ӻָ���ƽ������

//��������
<voice name="����" class="����" src="voice/ma05/0180250a00">
���и��������ڵ���Ϊ��������ҽ����
�����ֽ���Ȭ���ˡ�������

//��������
<voice name="����" class="����" src="voice/ma05/0180260a00">
����ȫ��������ľ��ľ�������

{	NwR("cg/fw/nw���I.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0180270b31">
��������������

{	NwR("cg/fw/nw���I.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0180280b31">
������𡭡�����

{	FwR("cg/fw/fw����_Ц�b.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0180290a00">
���ǵģ�
���Ҵն������������Էθ������ĸ�л������

//��������
<voice name="����" class="����" src="voice/ma05/0180300a00">
����л����������

{	NwR("cg/fw/nw���I.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0180310b31">
������������������
������̫���ˡ�����

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	PrintGO("�ϱ���", 10000);
	CreateTextureSP("�}�ţ֣�", 3100, -353, -109, "cg/ev/resize/ev138_���I������_bl.jpg");
	CreateTextureSP("�}�ţ֣�", 3000, -393, -109, "cg/ev/resize/ev138_���I������_al.jpg");

	Move("�}�ţ֣�", 500, -393, @0, null, false);
	FadeDelete("�ϱ���", 500, true);

	Fade("�}�ţ֣�", 2000, 0, null, false);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
������΢Ц�š�
�����ϵı�ʹ�������͡�

��Ȼ������ȴ��ôңԶ��
������Զȥ����

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
//��������
<voice name="����" class="����" src="voice/ma05/0180320a00">
��������£���

{	NwR("cg/fw/nw���I.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0180330b31">
���ǡ����ͺá���
���ܺá�����

{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0180340a00">
����ô���ܺá�����
���һ�û����������

//��������
<voice name="����" class="����" src="voice/ma05/0180350a00">
��������������
����Ҫ���ұ�����������С�ˣ���

{	NwR("cg/fw/nw���I.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0180360b31">
��������

{	Fade("�}�ţ֣�", 200, 1000, null, false);
	NwR("cg/fw/nw���I.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0180370b31">
���ǡ�����󡭡�
����ֻ��һ��Ը��������

{	FwR("cg/fw/fw�����^ȥ_ŭ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0180380a00">
����Ҫ˵��󣡡�Ҳ��Ҫ˵һ����
�������ܿ��ڣ���ƾ�Ը�����

{	FwR("cg/fw/fw�����^ȥ_���L.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0180390a00">
�������������εȴ����¡�������

{	NwR("cg/fw/nw���I.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0180400b31">
������������
��һ���ͺá�����

{	NwR("cg/fw/nw���I.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0180410b31">
��Ψһ�ġ���
���������󡭡���

{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0180420a00">
���뽲����!?��

{	NwR("cg/fw/nw���I.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0180430b31">
�������㡭����

{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0180440a00">
������

{	NwR("cg/fw/nw���I.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0180450b31">
���С���
���ҵġ������֡�����

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
���Ҳ��ɵ������Զԡ�
�������Լ�δ��̫���ˡ�

���ڿ���������Ϊ���ˡ�
��ȴ��֪����Ϊ�Ρ�

����˵��ɽ�ϳ��ζ���֮��û�����Ա����š���
�����ǣ���֮�������������ο���ѯ�ʵĻ��ᡣ

������������ǿ������ҵ�ɵ�࣬��Ц��������

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwR("cg/fw/nw���I.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0180460b31">
�������Ǻǡ���
����Ϊ�����㶼û�ʹ��ҡ�����

{	FwR("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0180470a00">
��������Ǹ��
����Ȼ��ʧ�����������������ѵ�����

{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0180480a00">
��Ůʿ��
�����ʷ���Ϊ�Ρ���

{	NwR("cg/fw/nw���.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0180490b31">
����������������

{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0180500a00">
������������

{	NwR("cg/fw/nw���.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0180510b31">
�������ԡ�����

{	FwR("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0180520a00">
������С�㡣��

{	NwR("cg/fw/nw���.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0180530b31">
������������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	PrintGO("�ϱ���", 10000);
	CreateTextureSP("�}�ţ֣�", 3000, -393, -109, "cg/ev/resize/ev138_���I������_cl.jpg");
	FadeDelete("�ϱ���", 1000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
�����
���������������㡣

��΢΢һЦ��
��
���������

�����������ȥ��΢����Ϣ��
  ����հ�ɥʧ���������壬
  ���У�΢Ц��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	PrintGO("�ϱ���", 10000);
	CreateTextureSP("�}�ţ֣�", 3000, -393, -109, "cg/ev/resize/ev138_���I������_dl.jpg");
	FadeDelete("�ϱ���", 1000, true);

	WaitKey(1000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0216]
������ǣ����������յ㡣

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
//��������
<voice name="����" class="����" src="voice/ma05/0180540a00">
��������������������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
������Ϊֹ�����ر����ڷ����۵�����֮�С�
���кü�������Ŀ�ù���ʶ֮�˵�������

��Ȼ����������һ���¡�
����һ��������ʱ�򣬼�������������ϵ���Ҳ����֮
��ȥ��

��������һ�飬����һ���ն���
����������ů�Ѳ������ڣ�ȡ����֮����һƬ���顣

����������֮�����������Ŀ��飬
����������֮ǰ����û�뵽��������˾޴�����ء�

��ֻ�����Ǽ�Ϊ���ݵĽӴ���
���Һ���֮�䡣

��Ȼ����
��������������ռ���������Ҫ�ķ�����

��ʧȥ֮��Ŷ��á�
�������Ŷ��ã������ǲ���ʧȥ�˲���ʧȥ֮�ˡ�

������ˣ���������˵�����ǲ��Ǳز����ٵġ���

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	PrintGO("�ϱ���", 10000);
	CreateTextureSP("�}�ţ֣�", 3000, Center, Middle, "cg/ev/ev138_���I������_d.jpg");
	FadeDelete("�ϱ���", 1000, true);

	SetFwR("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
//��������
<voice name="����" class="����" src="voice/ma05/0180550a00">
�������µ����
����������Ρ���

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
������������
��
��������Щ���飬��ʮ�����ԡ�

����֮�����ܽ������������Ų��ܡ�
���ý������ź�ϴ������<k>������Ȼ��Щ����ʱ�ˣ�
���ٵ��������ڱ����ϡ�

�����Լ�����̫��ʱ�ˡ�
�����������ĸ��æ����ع�ͷȥ��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	PrintGO("�ϱ���", 10000);
	OnBG(100,"bg050_�������Tǰ_01.jpg");
	FadeBG(0,true);
	FadeDelete("�ϱ���", 1000, true);

	SetFwC("cg/fw/fw����_�^ȥ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
//��������
<voice name="����" class="����" src="voice/ma05/0180560a00">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
�����ڡ�
�������ⲻ�ڡ�

����������ȥ�����ˡ���<k>
��
��ͻȻ�����ɨ�������Ƕ��˵ı�Ӱ��

����ɿ������η�����ȫ����һ������������ˣ���
��ĸС����׷�ں��档
������Ҫȥ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
//��������
<voice name="����" class="����" src="voice/ma05/0180570a00">
�������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
������Ϊ�������ʱ��ȥ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
	PrintGO("�ϱ���", 25000);
	CreateColorSP("�}��ܞ", 10000, "#000000");
	OnBG(100,"bg054_�����Ҽ���a_01a.jpg");
	FadeBG(0,true);
	FadeDelete("�ϱ���", 1000, true);
	FadeDelete("�}��ܞ", 1000, true);

	StL(1000, @0, @0,"cg/st/st�y_ͨ��_˽��.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fw�y_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
//���y��
<voice name="�y" class="�y" src="voice/ma05/0180580b46">
���⣡
������ι����һ�¡���


{//�������㤬���㡣�ʤ�̽���Ƥ�
	CreateSE("SE01","se���L_�Ɖ�_����");
	MusicStart("SE01",0,1000,0,1000,null,false);}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0180590b46">
����Ҫ��ʲô����<k><?>
{	FwC("cg/fw/fw�y_ͨ��b.png");}
������������������

//���y��
<voice name="�y" class="�y" src="voice/ma05/0180600b46">
���⡣
���㡭����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����ǰ������������y
	StR(1000, @0, @0,"cg/st/st�����ǰ_ͨ��_˽��.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fw�����ǰ_�䤿��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0320]
//���⡿
<voice name="��" class="��" src="voice/ma05/0180610a14">
��ĸ�ס�
����վ�������������ҡ���

{	FwC("cg/fw/fw�y_ͨ��b.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0180620b46">
�����������ǰ����ף�Ҫ��ʲô����

{	FwC("cg/fw/fw�����ǰ_���.png");}
//���⡿
<voice name="��" class="��" src="voice/ma05/0180630a14">
����������
���÷�ֻ��һ���ɡ���

{	FwC("cg/fw/fw�y_ͨ��b.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0180640b46">
���������������Ļ���������и��õġ���

{	FwC("cg/fw/fw�����ǰ_���.png");}
//���⡿
<voice name="��" class="��" src="voice/ma05/0180650a14">
��ĸ���������Լ��ðɡ���

{	FwC("cg/fw/fw�y_ͨ��b.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0180660b46">
������Ϊ�����֪����
�����׵Ĵ�ŵص���÷�����

{	FwC("cg/fw/fw�����ǰ_���.png");}
//���⡿
<voice name="��" class="��" src="voice/ma05/0180670a14">
��<RUBY text="��������������">��Ϊ���ҿ�����</RUBY>��
�������������ţ�Ҳ�ᴫ����ҡ���

{	FwC("cg/fw/fw�y_ͨ��b.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0180680b46">
����������

{	FwC("cg/fw/fw�����ǰ_���.png");}
//���⡿
<voice name="��" class="��" src="voice/ma05/0180690a14">
�������أ�����˵���ܶ���ˡ�
�����������ˣ�ĸ�ס����ÿ�����

{	FwC("cg/fw/fw�y_ͨ��b.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0180700b46">
���㵽�����ʲô����

{	FwC("cg/fw/fw�����ǰ_���.png");}
//���⡿
<voice name="��" class="��" src="voice/ma05/0180710a14">
�����<RUBY text="����">�ҵ�</RUBY>���С�
����������̬�����𡣡�

{	FwC("cg/fw/fw�y_ͨ��b.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0180720b46">
����Ľ��С�������

{	FwC("cg/fw/fw�����ǰ_���.png");}
//���⡿
<voice name="��" class="��" src="voice/ma05/0180730a14">
��������

{	FwC("cg/fw/fw�y_ͨ��b.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0180740b46">
���������Ǹ����У�
��Ҫ��ʲô����

{	FwC("cg/fw/fw�����ǰ_�䤿��.png");}
//���⡿
<voice name="��" class="��" src="voice/ma05/0180750a14">
��ĸ�ס�
���ⲻ�������ŵ�������Ͳ���Ϊ����
һһ������������𡣡�

{	FwC("cg/fw/fw�y_ͨ��a.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0180760b46">
�������ǶԲ�ס�ˡ�
����ǳ���׶��Ļ���ͷ���޶۵�ĸ����˵��
һ�°ɣ�Ů�����͵���Ϊ�����컼�������
����ǰ������ϰ�ɡ���

{	FwC("cg/fw/fw�����ǰ_ͨ��b.png");}
//���⡿
<voice name="��" class="��" src="voice/ma05/0180770a14">
����û�취��
��ֻ��ն��ɱ����ɱ����������Ⱥ�һ��

{	FwC("cg/fw/fw�y_ͨ��b.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0180780b46">
��������

{	FwC("cg/fw/fw�����ǰ_���.png");}
//���⡿
<voice name="��" class="��" src="voice/ma05/0180790a14">
����Ҫ��Ϊ������ÿ�����ʵ���˼�𣿡�

{	FwC("cg/fw/fw�y_ͨ��a.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0180800b46">
�������ˡ�
�������������˶��ġ���

{	FwC("cg/fw/fw�����ǰ_ͨ��b.png");}
//���⡿
<voice name="��" class="��" src="voice/ma05/0180810a14">
���ܺá���

{	FwC("cg/fw/fw�y_ͨ��b.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0180820b46">
�������������

{	FwC("cg/fw/fw�����ǰ_���.png");}
//���⡿
<voice name="��" class="��" src="voice/ma05/0180830a14">
��������

{	FwC("cg/fw/fw�y_ͨ��b.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0180840b46">
������ɱ��������Σ����⡣
��ֻ�����³�޶��ѡ���

{	FwC("cg/fw/fw�����ǰ_ͨ��b.png");}
//���⡿
<voice name="��" class="��" src="voice/ma05/0180850a14">
������ġ���

{	FwC("cg/fw/fw�y_ͨ��b.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0180860b46">
������Ϊ�Σ���

{	FwC("cg/fw/fw�����ǰ_���.png");}
//���⡿
<voice name="��" class="��" src="voice/ma05/0180870a14">
����Ϊ�һ�һ��������ɱ�⡣��

{	FwC("cg/fw/fw�y_ͨ��b.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0180880b46">
��������

//���y��
<voice name="�y" class="�y" src="voice/ma05/0180890b46">
�������Ⱥɽ��Ҳ��������ѡ�
�����бض��б�����������ʹ֮�ˡ���

//���y��
<voice name="�y" class="�y" src="voice/ma05/0180900b46">
����������Щ����������Ҳ����һ��Ϊ
���ǵ��������ĵ��ˡ�
����ޱؽ����ں�������

{	FwC("cg/fw/fw�����ǰ_���.png");}
//���⡿
<voice name="��" class="��" src="voice/ma05/0180910a14">
������ġ���

{	FwC("cg/fw/fw�y_ͨ��b.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0180920b46">
������Ϊ�Σ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�����ǰ_���.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0330]
//���⡿
<voice name="��" class="��" src="voice/ma05/0180930a14">
����Ϊ�һ�һ��������ɱ�⡣
�����ȹ�������<RUBY text="����">ȫ��</RUBY>ɱ�⡣��

{	FwC("cg/fw/fw�y_ͨ��b.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0180940b46">
������������

//���y��
<voice name="�y" class="�y" src="voice/ma05/0180950b46">
���ǡ���
������������⡣��

{	FwC("cg/fw/fw�����ǰ_���.png");}
//���⡿
<voice name="��" class="��" src="voice/ma05/0180960a14">
�������������

{	FwC("cg/fw/fw�y_ͨ��b.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0180970b46">
����˵ʲô������

{	FwC("cg/fw/fw�����ǰ_���.png");}
//���⡿
<voice name="��" class="��" src="voice/ma05/0180980a14">
������������
��ĸ������������������

{	FwC("cg/fw/fw�y_ͨ��b.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0180990b46">
��˵�����ǡ���

{	FwC("cg/fw/fw�����ǰ_���.png");}
//���⡿
<voice name="��" class="��" src="voice/ma05/0181000a14">
���������������أ���

{	FwC("cg/fw/fw�y_ͨ��b.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0181010b46">
��������ֹ���ǡ�
����������ɱ¾����

{	FwC("cg/fw/fw�����ǰ_��Ц.png");}
//���⡿
<voice name="��" class="��" src="voice/ma05/0181020a14">
����������������������

{	FwC("cg/fw/fw�y_ͨ��b.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0181030b46">
��������

{	FwC("cg/fw/fw�����ǰ_�䤿��.png");}
//���⡿
<voice name="��" class="��" src="voice/ma05/0181040a14">
���������ǿ����𣿡�

{	FwC("cg/fw/fw�y_ͨ��a.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0181050b46">
����Ȼ���ܡ�
������Ҳ����ҡ���

{	FwC("cg/fw/fw�����ǰ_ͨ��b.png");}
//������
//���⡿
<voice name="��" class="��" src="voice/ma05/0181060a14">
��������

{	FwC("cg/fw/fw�y_ͨ��a.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0181070b46">
���Ǻ����Ѿ������һ�Ρ�
����һ�Σ��϶��ܳɹ�����

{	FwC("cg/fw/fw�����ǰ_���.png");}
//���⡿
<voice name="��" class="��" src="voice/ma05/0181080a14">
������ԭ����ˡ����ԣ��ղ���Ů�˲š���
��ĸ���Ѿ���������һ���˰ɡ��þ�����
<RUBY text="������">������</RUBY>����

{	FwC("cg/fw/fw�y_ͨ��b.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0181090b46">
��û����

{	FwC("cg/fw/fw�����ǰ_���.png");}
//���⡿
<voice name="��" class="��" src="voice/ma05/0181100a14">
����������������һ�Ρ���

{	FwC("cg/fw/fw�y_ͨ��b.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0181110b46">
���ԡ�����

{	FwC("cg/fw/fw�����ǰ_�䤿��.png");}
//���⡿
<voice name="��" class="��" src="voice/ma05/0181120a14">
����͸�ˡ���

{	FwC("cg/fw/fw�y_ͨ��b.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0181130b46">
������ʲô������

{	FwC("cg/fw/fw�����ǰ_���.png");}
//���⡿
<voice name="��" class="��" src="voice/ma05/0181140a14">
�����������������ĵľٶ�����
�������˽������̬�𡣡�

{	FwC("cg/fw/fw�y_ͨ��b.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0181150b46">
��������ʲô��˼����

{	FwC("cg/fw/fw�����ǰ_���.png");}
//���⡿
<voice name="��" class="��" src="voice/ma05/0181160a14">
����Ⱥɽ�������䡣
�����������ֻ������<RUBY text="����">ɱ��</RUBY>���䡣��

//���⡿
<voice name="��" class="��" src="voice/ma05/0181170a14">
����Ϊ��������չʾ����α֮�䣬ĸ�ס�
�����������ţ�����ս��Ҳ<RUBY text="��������">���ᱻɱ</RUBY>����

{	FwC("cg/fw/fw�y_ͨ��b.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0181180b46">
������������

{	FwC("cg/fw/fw�����ǰ_���.png");}
//���⡿
<voice name="��" class="��" src="voice/ma05/0181190a14">
�����������䡣
��С���䡣��

//���⡿
<voice name="��" class="��" src="voice/ma05/0181200a14">
�����ԲŻ����ŵع�����
������������ĸ�ס���

{	FwC("cg/fw/fw�y_ͨ��b.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0181210b46">
������������ˡ�
��������ս������֮ǰ���������ر�á���

{	FwC("cg/fw/fw�y_ͨ��a.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0181220b46">
��������������

{	FwC("cg/fw/fw�����ǰ_���.png");}
//���⡿
<voice name="��" class="��" src="voice/ma05/0181230a14">
�������ˡ�
���䲢�����<RUBY text="��������">��ʹ����</RUBY>֮���

{	FwC("cg/fw/fw�����ǰ_�䤿��.png");}
//���⡿
<voice name="��" class="��" src="voice/ma05/0181240a14">
������ǿʳ��
��������䡣��

{	FwC("cg/fw/fw�y_ŭ��.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0181250b46">
���ҽ̹��㣬�⣡
��ֹ��Ϊ�䣡��

{	FwC("cg/fw/fw�����ǰ_���.png");}
//���⡿
<voice name="��" class="��" src="voice/ma05/0181260a14">
����
���Ը���ֹ��Ϊ�䣡��

{	FwC("cg/fw/fw�y_ͨ��b.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0181270b46">
������!!��

{	FwC("cg/fw/fw�����ǰ_���.png");}
//���⡿
<voice name="��" class="��" src="voice/ma05/0181280a14">
������ֹ������֮�
���������ã���

{	FwC("cg/fw/fw�y_ŭ��.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0181290b46">
��������ˣ�ɱ¾������Σ�
�����˺�������

{	FwC("cg/fw/fw�y_ͨ��b.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0181300b46">
���˰���������к��⡭����

{	FwC("cg/fw/fw�����ǰ_���.png");}
//���⡿
<voice name="��" class="��" src="voice/ma05/0181310a14">
������
��ĸ��������֮��������Ƿ������������
֮�����������ʾ֮�䣬�������ù�����
���չ����Ŷ����

{	FwC("cg/fw/fw�y_ͨ��b.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0181320b46">
������!?
������������ʾ����

{	FwC("cg/fw/fw�����ǰ_���.png");}
//���⡿
<voice name="��" class="��" src="voice/ma05/0181330a14">
������˵����
���������������ǡǡ֤����
����֮��ʵ����

{	FwC("cg/fw/fw�y_ͨ��b.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0181340b46">
���㡭����

{	FwC("cg/fw/fw�����ǰ_�䤿��.png");}
//���⡿
<voice name="��" class="��" src="voice/ma05/0181350a14">
�����ÿ���ĸ�ס�
���������һ���ˡ���

{	FwC("cg/fw/fw�y_����.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0181360b46">
����������
������˭����

{	FwC("cg/fw/fw�����ǰ_��Ц.png");}
//���⡿
<voice name="��" class="��" src="voice/ma05/0181370a14">
�������ǡ���

//���⡿
<voice name="��" class="��" src="voice/ma05/0181380a14">
����Ů����ģ�����ϲ�������
��ĸ�ס���

{	FwC("cg/fw/fw�y_ͨ��a.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0181390b46">
��˭֪���ء�
����ʮ�»�̥���µĺ��ӣ�����Ƣ�����壬
�����ܷ��֮Ϊ��ֱҲֵ����ȶ����

{	FwC("cg/fw/fw�y_����.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0181400b46">
�������Ҳ���Ϊ�����������������Ƶ�һ�档��

{	FwC("cg/fw/fw�����ǰ_��Ц.png");}
//���⡿
<voice name="��" class="��" src="voice/ma05/0181410a14">
��������������

{	FwC("cg/fw/fw�y_����.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0181420b46">
��������

{	FwC("cg/fw/fw�����ǰ_��Ц.png");}
//���⡿
<voice name="��" class="��" src="voice/ma05/0181430a14">
�����ǻ��۽𾦰���ĸ�ף���

{	FwC("cg/fw/fw�y_ŭ��.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0181440b46">
���������
���˺󣬳�ȥ����

{	FwC("cg/fw/fw�����ǰ_���.png");}
//���⡿
<voice name="��" class="��" src="voice/ma05/0181450a14">
�������˵����
��������������ô��!?���ն�ͳ!!��

{	FwC("cg/fw/fw�y_����.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0181460b46">
��!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����֣ӽy
	PrintGO("�ϱ���", 5000);
	OnBG(100,"bg054_�����Ҽ���a_01a.jpg");
	FadeBG(0,true);
	StC(1000, @0,@0,"cg/st/st�����ǰ_ͨ��_˽��.png");
	FadeStC(0,true);
	FadeDelete("�ϱ���", 600, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0340]
������Ӧ����ֹ���ˡ���
��ͳ���������š�

������֪Ů����������
��������˵���ǣ��������ְ����š�

��һ��ǰ���ٽ�Ů������ǰ���Ǹ������Ѽ�����ɡ�
�������������пɳ�֮����

����֮�����һ�ꡣ��ļ��մ���ͣ��״̬��
������Ӧ�����˲��������ճ�ʶ�����ǵĻ���
�����ǲ�Ҫ�Դ˱�̫���ϣ���ȽϺá�

�����վ��������������˵�Ǵ󲡳���֮�ˣ�ֻ������
������һ�����ĵ�Ϸ�ԡ�
���������Կ�ѹ�ơ�ͳ���ȷ�š�

�������ļ�ʽ�����������Ķ����ԡ�ɱ������ǿ�Ͷȶ�
���ڿ�Ӧ�Եķ�Χ�ڡ�
��������᧿�Σ����Ҳ���Ժ���֮��ȡʤ��

���ն�ͳ���Լ��ļ����������š�
���ٰ��ꡪ���������������������¾Ͳ���˵�ˣ�������
�׶��������ơ�

�������ӻ���֮�ڣ��԰��ֽ�����

�������������ʤ������ͼ��
�����á������˼�����һʧ��

���ǾͰ�����ͼʵ�С�
��ͳ������ǰ�㣬��̽����������ʱ����<k>
��
����һɲ�ǣ��ƻ���ȫʧ�ܡ�

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fw�y_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0350]
//���y��
<voice name="�y" class="�y" src="voice/ma05/0181470b46">
������!?��

{	FwL("cg/fw/fw�����ǰ_���.png");}
//���⡿
<voice name="��" class="��" src="voice/ma05/0181480a14">
��������

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0360]
��������������֡�

����׽������ĺ�����
��ȷ�к�������������Щ���Ծ���

��<RUBY text="��������������������">����ս��״̬�µĺ���</RUBY>��
�����䡪��ϡ����

��ϡ���Ĳ������Ǻ�����
��������ʶ���������˵Ĵ��ڸж��ǳ�ϡ����

����ȷ������ǰ�������ʵ�����������
��ȴ���紺�����װ����ʡ���

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fw�y_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0370]
//���y��
<voice name="�y" class="�y" src="voice/ma05/0181490b46">
��������ô���£���

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0380]
���⣬
���Ǵն�ͳ��ʧ�ߡ�

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fw�y_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0390]
//���y��
<voice name="�y" class="�y" src="voice/ma05/0181500b46">
����һ��
�����<RUBY text="��������">��������</RUBY>����

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0400]
����ս����
��һ˲֮�佫ע����ת�Ƶ�����������ʵ�������ϣ���
��ζ�š���

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��̤���z��⡣���L��
	CreateSE("SE01","se����_����_���S01");
	MusicStart("SE01",0,1000,0,1250,null,false);
	CreateColorSP("�}�\Ļ��", 25000, "BLACK");
	DrawTransition("�}�\Ļ��", 150, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);
	DeleteStA(0,true);
	DrawDelete("�}�\Ļ��", 150, 100, "circle_01_00_1", true);

	SetFwC("cg/fw/fw�y_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0410]
//���y��
<voice name="�y" class="�y" src="voice/ma05/0181510b46">
��!!��

{	FwC("cg/fw/fw�����ǰ_���.png");}
//���⡿
<voice name="��" class="��" src="voice/ma05/0181520a14">
��ĸ�ס���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0420]
���ع�������
��ͳ�Ķ��ߴ���Ů���ĵ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�����ǰ_��Ц.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0430]
//���⡿
<voice name="��" class="��" src="voice/ma05/0181530a14">
���ⲻ��ɱ����
���ⲻ��ƾ��<RUBY text="����">����</RUBY>ɱ�κ��ˡ���

//���⡿
<voice name="��" class="��" src="voice/ma05/0181540a14">
����Ϊ�ҵ�·����ͨ������֮р��
�������䷨��ɣ�������⡢������ۻ�֮��
ͳͳ���á���

//���⡿
<voice name="��" class="��" src="voice/ma05/0181550a14">
���������޷��������޶�նɱ��ĸ��
���ʲ�ɱ������

{	FwC("cg/fw/fw�y_ͨ��b.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0181560b46">
���⡭������

{	FwC("cg/fw/fw�����ǰ_���.png");}
//���⡿
<voice name="��" class="��" src="voice/ma05/0181570a14">
����������

//���⥢�������
{	FwC("cg/fw/fw�����ǰ_��Ц.png");}
//���⡿
<voice name="��" class="��" src="voice/ma05/0181580a14">
���氮�����ɡ�
��ĸ�ס���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ɤ���
//���Q��
	CreateSE("SE01","se���L_����_Ź��01");
	MusicStart("SE01",0,1000,0,850,null,false);
	CreateColorSP("�}��ܞ", 5000, "#FFFFFF");
	CreateColorSP("�}�\", 4500, "#000000");
	WaitKey(10);
	Delete("�}��ܞ");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0450]
��
����������������������׾١�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//��һ�ȥե��`�ɥ����Ȥ���
	ClearWaitAll(2000, 2000);

}

..//������ָ��
//�Υե����롡"ma05_019.nss"