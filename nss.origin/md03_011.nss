//<continuation number="440">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md03_011.nss_MAIN
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
	#bg056_���L�����Tǰ_03=true;
	#bg032_��ᦌm�������b_03a=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md03_012.nss";

}

scene md03_011.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"md03_010.nss"


//�������¡�bg056_ҹ
//���H������

//ð�^�Խ����ݳ��Ȥ��������}�������Ƥ��ޤ��� inc�Ѿ�

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\", 5000, "BLACK");


	OnBG(100, "bg056_���L�����Tǰ_03.jpg");
	FadeBG(0, true);


	SoundPlay("@mbgm16", 0, 1000, true);

	Delete("�ϱ���");
	FadeDelete("�\",2500,true);

	WaitKey(2000);


	OnBG(101, "bg032_��ᦌm�������b_03a.jpg");
	FadeBG(1500, true);

	Wait(500);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��������
<voice name="����" class="��������" src="voice/md03/0110010a01">
�������������������ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
�����Ƿ�ΰݵ��գ��ڰ�ᦹ��������¡�
��֮�󱻴���������ܥԽ��
���뾰���ֿ�����������֮�󱻾ȳ�������<RUBY text="���">������</RUBY>����

�������ø�˵�Ļ�ȫ˵�ˡ�
�����߶����ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����L

	StR(1000, @0, @0, "cg/st/st���L_ͨ��_�Ʒ�.png");
	FadeStR(300, false);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
���������������𳤡������ˣ��ճ���Ң��
��������ǰ�ڴն��Ҵ������ԡ�������Ҳ֪֮���࣬��
�뿪����������˵�������ʱ������Ϥ������֮һ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStR(300,false);

//�����m

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
���������������¡�
���ǵ�����ϵĵܵܡ���Ȼ�����ǳ��μ��棬������
�����ƺ��ڰ��ذ�����������׷�����Ǻš�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����B����֦������

	StR(1000, @0, @0, "cg/st/st����֦_ͨ��_˽��c.png");
	StL(1000, @0, @0, "cg/st/st����_ͨ��_˽��.png");
	FadeStL(300, false);
	FadeStR(300, false);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
���Լ��й�һ��֮Ե�Ĵ�������֦�����̴ӡ�
���������Ǵ���ˣ�ȴ����������ӣ�������;��ڣ�
���Ǹ㲻�����ǽ�ʲô�ǣȣѻ��ǽ�פ�����š���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStA(200,true);
//��һ��
	StR(1000, @0, @0, "cg/st/stһ��_ͨ��_�Ʒ�b.png");
	FadeStR(200, false);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
����λҲ�����ž�����������ʶ���ǽ�
һ����֡���˵���ˣ������һ����
����֪����ʲô���ɣ���һֱ����������ӵ�����
�����ҡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStR(200,true);

//���\��ͯ��

	StL(1000, @0, @0, "cg/st/st�\��_ͨ��_˽��.png");
	FadeStL(200, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
���������Ϊ����ͯ�ӵ����ˡ�
�����ƺ�����������Ļ���жԵ�ĳһ������ͷĿ��Ǳ�뵽
������סլ������Ͷ��·ʱ�������������ȣ��������
��Ǳ��������ҡ�

���ƺ�ֻ���������Ǻ�һ����֪��������˵����ʱ�򾭳�
¶����������顣
������������Ĭ��������ھ׽��鱨��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStL(300,true);

	SetFwC("cg/fw/fw�H��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//�����m��
<voice name="���m" class="���m" src="voice/md03/0110020a10">
���������Ǿ��ˡ�����

//�����m��
<voice name="���m" class="���m" src="voice/md03/0110030a10">
�����ȹ��ȣ���������֪�����׸ö�ʲô��ʾ
�����ˡ�
���ǰɣ��𳤡���

{	FwC("cg/fw/fw���L_���a.png");}
//�����L��
<voice name="���L" class="���L" src="voice/md03/0110040a11">
�������ǵġ���

{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/md03/0110050a10">
����λ����Ȼ�Ǵ����Ľ��У��������Ѿ�
����˵���˱������Ȳ��ƽ��ˡ�
��������Ȼ��ʵ���ܲ��ƽϡ���

//�����m��
<voice name="���m" class="���m" src="voice/md03/0110060a10">
����˵�����������Ǻ�ϴ�ԣ����굽
Ļ�����ˣ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md03/0110070a01">
������������

{	FwC("cg/fw/fw����_����.png");}
//�����衿
<voice name="����" class="����" src="voice/md03/0110080a04">
�����Ǿ��������鱨���ԣ����ܽ���������
��������һ��ͬ�ʡ���

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/md03/0110090a03">
���ǰ���
����Ļ������ܥԽ���������Ǻ������й�ϵ��
������������˶����������С����Ǹ�����
���ǰɡ���

{	FwC("cg/fw/fwһ��_����a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/md03/0110100a02">
���Ǽһ﾿������ʲô����

{	FwC("cg/fw/fw����_���.png");}
//�����衿
<voice name="����" class="����" src="voice/md03/0110110a04">
��������
����������Ҫ�����Ǻ�������ʲô���¡���

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/md03/0110120a03">
���ƺ���ֻ�ǵ���������������Ļ���ڵ�
Ȩ������������������פ��ս��ʱ��æ
��һ��ġ�
���Ǹ��ӡ�����ͬ���ʵġ���

{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/md03/0110130a11">
��û��
���Ĺ����������ˡ�������ͯ�ġ����׵���
����ʨ�Ӻ𶨸���Ұ�ġ���

{	FwC("cg/fw/fw���L_�䅗.png");}
//�����L��
<voice name="���L" class="���L" src="voice/md03/0110140a11">
�������������ǿ���������������ɽ������
�Ž�һ���ų���С�
�����ǣ���������衪����

{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/md03/0110150a10">
���ܾ����������Բ�ͬ�ĸо�����

{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/md03/0110160a11">
���ǵġ���

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/md03/0110170a03">
������������

{	FwC("cg/fw/fw����_����.png");}
//�����衿
<voice name="����" class="����" src="voice/md03/0110180a04">
������������

{	FwC("cg/fw/fw�\��_�Ŀ.png");}
//���\����
<voice name="�\��" class="�\��" src="voice/md03/0110190b26">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
����Ҳ�Լ��ͬ�س�Ĭ�ˡ�
����Ϊ˭���������ɡ�

�������Լ�˵��������������Ǻ��й�ϵ����Ҳ��ȫ
�����������Ŀ�ģ�����Ҳû�취��
����������������ʲô�ء�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�H��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//�����m��
<voice name="���m" class="���m" src="voice/md03/0110200a10">
�������Բ��𣬴�����㡣
�������Թ������۵����ˡ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md03/0110210a01">
��ûʲô������

{	FwC("cg/fw/fw����_ƣ��.png");}
//�����衿
<voice name="����" class="����" src="voice/md03/0110220a04">
��Ҫ˵������Ӧ���Ǵ�Ҷ��䳡�ˡ���

{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/md03/0110230a10">
����������˵�����ǻ�ʲô��û�������ء�
���������Ҳ�кܶ��¡�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
�������˺���һ���Ҫ˵���˴ӷ�ΰ���������¡�
���������Ǻ�ʹ��ᦹ�<RUBY text="������">��ʧ��</RUBY>��
�����˱��ƾӵ������������ˡ���

������������Ļ��ִţ��������һ��ԨԴ���Ȼ����
��������͢��ɮ����ʵҲ�ܶ࣬�Թ�����Ϊ���ĵ�һ
���˵Ļ����ǰ�������ˡ���

�����е�һ��ɹ��������򷴿�Ļ����������ĸԲ�һ
��е��ĽӴ������������ǵľ�����λ����ͯ�ӡ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�H��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//�����m��
<voice name="���m" class="���m" src="voice/md03/0110240a10">
��֮����ͯ��˵����ܥԽ������һ����ֵ���
�˾��ˡ������������ǲ��Ǵն�������
������������ѽ����

//�����m��
<voice name="���m" class="���m" src="voice/md03/0110250a10">
�������Ҷ��Ҳ����ľ�������Ȼ�����ֵط���
���ͼ�æ����ͯ����ȥ��һ����ϸ���顣��

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md03/0110260a01">
������������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
��������㷢���˱��Ľ����ң�������ô���¡�

������˵ʵ�����Ҳ�����ô��������ľ�����

����ֻ���ġ��������¡�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���L_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//�����L��
<voice name="���L" class="���L" src="voice/md03/0110270a11">
�����ˡ�
���鱨�������ˣ������������ж��ɡ���

{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/md03/0110280a10">
���ǰ���
������ȳ�����������

{	FwC("cg/fw/fw���L_���a.png");}
//�����L��
<voice name="���L" class="���L" src="voice/md03/0110290a11">
�����������¡�
�������¿����Ժ���������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
����Ϊ����������������˶��ԡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�H��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//�����m��
<voice name="���m" class="���m" src="voice/md03/0110300a10">
���ճأ�ʲô���Ժ󣿡�

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/md03/0110310a03">
�������������������˾���˵���»�û��
����֮�ǡ���

{	FwC("cg/fw/fw����_ƣ��.png");}
//�����衿
<voice name="����" class="����" src="voice/md03/0110320a04">
��ҲҪ������ô�����Լ���������ʲô����

{	FwC("cg/fw/fw���L_���a.png");}
//�����L��
<voice name="���L" class="���L" src="voice/md03/0110330a11">
��ܥԽ��������ͼ���������⣬��Ҳ��������
Ļ��ȫ��Ķ���
���������¸�Ϊ���ȡ���

{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/md03/0110340a11">
��Ļ���Ķ���͢��ּ����������Ϊ���졭��
������ɹ��ˣ���ʱ��͵����ƻ�ӭ��������
��ת�۵㡣��

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/md03/0110350a03">
�������š�
���������ʣǣȣѻῴ׼ʱ���߻������ж�����

{	FwC("cg/fw/fw����_����.png");}
//�����衿
<voice name="����" class="����" src="voice/md03/0110360a04">
�������ƺ�׼���˻��ս������������õ���
��������

{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/md03/0110370a11">
�����������פ����
�����ǲ������κ�һ��ʤ������

{	FwC("cg/fw/fw���L_�䅗.png");}
//�����L��
<voice name="���L" class="���L" src="voice/md03/0110380a11">
����Ȼ��Ҳ���뿴��������ֲ��£��޶���
�������������֡���

{	FwC("cg/fw/fw�\��_ͨ��.png");}
//���\����
<voice name="�\��" class="�\��" src="voice/md03/0110390b26">
���������Ӧ������������
�����ԣ�����Ҫ�����������ɾ��δ���
����ּ����

{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/md03/0110400a11">
��û����

{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/md03/0110410a10">
�������;���ȡ�����磬�����Ǿ������ӣ�
���ǡ���
����֪�������ӵ�ʲôʱ�򡣡�

{	FwC("cg/fw/fw���L_���a.png");}
//�����L��
<voice name="���L" class="���L" src="voice/md03/0110420a11">
���϶��Ų��˶�ðɡ�
��������׼��Ļ���ڵĹ���������

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md03/0110430a01">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
�����⿪ʼת�����η��档
����֪��������������˵���������Ҫ�ġ�

��������⣬Ҳ�����������޴����顣

�����ǡ�

�����ǣ��ҡ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
//��һ����
<voice name="һ��" class="һ��" src="voice/md03/0110440a02">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(1500, 1500);

}

..//������ָ��
//�Υե����롡"md03_012.nss"