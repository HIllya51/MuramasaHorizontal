//<continuation number="1370">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_046.nss_MAIN
{

	CP_AllSet("����");

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
	#bg105_���T�����ڂ�_02=true;
	#ev231_�衩�����_a=true;
	#ev231_�衩�����_b=true;
	#ev231_�衩�����_c=true;
	#ev231_�衩�����_d=true;
	#ev231_�衩�����_e=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md04_047vs.nss";

}

scene md04_046.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"md04_045b.nss"

//���ե��`�ɥ��󡣳���bg105_Ϧ

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\Ļ��", 5000, "BLACK");
	OnBG(100, "bg105_���T�����ڂ�_02.jpg");
	FadeBG(0, true);

	SoundPlay("@mbgm16", 0, 1000, true);

	Wait(500);

	Delete("�ϱ���");
	FadeDelete("�\Ļ��",1500,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
�������ٶ�ȷ����Χ��״����

�������������ֳǡ�
�����ڡ����������Ǻŵ�����������Ļ��ҷ籩�����ġ�

��ɱ��
��ɱ��
��ɱ��
��ɱ��

��������ɱ¾�ռ䡣

���������룬��ֹ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StL(1000, @0, @0,"cg/st/st����_ͨ��_˽��.png");
	FadeStL(300,false);


	SetFwC("cg/fw/fw����_������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="��������" src="voice/md04/0460010a01">
�������������ˡ�
���������Ҹ����㡣��

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md04/0460020a00">
������ʲô����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0460030a01">
����������֦�������㴫������

{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/md04/0460040a00">
��������ξ����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
���þò��������������ˡ�
�������ξ�������һ����������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="��������" src="voice/md04/0460050a01">
����Ȼ��֪�м�������ʵ��
���������Ҿ���ԭ��˵�ˡ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md04/0460060a00">
���á���

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0460070a01">
����פ����Ҫʹ�þ�ս���������׵���
�����Ǽ�������������ȫ�١���֮��ġ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md04/0460080a00">
������������

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0460090a01">
������֪������ʲô��˼��
������һ��Ҳ�������ס���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStL(300, false);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
��������û��ʱ��ش��ɻ�Ĵ�����
��
���ǰ����������׵���

�������ܽ����������ֳǵ�ƽ�����ձ�����
��Ϊ�˽�פ����ʤ����������Ϊ���������Ŀ�ģ�
�����Ͼͻᱻ��Ͷ��������

����Ҳ�����ɹ������޷�����ı����Ƿ���Ĵ��ڡ�
����������ȫ��ͬ��;��������λ�����ξ���õ���ͬ
�鱨�Ļ�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��������
<voice name="����" class="����" src="voice/md04/0460100a00">
����Ĵ��ڡ���

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0460110a01">
��������������

{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/md04/0460120a00">
���Ǳ�����Ĵ��ڣ�������
�����ң����Ͼͻ��䵽�������

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0460130a01">
������������

{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/md04/0460140a00">
�����������ǵóѡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
�����ڣ���Ϊ���ȵľ�������¡�
�������������ģ�����ƻ���������

�����ǣ�Ҫ�����ֹ��

����Ͷը����Ӧ�û��ɷ��о������������ִ�С�
���ػ���������

�����������첻����

������ը�����൱��������ִ�п�Ͷ�ķ�������Ȼ��
ѡ��߿ա�
��Ҫӭ���Ļ����͵õ�����Ƭ������С�

�������ڣ��Ϳ������ǺŸ�����ľ�����ռ�ݡ�
��Ҫǿ��ͻ�Ʋ�������ô���׵ġ�

�������ƿ�������׼��϶������������Ҳ�������Ͷ��
�ӵĻ�������ս���������ǡ�
���ܲ���û�л����ɡ�

�����С�
���ⳡ��עʤ��̫���ˡ�

�������������취��

��������ʲô�취�أ�
��������������ֹ�Ļ���̸���أ�

�������פ��˾�ֱ����ָ�ӹ�̸�У�
��
��������Ϊ�����״�Ĳ��ԣ�̫���뻯�ˡ�

�����У�����ʲô�취����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//��������
<voice name="����" class="��������" src="voice/md04/0460150a01">
���������ղŵĴ�����û���ꡣ��

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0460160a01">
����ʵ�������Ļ�����Ҳ��̫���ס�����

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/md04/0460170a00">
��˵�ɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
�������ҵ��˾��������Ƶģ��Ҵߴ���˵��ȥ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//��������
<voice name="����" class="��������" src="voice/md04/0460180a01">
��Ϊ����ֹ�ⳡ��ս����
����������������Ļ������

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md04/0460190a00">
����������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md04/0460200a00">
������ʲô��˼����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0460210a01">
����˵���Ҳ����ˡ�
��Ȼ�󡭡���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0460220a01">
����˵���������ɰ����ǹؼ�����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md04/0460230a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
���������ɰ��ϡ������ϵĵ�������޵��ܴ󽫡�
���Ǹ����������������޵Ĺؼ�������

�������ξ����������ʲô���Ŀ��ǣ� 
����ȷ����פ����Ŀ�Ĳ��ǻٵ������ǣ�������������
�ޡ����������޲����ڵĻ���Ҳ��û�п�Ͷը���ı�Ҫ
�ˡ�

�����㰵�����������Ŀ���������޺��޹�ϵ����Ȼ��
�ǲ����������Ž�פ����Ȩ��ֻ������ز��������ǵ�
�ж�����ô���ǾͲ��������ӽ�פ����Ŀ�ġ�����һ��
Ļ�������𣬼ƻ��ͻ��ܴ졣

������Ļ�������ǲ����ܱ��˼򵥴����������ġ�
��
����ξ�Ļ�̫Ƭ�棬�޷������������⡣

�������ǣ�����Ϥ�ִ����ƵĴ�����ϸ˵�������鷳��
����ֻ��������Ҫ�㡣
�������˼�����ڿ�����ɺޡ�

����������������һ�¡�<k>
��
��<RUBY text="������������������">�������ɰ����ǹؼ�</RUBY>��

����ָҪ��ɱ��Ϊ�ܽ�������
�����������ԡ�������ˡ�

�������������Ȩ�����޻���̫�磬���ڲ���
ʵȨ��
����ʹ�����ˣ�������Ҳ�������

�����ԣ�������ɱ������
����������<RUBY text="������">����ȥ</RUBY>��

�����������޵�ʵ��������������Ҫ���ã�
��ʹ��ʧ��Ҳ�����Ļ����������ˡ�
���������ܹ�����Ļ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//��������
<voice name="����" class="����" src="voice/md04/0460240a00">
�������������ߡ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0460250a01">
��ȥ�ģ���

{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/md04/0460260a00">
�����ظ�
��ȥ�������ϵ��������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md04/0460270a00">
��˵�������������Դ��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
��<RUBY text="��������">�����ڵ�</RUBY>��
������������������Ϊ����ͳ�λ������սᡣ

����������ֻ�����������ϵ�Ļ��Ԫ�ס�
������Ȼ�������ϵ����죬���������巢�������ԣ�
�ض������ش������ɡ������٣��ڱ�����ʵȨ֮��
��֮ǰ��

����פ���϶��������ǷǷ���������������Ϊ�������
���ӡ�
�����ԡ�����������˵�İ졣��������������ж�����
��һ����

������һ������פ������ʧȥ����ս�������ɡ�

����Ȼ��Ҳ�п��ܶ��䲻�跴Ӧ��
�������һ�������Ǿ�ʧȥ������֮���������ڴ�͹�
���������¸���ӡ���⵽�����������еȵȣ��ò�
��ʧ��

�����ս�פ��֮�ˡ��������Ǵ�Ӣ������´�½����
�ɶ����Խ�����Щ��
��Ҳ���ʧȥȫ����ս�����档

�����������һ������ֹ��Ͷ�����׵���
������������֮���������������Ƶ��սᣡ

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�@��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//��������
<voice name="����" class="��������" src="voice/md04/0460280a01">
����������
���ܡ��ܰ쵽�������¡���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md04/0460290a00">
�������Կ��Ͳ�֪����
�����ҵ��뷨����������ɹ���ϣ����󡣡�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
��ʵʩ���ԡ���ֻҪ�ò��ӵĹ���ͨ�������ܰ쵽��
���ܹ�ʹ���Դ��ﵽ�ķ�Χ�����㣬�����޷��ڸǡ�

���ѵ㣬�������˵������

����Ȼ���������ֳ�ס��һ�󣬵��ҵ����ֻ������һ
����������������Ϊ����֮�˵��������ϲ�û�м����
�ᡣ
����Ȼ����������̸����

������Ҳ����˵��
���ұ���嵽δ��ı��Ĺ�����ǰ�������������޵���
�����顣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//��������
<voice name="����" class="����" src="voice/md04/0460300a00">
���������ɡ�
��������Ȼ������û�����ţ����Ǻ��ѻش𡣡�

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0460310a01">
��������Ҳ��Ŭ���ġ�
����Ȼ��֪�������϶����ó�����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md04/0460320a00">
�������ˡ���

{	SetVolume("@mbgm*", 1000, 0, null);
	FwC("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0460330a07">
���ò��Ű��аɣ�
���Ǹ�����������ֳ��������ó�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���衩��

	StR(1000, @0, @0, "cg/st/st�衩��_ͨ��_�Ʒ�b.png");
	FadeStR(500, true);

	SoundPlay("@mbgm19", 0, 1000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
����ת���Աߴ�����������
������������˿�ߣ�վ��������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StL(1000, @0, @0,"cg/st/st����_ͨ��_˽��.png");
	FadeStL(300,false);

	SetFwC("cg/fw/fw����_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
//��������
<voice name="����" class="��������" src="voice/md04/0460340a01">
������裡��

{	FwC("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0460350a07">
�������С�
������湻�ܸɵİ�����

{	FwC("cg/fw/fw�衩��_ŭ��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0460360a07">
����������������

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0460370a01">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
�����������������������ǰ���ΪԹ������鴿��
�źŻ�֮��Ķ�����
��ֱ�����Ĵ�����ֱ�����塣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�衩��_�n�y.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0460380a07">
����ܥԽ������Ӧ����ʰ���㡭������

{	FwC("cg/fw/fw�衩��_ŭ��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0460390a07">
�������ڰ�ᦹ��͸û����㣡��

{	FwC("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0460400a07">
������ץ��ʹ���˰���
�������������䵽�����ء���

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0460410a01">
��������

{	FwC("cg/fw/fw�衩��_ͨ��b.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0460420a07">
������������Ц����

{	FwC("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0460430a07">
�������޻���˵��
����΢���������꣬�ͱ�������ѽ����

{	FwC("cg/fw/fw�衩��_�n�y.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0460440a07">
�������ǡ�����

{	FwC("cg/fw/fw�衩��_ŭ��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0460450a07">
��̫��Ȥ�˰���!!��

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0460460a01">
�����������������ߵ��𣡡�

{	FwC("cg/fw/fw�衩��_�n�y.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0460470a07">
��û����
�������ȴ����������ߵġ���

//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0460480a07">
��������ʱ��ȫ�����߾ͺ��ˡ�
�����������������һ���Ķ�����û�а����
Ȥ�����Ծͷ���û�ܡ������������

{	FwC("cg/fw/fw�衩��_ŭ��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0460490a07">
���ɶ��Ҳ�û��Ȥ��ڣ�
������Ҳ����ʰ���㡪����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Move("@StR*", 200, @-20, @0, Dxl2, false);
	OnSE("se����_����_һ�i",1000);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
���ų�����������ѻҲ�����ܵ�ɱ�������������֡�
���ҷ����Եأ����ڴ�����ǰ��
����������ǰ�������ͻȻ������һ�ǡ�

{
	DeleteStR(150, true);
}
������ͷ������ȥ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�衩��_�n�y.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0460500a07">
����������������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md04/0460510a00">
����������

{	FwC("cg/fw/fw�衩��_�n�y.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0460520a07">
���ɶ񡭡�ͷʹ�����ˡ���
���������������ת�ˡ�����

{	FwC("cg/fw/fw�衩��_ŭ��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0460530a07">
��ͻȻ�ֶ��ˡ���������
�����������ˡ�������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
��ͷʹ������
��
�����ʮ��ʹ��ɡ�����ͷ�ϵ���ָ������
����Ҫ������˺�ѡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
//��������
<voice name="����" class="����" src="voice/md04/0460540a00">
����������衭������

{	FwC("cg/fw/fw�衩��_�䵨.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0460550a07">
������������

{	FwC("cg/fw/fw�衩��_�դ�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0460560a07">
��������������

{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0460570a07">
�������ֽ��������ˡ�����

//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0460580a07">
����硣��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StR(1000, @0, @50, "cg/st/st�衩��_ͨ��_�Ʒ�a.png");
	Move("@StR*", 600, @0, @-50, DxlAuto, false);

	FadeStL(300, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
��ҡҡ�λεء�
��΢Ц�ţ�������ٶ�վ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw�衩��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0460590a07">
��̫���ˡ�
�����ǽ����н����¡���

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="����" src="voice/md04/0460600a00">
����������
������裬��ͣ�ְɡ���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md04/0460610a00">
���Ҳ�֪������Ҫʲô��
��������֪��Ϊ�����Ŀ�ģ�Ҫ������̫���ˡ���

{	FwC("cg/fw/fw�衩��_ͨ��b.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0460620a07">
��������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md04/0460630a00">
���Ҳ�����㽲�����������ˡ�
��ͣ�ְɡ���

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0460640a07">
�������������Ī���ĳ�ʵ֮����
����Ĳ����ᡭ����

{	FwC("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0460650a07">
�����ǣ����С�
�����������ң���Ҳ����ͣ�ֵġ���

{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/md04/0460660a00">
������裡��

{	FwC("cg/fw/fw�衩��_�n�y.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0460670a07">
��������Ҳ���ܷ���ȥ���������

{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0460680a07">
�������뷨ץס�˹ؼ�Ŷ��
����ȷ���ð��ϵĻ�������Ҳ����ֹ��Ͷ
�����׵�������

//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0460690a07">
��˵����������Ҳ������ô�Ѱɡ�
����Ϊ���ڰ��ϵ������е㲻�����ء�Ҫ�ǰ���
���ٵ�Ļ���Ļ�����Ż��������Ӱɡ���

{	FwC("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0460700a07">
������û�뵽ͯ�ĺ��о�Ȼ�����ֹ���ء�����

{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/md04/0460710a00">
������������

//��������
<voice name="����" class="����" src="voice/md04/0460720a00">
��Ϊʲô��Ҫ��������ң���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
����ͬ����ϣ��һ�㡣
����Ϊ��û�����ţ����Է����Ҳ��ܣ������Լ�����
���Ǹ���ô��

����Ȼ�������Ҷ������Ǿ���������Ȼ�İɡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�衩��_���.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0460730a07">
����������������

//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0460740a07">
����һ�������˺���Ԥ������¡�
���ڶ������Ҫ��������ֹ����

{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0460750a07">
�����������ҵ��ף��Ը�绹��̫�����ˡ�
���������ϲ���Ͼ����˰ɡ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md04/0460760a00">
��������

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0460770a07">
����������������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md04/0460780a00">
������衣
����һ�Ρ�����

{	FwC("cg/fw/fw�衩��_�䵨.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0460790a07">
�����С�
������������ͽ�������ˡ���

//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0460800a07">
����Ȼ��������<RUBY text="����">ѡ��</RUBY>����ء�
������û�С���

{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/md04/0460810a00">
��������

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0460820a01">
���������߰ɡ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md04/0460830a00">
����������

{	FwC("cg/fw/fw����_���C��.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0460840a01">
��������ǿս����
����װ��װ�ף����߾Ϳ����ˡ���

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0460850a01">
����Ȼ�����<RUBY text="�Ƕ���">������</RUBY>�е�Σ�ա���
��������̾���Ļ�����Ӧ������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
��ʮ���׵����᰸��
������ֱ�ɵ����ظ�ֻҪ��˦�������͹��ˡ�

������֮��û�а��µ��ˣ����ܵ�Ŀ�ĵء�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�衩��_���.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0460860a07">
�����ܵļһ��

{	FwC("cg/fw/fw����_���C��.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0460870a01">
������ʲô����

{	FwC("cg/fw/fw�衩��_ŭ��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0460880a07">
��Ҫ��������Ļ���������Ͼͻᱻ�����ɻ�
׹��
���òٿ���ȥ�����Ľ����ѵ������ܣ���

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0460890a01">
�������ߡ�
����Ҳ�㵽����<RUBY text="����">���</RUBY>�Ŀ����ԡ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md04/0460900a00">
����������

{	FwC("cg/fw/fw����_���C��.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0460910a01">
�������ܹ��޷������ߵ��ﺽ������ȡ�
����Ȼ��ҪС�ģ���û�д����⡣��

{	FwC("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0460920a07">
����������㷨��
���������ְɡ������ʮ�֣���

//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0460930a07">
��˳��һ��������һ�ڷ֡���

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0460940a01">
�����⡭������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md04/0460950a00">
���𷢻𣬴�����
�������������ҵ��ж���˵Ҳû�����⡣��

{	FwC("cg/fw/fw�衩��_�n�y.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0460960a07">
����粻֪������û�취��
������<RUBY text="�Ǽһ�">����</RUBY>�����ڻ�û�����
����ʲô�أ���

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0460970a01">
������˵ʲô����

{	FwC("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0460980a07">
�����������׹�������
���쿴���ҵ�����<RUBY text="����">ʲô</RUBY>����

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0460990a01">
����֪������

{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0461000a07">
��Ŷ����˵����������

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0461010a01">
�����ǽ��аɣ�
������衣��

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0461020a07">
������������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310]
//��������
<voice name="����" class="����" src="voice/md04/0461030a00">
������ʲô����

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0461040a01">
�����ǽ���Ŷ��������
�������������裡��

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0461050a01">
�����ǵ��㱻������Ⱦ��ʱ�򡭡��ұ�������
����ѹ������
����ʱ���Ҿ��룬�Ѳ�������������

{	FwC("cg/fw/fw����_���C��.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0461060a01">
����һ��ע�⵽����ϸ̽��֮�󣬹�Ȼ���졣
<RUBY text="��������������">���岻��������</RUBY>��
������һ������

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md04/0461070a00">
������������

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0461080a01">
���ԣ�����һ����
���������ӵ��������̬�Ľ��С���

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0320]
��ܥԽ��������������ǣ����У�
�������ܡ���ô���������¡�

�������������ǡ�
��
���������¶�����εģ����������������

�����ǳ��˾�������ӵ�еġ�
��Ҳ����˵����<k>���еġ�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�衩��_Ц�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0330]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0461090a07">
��������������

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0461100a01">
��������

{	FwC("cg/fw/fw�衩��_ŭ��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0461110a07">
�������ǿ鲻���۾��ķ���!!
����ô������ȴ�´��ˡ���

{	FwC("cg/fw/fw�衩��_�n�y.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0461120a07">
���Ҳ��ǽ��С���

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0461130a01">
������˵�ѡ���

{	FwC("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0461140a07">
���������滰��
������Ҫ�ǽ��е����ˡ���

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0461150a01">
�����Գ������ࣿ
�����Բ��ǰɡ���

{	FwC("cg/fw/fw����_���C��.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0461160a01">
������ƭ���ҵ��۾�����

{	FwC("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0461170a07">
��û��ƭ��
��ֻ��������ˡ���

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0461180a01">
����������<RUBY text="��������������">ӵ������������</RUBY>����

{	FwC("cg/fw/fw�衩��_ŭ��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0461190a07">
��ɵ�ӡ�
�����������ֻ�н��к�������!!��

{	FwC("cg/fw/fw����_�@��a.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0461200a01">
�����������ף���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 1000, 0, null);

//���ţ֣��衩��׻�

	CreateColorSP("�\Ļ", 25000, "WHITE");
	DrawTransition("�\Ļ", 300, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	CreateTextureSP("װ��", 1200, 0, 0, "cg/ev/ev231_�衩�����_a.jpg");
	OnSE("se����_������_���ֳ�װ", 1000);

	WaitKey(1500);


	FadeDelete("�\Ļ",1500,true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0340]
��ͻȻ����ֵ���������
���ͺ���ǿ��������ʹ��������һ�㡪��

������������������Ƥ����ʼ�仯��
���ӽ�׵�Ƥ���ɱ��ʲô��

����ɷ�����������Ӳ�����塣

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����֣���һ���A
	CreateColorEXadd("�\Ļ", 25000, "WHITE");

	Fade("�\Ļ", 50, 1000, null, true);
	CreateTextureSP("װ�ף�", 1200, 0, 0, "cg/ev/ev231_�衩�����_b.jpg");
	CreateTextureEX("װ��", 1200, 0, 0, "cg/ev/ev231_�衩�����_b.jpg");

	OnSE("se����_������_���ֳ�װ", 1000);
	EffectZoomadd(17000, 500, 100, "cg/ef/ef003_�����Ƅ�.jpg", false);
	Fade("�\Ļ", 500, 0, null, false);
	FadeF4("װ��", 200, 500, 600, 0, 0, Dxl2, true);
	FadeDelete("װ��", 300, false);


	SoundPlay("@mbgm10", 0, 1000, true);


	SetFwR("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0350]
//��������
<voice name="����" class="����" src="voice/md04/0461210a00">
��װ�ס���?!��

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0360]
�����޺������е����ӡ�
��������ǰ�ı仯����������װ��ʱ����̬��δ��̫��
���ˡ�

��������Ƥ��������<RUBY text="����">����</RUBY>��
������Ƥ��<RUBY text="������">�仯��</RUBY>���ס�

�����񵹹������ִ�����֩����Ϻ��ʱ�ı��Ρ�
��
����������裬�ѵ�����ǽ���?!

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw�衩��_�n�y.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0370]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0461220a07">
�������ء�����

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����֣���Ѫ�ȿ���

	Fade("�\Ļ", 50, 1000, null, true);

	CreateTextureSP("װ�ף�", 1200, 0, 0, "cg/ev/ev231_�衩�����_c.jpg");
	CreateTextureSP("װ��", 1200, 0, 0, "cg/ev/ev231_�衩�����_c.jpg");
	OnSE("se����_������_���ֳ�װ", 1000);
	EffectZoomadd(17000, 500, 100, "cg/ef/ef003_�����Ƅ�.jpg", false);
	Fade("�\Ļ", 500, 0, null, false);
	FadeF4("װ��", 200, 500, 600, 0, 0, Dxl2, true);
	FadeDelete("װ��", 300, false);

	SetFwR("cg/fw/fw�衩��_�n�y.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0380]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0461230a07">
���������°�������

{	FwR("cg/fw/fw����_�@��a.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0461240a01">
������!?��

</PRE>
	SetTextEXR();
	TypeBeginTimeRIFO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0390]
�����ˡ�
����������һ�������Ĵ���

�����������Ρ����仯�����壬�ǽ��е�һ�ֹ��ܡ�
����Ȼ������������ʮ�����࣬����ɺ�Ϳ�������
�ٿأ������谭��

���������ʮ��ʹ�ࡣ
��������һ��Ҳ�����Կ�����
�������������Ż����һ��ļ尾��

��������������Ѫ����
�����ֽš�������������������

�������ġ������еı仯�����ᷢ�������¡�

����ô���¡�
���⸱�⾰��!?

����������Ů���ӱ���������ż��
��������ʹ�࣬����Ѫ�������š�

��������ô���¡�

���ⲻ��ֱ���񱻷��Ŀ�ѧ��<RUBY text="����">����</RUBY>��һ����!? 


</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����֣��׻��M�С��������~��Ц��
	Fade("�\Ļ", 50, 1000, null, true);

	CreateTextureSP("װ�ף�", 1200, 0, 0, "cg/ev/ev231_�衩�����_d.jpg");
	CreateTextureSP("װ��", 1200, 0, 0, "cg/ev/ev231_�衩�����_d.jpg");
	OnSE("se����_������_���ֳ�װ", 1000);
	EffectZoomadd(17000, 500, 100, "cg/ef/ef003_�����Ƅ�.jpg", false);
	Fade("�\Ļ", 500, 0, null, false);
	FadeF4("װ��", 200, 500, 600, 0, 0, Dxl2, true);
	FadeDelete("װ��", 300, false);

	SetFwR("cg/fw/fw�衩��_Ц�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0400]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0461250a07">
���ǡ����Ǻǡ�����

{	FwR("cg/fw/fw����_�@��a.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0461260a01">
��������������衭����

{	FwR("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0461270a01">
�����ǣ�ʲô����

{	FwR("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0461280a07">
����������һ������Ľ��С���

//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0461290a07">
����Ϊ���ж������ˡ���

//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0461300a07">
�����߽��ǣ����߽Էǡ���

{	FwR("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0461310a07">
����ϵò������Ĳ����

{	FwR("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0461320a01">
��������

{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md04/0461330a00">
����������裬���ǡ�����

{	FwR("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0461340a07">
���������Ը��⡣���Ӭ�Է�㡣
������ѻ�Թᴩ�����ܡ���

//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0461350a07">
����ҹ֮��������������Ѫ֮ʱ����

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����֣��׻�����
	#aw_����=true;

	Fade("�\Ļ", 50, 1000, null, true);

	CreateTextureSP("װ�ף�", 1200, 0, 0, "cg/ev/ev231_�衩�����_e.jpg");
	CreateTextureSP("װ��", 1200, 0, 0, "cg/ev/ev231_�衩�����_e.jpg");

	OnSE("se����_�z_װ��03", 1000);
	EffectZoomadd(17000, 500, 100, "cg/ef/ef003_�����Ƅ�.jpg", false);
	FadeDelete("�\Ļ", 2000, false);
	FadeF4("װ��", 200, 500, 1500, 0, 0, Dxl2, true);
	FadeDelete("װ��", 300, false);


	SetFwR("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0410]
//��������
<voice name="����" class="����" src="voice/md04/0461360a00">
������!!��

</PRE>
	SetTextEXR();
	TypeBeginTimeRIFO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0420]
��������̬��������?!

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwR("cg/fw/fw�衩��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0430]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0461370a07">
����硭�����ǡ���
{Wait(500);}
����������������������<RUBY text="�̣�����硡���������">�������</RUBY>������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�����`���Ф�

//�֤餯�������L�ʤΤǡ�BGMֹ�᤺�ˤ��ޤ� inc�Ѿ�


}

..//������ָ��
//�Υե����롡"md04_047vs.nss"
