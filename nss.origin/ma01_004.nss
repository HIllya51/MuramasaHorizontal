//<continuation number="690">




chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}


scene ma01_004.nss_MAIN
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
	#bg009_�`�}סլ��a_01=true;
	#bg002_��a_02=true;
	#bg002_��a_03=true;
	#bg006_���w�β���_03b=true;


	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "ma01_005.nss";

}

scene ma01_004.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 28 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();




..//������ָ��
//ǰ�ե����롡"ma01_003.nss"

//��סլ��
	PrintBG("�ϱ���", 30000);
	CreateTextureSP("������", 100, 0, 0, "cg/bg/bg009_�`�}סլ��a_01.jpg");

	DrawDelete("�ϱ���", 1000, 100, "blind_01_00_1", true);

	SoundPlay("@mbgm27",0,1000,true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
���ɵļ���ǮϴĲ�츽����סլ�֡�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
����νǮϴĲ�죬��λ�ڶ����е�������硣
��˵������ӿ����ˮ��ϴǮ���ӱ���
�Ը����������ŵĵ߸���������洫˵Ϊ����֪��

����һ���棬������ס�Ҵ�����ñȽ���ʵ��
��̹�ʵ�˵��ƶ�
������Щ�ƺ���һ�������������䶯�Ŀ�ľ������

���ɵļ������о�Ӫ��һ��С�ӻ��̡�
����������ƷΪ���ģ�ʳƷ���ľߵ��ճ���������
������Ʒ���о�Ӫ��������Щ���صĶ�����

����Ů��������ˣҲ����С������õ�ʱ�򡭡�
��Ȼ��ô˵���������Ŀ�ʼ���棬
�ӻ���ֻ������ͻᱻ��Ѻ���������ĸ������˰ɡ�

��������Ϊ�϶�ֻ�����غ�ӵ�д��õ�
�糤�ҹ���֮�����ܱ�����

���ӻ��ݵ�������¡Ҳ������һ�ݹ��͡�
�������ͱ��˵Ķ��ۣ��ټ��������ۿۣ�
��ȫû�����������ܵ�����ϵĳ���ȥ��

�������ᾭ����ʣ�µ���Ʒ����������
��������ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StR(1000, @0, @0, "cg/st/st���w_ͨ��_�Ʒ�.png");
	StL(1000, @0, @0, "cg/st/st�ұ�_ͨ��_�Ʒ�.png");

	FadeStL(300,false);
	FadeStR(300,true);


	SetFwC("cg/fw/fw���w_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0040010b56">
��ʣ�µ���Ʒ������ʣ�µ����ɡ���

{	FwC("cg/fw/fw�ұ�_�@��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0040020b43">
���š���

{	FwC("cg/fw/fw���w_���b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0040030b56">
������з�����ˮ�Ķ������е��Ǹ�ɶ��
��ô˵�أ�������û���ɱ�Թ����

{	FwC("cg/fw/fw�ұ�_����.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0040040b43">
�����ء���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
���¸ҵ���ս�����µ�ζ����Ϊ�˾����ܲ�Ʒ����
��Щ������ɢ�Ļ�����Һ��Ķ�����ƴ�����ʣ�
���ǲ�������ĺɫ������С·�ϡ�С�ĸ������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwС��_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0040050b33">
������û�ؼ��ء�����

{	FwC("cg/fw/fw���w_����.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0040060b56">
����������Ҳ���������ˡ���

{	FwC("cg/fw/fw�ұ�_ͨ��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0040070b43">
�����̵���Ц��Ц����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
��һ�߸����Ŵ̹Ǻ��磬һ�߻������ɵ�˫�׵ĶԻ���
�������ƺ��Դ��¶�û��������

���Դ������糿��ѧ֮���ɾ���û�ع��ҡ�

����˽���һ���죬�ɵ����ٶ�����֪����
������������ǵ�һ�Ρ�
���������Ǹ������ֻ�ҹ�����޵��ˣ�
��ÿ�����ٻ�ͼ������Ѽ���һ�档

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���w_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0040080b56">
����������ô�룿�����岻��˵��
ǰ��������ע�⵽����̫����ô����

{	FwC("cg/fw/fwС��_ŭ��a.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0040090b33">
�����Ծ���ҳ��ߣ�������ɡ�
����ֻ���ճ��Ի��ɡ���

{	FwC("cg/fw/fw�ұ�_�@��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0040100b43">
������������˵Ļ���
Ӧ�ûᵱ���ܵ��ɡ�
����Ҫ˯һ�������Ҿ����е����Ρ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
��ֻҪ�ú�˯��һ�������վͻ���ȫ���ǡ�
������ɵ��ŵ�Ҳ������ȱ�㡣
����Ȼ���׳��ܣ�ȴҲ���׻ָ���ϵ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw���w_ͨ��b.png");


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0040110b56">
�������ǰ���
���ǹ�Ȼ��������˵��������
ֻ�����̫����������ʱ�䡭���ɡ���

{	FwC("cg/fw/fwС��_���.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0040120b33">
���Ѿ�һ������Ŷ����

{	FwC("cg/fw/fw�ұ�_ͨ��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0040130b43">
��Ҳ�������൱����Ķ����ء���

{	FwC("cg/fw/fw���w_�@��a.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0040140b56">
��ιι����������𣿡�

{	FwC("cg/fw/fw�ұ�_�@��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0040150b43">
��һ��һ��ɡ������ɾ���
���������׶��������Ե������ء���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0199]
�����Ҿ������������޶ȵġ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fwС��_���.png");


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0040160b33">
����������ǲ�֪�������Ķ�������

{	FwC("cg/fw/fw�ұ�_Ц�a.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0040170b43">
���ǰ����������ĵ���������һ������

{	FwC("cg/fw/fwС��_ͨ��b.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0040180b33">
��ʲô����

{	FwC("cg/fw/fw�ұ�_ͨ��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0040190b43">
���������û���յ��κεط������磬
�����ִ󷬹���ǣ���Ŀ����Ծ�Ϊ�㡣
ֻҪ��û������������������
��ʹ����Ӧ��Ҳ�����ϲ���������������

{	FwC("cg/fw/fw���w_�@��a.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0040200b56">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0201]
��ȷʵ��ˡ�
�����ִ󷬣��������޵��ΰ����ӡ�����������
������һ�������Բб����ƣ�ȴ���������˵ȵľۼ��ء�

�����Ὣ�������������������԰׷���
��������δ��ã���Ӧ����������ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�ұ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0040210b43">
����ȫ��ͬ�����ɣ��ھ�������Ŀ�����
Ҳ�����ų����ء���

{	FwC("cg/fw/fw���w_���a.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0040220b56">
���������챾����ʲô�������ɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
������Ҳ�о�����
����Ȼ�У����������С�
���������Ļ�����������һ����������һ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwС��_���.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0040230b33">
��Ҳ����˵����û���ؽ������ɡ�
�����׸ò��ð����أ���

{	FwC("cg/fw/fw���w_ͨ��a.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0040240b56">
���ţ����϶���Ӧ�ð��İɡ�
����Ŀ�����Ҳ�������ˡ���

{	FwC("cg/fw/fwС��_ŭ��a.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0040250b33">
�����û��������ܱ���������¼���!?��

{	FwC("cg/fw/fw���w_����.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0040260b56">
������������

{	FwC("cg/fw/fw�ұ�_���.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0040270b43">
������������

{	FwC("cg/fw/fwС��_���.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0040280b33">
��������Ǹ���벻��Ҳ������Ȼ�ɣ�һ�㡣��

{	FwC("cg/fw/fw���w_���a.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0040290b56">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0330]
�����°������Ŀ�����˵���ڡ�
����֪�������ǲ����Եġ�
��һ��˵���ڷ·�ͻ��Ϊ��ʵ��
���޷�������ݿ־�С�

��Ȼ��������Ҳ�����ӱܵĳ��ϡ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�ұ�_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0340]
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0040300b43">
������С�ġ���

{	FwC("cg/fw/fwС��_�Ӥ�.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0040310b33">
��������

{	FwC("cg/fw/fw�ұ�_ͨ��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0040320b43">
���Ҿ�����ʱ�����ų������Ʋ�Ŷ����

{	FwC("cg/fw/fwС��_���.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0040330b33">
������Ϊʲô����

{	FwC("cg/fw/fw�ұ�_����.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0040340b43">
��ȷʵ���ڣ���͵��ΰ����˲��ҹ�ά��
�����ֽ�����Ϊ�����޸��ݵأ�
��˵���ٰ�ȫһЩ��
������ֻ����Զ��ѡ���

//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0040350b43">
��ս�����˺���δ��������������
˵���������񣬲���˵���ѽ���Ϊ���ӣ�
������Ϊ������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0341]
���ұ�����ϸ��ʳָָ����ա�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�ұ�_���.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0400]
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0040360b43">
��<RUBY text="������������">ħ���������</RUBY>��
����ɫ֮�����£�������˭����ɱ���ۡ���

{	FwC("cg/fw/fw���w_���a.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0040370b56">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0410]
��������Щ����˲�䣬��¶�ǵز���������
�����������벻���������֡�

���ұ�������˵�ģ��Ƕ������ڵ�������Ҷ��ԣ�
ĳ������������������޿ֲ��̶�֮�ϵ�
�ɻ���ڡ�����ɫ֮�ǡ�

��������˭�����ж�ʱ���־��š�
���־���<RUBY text="��">��</RUBY>���õ�˲�䡣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw�ұ�_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0420]
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0040380b43">
��������������Ҫ˵���ﲢ������
�ŷ�������˼�顣
����������΢���밡����

//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0040390b43">
������ɱ����뷸���¼���
���ܻ�����������أ�
�������˺���ıɱ������չգ�
��������Щô����

{	FwC("cg/fw/fwС��_�Ӥ�.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0040400b33">
��������

{	FwC("cg/fw/fw�ұ�_ͨ��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0040410b43">
��������˺��¼���
��ʮ��Сʱ��û���������ְɡ�
����ʹ�����˵��޷��Լ��ؼң�
ҽԺ����Ӧ��Ҳ��������ˡ���

//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0040420b43">
�����˵�ҽԺ���޷����ߵ��������
�������һ�ּ����ˡ���

{	FwC("cg/fw/fw���w_����.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0040430b56">
��������

{	FwC("cg/fw/fw�ұ�_ͨ��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0040440b43">
��ıɱ�����������ֻ������أ�
��ɱ�˺ܼ򵥣������ƺ�ȴ���ѡ�
һ�������ʬ��ܿ�ͻᱻ��������

//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0040450b43">
���˵�ʬ�������Ŀ��
����������������ĳ����﷢�������¼���
��Ҫһ��֮�ڲ����κ��˷��֣�
���ʻ����൱�͵İɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0421]
��������˵�š�����û��˿���仯��

���������ұ������Ҷ��ٸе���Щ�־塣

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�ұ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0422]
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0040460b43">
������ǰ�ܡ�������Ŷ��
���԰�ܱ���ΪĿ�ĵ�������Ҳ��ᡭ�������
������ΪĿ�ģ�����ȡ����û�������ˡ���

{	FwC("cg/fw/fwС��_ͨ��b.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0040470b33">
���������ء���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0470]
���������˵�ͷ�ĸо���
���ƺ�����һ������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwС��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0471]
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0040480b33">
���ǣ���������
��û�������������°ɣ���

{	FwC("cg/fw/fw�ұ�_ͨ��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0040490b43">
����Ȼ�����ܶ϶���
����������ʱ������̫���ġ���

{	FwC("cg/fw/fw�ұ�_Ц�a.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0040500b43">
�������������һ����һ���Ҳµ�ʱ��
��˵����ͻȻ�ͻؼ��ˡ�
�����ָ����ƺ�����ء���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0472]
�����ٴ�������������������������ŵ��ұ��������졣
��һʱ�䣬ֻ�з���������

���ұ���˵�����е���
��������˾�����ƽ�������˸е�������������ͣ�
���������϶������������Ȼ������Լ���˼����
����һ���ϱ��κ��˶�ǿ��

����˺���˵��������Ҳ�������ܡ�

�����ǣ�������ˣ�
�������е��Ƿ�ɧ������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw���w_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0480]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0040510b56">
������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0481]
�������ɡ�
���Լ���û���ɵĵ����к��ұ����о���
�ĸ����Ŷȸ��߸���û��Ҫ���ա�

���ÿ��Գɼ�һ�ȱ�һĿ��Ȼ��
������ȭ��ʤ�����ҵķ�������Լ����ƥ���ұ���һ�롣

���������ԣ��ұ�����ȷ�ġ�
�����������ŵ����ʱ����ɿ϶��ؼ��ˡ�

����������ţ��Ұ������ֽ��װ�͵���ߡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�ұ�_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0490]
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0040520b43">
��˵�������۷ɡ���

{	FwC("cg/fw/fw���w_ͨ��b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0040530b56">
���š���

{	FwC("cg/fw/fw�ұ�_����.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0040540b43">
��������ˮ������˭��������ء���

{	FwC("cg/fw/fw���w_����.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0040550b56">
��˭֪������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStR(300,false);
	DeleteStL(300,true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0491]
������̾Ϣ��

����ɫ��ճҺ״̼�����ϣ���ʣ�´�롣

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm27", 2000, 0, null);

	CreateColorEX("�\Ļ��", 15000, "#000000");
	Fade("�\Ļ��", 1000, 1000, null, true);
	Delete("������");

	CreateTextureSP("������", 1010, 0, 0, "cg/bg/bg002_��a_02.jpg");
	CreateTextureSP("������", 1000, 0, 0, "cg/bg/bg002_��a_03.jpg");

	Wait(1000);

	Fade("�\Ļ��", 1000, 0, null, true);

	Wait(300);
	FadeDelete("������", 2000, true);

	Wait(500);
	Fade("�\Ļ��", 500, 1000, null, true);
	Delete("����*");

	CreateTextureSP("������", 100, 0, 0, "cg/bg/bg006_���w�β���_03b.jpg");
	FadeDelete("�\Ļ��", 500, true);

	SoundPlay("@mbgm26",0,1000,true);

//��Ϧĺ����`�}
//��ҹ���`�}
//����������


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0500]
������������Σ�������˵��

���������죬�ɾͻ����ˡ�
���϶��������£�����һ���������µ����ӡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetComic(@0,@0,11);
	SetFwC("cg/fw/fw���_Ц�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0510]
//����ġ�
<voice name="���" class="������Ů��" src="voice/ma01/0040560b11">
���������������룡����ô���۷�ͬѧ��
�Ǹ������������ϵı��飡��Ī������Ϊ�ұ�
��ץȥ�ּ�����!?��

//����ġ�
<voice name="���" class="������Ů��" src="voice/ma01/0040570b11">
���϶�����Ϊ�һᱻȫ��������������
���¿���׼����ȫ�ص�������
��������������������İ���
�ͻ����Űɣ������ǣ���ô������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0511]
���������ָо���
���������ۡ��ܾ�����Ļ���������
����ͳ�û���¡�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���w_���a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0520]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0040580b56">
�����ǣ����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0521]
�����죬����ѧУ��
��������ɲ��ڵĻ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���w_���a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0522]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0040590b56">
�����ڵĻ�������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0523]
������ʱ�򡪡���ȥ������

��ֻ������ȥ������
������֮�࣬��������ס��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���w_ͨ��a.png");


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0530]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0040600b56">
�������������������ˡ���

{	FwC("cg/fw/fwС��_ͨ��a.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0040610b33">
�����찡����

{	FwC("cg/fw/fw���w_ͨ��a.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0040620b56">
���š�Ȼ�󣿡�

{	FwC("cg/fw/fwС��_ͨ��a.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0040630b33">
��Ȼ��ʲô����

{	FwC("cg/fw/fw���w_ͨ��b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0040640b56">
��Ϊʲô�����ҵķ�������ͼ����ҵı���
�ҶԴ˱��������������㡺Ȼ�󣿡�
ϣ�������ڴ�ʱ���̾�����⡣��

{	FwC("cg/fw/fwС��_���.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0040650b33">
���Ҿ��úú��¡���һ��˯�����𣿡�

{	FwC("cg/fw/fw���w_���b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0040660b56">
�������������ֻƾ���������ݳ�����˿ɰ���
������ñ����˵ʵ����ֱ������ĳ̶ȣ�
���㲻����������Ť������ɸ�����״��
˫���ڸ�ǿ�ҵ���˵��ʲô�𣿡�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0531]
��ͼ�⣩

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����������ܡ�����
//��������������d����YEAR��
//��������������������

SetBacklog("���������ܡ�����", null, null);
SetBacklog("������������d���𡡣٣ţ��ȣ�", null, null);
SetBacklog("������������������", null, null);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0540]
����������������
������������d���𡡣٣ţ��ȣ�
���������ܡ�������

</PRE>
	SetTextEXC();
	Request("@text0540", NoLog);
	Request("@text0540", PushText);
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwС��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0550]
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0040670b33">
���ң���ʶ���ˡ�������������һ���ʱ��
�Ҳ���ġ���

{	FwC("cg/fw/fwС��_�դ�.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0040680b33">
��Ϊʲô���������ء�������

{	SetComic(@0,@0,15);
	FwC("cg/fw/fw���w_ŭ��b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0040690b56">
�����в�!!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0551]
�������Ұɡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���֥�å�������

	ClearWaitAll(2000, 2000);


..//������ָ��
//�Υե����롡"ma01_005.nss"








}








