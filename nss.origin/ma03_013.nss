//<continuation number="1010">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma03_013.nss_MAIN
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
	#bg001_��a_03=true;
	#bg035_�`�}���`���åȸ��a_03=true;
	#ev114_݆��������_a=true;
	#ev114_݆��������_b=true;


	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "ma03_014.nss";

	//��ꥳ�쥯������á���������������
	#ma03_013=true;
	ReConquest();
	if($PLACE_reco){
		RecoOut();
	}
}

scene ma03_013.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


//���`����
//============================================
//��ꥳ�쥯������á���������������
if(!$PLACE_reco){
//============================================
..//������ָ��
//ǰ�ե����롡"ma03_012.nss"

//��ҹ
//�����`���åȈ�
//���\
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 1500, "#000000");

	OnBG(100,"bg001_��a_03.jpg");
	FadeBG(0,true);

	CreateColorSP("�}��ܞ��", 50, "#000000");

	Delete("�ϱ���");

	FadeDelete("�}��ܞ", 2000, true);


//============================================
//��ꥳ�쥯������á���������������
}else{

	//״�B���x
	OnBG(100,"bg001_��a_03.jpg");
	FadeBG(0,true);

	//�ꥳ����Ĩ��
	RecoIn();
}
//========================================================

	WaitKey(1000);

	OnBG(100,"bg035_�`�}���`���åȸ��a_03.jpg");
	FadeBG(2000,true);

	WaitKey(1000);

	FadeDelete("@OnBG*", 2000, true);

	SetNwC("cg/fw/nw���L��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//������㣯���L����
<voice name="����㣯���L��" class="����������" src="voice/ma03/0130010e101">
������������
��С��С�٣����Ҳ�������չ�Ŷ����

{	FwC("cg/fw/fw��_ͨ��a.png");}
//���١�
<voice name="��" class="��" src="voice/ma03/0130020b42">
�������ǡ�����

{	NwC("cg/fw/nw���L��.png");}
//������㣯���L����
<voice name="����㣯���L��" class="����������" src="voice/ma03/0130030e101">
����Ŷ��
�����������ܲ����ˣ���

{	NwC("cg/fw/nw���L��.png");}
//������㣯���L�¡�
<voice name="����㣯���L��" class="����������" src="voice/ma03/0130040e102">
��С�٣����ҲҪ��
�������ٺ���һ�㡣��

{	FwC("cg/fw/fw��_ͨ��a.png");}
//���١�
<voice name="��" class="��" src="voice/ma03/0130050b42">
���ǡ����š�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����݆��

	CreateTextureSP("�}��100", 10, Center, Middle, "cg/ev/ev114_݆��������_a.jpg");
	FadeDelete("�}��ܞ*", 2000, true);
	SoundPlay("@mbgm32",0,1000,true);

	SetNwR("cg/fw/nw���L��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//������㣯���L�¡�
<voice name="����㣯���L��" class="����������" src="voice/ma03/0130060e102">
��ŶŶ�������������ˡ�
���������С�١���

{	NwR("cg/fw/nw���L��.png");}
//������㣯���L�á�
<voice name="����㣯���L��" class="����������" src="voice/ma03/0130070e103">
���������������������̵�����
���Ű�����������
��С�٣������ôϲ���𣿡�

{	FwR("cg/fw/fw��_ͨ��a.png");}
//���١�
<voice name="��" class="��" src="voice/ma03/0130080b42">
��������������
�������ǡ�����

{	NwR("cg/fw/nw���L��.png");}
//������㣯���L�¡�
<voice name="����㣯���L��" class="����������" src="voice/ma03/0130090e102">
���ǺǺǡ���ϲ��ʲô�أ���

{	FwR("cg/fw/fw��_ͨ��a.png");}
//���١�
<voice name="��" class="��" src="voice/ma03/0130100b42">
������������
�����š����š�����

{	NwR("cg/fw/nw���L��.png");}
//������㣯���L�¡�
<voice name="����㣯���L��" class="����������" src="voice/ma03/0130110e102">
����ɲ��а�С�٣��úúûش�������С�
�����򣬾ͻᱻ����Ŷ����

{	FwR("cg/fw/fw��_��ʹ.png");}
//���١�
<voice name="��" class="��" src="voice/ma03/0130120b42">
����!?���ȿȡ��ȡ�����

{	NwR("cg/fw/nw���L��.png");}
//������㣯���L�¡�
<voice name="����㣯���L��" class="����������" src="voice/ma03/0130130e102">
�����ɡ���

{	FwR("cg/fw/fw��_ͨ��a.png");}
//���١�
<voice name="��" class="��" src="voice/ma03/0130140b42">
���š��ء�����Ҫ����
���롢����������һ�ú����ġ�����

{	NwR("cg/fw/nw���L��.png");}
//������㣯���L�¡�
<voice name="����㣯���L��" class="����������" src="voice/ma03/0130150e102">
���Ȼش����⡣
��С��ϲ������ʲô�ء�����

{	FwR("cg/fw/fw��_ͨ��a.png");}
//���١�
<voice name="��" class="��" src="voice/ma03/0130160b42">
�������������á���
���ѡ��������������

{	NwR("cg/fw/nw���L��.png");}
//������㣯���L�¡�
<voice name="����㣯���L��" class="����������" src="voice/ma03/0130170e102">
���š�����

{	FwR("cg/fw/fw��_ͨ��a.png");}
//���١�
<voice name="��" class="��" src="voice/ma03/0130180b42">
���������ǵġ���
�������ִ󡭡�׳˶�ġ�����������
�����������š����š������������

//���١�
<voice name="��" class="��" src="voice/ma03/0130190b42">
�������ҡ�����ϲ���ˡ�����

{	NwR("cg/fw/nw���L��.png");}
//������㣯���L�¡�
<voice name="����㣯���L��" class="����������" src="voice/ma03/0130200e102">
��������������
����ѽѽ�����⺢������������

{	NwR("cg/fw/nw���L��.png");}
//������㣯���L�á�
<voice name="����㣯���L��" class="����������" src="voice/ma03/0130210e103">
�����Ѱ찡����ô�������˺ܵ�����Ľ�������
  �ҵ�ע�����Լ�Ů����Ҫ����������С���

{	NwR("cg/fw/nw���L��.png");}
//������㣯���L�¡�
<voice name="����㣯���L��" class="����������" src="voice/ma03/0130220e102">
����ѽ��ѽ���ǵġ�
  �����׿��治���װ����԰ɣ���

{	FwR("cg/fw/fw��·_ͨ��a.png");}
//����·��
<voice name="��·" class="��·" src="voice/ma03/0130230b24">
��������������

{	NwR("cg/fw/nw���L��.png");}
//������㣯���L�ġ�
<voice name="����㣯���L��" class="����������" src="voice/ma03/0130240e104">
�������ⲻ��ͦ�ɰ��������Ϣһ�»�Ҫ��
��һ�Ρ�
  ��������·�������ҵ���ˮ����

{	FwR("cg/fw/fw��·_ͨ��a.png");}
//����·��
<voice name="��·" class="��·" src="voice/ma03/0130250b24">
���ǡ��ǡ����á���

{	NwR("cg/fw/nw���L��.png");}
//������㣯���L�¡�
<voice name="����㣯���L��" class="����������" src="voice/ma03/0130260e102">
���ư���С�١�
  ��������ϲ��������Ķ���Ŷ�����������ϲ�
һ��ɡ���

{	FwR("cg/fw/fw��_ͨ��a.png");}
//���١�
<voice name="��" class="��" src="voice/ma03/0130270b42">
���������š��š���

{	NwR("cg/fw/nw���L��.png");}
//������㣯���L�¡�
<voice name="����㣯���L��" class="����������" src="voice/ma03/0130280e102">
�������𣿡�

{	FwR("cg/fw/fw��_ͨ��a.png");}
//���١�
<voice name="��" class="��" src="voice/ma03/0130290b42">
�������š��ǵġ����ܿ��ġ���

{	NwR("cg/fw/nw���L��.png");}
//������㣯���L�¡�
<voice name="����㣯���L��" class="����������" src="voice/ma03/0130300e102">
���԰ɶ԰ɡ�
�������ٿ����㣬���Űɡ���

{	FwR("cg/fw/fw��_ͨ��a.png");}
//���١�
<voice name="��" class="��" src="voice/ma03/0130310b42">
���š�����

{	NwR("cg/fw/nw���L��.png");}
//������㣯���L�¡�
<voice name="����㣯���L��" class="����������" src="voice/ma03/0130320e102">
������������������������ð���
  ��ôƯ����С�����Ȼ���������ֵ�����
�����˿��£����Ž�����

{	FwR("cg/fw/fw��_ͨ��a.png");}
//���١�
<voice name="��" class="��" src="voice/ma03/0130330b42">
������������������

{	NwR("cg/fw/nw���L��.png");}
//������㣯���L�¡�
<voice name="����㣯���L��" class="����������" src="voice/ma03/0130340e102">
��ζ������ɣ���

{	FwR("cg/fw/fw��_ͨ��a.png");}
//���١�
<voice name="��" class="��" src="voice/ma03/0130350b42">
�������ǵġ���
���ǳ�������������

{	NwR("cg/fw/nw���L��.png");}
//������㣯���L����
<voice name="����㣯���L��" class="����������" src="voice/ma03/0130360e101">
��С�����Ǻú��Ӱ���
����ô�����㽱�������ɣ���

{	FwR("cg/fw/fw��_ͨ��a.png");}
//���١�
<voice name="��" class="��" src="voice/ma03/0130370b42">
�������ţ���

{	NwR("cg/fw/nw���L��.png");}
//������㣯���L����
<voice name="����㣯���L��" class="����������" src="voice/ma03/0130380e101">
���ƣ���������
  �������Դ���������ɣ���

{	FwR("cg/fw/fw��_ͨ��a.png");}
//���١�
<voice name="��" class="��" src="voice/ma03/0130390b42">
���������š���������
  �𡢱���ô�����ҡ������š���

{	NwR("cg/fw/nw���L��.png");}
//������㣯���L����
<voice name="����㣯���L��" class="����������" src="voice/ma03/0130400e101">
�������ǰ������С�ٵ����������Ŷ��
������������̫���ˡ���

{	FwR("cg/fw/fw��_ͨ��a.png");}
//���١�
<voice name="��" class="��" src="voice/ma03/0130410b42">
�����ء�����������
��̫��̫�����ˡ�������������㡭����

{	NwR("cg/fw/nw���L��.png");}
//������㣯���L����
<voice name="����㣯���L��" class="����������" src="voice/ma03/0130420e101">
����������������ô����
  �����С�ٿ�������ؽ����һ����Ŷ��������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//���١�
<voice name="��" class="��" src="voice/ma03/0130430b42">
������������������
���롢���������������㡭����

{	NwR("cg/fw/nw���L��.png");}
//������㣯���L����
<voice name="����㣯���L��" class="����������" src="voice/ma03/0130440e101">
���������������Ǿ�˵�����ɡ�
  ˵��������Ϊһ��ܿ��ġ���

{	FwR("cg/fw/fw��_ͨ��a.png");}
//���١�
<voice name="��" class="��" src="voice/ma03/0130450b42">
���ء���������������
���ҡ��ҡ����š���

{	FwR("cg/fw/fw��_ͨ��a.png");}
//���١�
<voice name="��" class="��" src="voice/ma03/0130460b42">
�������塭����Ϊһ�塭��
���ܡ����ġ�������

{	NwR("cg/fw/nw���L��.png");}
//������㣯���L����
<voice name="����㣯���L��" class="����������" src="voice/ma03/0130470e101">
�����������̲�ס�ˣ�
��������һ�������߳��ɣ���

{	FwR("cg/fw/fw��_ͨ��a.png");}
//���١�
<voice name="��" class="��" src="voice/ma03/0130480b42">
���Ű�������

{	NwR("cg/fw/nw���L��.png");}
//������㣯���L�¡�
<voice name="����㣯���L��" class="����������" src="voice/ma03/0130490e102">
��С�٣��������չ����Ŷ��
  ��Ҳ��������ˡ���

{	FwR("cg/fw/fw��_ͨ��a.png");}
//���١�
<voice name="��" class="��" src="voice/ma03/0130500b42">
�����ء����Ű�������

{	NwR("cg/fw/nw���L��.png");}
//������㣯���L�¡�
<voice name="����㣯���L��" class="����������" src="voice/ma03/0130510e102">
��ŶŶ����Ҫ���ˣ�Ҫ���ˡ���

{	NwR("cg/fw/nw���L��.png");}
//������㣯���L����
<voice name="����㣯���L��" class="����������" src="voice/ma03/0130520e101">
����˵С�٣���ҲҪ�ڶ�������
  ���Ұ�����Ķ���������ס����

{	FwR("cg/fw/fw��_ͨ��a.png");}
//���١�
<voice name="��" class="��" src="voice/ma03/0130530b42">
���š����š�������������

{	NwR("cg/fw/nw���L��.png");}
//������㣯���L����
<voice name="����㣯���L��" class="����������" src="voice/ma03/0130540e101">
���ܺúܺã���ƨ��Ť������������

{	NwR("cg/fw/nw���L��.png");}
//������㣯���L�¡�
<voice name="����㣯���L��" class="����������" src="voice/ma03/0130550e102">
��С�٣���Ҫ���ˡ���
����Ҫ�����������

{	FwR("cg/fw/fw��_ͨ��a.png");}
//���١�
<voice name="��" class="��" src="voice/ma03/0130560b42">
���š�������

{	NwR("cg/fw/nw���L��.png");}
//������㣯���L�¡�
<voice name="����㣯���L��" class="����������" src="voice/ma03/0130570e102">
��ŶŶ����
  Ҫ����Ҫ���ˡ�С�٣���������ȫ������������

{	FwR("cg/fw/fw��_ͨ��a.png");}
//���١�
<voice name="��" class="��" src="voice/ma03/0130580b42">
���š������š�����

{	FwR("cg/fw/fw��_ͨ��a.png");}
//���١�
<voice name="��" class="��" src="voice/ma03/0130590b42">
�����š�����

{	NwR("cg/fw/nw���L��.png");}
//������㣯���L�¡�
<voice name="����㣯���L��" class="����������" src="voice/ma03/0130600e102">
���ܺá����������ˡ�
  С�٣������ſ������ǿ�������Ҫ�þ�Һ��
����Ŷ����

{	FwR("cg/fw/fw��_ͨ��a.png");}
//���١�
<voice name="��" class="��" src="voice/ma03/0130610b42">
�������š�����

{	NwR("cg/fw/nw���L��.png");}
//������㣯���L�¡�
<voice name="����㣯���L��" class="����������" src="voice/ma03/0130620e102">
��Ŷ�ǣ�������ͦ�����������
  ����֪������ô���ɣ���

{	FwR("cg/fw/fw��_ͨ��a.png");}
//���١�
<voice name="��" class="��" src="voice/ma03/0130630b42">
����������
���š������š�����

{	NwR("cg/fw/nw���L��.png");}
//������㣯���L�¡�
<voice name="����㣯���L��" class="����������" src="voice/ma03/0130640e102">
������ȥ�˺���ȥ�ˡ�
  �������ܲ��˰�������ô�����С��������
ʹʹ��������ȳ��ľ�Һ�����һ��öԷ�ȫ
��������ȥ����

{	FwR("cg/fw/fw��_ͨ��a.png");}
//���١�
<voice name="��" class="��" src="voice/ma03/0130650b42">
������������

{	NwR("cg/fw/nw���L��.png");}
//�룺�����������ϣ���090930��
//������㣯���L����
<voice name="����㣯���L��" class="����������" src="voice/ma03/0130660e101">
���Ǻǣ�С�١������Ҳ����úñ���һ��Ŷ��
  ֻ�������С��Ա��������㲻�˵İɣ���

{	NwR("cg/fw/nw���L��.png");}
//������㣯���L����
<voice name="����㣯���L��" class="����������" src="voice/ma03/0130670e101">
�����ҵģ���

{	FwR("cg/fw/fw��_ͨ��a.png");}
//���١�
<voice name="��" class="��" src="voice/ma03/0130680b42">
����������

{	NwR("cg/fw/nw���L��.png");}
//������㣯���L����
<voice name="����㣯���L��" class="����������" src="voice/ma03/0130690e101">
��������
��С�ٵ��ӹ�����������!?��

{	FwR("cg/fw/fw��_ͨ��a.png");}
//���١�
<voice name="��" class="��" src="voice/ma03/0130700b42">
���š����������С�����

{	NwR("cg/fw/nw���L��.png");}
//������㣯���L����
<voice name="����㣯���L��" class="����������" src="voice/ma03/0130710e101">
��ŶŶ����ˬ��
��ǰ��δ�еĽ��°�����

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ե�å���
	CreateColorSP("�}�ե�", 2000, "#FFFFFF");
	Wait(200);
	CreateTextureSP("�}��200", 10, Center, Middle, "cg/ev/ev114_݆��������_b.jpg");
	Fade("�}�ե�", 300, 0, null, true);

	SetFwR("cg/fw/fw��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//���١�
<voice name="��" class="��" src="voice/ma03/0130720b42">
������������������������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ե�å���
	Fade("�}�ե�", 0, 1000, null, true);
	Wait(50);
	Fade("�}�ե�", 100, 0, null, true);

	Wait(50);

	Fade("�}�ե�", 0, 1000, null, true);
	Wait(200);
	FadeDelete("�}�ե�", 600, true);


	SetNwR("cg/fw/nw���L��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//������㣯���L����
<voice name="����㣯���L��" class="����������" src="voice/ma03/0130730e101">
���������߳��˰���
��С��Ҳ�߳��˰�����

//������㣯���L����
<voice name="����㣯���L��" class="����������" src="voice/ma03/0130740e101">
������ľ�������ӹ�����͸߳��˰�����

{	FwR("cg/fw/fw��_ͨ��a.png");}
//���١�
<voice name="��" class="��" src="voice/ma03/0130750b42">
����������������������

{	NwR("cg/fw/nw���L��.png");}
//������㣯���L����
<voice name="����㣯���L��" class="����������" src="voice/ma03/0130760e101">
��ŶŶ��������Ŷ������Ŷ��
��ȫ���䵽������������

{	FwR("cg/fw/fw��_ͨ��a.png");}
//���١�
<voice name="��" class="��" src="voice/ma03/0130770b42">
�����ء�����

{	NwR("cg/fw/nw���L��.png");}
//������㣯���L�á�
<voice name="����㣯���L��" class="����������" src="voice/ma03/0130780e103">
���١����᳤�������������ôŨ��ô�డ��
  ��������ţ�Ҫ��С�ٻ����˸���ô�죿��

{	NwR("cg/fw/nw���L��.png");}
//������㣯���L����
<voice name="����㣯���L��" class="����������" src="voice/ma03/0130790e101">
�����������õ��ġ�
�������������˱���ҩ�𡣡�

{	NwR("cg/fw/nw���L��.png");}
//������㣯���L�á�
<voice name="����㣯���L��" class="����������" src="voice/ma03/0130800e103">
��������ȫ����Ŷ��
  Ҳ�к�С�ĸ��ʻỳ�ϡ���

{	NwR("cg/fw/nw���L��.png");}
//������㣯���L�ġ�
<voice name="����㣯���L��" class="����������" src="voice/ma03/0130810e104">
��ʲô�������Ļ�Ҳͦ���
  ����ʱ����С�ٳ�Ϊ�����ϵ�һ���и�����
�߰ɡ���

{	NwR("cg/fw/nw���L��.png");}
//������㣯���L����
<voice name="����㣯���L��" class="����������" src="voice/ma03/0130820e101">
�����������ǵ�����
  �Ǿ��Ǳ��Ŵ��Ķ����������ϱ����˰ɣ���

{	NwR("cg/fw/nw���L��.png");}
//������㣯���L�¡�
<voice name="����㣯���L��" class="����������" src="voice/ma03/0130830e102">
�������˻������ء�
  Ҳ����˵��ֵ�����Ƕ������ʰɡ���

{	FwR("cg/fw/fw��·_ͨ��a.png");}
//����·��
<voice name="��·" class="��·" src="voice/ma03/0130840b24">
����������������

{	NwR("cg/fw/nw���L��.png");}
//������㣯���L�¡�
<voice name="����㣯���L��" class="����������" src="voice/ma03/0130850e102">
����ô��������λ���ס�
  �㲻��������Ҳ����Ȥ�𣿡�

{	FwR("cg/fw/fw��·_ͨ��a.png");}
//����·��
<voice name="��·" class="��·" src="voice/ma03/0130860b24">
������û��û��
  �����λ�����߶�ϣ����˵Ļ�����

{	NwR("cg/fw/nw���L��.png");}
//������㣯���L����
<voice name="����㣯���L��" class="����������" src="voice/ma03/0130870e101">
������������������
  С�٣��㸸��Ҳ����˵��Ŷ����ô���������
Ϊ���廳С���𣿡�

{	FwR("cg/fw/fw��_ͨ��a.png");}
//���١�
<voice name="��" class="��" src="voice/ma03/0130880b42">
��������

{	FwR("cg/fw/fw��_ͨ��a.png");}
//���١�
<voice name="��" class="��" src="voice/ma03/0130890b42">
�������ǵġ�
�������ϣ��������

{	NwR("cg/fw/nw���L��.png");}
//������㣯���L����
<voice name="����㣯���L��" class="����������" src="voice/ma03/0130900e101">
���ܺúܺá�
  С�ٺܳ�ʵ�ǳ��á���

{	NwR("cg/fw/nw���L��.png");}
//������㣯���L�á�
<voice name="����㣯���L��" class="����������" src="voice/ma03/0130910e103">
������˵��ġ������������ǲŻᱻ����������
  ��������˵�����ľ����ý��в��Ž�����
��Ԯ������²�û��ʲô������������

{	NwR("cg/fw/nw���L��.png");}
//������㣯���L�ġ�
<voice name="����㣯���L��" class="����������" src="voice/ma03/0130920e104">
�������������ſ�˫�ȱ�ʾ����������Ҳ����
�ܾ���
  ���õ���Ǯ�����⣬����ȥ�ɰɣ���·������

{	FwR("cg/fw/fw��·_ͨ��a.png");}
//����·��
<voice name="��·" class="��·" src="voice/ma03/0130930b24">
�������ǳ���л����

{	NwR("cg/fw/nw���L��.png");}
//������㣯���L����
<voice name="����㣯���L��" class="����������" src="voice/ma03/0130940e101">
����������������

{	FwR("cg/fw/fw��·_ͨ��b.png");}
//����·��
<voice name="��·" class="��·" src="voice/ma03/0130950b24">
������Ц�ɣ�

//����·��
<voice name="��·" class="��·" src="voice/ma03/0130960b24">
��������Ц�ɡ�
  �ҿ�û�����ǵ��ˣ�

//����·��
<voice name="��·" class="��·" src="voice/ma03/0130970b24">
����͸�����ţһ����
  ֻ������Ϊ��եȡ��Ϊ��Ǯ����֭����Ͷι
���ϲ���ɨ��й����ѣ�

//����·��
<voice name="��·" class="��·" src="voice/ma03/0130980b24">
�����ϼ����Ū��Ҳ��������Ȼ�ġ���
  ���˶��ѡ����˶��ѣ�

//����·��
<voice name="��·" class="��·" src="voice/ma03/0130990b24">
���ҺͲ��ڵõ����֮ǰ����
  �Ų������������£�

//����·��
<voice name="��·" class="��·" src="voice/ma03/0131000b24">
���������Ⱑ������

{	FwR("cg/fw/fw��_ͨ��a.png");}
//���١�
<voice name="��" class="��" src="voice/ma03/0131010b42">
������������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//============================================
//��ꥳ�쥯������á���������������
	if($PLACE_reco){
		RecoReturn();
	}else{
		ClearWaitAll(3000, 2000);
	}
//============================================

..//������ָ��
//�Υե����롡"ma03_014.nss"

}


