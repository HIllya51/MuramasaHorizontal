//<continuation number="530">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md01_024.nss_MAIN
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
	#bg032_��ᦌm�������a_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md01_025.nss";

}

scene md01_024.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"md01_023.nss"

//����ᦌm����
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg032_��ᦌm�������a_01.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 2000, true);
	SoundPlay("@mbgm30",0,1000,true);

	StR(1000, @0, @0,"cg/st/st���L_ͨ��_�Ʒ�.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fw���L_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//�����L��
<voice name="���L" class="���L" src="voice/md01/0240010a11">
�������뿪�������֡�
���ܿ�ͻᵽ�����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md01/0240020a00">
�����ס���

{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/md01/0240030a11">
��׼�������𣿡�

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md01/0240040a00">
���滻������ٵ�׼���Ѿ������ˡ�
��ʵ�����������Ӷ����á���

{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/md01/0240050a11">
������
��������Ȼ�������¹�ΪĿ���𣿡�

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md01/0240060a00">
���ǡ���

{	FwC("cg/fw/fw���L_���a.png");}
//�����L��
<voice name="���L" class="���L" src="voice/md01/0240070a11">
����������Ѿ�Ǳ���ȥ֮����£�����û
�п��ܷ����𡭡�ֻ����һ�㻹���������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md01/0240080a00">
����һ���Ѿ�����ȷ�Ϲ��ˡ�
�����ڣ������ڽ�������ȷ�ϡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������֩��
//���r����؉���
	CreateSE("SE01","se����_����_�z�i��03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	StL(1000, @0, @180,"cg/st/3d����֩��_����.png");
	Move("@StL*", 300, @0, @-30, DxlAuto, false);
	FadeStL(300,true);

	CreateSE("SE01b","se����_������_�������g�仯01");
	MusicStart("SE01b",0,1000,0,700,null,false);
	CreateColorEXadd("�}�ե�", 5000, "#FFFFFF");
	Fade("�}�ե�", 600, 1000, null, true);

	WaitKey(500);

	DeleteStL(0,true);
	FadeDelete("�}�ե�", 1000, true);
	SetVolume("SE*", 1000, 0, null);

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="��������" src="voice/md01/0240090a01">
����Ҫ���ģ�������
���¹�û���ˡ���

//��������
<voice name="����" class="��������" src="voice/md01/0240100a01">
��������ô�����ǲ��������صĵط�������Ӧ
��û���⡣��

{	FwC("cg/fw/fw���L_���a.png");}
//�����L��
<voice name="���L" class="���L" src="voice/md01/0240110a11">
������������

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md01/0240120a00">
������������

{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/md01/0240130a11">
����������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md01/0240140a00">
���ǡ���

{	FwC("cg/fw/fw���L_�䅗.png");}
//�����L��
<voice name="���L" class="���L" src="voice/md01/0240150a11">
����ô���¡���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md01/0240160a00">
����ô�����ء���

{	FwC("cg/fw/fw���L_����.png");}
//�����L��
<voice name="���L" class="���L" src="voice/md01/0240170a11">
����˵�������²��ؼ�������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md01/0240180a00">
�����Լ�Ҳ�ر�����
����ԭ�¡���

{	FwC("cg/fw/fw���L_����.png");}
//�����L��
<voice name="���L" class="���L" src="voice/md01/0240190a11">
���������𡣡�

{	FwC("cg/fw/fw����_���C��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0240200a01">
��ʲô������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md01/0240210a00">
������������

{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/md01/0240220a11">
������������

{	SetComic(@-30,@0,5);
	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0240230a01">
����������

</PRE>
	DeleteComic();
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������ä��ݳ����ƴ���ȫ��
	SetVolume("@mbgm*", 1000, 1, null);
	CreateColorEX("�}ɫ�\�r", 6000, "#000000");
	CreateColorEX("�}ɫ�\", 5000, "#000000");
	Fade("�}ɫ�\", 1000, 1000, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
����������Ϊʲô����������

{	SoundPlay("@mbgm22",0,1000,true);
	CreateTextureEX("�}�����}", 5100, -1170, -460, "cg/st/resize/3d�����˜�_����_�i��.png");
	Zoom("�}�����}", 0, 750, 750, null, true);
	Request("�}�����}", Smoothing);
	Move("�}�����}", 2000, @0, @-400, DxlAuto, false);
	Fade("�}�����}", 200, 1000, null, false);}
����Ӧ���ǽ��С�

{	FadeDelete("�}�����}", 1000, false);
	CreateTextureEX("�}�����}", 5100, -180, -1000, "cg/st/resize/3d����֩��_���l.png");
	Zoom("�}�����}", 0, 750, 750, null, true);
	Request("�}�����}", Smoothing);
	Move("�}�����}", 2000, @0, @400, DxlAuto, false);
	Fade("�}�����}", 200, 1000, null, false);}
����Ӧ����֩�롣

{	Fade("�}ɫ�\�r", 1000, 1000, null, false);}
��û����ĳһ��ͻȻ�������Ů�ԡ�

���ֲ����ɺױ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������ݳ�
	WaitAction("�}ɫ�\�r", null);
	Delete("�}�����}");
	Delete("�}�����}");
	Wait(1);
	Delete("�}ɫ�\�r");

	CreateTextureEX("�}���}", 5100, Center, -1100, "cg/st/resize/st����_ͨ��_˽��llll.png");
	Move("�}���}", 0, @0, @-200, null, true);
	Move("�}���}", 9000, @0, -200, DxlAuto, false);
	Fade("�}���}", 300, 1000, null, true);

	SetFwR("cg/fw/fw����_ƣ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="����" src="voice/md01/0240240a00">
��������ô�죩

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
���ҵ��׸���ô�졣
����������ӣ�����Ȼ�Ѿ����������ˣ����µ����
���ǲ����ס�

����̫�������ˡ�

��������������Լ������ڷ���ʲô��
����֮���ҵ�ͷ���޷�����������״��

��������������������Ÿ��������ӣ�
�һ��а취���ܡ���

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	WaitAction("�}���}", null);

	WaitKey(1000);

	PrintGO("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg032_��ᦌm�������a_01.jpg");
	StL(1000, @0, @0,"cg/st/st����_ͨ��_˽��.png");
	FadeStL(0,true);
	FadeBG(0,true);
	FadeDelete("�ϱ���", 500, true);
	FadeDelete("�}��ܞ", 500, true);

	SetFwC("cg/fw/fw����_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��������
<voice name="����" class="����" src="voice/md01/0240250a00">
��������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0240260a01">
����ô�ˣ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���פˤפ�
	CreateSE("SE01","se�M��_���ߥ���_�פ�");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Shake("@StL*", 300, 3, 0, 0, 0, 1000, DxlAuto, false);

	SetFwC("cg/fw/fw����_�@��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��������
<voice name="����" class="��������" src="voice/md01/0240270a01">
��ѽ����

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/md01/0240280a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���פˤפˤפˤפ�
	CreateSE("SE01","se�M��_���ߥ���_�פˤפ�");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Shake("@StL*", 300, 6, 0, 0, 0, 1000, DxlAuto, false);

	SetFwC("cg/fw/fw����_�դ�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//��������
<voice name="����" class="��������" src="voice/md01/0240290a01">
�����ţ�ס�֣�����ѽ��
����������������ɲ��С���

{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/md01/0240300a00">
��������������

{	FwC("cg/fw/fw����_���C��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0240310a01">
����Ҫ˵�������˵Ļ�����

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��������
	CreateSE("SE01","se����_�n��_ܞ��03");
	MusicStart("SE01",0,1000,0,1000,null,false);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//��������
<voice name="����" class="��������" src="voice/md01/0240320a01">
��Ϊʲô��Ҫ��֫�ŵذ�����

{	FwC("cg/fw/fw���L_�䅗.png");}
//�����L��
<voice name="���L" class="���L" src="voice/md01/0240330a11">
����ҡ����������

{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/md01/0240340a00">
��������������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
������Ҫ�ڶ���
��Ȼ���굽���棬�����Լ���ϥ�����š�

���������������顣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm22", 2000, 0, null);
	SetVolume("@mbgm30", 3000, 1000, null);
	StR(1000, @0, @0,"cg/st/st���L_ͨ��_�Ʒ�.png");
	FadeStR(300,false);

	SetFwC("cg/fw/fw���L_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//�����L��
<voice name="���L" class="���L" src="voice/md01/0240350a11">
�����иý���������·�ˡ�
���ٲ�׼���͸ϲ����ˡ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md01/0240360a00">
���ǡ���
�����أ���

{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/md01/0240370a11">
������ԶЩ�ĵط����š�
�������Է���һ����

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md01/0240380a00">
����˵����

{	FwC("cg/fw/fw���L_�䅗.png");}
//�����L��
<voice name="���L" class="���L" src="voice/md01/0240390a11">
������������
��Ҫ��Ҫնɱ�����жϽ����㡣����������

{	FwC("cg/fw/fw���L_����.png");}
//�����L��
<voice name="���L" class="���L" src="voice/md01/0240400a11">
��ֻ�а�;���ϵ���ǧ��Ҫ����
���������ҵ���˼�ɣ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md01/0240410a00">
�����ס���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
����������������˵���ϣ�������������������
�Ҿ�����ɱ���ϡ�
��������һ������Ҫɱ��ǰȥϮ��������;������ã��
��������ӵ���

�����������ӵ�״����
������ɹ���ɱ���죬����Ļ�������ܴ�Ķ�ҡ����
����ʹ��Ϊ������Ļ����֣���Ҳ�����ܹ�������ȥ��

�������ɱ֮����ƽ�����£���ô����������Ȼǰ
��������
��������������ӵ��������֮ʱ������Ҫ����֪ͨ
���������������ɡ�

����Ȼ�ɹ��Ŀ����Ժ�С��������������Ҫ�úܶࡣ

����Ȼ����Ҳ������Ϊ����׼�������ġ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//��������
<voice name="����" class="����" src="voice/md01/0240420a00">
�������������Ҫնɱ����
���Ǿ�һ������

{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/md01/0240430a11">
�������ˡ�
����ô����ȥ�ˡ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md01/0240440a00">
�����������Ѿ���ɡ�
��С��Щ����

{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/md01/0240450a11">
����Ҳ�ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����Lȥ��
	DeleteStR(300,true);

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//��������
<voice name="����" class="����" src="voice/md01/0240460a00">
�����Ҳ��ʼ�ɡ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0240470a01">
���š���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md01/0240480a00">
��������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0240490a01">
������������Ҫ����
����Ͱ��������˼ȥ���ɡ���

//��������
<voice name="����" class="��������" src="voice/md01/0240500a01">
����һ�����Ϊ��̽Ѱ�Ľ���
����Ϊ�ܡ����ػ��㡣��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE01","se����_�n��_ܞ��03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	SetFwC("cg/fw/fw����_ƣ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0145a]
//��������
��
<voice name="����" class="����" src="voice/md01/0240510a00">
����������������������������

</PRE>
	SetTextEXH();
	Move("$SYSTEM_present_text", 0, 259, 134, null, true);
	TypeBeginTimeCI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0145b]
//��������
<voice name="����" class="��������" src="voice/md01/0240520a01">
����˵������Ϊʲô�������ܴ찡����

{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/md01/0240530a00">
��������ûʲô������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	ClearWaitAll(2000, 2000);

}

..//������ָ��
//�Υե����롡"md01_025.nss"