//<continuation number="640">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md06_025.nss_MAIN
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
	#bg016_���@a_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md06_026.nss";

}

scene md06_025.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"md06_024.nss"

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\", 5000, "BLACK");

	OnBG(100, "bg016_���@a_01.jpg");
	FadeBG(0, true);

	Delete("�ϱ���");
	FadeDelete("�\", 1500, true);

	SoundPlay("@mbgm23", 0, 1000, true);

//���äƤ���餷���Τǡ������}�ϱ�ʾ���Ƥ��ޤ��� inc�Ѿ�

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
�����˼��ҵ���֮�����ҵ��������¡�
����Ϊ����ɽ�˺�֮�д��У��Ƚ�Ҳ����ƣ�ۡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="��������" src="voice/md06/0250010a01">
��������

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/md06/0250020a00">
�����������ˡ���

{	FwC("cg/fw/fw����_Ц�.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0250030a01">
����Ҳ�ܿ��ġ�
����������תת�����ǲ��ĵ��ء���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md06/0250040a00">
���ǰ���
��ֻ���������ĵꡭ�����ǹŶ��ꡣ��

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/md06/0250050a00">
��Сʱ����һֱ�����ţ������
��һ�����Ƶĵ��̡���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0250060a01">
��������������

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md06/0250070a00">
���Ѿ��ǹ�ȥ�����ˡ���
��ͯ���������룬���ڻ������ĵס���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
����������ʡ�
����ͬҪץסʲô���֮��һ�㣬�ս�ȭͷ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_Ц�b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="����" src="voice/md06/0250080a00">
���ڻ谵�ĵ�������絽�������
��ù�Ŀ��������ϴ�ĥ������֮������
���ǵġ������������������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0250090a01">
���������š�����

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/md06/0250100a00">
��û��ʵ���ء���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0250110a01">
��δ�ذɣ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md06/0250120a00">
����������

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0250130a01">
�������ڿ�ʼҲ���԰�����

{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/md06/0250140a00">
������������

{	FwC("cg/fw/fw����_Ц�b.png");}
//��������
<voice name="����" class="����" src="voice/md06/0250150a00">
������
������Ҳ�ǰ�������

{	FwC("cg/fw/fw����_Ц�.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0250160a01">
���š���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md06/0250170a00">
���������أ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0250180a01">
��������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md06/0250190a00">
��û��ʲô��ʱ�������𣿡�

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0250200a01">
����������
���ң���������Ϊ������������

//��������
<voice name="����" class="��������" src="voice/md06/0250210a01">
������Ϻ�ĵĶ���ʦ֮�ң����˳�Ϊ���У�
��û���ǹ�������δ������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md06/0250220a00">
�����𡭡���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
����֮������ѡ��ĵ�·ֻ��һ����
����������ˡ�������ͱ�������
ѡ��Ȩ����е���į�ɡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��������
<voice name="����" class="��������" src="voice/md06/0250230a01">
����ѽ����
��Ҳ������ȫû�С���

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/md06/0250240a00">
���й��𣿡�

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0250250a01">
��ֻ�����������������
���ڶ�ʱ������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0250260a01">
����˵���е�Ů��ÿ�춼���Ż�����
��������Ҳ����˵�������ΪŮ�ٵĻ�������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0250270a01">
��������ĸ��������
����Ȼ��ŭ������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md06/0250280a00">
�����е�Ů�ٰ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
��ֻ�ܵ��������뵽����ʮ���������ӡ�
������ʵ����ʲô����Ҳ�޴�֪������
������Сʱ��Ĵ������㽵ģ�Ӧ���Ǻ�
������װ���ɡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�a��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//��������
<voice name="����" class="����" src="voice/md06/0250290a00">
�������š���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0250300a01">
����ô�ˣ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0250310a00">
��ûʲô��
�����������룬�ǲ����п��ܡ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0250320a00">
��Ҫʵ����������ƺ��ܲ����ס���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
��������Ŀ����ͻȻ����һ˿ϲ�á�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_Ц�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//��������
<voice name="����" class="��������" src="voice/md06/0250330a01">
������������ɵ�ء�
��Сʱ��ʲô����֪����
ֻ���е��������ѡ���

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0250340a01">
�������л����ܳ�ΪŮ�٣�
��Ҳ���ǻ�ѡ���Ϊ���С���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md06/0250350a00">
��������

{	FwC("cg/fw/fw����_�դ�.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0250360a01">
����Ϊ���У����������㡣��

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0250370a01">
��Ҳ����ʱֻ��żȻ�����ˡ���
������������ǰ����һ�̡���

{	FwC("cg/fw/fw����_�դ�.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0250380a01">
����˵������
�����Ҳ��ɣ��԰ɣ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
���������һ�㡣
������˵�ţ����΢Ц��������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//��������
<voice name="����" class="����" src="voice/md06/0250390a00">
��������

{	FwC("cg/fw/fw����_Ц�.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0250400a01">
�����ԣ�û��ϵ����

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0250410a01">
����������ô���²��ߵ����졭��
��˵�޷��϶���ȥ��һ�У�
Ҳ������������Ĵ���
�����ǣ�Ψ����Ϊ��������¡�����

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0250420a01">
���Ҿ��á�������������á���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md06/0250430a00">
����������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
��ͻȻ�����������١�
��΢����ȶ���������ĸ�����λ��

���⵽����ʲô�о���
����֮�����Լ��侲�������Ұ�Ŀ��Ӵ��������ƿ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//��������
<voice name="����" class="��������" src="voice/md06/0250440a01">
����ô�ˣ���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md06/0250450a00">
��ûʲô����

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0250460a01">
���е���ɡ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0250470a00">
��û����¡���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0250480a01">
��������ʲô����

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md06/0250490a00">
��ûʲô����

{	FwC("cg/fw/fw����_���C��.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0250500a01">
���ţ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0250510a00">
��������ô�ˣ���

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0250520a01">
�����������þ������
�����һ������뷨�ɡ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0250530a00">
��ͣ�¡���

{	FwC("cg/fw/fw����_Ц�.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0250540a01">
������Ц����
�����㲻��ô������Ҳ������ҵİɣ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0250550a00">
������������

{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/md06/0250560a00">
������������

{	FwC("cg/fw/fw����_���C��.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0250570a01">
������������ȥ����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md06/0250580a00">
�����������ˡ�
�������ղŵ�̸������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0250590a01">
���ղŵģ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md06/0250600a00">
�����е�Ů�١���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0250610a01">
���Ǽ��¾���������

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/md06/0250620a00">
��Ҫ�����볯͢��ȷ�����ܡ�
����������ſ����Ҹ���������飬
����õ����Ƶ����顣��

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0250630a01">
��������ô˵����

{	FwC("cg/fw/fw����_Ц�c.png");}
//��������
<voice name="����" class="����" src="voice/md06/0250640a00">
�����и��뷨����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(1500, 1500);

}

..//������ָ��
//�Υե����롡"md06_026.nss"