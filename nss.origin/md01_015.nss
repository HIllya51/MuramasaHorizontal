//<continuation number="630">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md01_015.nss_MAIN
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
	#ev211_�󁖤��Ϥ������y�Ǻ�_a=true;
	#bg095_�ߏ�Ժ�ξ���_02=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md01_016vs.nss";

}

scene md01_015.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"md01_014.nss"

//���ߏ�Ժ��Ϧ
//���ţ֣��ؤ���ζ��ʤ��󁖤��Ϥ����äƤ����y�Ǻ�
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	CreateTextureEX("�}�ţ�", 4000, Center, InBottom, "cg/ev/ev211_�󁖤��Ϥ������y�Ǻ�_a.jpg");
	OnBG(100,"bg095_�ߏ�Ժ�ξ���_02.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 2000, true);

	Wait(1000);

	Fade("�}�ţ�", 1000, 1000, null, true);
	Move("�}�ţ�", 3000, @0, 0, DxlAuto, true);

	SetFwL("cg/fw/fw�y�Ǻ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//���⡿
<voice name="��" class="��" src="voice/md01/0150010a14">
������������

//���⡿
<voice name="��" class="��" src="voice/md01/0150020a14">
���������ޡ�
����찡����

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������`���T����
	CreateSE("SE01","se���L_����_�z_�ŵ�01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEXadd("�}�ե�", 5000, "#FFFFFF");
	Fade("�}�ե�", 100, 1000, null, true);
	WaitKey(100);
	FadeDelete("�}�ե�", 600, true);

	SetFwL("cg/fw/fw��������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="��������" src="voice/md01/0150030a01">
������������

{	FwL("cg/fw/fw�y�Ǻ�_ͨ��.png");}
//���⡿
<voice name="��" class="��" src="voice/md01/0150040a14">
��ͻȻ��Ҫ��ס���治����˼��������
�����ԣ���ʵ��Ҳ�ǽг����ˡ���

//���⡿
<voice name="��" class="��" src="voice/md01/0150050a14">
����֪���ģ������һ������ʼ��
�ر���Ҫ�����㣬�����˱�ý���
������
����ֱ����ͬ��Ů֮��һ���޷����֡���

//���⡿
<voice name="��" class="��" src="voice/md01/0150060a14">
����Ҳ�Ǹ��䵭����ļһﰡ��
�����ǣ����������������Ӧ���к��Ļ�
�ҿ��Ǹм�����������


</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Wait(300);

	SetFwL("cg/fw/fw�y�Ǻ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0021]
//������仯
//���⡿
<voice name="��" class="��" src="voice/md01/0150070a14">
������������

{	FwL("cg/fw/fw����Ů��ρ_ͨ��.png");}
//������������
<voice name="��������" class="��������" src="voice/md01/0150080a15">
��������������������

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SoundPlay("@mbgm34",0,1000,true);

	StR(1100, @0, @0,"cg/st/3d�����˜�_����_ͨ��.png");
	FadeStR(0,true);

	CreateWindow("�}��", 500, Center, 36, 1030, 288, false);
	SetAlias("�}��","�}��");
	CreateTextureSP("�}��/�}��", 610, -630, -360, "cg/ev/resize/ev211_�󁖤��Ϥ������y�Ǻ�_alex.jpg");
	Request("�}��/�}��", Smoothing);
	Zoom("�}��/�}��", 0, 700, 700, null, true);

	FadeDelete("�}�ţ�", 1000, true);

	Wait(500);

	SetFwC("cg/fw/fw�y�Ǻ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0022]
//���⡿
<voice name="��" class="��" src="voice/md01/0150090a14">
������˭����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0150100a01">
�������ס�
����û����ƭ��ȥ����

{	FwC("cg/fw/fw�y�Ǻ�_ͨ��.png");}
//���⡿
<voice name="��" class="��" src="voice/md01/0150110a14">
����ҪС���ҡ�
���������һ������Ҳ���Բ���Ѿ���
�ͱ�ļһ���ģ���

//���⡿
<voice name="��" class="��" src="voice/md01/0150120a14">
��������һ������

//���⡿
<voice name="��" class="��" src="voice/md01/0150130a14">
����ζ��һ������

//���⡿
<voice name="��" class="��" src="voice/md01/0150140a14">
�������о���һ������

//���⡿
<voice name="��" class="��" src="voice/md01/0150150a14">
�����ң�Ҳû�ж�������৵�ð�����Ķ�������

{	FwC("cg/fw/fw����Ů��ρ_ͨ��.png");}
//������������
<voice name="��������" class="��������" src="voice/md01/0150160a15">
��৵أ���

{	FwC("cg/fw/fw�y�Ǻ�_ͨ��.png");}
//���⡿
<voice name="��" class="��" src="voice/md01/0150170a14">
��֩�룬�������������ļһ�?!
���Ѿ�����ô��?!��

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0150180a01">
���Ҿ�����û�лش�������񡣡�

{	FwC("cg/fw/fw�y�Ǻ�_ͨ��.png");}
//���⡿
<voice name="��" class="��" src="voice/md01/0150190a14">
�������Ѳ��ɡ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0150200a01">
������������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�y�Ǻ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//���⡿
<voice name="��" class="��" src="voice/md01/0150210a14">
��������ð��?!
���������Ǵ���?!��

//���⡿
<voice name="��" class="��" src="voice/md01/0150220a14">
���Ǿ�ȥ��������!!��

{	FwC("cg/fw/fw����Ů��ρ_ͨ��.png");}
//������������
<voice name="��������" class="��������" src="voice/md01/0150230a15">
�����ȥ?!
�����������ȵȣ����侲������������

//������������
<voice name="��������" class="��������" src="voice/md01/0150240a15">
���Ǹ��ƺ��ǣ��յġ���

{	FwC("cg/fw/fw�y�Ǻ�_ͨ��.png");}
//���⡿
<voice name="��" class="��" src="voice/md01/0150250a14">
���ţ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0150260a01">
������������

{	FwC("cg/fw/fw�y�Ǻ�_ͨ��.png");}
//���⡿
<voice name="��" class="��" src="voice/md01/0150270a14">
������ʲô���Ǹ��ǡ���
������<RUBY text="����������">ʲôҲû��</RUBY>�𡣡�

{	FwC("cg/fw/fw����Ů��ρ_ͨ��.png");}
//������������
<voice name="��������" class="��������" src="voice/md01/0150280a15">
��ֻ��Ū���˿���ȥ��װ��װ�׵����ӡ�
����ô���������кδ����أ���

{	FwC("cg/fw/fw�y�Ǻ�_ͨ��.png");}
//���⡿
<voice name="��" class="��" src="voice/md01/0150290a14">
��ֻ���������Ļ�����֩������β���
���ˡ��ߡ�����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0150300a01">
��������̸����Ϊֹ�ɡ���

{	FwC("cg/fw/fw�y�Ǻ�_ͨ��.png");}
//���⡿
<voice name="��" class="��" src="voice/md01/0150310a14">
�����Ҿ�ֱ�����ˡ�
���㵽��������ʲô�ģ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0150320a01">
����Ȼ����ս���İ���������

{	FwC("cg/fw/fw�y�Ǻ�_ͨ��.png");}
//���⡿
<voice name="��" class="��" src="voice/md01/0150330a14">
�����������أ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0150340a01">
��������������Ҳû��ϵ��
�������ҵ����������㡪��<RUBY text="ĸ��">����</RUBY>�Ծ��ɣ���

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����㤭�󡣒i��
	CreateSE("SE01","se���L_����_������03");
	StR(1100, @0, @0,"cg/st/3d�����˜�_����_�i��.png");

	MusicStart("SE01",0,1000,0,1000,null,false);
	FadeStR(300,true);

	SetFwC("cg/fw/fw�y�Ǻ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//���⡿
<voice name="��" class="��" src="voice/md01/0150350a14">
������������

//���⡿
<voice name="��" class="��" src="voice/md01/0150360a14">
����������������

{	FwC("cg/fw/fw����Ů��ρ_ͨ��.png");}
//������������
<voice name="��������" class="��������" src="voice/md01/0150370a15">
����Ȼ���ź��������ƺ�������ġ���

{//��@Ϣ
	FwC("cg/fw/fw�y�Ǻ�_ͨ��.png");}
//���⡿
<voice name="��" class="��" src="voice/md01/0150380a14">
������������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0150390a01">
����ô�ˡ�����

{	FwC("cg/fw/fw�y�Ǻ�_ͨ��.png");}
//���⡿
<voice name="��" class="��" src="voice/md01/0150400a14">
��ûʲô��
�����ǲ�֪�����˷����⻹�ܸ�ʲô����

//���⡿
<voice name="��" class="��" src="voice/md01/0150410a14">
������Ϊ��ƾ���ֳ����ܵ������ҵĶ��֣���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0150420a01">
�������Ƕ�����ʴ��ˡ���

{	FwC("cg/fw/fw�y�Ǻ�_ͨ��.png");}
//���⡿
<voice name="��" class="��" src="voice/md01/0150430a14">
����Ҳ��ȥ���վ��ӡ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0150440a01">
��������

{	FwC("cg/fw/fw�y�Ǻ�_ͨ��.png");}
//���⡿
<voice name="��" class="��" src="voice/md01/0150450a14">
����������
�����Ů���й���׾�ء���

{	FwC("cg/fw/fw����Ů��ρ_ͨ��.png");}
//������������
<voice name="��������" class="��������" src="voice/md01/0150460a15">
����ϧ��������������޿ɱ粵����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0150470a01">
����˵ʲô����?!��

{	FwC("cg/fw/fw�y�Ǻ�_ͨ��.png");}
//���⡿
<voice name="��" class="��" src="voice/md01/0150480a14">
��������������

{	FwC("cg/fw/fw����Ů��ρ_ͨ��.png");}
//������������
<voice name="��������" class="��������" src="voice/md01/0150490a15">
�����������Ķ��־Ͳ����鷳�����ˡ�
�����罻��<RUBY text="��">��</RUBY>ȥ����ɡ���

{	FwC("cg/fw/fw�y�Ǻ�_ͨ��.png");}
//���⡿
<voice name="��" class="��" src="voice/md01/0150500a14">
��׼�ˡ�
��ȥ�ɡ���

{	FwC("cg/fw/fw����Ů��ρ_ͨ��.png");}
//������������
<voice name="��������" class="��������" src="voice/md01/0150510a15">
���ǡ���

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Ф�`�󡣽��
//���ߏ�Ժ��Ů��ρ����
	CreateSE("SE02","se����_�z_װ��03");
	MusicStart("SE02",0,1000,0,1250,null,false);
	CreateColorEXadd("�}�ե�", 5000, "#FFFFFF");
	Fade("�}�ե�", 600, 1000, null, true);

	Delete("�}��");
	StL(1000, @0, -212,"cg/st/3d����Ů��ρ_ɿ��.png");
	Request("@StL*", Smoothing);
	Rotate("@StL*", 0, @0, @180, @0, null,true);
	FadeStL(0,true);
	FadeDelete("�}�ե�", 1000, true);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��������
<voice name="����" class="��������" src="voice/md01/0150520a01">
��̫�����ˣ���

{	FwC("cg/fw/fw����Ů��ρ_ͨ��.png");}
//������������
<voice name="��������" class="��������" src="voice/md01/0150530a15">
���⻰ĸ���Ѿ�˵���ˡ�
�������������С��������ô�붼��
�л�Ӯ������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0150540a01">
�������ԵĻ��ǲ���֪���ġ���

{	FwC("cg/fw/fw����Ů��ρ_ͨ��.png");}
//������������
<voice name="��������" class="��������" src="voice/md01/0150550a15">
���������ʡ�
�����Ǹ���װֻҪ��һ�۾���������
��ô�Ĳ����ˡ�����

//������������
<voice name="��������" class="��������" src="voice/md01/0150560a15">
���굽�ױ�������Σ�
������<RUBY text="��������">����ز�</RUBY>��ûʲô�����ˡ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0150570a01">
�������ף���

{	FwC("cg/fw/fw����Ů��ρ_ͨ��.png");}
//������������
<voice name="��������" class="��������" src="voice/md01/0150580a15">
�������ۼ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��Ů��ρ���ͥ륮�`����
//�����
//��������������ǰ��
	SetVolume("@mbgm*", 2000, 0, null);
	CreateSE("SE02","se����_������_�������g�仯01");
	MusicStart("SE02",0,1000,0,1250,null,false);
	CreateColorEXadd("�}�ե�", 5000, "#FFFFFF");
	Fade("�}�ե�", 600, 1000, null, true);
	StC(1000, @0, @0,"cg/st/st��������_ͨ��_˽��.png");
	FadeStA(0,true);

	WaitKey(1000);

	FadeDelete("�}�ե�", 2000, true);

	SetFwR("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��������
<voice name="����" class="��������" src="voice/md01/0150590a01">
������ʲ������

//��������
<voice name="����" class="��������" src="voice/md01/0150600a01">
���⡭��<RUBY text="��������">��������</RUBY>?!
����ô�ᣬ������������ģ���

{	FwR("cg/fw/fw��������_ͨ��.png");}
//������������
<voice name="��������" class="��������" src="voice/md01/0150610a15">
����<RUBY text="����">����</RUBY>��ǰ��һ�����ܳɹ��ˡ�
��������һ�����޷�������
��Ȼ���е�Ů��Ҳ���˾�ɥ����

//������������
<voice name="��������" class="��������" src="voice/md01/0150620a15">
�����������������Ϊ��ν��ͬ���𣿡�

{	FwR("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0150630a01">
���㡭������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


}

..//������ָ��
//�Υե����롡"md01_016vs.nss"