//<continuation number="800">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md03_018.nss_MAIN
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
	#bg028_��亣ǣȣѻ���_03=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md03_019.nss";

}

scene md03_018.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"md03_017.nss"


//������M�v܊���ء�ҹ

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\", 5000, "BLACK");


	OnBG(100, "bg028_��亣ǣȣѻ���_03.jpg");
	FadeBG(0, true);

	SoundPlay("@mbgm21", 0, 1000, true);

	Delete("�ϱ���");
	FadeDelete("�\",2000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
��������亡�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StR(1000, @50, @0, "cg/st/st�������_ͨ��_˽��.png");
	StL(1000, @0, @0, "cg/st/st�衩��_ͨ��_˽��.png");
	FadeStL(300, false);
	FadeStR(300, false);



	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="����" src="voice/md03/0180010a00">
���ǣȣѵ�ѧ�����ʣ���

{	FwC("cg/fw/fw�������_ͨ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md03/0180020a13">
���ǰ���
����û��˵�𣿡�

{	FwC("cg/fw/fw�������_����.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md03/0180030a13">
������裬��һ��Ҳ�����顣
������˵�����ڿ����Ů���ǡ�����

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0180040a07">
�����ڿ�û��ϵ��
����������ѧ������Ҳ��ô����
�ɵ����°ɣ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
��˵��Ҫȥ���ֶ�����ڣ����Ǿͱ�����������
��פ�����ء�
�����ɡ����ƺ��������������ݡ�

���������˵�������������޵Ĵ����ǲ����Ļ���
��ô�ڣǣȣѵĴ�������ֶ��������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�������_˼��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������ա�
<voice name="�������" class="�������" src="voice/md03/0180050a13">
����˵����
����ּ��������Ӷ������ˡ���

{	FwC("cg/fw/fw�������_ͨ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md03/0180060a13">
�����Ǻ�����ǰһ����Ѱɣ�
��û��ɡ���

{	FwC("cg/fw/fw�衩��_ͨ��b.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0180070a07">
��ȷʵ��ˡ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0180080a00">
������ô֪������

{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0180090a07">
����������������
����<RUBY text="����">��֪</RUBY>�˺�������ڲ�������״̬����

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0180100a07">
����������ʱ�����Ļ��������ܴﵽ����
������������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0180110a00">
������Ϊʲô��������������

{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0180120a07">
����Ů�����ܡ��

{	FwC("cg/fw/fw�������_����.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md03/0180130a13">
���治֪�������������㡭����

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0180140a07">
���ۣ�����һ˵�͸о���ĺܺ�����
���㲻��˵�ģ���

{	FwC("cg/fw/fw�������_����.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md03/0180150a13">
�������鷳�˰���
�����һ�졣��

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0180160a07">
���������ˡ���������ô�������ø����ء�
��������ͬ־�Ѿ��뷽�跨�����ܽӽ�������
�ǵ�Ҫ���ˡ���

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0180170a07">
����ּ�����<RUBY text="����">���Ǻ�</RUBY>�ľ���ֻ��һ��
�Ѿ��ǺܺõĽ���ˡ���

{	FwC("cg/fw/fw�������_ͨ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md03/0180180a13">
���ǰ���
��ֻ��һ��Ļ���Ӧ������취��ǰ�İɣ���

{	FwC("cg/fw/fw�������_˼��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md03/0180190a13">
����ũ�����ƺ����ڵ����ջ������տ�չ��
ս�ġ����һ���취˵�����ġ�
���Ҹ��ʵ������ɡ���

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0180200a07">
�����Ͱɡ���

{	FwC("cg/fw/fw�������_����.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md03/0180210a13">
����˵�û���ɴࡣ
������Ϊƾһ����ȥ��ƭ�Ǹ���ũ����
Ҫ�Ѷ�󾢰�����

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0180220a07">
���Ҳ��ܡ���

{	FwC("cg/fw/fw�������_ŭ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md03/0180230a13">
������������ˡ�
���ѵ��ڿ㣡��

{	FwC("cg/fw/fw�衩��_ŭ��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0180240a07">
���Ų����ء���

{	FwC("cg/fw/fw�������_�~��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md03/0180250a13">
���ն�������

{	FwC("cg/fw/fw�����AȾ_��Ц.png");}
//��������
<voice name="����" class="����" src="voice/md03/0180260a00">
���ѵ�������衣��

{	FwC("cg/fw/fw�衩��_�@��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0180270a07">
����������������!?��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����Ů������׏���

	StCR(1000, @-50, @0, "cg/st/st����׏�_ͨ��_˽��.png");
	FadeStCR(300, true);


//����������
	WaitKey(800);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��������
<voice name="����" class="����" src="voice/md03/0180280a00">
����������

{	FwC("cg/fw/fw�������_����.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md03/0180290a13">
����ѽ����<RUBY text="�̣������塡�ǣ���">��Ů</RUBY>������
�����������ֵط��ǻ�����

{	FwC("cg/fw/fw�������_˼��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md03/0180300a13">
���Ժ����������ѵ�����ڿ㡣��

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0180310a07">
���Ѱ��Ѱɡ�
��ֻҪ�����ң�����ô�Ѿ���ô�ѡ���

{	FwC("cg/fw/fw�衩��_ŭ��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0180320a07">
���������ҵȵȡ�
�������������ը����������ô������
�����ﰡ����

{	FwC("cg/fw/fw�������_ͨ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md03/0180330a13">
��������һ�˵Ļ�����ȫ�޺��ġ�
�����õ��ġ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0180340a00">
��ը������

{	FwC("cg/fw/fw�������_Ц�.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md03/0180350a13">
���������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



//���ܥå���������С��������

	SetVolume("@mbgm*", 1000, 0, null);


	CreateWindow("�}�ݷ���", 6000, Center, -50, 1024, 388, true);
	SetAlias("�}�ݷ���","�}�ݷ���");
	CreateColorEX("�}ɫ100", 16050, "BLACK");
	CreateTextureEX("�}�ݷ���/�}�ݱ���", 16100, -100, -300, "cg/bg/bg028_��亣ǣȣѻ���_03.jpg");
	SetShade("�}�ݷ���/�}�ݱ���", HEAVY);
	Zoom("�}�ݷ���/�}�ݱ���", 0, 2000, 2000, null, true);


	CreateTextureEX("�}�ݷ���/�}���}", 16200, 60, -130, "cg/st/resize/st����׏�_ͨ��_˽��l.png");
	Move("�}�ݷ���", 0, @0, @128, null, true);

	Request("�}�ݷ���/�}�ݱ���", Smoothing);
	Request("�}�ݷ���/�}�ݱ���", Smoothing);

	Move("�}�ݷ���/�}�ݱ���", 60000, @-100, @0, null, false);
	Move("�}�ݷ���/�}���}", 60000, @-200, @0, null, false);

	Fade("�}ɫ100", 300, 300, null, false);
	Fade("�}�ݷ���/�}�ݱ���", 500, 1000, null, false);
	Fade("�}�ݷ���/�}���}", 500, 1000, null, true);



	WaitKey(800);

	SoundPlay("@mbgm02", 0, 1000, true);


	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��������
<voice name="����" class="����" src="voice/md03/0180360a00">
������������

{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/md03/0180370a00">
������ʲô����

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0180380a07">
������˵����
����������������Ϊ���������

{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0180390a07">
����һ��ǽ�פ������߻��ܡ�
�����������׵�����

//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0180400a07">
��ӵ���ܽ������ֳ�<RUBY text="��������">��Ϊƽ��</RUBY>֮�ƻ�����
����ը������

{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/md03/0180410a00">
��������������������

{	FwC("cg/fw/fw�������_ͨ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md03/0180420a13">
��˵����һ�롣
�����൱�ڵ���������

{	FwC("cg/fw/fw�������_˼��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md03/0180430a13">
����Ϊ��ҩ�Ľ�����������������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0180440a00">
������������

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0180450a07">
���������𣬸�磿��

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0180460a00">
����Ҫ̫�߹��ҵ������������

{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0180470a07">
�����ǣ�һ����֪���ⲻ���˰ɣ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ܥå���������С��������
	WaitKey(800);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��������
<voice name="����" class="����" src="voice/md03/0180480a00">
�������š���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
�����ò���ͷ���ϡ�
����Ů�����۾���ֱ��������һ����

���⡪��ȷʵ��ͬ��

�����Ǵ��������ϵ��ˡ���
���������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	FadeDelete("�}ɫ100", 500, false);
	FadeDelete("�}�ݷ���*", 500, true);
	Delete("�}�ݷ���*");

	SetFwC("cg/fw/fw�衩��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0180490a07">
��һ�����ˡ����ǰ�Ϻ�ġ�
��ʣ�µ�һ����һ����е����

{	FwC("cg/fw/fw�������_˼��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md03/0180500a13">
����������ڤ����ı�����
��Ȼ�󡭡��ƻ�һ�С���

{	FwC("cg/fw/fw�������_ͨ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md03/0180510a13">
�������׵���
��������ʷ�������ǿ���ƻ��ߡ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0180520a00">
����������
�����Ҫ��ô�ã���

{	FwC("cg/fw/fw�衩��_ͨ��b.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0180530a07">
������ּ�����ǰһ�졣
���ɣǣȣѵĿ�ũ�����������Ϯ���ӽ���
��Ϯ�����֡���

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0180540a07">
��Ͷ�¶����׵���
��Ϊ�˽�Ϊ���������������ޱ���һ��Ĩɱ��
Ϊ�����մ�͵�֧��Ȩ����

{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0180550a07">
�����ǣ�������Ŀ�ġ���
���������Ŀ�Ĳ�����ˡ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0180560a00">
��������

{	FwC("cg/fw/fw�������_ͨ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md03/0180570a13">
��������Ϊ���ö����׵��������Ǻš���

{	FwC("cg/fw/fw�������_˼��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md03/0180580a13">
�������ƻ����ƻ�����

{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/md03/0180590a00">
������ʲô!?��

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0180600a00">
���������Ļ�������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
����ը���������ֳǺ�������ȫ��ը����Ƭ���޷���
�����������ж���Ϊ������Ҳ�����������⡣
�����ǡ�������һ���������ⶼ��������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�衩��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0180610a07">
����硣
����ʵ˵������

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0180620a07">
������һ���Ĳ���
���п��ܣ������������ĵ���������������
��ը�ɡ���

{	FwC("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0180630a07">
����������˵�������ֿ����Ժܴ󡣡�

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0180640a00">
������衪����

{	FwC("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0180650a07">
�������ʲô���������ն����Ȼ��������

{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/md03/0180660a00">
������������

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0180670a07">
������Ψһ��ϣ������

//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0180680a07">
�������׵������Ǻš�
��ʹ���޳�����ޣ���Խһһ�幫����ϰ�����

{	FwC("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0180690a07">
����ͨ����ĵ�·����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0180700a00">
�����������������𣿡�

//��������
<voice name="����" class="����" src="voice/md03/0180710a00">
������ģ��������𣿡�

{	FwC("cg/fw/fw�������_˼��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md03/0180720a13">
���п��ܡ���

{	FwC("cg/fw/fw�������_ͨ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md03/0180730a13">
���ն����п��ܳ�Ϊ��
�������п��ܼ����񡣡�

{	FwC("cg/fw/fw�������_�~��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md03/0180740a13">
���п���!!��

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0180750a00">
������������

{	FwC("cg/fw/fw�������_ͨ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md03/0180760a13">
����Ҫ��ս��
�������Ҳ�ǡ���

{	FwC("cg/fw/fw�������_����.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md03/0180770a13">
�����أ�
��ͣ���𣿡�

//��������ա�
<voice name="�������" class="�������" src="voice/md03/0180780a13">
�������ն���������𣿡�

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md03/0180790a00">
������������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0180800a00">
������������ô���ܡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
��������ʲôѡ��

��������ϣ����ôģ������������˿�����硣
����������ܾȹ��Ψһ;���Ļ���

���Ҿͻ����һ�У�����һ�У�ץס����ϣ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(2000, 1500);

}

..//������ָ��
//�Υե����롡"md03_019.nss"