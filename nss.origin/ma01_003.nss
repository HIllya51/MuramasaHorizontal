//<continuation number="1950">



chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma01_003.nss_MAIN
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
	#bg008_����_01=true;

	#ev102_����Ű��_a=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	#voice_on_�R���ұ�=true;
	#voice_on_⏴��=true;

	$PreGameName = $GameName;

	$GameName = "ma01_004.nss";

}

scene ma01_003.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"ma01_002.nss"

//���ӣţ������
//�����ҡ��ұ�
	PrintBG("�ϱ���",30000);
	CreateTextureSP("�}����100", 100, Center, Middle, "cg/bg/bg008_����_01.jpg");

	StL(1000, @0,@0,"cg/st/st�ұ�_ͨ��_�Ʒ�.png");
	FadeStL(0,true);


	OnSE("se�ճ�_ѧУ_���ҥɥ��_����01",1000);
	DrawDelete("�ϱ���", 1000, 100, "blind_01_00_1", true);

	SoundPlay("@mbgm29",0,1000,true);

	SetFwC("cg/fw/fw�ұ�_ͨ��.png");

	#voice_on_�R���ұ�=true;

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0030010b43">
���Ҿ��ã����ӵ�����֮����ս�ܣ�����˵
��Ϊ���������������ܣ�����˵������������
�ܹ�ֱ��ȡʤ�ļ��������������˻����Ե�ʡ���

//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0030020b43">
�������ں�����ʹ�ø����ƽ������û���
��Ϊ��������ͼ��������ӽ��������
ֻ��˵�Ǵ���һ����Ϳһʱ��ʵ���ź�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ӣţ��ԥ����
//���\�T��
//������äȽ���

	SetVolume("@mbgm29", 0, 0, null);

	CreateSE("SE01","se�ճ�_ѧУ_���ҥɥ��]���01");
	MusicStart("SE01",0,1000,0,1700,null,false);

	CreateColorSP("�\Ļ��", 3000, "BLACK");
	DrawTransition("�\Ļ��", 500, 0, 1000, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("@text0010");

	WaitPlay("SE01", null);
	Wait(2000);

	StL(1000, @0,@0,"cg/st/st�ұ�_ͨ��_�Ʒ�.png");
	FadeStL(0,true);

	OnSE("se�ճ�_ѧУ_���ҥɥ��_����01",1000);

	DrawDelete("�\Ļ*", 1000, 100, "blind_01_00_1", true);


	SoundPlay("@mbgm29",0,1000,true);

	SetFwC("cg/fw/fw�ұ�_Ц�b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0030030b43">
���簡�۷ɡ�ѽ��С�ģ������Ҳ�ر������ء���

{	FwC("cg/fw/fw���w_ͨ��b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0030040b56">
���������Ϻá���

{	StR(1000,@0,@0,"cg/st/stС��_ͨ��_�Ʒ�.png");
	FadeStR(300,false);
	FwC("cg/fw/fwС��_ͨ��b.png");}
//�����i�ߤ�
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0030050b33">
��лл�㵾�Ǿ����Һܿ��ġ���Ҳ��˧Ŷ����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
�������մ򿪽����žͿ�����������ˣ�
���ֽ��������ұ���

�������Һ�С�ĵĹ�ϵ����˵����÷������
����ԩ���أ�����������һ��Ĵ��ڡ�

�������һ���������Ǹ����ɵ��ˣ�
�ƺ����е��ḡ����ʵ��Ҳ��ȷ��ˡ�

���ദ��ʽ�ܼ򵥡�
������һ��һ�۶Դ����㵽Ϊֹ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�ұ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0030060b43">
�����䵭��С�ġ���ÿ������ô���ң�
�ҵ��ľ���С��һ����������ͣ��
���Ƕ��������ң�
��϶�Ҳ����Ҫ�����ӵ������ů���ذɡ���

{	FwC("cg/fw/fwС��_ŭ��b.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0030070b33">
���۷ɣ����������𣿡�

{	FwC("cg/fw/fw���w_����.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0030080b56">
��û�С�����������������
����Ȼ�Ҳ�����ֹ�㡣��

{	FwC("cg/fw/fw�ұ�_Ц�b.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0030090b43">
���ܱ����Ļ����������ҵ���Ը����С�ģ�
���ã��塡����

{	FwC("cg/fw/fwС��_ͨ��b.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0030100b33">
�����أ���

{	FwC("cg/fw/fw�ұ�_ͨ��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0030110b43">
����û���ء���

{	FwC("cg/fw/fw���w_ͨ��b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0030120b56">
�����ټ�������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
���ҡ�С�ġ��ұ��ټ�����һ���ˡ��������ɡ�
���ĸ��ˣ������һ����ν�ŶӵĶ�����
��������Ϊ�˳�ϯʲô������

������ͬ������������������ɢ�����ɣ�
ȴ���Ǻ��뵱���ͷ�����ӡ�
��֪�ǲ���Ϊ�������Լ���Ȩ���ԣ�
��ÿ��ض����ݲ��ȵص�У��

��Ȼ��ѵ������Ļ�顣
���������Լ����������ˣ�
ȴ����Ϊһ���˴����˿����į����ʼ����

���Ǿͺ�����ͬ�꼶������ͺ��ˣ�
��ƫƫ����ͬ���絽У�Ķ���Щ
�����ģ����������������
��Ϊ����̲ĵ�����ȫû�й�ͬ���⡣

��������Ŀ�����Ҫ��й��
��������Ҫ����Ϊʲô����������Ĳ�֪����

��������С�Ĳ�ͬ��������ʹ�þ���ı�����ʽ��
������΢����һЩ��������ʹ�����ԡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���_Ц�.png");
	SetComic(@0,@0,11);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//����ġ�
<voice name="���" class="������Ů��" src="voice/ma01/0030130b11">
��Ŷ�ǺǺǺǺǺǣ����Ϻð��۷�ͬѧ��
��ѽ��ѽ������Ҳ��ô��
������Ϊʲô��������ô���أ���

//����ġ�
<voice name="���" class="������Ů��" src="voice/ma01/0030140b11">
���϶���ȫ���ѪҺ�����е��°���ĳ����
����Դ���ѭ����ѪҺҲ�������ˣ��϶���
����û�������а��۷�ͬѧ��
���ϵ������˶���Ҫ�ú���������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
�����ݼ��Ȳ�������

����ʵ˵��һ����ͱ�������ʴ��ǿ����
����ע�����裬ʵ�������������ܣ�
�����ɽ��쵽���ڻ�û���������ҡ�

����������Щ���ɡ�
�����Ǽ��ٻ�����ʱ�䵽У�ļһ

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw���w_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0030150b56">
��������������ҹ�ε���ô��ȴһ�ζ�û
�ٵ����������˾��ò���˼�鰡������

{	FwC("cg/fw/fw�ұ�_�@��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0030160b43">
��˵����Ҳû�ǻ������ء�
ҹ������Ĺ����ƺ����ϸ��ˡ���

{	FwC("cg/fw/fwС��_ͨ��b.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0030170b33">
�����𣿡�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
��ѧ��ҹ���ֹ���������Ȼ��
���ұ�˵�ģ�����Գ��˶��ԵĽ��
��ȻҲ����αװ�ɳ��������ѧ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�ұ�_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0030180b43">
�����ִ󷬵�ҹѲ����ò���������ء�
�����ץס�������þ���һ��
�������õĻ���ֱ���������»��ء���

{	FwC("cg/fw/fw���w_�@��a.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0030190b56">
�������ܲ��ˡ�
������������Ҫ����Ϊ����������
�ɾͲ������˰ɡ���

{	FwC("cg/fw/fw�ұ�_ͨ��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0030200b43">
�����ܿ��ܻ�˵�š��꾯��������ӵ�
�̼����ջ������ܲ��˰�����
Ȼ���֮ǰ��Ƶ����ҹ�ΰɡ���

{	FwC("cg/fw/fwС��_����.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0030210b33">
���ɲ���ô����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
�����п��ܡ�

{//�����}����
	DeleteStR(300,false);
	DeleteStL(300,false);}
����һ�ߺ�ͬѧ�������к���һ�������Լ���λ���ϡ�
���ұ�һ����ƵشӺ���׷����Ҳ�ǣ�������λ�����Աߡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StL(1000, @0,@0,"cg/st/st�ұ�_ͨ��_�Ʒ�.png");
	FadeStL(300,false);

	SetFwC("cg/fw/fw�ұ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0030220b43">
����ô������˵����

{	FwC("cg/fw/fw���w_ͨ��b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0030230b56">
��˵ʲô����

{	FwC("cg/fw/fw�ұ�_Ц�a.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0030240b43">
��װ�׾�������

{	FwC("cg/fw/fw���w_ͨ��a.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0030250b56">
��ŶŶ�����ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
���ұ����ù㷺�������������Ȥ�ģ�
��ʹ�þ����ý��е�װ�׾�����
��������Ȼ������ָ���Լ��ܷɡ�

��Ѱ�Ҳ�����ר����־��ֻҪ�б�������������ת����
�ڸ����Ļ��͵��ֳ��ۿ�������Ŀǰ���˶��ѡ�
���ǣ��г�һ����Ϊѡ���ڻ����ܵ��ϱ��ۣ�
�ƺ����������롣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���w_���.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0030260b56">
���Ǹ���ɶ���š���������ˣ���

{	FwC("cg/fw/fw�ұ�_����.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0030270b43">
����Ȼ�Ҳ�ϣ����Ӹ����֡��֣���ȷʵ��ˡ�
��û�������ϵ�ʧ�󡭡�Ϊʲô��������
����һ����ʧ�ܰ�������

{	FwC("cg/fw/fw���w_ͨ��a.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0030280b56">
�������������

{	FwC("cg/fw/fw�ұ�_����.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0030290b43">
����Ȼ��ϣ�������ôһ�仰���£�����ȷ
������˵�����ź�����

{	FwC("cg/fw/fw���w_ͨ��b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0030300b56">
���ǻ�ʤ���ǣ���

{	FwC("cg/fw/fw�ұ�_ͨ��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0030310b43">
����͵ĳ�����Ȯ��
���辩�ļ�����Ҳ�ں����׷�����ء���

{	FwC("cg/fw/fw���w_�@��a.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0030320b56">
���������ǡ���ǿ������

{	FwC("cg/fw/fw�ұ�_�@��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0030330b43">
���Ǵ��ʹ���ת�������ɡ���

{	FwC("cg/fw/fw���w_����.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0030340b56">
�����湹��̫������ʵ����û��˼��
��������ô��û�취ϲ�����Ƕӡ�����

{	FwC("cg/fw/fw�ұ�_Ц�b.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0030350b43">
��ͬ�а�����һ�����������š�
���������ĸо�������һ������

{	FwC("cg/fw/fw���w_���.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0030360b56">
�����Ǿ���Ӯ���ˡ���

{	FwC("cg/fw/fw�ұ�_ͨ��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0030370b43">
���Ǻ��ǻ�����������Ȥ�
������ʤ������Ҫ�μӵ����������
�����Ҿ���ϲ�����ֵط�����

{	FwC("cg/fw/fw���w_ͨ��b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0030380b56">
�����ӵ�ѡ����˭���š�
������ƫ�����Ǹ���·���𣿡�

{	FwC("cg/fw/fw�ұ�_�@��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0030390b43">
����ô���ܣ����ɲ��᷸����ʧ��
����ô˵�أ����Ǹ�û���������ˡ���

{	FwC("cg/fw/fw���w_ͨ��b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0030400b56">
��������Σ���

{	FwC("cg/fw/fw�ұ�_����.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0030410b43">
��û��ʲô��Ȧ�ɵ�ġ���Ȼ����������
���ǻ�·��һ���˵Ķ��鰡����

{	FwC("cg/fw/fw���w_���.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0030420b56">
�����������β���ͦ�õ��𣿡�

{	FwC("cg/fw/fw�ұ�_ͨ��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0030430b43">
����Ȼ���Ҿ�����ô�����Ŷ����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
����ƽ��һ��С���ش���ұ���
����֮�����档

���ǵģ�������Ц��˵��������˺�������
����Ҫ��Ϊְҵѡ�ֱ���ͻ�������ѹء�������ˣ�
�ұ���������Դ�ΪĿ����Ŭ����

��ƽ����и��ѧϰ���ռ��鱨�Բ���˵��
Ϊ����ǿ������ÿ�������ܲ���
�Բ��ݽ��ж��Ա��޵���Ӿѵ��Ҳ�Ӳ�Ƿȱ��

����Ȼѧϰʵ�ʼ�������Ҫ���ֽ��У�
���Ǳ��ʽ����ƺ������ڴ�ѧУ��ҵ�����ڣ�
ͨ���������׵Ĺ�����á�
����ˣ���Ҳ�����ⷽ��Ĺ��Ρ�

����Ȼ�������Ǹ߼۵ġ�
�ͱ�ְΪ�������õ�ս�����׽����޷���ȡ���
�����г���Ҳû�����ۡ��������ý�����ʮ��ϡ�ٵ���Ʒ��

���������Ͳ�ȱ�Ķ���ƷҲ���Բ��°���
����������ļ۸�ͬ��

���������������洢��˽����ұ�����
���ĸ��׵�����ó�׹�˾ְԱ���ڵ�������
��ν�ǽܳ��˲š���ȷʵ�㸻ԣ֮�ˣ�
��һ����˵Ҳ�������

�����ܴ��ĸ��Ƕȣ�������ô�������ᱡ�����ˣ�
�����˸�����ô�������������
�������������ء�
���˵�������ɲ⡣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���w_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0030440b56">
��˵ʵ�������ͦ��Ľ�ġ���

{	FwC("cg/fw/fw�ұ�_�@��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0030450b43">
��ɶ����

{	FwC("cg/fw/fw���w_ͨ��a.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0030460b56">
������ȷ���룬������Ϊ֮Ŭ�����㡣��

{	FwC("cg/fw/fw�ұ�_�@��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0030470b43">
������������

{	FwC("cg/fw/fw���w_����.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0030480b56">
���ڱ����Ƿ�Ŭ��֮ǰ�������������¶�û����
�����Լ�Ҳ���ò���˼�顣
������ô��ô���������ء���

{	FwC("cg/fw/fw���w_ͨ��a.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0030490b56">
��һ����˵�����������������˲���Ӧ�ú��ҵ�
����һ������Ŷ��𣿡�

{	FwC("cg/fw/fw�ұ�_����.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0030500b43">
������ô����

{	FwC("cg/fw/fw���w_Ц�a.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0030510b56">
���ҽ������Զ�ȡ���¡���
���޻��ɵ���ô������֮��ģ���

{	FwC("cg/fw/fw�ұ�_�@��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0030520b43">
�������Ź�����

{	FwC("cg/fw/fw���w_ͨ��b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0030530b56">
����������

{	FwC("cg/fw/fw�ұ�_�@��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0030540b43">
�������أ���

{	FwC("cg/fw/fw���w_����.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0030550b56">
��������֮����֮ǰ
���м乷�Ѵ�С�ķ��Ӿ͹��ˡ���

{	FwC("cg/fw/fw�ұ�_����.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0030560b43">
��ȷʵ���������ء���

{	FwC("cg/fw/fw���w_ͨ��b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0030570b56">
���š���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
���ܸо���Ż������ͽ����ˡ��ҵ�������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�ұ�_Ц�a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0030580b43">
�������Ұ����ܾ����۷�����ᳯ��ĳ��
Ŀ�걼ȥ�ġ���

{	FwC("cg/fw/fw���w_ͨ��b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0030590b56">
�����ݣ���

{	FwC("cg/fw/fw�ұ�_ͨ��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0030600b43">
�����ţ����������ʲô����

{	FwC("cg/fw/fw���w_����.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0030610b56">
�����𡣡�

{	FwC("cg/fw/fw�ұ�_Ц�a.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0030620b43">
��һ���ǵġ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
����ʲô�ء�
���������ڣ���ȫ��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������äȣӣ�
//��⏴��������}


	StR(1000, @+50, @0,"cg/st/st⏴�_ͨ��_�Ʒ�.png");

	OnSE("se�ճ�_ѧУ_���ҥɥ��_����01",1000);
	FadeStR(300,true);

	SetFwC("cg/fw/fw�ұ�_�@��.png");


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0030630b43">
����ѽ��ѽ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStR(300,false);
	DeleteStL(300,true);

	StC(1000, @0,@0,"cg/st/st⏴�_ͨ��_�Ʒ�.png");
	FadeStC(300,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
���������崨�ǳ���
���ұ���æ�ص���λ��

���崨������һ�����৵�ǿ�Ƶ��Ͻ�̨��
Ȼ���ֱ��վ�š�
���������Ҹ����������أ�˵ʵ����

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw⏴�_Ц�.png");

	#voice_on_⏴�� = true;

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0030640b57">
��������Ϻá�����һ����
�������ţ���

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
����Ϊ��Ӿ�����ʣ���֤ʵ�ŷλ�����
����������һ���ж��ˡ�
�������ɻ�ı��飬�崨���˽��ҡ�

������༶������������ʮ�����ҡ�
��˭��˭���ڣ�һĿ��Ȼ��

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw���w_�@��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0030650b56">
���������ǳٵ��˰����ɡ���

{	FwR("cg/fw/fw�ұ�_�@��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0030660b43">
����ôϡ�е�����Ҳ�������ء�����

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
�������ұ�����˽����Ǳ�һ��ҡ��ͷ��
��˼������⡣
��ϡ�С���ĺ�ϡ�С�

�������Ǹ�ʱ�����ǻ�ֻ�������̶ֳȶ��ѡ�

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm29", 1000, 0, null);


	CreateColorSP("�\Ļ��", 25000, "BLACK");
	DrawTransition("�\Ļ��", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);


	Wait(1000);
	DeleteStC(0,true);


	DrawTransition("�\Ļ��", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("�\Ļ��");


	StR(1000, @0, @0,"cg/st/st⏴�_ͨ��_�Ʒ�.png");
	FadeStR(300,true);

	SoundPlay("@mbgm30",0,1000,true);


	SetFwC("cg/fw/fw⏴�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0030670b57">
�����������������츮�����壬�ڸ��ҵ�
���֧��ӭ���ս������������ꡭ��
���Ͷ���һ���꣬������һ�������ꡣ��

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0030680b57">
���Ӷ��������꿪���𣬴�Լ������ʮ���
ʱ�����ν�ķ���ʱ��һֱ������
�ڴ��ʷ�ϣ���һͳ������
�ܳ���������˳�ʱ�䣬������������

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0030690b57">
������������ʷ��Ҳ���ټ���
����ֵ����̶ֳȣ���ʷ�ظ�֮ǰ
�͸����ˡ�����

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0030700b57">
��ǰ�ţ���

{	NwC("cg/fw/nwǰ��.png");}
//������㣯ǰ��
<voice name="����㣯ǰ��" class="����������" src="voice/ma01/0030710e143">
������!?��

{	FwC("cg/fw/fw⏴�_ͨ��.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0030720b57">
��������������
��Ϊʲô�´����츮����
��ô����ʱ����֧���ͣ���

{	NwC("cg/fw/nwǰ��.png");}
//������㣯ǰ��
<voice name="����㣯ǰ��" class="����������" src="voice/ma01/0030730e143">
���������������

{	FwC("cg/fw/fw⏴�_ͨ��.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0030740b57">
������Բ²¿�����

{	NwC("cg/fw/nwǰ��.png");}
//������㣯ǰ��
<voice name="����㣯ǰ��" class="����������" src="voice/ma01/0030750e143">
������������Ϊÿ���ڸ���������������

{	FwC("cg/fw/fw⏴�_ͨ��.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0030760b57">
���š�
��Ҫ���ἰ�´���ʮ������ĳ�����ˣ�
Ҳ������ô˵����

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0030770b57">
���������Ǿٸ����ӣ�������ڸ�����
ʵʩ����������ĸټ��������������𣿡�

{	NwC("cg/fw/nwǰ��.png");}
//������㣯ǰ��
<voice name="����㣯ǰ��" class="����������" src="voice/ma01/0030780e143">
����������

{	FwC("cg/fw/fw⏴�_ͨ��.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0030790b57">
����Ϊһ������ѧ����˵��
��������ΰ��
������ͳ���߶��Կɲ���ֵ���������¡���

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0030800b57">
�������������ι�����Ҳ�����츮��ͳ��
����������������ȥ�ˡ���
�����ǣ������ԭ����ڣ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	StL(1000, @0, @0,"cg/st/st�ұ�_ͨ��_�Ʒ�.png");
	OnSE("se�ճ�_��_�����Q��01",1000);
	FadeStL(300,true);

	SetFwC("cg/fw/fw�ұ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0289]
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0030810b43">
��Ҫ˵�´����ฮ��һ�仰��
������������С��������ô����

{	FwC("cg/fw/fw⏴�_ͨ��.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0030820b57">
����������ϸ˵˵����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	FwC("cg/fw/fw�ұ�_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0030830b43">
���´��ĳ����ҿ������㼪�����
�᳼����������ʵȨ�������˽���
���ฮ������ʵ����ȫ��ͳһ������

//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0030840b43">
��ȷ���˵�ʱ�Թض�Ϊ���ģ��ų�Լ��������ʯ
���������ڴ˷�Χ֮������ط��ɸ�����
û�жԾ���������������������ĸ��档��

//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0030850b43">
�������ɱ��ǣ����ฮ������Ŀ��
���Ͳ�������ȫ������������
�������Ӻͷ��ٵ´�һ�塣��

//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0030860b43">
����ˣ�����ֻ��Ϊά�ֵ´�������Ҫ��
���������������Է�Ϊ��λ���зָ
�Է�������Ҳ�������ġ���

//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0030870b43">
����һ���棬����Ƶ��ָʾ�������гǳ�
�޸�����ˮ���̵ȣ��÷��Ĳ����޷����ۣ�
����Ҳ��ͬ����

//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0030880b43">
���´���ô�����ڽ���Ͼ��ǰѵط�������
�����ط�������֪������벻������
ָʾ���ɾ���һ�ַǳ�ʵ�ʵ�ͳ�����ơ���

{	FwC("cg/fw/fw�ұ�_ͨ��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0030890b43">
������´��ҿ�̰�����ᣬ��Ҫͨ���Լ���
����ֱ��ͳ��ȫ��ÿһ�����䣬����ʷ����
�ͻ�ı��ˡ���

{	FwC("cg/fw/fw⏴�_Ц�.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0030900b57">
������������ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������á��ұ���ȥ
	OnSE("se�ճ�_��_�����Q��01",700);
	DeleteStL(300,true);

	SetFwC("cg/fw/fw⏴�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0030910b57">
�����¾���ղŵ�����˵���������´�����
ѡ��ط���Ȩ����û��ѡ�����뼯Ȩ��
������ѡ����Ӧ��ʱ������

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0030920b57">
���������������Ŷ����

{	FwC("cg/fw/fw���w_�@��b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0030930b56">
��ι��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310]
����⡣
����ȫ�����߷��ˡ�

�����ˣ���������ұ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw⏴�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0320]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0030940b57">
��Ȼ��ʱ����Ǩ������������ǿ�ĵ۹�����
��ʼ�������������������ս�����
��������˵�ġ�С�������ơ���
�����޷��ֿ�ס��ǿ����

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0030950b57">
��Ӧ�������ʱ������ʩ�е��������ߣ�
��ʱҲ������ô�롭����

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0030960b57">
����ν�������ߣ���ͨ���ж��������ȫ��������
�����ڵ����ฮ���ȹ�����ڻ�ҵ�ڼ䣬
Ϊ�ų����������ʩ�еĽ�����ʩ����

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0030970b57">
���ֵ�����䣬ʱ�ιذ׵ķ᳼����
�����´��ַ������֮ս�Դ˷���֮ʱ��
���Գƹذ״Ӵ�Ӣ��������������
Ҳʵʩ�˶����������ߡ���

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0030980b57">
��������ΪӦ��������ǿ�������޵ĶԲߣ�
ĩ�����ฮѡ�����ٴ�ʩ���������ߡ���
���ƾͻ����´��ģ������ͻ�Ľ������

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0030990b57">
����������ǣ���͸����˾����ƶȣ�
ѡ������Ϊ���뼯Ȩ���������ĵ�·��
����ϸ�ľ������������

{	FwC("cg/fw/fw⏴�_Ц�.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0031000b57">
������������ͳ��ˣ����쵽��Ϊֹ�ɡ�
��Ҳֻʣ������ӡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0330]
���ܺá�
���������崨��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw⏴�_Ц�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0340]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0031010b57">
��Ϊ�˱�����⣬���ٽ�Щ���⻰����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0350]
���ܺá�
��������ô�ɰ��崨��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw⏴�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0360]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0031020b57">
�����Ͷ��������꣬����һ���ĩ�������ڡ�
��ʵ��֧���Ŵ�͹���������Ļ����ʵ�ǡ�����

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0031030b57">
��Ҫ˵�Ļ�����������̰���ĵ´�����

{	SetVolume("@mbgm30", 600, 0, null);
	SoundPlay("@mbgm35",0,1000,true);
	FwC("cg/fw/fw���w_ͨ��b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0031040b56">
������������

{	FwC("cg/fw/fw⏴�_���.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0031050b57">
��ֻ׷���Լ������棬�������ֽƻ�˼��
֧��ȫ�������ơ�
������Ժ������Ժ�����ϳ����ڸ�Ҳʧȥ
���ܣ�������͢�������Ǹ�װ�Ρ���

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0031060b57">
����һ���棬����������������ɽկ��
��Χ�����Ĺ������ùض�һ�����»��ػ���
����Ŵ��ȫ������

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0031070b57">
����ͳ�η���ȷʵ���׶���
���������棬ֻ�ܷ��ӡ�����

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0031080b57">
���������Ļ��������ء���
�����汻����Ұ����Ϊ��ԭ�����
��δ�ؽ������ɣ�Ӧ��û���˲�֪���ɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������Ű���ãǡ������_�α�Ű����`���a��
//������Ҋ������ȥ

//�룺����ݳ�
	CreateTextureEX("�}EV100", 10000, Center, Middle, "cg/ev/ev102_����Ű��_a.jpg");
	Fade("�}EV100", 1000, 1000, null, true);

	Wait(3000);
	FadeDelete("�}EV100",1000,true);

	SetFwC("cg/fw/fw⏴�_���.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0370]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0031090b57">
������һ��ס�ڽ��ܵ����˵Ļ���
�������У����һ��˫�صر���Ϊ������С���

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0031100b57">
���������ڣ�������������������ͳ�Ρ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0380]
����������

���崨��������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw⏴�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0390]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0031110b57">
�����ǡ�֮ǰ��˵���ҿ����̰�����ᣬ
��ʷ������д����

{	FwC("cg/fw/fw�ұ�_���.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0031120b43">
������������

{	FwC("cg/fw/fw⏴�_���.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0031130b57">
������θ�д�ء�����������Щ�һ�ͻ�
���������ˡ����ܿ졣��

{	FwC("cg/fw/fwС��_���.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0031140b33">
������������

{	FwC("cg/fw/fw⏴�_ŭ��.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0031150b57">
���ܿ졭���ܿ�ͻ��սᡣ
�������������ʱ������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm35", 1000, 0, null);

//�����`�󥳩`�󥫩`�󥳩`�󡣥֥�å�������
	CreateColorEX("�}ɫ100", 15000, "Black");
	Fade("�}ɫ100", 1000, 1000, null, true);

	DeleteStA(0,true);

	Wait(500);

	OnSE("se�ճ�_ѧУ_���㥤��01",1000);

	Wait(500);

	Fade("�}ɫ100", 1000, 0, null, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0400]
�����硣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�ұ�_ͨ��.png");
	SoundPlay("@mbgm28",0,1000,true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0410]
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0031160b43">
���۷ɣ������緹��ʲô��
�����ǲ�����ͷ�Ͱ���Ŷ����

{	FwC("cg/fw/fw���w_Ц�b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0031170b56">
��������ͷ�Ͱ�����

{	FwC("cg/fw/fwС��_ͨ��a.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0031180b33">
�����ǲ�����ͷ�Ͱ����ء���

{	FwC("cg/fw/fw�ұ�_Ц�b.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0031190b43">
�������ɰ�����Ҷ�һ��ѽ����

{	FwC("cg/fw/fw���w_ͨ��b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0031200b56">
����Ϊ��ͳһ�ṩ�����

{	FwC("cg/fw/fwС��_ŭ��b.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0031210b33">
����һ���Ļ��Ž������ء���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0420]
����ͷ�Է���
��̸�����ѳ�Ҳ̸���Ϻóԡ�ϰ��Ϊ����ζ����

���Դ���ʳ�����ƻ���ʼ���������׺�����
�ͳ�Ϊ�����ϵ������ͷ�����Ű�Ȩ��
����Ϊ׷��ɱ��Ľ�����������ʳ��
���϶�Ϊ�����֡��ƺ���ˡ�

����Ϊ�����ʳ�ﱧ�����ʵ�ڿɳܣ�
���Բ�̫�뷢�����ۡ�
������ż����Ҳ�����Ե�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwС��_���.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0430]
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0031220b33">
����û���ء�����

{	FwC("cg/fw/fw���w_����.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0031230b56">
����ô�����ء���

{	FwC("cg/fw/fw�ұ�_����.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0031240b43">
������Ǳ���Ҳ�����ˣ�ƫƫ���ɰ���
��������ʲô�𡭡���΢����ɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0440]
����ȻҲ��ʼ�����˰ɡ��ұ�һ�����Ӻ���������飬
ͣ���˳Է����֡�
����ָ���ϴ��ߣ������Ĭ��˼����

������Ϣ�������𡭡�

��������������ϲ���������棬
��Ȼ����ȴ����˼���������ع�ص�һ�档
�Ƿ����ͨ��ȫ�ڵĵ�У���ֳ�����
������ֱ������Ϊֹ��

�����弫�佡�������㱻����ȹ�ȥҲ����ô�ỵ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���w_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0450]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0031250b56">
����Ȼ����ҹ�ι������𡭡�˵�����Ǳ���
׽ס�����������������������أ�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0460]
����ʱ����ֻ���뵽���̶ֳȡ�
��
��Ȼ�����ұ�ȴ�ƺ���ͬ��

����������̧�������ģ��ұ�����������
�Ҳ���������һ������
����С��Ҳ��������Ⱦ����ֱ�����ӡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���w_���a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0470]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0031260b56">
������������ʲô�������õ����𡭡���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0480]
�����׼�����һ���ˣ������Һ�С�Ĳ�ͬ��
�����ڿ�ν�������ϼ�ͥ���ұ�����Ϊ�λ������
��ͨ��ѧУ��ѧ�����Ǹ����ʡ������ֵ���Ϣ�ǳ��ࡣ

��˵�����Ǵ���Щ��Ϣ���뵽��ʲô��
����Ȼû�˷Ը��Һ�С����ô����
�����������ս�����ͣ��ȴ����ۡ�

���ұ��������صؿ����ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�ұ�_���.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0490]
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0031270b43">
���۷ɡ���

{	FwC("cg/fw/fw���w_ͨ��b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0031280b56">
��������ô����

{	FwC("cg/fw/fw�ұ�_���.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0031290b43">
����ͳ��ϰɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������܉�����ܤ���
//���ұ��������}��ȥ

	SL_down(@0,@0,1500);
	OnSE("se���L_����_Ź��03",1000);
	SL_downfade2(10);

	CreateColorEX("�ե�å����", 15000, "WHITE");
	Fade("�ե�å����",0,1000,null,true);
	Fade("�ե�å����",100,0,null,true);
	Delete("�ե�å����");

	ShakeOne(1000, 300, 0, 5, 0, 0, 500, null, false, "cg/bg/bg008_����_01.jpg");

	SetFwC("cg/fw/fw���w_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0500]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0031300b56">
���㵽������ʲô˼����·
�ŵó����ֽ��۵�!?��

{	FwC("cg/fw/fwС��_ͨ��b.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0031310b33">
���۷ɣ����������ݾ�Ҫ������Ŷ����

{	FwC("cg/fw/fw���w_���b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0031320b56">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0510]
������Ѿ������˵����������û���
С�ĸɴ����Ӽ̶����³��𷹡������ߴ��ţ�
������Ҳ����ԭλ������������
��������㣬�ұ�����ббվ��������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�ұ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0520]
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0031330b43">
������������Ǵ�˵�е���֮���鰡����

{	FwC("cg/fw/fw���w_ͨ��b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0031340b56">
����Ȼ�ܾ����м�ʡ���˺ܶණ������������
���������ˡ���˵�㰡�����ȿ��ǿ���������
�����æ������Ŀ����԰ɡ���

{	FwC("cg/fw/fw�ұ�_�@��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0031350b43">
�����ǹ��ˣ�������Щ�������ɵ�
����ɡ���

{	FwC("cg/fw/fwС��_ͨ��b.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0031360b33">
��Ҳ���Ǿ��Բ����ܵ�����ɡ���

{	FwC("cg/fw/fw���w_���.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0031370b56">
�������е��޷����󡣡�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0530]
�����������쵼Ȩ���������ǵ����й䵽̫����ɽ�ģ�
������Ϥ���ɵ���Ӱ������Щ���¶�̫����ġ�

���������벻������������Ҳ����ʵ��
�������ȷ������ʲô�����ǵ����˲��ڵĳ����£�
����ô����Ҳ�ò������ۡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���w_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0540]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0031380b56">
����ѧ��ȥ��������𣿡�

{	FwC("cg/fw/fwС��_ͨ��a.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0031390b33">
�����ء���û���⣬Ҳûʲô�¡�
���ұ����أ���

{	FwC("cg/fw/fw�ұ�_����.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0031400b43">
����ȻҪȥ����Ҳ�ܹ��İ���
��������ȥ�Ļ�����һ����ʲô���
Ҳ�������Ӧ����ܸ����Ƶ��ˡ���

{	FwC("cg/fw/fw���w_���b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0031410b56">
��������ô����������ⲻ�ţ���֪��ʲô
ԭ������ҰС��ʽ�ƻ�����ͻ�ͻȻ������
���ƹ�һ�������پ���������Ҳ���ں��𣿡�

{	FwC("cg/fw/fw�ұ�_����.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0031420b43">
������ְ������������߼�˼���Ľ���
˵��һ�¡���<?>
{	FwC("cg/fw/fw�ұ�_Ц�b.png");}
�������۷ɣ���������ôŬ����
����������Сָ������ʮ�����ϣ�
���Ҹо���ʹŶ����

{	FwC("cg/fw/fwС��_ŭ��b.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0031430b33">
��������˵�����������������ܸо��ұ���
�������ƺ���ʲô���Բ�����ˡ��Ҫ�ء���
�����ҵĴ���𣿡�

{	FwC("cg/fw/fw���w_����.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0031440b56">
������С�ġ���������¡������ɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0550]
����֮�����������ĳ����У�����ļƻ������ˡ�
����æ������ǽ�ʣ�µĹ���ʳ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwС��_ŭ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0560]
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0031450b33">
���۷ɣ��úý����ٳԡ���

{	FwC("cg/fw/fw���w_����.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0031460b56">
���ղŻ����ҳԿ�㡣��

{	FwC("cg/fw/fwС��_ŭ��a.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0031470b33">
�����Բ����Ŷ��������°͸�����ת����

{	FwC("cg/fw/fw���w_ͨ��b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0031480b56">
����ǿ���Ҳ�����������°͡�
������������ʦ����

{	FwC("cg/fw/fwС��_�@��a.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0031490b33">
����!?��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	OnSE("se�ճ�_��_�����Q��02",1000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0570]
�������ҵ�������С����ͬ����һ�����ת������
��˲��һ�˩��ȡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�ұ�_Ц�b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0580]
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0031500b43">
���������ո��Ǹ���ֱ����ֱ����������

{	FwC("cg/fw/fw���w_�@��a.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0031510b56">
����һ�Ĺؽ���װ�˹�����аɡ���

{	SetComic(@0,@0,7);
	FwC("cg/fw/fwС��_�@��b.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0031520b33">
�����塢�崨��ʦ�����С��кι��!?��

{	DeleteComic();
	FwC("cg/fw/fw⏴�_�@��.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0031530b57">
�������š�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StR(1000, @0,@0,"cg/st/st⏴�_ͨ��_�Ʒ�.png");
	FadeStR(300,true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0590]
�������Ƕ�С�����ַ�����Ļ����Ըе��˲�֪���룬
�߹������崨���־�������������ˡ�
���ƺ�������Ҫ���к���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
 
	SetFwC("cg/fw/fw⏴�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0600]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0031540b57">
�������Է�ʱ��������ǣ�������˼����

{	SetComic(@0,@0,13);
	FwC("cg/fw/fwС��_�ɥ�`��.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0031550b33">
��û������û��û�У������Ѿ�������Щ
������һ�������Է��ˣ�
�������������������

{	DeleteComic();
	FwC("cg/fw/fw���w_ͨ��b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0031560b56">
������ûλ�Ӱɡ���

{	FwC("cg/fw/fwС��_�ɥ�`��.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0031570b33">
���Ǿ�����ȥ�����Ӱɡ��ұ������ӡ���

{	FwC("cg/fw/fw���w_���b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0031580b56">
���⵽���������Ľ����ֳ���������

{	FwC("cg/fw/fw⏴�_�@��.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0031590b57">
���������á����Ѿ��Թ��ˡ���

{	FwC("cg/fw/fw�ұ�_Ц�b.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0031600b43">
�������������ֿտյ��
һ���������ǳԹ��ˡ���

{	FwC("cg/fw/fw���w_ͨ��a.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0031610b56">
��ֻ���������˲���ɶ�������Ů�˲Ų����ס���

{	FwC("cg/fw/fwС��_�ɥ�`��.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0031620b33">
�����������ǡ��Ǹ�����ʲô���أ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0610]
���Һ��ұ��������Ѿ�������С�ĵĶ������ˡ�
��������Զ������������Զȥ�ɡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw⏴�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0620]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0031630b57">
���ǹ�������ġ�����

{	FwC("cg/fw/fwС��_�ɥ�`��.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0031640b33">
���ǣ���ֻҬ��з��ô�ˣ���

{	FwC("cg/fw/fw⏴�_�@��.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0031650b57">
��Ҭ�ӣ���

{	FwC("cg/fw/fw���w_����.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0031660b56">
���뵱�����߷硣��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0630]
�����Ԯ�ֵ������Ǹ����ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw⏴�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0640]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0031670b57">
��������ȱϯ��ԭ������֪��Щ�𣿡�

{	FwC("cg/fw/fw�ұ�_����.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0031680b43">
��������ȫ��֪������

{	FwC("cg/fw/fw���w_ͨ��b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0031690b56">
�����ڸղ����ǻ��������������

{	FwC("cg/fw/fw⏴�_���.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0031700b57">
�����𡭡���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0650]
����Ȼ���崨�ƺ�Ҳ������ˡ�
��������Ȼ�ɡ�
������������ȴ���޳ٵ����޿��δ������ˣ�
���ֹ������������עĿ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw⏴�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0660]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0031710b57">
������������ʲôʱ�򣿡�

{	FwC("cg/fw/fw���w_����.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0031720b56">
�������������ɡ���

{	FwC("cg/fw/fwС��_ͨ��b.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0031730b33">
����ȷ�������ڰ�����翴��ľżϷ��
�����Ƕ���ɢ�ġ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0670]
��С��̧ͷ�����컨��߻����˵��
���ƺ����ٻָ��˵������ľ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���w_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0680]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0031740b56">
���Һ�С��һ����˼ҡ�����

{	FwC("cg/fw/fw�ұ�_�@��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0031750b43">
���Һ���һ������һ���������Դ��ɽһ��
�ͷֿ��ˡ�����˵Ҫ��ȥ��һ����ء���

{	FwC("cg/fw/fwС��_ͨ��b.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0031760b33">
����ż��㣿��

{	FwC("cg/fw/fw�ұ�_����.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0031770b43">
������Ӧ�����ߵ�ǰ����

{	FwC("cg/fw/fw⏴�_���.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0031780b57">
����֮��Ͳ�������𡭡���

{	FwC("cg/fw/fw�ұ�_�@��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0031790b43">
��������û�лؼ��𣿡�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0690]
���ұ��ɴ�����˳�����

�������ǰ���
����Ȼ�崨�����������⣬Ҳ����˵��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw⏴�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0700]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0031800b57">
������ס������Ҹ����Ĵ��ɣ�����˵��
�������ϵ�ʱ������û�лؼҡ�
��������β������������

{	FwC("cg/fw/fw�ұ�_�@��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0031810b43">
����绰���ʿ���ô������

{	FwC("cg/fw/fw⏴�_ͨ��.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0031820b57">
�����У������û�е绰����

{	FwC("cg/fw/fw���w_����.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0031830b56">
������˵���ֶ���ֻ������аɡ���

{	FwC("cg/fw/fw�ұ�_����.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0031840b43">
�����𡣹ֲ����Ҿ��ú����ô�����

{	FwC("cg/fw/fwС��_ŭ��a.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0031850b33">
�����������Ի�����Ϊֹ��
����ʦ����Ȼ�Ҳ�����̫��������˵��
��ҹ�����ޱ����Ͳ�����ôϡ�е��¡�
���Ǻ�����˵����

{	FwC("cg/fw/fw⏴�_ͨ��.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0031860b57">
������֪����
���������ļ����ƺ�Ҳ���Ǻܵ��ģ�
��ʦ����Ҳû�д���̫�����š���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0710]
���崨Ҳ���Ǹ������������µĺüһ��ء�
������Ƕ������ԭ���ֹ�ֱ���˵Ļ���
���ڹ��ƾͲ������ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw⏴�_Ц�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0720]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0031870b57">
�����ˡ�������Ļ���Ӧ��û����ɡ�
��������﷢�������£���ʦ�ɻ�ܻŵġ���

{	FwC("cg/fw/fw���w_���b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0031880b56">
��Ϊʲô����ʱ���
���������������Ӱ�����ʦ������

{	FwC("cg/fw/fwС��_����.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0031890b33">
����Ϊ�������ⶼ�����׵�С�������

{	FwC("cg/fw/fw�ұ�_ͨ��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0031900b43">
���������ʶ���Լ��ĺ�������Ҳ�Ͳ���
С�����ˡ������۷ɣ��ҷ����������أ���

{	FwC("cg/fw/fw���w_ŭ��b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0031910b56">
�������ˡ���

{	FwC("cg/fw/fw⏴�_Ц�.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0031920b57">
��������Ц��
���ܱ�Ǹ�ڳԷ�ʱ�������ǡ�
��Ե㣬Ҳȥ�ú��˶��¡�
����Ŀοɱ�˯��Ŷ����

{	FwC("cg/fw/fwС��_�ɥ�`��.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0031930b33">
���ǡ�������

{	FwC("cg/fw/fw���w_ͨ��a.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0031940b56">
�����ס���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStR(300,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0730]
��Ŀ���崨�ǳ���ʮ����ȥ�Ĳ�����

���ˬ�ı�Ӱ���Ҹо�С���Ѿ��������С�

��˵������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���w_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0740]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0031950b56">
���������Ǽһ

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0750]
������ȥ�����ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	ClearWaitAll(1000, 2000);



}

..//������ָ��
//�Υե����롡"ma01_004.nss"
