//<continuation number="760">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma02_004.nss_MAIN
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
	#bg021_���L����g_01=true;
	#bg004_�ɤӤ���a_01=true;



	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "ma02_005.nss";

}

scene ma02_004.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"ma02_003a.nss"
//ǰ�ե����롡"ma02_003b.nss"

//������

	PrintBG("������", 30000);

	OnBG(100,"bg021_���L����g_01.jpg");
	FadeBG(0,true);

	FadeDelete("������", 0, true);
	SoundPlay("@mbgm23",0,1000,true);


	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��������
<voice name="����" class="����" src="voice/ma02/0040010a00">
���������־�����Ĵն�������
��֮ǰ����Ϊ�ǳ�������Ŀ��ǣ�ֻҪ������
�����Ƕ�����¾��Ѿ������ˡ���лʲô��
ʵ�ڲ��ҵ�����

{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0040020a03">
����ѽѽ�������ôǫ�顣
��������һ��ȴ��������ǵĸ�л����ô
�����ǳ����������塢��֪���ܵ����ˡ�
�ǰɣ����ţ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma02/0040030a04">
���ǵġ���ȫ��ͬ����
���ն����ˣ���˵���������ж���
��������ǧ��Ҫ�Ѵ�С����Ϊ
�����޳�֮������

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0040040a00">
�����¾��Ǵ��⡣
����������ʧ���ˡ���ֱ�Ǹ����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
������ԭ����ˡ�
��ȷʵ�����������������������ɡ�

������ʱ�����Ҫ�����𣿶�����һ�㣬��������һĨ
�ɻ�����ٻ����Ǹ�ʱ�����ľ�ֹ�������������Ϊ
���֣���һ��Ҳ�������ҵ��취���ѡ�

������ʹ��ˣ�������������֮�ˣ������˵�Ԯ��
����������һ��Ϊ�������Ǹе����衣��ˮ֮����
ӿȪ�౨����������������顣
����������������ţ��ߵ�����ͷ��

��Ů�����ϸ�����Ŀ�ཻ��������Ц��
�������Ҳ������ҵ�̬�Ⱥܻ����ɡ�

��������λŮ�ӣ��ӱ������о��������������Ĵ��ˡ�
�����ҿ�������<RUBY text="����">��ȫ</RUBY><RUBY text="��������">û������</RUBY>���ҵ�л��
�������������˵��£��Ҳ��ö�֪��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw����֦_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0040050a03">
����ѽ��⡣�Ҿ�Ȼ��û�����Լ���
�������ǣǣȣ������ֵĴ�������֦����Ȼ
�ö����ȱ������䣬��������ǣ�Ϊ�Լ���
����������Ǹ������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma02/0040060a04">
����������ɴ������̫��Ϳ�ˡ�
��Ϊ�Ѿ���峤�����ʹ�����
�����������ԭ�£��ն����ˡ�
����������֦����ӣ�С�����֡���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0040070a00">
�������ˡ�
��������ξ���¡������̴Ӹ��¡���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
�����Ŷ��˷ֱ���
��Ů�ӡ���������ξ�ļ���ͨ������ȷ���ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��������
<voice name="����" class="����" src="voice/ma02/0040080a00">
����������<RUBY text="����">����</RUBY>����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
���Ǹ���ͬС�ɵ����ϡ�
������������Ҵ�ݾ��ߵĻ��Ͳ���˵�Ǵ���֮���ˡ�
����Ϊ��Ӧ����ʱ�������š�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw����֦_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0040090a03">
���ն������Ǿ��������ء���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0040100a00">
���ǡ�
���³������Ҳ�û����ʽ��ݡ���

{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0040110a03">
����ѽ����Ȼ��ˣ�
��ˡ�ҹ��ţ��һ�û��˵���������
��ʲôӵ�����ߵĲ��š��������ⷽ�棬
������ʧ����ϸѯ��һ���𣿡�

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0040120a00">
�������������Ҳʵ��������Ȼ��
��������������£�������ԡ���

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0040130a03">
��������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0040140a00">
����͵�����һ�㶼�����������¡�
���������͵���Ϊֹ�ˣ�������½⡣
��Ϊ���в��㡣��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
�����������̹���Լ��ľ�����ݾ�û��ô���鷳��
���ǣ�֮��Դ��ӽ����Ѳ�֮ʱ����
ҲҪ�þ�������塣
����ݲ����������ߣ����˻�Э����

������һ�����϶�Ҳ�ᴫ����λ��ξ�Ķ��С�
��Ϊ�˱��ⲻ��Ҫ�Ļ��ɣ��˿̱��뱨��������
������������²�����ԣ���һ��ȴֻ��̹��
��֪��

����ɨ�˶Է����ˣ�Ҳ�޿��κΡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//�����衿
<voice name="����" class="����" src="voice/ma02/0040150a04">
����С�㡭����

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0040160a03">
�������������ˡ�����ðʧ�����⻹����ԭ�¡�
����������������﷢��������֮���ս����
�������º����޹ء���

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0040170a03">
�����������𣿡�

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0040180a00">
���ǵġ�
���������ģ��м���������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
�������ڱ����ϣ��ƺ���û���𺦴�����ξ�����顣
����Ȼ�����̴ӵ������ﺬ��һ˿�Ͼ�֮ɫ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0040190a03">
����Ȼ���Ǵ����־�������ģ�
��Ӧ�ò���פ���������ľ���ɣ���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0040200a00">
���ǵġ����µ��ô˵���Ϊ���Ѳ顣��


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0040210a03">
�����������Ҳ�ǲ�Ҫ���ʱȽϺ��𣿡�


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0040220a00">
�������ⷽ��û�в��㡣��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
����Ȼ���������ȥ����Ҳ�����š�
����������Щ�ˣ�Ӧ�ò��õ��İɡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw����_�a��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//��������
<voice name="����" class="����" src="voice/ma02/0040230a00">
���ҵ������ǹ������Ǻ��¼����Ѳ顣��


{	NwC("cg/fw/nw���L.png");}
//������㣯���L��
<voice name="����㣯���L" class="����������" src="voice/ma02/0040240e160">
������ʲô������˵ʲô!?��


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0040250a03">
�����ǡ������Ǻš�
��ɴ������ȷʵ�ǡ�����


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma02/0040260a04">
��û�������ǽ������Թض�Ϊ����
�쳣��Ծ���޲��ɱ�˷��ɡ���


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0040270a03">
���ǰ���
����ѽ�����������ǿ��湻Ǻ�ء�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
��������

���������ӵķ�Ӧ��Щ�ٶۡ����������˳������
�峤һ���Ȼ���������ҡ�
�����뵽��ͷ��β�����ۣ��峤�ķ�Ӧ������Ȼ��

������ֻ�ǵ������κ��¶��޶����԰ɡ���
���ֻ��ǣ�����������������͵���
��Ȼ�ǣǣȣѵ��ˣ�Ҳ����֡�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//�����衿
<voice name="����" class="����" src="voice/ma02/0040280a04">
��ԭ����ˣ������ý��С������ޣ�ʧ���ˡ���


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0040290a03">
����ô���ѵ��Ǹ��ط��١��������ǽУ�����
��ξ�����������Ǻŵı����𣿡�


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0040300a00">
��������ˡ�
�����������к����ǺŽӴ������ҵ޽�ĳ��
������ϵ�����ɡ�
Ϊ���Ҳ�������ѹ������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0040310a00">
����Ȼʧ�����������ˡ�
�������Ҵ����������������١���


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0040320a03">
����������ô���¡�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
����������֦����ͷ���������졣
�������Ҳͬ����һ������ĥ�ҵ�˵�������ӡ�

���峤�ƺ�Ҳ�кܶ��������ʣ�������Ҳ�������ˣ�
���һ��������Ǻ����Ͼ�Ҫ�����������ִ�Ԫ�����
��������Կ����Լ����������ʡ�
�����ҡ���ʹ���ʵ��������κ�˵��Ҳ�����ѡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0040330a03">
���Ҵ������ˣ��ն����ˡ�
��������Ҳ������ķ�Χ�ڰ������ɡ���


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0040340a00">
����л���ĺ��⡣����̫�м��ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
����˵��ˡ�
�����ܵĻ���ϣ���������İ��������˽���¡�

�������ƺ��Ƕ������ҵ��������룬
����ɫ�Ĵ���¶��΢Ц��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw����֦_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0040350a03">
������һ����Ҫ������
����Ϊ����Ҳ���ҵ�ְ����ء���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0040360a00">
��������Ǹ����ξ���¡�
���ܴ���һ������ְ���𡣡�


{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0040370a03">
��֮ǰ���Һ���λ�ط���Ա��̸����
��û�ж����𣿡�


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0040380a00">
����Ȼ�������ǱȽϽ�������ϸ�Ĳ����������


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0040390a03">
��������������ǲ��������ӵ�Ѳ��١�
��ְ���ǰ��մ��������ʵ������������
�����Ŭ�����ơ���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0040400a00">
��Ѳ��١�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
����˵�����֣ǣȣѵ��ƶȣ��ҵ���֪����
��ԭ����ˣ�������ξ��������ʿ������ȡ�Ĵ��ã�
����ְ�������

��������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
//��������
<voice name="����" class="����" src="voice/ma02/0040410a00">
���ܷ�ˡ��ֱ�ԡ���


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0040420a03">
���뽲����


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0040430a00">
������û���뵽���ƶ�ȷʵ����Ч��������ܡ�
ԭ��Ϊ�����ǵ���Ϊ�˱�ס��������õİ��ˡ���


{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0040440a03">
����ѽ��������ֱ���ء�
���������ѵ����Ǳ˴˱˴�ô����������������


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0040450a00">
����Ȼ����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
��������ʵ�Ǿ���ֵĴ����ʡ����߷�����Ҳ�ԡ�
���Ե������Ǻ��¼�Ϊ����������Լ����϶�������
�൱��������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0040460a03">
��ʲô�����ܣ�ʲô��������ʲô��������
��Ȼ�������Ѳ��ٵĹ�������
���������ҿ�û�յ�<RUBY text="������������">ʲô��������</RUBY>������ָʾ��
��ʵ��ȴ����֣�û�����ֵ�����


//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0040470a03">
���ǰɣ�ɴ������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma02/0040480a04">
���ǵġ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
������ԭ����ˡ�

���Ҳ��ǲ�֪�������������ʵ����ί�θ���������
�ǣȣѵķ��롣
�������������ƺ���һ����������ʢ�������
Ҳ�����Ǳ��ʲô��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw����֦_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0040490a03">
��������ˣ��ҵ��ж�����˾�֪����
�ᱻ�����ٻذɡ�
����֮��ֻҪ�����ط��ٴ��˻�����
���Ӿͻ��������ӡ���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0040500a00">
��˵�������ط��ٵĲ����أ���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma02/0040510a04">
������װ����Ļ����Ͻ����˼����
������Ͼ�ɱ�����ط��ٸ���Ҳ����
�Ѱ�ɡ���


{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0040520a03">
���������з������̻�Ƚ����ѣ����š�
������˵�������͵�����Ҳ��ס������һҹ
�ͻ�ȥ�ˡ���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma02/0040530a04">
�������<RUBY text="����">�¹�</RUBY>��Σ���


{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0040540a03">
������ķ��ݲ����������֣�
�����ǵ�����������ܻ����ڴ��ӣ�
�������ˡ���


{	FwC("cg/fw/fw����_Ц�.png");}
//�����衿
<voice name="����" class="����" src="voice/ma02/0040550a04">
������ӿ��н�����ʯ�Ļ�����û��
�κΰ취�ˡ���


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0040560a03">
�����ء���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
��̸���ƺ��ն�������
���������治��ɫ����˵���ķ�Χ������Ӧ��
ֻ�ǵ�������Ц������������Ц��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0040570a03">
�����ˣ�������Ҳ��ᡣ
�����������鷳֮ǰ����ܻ������켶����ˣ�
���¾Ϳ���������ˣ��ն����ˡ���


//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0040580a03">
���������һ�������������Ǹ���Ա��
��Ŀ��һ�£������ú����Ǻ���Ȼ���𣿡�


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0040590a00">
����һ�����⡣
����Ĺ�Ա���Σ������ֻ���ͬ����
�������


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0040600a03">
�������ξΪ�˽��ɿ���ҵ���Ĭ����£�
�����������˻�¸��Ǯ��
�����Ǹ���Ļ���������ҵ�������˾�û��
��Ҫ�������¡���֮��������������Ϊ����


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma02/0040610a04">
������������̵�����Ϊ�������Բ�������
�ɡ����ԣ�����ҵ��������֮ǰ����������ϣ
��Ļ�����롣
����Ϊ��ֻ�ᱻ�۳��ô����ѡ���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0040620a00">
��������ˡ�
����������û�еط���Ա���ɿ���ҵ����ֹ
�Ļ������״̬����˿���Ӧ��û������ɣ���


{	NwC("cg/fw/nw���L.png");}
//������㣯���L��
<voice name="����㣯���L" class="����������" src="voice/ma02/0040630e160">
���ǣ��ǵģ�����������֮���ð���
�ǾͰ��������������鷳�˰���
������������


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0040640a00">
��ʲô����


{	NwC("cg/fw/nw���L.png");}
//������㣯���L��
<voice name="����㣯���L" class="����������" src="voice/ma02/0040650e160">
�����ڵط��ٵĲ��¡�
����񣬻�û��ȫ��ץ�������п��ܣ�
��Щ�е�����Ǹ���Ա������������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma02/0040660a04">
����ѽ�������ǡ�
����©��֮���𣿡�


{	NwC("cg/fw/nw���L.png");}
//������㣯���L��
<voice name="����㣯���L" class="����������" src="voice/ma02/0040670e160">
�����룬������Ƶ�ʿ��Ӧ��ȫ����ץ���ˡ�
������֮ǰҲ�ᵽ�ˣ���Щ���ɵļһ�
������Ա�ı��ڡ���


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0040680a03">
����ѽ��
�����ã��Ҵ���������ˡ���


{	NwC("cg/fw/nw���L.png");}
//������㣯���L��
<voice name="����㣯���L" class="����������" src="voice/ma02/0040690e160">
�����Ǽ����ƺ�����һ���ȥʲô�ط��ˡ�
��˵�Ƕ����������𡭡������û������
Ѳ��ٴ��ˡ���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0040700a00">
���������ˡ�
���������ĵġ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
�����˲��ǵ�ǹƥ��
����̬������Щ�鷳�ˡ�

������˵�������£���˾�ռ����ˡ�
����ʹ��Ҫ���⣬Ҳ����ֵ�÷��յĴ��¡�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
//��������
<voice name="����" class="����" src="voice/ma02/0040710a00">
����ô������Ѳ��ٸ��¡�
�������������ٴ�չ������ϣ���ܸ�����
�ж������ɡ���


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0040720a03">
�����ǵ�Ȼ��
���ҽ����ڴ˵ػ�����д��ŵġ�
��֧Ԯ�����ʱ�򣬻�����ϵ���ǡ���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0040730a00">
���ϻ̳Ͽ֡�
���������и��ˡ��峤���£��������鷳�ˡ���


{	NwC("cg/fw/nw���L.png");}
//������㣯���L��
<voice name="����㣯���L" class="����������" src="voice/ma02/0040740e160">
��û��û�У�
���д����ܣ�������¡�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ɥ��_������
//���塣ѩ܇�
//������
	Delete("SE*");
	Delete("OnSE*");
	SetVolume("@mbgm*", 1600, 0, null);

	CreateSE("SE01","se�ճ�_ѧУ_���ҥɥ��_����01");
	MusicStart("SE01",0,1000,0,750,null,false);

	PrintGO("�ϱ���", 15000);
	CreateColorSP("�}��ܞ", 5000, "#000000");
	OnBG(100,"bg004_�ɤӤ���a_01.jpg");
	FadeBG(0,true);

	DrawDelete("�ϱ���", 1000, 100, "blind_01_00_1", true);

	WaitPlay("@mbgm*", null);
	WaitPlay("SE*", null);
	WaitPlay("OnSE*", null);

	WaitKey(1000);
	DrawDelete("�}��ܞ", 1000, 100, "blind_01_00_1", true);


	StR(1000, @0, @0,"cg/st/stѩ܇�_ͨ��_˽��.png");
	FadeStR(300,true);

	StL(1000, @0, @0,"cg/st/st����_ͨ��_˽��.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
//��������
<voice name="����" class="����" src="voice/ma02/0040750a00">
������������

{	FwC("cg/fw/fwѩ܇�_�o.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma02/0040760a12">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//��������ȥ
//��ѩ܇���ȥ
//�����`���Ф��椨

	DeleteStL(300,true);
	DeleteStR(300,true);

	ClearWaitAll(2000, 2000);


}

..//������ָ��
//�Υե����롡"ma02_005.nss"



