//<continuation number="930">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md03_004.nss_MAIN
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
	#bg045_���ӘS�ǹ������g_03a=true;
	#ev002_�y�Ǻ��¼�����`����=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md03_005.nss";

}

scene md03_004.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"md03_003.nss"


//������

//���ۤ�Τ�ʤ��ԥ�`�ȩ`����ӡ�󤬤���Τǡ������}�Ǳ�ʾ�Ǥ� inc�Ѿ�

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\", 5000, "BLACK");


	OnBG(100, "bg045_���ӘS�ǹ������g_03a.jpg");
	FadeBG(0, true);

	Delete("�ϱ���");
	FadeDelete("�\",1500,true);


	SoundPlay("@mbgm30", 0, 1000, true);

	SetFwC("cg/fw/fw�衩��_�դ�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0040010a07">
������������

{	FwC("cg/fw/fw�����AȾ_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/md03/0040020a00">
��������

{	FwC("cg/fw/fw�衩��_�դ�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0040030a07">
��������������������

{	FwC("cg/fw/fw�����AȾ_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/md03/0040040a00">
��������

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0040050a07">
�������Ǹ�������

{	FwC("cg/fw/fw�����AȾ_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/md03/0040060a00">
�������

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0040070a07">
������ʱ�򡭡�
���Ҿ��ã��ǲ��Ƕ���˵��ʲô��������

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md03/0040080a00">
��˵������

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0040090a07">
���ܺû��Ǻ����֮��ģ�
��ϲ��������������Ҳ���ſ�����֮��ġ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0040100a00">
��Ŷ������

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md03/0040110a00">
������������

{	FwC("cg/fw/fw�����AȾ_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/md03/0040120a00">
��Ҳ�ԡ�
��ûʲô���ˣ����ȥ�ɡ���

{	FwC("cg/fw/fw�衩��_ŭ��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0040130a07">
�������Ǹ���Ѫ�����ħ��!!��

{	FwC("cg/fw/fw�衩��_�n�y.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0040140a07">
����˵��������ҵķ��䰡����

{	FwC("cg/fw/fw�����AȾ_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/md03/0040150a00">
��������ô����
��������ҳ�ȥ�𣿡�

{	FwC("cg/fw/fw�衩��_�@��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0040160a07">
��������Ȼ�����ˣ�
�������뷨һ�ǰ�㶼û�С���

{	FwC("cg/fw/fw�����AȾ_����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0040170a00">
�����ǵ�Ȼ����

{	FwC("cg/fw/fw�����AȾ_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/md03/0040180a00">
���㲻���ȥҲû��ϵ����
���Ǿ���ʵ��ȥһ�ߵĽ�����š�
�ǵò�Ҫ���¡���

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0040190a07">
�������ǡ�����

//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0040200a07">
����Ϊʲô�ء���
������о������ҷǳ������ء�����

{	FwC("cg/fw/fw�����AȾ_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/md03/0040210a00">
���������𣿡�

{	FwC("cg/fw/fw�衩��_�n�y.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0040220a07">
���ҿɲ������ոն����˼ҵ�һ�ξ�ʹ����ĥ
�˼ҵ�û���Ա�̬��Ű��˵�����ֲ������ε�
���롪��!!��

{	FwC("cg/fw/fw�����AȾ_��Ц.png");}
//��������
<voice name="����" class="����" src="voice/md03/0040230a00">
������ʲô���ֵġ�
��������ܰɣ���

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0040240a07">
�������ء���Ȼ��ô˵��
��̫�����ˡ�����Ů�ԵĴ�У���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
�������ӿ�ʼ����વĲ���裬�������������
�������������Ҷ���������ˣ��ҿ�û��������ɰ���
��������

���ʶȵ�ƣ�͸����Ҽ�����˯��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�衩��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0040250a07">
���������ǰ�����

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md03/0040260a00">
��������

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0040270a07">
����缸��ûʲô�仯�ء�
���������ء���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
���������Ͼ������ɪ����һ�ߣ������
�յ�����ߣ�˵��������ֵĻ���

�����������ԣ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�����AȾ_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��������
<voice name="����" class="����" src="voice/md03/0040280a00">
����ղŲ��ǻ�˵��û�����𣿡�

{	FwC("cg/fw/fw�衩��_�n�y.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0040290a07">
��˵��˵�ˡ�
���ѵ������𣿡�

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0040300a07">
�����Ǹ�����һ�Ⱦ����Զ��ˡ�
�����񱻹���������Ⱦ���˶�
<RUBY text="����������">���������</RUBY>�ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����롤����AȾ

	EfRecoIn1(18000,600);

	CreateTextureSP("���ٽ}10", 1000, Center, Middle, "cg/ev/ev002_�y�Ǻ��¼�����`����.jpg");

	EfRecoIn2(300);
	WaitKey(1000);

	EfRecoOut1(300);

	Delete("���ٽ}*");

	EfRecoOut2(600,true);



	SetFwC("cg/fw/fw����_�a��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��������
<voice name="����" class="����" src="voice/md03/0040310a00">
��������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0040320a00">
����ȷ������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
��������Ұ�����졣
����ʳ��ɱ¾���ַ�������Ϊ��ԭʼ����ķ�²���
��֮�ܡ�

�����֮�£�����˼��������˵����
������ֻ�ܳ�Ϊϡ�е����ӡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�����AȾ_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//��������
<voice name="����" class="����" src="voice/md03/0040330a00">
��û�б������һ�������𣿡�

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0040340a07">
���š���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0040350a00">
����Ȼ�µ����ŷ�����������ȷʵ�����
��Ϊʲô��û�б������������

{	FwC("cg/fw/fw�����AȾ_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/md03/0040360a00">
����֪���𣿡�

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0040370a07">
���ǰ�������

{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0040380a07">
��˵������һ��Ļ����ǲ�����Ϊ������Ը
�ǡ����������������ء�
����ɷ蹷�Ļ��ͱ��������˰ɣ���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md03/0040390a00">
��������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0040400a00">
����˵��ʵ��һ���أ���

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0040410a07">
���ǽ��еķ�����
����Ϊ���㲻��װ���У����ߺͽ���Ҳ�ǽ���
��ŵġ��ǲ���һ���̶ȵ���Ⱦ����������
�����ˣ���

{	FwC("cg/fw/fw�����AȾ_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/md03/0040420a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
�����߶���˵������
���ĸ�����ȷ���ء��������߶��ԣ������������
��ȫ��ͬ��ԭ���ء�

�����ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//��������
<voice name="����" class="����" src="voice/md03/0040430a00">
������������ν����

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0040440a07">
���ǰ���
����Ҫ��ֻ��һ�㡣��

{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0040450a07">
����紦�����״̬��������Ҫ�ġ���

{	FwC("cg/fw/fw�����AȾ_����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0040460a00">
�������ǰ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
�������Ľ����ǶԵġ�
��������һ����ȫ��ֻ����һ��ʵ����Ψһ������ġ�

���ն�������Ϊ�˱����ն�����ܵ������������

������֮�ﱻ��й�����⡣
�����ڵ������ĺ�����ã����˵�ǻ����졣��������
�����������£���񶼿�Ҫ�벻�����ˡ�

������Ϊ��Ψһ����Ը�������ۺ����ֶζ���������ϧ
�ɡ�
����������������һ˿������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�衩��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0040470a07">
�����ԣ���Ҫ���ĵ���ֻ��һ������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0040480a00">
����ʲô����

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0040490a07">
�������ø��ָ�ԭ״�ļһ
������ܥԽ���Ǽһ��

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0040500a00">
��Ŷ������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
��������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�衩��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0040510a07">
��������Ǽһ��û�к��ˣ��Ӹ�����˵
��Ҳ�����봦�������
��Ҫ�ݻٵĻ�������ʱ��������������

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md03/0040520a00">
������������

{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0040530a07">
�����ݽ������������ܻ����ô���
������֮�����������ɡ���

{	FwC("cg/fw/fw�衩��_ͨ��b.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0040540a07">
���Ǽһ�û���ܿ�һ��֮�����ߡ�
��Ҳû��ͬ���������İɣ���

{	FwC("cg/fw/fw�����AȾ_��Ц.png");}
//��������
<voice name="����" class="����" src="voice/md03/0040550a00">
��û�С���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
�������ʱ�������ɳ�Ϊ֪�����˶���ʣ�޼���
��Ψһ����������ͬ��ȥ�Ķ����������䲻������֮�С�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�����AȾ_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//��������
<voice name="����" class="����" src="voice/md03/0040560a00">
����һ��˵�������Ǽһ���������ǰ��
Ҳ���������һָ�ԭ������

{	FwC("cg/fw/fw�衩��_ͨ��b.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0040570a07">
�������š�
������һ����û�����ˡ���

{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0040580a07">
���Һ͸�����Ŀ�ĵġ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
��Ŀ�ġ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
//��������
<voice name="����" class="����" src="voice/md03/0040590a00">
�������ѹ⡪����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
����������ȥΨ��˥������һ;��������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�衩��_Ц�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0040600a07">
�����<RUBY text="��">��</RUBY>��
����ɳ�Խ����Ĵ��ڡ���

{	FwC("cg/fw/fw�衩��_ͨ��b.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0040610a07">
����������������������������

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md03/0040620a00">
������������

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0040630a07">
���㻹��һ�������������ܺ����ı����ء���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0040640a00">
������������ȫ���Ǻ�������

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0040650a07">
����ʹ������ƪ����Ҳ��ô�룿��

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0040660a00">
�����˷������ÿ��ɡ�
����Ȼ˵<RUBY text="��������������">�����֮������</RUBY>����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0040670a00">
��Ҫ����������µ��˲������ӽ�ˮ�ˡ���

{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0040680a07">
�����������е���
��˵����������Ŀ���ǡ�����<RUBY text="����">����</RUBY>�ۡ��ء�
��˵�������Լ�д��ʱ������Ͳ����š���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md03/0040690a00">
��������

{	FwC("cg/fw/fw�衩��_ͨ��b.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0040700a07">
�����ǡ������ڲ�һ���ˡ�
����˯�ڵص��֮��Ĵ����Ѿ���֤ʵ����

{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0040710a07">
����Ϊ�Ʋ�����ڵ��Ǹ����ں��ܸ��ܵ���
���������ˡ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0040720a00">
����������

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0040730a07">
����Ȼ��ȷ�ϴ��ڡ���
��֮��ֻʣ������������

{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0040740a07">
����ή�ٵġ���硣��

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0040750a00">
������������

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md03/0040760a00">
����������

{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0040770a07">
����Щ�����ڽ̾Ͳ����ø������ķ���Ȱ��
�����
���������ղ�����ͽ�ġ���

{	FwC("cg/fw/fw�����AȾ_��Ц.png");}
//��������
<voice name="����" class="����" src="voice/md03/0040780a00">
����������֧������ƻ���
�����������޴���̸���ϵ��λ������ù�
����ȥ��Ψһϣ���Ļ�����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0040790a00">
�����ǹ������ֻ���ǻ��롪��
�����Ҿ�˺����ʵѡ����롣��

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/md03/0040800a00">
�������赲�ҵ��������ϵĺ��˺����

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0040810a07">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
��û��
���͸á�����ô����

��������Ҵ��ڵ�Ψһ���塣

�����Ŵն��⣬Ϊ���Ϲ����������������꣬
����������Ǵն���������᳹���׵�ְ��!!

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	OnSE("se����_����_�ڸ���", 1000);


	SetFwC("cg/fw/fw�衩��_�դ�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0040820a07">
�������š�����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0040830a00">
������������

{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0040840a07">
�����١���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0040850a00">
��ͻȻ���ʲô����

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0040860a07">
�����Ǳ�ʾ�ҳϵ��ǡ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0040870a00">
��������

{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0040880a07">
��������ҵ����ˡ�
��������Ҫ������Ϊ�У��Ҿͻ��Ϊ
������������С���

{	FwC("cg/fw/fw�衩��_ͨ��b.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0040890a07">
���һ��Ϊ�����ܡ�ǹ��������硣��

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0040900a00">
������衣��

{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0040910a07">
������˵����һ���߰ɡ�
����硣��

{	FwC("cg/fw/fw�衩��_ͨ��b.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0040920a07">
��ֱ�������սᡣ��

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md03/0040930a00">
�������š�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(1500, 1500);

}

..//������ָ��
//�Υե����롡"md03_005.nss"