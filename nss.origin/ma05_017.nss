//<continuation number="950">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma05_017.nss_MAIN
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
	#ev137_���I݆��=true;
	#ev137_���I݆��_b=true;


	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "ma05_018.nss";

	//��ꥳ�쥯������á���������������
	#ma05_017=true;
	ReConquest();
	if($PLACE_reco){
		RecoOut();
	}
}

scene ma05_017.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

//============================================
//��ꥳ�쥯������á���������������
if(!$PLACE_reco){
//============================================
..//������ָ��
//ǰ�ե����롡"ma05_016.nss"
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	CreateTextureSP("�}�ţ�", 3000, Center, Middle, "cg/ev/ev137_���I݆��.jpg");
	Delete("�ϱ���");

//============================================
//��ꥳ�쥯������á���������������
}else{
	//״�B���x
	CreateColorSP("�}��ܞ", 15000, "#000000");
	CreateTextureSP("�}�ţ�", 3000, Center, Middle, "cg/ev/ev137_���I݆��.jpg");

	//�ꥳ����Ĩ��
	RecoIn();
}
//========================================================


	SetFwC("cg/fw/fw���I_ʧ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0170010b31">
����Ҫ������

//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0170020b31">
��ס�֡�����ס�ְ�����

//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0170030b31">
���ſ��ҡ�������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����I�o�ҡ�
	SoundPlay("@mbgm34",2000,1000,true);
	FadeDelete("�}��ܞ", 2000, true);

	SetNwC("cg/fw/nwɽ�\��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//������㣯ɽ�\�á�
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0170040e083">
������Ŷ�����졣
  ���ǲŸոտ�ʼ�𡣡�

{	NwC("cg/fw/nwɽ�\��.png");}
//������㣯ɽ�\�ġ�
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0170050e084">
����֪���ں����Ŷӵ��ŵĻ��ж�������
�����ھʹ󺰴�е�Ҳ̫����Щ����

{	FwC("cg/fw/fw���I_ʧ��.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0170060b31">
��������������
����֪�߳ܵļһ��������Ȼ�Զ����١�����

{	NwC("cg/fw/nwɽ�\��.png");}
//������㣯ɽ�\�š�
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0170070e085">
��û�취�����Ϊ�������Ǹ��˶�ò�
���ڿ��Բ������ֽ���˰���
����Ϊ�����㲻����������Ů�ˡ���

{	NwC("cg/fw/nwɽ�\��.png");}
//������㣯ɽ�\�ơ�
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0170080e086">
��û��û��
���������в�������ò���Ĺ����Ϊʲô��
�ú�����ָ�۰Ͱ͵�ԶԶ���Ű�������������
��Щ����Ӳ�ˡ���

{	NwC("cg/fw/nwɽ�\��.png");}
//������㣯ɽ�\�ơ�
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0170090e086">
������ȥ�������졣��

{	FwC("cg/fw/fw���I_ʧ��.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0170100b31">
����Ҫ�������ֶ����𿿽��ң�
������쵰����

{	NwC("cg/fw/nwɽ�\��.png");}
//������㣯ɽ�\�ơ�
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0170110e086">
��������

{	NwC("cg/fw/nwɽ�\��.png");}
//������㣯ɽ�\�á�
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0170120e083">
��ιι������˰���
������̣���ѵõ���ò��������ɨ�ˡ���

{	NwC("cg/fw/nwɽ�\��.png");}
//������㣯ɽ�\�ơ�
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0170130e086">
������������������

{	NwC("cg/fw/nwɽ�\��.png");}
//������㣯ɽ�\�á�
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0170140e083">
���ţ���

{	NwC("cg/fw/nwɽ�\��.png");}
//������㣯ɽ�\�ơ�
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0170150e086">
�������ܾ��ã������˷ܡ���

{	NwC("cg/fw/nwɽ�\��.png");}
//������㣯ɽ�\�á�
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0170160e083">
�������������𡣡�

{	NwC("cg/fw/nwɽ�\��.png");}
//������㣯ɽ�\�ơ�
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0170170e086">
���ٺٺٺٺ٣�
���Ǿ��������ɣ���

{	FwC("cg/fw/fw���I_ʧ��.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0170180b31">
��������Ҫ��
�����ʲô�������ҵ�ͷ����������

{	NwC("cg/fw/nwɽ�\��.png");}
//������㣯ɽ�\�ơ�
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0170190e086">
���������������㷢���������ǵ��ۻ࡭��
��ŶŶ���øɾ����øɾ�����

{	FwC("cg/fw/fw���I_ʧ��.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0170200b31">
��ѽ������

{	NwC("cg/fw/nwɽ�\��.png");}
//������㣯ɽ�\�ơ�
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0170210e086">
���������о��ҵ��Ķ����������ء�
���������ҵ��������ʵ��һ�̡�������

{	NwC("cg/fw/nwɽ�\��.png");}
//������㣯ɽ�\�ġ�
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0170220e084">
����С������ġ���

//������㣯ɽ�\�ġ�
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0170230e084">
�����������С���

{	NwC("cg/fw/nwɽ�\��.png");}
//������㣯ɽ�\�š�
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0170240e085">
��̫�����ˡ���

{	NwC("cg/fw/nwɽ�\��.png");}
//������㣯ɽ�\�á�
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0170250e083">
���ã���ҲҪ��ʵһ�Σ�
�����ɣ����죬��ϲ����ͷ���Ļ��͸������졣��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���I_ʧ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0170260b31">
����!?
����Ҫ���š�����������

{	NwC("cg/fw/nwɽ�\��.png");}
//������㣯ɽ�\�á�
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0170270e083">
����Ҫ��������Ŷ��
������ô���Ļ��Ͱ������ȫ�ι⡣��

{	FwC("cg/fw/fw���I_ʧ��.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0170280b31">
��������

{	NwC("cg/fw/nwɽ�\��.png");}
//������㣯ɽ�\�á�
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0170290e083">
��ŶŶ����Ů�˵����Ȼ����ˡ�
������������죬�Ҹ�ϲ��������졣��

{	NwC("cg/fw/nwɽ�\��.png");}
//������㣯ɽ�\�š�
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0170300e085">
�����𣿡��Źֵļһ
���ҿ�����ͳ�ɣ��Ӱ������Ŷ����

{	FwC("cg/fw/fw���I_ʧ��.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0170310b31">
������!?��

{	NwC("cg/fw/nwɽ�\��.png");}
//������㣯ɽ�\�š�
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0170320e085">
���ٺ١���ΰ������죿
����ͦ������ĸо�����

{	FwC("cg/fw/fw���I_ʧ��.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0170330b31">
����Ҫ�������ܡ���
����ʹ����ͣ����������

{	FwC("cg/fw/fw���I_ʧ��.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0170340b31">
����������

{	NwC("cg/fw/nwɽ�\��.png");}
//������㣯ɽ�\�š�
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0170350e085">
����ѽ�����Ǳ�Ǹ��
������ϲ�������ˡ���

//������㣯ɽ�\�š�
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0170360e085">
�������ܲ����ˡ�
��һ�뵽���ղŻ��Ǵ�Ů��
�͸����Ʋ����Լ��ˡ���

{	FwC("cg/fw/fw���I_ʧ��.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0170370b31">
�����ء�������

{	NwC("cg/fw/nwɽ�\��.png");}
//������㣯ɽ�\�š�
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0170380e085">
����ް������졣
����Ҫ������������Ҳ���������ġ���

{	FwC("cg/fw/fw���I_ʧ��.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0170390b31">
��˭��˭�ᡭ�������Ǽ�������������
��Ҫ������ô�������ң���

{	NwC("cg/fw/nwɽ�\��.png");}
//������㣯ɽ�\�š�
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0170400e085">
�������������ˣ�
���߳����ˡ���!!��

//������㣯ɽ�\�š�
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0170410e085">
��һ��������
�������������ڣ���

{	FwC("cg/fw/fw���I_ʧ��.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0170420b31">
����Ҫ��
�����ٰγ����١�����

{	NwC("cg/fw/nwɽ�\��.png");}
//������㣯ɽ�\�š�
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0170430e085">
���Ҵ������Ͼܾ���
�����ɣ�Ħ���ӹ��ڡ�����

{	FwC("cg/fw/fw���I_ʧ��.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0170440b31">
����������
��������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ե�å���
	CreateColorEX("�}�ם�", 5000, "#FFFFFF");
	Fade("�}�ם�", 200, 1000, null, true);
	WaitKey(1000);
	CreateTextureSP("�}�ţ�", 3000, Center, Middle, "cg/ev/ev137_���I݆��_b.jpg");

	FadeDelete("�}�ם�", 2000, true);

	SetFwC("cg/fw/fw���I_ʧ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0170450b31">
������
��������������

{	NwC("cg/fw/nwɽ�\��.png");}
//������㣯ɽ�\�š�
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0170460e085">
��������
��̫����ˡ���

{	NwC("cg/fw/nwɽ�\��.png");}
//������㣯ɽ�\�ơ�
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0170470e086">
����������һ�Ρ�
��������һ���϶����������ء���

{	NwC("cg/fw/nwɽ�\��.png");}
//������㣯ɽ�\�š�
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0170480e085">
����������
��Ҫ��֪�����ַ������죬�����������ˣ�
�����������ϵ�����ʲô��Ӧ�ء���

{	NwC("cg/fw/nwɽ�\��.png");}
//������㣯ɽ�\�ġ�
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0170490e084">
�����ۡ���˵����Ӳ�������Ļ�����
��Ҫ�����ϰ֣����Ի�ɱ���ҡ���

{	NwC("cg/fw/nwɽ�\��.png");}
//������㣯ɽ�\�ơ�
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0170500e086">
��û������
������ֻ�������������������ѡ���

{	NwC("cg/fw/nwɽ�\��.png");}
//������㣯ɽ�\�á�
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0170510e083">
��û�����Ů���Ѿ����������ˡ�
����������˵��������һ��ƽ��ս������ò�
�ܲ�˵�����������Ҳ��ƽ����գ�������
��˭�ܵ��˰�����

{	FwC("cg/fw/fw���I_ʧ��.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0170520b31">
��������

{	NwC("cg/fw/nwɽ�\��.png");}
//������㣯ɽ�\�ġ�
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0170530e084">
�����ǰ���
������λ���������

//������㣯ɽ�\�ġ�
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0170540e084">
�����������ǣ����ɵò����ˡ�
�о����ܲ���̫�á���

{	NwC("cg/fw/nwɽ�\��.png");}
//������㣯ɽ�\�š�
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0170550e085">
����Ϊ��������������Ե�ʡ���

{	NwC("cg/fw/nwɽ�\��.png");}
//������㣯ɽ�\�ġ�
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0170560e084">
�����ˣ���֮�Ȳ��ȥ�ɡ�
���ࡡ���

{	FwC("cg/fw/fw���I_ʧ��.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0170570b31">
���š�������

{	NwC("cg/fw/nwɽ�\��.png");}
//������㣯ɽ�\�ġ�
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0170580e084">
��������Ȼ���ǲ�������
�����죬���ս�һ�㰡��
��һ�㶼�����Ŷ����

{	FwC("cg/fw/fw���I_ʧ��.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0170590b31">
��������
�����ᡭ�������Ҫ�󰡡�����

{	FwC("cg/fw/fw���I_ʧ��.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0170600b31">
��������Ϊ���ǣ�һ����һ�εء���
�����������ڡ�������

{	NwC("cg/fw/nwɽ�\��.png");}
//������㣯ɽ�\�ġ�
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0170610e084">
���⵹����ʵ��
������ô���ء�����

{	FwC("cg/fw/fw���I��_��Ц.png");}
//�����I�ܡ�
<voice name="���I��" class="���I��" src="voice/ma05/0170620b32">
�������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������á�������
	CreateSE("SE01","se���L_����_������02");
	MusicStart("SE01",0,1000,0,1000,null,false);

	SetNwC("cg/fw/nwɽ�\��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//������㣯ɽ�\�ġ�
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0170630e084">
����ܣ�
�������ǲ��������̫����
���ⶫ�������

{	FwC("cg/fw/fw���I��_���.png");}
//�����I�ܡ�
<voice name="���I��" class="���I��" src="voice/ma05/0170640b32">
���ѵ�������Ǹ�Ů�˵ĺ�Ѩ����Σ�
���������Ļ����ܽ�һ���˰ɡ���

{	FwC("cg/fw/fw���I_ʧ��.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0170650b31">
������!?��

{	NwC("cg/fw/nwɽ�\��.png");}
//������㣯ɽ�\�ġ�
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0170660e084">
������ŶŶ��
����������ܣ����ԣ����죡����취�ÿ�ѧ
������

{	NwC("cg/fw/nwɽ�\��.png");}
//������㣯ɽ�\�ơ�
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0170670e086">
���㲻������ѧ�����˶��һ����ӿ�ѧ��
�����������С���

{	NwC("cg/fw/nwɽ�\��.png");}
//������㣯ɽ�\�š�
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0170680e085">
��̫�����ˡ���

{	FwC("cg/fw/fw���I_ʧ��.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0170690b31">
��ѽ��������

{	FwC("cg/fw/fw���I��_��Ц.png");}
//�����I�ܡ�
<voice name="���I��" class="���I��" src="voice/ma05/0170700b32">
��̫�����أ���㡣
����������<RUBY text="����">�ó�</RUBY>�ء���

{	FwC("cg/fw/fw���I_ʧ��.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0170710b31">
��һ����һĥ����
��������ס�֡�������

{	FwC("cg/fw/fw���I��_���.png");}
//�����I�ܡ�
<voice name="���I��" class="���I��" src="voice/ma05/0170720b32">
��������

{	FwC("cg/fw/fw���I_ʧ��.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0170730b31">
��һĥ��������

{	FwC("cg/fw/fw���I��_���.png");}
//�����I�ܡ�
<voice name="���I��" class="���I��" src="voice/ma05/0170740b32">
�����Ǹ�ʲô�أ�
��������㡣��

{	NwC("cg/fw/nwɽ�\��.png");}
//������㣯ɽ�\�á�
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0170750e083">
���ٺٺ١���
����Ȼ���Ը��ˡ�����

{	NwC("cg/fw/nwɽ�\��.png");}
//������㣯ɽ�\�š�
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0170760e085">
�����������죬��һ��Ŷ��
�������ſ���ƨ�ɳ����
�����������Ҷ������Ҷ�����

{	FwC("cg/fw/fw���I_ʧ��.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0170770b31">
����Ҫ������Ҫ����
���ſ��ң����������ˣ������Ұɣ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("�}EV100", 4000, 0, 0, "cg/ev/resize/ev137_���I݆��_bm.jpg");

	Move("�}EV100", 2000, -503, @0, Dxl1, false);
	Fade("�}EV100", 1000, 1000, null, true);

	SetNwR("cg/fw/nwɽ�\��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0059]
//������㣯ɽ�\�á�
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0170780e083">
������������
���Ѻ�Ѩ�ſ������ۣ���С������

{	NwR("cg/fw/nwɽ�\��.png");}
//������㣯ɽ�\�ơ�
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0170790e086">
������ء�
������ĸ�����ĺ�С����й��ʱ��
�����ò����𣿡�

{	NwR("cg/fw/nwɽ�\��.png");}
//������㣯ɽ�\�š�
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0170800e085">
��Ŷ���ÿɰ��ĺ�Ѩ��
�����������ķ�񡣡�

{	FwR("cg/fw/fw���I_ʧ��.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0170810b31">
����Ҫ��
�����ǲ�Ҫ�����ֵط�����

{	NwR("cg/fw/nwɽ�\��.png");}
//������㣯ɽ�\�ġ�
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0170820e084">
�����˺��ˡ�����ô˵��
�����ǰ������ǵ�һ�ο�������������ݸ߹�
��Ů�˵ĺ�Ѩ����

{	NwR("cg/fw/nwɽ�\��.png");}
//������㣯ɽ�\�á�
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0170830e083">
�����ң������ǿ���ƨ����������
����������
���ղ�����������ʹ�ŮĤ��������
�۲�����������𡣡�

{	NwR("cg/fw/nwɽ�\��.png");}
//������㣯ɽ�\�š�
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0170840e085">
��û��û���ƴ�����һ���ſ���
������������ӹ��ڶ�
��������ϸ��������һ������

{	FwR("cg/fw/fw���I_ʧ��.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0170850b31">
���������ء�������

{	NwR("cg/fw/nwɽ�\��.png");}
//������㣯ɽ�\�ơ�
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0170860e086">
�����������ѵ�������ȥ��
���ܽ�ȥ�𣿡����Կ��ɡ���

//������㣯ɽ�\�ơ�
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0170870e086">
��Ҫ���ȥ��Ŷ�����졣��

{	FwR("cg/fw/fw���I_ʧ��.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0170880b31">
��������Ҫ������

{	FwR("cg/fw/fw���I_ʧ��.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0170890b31">
����Ҫ��������������������!!��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������W���ҡ�
//���֥�å������ȣ�
	CreateColorEX("�}�\", 5000, "#000000");
	Fade("�}�\", 2000, 1000, null, true);

	CreateSE("SE01","se�M��_ճ���|_���띢���01");
	MusicStart("SE01",0,1000,0,750,null,false);
	$�Еr�g=RemainTime("SE01");
	WaitKey($�Еr�g);

	WaitKey(2000);

	SetFwC("cg/fw/fw���I_ʧ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//�􉲤�
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0170900b31">
������������

{	NwC("cg/fw/nwɽ�\��.png");}
//������㣯ɽ�\�ơ�
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0170910e086">
��ŶŶ��
���ܽ�ȥ�ء���Ȼ�е��ѿ��ˡ���

{	NwC("cg/fw/nwɽ�\��.png");}
//������㣯ɽ�\�ġ�
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0170920e084">
���ܺã����ս��ˣ�
�����������ں͵���Ħ���ĸо�����
��ô˵�أ���͸�ˣ���

{	NwC("cg/fw/nwɽ�\��.png");}
//������㣯ɽ�\�á�
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0170930e083">
���ƺ��ܿ����ء�
��������Ҳ���ҵļ�֣������ɣ����죬
����춼��������������򣬿�㺬��ȥ������

{	NwC("cg/fw/nwɽ�\��.png");}
//������㣯ɽ�\�š�
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0170940e085">
������ô���ء�
���Ǿ����ذɡ������������ио�Ŷ����

{	FwC("cg/fw/fw���I_ʧ��.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0170950b31">
��������������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//============================================
//��ꥳ�쥯������á���������������
	if($PLACE_reco){
		RecoReturn();
	}else{
		ClearWaitAll(2000, 2000);
	}
//============================================

}

..//������ָ��
//�Υե����롡"ma05_018.nss"