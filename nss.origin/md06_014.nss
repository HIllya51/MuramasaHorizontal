//<continuation number="540">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md06_014.nss_MAIN
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
	#bg016_���@c_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md06_015.nss";

}

scene md06_014.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"md06_013.nss"


//���y���ס��

	SoundPlay("@mbgm30", 0, 1000, true);

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}ɫ�\", 1500, "#000000");

	OnBG(100, "bg016_���@c_01.jpg");
	FadeBG(0, true);

	Delete("�ϱ���");
	DrawDelete("�}ɫ�\", 1000, 100, "blind_01_00_1", true);

//�����ϤҤ��Ԥ���੤�ʤ��Τ������}���������Ƥ��ޤ��� inc�Ѿ�

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
�����񡪡�����ս���Ⱥ���������������Ѱ��
�ӻ������ǣ����Ǵ��ڱ������Ż��õؿյ� 
��԰��ס����
������Ļ�����Ȼʮ�ֶ��ӡ�

����ʱ�����Ѿ���õ��ˡ����ס��
���������񶼳Ʋ��ϵ���ν�����
�����Դ���˵�����ڴ���������Ҳ���޿��κΡ�

��������ô��������ô�����أ�

����β�����������������ε��š���·�̵�ȷ
ңԶ�ֲ��㡪���ɺӣ����������ס�ء�
�������ʵ�ץ�������ʻ���ȴ�������ʻ��ķ�Χ��

���������ˣ�ȴ������Ӱ��
��������Ϣ�����ҵ����ӡ�

�����ǽ䱸ɭ�ϰ���
�������ԭס���ϵ���ã�����������ͻ������
�ϼ����Ҳ�ǿ�����⡭��������ˣ���һֱ��ô
��ȥҲ����������⡣

��Ҫ�Լ���ǰ���к���
�����Ե����������գ��ܿ��ܽ����������
�����ĸ��أ���������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nwС�����y��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//������㣯�y��¡�
<voice name="����㣯�y���" class="����������" src="voice/md06/0140010e228">
���ס����㣿��

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0140020a00">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
��һ���������Ӵ����ӵ���Ӱ̽��������
�������Һ󣬷·���Ѱ���������ͷ˼����
�̶��ֽ�����Ͷ���ҡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nwС�����y��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//������㣯�y��¡�
<voice name="����㣯�y���" class="����������" src="voice/md06/0140030e228">
���ⲻ�������������

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md06/0140040a00">
������������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0140050a01">
����������ҹ�ƺ������൱
��Ȥ�����ء���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
����֮ǰ��ȫ��ͬ��������
�ӱ��������˴�ʹ���������Դǣ�
�������������š�
��������������Ͼ��Ǹ����ᡣ

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��������
<voice name="����" class="����" src="voice/md06/0140060a00">
����ʱ���ŵ����ˡ���

{	NwC("cg/fw/nwС�����y��.png");}
//������㣯�y��¡�
<voice name="����㣯�y���" class="����������" src="voice/md06/0140070e228">
��������û������
��Ҳ�����������ƽ�ˡ���

//������㣯�y��¡�
<voice name="����㣯�y���" class="����������" src="voice/md06/0140080e228">
�������������ʲô����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md06/0140090a00">
����Щ����Ҫ����һ�¡�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
����һ����ȴ����Щ��ԥ��
��Ҫ�ʻ��ͱ����ȱ����Լ�����������������
��������˵��������ƺŹ���ô��

�����¶Է��������׽����ҵĺ��⡣��
�����ǣ����Ծ����ԾӵĻ����ҵ���ݡ�
���������������
Ӧ���ײ���ʲô���õĻ�����

�������Ȳ����ѡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//��������
<voice name="����" class="����" src="voice/md06/0140100a00">
��ʧ���ˣ���ʵ����һ�����졣��

{	NwC("cg/fw/nwС�����y��.png");}
//������㣯�y��¡�
<voice name="����㣯�y���" class="����������" src="voice/md06/0140110e228">
����������!?��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
����Ȼ�������ϡ�
���������ӵ��������Գ鴤��һ�£���Χԭ��
ѹ�ֵ�����Ҳ���<RUBY text="��������">һ������</RUBY>��

�������ϣ������㲻����ʽ������������Ƕ��ԣ�
���첢�������ǵı����ߡ�
������˵�����෴������ˣ�Ϊ������
���ǵ�η�壬�ҸϽ�����˵����ȥ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_Ц�b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//��������
<voice name="����" class="����" src="voice/md06/0140120a00">
������ġ�
���Ҳ�������Ȱ˵�����뿪�ġ���

{	NwC("cg/fw/nwС�����y��.png");}
//������㣯�y��¡�
<voice name="����㣯�y���" class="����������" src="voice/md06/0140130e228">
��������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md06/0140140a00">
�������˵�ֻ��Ϊ�˵���һ��
���ǵ������
���������Ļ����ܷ����һ�¡���

{	NwC("cg/fw/nwС�����y��.png");}
//������㣯�y��¡�
<voice name="����㣯�y���" class="����������" src="voice/md06/0140150e228">
����������������ô������

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md06/0140160a00">
��ֻ����֪�����顣��

{	NwC("cg/fw/nwС�����y��.png");}
//������㣯�y��¡�
<voice name="����㣯�y���" class="����������" src="voice/md06/0140170e228">
�����ջ����ǻ�����Ǹϳ�ȥ����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md06/0140180a00">
�����Է��ϡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
�������û�������Ҳֻ���������˶��ѡ�
���Դ��ұ���ʵ��ʵ˵��

��ʵ���ϣ����ӻ򾯲�ܿ���ֻ�ǲ�ȡЩ��ϵĴ�ʩ
��ͼ�����������⡣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nwС�����y��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//������㣯�y��¡�
<voice name="����㣯�y���" class="����������" src="voice/md06/0140190e228">
��������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md06/0140200a00">
���������ǣ�����Ϊ���ǲ�Ҫ��������ȽϺá�
������֪���Լ��������ޡ���
��������������Щ�����ܼ�֮�¡���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md06/0140210a00">
��Ը��������𣿡�

{	NwC("cg/fw/nwС�����y��.png");}
//������㣯�y��¡�
<voice name="����㣯�y���" class="����������" src="voice/md06/0140220e228">
����������
���ţ����ֻ�����㽻̸����

//������㣯�y��¡�
<voice name="����㣯�y���" class="����������" src="voice/md06/0140230e228">
���������ǵ�����Ҳû����ø����ˡ�����

{	FwC("cg/fw/fw����_Ц�b.png");}
//��������
<voice name="����" class="����" src="voice/md06/0140240a00">
���ǳ���л����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
����˵ֻ��������ͬ�⣬���ǾϹ���л��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//��������
<voice name="����" class="����" src="voice/md06/0140250a00">
���������Ժη�����

{	NwC("cg/fw/nwС�����y��.png");}
//������㣯�y��¡�
<voice name="����㣯�y���" class="����������" src="voice/md06/0140260e228">
���ǿɶ��ˡ�
�����Ǵӿ�������
����Ҳ������Զ����β��֮��ĵط�����

//������㣯�y��¡�
<voice name="����㣯�y���" class="����������" src="voice/md06/0140270e228">
�������Ƕ���������
����ȻҲ���˴Ӹ�Զ�ĵط�������Ϊ�����ࡣ��

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md06/0140280a00">
������ԭ����ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
��Ҳ����˵�����������Ӫ���Ǳ��ڽ��ܶ�����չ
�����Ľ��׵�������������������ǵľۼ�֮����
��Ϊ������������Ȩ��չ����������������ʧȥ����֮�أ�
�����������֡�

����������˵�����ް�������֮����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//��������
<voice name="����" class="����" src="voice/md06/0140290a00">
��Ŀǰ����ϣ��������������ɣ���

{	NwC("cg/fw/nwС�����y��.png");}
//������㣯�y��¡�
<voice name="����㣯�y���" class="����������" src="voice/md06/0140300e228">
��Ҳ���������ˡ�����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md06/0140310a00">
����ʲô����������𣿡�

{	NwC("cg/fw/nwС�����y��.png");}
//������㣯�y��¡�
<voice name="����㣯�y���" class="����������" src="voice/md06/0140320e228">
�������⣿
�����ݡ�ʳ���ҵ���ᶼ�ѷ���
�����Ͼ���Щ�ɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
���������ż�����
����ʵ����������Զ��׼����¡�

����֮����������˵��Ϊ���ص���������
����������䲻�������ì�ܰɡ�
������������������Ⲣ�����ҵ�������Χ�ڡ�
ֻ���ڴ��պ���������������

����������ֻ��һЩ��ϸ΢��С�¡�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
//��������
<voice name="����" class="����" src="voice/md06/0140330a00">
������˵���Ǻ�ԭס��֮��Ҳ�е���𡣡�

{	NwC("cg/fw/nwС�����y��.png");}
//������㣯�y��¡�
<voice name="����㣯�y���" class="����������" src="voice/md06/0140340e228">
����������Ϊ������Ⱥ������ӭ���˰���
���ܻ�������ָ�������ִ����

//������㣯�y��¡�
<voice name="����㣯�y���" class="����������" src="voice/md06/0140350e228">
��˵ʵ�����Һ�����<RUBY text="����">ס��</RUBY>�����顣
���Լ��ĳ���ͻȻӿ������������ڵ�
�һ��˭����о����ɡ���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md06/0140360a00">
��������

{	NwC("cg/fw/nwС�����y��.png");}
//������㣯�y��¡�
<voice name="����㣯�y���" class="����������" src="voice/md06/0140370e228">
�������Ƕ�����Ϊ��Ͷ��·���������
�����������ǹ���ȥ������Ҳ�첻������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md06/0140380a00">
���š���

{	NwC("cg/fw/nwС�����y��.png");}
//������㣯�y��¡�
<voice name="����㣯�y���" class="����������" src="voice/md06/0140390e228">
������Ҳ����ϣ���ܱ����ǽ��ܡ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md06/0140400a00">
����ʲô�������ǹ�ϵ�񻯵�
�������¼��𣿡�

{	NwC("cg/fw/nwС�����y��.png");}
//������㣯�y��¡�
<voice name="����㣯�y���" class="����������" src="voice/md06/0140410e228">
����ָ�ŵ��£���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md06/0140420a00">
���ǵġ���

{	NwC("cg/fw/nwС�����y��.png");}
//������㣯�y��¡�
<voice name="����㣯�y���" class="����������" src="voice/md06/0140430e228">
������˵�����ǻٻ��ġ�
�����ǣ����ǲ�û����������

//������㣯�y��¡�
<voice name="����㣯�y���" class="����������" src="voice/md06/0140440e228">
��������������Ǹ����İ�����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0140450a00">
��������

{	NwC("cg/fw/nwС�����y��.png");}
//������㣯�y��¡�
<voice name="����㣯�y���" class="����������" src="voice/md06/0140460e228">
���ο����Żٻ�������Ҳ�ò����κκô��ɡ�
������������������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md06/0140470a00">
����ô�����Ǿ�����˭���ģ���

{	NwC("cg/fw/nwС�����y��.png");}
//������㣯�y��¡�
<voice name="����㣯�y���" class="����������" src="voice/md06/0140480e228">
��˭֪����
��û׼��ĳ���һ�Ķ�����ɣ���

//������㣯�y��¡�
<voice name="����㣯�y���" class="����������" src="voice/md06/0140490e228">
������Ļ�������Ȼ�Ҳ�Ը��ô�롭��
����Ҳ�п�����ס��Ϊ����������Ǹϳ�ȥ
�Ľ�ڣ��Լ�����Ū����Ȼ�󡪡���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md06/0140500a00">
��������

{	NwC("cg/fw/nwС�����y��.png");}
//������㣯�y��¡�
<voice name="����㣯�y���" class="����������" src="voice/md06/0140510e228">
����������
���Ҳ��������˵˵����

//������㣯�y��¡�
<voice name="����㣯�y���" class="����������" src="voice/md06/0140520e228">
�����ǣ��Ⲣ�ǲ����ܡ�
����Ҳ֪��ס���ڻ������ǡ�����֮
�˴˵����鶼���ɡ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0140530a00">
������Ҳ����˰ɡ���

{	NwC("cg/fw/nwС�����y��.png");}
//������㣯�y��¡�
<voice name="����㣯�y���" class="����������" src="voice/md06/0140540e228">
���������ǵġ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
�����ƿ����ߣ���¶��Ц��
������ƣ��������Ц�ݡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(1500, 1500);

}

..//������ָ��
//�Υե����롡"md06_015.nss"