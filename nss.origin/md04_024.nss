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

scene md04_024.nss_MAIN
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
	#bg103_���ӘS������ٛg����_02=true;
	#ev912_��҆�¸o�ݳh���å�_a=true;
	#ev806_�����}����`�����Σ�_a=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md04_025.nss";

}

scene md04_024.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"md04_023vs.nss"


//���ٛg�ڡ�Ϧ

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\Ļ��", 5000, "BLACK");
	OnBG(100, "bg103_���ӘS������ٛg����_02.jpg");
	FadeBG(0, true);

	SoundPlay("@mbgm34", 0, 1000, true);


	Delete("�ϱ���");
	FadeDelete("�\Ļ��",1500,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
��<RUBY text="��������">�Ͽ�ս��</RUBY>������Ϸ���Եı仯��

���޷��ֵ����Ǿ���ǿ�ƹ�����������������ڵ�ʱ��
����������Ͽճ���һֻ���н�����
��һ˲�㵴ƽ�˳���ӭս�Ľ�פ�����������������
���Ͽա�

����פ�������ķ��н��ű���������ѹ�������壬����
���ˡ�
��Ҫ����Ҫ����ս���ǲ����ܵġ�����Ǵ����ȹ۲�һ
������ɣ�������������ڻ��ŷ��ؽ��ס�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StL(1000, @0, @0, "cg/st/st�衩��_ͨ��_�Ʒ�a.png");
	FadeStL(300, false);

	SetFwC("cg/fw/fw�衩��_Ц�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0240010a07">
��������������
�����˰���ʨ�Ӻ𣡡�

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0240020a07">
����ƾһ�ҷ��н���
��������������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md04/0240030a00">
�����Ҵ��ǡ�����

{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0240040a07">
��Ħ���ԡ�
���ǿ������㴨������
�����������е�Ψһһֻ���ͷ��н�����

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0240050a07">
����Ҫ��������������ѷɫ����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
����ɴ�ȷʵ�˲���
������ֻ��ԶԶ��ȥ��Ҳ֪������Ƴ��ڣ�
����ֻ�������Ӵ���ѡ�

�������ǵ���������ǿ�ķ��н�֮һ�ɡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="����" src="voice/md04/0240060a00">
����������֮�⡪����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
���ɽ������ص��������ս����Ҳ�쳣ǿ��

�����ŵĿ�ս��
�������������Ͽ�ս�����޷���ϸ��֪����������<RUBY text="����">�ѻ�</RUBY>��

������Ħ���Ե������Զ��������������׹��
����װ��ǹ�ڲ��ǡ������ձ���Ϊ����ϣ����Ϊ��һ��
<RUBY text="���ģӣ�">���������������</RUBY>��<RUBY text="�ȣ֣���">���ٳ��׵�</RUBY>��


�����Ҿ��Ⱥ�����Ҳ̫���ˡ�
�����Ǳ�Ķ��������£������µġ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��������
<voice name="����" class="����" src="voice/md04/0240070a00">
�����ǡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
//�����΍u�λ�҆��

	EfRecoIn1(18000,600);

	CreateTextureEX("�}����900", 2001, Center, Middle, "cg/ev/ev912_��҆�¸o�ݳh���å�_b.jpg");
	Fade("�}����900", 0, 1000, null, true);

	
	EfRecoIn2(300);
	
	WaitKey(1500);
	
//���k��h
//������

	EfRecoOut1(300);
	
	Delete("�}����*");

	CreateTextureSP("�h", 15000, @0, @0, "cg/ev/ev806_�����}����`�����Σ�_a.jpg");


	EfRecoOut2(600,true);

	Wait(500);

	SetFwC("cg/fw/fw�衩��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0240080a07">
�����ڡ�
������������ʽ���������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
�������ǿ������ҵ��뷨�㣬����貹��˵������
��Ȼ���ּ���һ�䡣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�衩��_Ц�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0240090a07">
����������Ӣ��ʱ�����սᡣ��

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md04/0240100a00">
�������ս᣿��

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0240110a07">
��û����

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0240120a07">
��ս����Ӣ���ǵ�ʥ��
�������ӽ����򡢼��ҽ��桢�����뼼����
����������ֻ�д򵹶��ֵ����߲��ܽ���ʤ������

{	FwC("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0240130a07">
�������Ժ󽫲���������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
���������ָָ����ա�
�����ս���ٴ�չ����

�������������֮Ϊս�������ʺϡ�
���㴨��������ʽ���ƽ�פ�������ʣ���������
��ȫ���迿�������Զ�������湥�������ܽ�����䡣

������˵��ս��������������ԡ�
����׼ȷ��˵���������ԡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�衩��_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0240140a07">
������Ҫ�����������Լ�������
����Զ�������������׵ĵط���׼�����
���С���

{	FwC("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0240150a07">
������û��Ӣ�۵ĳ������ᡣ
����ʹ����ս����Ӣ�۳����ˣ�Ҳֻ���Ϊ
�ӱ��Ķ�ʳ���ѡ���

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0240160a07">
����Ϊ����ʽ����
����������֮�ϵ��������ڵ����ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	FadeDelete("�h",1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
�����ҵľ���

���ν�����ǹ��Ӣ��ͦ���Ĵ�Ӣ�۹���ʿ�ǡ���������
һ�η������޷�ʵ�֡�
���ڳ�Ц��ľѻ��£�����׾ٱ㱻�򵹣�ͽ�͵���ȥ��

����һ˲�䣬�Ҳ����������ˮ����Ѿ�����������Ϊ
�з������ǹ����ˡ�
����ͬ���ܱ�ʱ�����˳����������˵ı�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//��������
<voice name="����" class="����" src="voice/md04/0240170a00">
��ʱ���ı����𣿡�

{	FwC("cg/fw/fw�衩��_ͨ��b.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0240180a07">
�����˾�Ҳ�ڲ��ϸ������ٳ��׵���
�����ý�����ʵս����

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0240190a07">
��Զ�����໥�������Ϊս����ȫ����
�������������ս������ʧ����

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md04/0240200a00">
������������

{	FwC("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0240210a07">
����������ʱ�������޷���������

{	FwC("cg/fw/fw�衩��_ͨ��b.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0240220a07">
��Ӣ�۲����ڵĻ���Ҳ��û��ħ����
��Ҳ��û����������������ء���

{	FwC("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0240230a07">
�����ԣ��������ڸɰɣ���硣��

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md04/0240240a00">
�������񡭡��𣿡�

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0240250a07">
����������ϵ�ʱ����
������<RUBY text="����������">������</RUBY>����

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0240260a07">
����������ץ���ĺá�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
������Ľ�פ��Ҳ��ʼ���ˡ�

����ս�������ǵĹ����Կ�ս��Ϊ��Խ��Ҳ���ǿ���
��ը֧ԮҪռ�ܴ�һ���֡�
������ʧȥ������ƣ���ȻҪ���¿�����ս��ʽ��

����������ȡ��һ��ʱ�䡣
������������Ҫ�ģ��㹻���ӵ����Ǻž��ѵ�ʱ�䡣

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(1500, 1500);
}

..//������ָ��
//�Υե����롡"md04_025.nss"