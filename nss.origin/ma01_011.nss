//<continuation number="1570">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma01_011.nss_MAIN
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
	#ev001_�y�Ǻ��¼�����`����=true;

	#bg016_���@a_02=true;
	#bg013_�`�}���a_02=true;
	#bg013_�`�}���a_03=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	#voice_on_��������=true;

	$PreGameName = $GameName;

	$GameName = "ma01_012.nss";

}

scene ma01_011.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"ma01_010.nss"

//�����@

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}ɫ100", 1500, "Black");
	Delete("�ϱ���");


	SetFwC("cg/fw/fw���w_�Ӥ�b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0110010b56">
���桪���ķǳ���Ǹ����

{	#voice_on_��������=true;
	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma01/0110020a00">
���ǡ����Ѿ�������ǵ�л���ˡ�
����̧��ͷ������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	PrintBG("�ϱ���", 30000);
	CreateTextureSP("�}����10", 10, Center, Middle, "cg/bg/bg016_���@a_02.jpg");

	SoundPlay("@mbgm27",0,1000,true);
	FadeDelete("�ϱ���", 1000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0021]
�����ڵ����ˣ�������Ǹ�����ˡ�

�������������Ǵ��������鲻�ɷ�˵��ͻȻ�����򵹣�
�ַ�����һ�����ػ�æ����ǰ��������Ǹ����ȴ����
���ĵظ����ţ�����һ����Ҳû�о�ԭ�������ǡ�

����ô�õ����һ��ǵ�һ�μ�����
����ô˵�أ���ֱ���޵к��˵��Ը�ɡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�ұ�_Ц�b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0110030b43">
��������ô˵��������̶����е�
��������ء���

{	SetComic(@0,@0,15);
	FwC("cg/fw/fw���w_ͨ��b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0110040b56">
���㳬���¸Ͽ���졣��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ܤ���
	OnSE("se���L_����_Ź��02",1000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0041]
����ȭͷ��ס���ŷϻ�������졣
����ʵ����Ҳ���ǲ�ͬ�⡣

������Ϊ��԰���ε����ֳ���������ƣ�����
������ֱͦ�������š�
�����ǲ�û�и��˹��ھ�����ӡ��һ����
��Ϊ����������ϰ���Ѿá�

��������ô�������ԭ��ô��
��������ô˵�����Ҹ��Ӱ�������Ϊ��Щ�ձ��ɡ�
�������ǡ�

�����ӵĶ�ͷ�����Ż��������ࡣ
��������������Ȼ���һ�����̾ͺá���
�����������ң�һ�䱧ԹҲû�о�ԭ�¶Է�
�ǲ����ܵġ�

����ôһ�룬��Ȼ���ޱȿ����ػ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwС��_�Ӥ�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0110050b33">
���Բ������ʮ�ֶԲ���
���������һ����ǣ���ȫ�޿ɾ�ҩ�ı�����
������ȥ��ֹҲһ�㶼��������

{	FwC("cg/fw/fw���w_���a.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0110060b56">
���Բ���˳��һ���Һ������ڶ���֮ǰ
�Ǳ��Ǹ�Ů����Ϊ���Ǽ��ʹ�����ӡ��
������Щ���ŵ�һ����ĺܶԲ��𡣡�

{	FwC("cg/fw/fw�ұ�_����.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0110070b43">
��˳��һ������Ȼ��ʵʩ���������������
���Ǳߵ���������һ���ҵĸ��˼����Լ�
�������鷳����ķǳ���Ǹ����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0071]
���Լ��γ������Աȵĳ�ª�����ǡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//��������
<voice name="����" class="����" src="voice/ma01/0110080a00">
�����޴󰭡���Ϊͷ�����Ӳ�Ĺ���
���Ƕ�ͷ��
���Խ����ڣ�����Ҳȷ��û��ɥʧ��
��ǧ��Ҫ���⡣��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0081]
��������������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//��������
<voice name="����" class="����" src="voice/ma01/0110090a00">
����֮����λ��һ����������ѲŻ�
���ҽ���Ϯ����Ϊ��
��������û�д�ɡ���

{	FwC("cg/fw/fw���w_���b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0110100b56">
���ţ���࡭����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0101]
��Ϯ������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw����_�a��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//��������
<voice name="����" class="����" src="voice/ma01/0110110a00">
�����ڴ���״��������˵�Լ��⵽����Ҳ����
û�е���
����������Ϊ�����ǵ������д���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0111]
�����������ҵ����þ������ǵ�����Ĵ�

�������Ϊʲô�����ص���˵ز���
������Ҳ�����ġ�������������һȺС���ǼӺ��ߡ�

��������������������
����С�ĵĻ����ܻ�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//��������
<voice name="����" class="����" src="voice/ma01/0110120a00">
����Ȼ�����ж������Ϊ��ʵ��������
�������أ�Ҳû�а취��
��ֻ�ǣ������ע�⡣���Լ����Ҳ��ᣬ
�벻Ҫ�ñ������ܵ��˺�����

{	FwC("cg/fw/fw���w_���a.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0110130b56">
���á��õġ���

{	FwC("cg/fw/fwС��_���.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0110140b33">
���������ġ�����

{	FwC("cg/fw/fw�ұ�_ͨ��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0110150b43">
�������������ܽ��ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0151]
��ι���⻰��ô�о���ô��֡�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw�ұ�_Ц�a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0110160b43">
����˵�������������塣
�������ʷ������е��Ǹ��������һ�������
��ΪʲôҪ��ȡ��˹�����ж�����

{	FwC("cg/fw/fw���w_����.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0110170b56">
���㰡����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0171]
��ȷʵ����Ҳ��������һ�㣬
������������û��˿����������ӡ�
��̹�ʻش���ʧ�����������ʡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
//��������
<voice name="����" class="����" src="voice/ma01/0110180a00">
�����ڵ��顭�����ǵ����ѣ�������ͬѧ��
ʧ���������

{	FwC("cg/fw/fwС��_�@��a.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0110190b33">
����!?��

{	FwC("cg/fw/fw���w_�@��a.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0110200b56">
����!?��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0201]
��ͻȻ����������С�ĺ��ҡ�
��������������������ôһ˵����ʵ��
�൱��Ȼ�Ļش�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�ұ�_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0110210b43">
����ѽ����ʵ˵��Ψ������Ҿ��ò����ܡ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma01/0110220a00">
����˵����

{	FwC("cg/fw/fw���w_����.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0110230b56">
������ұ���
{	FwC("cg/fw/fwС��_ŭ��a.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0110240b33">
��ͣ��ͣ�¡�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0241]
���治��������˵��ȥ�ˡ�
���Һ�С��һ���ס�����졣

�����������������ƺ��Լ����������˵�Ļ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw����_�a��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
//��������
<voice name="����" class="����" src="voice/ma01/0110250a00">
������ԭ����ˡ�
�������ʵ�����˼�룬�Ǿ�����ٻ����
�����Ĺ����ɡ���

{	FwC("cg/fw/fw���w_���a.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0110260b56">
���Ǹ�����࡭����

{	FwC("cg/fw/fwС��_���.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0110270b33">
�����ֱ�Բ���˵����������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma01/0110280a00">
��������ˡ�
��ʵ���ϣ���������󲿷���ͬ���衣
ʵ�������Լ�Ҳ�������յ���������
������ָʾ�ſ�ʼ�ж��ġ���


//��������
<voice name="����" class="����" src="voice/ma01/0110290a00">
�����Ҳ�������������ɡ�
����Ԥ��Ҳ�����֣����Ҳ�����
�õ���ɡ���

{	FwC("cg/fw/fw���w_ͨ��b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0110300b56">
����ɣ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma01/0110310a00">
�������޵���ɡ�
��Ļ���Էǳ�ʱ������Ϊ���ɣ�
������������ල֮�¡�
û����ɱ㲻���ж�����

//��������
<voice name="����" class="����" src="voice/ma01/0110320a00">
�����Ҷ�Ļ��������ж�����õ�������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0321]
������ԭ������������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0330]
//��������
<voice name="����" class="����" src="voice/ma01/0110330a00">
������˵������Ĵ󲿷ֹ������������ӹ�
���졣
����ˣ�ֻ�·���Ҫ��Ԥ�����Ա��Ҳ��ʵ�顣��

{	FwC("cg/fw/fw�ұ�_����.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0110340b43">
����ѽ������������ҵ�Ҳ��˵����
���������һ������������ΪʲôҪ�Ѳ����أ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma01/0110350a00">
����Ǹδ��ʱ˵������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE01","se���L_�|��_ȭ�|����01");
	MusicStart("SE01",0,750,0,750,null,false);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0351]
����������΢΢������ǰ��¶����
�������е���ǹ��
��֮ǰ�������������Ρ������֤����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0360]
//��������
<voice name="����" class="����" src="voice/ma01/0110360a00">
����������ʡ����������о�������Ա����
���ն���������

{	FwC("cg/fw/fwС��_ͨ��b.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0110370b33">
����Ա����

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma01/0110380a00">
����ְ���졭��
���������Ϊ�Ŵ��ĸ���������һ��Ĵ��ڡ�
 ��ע������ʱ����˽����̽һ�ࣩ��

{	FwC("cg/fw/fw�ұ�_�@��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0110390b43">
�����������ƶȰ�����

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma01/0110400a00">
��û�С���

{	FwC("cg/fw/fw�ұ�_����.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0110410b43">
��������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma01/0110420a00">
��������û�С�
�����ԣ�Ҳ���������޵ļ�ء���

{	FwC("cg/fw/fw���w_�@��a.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0110430b56">
��ԭ����ԭ����ˣ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0431]
���ܾ��ñ�ǿ����
�����������⻳�ɵ����������޷����֡�
���е�ȼ�˰���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwС��_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0440]
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0110440b33">
���������ղŻ�˵ûԤ��ɶ�ġ�����

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma01/0110450a00">
���ǵġ���Ȼ����Ϊ�Ҵ��ƶ�����˵����
�����ھ�����֯�����Ի����Ҳ�����
����Ԥ�����·�����

//��������
<voice name="����" class="����" src="voice/ma01/0110460a00">
���������־�����˽�ѹ�������Ա��
��Ϊִ����ָʾ�������𳤸����ṩ
��Ҫ�ľ��Ѻ�װ������

{	FwC("cg/fw/fw�ұ�_ͨ��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0110470b43">
����ô���°�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0470]
��Ҳ����˵����Ҳ�����µ�״���ﾡ���ܵ�Ŭ����ô��
����Ȼ��֪����������֡�����ֱ������֮ǰ��
��˵������̫�����������ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw�ұ�_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0480]
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0110480b43">
����ô���ն������������ǣ�
������֮ǰ��̸����Ӧ�ò��Ƕ��ɵ�
�����ɡ���

{	FwC("cg/fw/fw���w_���b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0110490b56">
������Ϊ���ðʧ�����ʵ�Ǹ����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0491]
������Ҳ��֪����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw����_�a��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0500]
//��������
<voice name="����" class="����" src="voice/ma01/0110500a00">
���������⡣
����֮���Ե�������ͬѧ��ʧ�٣�����Ϊ
���ִ��¼��������й���������

{	FwC("cg/fw/fw���w_ͨ��b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0110510b56">
��������

{	SetVolume("@mbgm*", 1000, 0, null);
	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma01/0110520a00">
���ҵ������ǽ�����Ǻ��¼�����

{	FwC("cg/fw/fw�ұ�_�@��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0110530b43">
������������

{	FwC("cg/fw/fw���w_�@��a.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0110540b56">
������������

{	FwC("cg/fw/fwС��_�@��a.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0110550b33">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0551]
��������

����������������������!?

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Fade("�}����10", 2000, 0, null, true);

	Wait(1000);

//����¾����`������
	CreateTextureEX("�}����100", 10000, Center, Middle, "cg/ev/ev001_�y�Ǻ��¼�����`����.jpg");
	SoundPlay("@mbgm34",0,1000,true);
	Fade("�}����100", 1000, 1000, null, true);
	Fade("�}����10", 0, 1000, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0553]
���������Ǻ��¼���
���������Ļ֮ʱ����Լ������ǰ��

����ׯ��ѧУ�����о��»��صȣ�����Щ�ڶ��˾ۼ���
������һʱ��������׵ػ���
�����Ȳ��ҡ������޷���⡣

������<RUBY text="����">ȫ��</RUBY>��
�������սᡣ

�����˱���ȥͷ­��
�����˱�ȫ��Ź��
�����˱������뻯����ʽ�������ϡ�
�����˱����������Ҷ翪��

����Щ�˱����µ�ɱ����һ�����͡�
����Щ���ھ�����ҵľ�ͷ��ͬ�������ɱ��

�����������սᡣ
��ֻ�����ѵĺۼ��д档
��δ�����ѵ�����������

������Ϊ�ζ�����
�����Ǳ�˭��ɱ��
��
���ش����ʵ�ֻ�г�Ĭ�Ļ�����

�������ܴ�
����Ϊ���˴�����ȫ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0555]
��Ψ�У����������д�ĺ���֤������˵��

���������˿������Ҿ緢���Ĵ�������ʲô������ա�
���������˷��֣�������У��������Ӱ�����ȥ��
��������ʱ����ɫ��ʲô�ɳ��ڿ��С�
���������������߶�����ɱ��������ô�����ˡ���

���Դ˴�����˽�֪���Ǹ����ڡ�
��ɱ¾�ߡ���ɫ�ġ�նɱ���ߵĴ��ڡ�

�����������ߣ�
��ɱ¾������
�����ѵ����ǣ�

��
�����������������������Ǻš�!!

������ն�����˵ı�����
�����Ǵ����ߵ��ƻ���
����������һ����ج�Ρ�

���޴��ֻ�С������
�������ֻ����˲�����
�������ֻ�������

������Ψ�У�������

��ȫȻ��������ɫ���ߣ������˴�ׯ�����к;�Ӫ��
���������Ǻ��¼���

��������ǰΪ���ˣ��ڹض��������õ�ȷ�ϵ�����
�¼��������������ޡ��ǣȣѷֱ���֯������
ר���Ѳ�������ȴ��û���κν����üĿ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����@
	FadeDelete("�}����100", 1000, true);

	SetFwC("cg/fw/fw���w_�@��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0560]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0110560b56">
��Ҫ��Ҫ��Ҫ�����Ǹ����Ǻ�!?��

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma01/0110570a00">
�������������ƽ�������̫���˸����ˡ�
�������£��б�Ҫ�о�����ɱ������
�ĸ����ֶΰɡ���

{	FwC("cg/fw/fw���w_�@��a.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0110580b56">
����������ʲô���°ɣ�
�����Ǹ�����û��ʤ����!!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0581]
���Ǽ�ֱ��һ���ġ�

����������ͳ˧��;���ȫ�����ߵ���ǿ���š�
��˭Ҳ�޷���������
��
��Ȼ��Ψһ����˵��������ڡ���

���Ǳ��Ǳ���Ϊ���Ǻţ�δ��ȷ�ϵ����ߡ�
��������ɱ¾�ߡ�������������Ҳ��Ϊʳ�ϵ�ħ�

���������©��Ļ���鱨���ƣ���ͷ��β��
���ţ����Ǻ����������������ߵ�һ���ж�
����ȫ��
����ƾһ�

����α��֪��
����ֻҪ�ἰ���Ǻţ�������һ��İ������ݱ�
��Ȼ�޴档һ������Ŀ����鱨���������Ѳ��
�������¶������ڡ�

��ǿ��������ޣ��·�Ҳ�ڵ��ӡ�

�����ˣ�Ǳ���ڴ�͸��ص�һ���ֵ�Ļ�ɣ�
Ҳ�н����Ǻ���ΪӢ�۵�����
��������ʹһ��������Ϊ�¼������ߡ�

������֮�����Ǻţ�
��ʵ��״���в����ˡ�����ʵ�ϣ�����ƾ����һ���
���Ѵ���֮���������޴򵹣���ô�������ʣ��Ǳ���������
<RUBY text="�ԣϣС��ϣΣ�">��ǿ֮��</RUBY>��

��������ʤ��
������ʤ�㡣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw���w_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0590]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0110590b56">
����������˵���ǺŵĴ�˵��ʵ��඼��
���ŵģ�������ô�����𣿡�

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma01/0110600a00">
������
�����������鱨���Ƶ�Ե�ʣ�����˵��
�����Ĵ��Ա�ʵ�����
����<RUBY text="����">��΢</RUBY>һЩ����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0593]
��ιι��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���w_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0594]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0110610b56">
�������ǡ������Ļ�����Ҫ��ô�졣
��׼�����ǰ���ǹȥս����!?��

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma01/0110620a00">
���ǵ�Ȼ�����ܡ�
�����ǹ��������Ϊ����ʽ�����֤
����ҵġ���δ��װ�ӵ�����

{	FwC("cg/fw/fw���w_���a.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0110630b56">
���ǲ��Ǹ���ֵһ������
  û��ս�����Ļ�����ôҲ��������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma01/0110640a00">
����ս��������

{	FwC("cg/fw/fw���w_ŭ��a.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0110650b56">
����Ҳû�ð���
����ν���ǺŲ����Ƕ�ħһ��Ĵ�����
������Ӯ�İ������Է��Ǿ�����ȥս��Ҳ
û���õļһΪʲô��Ҫȥս������

{	FwC("cg/fw/fw�ұ�_���.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0110660b43">
��������

{	FwC("cg/fw/fwС��_���.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0110670b33">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0671]
���ұ���С��û�в��졣
�����Ӳ�������֪�����������еĸ���������ͬ��

�������Ǻ�ս�������Ǻ�����
�������������˵���ֻ����ҿ϶�����Ϊ��Ϸ�԰ɡ�
����Ҳֻ��һЦ��֮��

��������ˣ�������ġ�
�������ı��飬�����۾����������������������ס�

������ֻ����·һ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw���w_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0680]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0110680b56">
��Ϊʲô��Ҫս���ء�����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma01/0110690a00">
����Ϊ����Ҫս������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ɥ�����Ġ�ιĄ�
//����åɥ����ȡ���åɥ���

	CreateColorSP("�Ą�", 10000, "#CC0000");

	OnSE("se����_��_��Ġ����02",1000);
	Fade("�Ą�", 1400, 0, null, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0691]
����������
��Ϊʲô���ش���˼򵥡�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw���w_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0700]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0110700b56">
����������˵����
������ȥս��Ҳ����Ӯ�ġ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma01/0110710a00">
�������ò�ս֮ʱ���١�
���Ƿ�ȡ��ʤ������������˼������Ҫ�𣿡�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ɥ�����Ġ�ιĄ�
//����åɥ����ȡ���åɥ���

	Fade("�Ą�", 0, 1000, null, true);
	OnSE("se����_��_��Ġ����02",1000);
	Fade("�Ą�", 1400, 0, null, false);

	SetFwC("cg/fw/fw���w_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0720]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0110720b56">
���ǡ��ǿ϶�����Ҫ�İ���
�����˵Ļ�������û���������𣿡�

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma01/0110730a00">
���ǵġ���Ҳ������Ϊ����ʹ�����ս������
Ҳ�������塣
������ֻ������������ѡ���


//��������
<voice name="����" class="����" src="voice/ma01/0110740a00">
�������˶���Ŀ���á�
�����ҵ�ս����ͬ��
����ʹ�ߵ��ڰף���Ҳ����ȡ��ʤ������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma01/0110750a00">
��������Ҳ�ǣ�����ս������֮��Ļ���
����Ϊ����ս������ս������������ϣ�
û�б�Ҫ����ʤ������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ɥ�����Ġ�ιĄ�
//����åɥ����ȡ���åɥ���

	Fade("�Ą�", 0, 1000, null, true);
	OnSE("se����_��_��Ġ����02",1000);
	FadeDelete("�Ą�", 1400, false);


	SetFwC("cg/fw/fw���w_�@��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0760]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0110760b56">
��������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma01/0110770a00">
������������ֹ���Ǻš�
��������ս�������˶��ѡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0771]
��ֱ�����
��û��˿�����͵����ƣ��ն�����ֻ�ǵ����أ����˵�ꡣ

����������ˡ�
����˵ʲô�أ�

������⡣
�����������˵�һ��һ�䡣

����Ϊ����ս������ս����
�������Ǿ仰���Ǹ����ϣ����ҡ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 1000, 0, null);
	SetFwC("cg/fw/fw����_�a��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0780]
//��������
<voice name="����" class="����" src="voice/ma01/0110780a00">
������˵�����곤���Ծӵ�����Ϊ�ǵĻ���
��Ȼĸ�����̵��ң���������ľ���ץס
���Լ�����֮��̸��ǳ�������۵������ˡ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma01/0110790a00">
��ʵ����̫�߳��ˡ���

{	FwC("cg/fw/fw���w_����.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0110800b56">
������û�С�����

{	FwC("cg/fw/fw�ұ�_ͨ��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0110810b43">
���Ǹ�����֮���ն�������Ϊ���Ǻ��¼���
ר���Ѳ�Ա�������ɵ�ʧ�ٿ���Ҳ��֮�й�
�����ڽ��е��飬�������ɣ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SoundPlay("@mbgm30",0,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0811]
���ұ����ܽᡣ
����һ���Χ�����Ų�������Ӱ�죬�������ҵĸо���
ʱ����������Ľ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0820]
//��������
<voice name="����" class="����" src="voice/ma01/0110820a00">
��������ˡ���

{	FwC("cg/fw/fw�ұ�_�@��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0110830b43">
����ô����Ҳ����˵�����⵽���Ǻŵ�
�Ⱥ�����
����������ô˵�أ��ҵ����ò�̫����
���Ǻ��¼�����

{	FwC("cg/fw/fwС��_ͨ��b.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0110840b33">
�����ء���
�������סլ�����������Ļ��������ܡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0841]
����Ҳ��ô��Ϊ��
�����ݴ��ţ����Ǻ�����̨��һ��Ĵ�Χ�ֺ���
��ֻ��׼һ���������£�ʵ�ڲ�̫�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0850]
//��������
<voice name="����" class="����" src="voice/ma01/0110850a00">
��������Ȼ�ᵽ���Ǻ��¼�����Ҿ���
���ģ��ɱ��ӡ�󡣵�����ܲ�����ȷ����

//��������
<voice name="����" class="����" src="voice/ma01/0110860a00">
�����Ǻ����Լ���ΪĿ��ĳ��ϣ�������
�¼����е��쳣�Զ�����עĿ������
�Ը���ΪĿ��ʱ���͵�����ɱ��ħ
֮����������Ա�ʶ�ơ�Ҳ�����������ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0861]
������ԭ����ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0870]
//��������
<voice name="����" class="����" src="voice/ma01/0110870a00">
��ֻ�ǣ��Ը�λ�������ұ�ʾͬ�С�
��Ҳ����Ϊ������ͬѧ��ʧ�ٺ����Ǻ�
��ֱ�ӹ�ϵ����

{	FwC("cg/fw/fw�ұ�_�@��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0110880b43">
��Ҳ����˵����

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma01/0110890a00">
���ǳ���Ǹ��
������֮���޿ɷ�档��

{	FwC("cg/fw/fw�ұ�_ͨ��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0110900b43">
����������
��û��û�£���Ҳû�취����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0901]
����������ǵ���ͷ�Ĵն��������ұ���æ���֡�

���ұ���Ϊ���ǻὫ��������鱨��Ϥ��
��֪���ˣ�����Ȼ����˵�ĺͲ���˵����
֮�䣬�������г߶ȵġ�
����Ҳ������Ȼ�ɡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0910]
//��������
<voice name="����" class="����" src="voice/ma01/0110910a00">
��������ˣ���Ȼʧ��
������������������λ����Ϣ��
��λ�Ա����������Ѽ������鱨��
������˵���ܿɹ󡣡�

{	FwC("cg/fw/fw�ұ�_ͨ��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0110920b43">
�����ǲ�����ɣ���

{	FwC("cg/fw/fw���w_Ц�a.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0110930b56">
����Ȼ����

{	FwC("cg/fw/fwС��_ͨ��a.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0110940b33">
�������˵����ɵ����飬������֮���á�
��ֻҪ������֪���ģ����ܶ��ٶ������㡣��

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma01/0110950a00">
����ָ�л��
�������ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0951]
�����ɵ���Ŀ�¾��Ĵն�������
�������������֮�ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���֥�å�������
	CreateColorEX("��ܞ", 15000, "#000000");

	SetVolume("OnSE*", 2500, 0, null);
	SetVolume("SE*", 2500, 0, null);
	SetVolume("@mbgm*", 2500, 0, null);

	Fade("��ܞ", 2000, 1000, null, true);



	WaitPlay("@mbgm*", null);

//����������
	Wait(3000);

//���֥�å�����
	CreateTextureSP("�}����10", 10, Center, Middle, "cg/bg/bg016_���@a_02.jpg");
	FadeDelete("��ܞ", 2000, true);
	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0960]
//��������
<voice name="����" class="����" src="voice/ma01/0110960a00">
�������š�
�������޵�ū��ó�ס����Լ�����������
���ߵ�Ӱ�ӣ��𡣡�

{	SoundPlay("@mbgm16",0,1000,true);
	FwC("cg/fw/fw���w_ͨ��b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0110970b56">
��������ʲôæ�𡭡�����

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma01/0110980a00">
���ǵġ����ǵ�Ȼ����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0981]
���ն�����΢΢��ס�
���ǳ������Ļ����罻�����أ���ʱ�����ö�֪��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw�ұ�_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0990]
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0110990b43">
��ʵ���������ء�
������������£���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma01/0111000a00">
��ū��ó���𣿡�

{	FwC("cg/fw/fw�ұ�_�@��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0111010b43">
���ǡ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma01/0111020a00">
��������νū���г��ں���Ĵ���ȷΪ��ʵ��
��Ļ�������ڴˣ����������á���
���ֿ����ԣ��޷�����û�С���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1021]
�����صĻش�
��������Ϊ���ĳɼ����¶����Ǻ�Σ�յİɡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwС��_���.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1030]
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0111030b33">
�����ʡ�����

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma01/0111040a00">
���ǡ���

{	FwC("cg/fw/fwС��_�Ӥ�.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0111050b33">
���ɡ����������᲻�����£���

{	FwC("cg/fw/fw���w_����.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0111060b56">
��������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma01/0111070a00">
�����������

{	FwC("cg/fw/fwС��_ŭ��a.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0111080b33">
������
��������𣿡�

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma01/0111090a00">
���ǡ�
�����룬����ͬѧ��������ʲô�¼���һ�㣬
����û�����ʣ�����ϸ����ֽ׶λ������ˡ���

//��������
<voice name="����" class="����" src="voice/ma01/0111100a00">
����������ͬѧ�İ�Σ����Ŀǰ���޷�����
��ȷ�Ĵ𸴡���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1101]
����ʹ�������ߴٵ�С�ģ��ն�����Ҳ
û���κβ�֪���롣
��ֻ���侲�ؽ��������������˵����

�����Ǹ����ˡ�

�����ܵ�С�Ĵ��ˣ���ʱֻ���ͷ��˵�ţ�
û��û��һ��Ļ���ɡ�
�����ῼ�����Ų����ֲ��ⱳ�ѵ��˻�������

����������˵Ļ������������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���w_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1110]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0111110b56">
��С�ġ�������Ϊ�˵��¡���

{	FwC("cg/fw/fwС��_���.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0111120b33">
�������ţ������ס�
���Բ��𣬴ն���������

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma01/0111130a00">
��û�¡���ҲΪ�Լ�����������е��߳ܡ�
���޷��ù����������������ǰ��ġ���Ϊһ��
���٣���Ȼ����ʱ�ģ���Ҳ�����е�ʮ�ֲ�������

//��������
<voice name="����" class="����" src="voice/ma01/0111140a00">
�������������Ҹ������ȥ�����顣��

{	FwC("cg/fw/fw�ұ�_Ц�b.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0111150b43">
��Ҫ�ڶ��𣿡�

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma01/0111160a00">
�����԰������𣿡�

{	SetComic(@0,@0,8);
	FwC("cg/fw/fw���w_�@��b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0111170b56">
�����������ȵȡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1171]
�������������õ�̸������ֵķ���չ�ˡ�
���ɶ���ұ�����ô�ֲ������˰���

��������Ȼ�����ػ�Ӧ���Ĵն�����Ҳ����֡�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���w_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1180]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0111180b56">
����ô�������ʡ�
���ն�����������Ҫ��ô���أ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma01/0111190a00">
����Ȼ���ǿ��ܾ���̫�ػأ�
�������жϣ��ֽ׶��Ѳ��
���򻹲���ȷ����
�������ռ��鱨�ɡ���

{	FwC("cg/fw/fw�ұ�_����.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0111200b43">
��������

{	FwC("cg/fw/fwС��_���.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0111210b33">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1211]
��ȷʵ�����˼��ꡣ

�������ǵ���������ı˵���侲˼��һ�£�
ʵ����һ��֤��Ҳû�С�
�����ߵ�Ŀ��֤��Ҳ��˵ȷʵ�ɿ���

������״̬�£�û�о��ٻὫ������ָ��Ϊ���ˡ�
���߲���˵���Ҳ�ϣ�����С�
������еĻ�����Ȼ������������˵�ܿɿ������͹�
�����������Ǹ��鷳�ļһ

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1220]
//��������
<voice name="����" class="����" src="voice/ma01/0111220a00">
�����ִ˵ؽ�������ʧ���¼������ټ���
��ʹ��������ѧУ�ܱ���˵Ҳ����ˡ�
����ǰ����£��Ҵ��㳢�԰���Щ���������
������û�����Ƶ��¼�����

{	FwC("cg/fw/fw���w_ͨ��b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0111230b56">
����ô�����ʡ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma01/0111240a00">
���ǡ���

{	FwC("cg/fw/fw���w_ͨ��b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0111250b56">
����ĵ��飬��Ҫ���ǵ�Э���𣿡�

{	FwC("cg/fw/fwС��_ͨ��b.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0111260b33">
���۷ɣ���

{	FwC("cg/fw/fw���w_ͨ��b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0111270b56">
�����ǶԵ��غ���Ϥ����������Ӧ��
���Ǳ����˰ɣ�
�������Ļ�������Ӧ���ܰ���æ����

//�����w��
<voice name="���w" class="���w" src="voice/ma01/0111280b56">
��Ҳ������Ϊ�򵼴�·����������˭�ʻ�
�Ļ����е�������һ���Ǹ�������
�����ܵ������˵ľ��䡣��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1281]
����ָ�ֻ��ţ�Խ˵Խ������
���ұ���С�Ķ�û����ֹ�������������ԡ�

���������ҷ����ˡ�
��ֱֱ�ؿ���ƴ�����ҵĴն���������Ȼû��
˿���Ի������ı��顣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���w_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1290]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0111290b56">
������˵���������ˣ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma01/0111300a00">
�����ǵ����������Ը�л��
�����ǣ��Ҳ��ܽ��ܡ���

{	FwC("cg/fw/fw���w_���a.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0111310b56">
����������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma01/0111320a00">
�������Ҹղ���˵������¼��������Ǻ��¼�
��ص����ɡ�Σ�����Բ����ԡ�
����ͨ����Ӧǣ�����С���

{	FwC("cg/fw/fw���w_ͨ��b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0111330b56">
��Ҫ˵Σ�մն�����Ҳ��һ���İɣ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma01/0111340a00">
�����н�������������Ρ�
������������˵��û������¡���

{	FwC("cg/fw/fw���w_ŭ��a.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0111350b56">
���������ǵĻ�飡���������Ҳ�����ΰ�����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma01/0111360a00">
������
�����ǻ����ڣ������Լ�֮�ⲻ�ܶ�����
�κ����鸺������䡣��

{	FwC("cg/fw/fw���w_���a.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0111370b56">
������������

{	FwC("cg/fw/fw�ұ�_����.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0111380b43">
������������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma01/0111390a00">
���������ϵ����Σ����ǿ����Լ��İ�Σ��
��Ҫ�ü��˵��ġ�
�����ǵ������˵������Һ���⡣����ͬ����
Ҳ�����ڵ��������ǡ���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma01/0111400a00">
���뿼��һ�����ǵ����顣��

{	FwC("cg/fw/fwС��_���.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0111410b33">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1411]
��������̸�Ĵ����
��Ȼ������Ҳû�л��ﷴ����

�����������������˵����̨�ʣ�����
�ܹ��ػ���
��������˵�̬�ȣ��ƺ�������������
С���ķ�Ӧ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1420]
//��������
<voice name="����" class="����" src="voice/ma01/0111420a00">
����������
�������Գ����Ծ��ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StR(1000, @0, @0,"cg/st/st����_ͨ��_˽��.png");
	FadeStR(300,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1421]
���ն�����৵�վ��������
��Ư���Ķ�����

����������һ��������������ȳƵĸߴ���ġ�
����˵�Ǹ����ɷ�
��ȴ������ѹ�ȸС�

����Ϊ���������޴���ɢ���Ű�������ȡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1430]
//��������
<voice name="����" class="����" src="voice/ma01/0111430a00">
����л���ǵİ�����
��������������������Ϣ���ǳ������塣��

{	FwC("cg/fw/fw�ұ�_ͨ��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0111440b43">
��������
���ţ�Ҫ�ǰﵽ��æ��̫���ˡ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma01/0111450a00">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1451]
�����ұ����Դ������ζ�Ļش�̩֮Ȼ��
���ն����������ð���������˵����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1460]
//��������
<voice name="����" class="����" src="voice/ma01/0111460a00">
�����ҽӽ��ǳ�Σ�ա�
���������أ�����Դ��µĲ��롣��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStR(1000,true);

	SetVolume("SE*", 2000, 0, null);
	SetVolume("OnSE*", 2000, 0, null);
	SetVolume("@mbgm*", 2000, 0, null);

	Wait(1000);

//��Ϧĺ����`�}
//��ҹ���`�}

	CreateTextureEX("�}����110", 10010, Center, Middle, "cg/bg/bg013_�`�}���a_02.jpg");
	Fade("�}����110", 2000, 1000, null, true);

	DeleteStR(0,true);
	CreateTextureSP("�}����10", 10, Center, Middle, "cg/bg/bg013_�`�}���a_03.jpg");
	Wait(1000);
	FadeDelete("�}����110", 2000, true);

	SoundPlay("@mbgm26",0,1000,true);


	SetFwC("cg/fw/fwС��_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1470]
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0111470b33">
��������ô����ô���أ�������������

{	FwC("cg/fw/fw���w_ͨ��b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0111480b56">
���⻹�����𡣡�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1481]
���ؼ�·�ϡ�
����������ڵĽֵ��Ͽ������š�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw���w_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1490]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0111490b56">
���ն������Ļ�����ȷ��
���������ɣ�������һȺ�޷�������ȷ�۵�
��Сƨ������

{	FwC("cg/fw/fw���w_Ц�b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0111500b56">
�����ž��Ǵ��ţ�û�취����

{	FwC("cg/fw/fwС��_�@��b.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0111510b33">
�����ۣ��ƹ���ˤ�ˡ��ö��ġ���

{	FwC("cg/fw/fw���w_ͨ��a.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0111520b56">
������Ѱ���ɰɡ�
��������ԵĻ��Ѵն������ҳ���������
ǿ��ҲҪ������æ���������Ǻ���ת�ƣ�
��������Ч�ʡ���

{	FwC("cg/fw/fwС��_ŭ��b.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0111530b33">
��������С����һ�����ж������ء���

{	FwC("cg/fw/fw���w_ͨ��b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0111540b56">
�����������ɰﲻ��æ����
  Ŀ�������Ϻ�����һ���Ĺ�����ϵ����

{	FwC("cg/fw/fwС��_����.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0111550b33">
�������ֿɶ��Ǻ��桭����

{	FwC("cg/fw/fw���w_���.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0111560b56">
�����쿪ʼ���������������Ľ����ˡ�
��Ҫ�ú���ϢŶ����

{	FwC("cg/fw/fwС��_ͨ��a.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0111570b33">
�����ǡ�
���������������������ܰ�;���ϡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1571]
��������ҹ·��
������Ѿ���Զ�ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	ClearWaitAll(2000,3000);

}

..//������ָ��
//�Υե����롡"ma01_012.nss"
