//<continuation number="370">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md02_040.nss_MAIN
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
	#bg039_��������ϯb_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md02_041.nss";

}

scene md02_040.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"md02_039.nss"

	PrintBG("�ϱ���", 30000);
	CreateColorEX("�\Ļ��", 90, "BLACK");
	Fade("�\Ļ��", 0, 1000, null, true);
	OnBG(100, "bg039_��������ϯ��_01.jpg");
	FadeBG(0, true);

	Delete("�\Ļ��");
	DrawDelete("�ϱ���", 150, 100, "slide_01_01_1", true);

//���������������Ǉ⡢�����

	CreateColorEX("�ץե�", 5000, "WHITE");
	Fade("�ץե�", 0, 1000, null, true);
	OnSE("se���L_����_Ź��01", 1000);
	Fade("�ץե�", 100, 0, null, true);
	Fade("�ץե�", 100, 1000, null, true);
	OnSE("se���L_����_Ź��01", 1000);
	Fade("�ץե�", 100, 0, null, true);
	Delete("�ץե�");

	WaitKey(1000);

	OnSE("se����_�n��_ܞ��03", 1000);

	Wait(1000);

//���衩��
	StL(1000, @0, @0, "cg/st/st�衩��_ͨ��_��װ_b.png");
	FadeStL(300, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
��һ˲�䣬��������������һ����м�׵һ�㣬
���巢ӲȻ��̱����ȥ��

��վ���������ģ�����������ܥԽ������

��Ӧ��˵����ƽ�������ǿ϶��ġ�
������Ե�ɣ�
�Ҵ�һ��ʼ��ȷ���������ܾ�������ը������
���������������ķ�������ȴ��������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SoundPlay("@mbgm19", 0, 1000, true);
	SetFwC("cg/fw/fw�衩���װ_���.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0400010a07">
����Щ�һ��������ŵġ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0400020a00">
�����ǡ����ţ���

{	FwC("cg/fw/fw�衩���װ_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0400030a07">
��û��˵���𣿡�

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0400040a00">
��ˡ�ҹ��š���

{	FwC("cg/fw/fw�衩���װ_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0400050a07">
����������ô�󵨵��ж���������ſ�ʼ��
������Ҳû�кܴ��ע����֪������������

{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/md02/0400060a00">
�������˵ı���ʽ��Ļ�ɼ��ţ���

{	FwC("cg/fw/fw�衩���װ_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0400070a07">
����һ����ˡ�
������˵������һ�롣��

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0400080a00">
��ʣ��һ���أ���

{	FwC("cg/fw/fw�衩���װ_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0400090a07">
����Щ�һ�����һ���ڽ����尡����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
�������ڽ̣�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="����" src="voice/md02/0400100a00">
����һЩ�ڽ̵Ĺ۵�����
������Ļ������֮���𣿡�

{	FwC("cg/fw/fw�衩���װ_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0400110a07">
��������˵����Ϊ��Ļ�������ڽ̻����
�ֻ��ǡ���<RUBY text="��������">�������</RUBY>�İɡ�
���տ�ʼ�ͽ���Щ��ͨ�ĵ�Ļ���
������ʼ������ĳӢ�ۡ���

{	FwC("cg/fw/fw�衩���װ_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0400120a07">
��Ȼ����Ӣ���񻯡�
����Ӣ����Ϊ��������϶���
ͬʱ�Լ�Ҳ��ʼģ�¡���
Ŀǰ˳�������˼����ɺ�������ǰ�а�����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0400130a00">
������������

{	FwC("cg/fw/fw�衩���װ_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0400140a07">
���Գ������š�
������һζ����ı���
��Ȼ�����ǵ�������ɱ¾�ߡ���

{	FwC("cg/fw/fw�衩���װ_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0400150a07">
������ħ�������Ǻš���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
��û��˵���ڵ����⣬ȴ��������������еظ�֪��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��������
<voice name="����" class="����" src="voice/md02/0400160a00">
��������������

{	FwC("cg/fw/fw�衩���װ_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0400170a07">
�����𣿡�

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0400180a00">
����Ļ��������Ǻ��к���ϵ������

{	FwC("cg/fw/fw�衩���װ_ͨ��b.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0400190a07">
���Ǹ��
��Ψһ��ƾ�����������������޾����ˡ�
�����Ե�Ļ�ɾͲ��ɵ�äĿ��������ˣ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0400200a00">
�����Ǻſɲ�����Ļ���жԡ�
�������޲���ɱ¾���ѡ�������

{	FwC("cg/fw/fw�衩���װ_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0400210a07">
��������㣬�ǰ����ƺ���Ϊ
��СС����������ҳݣ�
�ַ��޶��թ֮����Ӣ�۵�ս�ۡ�����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0400220a00">
�������ꡭ����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
��������<RUBY text="����">�ж�</RUBY>�����������������
��������ǣ��Ҳ������ϧ�Ŀֲ�Ϯ����

���޴���
����������Ц��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//��������
<voice name="����" class="����" src="voice/md02/0400230a00">
������Щ�һ����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
�����ڲ��Ϸ�������ô��
�����Ǻ�֮�������ڡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�衩���װ_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0400240a07">
����硣��

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0400250a00">
��������

{	FwC("cg/fw/fw�衩���װ_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0400260a07">
��Ҫ�򵹹�������

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0400270a00">
������������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0400280a00">
���ǡ�
������򵹡���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
�������ֻ��ĸ�Դ��
���̲��ݻ�����

��Ϊ����ֹ�����޴�����Ϊ�ٴη�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�衩���װ_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0400290a07">
��������������
���Ǿ����԰ɡ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md02/0400300a00">
����˵�ԣ���

{	FwC("cg/fw/fw�衩���װ_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0400310a07">
���������һ�����ᡣ��

//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0400320a07">
��ɱ�����Ļ��ᡣ��

{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0400330a00">
������������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0400340a01">
��������˵ʲô����

{	FwC("cg/fw/fw�衩���װ_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0400350a07">
���ܰ쵽��
����硭����

{	FwC("cg/fw/fw�衩���װ_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0400360a07">
���᳹��Ӣ�ۡ����塪����ɱѪ�����ס���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0400370a00">
������������������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(1500, 1500);

}

..//������ָ��
//�Υե����롡"md02_041.nss"