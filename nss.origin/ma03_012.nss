//<continuation number="310">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma03_012.nss_MAIN
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
	#bg035_�`�}���`���åȸ��a_02=true;
	#bg035_�`�}���`���åȸ��a_03=true;
	#bg007_��m��·a_03=true;
	#bg034_���Lլ����ga_03a=true;


	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "ma03_013.nss";

}

scene ma03_012.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"ma03_011a.nss"
//ǰ�ե����롡"ma03_011ba.nss"
//ǰ�ե����롡"ma03_011bb.nss"
//ǰ�ե����롡"ma03_011c.nss"

//������
//�����`���åȈ���ҹ

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg035_�`�}���`���åȸ��a_02.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 2000, true);

	WaitKey(1000);

	OnBG(100,"bg035_�`�}���`���åȸ��a_03.jpg");
	FadeBG(2000,true);

	WaitKey(1000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
�������ѵ���ĺ�����������һ�յĵ��顣
���������Կ���֮�˵Ľ䱸����ϸ�
Ϊ�����Լ����£�Ψ�����ҳ��ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���`�}��·
//�����Lլ�����g

	PrintGO("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg007_��m��·a_03.jpg");
	FadeBG(0,true);
	FadeDelete("�ϱ���", 2000, true);
	WaitKey(1000);
	FadeDelete("�}��ܞ", 2000, true);

	WaitKey(1000);

	CreateColorSP("�}��ܞ", 15000, "#000000");
	DrawTransition("�}��ܞ", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(100,"bg034_���Lլ����ga_03a.jpg");
	FadeBG(0,true);

	DrawDelete("�}��ܞ", 1000, 1000, "blind_01_00_1", true);

	SoundPlay("@mbgm30",0,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
����ϲ��ص��𳤼ҡ�
���ȱ���Ъһ�������ʼ���ཻ���鱨��

��ֵ��һ���ĳɹ������

��һ��
���μӽ���Ԥѡ�������壬�Լ���֮����з�����ϰ��
�����У������ڼ����塣
��������ȷ����ϡ�

�����⣬��塢�辩�ͺ�͵ȴ����������������δ����
����δȷ�ϡ�

������
�������ĸ���������δ���϶��ɾ�ʮ�㣬����˵���Ƕ�
��������������
������ǰԤ��һ����

������
��Χ��װ�׾����Ĳ��ʻ�����������硣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

..//�ե饰���
//���ե饰���
//�������Έ������ޤ롹�x�k�򤷤Ƥ�������
//�룺�ե饰�������$�衩��������

//$�衩������ = true;

if($�衩������ == true){//if_start

	SetFwC("cg/fw/fwһ��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0120010a02">
�����ʻ�����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0120020a00">
�������֮����������������
������ȯ������׬Ǯ����

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0120030a03">
����Ҳ��˵�����¡�
������˵�ƽ������辩Ϊ���ģ���������ӵ��
��塣���ң��辩�ı��󡭡���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0120040a00">
�������ޡ�
���辩���糤���������߽��׵��Ĳ�����
����ֵܵĹ�ϵ������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma03/0120050a04">
��������ˡ���

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0120060a02">
���С�
����Ⱥ���ǣ����һ�굽ͷ<RUBY text="��������">���ڷ���</RUBY>Ҳ����
�ˣ����ص�Ҳ������ѡ����
����Ȼ��������ʳ����

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0120070a00">
�����ǣ������������ж�ô֧����������
�����˲�ϲ���Ļ�Ҳ�����ܲ��ʻ���
������辩Ϊ���ڴ���ڶ��㾡ȫ��������
�ɵ����Ҳͬ����Ŭ������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���K��


}else{

..//�ե饰���
//���ե饰���
//�������Έ������ޤ롹�x�k�򤷤Ƥ��ʤ�����

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="����" src="voice/ma03/0120080a00">
�����ʻ���
������˵����������������

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0120090a03">
��û�����������Ķ�����
����װ�׾������ܻ�ӭ�̶ȱ��֪���ܹ�����
�޴�����档��

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0120100a00">
����ȷ��
�����ǣ���˵����������磿��

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0120110a03">
���ǵġ�
�������Ϊ���ģ���һ���ַ��ԡ���

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0120120a02">
������Ϊʲô���ԣ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma03/0120130a04">
���������Ϊ�����������������������
�ɡ��Ȳ�˵���⣬��������������Ѿ������
�Ա���Ϊ��ʿ����Ϸ�ˡ���

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0120140a02">
��ԭ����ˡ��ǵ�Ҳ�ǡ�
�����ܾ�����Ȥ�������޷����������˶�Ҳ��
����һ������ͬһ��·�ɡ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0120150a00">
������������״����Σ����и����к������أ�
��ξ���¡���

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0120160a03">
����ǰ�����������������Ϊ���ĵġ�
������һ���棬�ƽ��ɵ��������辩������ѹ
�������Ƶ�����һ�ߡ����ں�̨ǿӲ�������
ҵ��඼���������ǡ���

{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0120170a02">
����̨����

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0120180a03">
������������޴��ˡ���

{	FwC("cg/fw/fwһ��_����a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0120190a02">
�������١�
��ֻҪ��ɢ����Ǯ��ζ�ĵط����Ǿͻ�������
�꣬��Ⱥ���ǡ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma03/0120200a04">
��������������������С���������׵����˵�
Ļ��֮����һ���ִ�Ĺܵ���
��������¶��ӵ���Ӱ�ڱ����������֣�Ҫ
Υ����������Ҫ����İɡ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0120210a00">
�����ǣ���ʹ������Ļ���Ĵ��ڣ�����û�й�
�Ͳ��֧�֣�Ҫ���ʻ��Ǻ����ѵĲŶԡ�
�����ٰ����������ǲ�ͬ����һ�仯�Ļ���û
Ϸ���ˡ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0120220a00">
�������ⷽ��������Σ���

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0120230a03">
�����ԲŻ�ٰ���δ�ᣬ�������ˡ�
������ڷ�˿���ڴ�����δ�ͣǣ��ϻ�ʤ��
���������ͻ�ۼ�����֧�����ϡ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma03/0120240a04">
��Ȼ�󣬿������������ȡ�öԲ��ʻ���֧��
�����ˡ�
��������������ϣ������ɵ�����Ҳ��ͬ���ġ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0120250a00">
������ԭ����ˡ�
���ƽ��ɵ��辩�������ɵ���壬���۶���һ
��������δ�ͣǣж��ǳɰܹؼ��𡣡�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



}//if_else_End

//������



//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
�����������ϣ�����Ѿ���������ˡ�

��Ŀǰû�о����Եĵ���ɹ���
���������ش����ɵĶ����Ѿ������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��������
<voice name="����" class="����" src="voice/ma03/0120260a00">
����壬�����辩����

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0120270a03">
��������������һ��������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma03/0120280a04">
����һ������μ�����İ�����ɡ���

{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0120290a02">
��Ҳ����˵��������ܼ���������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
�����졣
���������ں��졣
���ǣ�������˵����ͻᶨʤ��������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0120300a02">
�����������辩�ͺ��ˡ���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0120310a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
��һ����˵����仰�����������������ֱ������һ
�¡�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	ClearWaitAll(1000, 2000);

..//������ָ��
//�Υե����롡"ma03_013.nss"

}


