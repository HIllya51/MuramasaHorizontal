//<continuation number="640">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma03_023.nss_MAIN
{
	//��e�ޥ����ٌ���
	Conquest("nss/ma03_023.nss","ma03_SB2",true);
	Conquest("nss/ma03_023.nss","ma03_SB3",true);

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

	//����`�ȥե饰���x�k֫���Τ�GameName
	#av_����������`���`��װ=true;

	$PreGameName = $GameName;
	$GameName = "ma03_024.nss";

}

scene ma03_023.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"ma03_022.nss"

//���Q�ّ��_��ʽ������Ȥ���
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg035_�`�}���`���åȸ��a_01.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 1000, true);

	SetFwC("cg/fw/fw�׵�_���d.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0230010a08">
������״Σ�װ�׾�������ͳһ����������
����ͣǣС���

//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0230020a08">
����������Ķ�ʮ֧ս�ӡ����У�Ϊ�˹ۿ���
�ǵ�ս������ӵ�����Ĺ���ϯ�����ǡ���
����������������ΪʲôҪ�ٰ�������ɡ���

{	FwC("cg/fw/fw�׵�_ͨ��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0230030a08">
����Ϊ������
�����뿴�������Ķ�������

{	FwC("cg/fw/fw�׵�_Ц��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0230040a08">
��ǿ���������ģ�
�������������ģ�
�������������ģ���

//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0230050a08">
�����ң�����Ҳ�������ģ�
�����綼��˦������ֱ��ǰ��ʻ����
̬��������˾ͳ�������
����һ�����ߵ�������

{	FwC("cg/fw/fw�׵�_���d.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0230060a08">
���������ļ��������
���⻹�����𡭡��Ǿ��������ˡ���

{	FwC("cg/fw/fw�׵�_ͨ��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0230070a08">
�������ˣ����������ģ�
����Ϊ�˿������Ӣ�˶��ٿ��˴�ͣǣа�����

//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0230080a08">
��׼�������𣿡����Ƕ�ʮλ����
����ѡ�γ��������֣���

//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0230090a08">
�������ᱲ��������֮������

{	FwC("cg/fw/fw�׵�_Ц��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0230100a08">
�����ڡ���
������������ͣǣо�����ʼ!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����`��`������ɤ�ɤ�

	CreateSE("SE01","se����_����_�Z��02");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateSE("SE02","se����_����_���`���å�04_L");
	MusicStart("SE02",0,1000,0,1000,null,false);

	WaitKey(3000);

	SetVolume("SE*", 5000, 0, null);

	PrintGO("�ϱ���", 25000);
	CreateColorSP("�}��ܞ", 10000, "#000000");
	OnBG(100,"bg039_��������ϯa_01.jpg");
	FadeBG(0,true);
	FadeDelete("�ϱ���", 1000, true);
	Wait(1000);
	CreateSE("SE01","se����_����_���`���å�01_L");
	MusicStart("SE01",500,800,0,1000,null,true);
	FadeDelete("�}��ܞ", 1000, true);

	SetFwC("cg/fw/fw�衩���װ_Ц�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0230110a07">
��������������������Ĵ�Ὺ���׸о�
�������ء��ǳ���л��
���������Ͼ�Ҫ��ʼ�ˣ����ּ���˵�����ҵ�
���׻����Ρ���

{	FwC("cg/fw/fw�׵�_ŭ��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0230120a08">
��Ϊʲô��!?��

{	FwC("cg/fw/fw�衩���װ_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0230130a07">
�����ڹ㲥�Ҵ�������Ŷ��ȸ�С���

{	FwC("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0230140a08">
��˭�ǿ�ȸ�а���
�����ֺͽ�˵Ӧ�ö������ᰲ�ź��˵�������
�ΰ�!?��Ϊʲô�����㰡����

{	FwC("cg/fw/fw�衩���װ_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0230150a07">
��������Щ�˶���ʹ�ؼ���Ϣ�ˡ�
����Ϊ���Ǻ��˹��ڵ�ţ�̡���

{	FwC("cg/fw/fw�׵�_ͨ��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0230160a08">
������ţ�̣���

{	FwC("cg/fw/fw�衩���װ_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0230170a07">
����ѽ�����������ԭ��ţ�����ò��ð�����
�񱻱�����Ʒ��ţ��ѹ���ˡ�
���ҼҲֿ����滹ʣ�˺ܶడ�����������̵ġ�
���л���ζ�ġ���

{	FwC("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0230180a08">
�����������Ǻȵİ�!!��

{	FwC("cg/fw/fw�衩���װ_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0230190a07">
����ô���������ڶ���ά����ר����־��
���ű�����׼����
��������һ��ʧ�󣡡�ս���Ѿ������ˣ���

//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0230200a07">
�����������Ȱ�˳�����һ����������֮��
�Ķ�ʮ֧����ɡ�
�������Ǹ�λ�����ġ�����

//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0230210a07">
���辩�ӡ����������ڡ���
�����������Żƽ�֮��ġ����롱��
�������ǹ�Ϊ��֪�ģ�����������ǿ��
���������

//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0230220a07">
�����������Ԥѡ����������չʾ���˲�����
�������ľ��˵�������
����ֱ��װ�׾����İ�������������ѹ���Ե�
����Ӯ���ⳡ������!?��

{	FwC("cg/fw/fw�׵�_ͨ��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0230230a08">
������˵��û��������Ӧ������ֵ���ڴ���
�ɡ�
����������Ļ�������������Ļƽ�֮����
��Ҫ�ư�ȫ����������Ҳ������

{	FwC("cg/fw/fw�׵�_Ц��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0230240a08">
����������ս���ɣ�
���𱻱��˳�Ц�ǻƽ��Ƕ���ȥ��Ŷ����

{	FwC("cg/fw/fw�衩���װ_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0230250a07">
�������������ӡ����ԡ��ơ��ơ�����
��������������ɫ��â�ġ���Ϯ����
�������Ǽ̳��˱������֮Ѫ���Ļ�·�١���

//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0230260a07">
���������Ҳ���辩�����һ���������״���
��ģ������Ǿ��춯�صı��Ѽ��ۣ�
�����������ɫ���е��������ܼ��޲Ų�����
����𡣻���˵������������!?��

{	FwC("cg/fw/fw�׵�_ͨ��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0230270a08">
�������ڴ�һ���ǲ���żȻ�ɡ�
����ɲ�ϣ���������һ�����ĵı���������

//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0230280a08">
��׷���ްɣ�
������̨��ɫ�Ļ��壡��

{	FwC("cg/fw/fw�衩���װ_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0230290a07">
������Ŷѽ����Ҫ��ʼ�ˡ�
����˵����ɡ���

//�룺������ң�-һ���ãأ�
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0230300a07">
������λ�����߿�սʿ��
���������ϻ����ӡ�
��������������ң�-һ���ãء���

//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0230310a07">
������������Ծ�������
�����ܷ񷢻�Ч����!?��

{	FwC("cg/fw/fw�׵�_���d.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0230320a08">
�����������������û��ʲôð���ء�
����Ȼ���ܵ�ȷ�ܺá���

{	FwC("cg/fw/fw�衩���װ_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0230330a07">
������λ�Ǻ�Ͷӡ�
���������������������������Ȯ�ķ�չ�ͣ�
������Ȯ����

//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0230340a07">
��������忪ʼ���ʹ������Ľ���
������Ҫ������ʽ�������辩����ת��������
�����ʾ�Լ���������!?��

{	FwC("cg/fw/fw�׵�_���d.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0230350a08">
�����໹����ô�ѿ�����
�������ٶȾ������塣��������Ҫվ������
��������ˣ���ô��ȥ�᳹�Լ�����־�ɡ���

{	FwC("cg/fw/fw�衩���װ_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0230360a07">
���������Ǵ��ʹ��ı��ң�ƽ���ӡ�
��Ͷ��ʹ���������<RUBY text="�ӣ����">�Ȼ�</RUBY>����ȷ���˵�����
��λ�ã���

//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0230370a07">
��������֪���ǵľ����쳣˳����
��������<RUBY text="�ӣ����">�Ȼ�</RUBY>��ʲô��˼����

{	FwC("cg/fw/fw�׵�_ͨ��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0230380a08">
�������˾������Ʒζ��ʱ�����˾���������
�⡭����

{	FwC("cg/fw/fw�衩���װ_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0230390a07">
������λ�������ɾ���
���콢����<RUBY text="�ԣ�塡�ǣ�����">�ռ�</RUBY>��װ������������Ʒ
һ��������ǳ��ˣ���

{	FwC("cg/fw/fw�衩���װ_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0230400a07">
���������Ҳ���𡭡�
��Ϊʲôÿ����Щ����Ʒζ���������Դ�͵�
�����һ������

{	FwC("cg/fw/fw�׵�_���d.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0230410a08">
����ž��������˸���İɣ���

{	FwC("cg/fw/fw�衩���װ_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0230420a07">
������λ��
���ڻ��ӣ������ǡ�<RUBY text="�ǣ����������">������ʿ</RUBY>������

{	FwC("cg/fw/fw�衩���װ_�䵨.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0230430a07">
������ιι������

{	FwC("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0230440a08">
������������ʲôʱ�����˹�����
���˰���������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����`����
	PrintGO("�ϱ���", 25000);
	CreateColorSP("�}��ܞ", 10000, "#000000");
	OnBG(100,"bg038_���`���å�ֱ��_01.jpg");
	FadeBG(0,true);
	FadeDelete("�ϱ���", 1000, true);
	Wait(1000);
	FadeDelete("�}��ܞ", 1000, true);

	SetFwC("cg/fw/fw�衩���װ_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0230450a07">
��������������ʮһλ��
���������ش�����ӡ���

//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0230460a07">
�������Ǵ�������Ԥѡ��ʱ����Ļ��������
�˶��Ը���ġ�����

{	FwC("cg/fw/fw�衩���װ_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0230470a07">
����<RUBY text="�ȣ������">�ȹ�</RUBY>������

{	FwC("cg/fw/fw�衩���װ_ŭ��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0230480a07">
���쵰����Ҳ����!!��

{	FwC("cg/fw/fw�׵�_ŭ��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0230490a08">
���ǲ�����ǿ�������������������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	#av_����������`���`��װ=true;

	CreateTextureEX("�}st100", 100, Center, InBottom, "cg/st/3d��������_����_ͨ��.png");
	Move("�}st100", 0, @+150, @0, Dxl1, true);

	Move("�}st100", 500, @+50, @0, Dxl1, false);
	Fade("�}st100", 500, 1000, null, true);

//��������`���󥰥����
	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="��������" src="voice/ma03/0230500a01">
������ʲô�����������֡�����

{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0230510a00">
����������
����ʱæ����ĸ�װ��ûʱ���������ˡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
����վ����ָ����λ�ã��ش��˴�������졣
�������ڻ���һЩ���Ծ��ĸо���װ����һЩֻ��Ϊ��
����װ�������������Ϥ�Ľ��в�����һЩ��һ���ĸ�
����

���Ҹе���Щ���ꡣ
���������飬����Ҫ���Ҹ���ǿ�Ұɡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��������
<voice name="����" class="����" src="voice/ma03/0230520a00">
�������������Ҳ������������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma03/0230530a01">
�����ٺ�˵�ˡ�
����Ϊ�Һ���֪�𡣡�

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0230540a00">
������������ġ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	FadeDelete("�}st100", 500, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
����ֻ��С���ؿ��飬ͬʱ���˿���Χ��
�������ƺ�ƾ����ʹ������������������չ��һ���Ĵ�
������û��Ҫ�ټ����̼�����

���Ҹо��������ߴ�ά�����ķ�������
�����ȣ�������ζ����˵�ҿ���װ���˾�����
���У����ƺ�ƭ������Щרҵ�Ļ�еʦ�ء�

���������������ǲ����������Ļ�Ӧ�ò������жϳ���
�����İɡ�
������������������Ҳ������⡣�ȱ���һ�������Ҿ�
�����뿪�ɡ�

��������Ϯ��Ҳ��ԡ��ͬ���������¡�
���������ԡ�Ҳ��������ĳɷ֡�

�����Ǵ��辩��ά��վ�����ġ�
��������Щ��������ߡ�

������ԭ����ˡ�
����������Ӧû�й�������Ȼ���᱾��������ˣ�
��û���κη�Ӧ����Ϯ����������֪���˰ɡ�

���ɳ���Ϯ�����飬������ը���Ǹ�ʱ��Ҳ�����Ǿ�
ȷ�ż�ı�Ѿ��ɹ��˰ɡ�
�������Ļ���������˵�������˵���ɫ����ͺ��Ʋ���
�Ĺ���һ�㡣��ҡҲ��������Ȼ�İɡ�

�����ǣ�վ����λ�Ļƽ�������ȫ������������
�Ρ�����ʲô����֪���𣬻���˵����֪����Ҳ
�Ѿ��������̬���ء�
������ʼרע���Լ������硣��������Ҳ�ǡ�

����ע������ɢ����Χ����ֻ����һ����
����Ȼ������ô�����Ҷ�̫���ڲ�ͬ�ˡ�

��û�취���Һ����ǵ�Ŀ�Ĳ�ͬ��
��������Ϊ���ڱ�����ȡ�ùھ���վ������ġ�
���ң�������Ϊ�˻�����������һ�������
����ġ�

�����ⳡ�����У���ֻ�Ǹ����ࡣ

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//��������
<voice name="����" class="����" src="voice/ma03/0230550a00">
������������ʲô�о��𣿡�

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma03/0230560a01">
����������һ�����о���ǿ�ҡ�
�����Ƿ���;��뻹�ǲ�������
ֻ��ȷ�����������Χ����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0230570a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
����Ȼ����ʲô����������������
����ʮ�������Ӧ�ðѳ��������ʮ����֮�е�ĳһ
�￴�������塣

��������˭������֡���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//��������
<voice name="����" class="����" src="voice/ma03/0230580a00">
������ʱ���أ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma03/0230590a01">
������Ҫ˵�Ļ����������˲�䶼�п��ܡ�
��˵ʵ����Ŀǰ<RUBY text="��������">�ܲ��ȶ�</RUBY>����������
���ɺ��Ի�δ����������

//��������
<voice name="����" class="��������" src="voice/ma03/0230600a01">
������״�����ԳŲ�������ɡ�
�����þ���ɣ���������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0230610a00">
�����ס���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
�������϶����ڽ���֮�ڡ�
��˵�����������ⳡ����֮�С�

��Ƭ�̶����ܷ��ɡ�
���б�Ҫ�����Ķ����ü�ʱӦ�Ե�׼����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	PrintGO("�ϱ���", 30000);
	CreateTextureEX("�}����100", 100, Center, Middle, "cg/bg/bg035_�`�}���`���åȸ��a_01.jpg");
	Fade("�}����100", 0, 1000, null, true);

	SetVolume("SE01", 500, 0, null);
	FadeDelete("�ϱ���", 1000, true);

	SetFwC("cg/fw/fw�衩���װ_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0230620a07">
������ȫ����װ�����ֶ������������ߣ�
�����Ͼ�Ҫ��ʼ�ˣ���

//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0230630a07">
�����е����֣����еĹ��ڣ�
���������źŵưɣ�
���Ǹ��̵������˲�䣡��

//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0230640a07">
������������ı�������
�����ڣ���ʼ!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	ClearWaitAll(1000, 1500);

..//������ָ��
//�Υե����롡"ma03_024.nss"

}


..//ma03_SB2
function ma03_SB2($���`���å����_BG,$ma03_BGNum,$ma03_BGTime,$ma03_BGpoint){

	//���g
	if($ma03_BGNum==1){
		CreateTextureSP("Circuit01", $���`���å����_BG, InRight, Middle, "cg/bg/bg038_���`���å����a_01.jpg");
		CreateTextureSP("Circuit02", $���`���å����_BG, InRight, Middle, "cg/bg/bg038_���`���å����a_01.jpg");
	//ҹ
	}else if($ma03_BGNum==2){
		CreateTextureSP("Circuit01", $���`���å����_BG, InRight, Middle, "cg/bg/bg038_���`���å����a_03.jpg");
		CreateTextureSP("Circuit02", $���`���å����_BG, InRight, Middle, "cg/bg/bg038_���`���å����a_03.jpg");
	}else{
		CreateTextureSP("Circuit01", $���`���å����_BG, InRight, Middle, "cg/bg/bg038_���`���å����a_03.jpg");
		CreateTextureSP("Circuit02", $���`���å����_BG, InRight, Middle, "cg/bg/bg038_���`���å����a_03.jpg");
	}

	CreateSCR1("@Circuit01","@Circuit02",$ma03_BGTime,$ma03_BGpoint, @0);

}

..//ma03_SB3
function ma03_SB3($���`���å����_BG01,$ma03_SBtime){


	CreateTextureEX("Circuit_Bar", $���`���å����_BG01, -100, Middle, "cg/bg/bg038_���`���å����b_01.png");
	SetBlur("Circuit_Bar", true, 3, 300, 8, false);

	CreateProcess("���ץ���", 15000, 0, 0, "ma_03_SBProcess");
	Request("���ץ���", Start);
	SetAlias("���ץ���","���ץ���");

}
